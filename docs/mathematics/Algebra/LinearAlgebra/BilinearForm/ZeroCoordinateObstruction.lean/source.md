# Complete source: GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b15f90ffa0f87f05d8c34fc037739611eac2bdc3` · SHA-256 `da7cb8b8964f66f45697f386a51652a6332d94afb91c414356b89d77e1e6f209`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Data.Real.Basic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# A zero coordinate obstructs domination of a positive diagonal


The quadratic form retains the entire given finite set and every ordered pair.
A coordinate vector evaluates that form at its diagonal entry. A zero diagonal
therefore obstructs domination of a strictly positive diagonal, even after any
finite real constant multiplication. This concerns domination for every vector;
it makes no assertion about a single distinguished coefficient vector.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.LinearAlgebra.ZeroCoordinateObstruction

noncomputable section

/-- A coordinate vector on the original index type. -/
def coordinateWeight {ι : Type*} [DecidableEq ι] (n : ι) (i : ι) : ℝ :=
  if i = n then 1 else 0

/-- The full ordered finite quadratic form of a real kernel. -/
def orderedQuadratic {ι : Type*} (K : ι → ι → ℝ) (s : Finset ι) (w : ι → ℝ) : ℝ :=
  ∑ m ∈ s, ∑ n ∈ s, w m * w n * K m n

/-- Evaluation uses the complete finite inventory; no mixed term is discarded. -/
theorem coordinate_quadratic_eq {ι : Type*} [DecidableEq ι]
    (K : ι → ι → ℝ) {s : Finset ι} {n : ι} (hn : n ∈ s) :
    orderedQuadratic K s (coordinateWeight n) = K n n := by
  unfold orderedQuadratic
  rw [Finset.sum_eq_single n]
  · rw [Finset.sum_eq_single n]
    · simp [coordinateWeight]
    · intro k _ hkn
      simp [coordinateWeight, hkn]
    · exact fun hnot ↦ (hnot hn).elim
  · intro m _ hmn
    simp [coordinateWeight, hmn]
  · exact fun hnot ↦ (hnot hn).elim

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- No finite real price can dominate a positive coordinate by a zero one.
The result does not require positivity of the price or semidefiniteness. -/
theorem no_uniform_domination {ι : Type*} [DecidableEq ι]
    (K G : ι → ι → ℝ) {s : Finset ι} {n : ι} (hn : n ∈ s)
    (hzero : K n n = 0) (hpositive : 0 < G n n) (C : ℝ) :
    ¬ ∀ w : ι → ℝ, orderedQuadratic G s w ≤ C * orderedQuadratic K s w := by
  intro price
  have atCoordinate := price (coordinateWeight n)
  rw [coordinate_quadratic_eq G hn, coordinate_quadratic_eq K hn,
    hzero, mul_zero] at atCoordinate
  exact (not_le_of_gt hpositive) atCoordinate

/-- Scalar diagonal congruence does not recover a lost diagonal coordinate. -/
def diagonalScale {ι : Type*} (d : ι → ℝ) (K : ι → ι → ℝ) (m n : ι) : ℝ :=
  d m * d n * K m n

theorem diagonal_scale_ne_positive {ι : Type*} (d : ι → ℝ) (K G : ι → ι → ℝ)
    (n : ι) (hzero : K n n = 0) (hpositive : 0 < G n n) :
    diagonalScale d K n n ≠ G n n := by
  rw [diagonalScale, hzero, mul_zero]
  exact ne_of_lt hpositive

/-- A zero-preserving map cannot send a zero input to a nonzero target. -/
theorem zero_preserving_map_ne_target {E F : Type*} [Zero E] [Zero F]
    (map : E → F) (atZero : map 0 = 0) {input : E} {target : F}
    (inputZero : input = 0) (targetNonzero : target ≠ 0) :
    map input ≠ target := by
  rw [inputZero, atZero]
  exact targetNonzero.symm

end

end GRWTSK.LinearAlgebra.ZeroCoordinateObstruction
```
