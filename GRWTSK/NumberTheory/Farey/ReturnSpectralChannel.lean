/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Imported Mathlib and repository declarations retain their own provenance.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import this module into the public GRWTSK root before fresh
pinned-toolchain elaboration, kernel replay, and transitive axiom audit.
-/
import GRWTSK.NumberTheory.Farey.GroupSpectralChannel
import Mathlib.Tactic

/-!
# A real spectral channel for the two-step Farey return

The previously constructed positive Farey superwalk has elementary integer
shears L=[[1,0],[1,1]] and R=[[1,1],[0,1]]. The concrete chronological
word [left,right] has return matrix H=LR=[[1,1],[1,2]].

H has distinct real eigenvalues (3 +/- sqrt(5))/2. An explicit symmetric
rank-one idempotent P is constructed for the expanding eigenvalue. It
commutes with the RETURN H, not with both original generators. Repeated
returns act on P by the exact scalar lambda^n.

This answers one finite representation-theoretic supplier for the
superwalk/spectral-channel program. It is not an angular channel, a
geometric spiral theorem, a Sturmian spectral estimate, a Farey-root
completeness theorem, or an analytic/zeta/RH result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.ReturnSpectralChannel

open Matrix
open GRWTSK.NumberTheory.Farey.GroupSuperwalk
open GRWTSK.NumberTheory.Farey.GroupSpectralChannel

abbrev MatR := Matrix (Fin 2) (Fin 2) ℝ

/-- The source-identified two-step Farey word, with chronological order fixed. -/
def returnWord : List Turn := [.left, .right]

/-- The very same source Farey-cell walk has this exact group-unit transport. -/
theorem farey_return_frame (I : Cell) :
    frame (walk I returnWord) =
      frame I * ((leftUnit * rightUnit : MatZˣ) : MatZ) := by
  simpa [returnWord, wordUnit, turnUnit] using frame_walk I returnWord

/-- The complexified word is the genuine ordered product of its two turns. -/
theorem returnWord_complex :
    complexWord returnWord =
      (leftShear : MatC) * (rightShear : MatC) := by
  simp [returnWord, complexWord, turnShear]

/-- Real representation of the same two elementary integral shears. -/
def returnMatrix : MatR := (leftShear : MatR) * rightShear

/-- Actual matrix, not merely a trace/determinant label. -/
theorem returnMatrix_eq : returnMatrix = !![1, 1; 1, 2] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [returnMatrix, leftShear, rightShear,
      Matrix.mul_apply, Fin.sum_univ_two]

/-- The two-step return has its exact quadratic annihilating identity. -/
theorem returnMatrix_quadratic :
    returnMatrix * returnMatrix = (3 : ℝ) • returnMatrix - 1 := by
  rw [returnMatrix_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply, Fin.sum_univ_two, Matrix.smul_apply]

/-- The only radical used in the selected return's real splitting. -/
theorem sqrtFive_sq : (Real.sqrt (5 : ℝ)) ^ 2 = 5 :=
  Real.sq_sqrt (by norm_num)

theorem sqrtFive_pos : 0 < Real.sqrt (5 : ℝ) :=
  Real.sqrt_pos.2 (by norm_num)

/-- Explicit expanding eigenvalue of the TRUE two-step return H. -/
def expandingEigenvalue : ℝ := (3 + Real.sqrt (5 : ℝ)) / 2

/-- The reciprocal contracting eigenvalue, not an independently selected weight. -/
def contractingEigenvalue : ℝ := (3 - Real.sqrt (5 : ℝ)) / 2

theorem return_eigenvalue_sum :
    expandingEigenvalue + contractingEigenvalue = 3 := by
  unfold expandingEigenvalue contractingEigenvalue
  ring

theorem return_eigenvalue_product :
    expandingEigenvalue * contractingEigenvalue = 1 := by
  unfold expandingEigenvalue contractingEigenvalue
  nlinarith [sqrtFive_sq]

theorem return_eigenvalues_distinct :
    expandingEigenvalue ≠ contractingEigenvalue := by
  have hs := sqrtFive_pos
  unfold expandingEigenvalue contractingEigenvalue
  linarith

theorem expandingEigenvalue_gt_one : 1 < expandingEigenvalue := by
  have hs := sqrtFive_pos
  unfold expandingEigenvalue
  linarith

/-- A real matrix with nonzero offdiagonal entries. When s^2=5 it projects
onto the expanding return eigenspace; s nonzero is required for its entries. -/
def returnProjector (s : ℝ) : MatR :=
  !![(s - 1) / (2 * s), 1 / s;
     1 / s, (s + 1) / (2 * s)]

/-- A concrete split idempotent, using ONLY s^2=5 and s nonzero. -/
theorem returnProjector_idempotent (s : ℝ)
    (hs : s ^ 2 = 5) (hs0 : s ≠ 0) :
    returnProjector s * returnProjector s = returnProjector s := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [returnProjector, Matrix.mul_apply, Fin.sum_univ_two] <;>
    field_simp [hs0] <;>
    nlinarith [hs]

/-- The selected projector is an eigenchannel for the full return H, rather
than an assumed projector for both generators independently. -/
theorem returnProjector_eigen (s : ℝ)
    (hs : s ^ 2 = 5) (hs0 : s ≠ 0) :
    returnMatrix * returnProjector s =
      ((3 + s) / 2) • returnProjector s := by
  rw [returnMatrix_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [returnProjector, Matrix.mul_apply, Fin.sum_univ_two,
      Matrix.smul_apply] <;>
    field_simp [hs0] <;>
    nlinarith [hs]

/-- The channel commutes with the RETURN for every nonzero s. This is a
direct exact matrix identity; the stronger eigen-idempotent conclusion
requires s^2=5. -/
theorem returnProjector_commutes (s : ℝ) (hs0 : s ≠ 0) :
    returnProjector s * returnMatrix =
      returnMatrix * returnProjector s := by
  rw [returnMatrix_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [returnProjector, Matrix.mul_apply, Fin.sum_univ_two] <;>
    field_simp [hs0] <;>
    ring

/-- The nonzero off-diagonal coefficient prohibits both trivial idempotents
whenever the radical denominator is nonzero. -/
theorem returnProjector_proper (s : ℝ) (hs0 : s ≠ 0) :
    returnProjector s ≠ 0 ∧ returnProjector s ≠ 1 := by
  have hdiv : (1 / s : ℝ) ≠ 0 := div_ne_zero (by norm_num) hs0
  have hentry : (returnProjector s) 0 1 = 1 / s := by
    simp [returnProjector]
  constructor
  · intro h
    have hp := congrArg (fun M : MatR => M 0 1) h
    have hz : (1 / s : ℝ) = 0 := by simpa [hentry] using hp
    exact hdiv hz
  · intro h
    have hp := congrArg (fun M : MatR => M 0 1) h
    have hz : (1 / s : ℝ) = 0 := by simpa [hentry] using hp
    exact hdiv hz

/-- The specifically selected expanding return projector. -/
def expandingProjector : MatR :=
  returnProjector (Real.sqrt (5 : ℝ))

theorem expandingProjector_idempotent :
    expandingProjector * expandingProjector = expandingProjector :=
  returnProjector_idempotent _ sqrtFive_sq (ne_of_gt sqrtFive_pos)

theorem expandingProjector_proper :
    expandingProjector ≠ 0 ∧ expandingProjector ≠ 1 :=
  returnProjector_proper _ (ne_of_gt sqrtFive_pos)

theorem expandingProjector_commutes :
    expandingProjector * returnMatrix =
      returnMatrix * expandingProjector :=
  returnProjector_commutes _ (ne_of_gt sqrtFive_pos)

/-- This is an actual (not assumed) invariant spectral return-channel. -/
theorem expandingProjector_eigen :
    returnMatrix * expandingProjector =
      expandingEigenvalue • expandingProjector := by
  simpa only [expandingProjector, expandingEigenvalue] using
    returnProjector_eigen
      (Real.sqrt (5 : ℝ)) sqrtFive_sq (ne_of_gt sqrtFive_pos)

/-- All repeated returns act through the same exact expanding scalar
channel, retaining finite matrix and representation scope. -/
theorem expandingProjector_iterate (n : ℕ) :
    returnMatrix ^ n * expandingProjector =
      (expandingEigenvalue ^ n) • expandingProjector := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        returnMatrix ^ (n + 1) * expandingProjector =
            returnMatrix ^ n * (returnMatrix * expandingProjector) := by
              rw [pow_succ, Matrix.mul_assoc]
        _ = returnMatrix ^ n *
              (expandingEigenvalue • expandingProjector) := by
                rw [expandingProjector_eigen]
        _ = expandingEigenvalue •
              (returnMatrix ^ n * expandingProjector) := by
                rw [Matrix.mul_smul]
        _ = expandingEigenvalue •
              ((expandingEigenvalue ^ n) • expandingProjector) := by
                rw [ih]
        _ = (expandingEigenvalue ^ (n + 1)) • expandingProjector := by
              rw [smul_smul, pow_succ]
              simp [mul_comm]

/-- A selected return eigensector DOES exist. This does not contradict
the previous no-go theorem requiring invariance under each shear. -/
theorem exists_proper_return_channel :
    ∃ P : MatR, P * P = P ∧ P ≠ 0 ∧ P ≠ 1 ∧
      P * returnMatrix = returnMatrix * P ∧
      returnMatrix * P = expandingEigenvalue • P := by
  exact ⟨expandingProjector, expandingProjector_idempotent,
    expandingProjector_proper.1, expandingProjector_proper.2,
    expandingProjector_commutes, expandingProjector_eigen⟩

end GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
