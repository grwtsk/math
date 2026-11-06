/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignRealQuadratic
import Mathlib.Algebra.Order.Star.Real

/-!
# Integer checks for a shared-grid dyadic LDL packet

A factor and pivot on grid `2^b` give a weighted Gram on grid `2^(3b)`.
The integer equality tests each target numerator directly. Nonnegative
integer pivots give a positive semidefinite real Gram after division by
the positive target denominator. Zero pivots are allowed. Every target
entry is tested, including the orientation opposite the diagonal.

A separate rational comparison prices the difference between an assembled
lower matrix and this dyadic minorant after a diagonal margin. Symmetry
and the absolute row sums match the hypotheses of the odd-window return.
These checks apply to typed data. Decoding, provenance, equality to a
particular assembly, and the analytic observations are separate premises.
Independent mathematical review is pending.
-/

set_option autoImplicit false

open Matrix

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

open QuadraticCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Numerator in the common grid of the whole weighted Gram. -/
def gramNumerator (factor : Matrix ι ι ℤ) (pivots : ι → ℤ) (i j : ι) : ℤ :=
  ∑ k, factor i k * pivots k * factor j k

/-- One row of the exact numerator identity and its indexed pivot check. -/
def checkRow (target factor : Matrix ι ι ℤ) (pivots : ι → ℤ) (i : ι) : Bool :=
  decide (0 ≤ pivots i ∧ ∀ j, target i j = gramNumerator factor pivots i j)

/-- Check every row. The row interface also supports separate kernel replays. -/
def check (target factor : Matrix ι ι ℤ) (pivots : ι → ℤ) : Bool :=
  decide (∀ i, checkRow target factor pivots i = true)

/-- Rational value of the integer numerator on grid `2^bits`. -/
def dyadic (bits : ℕ) (num : ℤ) : ℚ := (num : ℚ) / (2 : ℚ)^bits

/-- Rational target interpretation for the packet's factor-grid exponent. -/
def targetValue (bits : ℕ) (target : Matrix ι ι ℤ) : Matrix ι ι ℚ :=
  target.map (dyadic (3 * bits))

theorem gramNumerator_eq_matrix_mul (factor : Matrix ι ι ℤ) (pivots : ι → ℤ) :
    gramNumerator factor pivots = factor * diagonal pivots * factor.transpose := by
  ext i j
  rw [Matrix.mul_apply]
  simp only [gramNumerator, Matrix.mul_diagonal, Matrix.transpose_apply]

theorem checkRows_data {target factor : Matrix ι ι ℤ} {pivots : ι → ℤ}
    (h : ∀ i, checkRow target factor pivots i = true) :
    (∀ i, 0 ≤ pivots i) ∧ target = factor * diagonal pivots * factor.transpose := by
  have hrow (i : ι) : 0 ≤ pivots i ∧ ∀ j, target i j = gramNumerator factor pivots i j :=
    of_decide_eq_true (h i)
  refine ⟨fun i => (hrow i).1, ?_⟩
  rw [← gramNumerator_eq_matrix_mul]
  ext i j
  exact (hrow i).2 j

/-- A separately replayed check for every row proves positivity of the
same dyadic minorant over the reals. -/
theorem checkRows_posSemidef (bits : ℕ) {target factor : Matrix ι ι ℤ} {pivots : ι → ℤ}
    (h : ∀ i, checkRow target factor pivots i = true) :
    ((targetValue bits target).map (Rat.castHom ℝ)).PosSemidef := by
  obtain ⟨hp, htarget⟩ := checkRows_data h
  have hD : (diagonal (fun i => (pivots i : ℝ))).PosSemidef :=
    PosSemidef.diagonal (fun i => show 0 ≤ (pivots i : ℝ) by exact_mod_cast hp i)
  let A : Matrix ι ι ℝ := factor.map (Int.castRingHom ℝ)
  have hG : (A * diagonal (fun i => (pivots i : ℝ)) * A.transpose).PosSemidef := by
    simpa only [conjTranspose_eq_transpose_of_trivial] using hD.mul_mul_conjTranspose_same A
  have heq : (targetValue bits target).map (Rat.castHom ℝ) =
      ((2 : ℝ) ^ (3 * bits))⁻¹ • (A * diagonal (fun i => (pivots i : ℝ)) * A.transpose) := by
    have hcast : target.map (Int.castRingHom ℝ) =
        A * diagonal (fun i => (pivots i : ℝ)) * A.transpose := by
      rw [htarget, Matrix.map_mul, Matrix.map_mul, diagonal_map (map_zero (Int.castRingHom ℝ))]
      rfl
    rw [← hcast]
    ext i j
    simp [targetValue, dyadic, div_eq_mul_inv, mul_comm]
  rw [heq]
  exact hG.smul (by positivity)

theorem check_posSemidef (bits : ℕ) {target factor : Matrix ι ι ℤ} {pivots : ι → ℤ}
    (h : check target factor pivots = true) :
    ((targetValue bits target).map (Rat.castHom ℝ)).PosSemidef :=
  checkRows_posSemidef bits (of_decide_eq_true h)

/-- The sign returned to the real finite lower-form consumer. -/
theorem check_quadratic_nonneg (bits : ℕ) {target factor : Matrix ι ι ℤ} {pivots : ι → ℤ}
    (h : check target factor pivots = true) (v : ι → ℝ) :
    0 ≤ quadratic ((targetValue bits target).map (Rat.castHom ℝ)) v := by
  simpa only [quadratic, star_trivial] using (check_posSemidef bits h).dotProduct_mulVec_nonneg v

/-- Rational entry radii for the difference after paying a diagonal margin. -/
def minorantRadius (lower minorant : Matrix ι ι ℚ) (margin : ℚ) : Matrix ι ι ℚ :=
  fun i j => |(lower - margin • 1) i j - minorant i j|

/-- Compare the paid minorant radii row by row in exact rational arithmetic. -/
def checkMinorantRow (lower minorant : Matrix ι ι ℚ) (margin : ℚ) (i : ι) : Bool :=
  decide ((∀ j, minorantRadius lower minorant margin i j = minorantRadius lower minorant margin j i) ∧
    (∑ j, minorantRadius lower minorant margin i j) ≤ margin)

def checkMinorant (lower minorant : Matrix ι ι ℚ) (margin : ℚ) : Bool :=
  decide (∀ i, checkMinorantRow lower minorant margin i = true)

/-- Return the exact real comparison data consumed by the quadratic
minorant argument. -/
theorem checkMinorantRow_sound {lower minorant : Matrix ι ι ℚ} {margin : ℚ} {i : ι}
    (h : checkMinorantRow lower minorant margin i = true) :
    (∀ j, |((lower.map (Rat.castHom ℝ)) - (margin : ℝ) • 1) i j -
        minorant.map (Rat.castHom ℝ) i j| = (minorantRadius lower minorant margin i j : ℝ)) ∧
    (∀ j, minorantRadius lower minorant margin i j = minorantRadius lower minorant margin j i) ∧
    (∑ j, (minorantRadius lower minorant margin i j : ℝ)) ≤ (margin : ℝ) := by
  obtain ⟨hsym, hsum⟩ : (∀ j, minorantRadius lower minorant margin i j =
      minorantRadius lower minorant margin j i) ∧
      (∑ j, minorantRadius lower minorant margin i j) ≤ margin := of_decide_eq_true h
  refine ⟨fun j => ?_, hsym, ?_⟩
  · by_cases hij : i = j <;> simp [minorantRadius, hij]
  · exact_mod_cast hsum

/-- Return all three real premises for a checked paid comparison. -/
theorem checkMinorant_sound {lower minorant : Matrix ι ι ℚ} {margin : ℚ}
    (h : checkMinorant lower minorant margin = true) :
    let R := (minorantRadius lower minorant margin).map (Rat.castHom ℝ)
    (∀ i j, |((lower.map (Rat.castHom ℝ)) - (margin : ℝ) • 1) i j -
        minorant.map (Rat.castHom ℝ) i j| ≤ R i j) ∧
    (∀ i j, R i j = R j i) ∧ (∀ i, ∑ j, R i j ≤ (margin : ℝ)) := by
  have hrows : ∀ i, checkMinorantRow lower minorant margin i = true := of_decide_eq_true h
  exact ⟨fun i j => ((checkMinorantRow_sound (hrows i)).1 j).le,
    fun i j => congrArg (fun x : ℚ => (x : ℝ)) ((checkMinorantRow_sound (hrows i)).2.1 j),
    fun i => (checkMinorantRow_sound (hrows i)).2.2⟩

section Replay

private def exampleFactor : Matrix (Fin 2) (Fin 2) ℤ := !![4, 0; -2, 4]
private def exampleTarget : Matrix (Fin 2) (Fin 2) ℤ := !![48, -24; -24, 28]
private def examplePivots : Fin 2 → ℤ := ![3, 1]
private def exampleLower : Matrix (Fin 2) (Fin 2) ℚ := !![7/8, -3/8; -3/8, 9/16]

example : check exampleTarget exampleFactor examplePivots = true := by decide +kernel

example : checkMinorant exampleLower (targetValue 2 exampleTarget) (1/8) = true := by decide +kernel

-- Altering only the upper orientation is visible to the integer checker.
example : check !![48, -23; -24, 28] exampleFactor examplePivots = false := by decide +kernel

-- This target has the exact factor identity, but its second pivot is negative.
example : check !![48, -24; -24, -4] exampleFactor ![3, -1] = false := by decide +kernel

example : checkMinorant exampleLower (targetValue 2 exampleTarget) (1/16) = true := by decide +kernel

example : checkMinorant exampleLower (targetValue 2 exampleTarget) (1/32) = false := by decide +kernel

end Replay

end GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
