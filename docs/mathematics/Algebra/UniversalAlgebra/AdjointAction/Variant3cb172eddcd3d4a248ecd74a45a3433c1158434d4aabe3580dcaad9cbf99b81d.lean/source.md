# Complete source: GRWTSK.Algebra.UniversalAlgebra.AdjointAction.Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c3fe22a1e5526e988932e1830c71a0bdb8b0e49` · SHA-256 `0158caff8de6a1e13ba44ca3d52fb43be28dae3db9385a75417b0f04b6cbdbf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Ad.Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Ad.Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/Derivation/AdjointAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Frédéric Marbach. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Marbach
-/
import Mathlib.Algebra.Lie.Abelian
import Mathlib.Algebra.Lie.Derivation.Basic
import Mathlib.Algebra.Lie.OfAssociative

/-!
# Adjoint action of a Lie algebra on itself

This file defines the *adjoint action* of a Lie algebra on itself, and establishes basic properties.

## Main definitions

- `LieDerivation.ad`: The adjoint action of a Lie algebra `L` on itself, seen as a morphism of Lie
algebras from `L` to the Lie algebra of its derivations. The adjoint action is also defined in the
`Mathlib/Algebra/Lie/OfAssociative.lean` file, under the name `LieAlgebra.ad`, as the morphism with
values in the endormophisms of `L`.

## Main statements

- `LieDerivation.coe_ad_apply_eq_ad_apply`: when seen as endomorphisms, both definitions coincide,
- `LieDerivation.ad_ker_eq_center`: the kernel of the adjoint action is the center of `L`,
- `LieDerivation.lie_der_ad_eq_ad_der`: the commutator of a derivation `D` and `ad x` is `ad (D x)`,
- `LieDerivation.ad_isIdealMorphism`: the range of the adjoint action is an ideal of the
derivations.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Ad.Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719

namespace LieDerivation

section AdjointAction

variable (R L : Type*) [CommRing R] [LieRing L] [LieAlgebra R L]

/-- The adjoint action of a Lie algebra `L` on itself, seen as a morphism of Lie algebras from
`L` to its derivations.
Note the minus sign: this is chosen to so that `ad ⁅x, y⁆ = ⁅ad x, ad y⁆`. -/
@[simps!]
def ad : L →ₗ⁅R⁆ LieDerivation R L L :=
  { __ := - inner R L L
    map_lie' := by
      intro x y
      ext z
      simp only [AddHom.toFun_eq_coe, LinearMap.coe_toAddHom, LinearMap.neg_apply, coe_neg,
        Pi.neg_apply, inner_apply_apply, commutator_apply]
      rw [leibniz_lie, neg_lie, neg_lie, ← lie_skew x]
      abel }

variable {R L}

/-- The definitions `LieDerivation.ad` and `LieAlgebra.ad` agree. -/
@[simp] lemma coe_ad_apply_eq_ad_apply (x : L) : ad R L x = LieAlgebra.ad R L x := by ext; simp

lemma ad_apply_lieDerivation (x : L) (D : LieDerivation R L L) : ad R L (D x) = - ⁅x, D⁆ := rfl

lemma lie_ad (x : L) (D : LieDerivation R L L) : ⁅ad R L x, D⁆ = ⁅x, D⁆ := by ext; simp

variable (R L) in
/-- The kernel of the adjoint action on a Lie algebra is equal to its center. -/
lemma ad_ker_eq_center : (ad R L).ker = LieAlgebra.center R L := by
  ext x
  rw [← LieAlgebra.self_module_ker_eq_center, LieHom.mem_ker, LieModule.mem_ker]
  simp [DFunLike.ext_iff]

/-- If the center of a Lie algebra is trivial, then the adjoint action is injective. -/
lemma injective_ad_of_center_eq_bot (h : LieAlgebra.center R L = ⊥) :
    Function.Injective (ad R L) := by
  rw [← LieHom.ker_eq_bot, ad_ker_eq_center, h]

/-- The commutator of a derivation `D` and a derivation of the form `ad x` is `ad (D x)`. -/
lemma lie_der_ad_eq_ad_der (D : LieDerivation R L L) (x : L) : ⁅D, ad R L x⁆ = ad R L (D x) := by
  rw [ad_apply_lieDerivation, ← lie_ad, lie_skew]

variable (R L) in
/-- The range of the adjoint action homomorphism from a Lie algebra `L` to the Lie algebra of its
derivations is an ideal of the latter. -/
lemma ad_isIdealMorphism : (ad R L).IsIdealMorphism := by
  simp_rw [LieHom.isIdealMorphism_iff, lie_der_ad_eq_ad_der]
  tauto

/-- A derivation `D` belongs to the ideal range of the adjoint action iff it is of the form `ad x`
for some `x` in the Lie algebra `L`. -/
lemma mem_ad_idealRange_iff {D : LieDerivation R L L} :
    D ∈ (ad R L).idealRange ↔ ∃ x : L, ad R L x = D :=
  (ad R L).mem_idealRange_iff (ad_isIdealMorphism R L)

lemma maxTrivSubmodule_eq_bot_of_center_eq_bot (h : LieAlgebra.center R L = ⊥) :
    LieModule.maxTrivSubmodule R L (LieDerivation R L L) = ⊥ := by
  refine (LieSubmodule.eq_bot_iff _).mpr fun D hD ↦ ext fun x ↦ ?_
  have : ad R L (D x) = 0 := by
    rw [LieModule.mem_maxTrivSubmodule] at hD
    simp [ad_apply_lieDerivation, hD]
  rw [← LieHom.mem_ker, ad_ker_eq_center, h, LieSubmodule.mem_bot] at this
  simp [this]

end AdjointAction

end LieDerivation
```
