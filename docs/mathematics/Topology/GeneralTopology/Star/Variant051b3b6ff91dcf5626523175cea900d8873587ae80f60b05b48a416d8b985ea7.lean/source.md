# Complete source: GRWTSK.Topology.GeneralTopology.Star.Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f00629c9cd1c121644dafe22c8d088fe1e68c14d` · SHA-256 `d1d05d4289eb970f72a851493b897bcdd3a5624bdaca91de78e290b56d78b9e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StarL.Variant0730e7b94f7e34512cc8f343c1e60947c44d410cdf0ca516021c3e012eccac0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0730e7b94f7e34512cc8f343c1e60947c44d410cdf0ca516021c3e012eccac0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StarL.Variant0730e7b94f7e34512cc8f343c1e60947c44d410cdf0ca516021c3e012eccac0a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0730e7b94f7e34512cc8f343c1e60947c44d410cdf0ca516021c3e012eccac0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Module/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Frédéric Dupuis
-/
module

public import Mathlib.Algebra.Star.Module
public import Mathlib.Topology.Algebra.Module.Equiv
public import Mathlib.Topology.Algebra.Star

/-!
# The star operation, bundled as a continuous star-linear equiv
-/


namespace GRWTSK.Topology.GeneralTopology.StarL.Variant0730e7b94f7e34512cc8f343c1e60947c44d410cdf0ca516021c3e012eccac0a

@[expose] public section



@[inherit_doc]
notation:25 M " →L⋆[" R "] " M₂ => ContinuousLinearMap (starRingEnd R) M M₂

@[inherit_doc]
notation:50 M " ≃L⋆[" R "] " M₂ => ContinuousLinearEquiv (starRingEnd R) M M₂

section starL

variable (R : Type*) {A : Type*} [CommSemiring R] [StarRing R] [AddCommMonoid A]
    [StarAddMonoid A] [Module R A] [StarModule R A] [TopologicalSpace A] [ContinuousStar A]

set_option backward.defeqAttrib.useBackward true in
/-- If `A` is a topological module over a commutative `R` with compatible actions,
then `star` is a continuous semilinear equivalence. -/
@[simps! apply]
def starL : A ≃L⋆[R] A where
  toLinearEquiv := starLinearEquiv R

@[simp]
theorem toLinearEquiv_starL : (starL R : A ≃L⋆[R] A).toLinearEquiv = starLinearEquiv R :=
  rfl

@[simp]
theorem symm_starL : (starL R : A ≃L⋆[R] A).symm = starL R :=
  rfl

@[deprecated "Use `symm_starL` and `starL_apply` instead" (since := "2026-06-03")]
theorem starL_symm_apply (x : A) : (starL R).symm x = starAddEquiv.symm x := by
  simp

variable [TrivialStar R]

-- TODO: this could be replaced with something like `(starL R).restrict_scalarsₛₗ h` if we
-- implemented the idea in
-- https://leanprover.zulipchat.com/#narrow/stream/217875-Is-there-code-for-X.3F/topic/Star-semilinear.20maps.20are.20semilinear.20when.20star.20is.20trivial/near/359557835
#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- If `A` is a topological module over a commutative `R` with trivial star and compatible actions,
then `star` is a continuous linear equivalence. -/
@[simps! apply]
def starL' : A ≃L[R] A :=
  (starL R : A ≃L⋆[R] A).trans
    ({ AddEquiv.refl A with
        map_smul' := fun r a => by simp
        continuous_toFun := continuous_id
        continuous_invFun := continuous_id } :
      A ≃L⋆[R] A)

@[simp]
theorem symm_starL' : (starL' R : A ≃L[R] A).symm = starL' R :=
  rfl

@[deprecated "Use `symm_starL'` and `starL'_apply` instead" (since := "2026-06-03")]
theorem starL'_symm_apply (x : A) : (starL' R).symm x = starAddEquiv.symm x := by
  simp

end starL

variable (R : Type*) (A : Type*) [Semiring R] [StarMul R] [TrivialStar R] [AddCommGroup A]
  [Module R A] [StarAddMonoid A] [StarModule R A] [Invertible (2 : R)] [TopologicalSpace A]

@[fun_prop]
theorem continuous_selfAdjointPart [ContinuousAdd A] [ContinuousStar A] [ContinuousConstSMul R A] :
    Continuous (selfAdjointPart R (A := A)) :=
  ((continuous_const_smul _).comp <| continuous_id.add continuous_star).subtype_mk _

@[fun_prop]
theorem continuous_skewAdjointPart [ContinuousSub A] [ContinuousStar A] [ContinuousConstSMul R A] :
    Continuous (skewAdjointPart R (A := A)) :=
  ((continuous_const_smul _).comp <| continuous_id.sub continuous_star).subtype_mk _

@[fun_prop]
theorem continuous_decomposeProdAdjoint [IsTopologicalAddGroup A] [ContinuousStar A]
    [ContinuousConstSMul R A] : Continuous (StarModule.decomposeProdAdjoint R A) :=
  (continuous_selfAdjointPart R A).prodMk (continuous_skewAdjointPart R A)

@[fun_prop]
theorem continuous_decomposeProdAdjoint_symm [ContinuousAdd A] :
    Continuous (StarModule.decomposeProdAdjoint R A).symm :=
  (continuous_subtype_val.comp continuous_fst).add (continuous_subtype_val.comp continuous_snd)

/-- The self-adjoint part of an element of a star module, as a continuous linear map. -/
@[simps! -isSimp]
def selfAdjointPartL [ContinuousAdd A] [ContinuousStar A] [ContinuousConstSMul R A] :
    A →L[R] selfAdjoint A where
  toLinearMap := selfAdjointPart R

/-- The skew-adjoint part of an element of a star module, as a continuous linear map. -/
@[simps!]
def skewAdjointPartL [ContinuousSub A] [ContinuousStar A] [ContinuousConstSMul R A] :
    A →L[R] skewAdjoint A where
  toLinearMap := skewAdjointPart R

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The decomposition of elements of a star module into their self- and skew-adjoint parts,
as a continuous linear equivalence. -/
@[simps!]
def StarModule.decomposeProdAdjointL [IsTopologicalAddGroup A] [ContinuousStar A]
    [ContinuousConstSMul R A] : A ≃L[R] selfAdjoint A × skewAdjoint A where
  toLinearEquiv := StarModule.decomposeProdAdjoint R A
```
