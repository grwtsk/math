# Complete source: GRWTSK.Algebra.UniversalAlgebra.CartanSubalgebra.Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7671db290686c9a5b3b42b298a791d496d26904` · SHA-256 `ea77f0c6ca35f3c95f939d10c47e03549f066d303a0f92e3d720bfeee3ebb654`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsCartanSubalgebra.Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsCartanSubalgebra.Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Lie/CartanSubalgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Lie.Nilpotent
import Mathlib.Algebra.Lie.Normalizer


namespace GRWTSK.Algebra.UniversalAlgebra.IsCartanSubalgebra.Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41

#align_import algebra.lie.cartan_subalgebra from "leanprover-community/mathlib"@"938fead7abdc0cbbca8eba7a1052865a169dc102"

/-!
# Cartan subalgebras

Cartan subalgebras are one of the most important concepts in Lie theory. We define them here.
The standard example is the set of diagonal matrices in the Lie algebra of matrices.

## Main definitions

  * `LieSubmodule.IsUcsLimit`
  * `LieSubalgebra.IsCartanSubalgebra`
  * `LieSubalgebra.isCartanSubalgebra_iff_isUcsLimit`

## Tags

lie subalgebra, normalizer, idealizer, cartan subalgebra
-/


universe u v w w₁ w₂

variable {R : Type u} {L : Type v}

variable [CommRing R] [LieRing L] [LieAlgebra R L] (H : LieSubalgebra R L)

/-- Given a Lie module `M` of a Lie algebra `L`, `LieSubmodule.IsUcsLimit` is the proposition
that a Lie submodule `N ⊆ M` is the limiting value for the upper central series.

This is a characteristic property of Cartan subalgebras with the roles of `L`, `M`, `N` played by
`H`, `L`, `H`, respectively. See `LieSubalgebra.isCartanSubalgebra_iff_isUcsLimit`. -/
def LieSubmodule.IsUcsLimit {M : Type*} [AddCommGroup M] [Module R M] [LieRingModule L M]
    [LieModule R L M] (N : LieSubmodule R L M) : Prop :=
  ∃ k, ∀ l, k ≤ l → (⊥ : LieSubmodule R L M).ucs l = N
#align lie_submodule.is_ucs_limit LieSubmodule.IsUcsLimit

namespace LieSubalgebra

/-- A Cartan subalgebra is a nilpotent, self-normalizing subalgebra. -/
class IsCartanSubalgebra : Prop where
  nilpotent : LieAlgebra.IsNilpotent R H
  self_normalizing : H.normalizer = H
#align lie_subalgebra.is_cartan_subalgebra LieSubalgebra.IsCartanSubalgebra

instance [H.IsCartanSubalgebra] : LieAlgebra.IsNilpotent R H :=
  IsCartanSubalgebra.nilpotent

@[simp]
theorem normalizer_eq_self_of_isCartanSubalgebra (H : LieSubalgebra R L) [H.IsCartanSubalgebra] :
    H.toLieSubmodule.normalizer = H.toLieSubmodule := by
  rw [← LieSubmodule.coe_toSubmodule_eq_iff, coe_normalizer_eq_normalizer,
    IsCartanSubalgebra.self_normalizing, coe_toLieSubmodule]
#align lie_subalgebra.normalizer_eq_self_of_is_cartan_subalgebra LieSubalgebra.normalizer_eq_self_of_isCartanSubalgebra

@[simp]
theorem ucs_eq_self_of_isCartanSubalgebra (H : LieSubalgebra R L) [H.IsCartanSubalgebra] (k : ℕ) :
    H.toLieSubmodule.ucs k = H.toLieSubmodule := by
  induction' k with k ih
  · simp
  · simp [ih]
#align lie_subalgebra.ucs_eq_self_of_is_cartan_subalgebra LieSubalgebra.ucs_eq_self_of_isCartanSubalgebra

theorem isCartanSubalgebra_iff_isUcsLimit : H.IsCartanSubalgebra ↔ H.toLieSubmodule.IsUcsLimit := by
  constructor
  · intro h
    have h₁ : LieAlgebra.IsNilpotent R H := by infer_instance
    obtain ⟨k, hk⟩ := H.toLieSubmodule.isNilpotent_iff_exists_self_le_ucs.mp h₁
    replace hk : H.toLieSubmodule = LieSubmodule.ucs k ⊥ :=
      le_antisymm hk
        (LieSubmodule.ucs_le_of_normalizer_eq_self H.normalizer_eq_self_of_isCartanSubalgebra k)
    refine' ⟨k, fun l hl => _⟩
    rw [← Nat.sub_add_cancel hl, LieSubmodule.ucs_add, ← hk,
      LieSubalgebra.ucs_eq_self_of_isCartanSubalgebra]
  · rintro ⟨k, hk⟩
    exact
      { nilpotent := by
          dsimp only [LieAlgebra.IsNilpotent]
          erw [H.toLieSubmodule.isNilpotent_iff_exists_lcs_eq_bot]
          use k
          rw [_root_.eq_bot_iff, LieSubmodule.lcs_le_iff, hk k (le_refl k)]
        self_normalizing := by
          have hk' := hk (k + 1) k.le_succ
          rw [LieSubmodule.ucs_succ, hk k (le_refl k)] at hk'
          rw [← LieSubalgebra.coe_to_submodule_eq_iff, ← LieSubalgebra.coe_normalizer_eq_normalizer,
            hk', LieSubalgebra.coe_toLieSubmodule] }
#align lie_subalgebra.is_cartan_subalgebra_iff_is_ucs_limit LieSubalgebra.isCartanSubalgebra_iff_isUcsLimit

end LieSubalgebra

@[simp]
theorem LieIdeal.normalizer_eq_top {R : Type u} {L : Type v} [CommRing R] [LieRing L]
    [LieAlgebra R L] (I : LieIdeal R L) : (I : LieSubalgebra R L).normalizer = ⊤ := by
  ext x
  simpa only [LieSubalgebra.mem_normalizer_iff, LieSubalgebra.mem_top, iff_true_iff] using
    fun y hy => I.lie_mem hy
#align lie_ideal.normalizer_eq_top LieIdeal.normalizer_eq_top

open LieIdeal

/-- A nilpotent Lie algebra is its own Cartan subalgebra. -/
instance LieAlgebra.top_isCartanSubalgebra_of_nilpotent [LieAlgebra.IsNilpotent R L] :
    LieSubalgebra.IsCartanSubalgebra (⊤ : LieSubalgebra R L) where
  nilpotent := inferInstance
  self_normalizing := by rw [← top_coe_lieSubalgebra, normalizer_eq_top, top_coe_lieSubalgebra]
#align lie_algebra.top_is_cartan_subalgebra_of_nilpotent LieAlgebra.top_isCartanSubalgebra_of_nilpotent
```
