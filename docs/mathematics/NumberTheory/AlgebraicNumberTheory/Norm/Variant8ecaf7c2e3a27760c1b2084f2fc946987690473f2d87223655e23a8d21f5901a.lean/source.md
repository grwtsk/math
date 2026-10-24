# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.Norm.Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc7acfb7bbf33dbc728135d8c265804131b87c3a` · SHA-256 `a8cc57990a8a435af0e737a8f17ef94462603cfba5659479563fcf844b7dad6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.Norm.Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.Norm.Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/NumberTheory/NumberField/Norm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca, Eric Rodriguez
-/
import Mathlib.NumberTheory.NumberField.Basic
import Mathlib.RingTheory.Norm


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.Norm.Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d

#align_import number_theory.number_field.norm from "leanprover-community/mathlib"@"00f91228655eecdcd3ac97a7fd8dbcb139fe990a"

/-!
# Norm in number fields
Given a finite extension of number fields, we define the norm morphism as a function between the
rings of integers.

## Main definitions
* `RingOfIntegers.norm K` : `Algebra.norm` as a morphism `(𝓞 L) →* (𝓞 K)`.
## Main results
* `RingOfIntegers.dvd_norm` : if `L/K` is a finite Galois extension of fields, then, for all
  `(x : 𝓞 L)` we have that `x ∣ algebraMap (𝓞 K) (𝓞 L) (norm K x)`.

-/


open scoped NumberField BigOperators

open Finset NumberField Algebra FiniteDimensional

namespace RingOfIntegers

variable {L : Type*} (K : Type*) [Field K] [Field L] [Algebra K L] [FiniteDimensional K L]

/-- `Algebra.norm` as a morphism betwen the rings of integers. -/
@[simps!]
noncomputable def norm [IsSeparable K L] : 𝓞 L →* 𝓞 K :=
  ((Algebra.norm K).restrict (𝓞 L)).codRestrict (𝓞 K) fun x => isIntegral_norm K x.2
#align ring_of_integers.norm RingOfIntegers.norm

theorem coe_algebraMap_norm [IsSeparable K L] (x : 𝓞 L) :
    (algebraMap (𝓞 K) (𝓞 L) (norm K x) : L) = algebraMap K L (Algebra.norm K (x : L)) :=
  rfl
#align ring_of_integers.coe_algebra_map_norm RingOfIntegers.coe_algebraMap_norm

theorem coe_norm_algebraMap [IsSeparable K L] (x : 𝓞 K) :
    (norm K (algebraMap (𝓞 K) (𝓞 L) x) : K) = Algebra.norm K (algebraMap K L x) :=
  rfl
#align ring_of_integers.coe_norm_algebra_map RingOfIntegers.coe_norm_algebraMap

theorem norm_algebraMap [IsSeparable K L] (x : 𝓞 K) :
    norm K (algebraMap (𝓞 K) (𝓞 L) x) = x ^ finrank K L := by
  rw [← Subtype.coe_inj, RingOfIntegers.coe_norm_algebraMap, Algebra.norm_algebraMap,
    SubsemiringClass.coe_pow]
#align ring_of_integers.norm_algebra_map RingOfIntegers.norm_algebraMap

theorem isUnit_norm_of_isGalois [IsGalois K L] {x : 𝓞 L} : IsUnit (norm K x) ↔ IsUnit x := by
  classical
  refine' ⟨fun hx => _, IsUnit.map _⟩
  replace hx : IsUnit (algebraMap (𝓞 K) (𝓞 L) <| norm K x) := hx.map (algebraMap (𝓞 K) <| 𝓞 L)
  refine' @isUnit_of_mul_isUnit_right (𝓞 L) _
    ⟨(univ \ {AlgEquiv.refl}).prod fun σ : L ≃ₐ[K] L => σ x,
      prod_mem fun σ _ => map_isIntegral (σ : L →+* L).toIntAlgHom x.2⟩ _ _
  convert hx using 1
  ext
  push_cast
  convert_to ((univ \ {AlgEquiv.refl}).prod fun σ : L ≃ₐ[K] L => σ x) *
    ∏ σ : L ≃ₐ[K] L in {AlgEquiv.refl}, σ (x : L) = _
  · rw [prod_singleton, AlgEquiv.coe_refl, _root_.id]
  · rw [prod_sdiff <| subset_univ _, ← norm_eq_prod_automorphisms, coe_algebraMap_norm]
#align ring_of_integers.is_unit_norm_of_is_galois RingOfIntegers.isUnit_norm_of_isGalois

/-- If `L/K` is a finite Galois extension of fields, then, for all `(x : 𝓞 L)` we have that
`x ∣ algebraMap (𝓞 K) (𝓞 L) (norm K x)`. -/
theorem dvd_norm [IsGalois K L] (x : 𝓞 L) : x ∣ algebraMap (𝓞 K) (𝓞 L) (norm K x) := by
  classical
  have hint : ∏ σ : L ≃ₐ[K] L in univ.erase AlgEquiv.refl, σ x ∈ 𝓞 L :=
    Subalgebra.prod_mem _ fun σ _ =>
      (mem_ringOfIntegers _ _).2 (map_isIntegral σ (RingOfIntegers.isIntegral_coe x))
  refine' ⟨⟨_, hint⟩, Subtype.ext _⟩
  rw [coe_algebraMap_norm K x, norm_eq_prod_automorphisms]
  simp [← Finset.mul_prod_erase _ _ (mem_univ AlgEquiv.refl)]
#align ring_of_integers.dvd_norm RingOfIntegers.dvd_norm

variable (F : Type*) [Field F] [Algebra K F] [IsSeparable K F] [FiniteDimensional K F]

theorem norm_norm [IsSeparable K L] [Algebra F L] [IsSeparable F L] [FiniteDimensional F L]
    [IsScalarTower K F L] (x : 𝓞 L) : norm K (norm F x) = norm K x := by
  rw [← Subtype.coe_inj, norm_apply_coe, norm_apply_coe, norm_apply_coe, Algebra.norm_norm]
#align ring_of_integers.norm_norm RingOfIntegers.norm_norm

variable {F}

theorem isUnit_norm [CharZero K] {x : 𝓞 F} : IsUnit (norm K x) ↔ IsUnit x := by
  letI : Algebra K (AlgebraicClosure K) := AlgebraicClosure.instAlgebra K
  let L := normalClosure K F (AlgebraicClosure F)
  haveI : FiniteDimensional F L := FiniteDimensional.right K F L
  haveI : IsAlgClosure K (AlgebraicClosure F) :=
    IsAlgClosure.ofAlgebraic K F (AlgebraicClosure F) (Algebra.isAlgebraic_of_finite K F)
  haveI : IsGalois F L := IsGalois.tower_top_of_isGalois K F L
  calc
    IsUnit (norm K x) ↔ IsUnit ((norm K) x ^ finrank F L) :=
      (isUnit_pow_iff (pos_iff_ne_zero.mp finrank_pos)).symm
    _ ↔ IsUnit (norm K (algebraMap (𝓞 F) (𝓞 L) x)) := by
      rw [← norm_norm K F (algebraMap (𝓞 F) (𝓞 L) x), norm_algebraMap F _, map_pow]
    _ ↔ IsUnit (algebraMap (𝓞 F) (𝓞 L) x) := (isUnit_norm_of_isGalois K)
    _ ↔ IsUnit (norm F (algebraMap (𝓞 F) (𝓞 L) x)) := (isUnit_norm_of_isGalois F).symm
    _ ↔ IsUnit (x ^ finrank F L) := (congr_arg IsUnit (norm_algebraMap F _)).to_iff
    _ ↔ IsUnit x := isUnit_pow_iff (pos_iff_ne_zero.mp finrank_pos)
#align ring_of_integers.is_unit_norm RingOfIntegers.isUnit_norm

end RingOfIntegers
```
