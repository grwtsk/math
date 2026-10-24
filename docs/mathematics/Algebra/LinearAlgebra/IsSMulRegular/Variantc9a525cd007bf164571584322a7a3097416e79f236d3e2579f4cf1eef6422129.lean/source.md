# Complete source: GRWTSK.Algebra.LinearAlgebra.IsSMulRegular.Variantc9a525cd007bf164571584322a7a3097416e79f236d3e2579f4cf1eef6422129

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `491be4a3d2f560a627bcb43c167291d60fc49ef8` · SHA-256 `7fb5acf43fa1a94afe5f9ecfebf913529b218280b09075c98f9c9b361bb162fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearEquivIsSMulRegularCongrPrime.Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearEquivIsSMulRegularCongrPrime.Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Regular/IsSMulRegular.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Brendan Murphy. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Brendan Murphy
-/
module

public import Mathlib.Algebra.GroupWithZero.Action.Regular
public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.RingTheory.Flat.Basic
public import Mathlib.RingTheory.Ideal.AssociatedPrime.Basic
public import Mathlib.RingTheory.QuotSMulTop

/-!
# Lemmas about the `IsSMulRegular` Predicate

For modules over a ring the proposition `IsSMulRegular r M` is equivalent to
`r` being a *non-zero-divisor*, i.e. `r • x = 0` only if `x = 0` for `x ∈ M`.
This specific result is `isSMulRegular_iff_smul_eq_zero_imp_eq_zero`.
Lots of results starting from this, especially ones about quotients (which
don't make sense without some algebraic assumptions), are in this file.
We don't pollute the `Mathlib/Algebra/Regular/SMul.lean` file with these because
it's supposed to import a minimal amount of the algebraic hierarchy.

## Tags

module, regular element, commutative algebra
-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearEquivIsSMulRegularCongrPrime.Variant44ecfd18a7d28103fe350338929bc96b88adc7ca0f5046759a7d4a403a3fb44a

public section

section Congr

variable {R S M N} [Semiring R] [Semiring S] {σ : R →+* S} {σ' : S →+* R}
    [RingHomInvPair σ σ'] [RingHomInvPair σ' σ] [AddCommMonoid M] [Module R M]

lemma LinearEquiv.isSMulRegular_congr' [AddCommMonoid N] [Module S N]
    (e : M ≃ₛₗ[σ] N) (r : R) : IsSMulRegular M r ↔ IsSMulRegular N (σ r) :=
  e.toEquiv.isSMulRegular_congr (e.map_smul' r)

lemma LinearEquiv.isSMulRegular_congr [AddCommMonoid N] [Module R N]
    (e : M ≃ₗ[R] N) (r : R) : IsSMulRegular M r ↔ IsSMulRegular N r :=
  e.isSMulRegular_congr' r

end Congr

variable {R M M' M'' : Type*}

lemma IsSMulRegular.submodule [Semiring R] [AddCommMonoid M] [Module R M]
    (N : Submodule R M) (r : R) (h : IsSMulRegular M r) : IsSMulRegular N r :=
  h.of_injective N.subtype N.injective_subtype

section TensorProduct

open scoped TensorProduct

variable (M) [CommRing R] [AddCommGroup M] [AddCommGroup M']
    [Module R M] [Module R M'] [Module.Flat R M] {r : R}
    (h : IsSMulRegular M' r)
include h

lemma IsSMulRegular.lTensor : IsSMulRegular (M ⊗[R] M') r :=
  have h1 := congrArg DFunLike.coe (LinearMap.lTensor_smul_action M M' r)
  h1.subst (Module.Flat.lTensor_preserves_injective_linearMap _ h)

lemma IsSMulRegular.rTensor : IsSMulRegular (M' ⊗[R] M) r :=
  have h1 := congrArg DFunLike.coe (LinearMap.rTensor_smul_action M M' r)
  h1.subst (Module.Flat.rTensor_preserves_injective_linearMap _ h)

end TensorProduct

section Ring

variable [Ring R] [AddCommGroup M] [Module R M]
    [AddCommGroup M'] [Module R M'] [AddCommGroup M''] [Module R M'']
    (N : Submodule R M) (r : R)

lemma isSMulRegular_submodule_iff_right_eq_zero_of_smul :
    IsSMulRegular N r ↔ ∀ x ∈ N, r • x = 0 → x = 0 :=
  isSMulRegular_iff_right_eq_zero_of_smul.trans <|
    Subtype.forall.trans <| by
      simp only [SetLike.mk_smul_mk, Submodule.mk_eq_zero]

lemma isSMulRegular_quotient_iff_mem_of_smul_mem :
    IsSMulRegular (M ⧸ N) r ↔ ∀ x : M, r • x ∈ N → x ∈ N :=
  isSMulRegular_iff_right_eq_zero_of_smul.trans <|
    N.mkQ_surjective.forall.trans <| by
      simp_rw [← map_smul, N.mkQ_apply, Submodule.Quotient.mk_eq_zero]

variable {N r}

lemma mem_of_isSMulRegular_quotient_of_smul_mem (h1 : IsSMulRegular (M ⧸ N) r)
    {x : M} (h2 : r • x ∈ N) : x ∈ N :=
  (isSMulRegular_quotient_iff_mem_of_smul_mem N r).mp h1 x h2

/-- Given a left exact sequence `0 → M → M' → M''`, if `r` is regular on both
`M` and `M''` it's regular `M'` too. -/
lemma isSMulRegular_of_range_eq_ker {f : M →ₗ[R] M'} {g : M' →ₗ[R] M''}
    (hf : Function.Injective f) (hfg : LinearMap.range f = LinearMap.ker g)
    (h1 : IsSMulRegular M r) (h2 : IsSMulRegular M'' r) :
    IsSMulRegular M' r := by
  refine IsSMulRegular.of_right_eq_zero_of_smul ?_
  intro x hx
  obtain ⟨y, ⟨⟩⟩ := (congrArg (x ∈ ·) hfg).mpr <| h2.right_eq_zero_of_smul <|
    (g.map_smul r x).symm.trans <| (congrArg _ hx).trans g.map_zero
  refine (congrArg f (h1.right_eq_zero_of_smul ?_)).trans f.map_zero
  exact hf <| (f.map_smul r y).trans <| hx.trans f.map_zero.symm

lemma isSMulRegular_of_isSMulRegular_on_submodule_on_quotient
    (h1 : IsSMulRegular N r) (h2 : IsSMulRegular (M ⧸ N) r) : IsSMulRegular M r :=
  isSMulRegular_of_range_eq_ker N.injective_subtype
    (N.range_subtype.trans N.ker_mkQ.symm) h1 h2

end Ring

section CommRing

open Submodule Pointwise

variable (M) [CommRing R] [AddCommGroup M] [Module R M]
    [AddCommGroup M'] [Module R M'] [AddCommGroup M''] [Module R M'']
    (N : Submodule R M) (r : R)

variable (R) in
lemma biUnion_associatedPrimes_eq_compl_regular [IsNoetherianRing R] :
    ⋃ p ∈ associatedPrimes R M, p = { r : R | IsSMulRegular M r }ᶜ :=
  Eq.trans (biUnion_associatedPrimes_eq_zero_divisors R M) <| by
    simp_rw [Set.compl_ofPred, isSMulRegular_iff_right_eq_zero_of_smul,
      not_forall, exists_prop, and_comm]

lemma isSMulRegular_iff_ker_lsmul_eq_bot :
    IsSMulRegular M r ↔ LinearMap.ker (LinearMap.lsmul R M r) = ⊥ :=
  isSMulRegular_iff_torsionBy_eq_bot M r

variable {M}

lemma isSMulRegular_on_submodule_iff_disjoint_ker_lsmul_submodule :
    IsSMulRegular N r ↔ Disjoint (LinearMap.ker (LinearMap.lsmul R M r)) N :=
  Iff.trans (isSMulRegular_submodule_iff_right_eq_zero_of_smul N r) <|
    Iff.symm <| Iff.trans disjoint_comm disjoint_def

lemma isSMulRegular_on_quot_iff_lsmul_comap_le :
    IsSMulRegular (M ⧸ N) r ↔ N.comap (LinearMap.lsmul R M r) ≤ N :=
  isSMulRegular_quotient_iff_mem_of_smul_mem N r

lemma isSMulRegular_on_quot_iff_lsmul_comap_eq :
    IsSMulRegular (M ⧸ N) r ↔ N.comap (LinearMap.lsmul R M r) = N :=
  Iff.trans (isSMulRegular_on_quot_iff_lsmul_comap_le N r) <|
    LE.le.ge_iff_eq' (fun _ => N.smul_mem r)

variable {r}

lemma IsSMulRegular.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul :
    IsSMulRegular M r → (IsSMulRegular (M ⧸ N) r ↔ r • ⊤ ⊓ N ≤ r • N) := by
  intro (h : Function.Injective (DistribSMul.toLinearMap R M r))
  rw [isSMulRegular_on_quot_iff_lsmul_comap_le, ← map_le_map_iff_of_injective h,
    ← LinearMap.lsmul_eq_distribSMultoLinearMap,
    map_comap_eq, LinearMap.range_eq_map]; rfl

lemma isSMulRegular_of_ker_lsmul_eq_bot
    (h : LinearMap.ker (LinearMap.lsmul R M r) = ⊥) :
    IsSMulRegular M r :=
  (isSMulRegular_iff_ker_lsmul_eq_bot M r).mpr h

variable {N} in
lemma smul_top_inf_eq_smul_of_isSMulRegular_on_quot :
    IsSMulRegular (M ⧸ N) r → r • ⊤ ⊓ N ≤ r • N := by
  convert! map_mono ∘ (isSMulRegular_on_quot_iff_lsmul_comap_le N r).mp using 2
  exact Eq.trans (congrArg (· ⊓ N) (map_top _)) (map_comap_eq _ _).symm

-- Who knew this didn't rely on exactness at the right!?
set_option backward.isDefEq.respectTransparency.types false in
open Function in
lemma QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last
    {M'''} [AddCommGroup M'''] [Module R M''']
    {r : R} {f₁ : M →ₗ[R] M'} {f₂ : M' →ₗ[R] M''} {f₃ : M'' →ₗ[R] M'''}
    (h₁₂ : Exact f₁ f₂) (h₂₃ : Exact f₂ f₃) (h : IsSMulRegular M''' r) :
    Exact (map r f₁) (map r f₂) :=
  suffices IsSMulRegular (M'' ⧸ LinearMap.range f₂) r by
    dsimp [map, mapQLinear]
    rw [Exact.exact_mapQ_iff h₁₂, map_pointwise_smul, Submodule.map_top, inf_comm]
    exact smul_top_inf_eq_smul_of_isSMulRegular_on_quot this
  h.of_injective _ <| LinearMap.ker_eq_bot.mp <|
    ker_liftQ_eq_bot' _ _ h₂₃.linearMap_ker_eq.symm

end CommRing
```
