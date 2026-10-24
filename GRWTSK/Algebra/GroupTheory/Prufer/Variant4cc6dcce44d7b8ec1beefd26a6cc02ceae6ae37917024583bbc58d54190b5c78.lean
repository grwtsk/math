-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulEqSelfOfPreimageZpowEqSelf.Variantc8eec723e7bd00487aec3ee293470610a0669b8ecbc285a5f94c53bd0430d513","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8eec723e7bd00487aec3ee293470610a0669b8ecbc285a5f94c53bd0430d513","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulEqSelfOfPreimageZpowEqSelf.Variantc8eec723e7bd00487aec3ee293470610a0669b8ecbc285a5f94c53bd0430d513","mathematical_subject":"Algebra.Groups","original_sha256":"c8eec723e7bd00487aec3ee293470610a0669b8ecbc285a5f94c53bd0430d513","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Dynamics/FixedPoints/Prufer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Group.Action.Pointwise.Set.Basic
import Mathlib.Dynamics.FixedPoints.Basic

/-!
# Results about pointwise operations on sets with iteration.
-/



namespace GRWTSK.Algebra.GroupTheory.SmulEqSelfOfPreimageZpowEqSelf.Variantc8eec723e7bd00487aec3ee293470610a0669b8ecbc285a5f94c53bd0430d513

open Pointwise

open Set Function

/-- Let `n : ℤ` and `s` a subset of a commutative group `G` that is invariant under preimage for
the map `x ↦ x^n`. Then `s` is invariant under the pointwise action of the subgroup of elements
`g : G` such that `g^(n^j) = 1` for some `j : ℕ`. (This subgroup is called the Prüfer subgroup when
`G` is the `Circle` and `n` is prime.) -/
@[to_additive
      "Let `n : ℤ` and `s` a subset of an additive commutative group `G` that is invariant
      under preimage for the map `x ↦ n • x`. Then `s` is invariant under the pointwise action of
      the additive subgroup of elements `g : G` such that `(n^j) • g = 0` for some `j : ℕ`.
      (This additive subgroup is called the Prüfer subgroup when `G` is the `AddCircle` and `n` is
      prime.)"]
theorem smul_eq_self_of_preimage_zpow_eq_self {G : Type*} [CommGroup G] {n : ℤ} {s : Set G}
    (hs : (fun x => x ^ n) ⁻¹' s = s) {g : G} {j : ℕ} (hg : g ^ n ^ j = 1) : g • s = s := by
  suffices ∀ {g' : G} (_ : g' ^ n ^ j = 1), g' • s ⊆ s by
    refine le_antisymm (this hg) ?_
    conv_lhs => rw [← smul_inv_smul g s]
    replace hg : g⁻¹ ^ n ^ j = 1 := by rw [inv_zpow, hg, inv_one]
    simpa only [le_eq_subset, smul_set_subset_smul_set_iff] using this hg
  rw [(IsFixedPt.preimage_iterate hs j : (zpowGroupHom n)^[j] ⁻¹' s = s).symm]
  rintro g' hg' - ⟨y, hy, rfl⟩
  change (zpowGroupHom n)^[j] (g' * y) ∈ s
  replace hg' : (zpowGroupHom n)^[j] g' = 1 := by simpa [zpowGroupHom]
  rwa [iterate_map_mul, hg', one_mul]
