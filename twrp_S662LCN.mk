#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-S662LCN device
$(call inherit-product, device/itel/S662LCN/device.mk)
# Enable Virtual A/B OTA
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
PRODUCT_DEVICE := S662LCN
PRODUCT_NAME := twrp_S662LCN
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel S662LCN
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S662LCN-user 12 SP1A.210812.016 179 release-keys"

BUILD_FINGERPRINT := Itel/S662LCN-RU/itel-S662LCN:12/SP1A.210812.016/RU-20230606V193:user/release-keys
