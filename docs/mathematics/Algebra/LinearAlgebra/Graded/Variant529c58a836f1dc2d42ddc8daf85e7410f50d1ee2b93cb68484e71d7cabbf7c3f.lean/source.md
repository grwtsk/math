# Complete source: GRWTSK.Algebra.LinearAlgebra.Graded.Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `603c0f66d72e198eecd5fbeee08d70ded1497d6a` · SHA-256 `0e12ef3415ae8675fed1108cea9042f3f5b90984be09846d5d4822844186314a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SetLikeGradedBracket.Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SetLikeGradedBracket.Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Lie/Graded.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Scott Carnahan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Carnahan
-/
module

public import Mathlib.Algebra.DirectSum.Decomposition
public import Mathlib.Algebra.Lie.Derivation.Basic

/-!
# Graded Lie algebras

This file defines typeclasses `SetLike.GradedBracket` and `GradedLieAlgebra`, for working with Lie
algebras that are graded by a collection `ℒ` of submodules.

## Main definitions

* `SetLike.GradedBracket`: A typeclass for a bracket to be compatible with a vector-additive
  grading.
* `GradedLieAlgebra`: A typeclass for a Lie algebra bracket to respect an additive grading.
* `GradedLieModule`: A typeclass for a Lie module to be compatible with a vector-additive grading.
* `LieDerivation.ofGradingSum`: A Lie derivation on the direct sum of graded pieces, that scalar-
  multiplies the pieces by an additive map applied to degree.
* `LieDerivation.ofGrading`: A Lie derivation on a graded Lie algebra, that scalar-multiplies graded
  pieces by an additive map applied to degree.

## Implementation notes

For now we only implement internally-graded Lie algebras; supporting the externally-graded case
would be achieved by generalizing the `LieRing (⨁ i, ℒ i)` instance to take a family of types,
and defining a new `GradedMonoid.GBracket` class to provide the data piecewise.

-/


namespace GRWTSK.Algebra.LinearAlgebra.SetLikeGradedBracket.Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5

@[expose] public section

open DirectSum

variable {ι κ σ τ R L M : Type*}

section SetLike

/-- A `graded bracket` class that ensures a bracket action preserves a vector-additive grading. -/
class SetLike.GradedBracket [SetLike σ L] [SetLike τ M] [Bracket L M] [VAdd ι κ] (ℒ : ι → σ)
    (ℳ : κ → τ) : Prop where
  /-- Bracket is homogeneous -/
  bracket_mem : ∀ ⦃i j⦄ {gi hj}, gi ∈ ℒ i → hj ∈ ℳ j → ⁅gi, hj⁆ ∈ ℳ (i +ᵥ j)

variable [DecidableEq ι] [AddCommMonoid ι] [CommRing R] [LieRing L] [LieAlgebra R L]
  (ℒ : ι → Submodule R L) [DecidableEq κ] [VAdd ι κ] [AddCommGroup M] [Module R M]
  [LieRingModule L M] [LieModule R L M] (ℳ : κ → Submodule R M)

/-- A class that ensures a Lie algebra has a bracket that preserves a decomposition. -/
class GradedLieAlgebra extends SetLike.GradedBracket ℒ ℒ, DirectSum.Decomposition ℒ

/-- A class that ensures a Lie algebra has a bracket that preserves a decomposition. -/
class GradedLieModule [GradedLieAlgebra ℒ] [DirectSum.Decomposition ℳ] extends
    SetLike.GradedBracket ℒ ℳ

end SetLike

namespace DirectSum

variable [DecidableEq ι] [AddCommMonoid ι] [CommRing R] [LieRing L] [LieAlgebra R L]
  (ℒ : ι → Submodule R L) [GradedLieAlgebra ℒ]

instance : LieRing (⨁ i, ℒ i) where
  bracket x y := decomposeLinearEquiv ℒ
    ⁅(decomposeLinearEquiv ℒ).symm x, (decomposeLinearEquiv ℒ).symm y⁆
  add_lie _ _ _ := by simp
  lie_add _ _ _ := by simp
  lie_self _ := by simp
  leibniz_lie _ _ _ := by simp

lemma bracket_apply_apply_self (x y : ⨁ i, ℒ i) :
    ⁅x, y⁆ =
      decomposeLinearEquiv ℒ ⁅(decomposeLinearEquiv ℒ).symm x, (decomposeLinearEquiv ℒ).symm y⁆ :=
  rfl

attribute [local simp] bracket_apply_apply_self

variable [DecidableEq κ] [AddCommGroup M] [Module R M] [LieRingModule L M]
  (ℳ : κ → Submodule R M) [DirectSum.Decomposition ℳ]

instance : LieRingModule (⨁ i, ℒ i) (⨁ k, ℳ k) where
  bracket x y := decomposeLinearEquiv ℳ
    ⁅(decomposeLinearEquiv ℒ).symm x, (decomposeLinearEquiv ℳ).symm y⁆
  add_lie _ _ _ := by simp
  lie_add _ _ _ := by simp
  leibniz_lie _ _ _ := by simp

lemma bracket_apply_apply (x : ⨁ i, ℒ i) (y : ⨁ k, ℳ k) :
    ⁅x, y⁆ =
      decomposeLinearEquiv ℳ ⁅(decomposeLinearEquiv ℒ).symm x, (decomposeLinearEquiv ℳ).symm y⁆ :=
  rfl

attribute [local simp] bracket_apply_apply

lemma decompose_bracket (x : L) (y : M) :
    decompose ℳ ⁅x, y⁆ = ⁅decompose ℒ x, decompose ℳ y⁆ := by
  simp only [← decomposeLinearEquiv_apply, bracket_apply_apply]
  simp

@[simp]
lemma decompose_symm_bracket (x : ⨁ i, ℒ i) (y : ⨁ k, ℳ k) :
    (decompose ℳ).symm ⁅x, y⁆ = ⁅(decompose ℒ).symm x, (decompose ℳ).symm y⁆ := by
  simp only [← decomposeLinearEquiv_symm_apply, bracket_apply_apply]
  simp

instance : LieAlgebra R (⨁ i, ℒ i) where
  add_smul _ _ _ := by simp [add_smul]
  zero_smul _ := by simp
  lie_smul _ _ _ := by simp

instance [LieModule R L M] : LieModule R (⨁ i, ℒ i) (⨁ k, ℳ k) where
  smul_lie _ _ _ := by simp
  lie_smul _ _ _ := by simp

/-- If `L` is graded by `ι` with degree `i` component `ℒ i`, then it is isomorphic as
a Lie algebra to a direct sum of components. -/
def decomposeLieEquiv : L ≃ₗ⁅R⁆ ⨁ i, ℒ i :=
  { decomposeLinearEquiv ℒ with
    map_lie' := by simp }

end DirectSum

namespace LieDerivation

variable [DecidableEq ι] [AddCommMonoid ι] [CommRing R] [LieRing L] [LieAlgebra R L]
  (ℒ : ι → Submodule R L) [GradedLieAlgebra ℒ]

/-- A derivation on the direct sum of graded pieces of a graded Lie algebra, induced by an additive
map on the grading monoid. -/
def ofGradingSum (φ : ι →+ R) : LieDerivation R (⨁ i, ℒ i) (⨁ i, ℒ i) :=
  { __ := DirectSum.toModule R ι (⨁ i, ℒ i)
      fun i ↦ (lof R ι (ℒ ·) i).comp (Module.End.smulLeft (φ i) (by simp))
    leibniz' x y := by
      have hM (k : ι) (b : ⨁ i, ℒ i) (hb : (decompose ℒ).symm b ∈ ℒ k) :
          (toModule R ι (⨁ (i : ι), ℒ i) fun i ↦ lof R ι (ℒ ·) i ∘ₗ (φ i • .id)) b = (φ k) • b := by
        obtain ⟨_, rfl⟩ : b ∈ LinearMap.range (lof R ι (ℒ ·) k) := by
          use ⟨(decompose ℒ).symm b, hb⟩
          simp [lof_eq_of, ← decompose_of_mem]
        simp
      ext j
      induction x using DirectSum.induction_on' with
      | h0 => simp
      | hadd i a f _ _ ih =>
        simp only [Module.End.smulLeft_eq, DirectSum.sub_apply, AddSubgroupClass.coe_sub] at ih
        simp only [Module.End.smulLeft_eq, add_lie, map_add, DirectSum.add_apply, Submodule.coe_add,
          ih, lie_add, DirectSum.sub_apply, AddSubgroupClass.coe_sub]
        rw [add_sub_add_comm, add_right_cancel_iff, hM i (of (ℒ ·) i a) (by simp)]
        clear ih
        induction y using DirectSum.induction_on' with
        | h0 => simp
        | hadd k b f _ _ ih =>
          simp only [lie_add, map_add, DirectSum.add_apply, Submodule.coe_add, ih, lie_smul,
            add_lie, smul_add, add_sub, ← sub_sub]
          congr 1
          have : (decompose ℒ).symm ⁅of (fun i ↦ ℒ i) i a, of (fun i ↦ ℒ i) k b⁆ ∈ ℒ (i + k) := by
            simp [← vadd_eq_add,
              SetLike.GradedBracket.bracket_mem (Submodule.coe_mem a) (Submodule.coe_mem b)]
          rw [hM _ _ this, hM k (of (ℒ ·) k b) (by simp), ← lie_skew (of (ℒ ·) k b),
            add_sub_right_comm, add_right_cancel_iff, add_comm i k, map_add, add_smul,
            DirectSum.add_apply, Submodule.coe_add, sub_eq_add_neg, lie_smul, add_left_cancel_iff,
            smul_neg, ← sub_eq_zero, sub_neg_eq_add, ← Submodule.coe_add, Submodule.coe_eq_zero,
            ← DirectSum.add_apply, add_neg_cancel, DirectSum.zero_apply] }

@[simp]
lemma ofGradingSum_of (φ : ι →+ R) (i : ι) (a : ℒ i) :
    ofGradingSum ℒ φ (of (ℒ ·) i a) = (φ i) • (of (ℒ ·) i a) := by
  simp [← lof_eq_of R, ofGradingSum]

/-- The Lie derivation on a graded Lie algebra that scalar-multiplies by an additive function of
the degree. -/
def ofGrading (φ : ι →+ R) :
    LieDerivation R L L where
  toFun x := (decomposeLinearEquiv ℒ).symm <| ofGradingSum ℒ φ <| decomposeLinearEquiv ℒ x
  map_add' _ _ := by simp
  map_smul' _ _ := by simp
  leibniz' x y := by
    simp [decomposeLinearEquiv_apply, decomposeLinearEquiv_symm_apply,
      Equiv.symm_apply_eq (decompose ℒ)]
    simp [decompose_bracket ℒ]

lemma ofGrading_apply_apply (φ : ι →+ R) {i : ι} {a : L} (ha : a ∈ ℒ i) :
    ofGrading ℒ φ a = φ i • a := by
  simp [ofGrading, decomposeLinearEquiv_apply, decompose_of_mem ℒ ha]
  simp [decomposeLinearEquiv_symm_apply]

end LieDerivation
```
