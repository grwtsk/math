-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GcdEq.Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GcdEq.Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GCDMonoid/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.GCDMonoid.Basic
import Mathlib.Algebra.Ring.PUnit

/-!
# `PUnit` is a GCD monoid

This file collects facts about algebraic structures on the one-element type, e.g. that it is has a
GCD.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.GcdEq.Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2

namespace PUnit

-- This is too high-powered and should be split off also
instance normalizedGCDMonoid : NormalizedGCDMonoid PUnit where
  gcd _ _ := unit
  lcm _ _ := unit
  normUnit _ := 1
  normUnit_zero := rfl
  normUnit_mul := by intros; rfl
  normUnit_coe_units := by intros; rfl
  gcd_dvd_left _ _ := ⟨unit, by subsingleton⟩
  gcd_dvd_right _ _ := ⟨unit, by subsingleton⟩
  dvd_gcd {_ _} _ _ _ := ⟨unit, by subsingleton⟩
  gcd_mul_lcm _ _ := ⟨1, by subsingleton⟩
  lcm_zero_left := by intros; rfl
  lcm_zero_right := by intros; rfl
  normalize_gcd := by intros; rfl
  normalize_lcm := by intros; rfl

@[simp]
theorem gcd_eq {x y : PUnit} : gcd x y = unit :=
  rfl

@[simp]
theorem lcm_eq {x y : PUnit} : lcm x y = unit :=
  rfl

@[simp]
theorem norm_unit_eq {x : PUnit} : normUnit x = 1 :=
  rfl

end PUnit
