-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.OfAddZpow.Variantffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.OfAddZpow.Variantffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 María Inés de Frutos-Fernández, Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández, Filippo A. E. Nuccio
-/
import Mathlib.Algebra.Group.Int.TypeTags
import Mathlib.Algebra.GroupWithZero.WithZero

/-!
# Lemmas about `ℤₘ₀`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.OfAddZpow.Variantffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89

assert_not_exists Ring

local notation "ℤₘ₀" => WithZero (Multiplicative ℤ)

namespace WithZero

open Multiplicative

theorem ofAdd_zpow (a : ℤ) : (↑(ofAdd a) : ℤₘ₀) = ofAdd (1 : ℤ) ^ a := by
  rw [← WithZero.coe_zpow, WithZero.coe_inj, ← Int.ofAdd_mul, one_mul]

theorem ofAdd_neg_one_pow_comm (a : ℤ) (n : ℕ) :
    ((↑(ofAdd (-1 : ℤ)) : ℤₘ₀) ^ (-a)) ^ n = ofAdd (n : ℤ) ^ a := by
  rw [ofAdd_zpow (-1)]
  simp only [zpow_neg, zpow_one, inv_zpow', inv_inv, coe_zpow]
  rw [← zpow_natCast, zpow_comm, ← ofAdd_zpow]

end WithZero
