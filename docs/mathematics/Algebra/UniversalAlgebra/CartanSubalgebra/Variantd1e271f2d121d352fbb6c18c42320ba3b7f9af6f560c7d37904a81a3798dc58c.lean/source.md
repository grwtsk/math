# Complete source: GRWTSK.Algebra.UniversalAlgebra.CartanSubalgebra.Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2cb41ca55dee11313241325ad5cf0762af75212` · SHA-256 `5ec252b933a495834e49d642db58af66fff6e2ac7a8eb6ca9f88b6dd5e00ff7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsCartanSubalgebra.Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsCartanSubalgebra.Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/CartanSubalgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Lie.Nilpotent
import Mathlib.Algebra.Lie.Normalizer

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



namespace GRWTSK.Algebra.UniversalAlgebra.IsCartanSubalgebra.Variant5754c56850a8039ae383513e04f04a1ca5324ce944f45c6a479e32ee540c297f

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

namespace LieSubalgebra

/-- A Cartan subalgebra is a nilpotent, self-normalizing subalgebra.

A _splitting_ Cartan subalgebra can be defined by mixing in `LieModule.IsTriangularizable R H L`. -/
class IsCartanSubalgebra : Prop where
  nilpotent : LieRing.IsNilpotent H
  self_normalizing : H.normalizer = H

instance [H.IsCartanSubalgebra] : LieRing.IsNilpotent H :=
  IsCartanSubalgebra.nilpotent

@[simp]
theorem normalizer_eq_self_of_isCartanSubalgebra (H : LieSubalgebra R L) [H.IsCartanSubalgebra] :
    H.toLieSubmodule.normalizer = H.toLieSubmodule := by
  rw [← LieSubmodule.toSubmodule_inj, coe_normalizer_eq_normalizer,
    IsCartanSubalgebra.self_normalizing, coe_toLieSubmodule]

@[simp]
theorem ucs_eq_self_of_isCartanSubalgebra (H : LieSubalgebra R L) [H.IsCartanSubalgebra] (k : ℕ) :
    H.toLieSubmodule.ucs k = H.toLieSubmodule := by
  induction k with
  | zero => simp
  | succ k ih => simp [ih]

theorem isCartanSubalgebra_iff_isUcsLimit : H.IsCartanSubalgebra ↔ H.toLieSubmodule.IsUcsLimit := by
  constructor
  · intro h
    have h₁ : LieRing.IsNilpotent H := by infer_instance
    obtain ⟨k, hk⟩ := H.toLieSubmodule.isNilpotent_iff_exists_self_le_ucs.mp h₁
    replace hk : H.toLieSubmodule = LieSubmodule.ucs k ⊥ :=
      le_antisymm hk
        (LieSubmodule.ucs_le_of_normalizer_eq_self H.normalizer_eq_self_of_isCartanSubalgebra k)
    refine ⟨k, fun l hl => ?_⟩
    rw [← Nat.sub_add_cancel hl, LieSubmodule.ucs_add, ← hk,
      LieSubalgebra.ucs_eq_self_of_isCartanSubalgebra]
  · rintro ⟨k, hk⟩
    exact
      { nilpotent := by
          dsimp only [LieRing.IsNilpotent]
          -- The instance for the second `H` in the goal is `lieRingSelfModule`
          -- but `rw` expects it to be `H.toLieSubmodule.instLieRingModuleSubtypeMem`,
          -- and these are not reducibly defeq.
          erw [H.toLieSubmodule.isNilpotent_iff_exists_lcs_eq_bot]
          use k
          rw [_root_.eq_bot_iff, LieSubmodule.lcs_le_iff, hk k (le_refl k)]
        self_normalizing := by
          have hk' := hk (k + 1) k.le_succ
          rw [LieSubmodule.ucs_succ, hk k (le_refl k)] at hk'
          rw [← LieSubalgebra.toSubmodule_inj, ← LieSubalgebra.coe_normalizer_eq_normalizer,
            hk', LieSubalgebra.coe_toLieSubmodule] }

lemma ne_bot_of_isCartanSubalgebra [Nontrivial L] (H : LieSubalgebra R L) [H.IsCartanSubalgebra] :
    H ≠ ⊥ := by
  intro e
  obtain ⟨x, hx⟩ := exists_ne (0 : L)
  have : x ∈ H.normalizer := by simp [LieSubalgebra.mem_normalizer_iff, e]
  exact hx (by rwa [LieSubalgebra.IsCartanSubalgebra.self_normalizing, e] at this)

instance (priority := 500) [Nontrivial L] (H : LieSubalgebra R L) [H.IsCartanSubalgebra] :
    Nontrivial H := by
  refine (subsingleton_or_nontrivial H).elim (fun inst ↦ False.elim ?_) id
  apply ne_bot_of_isCartanSubalgebra H
  rw [eq_bot_iff]
  exact fun x hx ↦ congr_arg Subtype.val (Subsingleton.elim (⟨x, hx⟩ : H) 0)

end LieSubalgebra

@[simp]
theorem LieIdeal.normalizer_eq_top {R : Type u} {L : Type v} [CommRing R] [LieRing L]
    [LieAlgebra R L] (I : LieIdeal R L) : (I : LieSubalgebra R L).normalizer = ⊤ := by
  ext x
  simpa only [LieSubalgebra.mem_normalizer_iff, LieSubalgebra.mem_top, iff_true] using
    fun y hy => I.lie_mem hy

open LieIdeal

/-- A nilpotent Lie algebra is its own Cartan subalgebra. -/
instance LieAlgebra.top_isCartanSubalgebra_of_nilpotent [LieRing.IsNilpotent L] :
    LieSubalgebra.IsCartanSubalgebra (⊤ : LieSubalgebra R L) where
  nilpotent := inferInstance
  self_normalizing := by rw [← top_toLieSubalgebra, normalizer_eq_top, top_toLieSubalgebra]
```
