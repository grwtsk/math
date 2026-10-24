# Complete source: GRWTSK.Algebra.LinearAlgebra.Real.Varianta551a3d1017ee8122c2f2739ae8844844a1c99859226f7d95b1577af350fe3dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d40cdcc767395b975f860a488bf5f01f267202aa` · SHA-256 `ac316592c8c9a4b57a2cae0fa90d67d92295dab9f294d0802bfb0a2f12cd851a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsometryEquivSignWeightedSumSquares.Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsometryEquivSignWeightedSumSquares.Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/QuadraticForm/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Kexing Ying, Eric Wieser
-/
module

public import Mathlib.Algebra.CharP.Invertible
public import Mathlib.Algebra.Order.BigOperators.Expect
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Basic.Sign.Basic
public import Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv

/-!
# Real quadratic forms

Sylvester's law of inertia `equivalent_one_neg_one_weighted_sum_squared`:
A real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1 or 0.

When the real quadratic form is nondegenerate we can take the weights to be ±1,
as in `QuadraticForm.equivalent_one_zero_neg_one_weighted_sum_squared`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsometryEquivSignWeightedSumSquares.Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2

@[expose] public section

open Finset Module QuadraticMap SignType

namespace QuadraticForm
variable {ι : Type*} [Fintype ι]

/-- The isometry between a weighted sum of squares with weights `u` on the
(non-zero) real numbers and the weighted sum of squares with weights `sign ∘ u`. -/
noncomputable def isometryEquivSignWeightedSumSquares (w : ι → ℝ) :
    IsometryEquiv (weightedSumSquares ℝ w)
      (weightedSumSquares ℝ (fun i ↦ (sign (w i) : ℝ))) := by
  let u i := if h : w i = 0 then (1 : ℝˣ) else Units.mk0 (w i) h
  have hu : ∀ i : ι, 1 / √|(u i : ℝ)| ≠ 0 := fun i ↦
    have : (u i : ℝ) ≠ 0 := (u i).ne_zero
    by positivity
  have hwu : ∀ i, w i / |(u i : ℝ)| = sign (w i) := fun i ↦ by
    by_cases hi : w i = 0
    · simp [hi]
    · simp only [hi, ↓reduceDIte, Units.val_mk0, u]; field_simp; simp
  convert!
    QuadraticMap.isometryEquivBasisRepr (weightedSumSquares ℝ w)
      ((Pi.basisFun ℝ ι).unitsSMul fun i => .mk0 _ (hu i))
  ext1 v
  classical
  suffices ∑ i, (w i / |(u i : ℝ)|) * v i ^ 2 = ∑ i, w i * (v i ^ 2 * |(u i : ℝ)|⁻¹) by
    simpa [basisRepr_apply, Basis.unitsSMul_apply, ← _root_.sq, mul_pow, ← hwu, Pi.single_apply]
  exact sum_congr rfl fun j _ ↦ by ring

/-- **Sylvester's law of inertia**: A nondegenerate real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1, `SignType` version. -/
theorem equivalent_sign_ne_zero_weighted_sum_squared {M : Type*} [AddCommGroup M] [Module ℝ M]
    [FiniteDimensional ℝ M] (Q : QuadraticForm ℝ M) (hQ : (associated (R := ℝ) Q).SeparatingLeft) :
    ∃ w : Fin (Module.finrank ℝ M) → SignType,
      (∀ i, w i ≠ 0) ∧ Equivalent Q (weightedSumSquares ℝ fun i ↦ (w i : ℝ)) :=
  let ⟨w, ⟨hw₁⟩⟩ := Q.equivalent_weightedSumSquares_units_of_nondegenerate' hQ
  ⟨sign ∘ ((↑) : ℝˣ → ℝ) ∘ w, fun i => sign_ne_zero.2 (w i).ne_zero,
    ⟨hw₁.trans (isometryEquivSignWeightedSumSquares (((↑) : ℝˣ → ℝ) ∘ w))⟩⟩

/-- **Sylvester's law of inertia**: A nondegenerate real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1. -/
theorem equivalent_one_neg_one_weighted_sum_squared {M : Type*} [AddCommGroup M] [Module ℝ M]
    [FiniteDimensional ℝ M] (Q : QuadraticForm ℝ M) (hQ : (associated (R := ℝ) Q).SeparatingLeft) :
    ∃ w : Fin (Module.finrank ℝ M) → ℝ,
      (∀ i, w i = -1 ∨ w i = 1) ∧ Equivalent Q (weightedSumSquares ℝ w) :=
  let ⟨w, hw₀, hw⟩ := Q.equivalent_sign_ne_zero_weighted_sum_squared hQ
  ⟨(w ·), fun i ↦ by cases hi : w i <;> simp_all, hw⟩

/-- **Sylvester's law of inertia**: A real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1 or 0, `SignType` version. -/
theorem equivalent_signType_weighted_sum_squared {M : Type*} [AddCommGroup M] [Module ℝ M]
    [FiniteDimensional ℝ M] (Q : QuadraticForm ℝ M) :
    ∃ w : Fin (Module.finrank ℝ M) → SignType,
      Equivalent Q (weightedSumSquares ℝ fun i ↦ (w i : ℝ)) :=
  let ⟨w, ⟨hw₁⟩⟩ := Q.equivalent_weightedSumSquares
  ⟨sign ∘ w, ⟨hw₁.trans (isometryEquivSignWeightedSumSquares w)⟩⟩

/-- **Sylvester's law of inertia**: A real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1 or 0. -/
theorem equivalent_one_zero_neg_one_weighted_sum_squared {M : Type*} [AddCommGroup M] [Module ℝ M]
    [FiniteDimensional ℝ M] (Q : QuadraticForm ℝ M) :
    ∃ w : Fin (Module.finrank ℝ M) → ℝ,
      (∀ i, w i = -1 ∨ w i = 0 ∨ w i = 1) ∧ Equivalent Q (weightedSumSquares ℝ w) :=
  let ⟨w, hw⟩ := Q.equivalent_signType_weighted_sum_squared
  ⟨(w ·), fun i ↦ by cases h : w i <;> simp [h], hw⟩

end QuadraticForm
```
