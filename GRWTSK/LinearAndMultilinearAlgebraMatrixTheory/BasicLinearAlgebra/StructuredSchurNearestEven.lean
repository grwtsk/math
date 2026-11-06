/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurIntegerReplay

/-!
# Exact nearest-even rounded structured Schur rows

A positive denominator gives the quotient and remainder of the absolute
numerator. Comparing the remainder with its complement chooses a nearest
integer. Parity resolves a tie before restoring the sign. Applying the same
rule to the pivot column, the diagonal correction and each generator
correction gives the doubled integer error bound for a surviving row.

An ordered list of supplied pivot anchors determines a row trajectory.
A concrete chain still requires equality of each supplied anchor with its
recomputed row, magnitude and price checks, and the literal seed comparison.
Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurNearestEven

open StructuredSchurIntegerReplay

private def roundMagnitude (numerator denominator : ℤ) : ℤ :=
  let q := numerator / denominator
  let r := numerator - q * denominator
  if denominator - r < r ∨ (r = denominator - r ∧ q % 2 = 1) then q + 1 else q

/-- Round a signed quotient to a nearest integer with even quotient at a tie. -/
def nearestEven (numerator denominator : ℤ) : ℤ :=
  if numerator < 0 then -roundMagnitude (-numerator) denominator
  else roundMagnitude numerator denominator

private theorem roundMagnitude_spec (x d : ℤ) (hd : 0 < d) :
    2 * |x - d * roundMagnitude x d| ≤ d ∧
      (2 * |x - d * roundMagnitude x d| = d → roundMagnitude x d % 2 = 0) := by
  let q := x / d
  let r := x - q * d
  have hr : r = x % d := by
    have h := Int.mul_ediv_add_emod x d
    dsimp [r, q]
    rw [mul_comm (x / d) d]
    omega
  have hr0 : 0 ≤ r := hr ▸ Int.emod_nonneg x hd.ne'
  have hrd : r < d := hr ▸ Int.emod_lt_of_pos x hd
  change 2 * |x - d * (if d - r < r ∨ (r = d - r ∧ q % 2 = 1) then q + 1 else q)| ≤ d ∧
      (2 * |x - d * (if d - r < r ∨ (r = d - r ∧ q % 2 = 1) then q + 1 else q)| = d →
        (if d - r < r ∨ (r = d - r ∧ q % 2 = 1) then q + 1 else q) % 2 = 0)
  by_cases h : d - r < r ∨ (r = d - r ∧ q % 2 = 1)
  · have hsub : x - d * (q + 1) = r - d := by dsimp [r]; ring
    rw [ite_eq_left h, hsub, abs_of_nonpos (by omega : r - d ≤ 0)]
    constructor
    · rcases h with h | ⟨h, _⟩ <;> omega
    · intro ht
      rcases h with h | ⟨_, hodd⟩ <;> omega
  · have hsub : x - d * q = r := by dsimp [r]; ring
    rw [ite_eq_right h, hsub, abs_of_nonneg hr0]
    constructor
    · omega
    · intro ht
      omega

/-- The exact doubled residual is at most the positive denominator, with an even
quotient at equality. -/
theorem nearestEven_spec (x d : ℤ) (hd : 0 < d) :
    2 * |x - d * nearestEven x d| ≤ d ∧
      (2 * |x - d * nearestEven x d| = d → nearestEven x d % 2 = 0) := by
  by_cases hx : x < 0
  · have h := roundMagnitude_spec (-x) d hd
    rw [nearestEven, ite_eq_left hx,
      show x - d * -roundMagnitude (-x) d = -(-x - d * roundMagnitude (-x) d) by ring,
      abs_neg]
    exact ⟨h.1, fun ht => by have he := h.2 ht; omega⟩
  · simpa only [nearestEven, ite_eq_right hx] using roundMagnitude_spec x d hd

/-- A surviving integer diagonal and its generator coordinates. -/
structure GridRow (r : ℕ) where
  diag : ℤ
  v : Fin r → ℤ
  u : Fin r → ℤ

variable {r : ℕ}

/-- Exact column and updated row for the indicated node difference. -/
def rowTransition (delta : ℤ) (pivot row : GridRow r) : ℤ × GridRow r :=
  let c := nearestEven (rawNumerator row.v row.u pivot.v pivot.u)
    (delta * displacementFactor)
  (c, ⟨row.diag - nearestEven (c^2) (pivot.diag * columnFactor^2),
      fun l => row.v l - nearestEven (c * pivot.v l) (pivot.diag * columnFactor),
      fun l => row.u l - nearestEven (c * pivot.u l) (pivot.diag * columnFactor)⟩)

private theorem residual_subtractRounded (old x d : ℤ) (hd : 0 < d) :
    2 * |x + d * (old - nearestEven x d - old)| ≤ d := by
  rw [show x + d * (old - nearestEven x d - old) = x - d * nearestEven x d by ring]
  exact (nearestEven_spec x d hd).1

/-- Each doubled integer residual in a surviving row is at most the corresponding
positive denominator. -/
theorem rowTransition_residual (delta : ℤ) (pivot row : GridRow r)
    (hDelta : 0 < delta) (hPivot : 0 < pivot.diag) :
    let c := (rowTransition delta pivot row).1
    let next := (rowTransition delta pivot row).2
    2 * |rawNumerator row.v row.u pivot.v pivot.u - delta * displacementFactor * c|
      ≤ delta * displacementFactor ∧
    2 * |c^2 + pivot.diag * columnFactor^2 * (next.diag - row.diag)|
      ≤ pivot.diag * columnFactor^2 ∧
    ∀ l,
      2 * |c * pivot.v l + pivot.diag * columnFactor * (next.v l - row.v l)|
        ≤ pivot.diag * columnFactor ∧
      2 * |c * pivot.u l + pivot.diag * columnFactor * (next.u l - row.u l)|
        ≤ pivot.diag * columnFactor := by
  let numerator := rawNumerator row.v row.u pivot.v pivot.u
  let c := nearestEven numerator (delta * displacementFactor)
  have hDisp : 0 < displacementFactor := by norm_num [displacementFactor]
  have hCol : 0 < columnFactor := by norm_num [columnFactor]
  change 2 * |numerator - delta * displacementFactor * c| ≤ delta * displacementFactor ∧ _
  refine ⟨(nearestEven_spec numerator _ (mul_pos hDelta hDisp)).1, ?_, ?_⟩
  · exact residual_subtractRounded _ _ _ (mul_pos hPivot (pow_pos hCol 2))
  · intro l
    exact ⟨residual_subtractRounded _ _ _ (mul_pos hPivot hCol),
      residual_subtractRounded _ _ _ (mul_pos hPivot hCol)⟩

/-- Reconstruct a row by applying the supplied, ordered pivot anchors. -/
def replayRow (node : ℤ) (seed : GridRow r) (anchors : List (ℤ × GridRow r)) : GridRow r :=
  anchors.foldl (fun row pivot => (rowTransition (node - pivot.1) pivot.2 row).2) seed

/-- An exact intermediate row can serve as the seed for the next replay block. -/
theorem replayRow_append (node : ℤ) (seed : GridRow r)
    (first second : List (ℤ × GridRow r)) :
    replayRow node seed (first ++ second) =
      replayRow node (replayRow node seed first) second := by
  simp only [replayRow, List.foldl_append]

theorem replayRow_append_anchor (node : ℤ) (seed : GridRow r)
    (anchors : List (ℤ × GridRow r)) (pivot : ℤ × GridRow r) :
    replayRow node seed (anchors ++ [pivot]) =
      (rowTransition (node - pivot.1) pivot.2 (replayRow node seed anchors)).2 := by
  rw [replayRow_append]
  rfl

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurNearestEven
