/-
Copyright (c) 2026 grwtsk contributors. MIT.
Original elliptic-curve record and points: Noam D. Elkies, Zev Klagsbrun,
Samuel Li, ICARM Elliptic Curve Rank Leaderboard #4239, submitted 2026-10-15.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
These declarations have not been elaborated or kernel checked in the current
environment.  They expose exact hypotheses and are intentionally not imported
by `GRWTSK.lean` pending the verification issues associated with this change.
No Mordell-Weil rank theorem is asserted.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239Curve
import GRWTSK.NumberTheory.Farey.ResolvableQuintic

/-!
# Record 4239: completed-square cubic, quintic envelope, and Farey resolution

For the published model

`y^2 + x*y = x^3 - A*x + B`,

completing the square gives

`(2*y+x)^2 = 4*x^3 + x^2 - 4*A*x + 4*B`.

We multiply this cubic by the everywhere-positive quadratic `x^2+1`. The
resulting quadratic-times-cubic envelope has the same rational zero set and the
same oriented Farey sign certificates as the cubic. On each of the 32
published points, its value is an explicit positive-quadratic multiple of a
square.

These are exact polynomial and point-evaluation statements. They do not
construct the local characters required by the conditional rank-32 criterion
and do not assert Mordell-Weil rank 32.
-/

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0

noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.FareyQuintic

open Polynomial
open GRWTSK.NumberTheory.Farey

/-- Degree-at-most-two remainder in the completed-square cubic. -/
def completedSquareLower : Polynomial ℚ :=
  X ^ 2 - C (4 * (A : ℚ)) * X + C (4 * (B : ℚ))

/-- Cubic obtained by completing the square in the Record 4239 equation. -/
def completedSquareCubic : Polynomial ℚ :=
  C 4 * X ^ 3 + completedSquareLower

/-- Everywhere-positive quadratic envelope. -/
def positiveQuadratic : Polynomial ℚ := X ^ 2 + C 1

/-- The quadratic-times-cubic quintic envelope. -/
def rank32Quintic : Polynomial ℚ :=
  positiveQuadratic * completedSquareCubic

@[simp] theorem eval_completedSquareCubic (x : ℚ) :
    completedSquareCubic.eval x =
      4 * x ^ 3 + x ^ 2 - 4 * (A : ℚ) * x + 4 * (B : ℚ) := by
  simp [completedSquareCubic, completedSquareLower]
  ring

@[simp] theorem eval_positiveQuadratic (x : ℚ) :
    positiveQuadratic.eval x = x ^ 2 + 1 := by
  simp [positiveQuadratic]

/-- The quadratic factor is positive at every rational input. -/
theorem positiveQuadratic_eval_pos (x : ℚ) :
    0 < positiveQuadratic.eval x := by
  rw [eval_positiveQuadratic]
  nlinarith [sq_nonneg x]

@[simp] theorem eval_rank32Quintic (x : ℚ) :
    rank32Quintic.eval x =
      (x ^ 2 + 1) * completedSquareCubic.eval x := by
  simp [rank32Quintic, positiveQuadratic]

/-- Exact completed-square identity at every published point. -/
theorem completedSquareCubic_at_published_point (i : Fin 32) :
    completedSquareCubic.eval (pointX i) =
      (2 * pointY i + pointX i) ^ 2 := by
  have h : pointY i ^ 2 + pointX i * pointY i =
      pointX i ^ 3 - (A : ℚ) * pointX i + (B : ℚ) := by
    simpa [OnRecordModel] using points_on_record_model i
  rw [eval_completedSquareCubic]
  nlinarith

/-- Exact quintic value at every published point. -/
theorem rank32Quintic_at_published_point (i : Fin 32) :
    rank32Quintic.eval (pointX i) =
      (pointX i ^ 2 + 1) * (2 * pointY i + pointX i) ^ 2 := by
  rw [eval_rank32Quintic, completedSquareCubic_at_published_point]

/-- Every published point gives a nonnegative quintic sample. -/
theorem rank32Quintic_at_published_point_nonneg (i : Fin 32) :
    0 ≤ rank32Quintic.eval (pointX i) := by
  rw [rank32Quintic_at_published_point]
  exact mul_nonneg (by nlinarith [sq_nonneg (pointX i)]) (sq_nonneg _)

/-- The quintic envelope and completed-square cubic have the same rational roots. -/
theorem eval_rank32Quintic_eq_zero_iff (x : ℚ) :
    rank32Quintic.eval x = 0 ↔ completedSquareCubic.eval x = 0 := by
  simpa [rank32Quintic] using
    eval_mul_eq_zero_iff_of_pos positiveQuadratic completedSquareCubic x
      (positiveQuadratic_eval_pos x)

/-- The quintic envelope and cubic have the same nonpositive sign test. -/
theorem eval_rank32Quintic_nonpos_iff (x : ℚ) :
    rank32Quintic.eval x ≤ 0 ↔ completedSquareCubic.eval x ≤ 0 := by
  simpa [rank32Quintic] using
    eval_mul_nonpos_iff_of_pos positiveQuadratic completedSquareCubic x
      (positiveQuadratic_eval_pos x)

/-- The quintic envelope and cubic have the same nonnegative sign test. -/
theorem eval_rank32Quintic_nonneg_iff (x : ℚ) :
    0 ≤ rank32Quintic.eval x ↔ 0 ≤ completedSquareCubic.eval x := by
  simpa [rank32Quintic] using
    eval_mul_nonneg_iff_of_pos positiveQuadratic completedSquareCubic x
      (positiveQuadratic_eval_pos x)

/-- A Farey cell resolves the quintic exactly when it resolves the cubic. -/
theorem resolvableEye_rank32Quintic_iff (I : Cell) :
    ResolvableEye rank32Quintic I ↔
      ResolvableEye completedSquareCubic I := by
  simpa [rank32Quintic, ResolvableEye] using
    polynomialResolves_mul_iff_of_pos positiveQuadratic completedSquareCubic I
      positiveQuadratic_eval_pos

/-- One exact Farey refinement step for the Record 4239 quintic envelope. -/
theorem resolvableEye_rank32Quintic_refine (I : Cell)
    (h : ResolvableEye rank32Quintic I) :
    rank32Quintic.eval I.mediant = 0 ∨
      ResolvableEye rank32Quintic I.leftChild ∨
        ResolvableEye rank32Quintic I.rightChild :=
  resolvableEye_refine rank32Quintic I h

/-- The lower completed-square terms have natural degree at most two. -/
theorem completedSquareLower_natDegree_le :
    completedSquareLower.natDegree ≤ 2 := by
  unfold completedSquareLower
  apply (natDegree_add_le _ _).trans
  apply max_le
  · apply (natDegree_sub_le _ _).trans
    apply max_le
    · simp
    · exact (natDegree_C_mul_le _ _).trans (by simp)
  · change (C (4 * (B : ℚ))).natDegree ≤ 2
    rw [natDegree_C]
    omega

/-- The positive quadratic has exact natural degree two. -/
theorem positiveQuadratic_natDegree : positiveQuadratic.natDegree = 2 := by
  have hlt : (C (1 : ℚ)).natDegree < (X ^ 2 : Polynomial ℚ).natDegree := by
    simp
  calc
    positiveQuadratic.natDegree = (X ^ 2 : Polynomial ℚ).natDegree := by
      simpa [positiveQuadratic] using natDegree_add_eq_left_of_natDegree_lt hlt
    _ = 2 := by simp

/-- The completed-square polynomial has exact natural degree three. -/
theorem completedSquareCubic_natDegree : completedSquareCubic.natDegree = 3 := by
  have hlead : (C (4 : ℚ) * X ^ 3).natDegree = 3 := by
    simp
  have hlt : completedSquareLower.natDegree <
      (C (4 : ℚ) * X ^ 3).natDegree := by
    rw [hlead]
    have := completedSquareLower_natDegree_le
    omega
  calc
    completedSquareCubic.natDegree =
        (C (4 : ℚ) * X ^ 3).natDegree := by
      simpa [completedSquareCubic] using natDegree_add_eq_left_of_natDegree_lt hlt
    _ = 3 := hlead

/-- The positive quadratic is nonzero. -/
theorem positiveQuadratic_ne_zero : positiveQuadratic ≠ 0 := by
  intro h
  have hdeg := positiveQuadratic_natDegree
  rw [h] at hdeg
  norm_num at hdeg

/-- The completed-square cubic is nonzero. -/
theorem completedSquareCubic_ne_zero : completedSquareCubic ≠ 0 := by
  intro h
  have hdeg := completedSquareCubic_natDegree
  rw [h] at hdeg
  norm_num at hdeg

/-- The Record 4239 quadratic-times-cubic envelope has exact degree five. -/
theorem rank32Quintic_natDegree : rank32Quintic.natDegree = 5 := by
  simpa [rank32Quintic] using
    quadratic_mul_cubic_natDegree positiveQuadratic completedSquareCubic
      positiveQuadratic_ne_zero completedSquareCubic_ne_zero
      positiveQuadratic_natDegree completedSquareCubic_natDegree

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.FareyQuintic
