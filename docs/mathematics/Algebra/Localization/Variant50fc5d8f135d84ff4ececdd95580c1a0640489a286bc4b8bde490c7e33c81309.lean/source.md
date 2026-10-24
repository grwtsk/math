# Complete source: GRWTSK.Algebra.Localization.Variant50fc5d8f135d84ff4ececdd95580c1a0640489a286bc4b8bde490c7e33c81309

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0870212c73badb65999f22c6376e4e7257d1d476` · SHA-256 `4ae9a564d4fac554401b5bbedd0f6572cd7d949f38bb158abadd2a43d5ff829e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsLocalizationCMkPrime.Variantecaf1d2b4344cffa2b28abe7da2d55cc1ca80ae8dd8d4208d62b6c032b29b649","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecaf1d2b4344cffa2b28abe7da2d55cc1ca80ae8dd8d4208d62b6c032b29b649","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsLocalizationCMkPrime.Variantecaf1d2b4344cffa2b28abe7da2d55cc1ca80ae8dd8d4208d62b6c032b29b649","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ecaf1d2b4344cffa2b28abe7da2d55cc1ca80ae8dd8d4208d62b6c032b29b649","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/MvPolynomial/Localization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.Algebra.Module.LocalizedModule.IsLocalization
public import Mathlib.RingTheory.Ideal.Quotient.Operations
public import Mathlib.RingTheory.Localization.Away.Basic
public import Mathlib.RingTheory.Localization.BaseChange
public import Mathlib.RingTheory.TensorProduct.MvPolynomial

/-!

# Localization and multivariate polynomial rings

In this file we show some results connecting multivariate polynomial rings and localization.

## Main results

- `MvPolynomial.isLocalization`: If `S` is the localization of `R` at a submonoid `M`, then
  `MvPolynomial σ S` is the localization of `MvPolynomial σ R` at the image of `M` in
  `MvPolynomial σ R`.

-/


namespace GRWTSK.Algebra.IsLocalizationCMkPrime.Variantecaf1d2b4344cffa2b28abe7da2d55cc1ca80ae8dd8d4208d62b6c032b29b649

@[expose] public section

variable {σ R : Type*} [CommRing R] (M : Submonoid R)
variable (S : Type*) [CommRing S] [Algebra R S]

namespace MvPolynomial

variable [IsLocalization M S]

attribute [local instance] algebraMvPolynomial

/--
If `S` is the localization of `R` at a submonoid `M`, then `MvPolynomial σ S`
is the localization of `MvPolynomial σ R` at `M.map MvPolynomial.C`.

See also `Polynomial.isLocalization` for the univariate case. -/
instance isLocalization : IsLocalization (M.map <| C (σ := σ)) (MvPolynomial σ S) :=
  isLocalizedModule_iff_isLocalization.mp <| (isLocalizedModule_iff_isBaseChange M S _).mpr <|
    .of_equiv (algebraTensorAlgEquiv _ _).toLinearEquiv fun _ ↦ by simp

lemma isLocalization_C_mk' (a : R) (m : M) :
    C (IsLocalization.mk' S a m) = IsLocalization.mk' (MvPolynomial σ S) (C (σ := σ) a)
      ⟨C m, Submonoid.mem_map_of_mem C m.property⟩ := by
  simp_rw [IsLocalization.eq_mk'_iff_mul_eq, algebraMap_def, map_C, ← map_mul,
    IsLocalization.mk'_spec]

end MvPolynomial

namespace IsLocalization.Away

open MvPolynomial

variable (r : R) [IsLocalization.Away r S]

set_option backward.privateInPublic true in
/-- The canonical algebra map from `MvPolynomial Unit R` quotiented by
`C r * X () - 1` to the localization of `R` away from `r`. -/
private noncomputable
def auxHom : (MvPolynomial Unit R) ⧸ (Ideal.span { C r * X () - 1 }) →ₐ[R] S :=
  Ideal.Quotient.liftₐ (Ideal.span { C r * X () - 1}) (aeval (fun _ ↦ invSelf r)) <| by
    intro p hp
    refine Submodule.span_induction ?_ ?_ ?_ ?_ hp
    · rintro p ⟨q, rfl⟩
      simp
    · simp
    · intro p q _ _ hp hq
      simp [hp, hq]
    · intro a x _ hx
      simp [hx]

@[simp]
private lemma auxHom_mk (p : MvPolynomial Unit R) :
    auxHom S r p = aeval (S₁ := S) (fun _ ↦ invSelf r) p :=
  rfl

set_option backward.privateInPublic true in
private noncomputable
def auxInv : S →+* (MvPolynomial Unit R) ⧸ Ideal.span { C r * X () - 1 } :=
  letI g : R →+* MvPolynomial Unit R ⧸ (Ideal.span { C r * X () - 1 }) :=
    (Ideal.Quotient.mk _).comp C
  IsLocalization.Away.lift (S := S) (g := g) r <| by
    simp only [RingHom.coe_comp, Function.comp_apply, g]
    rw [isUnit_iff_exists_inv]
    use (Ideal.Quotient.mk _ <| X ())
    rw [← map_mul, ← map_one (Ideal.Quotient.mk _), Ideal.Quotient.mk_eq_mk_iff_sub_mem]
    exact Ideal.mem_span_singleton_self (C r * X () - 1)

private lemma auxHom_auxInv : (auxHom S r).toRingHom.comp (auxInv S r) = RingHom.id S := by
  apply IsLocalization.ringHom_ext (Submonoid.powers r)
  ext x
  simp [auxInv]

private lemma auxInv_auxHom : (auxInv S r).comp (auxHom (S := S) r).toRingHom = RingHom.id _ := by
  rw [← RingHom.cancel_right (Ideal.Quotient.mk_surjective)]
  ext x
  · simp [auxInv]
  · simp only [auxInv, AlgHom.toRingHom_eq_coe, RingHom.coe_comp, RingHom.coe_coe,
      Function.comp_apply, auxHom_mk, aeval_X, RingHomCompTriple.comp_eq, invSelf, Away.lift,
      lift_mk'_spec]
    simp only [map_one]
    rw [← map_one (Ideal.Quotient.mk _), ← map_mul, Ideal.Quotient.mk_eq_mk_iff_sub_mem,
      ← Ideal.neg_mem_iff, neg_sub]
    exact Ideal.mem_span_singleton_self (C r * X x - 1)

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The canonical algebra isomorphism from `MvPolynomial Unit R` quotiented by
`C r * X () - 1` to the localization of `R` away from `r`. -/
noncomputable def mvPolynomialQuotientEquiv :
    ((MvPolynomial Unit R) ⧸ Ideal.span { C r * X () - 1 }) ≃ₐ[R] S where
  toFun := auxHom S r
  invFun := auxInv S r
  left_inv x := by
    simpa using congrFun (congrArg DFunLike.coe <| auxInv_auxHom S r) x
  right_inv s := by
    simpa using congrFun (congrArg DFunLike.coe <| auxHom_auxInv S r) s
  map_mul' := by simp
  map_add' := by simp
  commutes' := by simp

@[simp]
lemma mvPolynomialQuotientEquiv_apply (p : MvPolynomial Unit R) :
    mvPolynomialQuotientEquiv S r (Ideal.Quotient.mk _ p) = aeval (S₁ := S) (fun _ ↦ invSelf r) p :=
  rfl

end IsLocalization.Away
```
