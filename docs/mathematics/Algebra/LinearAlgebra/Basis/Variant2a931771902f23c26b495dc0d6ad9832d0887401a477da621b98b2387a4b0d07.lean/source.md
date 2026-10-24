# Complete source: GRWTSK.Algebra.LinearAlgebra.Basis.Variant2a931771902f23c26b495dc0d6ad9832d0887401a477da621b98b2387a4b0d07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a5ee26b3274a015e41324a744933411d4ae007f` · SHA-256 `52661893f2ebb9084cdd3d6f2fb0a4813039c8dc4063eaa785a58ec1fef0ba7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MapFinsuppSumPrime.Variant0d49236fcb8c0767b4c5a1e5e0b35e39bc19a33233afbbc9f19f1c1ec474a0d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d49236fcb8c0767b4c5a1e5e0b35e39bc19a33233afbbc9f19f1c1ec474a0d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MapFinsuppSumPrime.Variant0d49236fcb8c0767b4c5a1e5e0b35e39bc19a33233afbbc9f19f1c1ec474a0d6","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0d49236fcb8c0767b4c5a1e5e0b35e39bc19a33233afbbc9f19f1c1ec474a0d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/QuadraticForm/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.BigOperators.Sym
public import Mathlib.Data.Finsupp.Pointwise
public import Mathlib.Data.Sym.Sym2.Finsupp
public import Mathlib.LinearAlgebra.QuadraticForm.Basic

/-!
# Constructing a bilinear map from a quadratic map, given a basis

This file provides an alternative to `QuadraticMap.associated`; unlike that definition, this one
does not require `Invertible (2 : R)`. Unlike that definition, this only works in the presence of
a basis.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MapFinsuppSumPrime.Variant0d49236fcb8c0767b4c5a1e5e0b35e39bc19a33233afbbc9f19f1c1ec474a0d6

@[expose] public section

open LinearMap (BilinMap)
open Module

namespace QuadraticMap
variable {ι R M N : Type*}

section Finsupp
variable [CommRing R] [AddCommGroup M] [AddCommGroup N] [Module R M] [Module R N]

open Finsupp

theorem map_finsuppSum' (Q : QuadraticMap R M N) (f : ι →₀ R) (g : ι → R → M) :
    Q (f.sum g) =
      ∑ p ∈ f.support.sym2, polarSym2 Q (p.map fun i ↦ g i (f i)) - f.sum fun i a ↦ Q (g i a) :=
  Q.map_sum' ..

theorem apply_linearCombination' (Q : QuadraticMap R M N) {g : ι → M} (l : ι →₀ R) :
    Q (linearCombination R g l) =
      linearCombination R (polarSym2 Q ∘ Sym2.map g) l.sym2Mul -
        linearCombination R (Q ∘ g) (l * l) := by
  simp_rw [linearCombination_apply, map_finsuppSum', Q.map_smul, mul_smul]
  rw [(l * l).sum_of_support_subset support_mul_subset_left _ <| by simp,
    l.sym2Mul.sum_of_support_subset support_sym2Mul_subset _ <| by simp]
  simp [Finsupp.sum, ← polarSym2_map_smul, mul_smul]

theorem sum_polar_sub_repr_sq (Q : QuadraticMap R M N) (bm : Basis ι R M) (x : M) :
    linearCombination R (polarSym2 Q ∘ Sym2.map bm) (bm.repr x).sym2Mul -
      linearCombination R (Q ∘ bm) (bm.repr x * bm.repr x) = Q x := by
  rw [← apply_linearCombination', Basis.linearCombination_repr]

variable [DecidableEq ι]

/-- The quadratic version of `_root_.map_finsupp_sum`. -/
theorem map_finsuppSum (Q : QuadraticMap R M N) (f : ι →₀ R) (g : ι → R → M) :
    Q (f.sum g) = f.sum (fun i r ↦ Q (g i r)) +
      ∑ p ∈ f.support.sym2 with ¬ p.IsDiag, polarSym2 Q (p.map fun i ↦ g i (f i)) := Q.map_sum _ _

/-- The quadratic version of `Finsupp.apply_linearCombination`. -/
theorem apply_linearCombination (Q : QuadraticMap R M N) {g : ι → M} (l : ι →₀ R) :
    Q (linearCombination R g l) = linearCombination R (Q ∘ g) (l * l) +
      ∑ p ∈ l.support.sym2 with ¬ p.IsDiag, (p.map l).mul • polarSym2 Q (p.map g) := by
  simp_rw [linearCombination_apply, map_finsuppSum, Q.map_smul, mul_smul]
  rw [(l * l).sum_of_support_subset support_mul_subset_left _ <| by simp]
  simp [Finsupp.sum, ← polarSym2_map_smul, mul_smul]

/-- The quadratic version of `LinearMap.sum_repr_mul_repr_mul`. -/
theorem sum_repr_sq_add_sum_repr_mul_polar (Q : QuadraticMap R M N) (bm : Basis ι R M) (x : M) :
    linearCombination R (Q ∘ bm) (bm.repr x * bm.repr x) +
      ∑ p ∈ (bm.repr x).support.sym2 with ¬ p.IsDiag,
        Sym2.mul (p.map (bm.repr x)) • polarSym2 Q (p.map bm) = Q x := by
  rw [← apply_linearCombination, Basis.linearCombination_repr]

end Finsupp

variable [LinearOrder ι]
variable [CommRing R] [AddCommGroup M] [AddCommGroup N] [Module R M] [Module R N]

/-- Given an ordered basis, produce a bilinear form associated with the quadratic form.

Unlike `QuadraticMap.associated`, this is not symmetric; however, as a result it can be used even
in characteristic two. When considered as a matrix, the form is triangular. -/
noncomputable def toBilin (Q : QuadraticMap R M N) (bm : Basis ι R M) : LinearMap.BilinMap R M N :=
  bm.constr (S := R) fun i =>
    bm.constr (S := R) fun j =>
      if i = j then Q (bm i) else if i < j then polar Q (bm i) (bm j) else 0

theorem toBilin_apply (Q : QuadraticMap R M N) (bm : Basis ι R M) (i j : ι) :
    Q.toBilin bm (bm i) (bm j) =
      if i = j then Q (bm i) else if i < j then polar Q (bm i) (bm j) else 0 := by
  simp [toBilin]

theorem toQuadraticMap_toBilin (Q : QuadraticMap R M N) (bm : Basis ι R M) :
    (Q.toBilin bm).toQuadraticMap = Q := by
  ext x
  rw [← bm.linearCombination_repr x, LinearMap.BilinMap.toQuadraticMap_apply,
      Finsupp.linearCombination_apply, Finsupp.sum]
  simp_rw [LinearMap.map_sum₂, map_sum, LinearMap.map_smul₂, map_smul, toBilin_apply,
    smul_ite, smul_zero, ← Finset.sum_product', ← Finset.diag_union_offDiag,
    Finset.sum_union (Finset.disjoint_diag_offDiag _), Finset.sum_diag, ite_true]
  rw [Finset.sum_ite_of_false, QuadraticMap.map_sum, ← Finset.sum_filter]
  · simp_rw [← polar_smul_right _ (bm.repr x <| Prod.snd _),
      ← polar_smul_left _ (bm.repr x <| Prod.fst _)]
    simp_rw [QuadraticMap.map_smul, mul_smul, Finset.sum_sym2_filter_not_isDiag]
    rfl
  · intro x hx
    rw [Finset.mem_offDiag] at hx
    simpa using hx.2.2

/-- From a free module, every quadratic map can be built from a bilinear form.

See `BilinMap.not_forall_toQuadraticMap_surjective` for a counterexample when the module is
not free. -/
theorem _root_.GRWTSK.Algebra.LinearAlgebra.MapFinsuppSumPrime.Variant0d49236fcb8c0767b4c5a1e5e0b35e39bc19a33233afbbc9f19f1c1ec474a0d6.LinearMap.BilinMap.toQuadraticMap_surjective [Module.Free R M] :
    Function.Surjective (LinearMap.BilinMap.toQuadraticMap : LinearMap.BilinMap R M N → _) := by
  intro Q
  obtain ⟨ι, b⟩ := Module.Free.exists_basis (R := R) (M := M)
  let : LinearOrder ι := IsWellOrder.linearOrder WellOrderingRel
  exact ⟨_, toQuadraticMap_toBilin _ b⟩

@[simp]
lemma add_toBilin (bm : Basis ι R M) (Q₁ Q₂ : QuadraticMap R M N) :
    (Q₁ + Q₂).toBilin bm = Q₁.toBilin bm + Q₂.toBilin bm := by
  refine bm.ext fun i => bm.ext fun j => ?_
  obtain h | rfl | h := lt_trichotomy i j
  · simp [h.ne, h, toBilin_apply, polar_add]
  · simp [toBilin_apply]
  · simp [h.ne', h.not_gt, toBilin_apply]

variable (S) [CommSemiring S] [Algebra S R]
variable [Module S N] [IsScalarTower S R N]

@[simp]
lemma smul_toBilin (bm : Basis ι R M) (s : S) (Q : QuadraticMap R M N) :
    (s • Q).toBilin bm = s • Q.toBilin bm := by
  refine bm.ext fun i => bm.ext fun j => ?_
  obtain h | rfl | h := lt_trichotomy i j
  · simp [h.ne, h, toBilin_apply, polar_smul]
  · simp [toBilin_apply]
  · simp [h.ne', h.not_gt, toBilin_apply]

/-- `QuadraticMap.toBilin` as an S-linear map -/
@[simps]
noncomputable def toBilinHom (bm : Basis ι R M) : QuadraticMap R M N →ₗ[S] BilinMap R M N where
  toFun Q := Q.toBilin bm
  map_add' := add_toBilin bm
  map_smul' := smul_toBilin S bm

end QuadraticMap
```
