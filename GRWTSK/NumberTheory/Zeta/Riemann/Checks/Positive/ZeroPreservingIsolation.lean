/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenIsolationPort
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CenteredJetFourteenHeight

set_option autoImplicit false

/-! UNELABORATED fixtures. Synthetic polynomial zeros are not claimed zeta zeros. -/
namespace GRWTSK.RiemannHypothesis.Checks.ZeroPreservingIsolation
open Complex Set
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open ZeroIsolation
noncomputable section

/-- A valid derivative certificate actually permits a zero. -/
def affineCertificate : DerivativeDisk (fun z : ℂ => 2 * (z - I)) Set.univ :=
  DerivativeDisk.affine 2 I (by norm_num) convex_univ
example : AtMostOneZero (fun z : ℂ => 2 * (z - I)) Set.univ := affineCertificate.atMostOneZero
example : (2 : ℂ) * (I - I) = 0 := by ring
example : deriv (fun z : ℂ => 2 * (z - I)) I ≠ 0 := affineCertificate.deriv_ne_zero (by simp)
example : ¬ (∃ z : ℂ, (1 : ℂ) = 0) := by simp

-- Location uniqueness alone does not prove a simple analytic zero.
example : AtMostOneZero (fun z : ℂ => z ^ 2) Set.univ := by
  intro z hz w hw hz0 hw0
  have hz' : z = 0 := by
    have h : z * z = 0 := by simpa only [pow_two] using hz0
    rcases mul_eq_zero.mp h with h | h <;> exact h
  have hw' : w = 0 := by
    have h : w * w = 0 := by simpa only [pow_two] using hw0
    rcases mul_eq_zero.mp h with h | h <;> exact h
  exact hz'.trans hw'.symm
example : deriv (fun z : ℂ => z ^ 2) 0 = 0 := by
  simpa using ((hasDerivAt_id (0 : ℂ)).pow 2).deriv

-- At a non-strict derivative margin a constant source can have many zeros.
example : ‖(0 : ℂ) - 1‖ ≤ (1 : ℝ) := by norm_num
example : ¬ AtMostOneZero (fun _ : ℂ => 0) Set.univ := by
  intro h
  have hb := h 0 (by simp) 1 (by simp) rfl rfl
  norm_num at hb
example : ¬ ((1 : ℝ) < ‖(1 : ℂ)‖) := by norm_num

-- Small uniform value error does not bound the derivative by the same number.
example {z : ℂ} (hz : ‖z‖ ≤ 1) : ‖z ^ 100 / (100 : ℂ)‖ ≤ (1 / 100 : ℝ) := by
  have hp : ‖z‖ ^ 100 ≤ 1 := pow_le_one₀ (norm_nonneg z) hz
  norm_num [norm_div, norm_pow] <;> nlinarith
example : deriv (fun z : ℂ => z ^ 100 / 100) 1 = 1 := by
  simpa using (((hasDerivAt_id (1 : ℂ)).pow 100).div_const 100).deriv

-- Dropping convexity fails even if both observed derivatives agree exactly.
example : deriv (fun z : ℂ => z ^ 3 - z) (-1) = 2 := by
  simpa using (((hasDerivAt_id (-1 : ℂ)).pow 3).sub (hasDerivAt_id (-1 : ℂ))).deriv
example : deriv (fun z : ℂ => z ^ 3 - z) 1 = 2 := by
  simpa using (((hasDerivAt_id (1 : ℂ)).pow 3).sub (hasDerivAt_id (1 : ℂ))).deriv
example : (-1 : ℂ) ^ 3 - (-1) = 0 ∧ (1 : ℂ) ^ 3 - 1 = 0 ∧ (-1 : ℂ) ≠ 1 := by norm_num

-- A mirror pair of off-line synthetic zeros prevents a capacity-one claim.
def leftPoint : ℂ := ⟨1 / 4, 29 / 2⟩
def rightPoint : ℂ := ⟨3 / 4, 29 / 2⟩
def pairPolynomial (z : ℂ) : ℂ := (z - leftPoint) * (z - rightPoint)
lemma reflected_left : criticalReflection leftPoint = rightPoint := by
  apply Complex.ext <;> norm_num [criticalReflection, leftPoint, rightPoint]
example : pairPolynomial leftPoint = 0 ∧ pairPolynomial rightPoint = 0 := by simp [pairPolynomial]
example : ¬ MirrorStable {leftPoint} := by
  intro h
  have hb := h leftPoint (by simp)
  rw [reflected_left, Set.mem_singleton_iff] at hb
  have hr := congrArg Complex.re hb
  norm_num [leftPoint, rightPoint] at hr
example : ¬ AtMostOneZero pairPolynomial {leftPoint, rightPoint} := by
  intro h
  have hb := h leftPoint (by simp) rightPoint (by simp)
    (by simp [pairPolynomial]) (by simp [pairPolynomial])
  have hr := congrArg Complex.re hb
  norm_num [leftPoint, rightPoint] at hr

example : (⟨0, 14⟩ : ℂ) ∈ fifteenBox := mem_fifteenBox.mpr (by norm_num)
example : (⟨1, 15⟩ : ℂ) ∈ fifteenBox := mem_fifteenBox.mpr (by norm_num)
example : fifteenBox.Nonempty := fifteenBox_nonempty
example : MirrorStable fifteenBox := mirrorBox_stable 14 15 (1 / 2)
example : (⟨1 / 2, 29 / 2⟩ : ℂ).re = 1 / 2 := rfl
example {U : Set ℂ} (C : ZeroPermittingCover U) (hc : C.count = 0) : NoTargetZero U :=
  C.noTargetZero_of_count_zero hc

-- These are explicitly CONDITIONAL, not new unconditional height results.
example (h : FifteenDerivativeBound) : ShellRH 14 := shell_fourteen_of_derivative_bound h
example (h : FifteenDerivativeBound) : WindowRH 15 := window_fifteen_of_derivative_bound h
example (h : FifteenDerivativeBound) : WindowRH 15 :=
  CutoffEightJet.window_fifteen_of_shell (shell_fourteen_of_derivative_bound h)
example (h : FifteenDerivativeBound) {z w : ℂ} (hz : z ∈ fifteenBox) (hw : w ∈ fifteenBox) :
    (1 / 2 : ℝ) * ‖z - w‖ ≤ ‖poleNormalizedZeta z - poleNormalizedZeta w‖ :=
  source_separation_of_bound h hz hw
example (C : ZeroPermittingCover fifteenBox) : WindowRH 15 := window_fifteen_of_zero_permitting_cover C
example (h : FifteenDerivativeBound) (hs : ShellRH 15) : WindowRH 16 :=
  window_sixteen_of_bound_and_shell h hs
example : (12 : ℝ) - 23 / 2 = 1 / 2 := by norm_num

end
end GRWTSK.RiemannHypothesis.Checks.ZeroPreservingIsolation
