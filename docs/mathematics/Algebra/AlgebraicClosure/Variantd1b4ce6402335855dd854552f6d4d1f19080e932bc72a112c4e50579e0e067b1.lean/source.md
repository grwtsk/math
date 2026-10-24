# Complete source: GRWTSK.Algebra.AlgebraicClosure.Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eda66a58ad467f77825913cc1fea13a696ea8b3a` · SHA-256 `2a6a4bbb28cf2ee5cc556b48014ce1b5f521894382d14f06839a08434e316b5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ExtendScalars.Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ExtendScalars.Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/AlgebraicIndependent/AlgebraicClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.FieldTheory.AlgebraicClosure
import Mathlib.RingTheory.Algebraic.Integral
import Mathlib.RingTheory.AlgebraicIndependent.Transcendental

/-!
# Algebraic independence persists to the algebraic closure

## Main results

* `AlgebraicIndependent.extendScalars`: if A/S/R is a tower of algebras with S/R algebraic,
  then a family of elements in A that are algebraically independent over R remains algebraically
  independent over S, provided that S has no zero divisors.

* `AlgebraicIndependent.algebraicClosure`: an algebraically independent family remains
  algebraically independent over the algebraic closure.
-/


namespace GRWTSK.Algebra.ExtendScalars.Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06

open Function Algebra

section

variable {ι R S A : Type*} {x : ι → A} (S)
variable [CommRing R] [CommRing S] [CommRing A]
variable [Algebra R S] [Algebra R A] [Algebra S A] [IsScalarTower R S A]
variable [NoZeroDivisors S] (hx : AlgebraicIndependent R x)
include hx

namespace AlgebraicIndependent

theorem extendScalars [alg : Algebra.IsAlgebraic R S] : AlgebraicIndependent S x := by
  refine algebraicIndependent_of_finite_type'
    (Algebra.IsAlgebraic.injective_tower_top S hx.algebraMap_injective) fun t fin ind i hi ↦ ?_
  let Rt := adjoin R (x '' t)
  let St := adjoin S (x '' t)
  let _ : Algebra Rt St :=
    (Rt.inclusion (T := St.restrictScalars R) <| adjoin_le <| by exact subset_adjoin).toAlgebra
  have : IsScalarTower Rt St A := .of_algebraMap_eq fun ⟨y, _⟩ ↦ show y = y from rfl
  have : NoZeroDivisors St := (Set.image_eq_range _ _ ▸ ind.aevalEquiv)
    |>.symm.injective.noZeroDivisors _ (map_zero _) (map_mul _)
  have : NoZeroDivisors Rt := (Subalgebra.inclusion_injective _).noZeroDivisors
    (algebraMap Rt St) (map_zero _) (map_mul _)
  have : Algebra.IsAlgebraic Rt St := ⟨fun ⟨y, hy⟩ ↦ by
    rw [← isAlgebraic_algHom_iff (IsScalarTower.toAlgHom Rt St A) Subtype.val_injective]
    show IsAlgebraic Rt y
    have := Algebra.IsAlgebraic.nontrivial R S
    have := hx.algebraMap_injective.nontrivial
    exact adjoin_induction (fun _ h ↦ isAlgebraic_algebraMap (⟨_, subset_adjoin h⟩ : Rt))
      (fun z ↦ ((alg.1 z).algHom (IsScalarTower.toAlgHom R S A)).extendScalars fun _ _ eq ↦ by
        exact hx.algebraMap_injective congr($eq.1)) (fun _ _ _ _ ↦ .add) (fun _ _ _ _ ↦ .mul) hy⟩
  show Transcendental St (x i)
  exact (hx.transcendental_adjoin hi).extendScalars _

theorem extendScalars_of_isIntegral [Algebra.IsIntegral R S] : AlgebraicIndependent S x := by
  nontriviality S
  have := Module.nontrivial R S
  exact hx.extendScalars S

@[deprecated (since := "2025-02-08")] alias extendScalars_of_isSimpleRing := extendScalars
@[deprecated (since := "2025-02-08")] protected alias subalgebra := extendScalars
@[deprecated (since := "2025-02-08")] alias subalgebra_of_isIntegral := extendScalars_of_isIntegral

theorem subalgebraAlgebraicClosure [IsDomain R] [NoZeroDivisors A] :
    AlgebraicIndependent (Subalgebra.algebraicClosure R A) x :=
  hx.extendScalars _

protected theorem integralClosure [NoZeroDivisors A] :
    AlgebraicIndependent (integralClosure R A) x :=
  hx.extendScalars_of_isIntegral _

omit hx in
protected theorem algebraicClosure {F E : Type*} [Field F] [Field E] [Algebra F E] {x : ι → E}
    (hx : AlgebraicIndependent F x) : AlgebraicIndependent (algebraicClosure F E) x :=
  hx.extendScalars _

end AlgebraicIndependent

namespace Algebra

variable (R) [FaithfulSMul R S]
omit hx

protected theorem IsIntegral.algebraicIndependent_iff [Algebra.IsIntegral R S] :
    AlgebraicIndependent R x ↔ AlgebraicIndependent S x :=
  ⟨(·.extendScalars_of_isIntegral _),
    (·.restrictScalars (FaithfulSMul.algebraMap_injective R S))⟩

protected theorem IsIntegral.isTranscendenceBasis_iff [Algebra.IsIntegral R S] :
    IsTranscendenceBasis R x ↔ IsTranscendenceBasis S x := by
  simp_rw [IsTranscendenceBasis, IsIntegral.algebraicIndependent_iff R S]

protected theorem IsAlgebraic.algebraicIndependent_iff [Algebra.IsAlgebraic R S] :
    AlgebraicIndependent R x ↔ AlgebraicIndependent S x :=
  ⟨(·.extendScalars _), (·.restrictScalars (FaithfulSMul.algebraMap_injective R S))⟩

protected theorem IsAlgebraic.isTranscendenceBasis_iff [Algebra.IsAlgebraic R S] :
    IsTranscendenceBasis R x ↔ IsTranscendenceBasis S x := by
  simp_rw [IsTranscendenceBasis, IsAlgebraic.algebraicIndependent_iff R S]

end Algebra

end

namespace IntermediateField

variable {ι F E R S : Type*} {s : Set E}
variable [Field F] [Field E] [Algebra F E]
variable [CommRing R] [Algebra R F] [Algebra R E] [IsScalarTower R F E]

open scoped algebraAdjoinAdjoin

section Ring

variable [Ring S] [Algebra E S]

theorem isAlgebraic_adjoin_iff {x : S} :
    IsAlgebraic (adjoin F s) x ↔ IsAlgebraic (Algebra.adjoin F s) x :=
  (IsAlgebraic.isAlgebraic_iff ..).symm

theorem isAlgebraic_adjoin_iff_top :
    Algebra.IsAlgebraic (adjoin F s) S ↔ Algebra.IsAlgebraic (Algebra.adjoin F s) S :=
  (IsAlgebraic.isAlgebraic_iff_top ..).symm

theorem isAlgebraic_adjoin_iff_bot :
    Algebra.IsAlgebraic R (adjoin F s) ↔ Algebra.IsAlgebraic R (Algebra.adjoin F s) :=
  (IsAlgebraic.isAlgebraic_iff_bot ..).symm

theorem transcendental_adjoin_iff {x : S} :
    Transcendental (adjoin F s) x ↔ Transcendental (Algebra.adjoin F s) x :=
  (IsAlgebraic.transcendental_iff ..).symm

end Ring

variable [CommRing S] [Algebra E S]

theorem algebraicIndependent_adjoin_iff {x : ι → S} :
    AlgebraicIndependent (adjoin F s) x ↔ AlgebraicIndependent (Algebra.adjoin F s) x :=
  (Algebra.IsAlgebraic.algebraicIndependent_iff ..).symm

theorem isTranscendenceBasis_adjoin_iff {x : ι → S} :
    IsTranscendenceBasis (adjoin F s) x ↔ IsTranscendenceBasis (Algebra.adjoin F s) x :=
  (Algebra.IsAlgebraic.isTranscendenceBasis_iff ..).symm

end IntermediateField
```
