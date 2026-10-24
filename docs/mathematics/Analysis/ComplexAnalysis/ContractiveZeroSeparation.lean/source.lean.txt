/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ContractiveZeroDisk
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Quantitative value separation from a contractive correction map

A root of f is a fixed point of z - a*f(z). A bound on this correction map
therefore gives a LOWER bound on the actual scaled value a*f(z), not only
uniqueness of zeros. The disk version retains whole-disk derivative control.
No existence, self-map or positivity assumption on f is supplied here.

A positive scaled lower bound and a scaled derivative upper bound give a
logarithmic-derivative estimate. Nonvanishing of BOTH multiplier and value is
derived before cancelling them; totalized division is not a zero-free test.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No execution or hold release.
-/

namespace GRWTSK.Analysis.Complex.ContractiveZeroSeparation

open Set Metric
open GRWTSK.Analysis.Complex.ContractiveZeroDisk

noncomputable section

/-- The same correction map is used at the actual root and observation point. -/
theorem scaled_value_lower_of_pair (f : ℂ → ℂ) (a z root : ℂ) (q : ℝ)
    (rootZero : f root = 0)
    (pairBound : ‖correction f a z - correction f a root‖ ≤ q * ‖z - root‖) :
    (1 - q) * ‖z - root‖ ≤ ‖a * f z‖ := by
  have identity : z - root = (correction f a z - correction f a root) + a * f z := by
    simp only [correction, rootZero, mul_zero, sub_zero]
    ring
  have triangle : ‖z - root‖ ≤
      ‖correction f a z - correction f a root‖ + ‖a * f z‖ := by
    calc
      _ = ‖(correction f a z - correction f a root) + a * f z‖ := congrArg norm identity
      _ ≤ _ := norm_add_le _ _
  nlinarith

/-- Pointwise derivative bounds must hold on the entire common disk. -/
theorem scaled_value_lower_on_disk (f : ℂ → ℂ) (a c z root : ℂ) (r q : ℝ)
    (rootZero : f root = 0) (rootMember : root ∈ closedBall c r)
    (member : z ∈ closedBall c r)
    (differentiable : ∀ w ∈ closedBall c r, DifferentiableAt ℂ f w)
    (derivativeBound : ∀ w ∈ closedBall c r, ‖1 - a * deriv f w‖ ≤ q) :
    (1 - q) * ‖z - root‖ ≤ ‖a * f z‖ :=
  scaled_value_lower_of_pair f a z root q rootZero
    (correction_lipschitz f a c r q differentiable derivativeBound z member root rootMember)

/-- An upper bound on the multiplier converts scaled separation to actual value separation.
The sign of L is unrestricted; positivity is a separate consequence when needed. -/
theorem value_lower_of_scaled (a value : ℂ) (L M : ℝ) (multiplierPositive : 0 < M)
    (scaledLower : L ≤ ‖a * value‖) (multiplierUpper : ‖a‖ ≤ M) : L / M ≤ ‖value‖ := by
  apply (div_le_iff₀ multiplierPositive).mpr
  calc
    L ≤ ‖a * value‖ := scaledLower
    _ = ‖a‖ * ‖value‖ := norm_mul _ _
    _ ≤ M * ‖value‖ := mul_le_mul_of_nonneg_right multiplierUpper (norm_nonneg _)
    _ = ‖value‖ * M := mul_comm _ _

/-- The derivative-defect bound also controls the scaled derivative from above. -/
theorem scaled_derivative_upper (a slope : ℂ) (q : ℝ)
    (defect : ‖1 - a * slope‖ ≤ q) : ‖a * slope‖ ≤ 1 + q := by
  have triangle := norm_le_norm_sub_add (a * slope) (1 : ℂ)
  rw [norm_sub_rev, norm_one] at triangle
  linarith

/-- Cancel the SAME multiplier only after positive separation proves both factors nonzero. -/
theorem quotient_bound_of_scaled (a value slope : ℂ) (L U : ℝ)
    (positive : 0 < L) (valueLower : L ≤ ‖a * value‖)
    (slopeUpper : ‖a * slope‖ ≤ U) : value ≠ 0 ∧ ‖slope / value‖ ≤ U / L := by
  have productNonzero : a * value ≠ 0 := norm_pos_iff.mp (positive.trans_le valueLower)
  have multiplierNonzero : a ≠ 0 := (mul_ne_zero_iff.mp productNonzero).1
  have valueNonzero : value ≠ 0 := (mul_ne_zero_iff.mp productNonzero).2
  have cancellation : (a * slope) / (a * value) = slope / value := by
    field_simp [multiplierNonzero, valueNonzero] <;> ring
  refine ⟨valueNonzero, ?_⟩
  rw [← cancellation, norm_div]
  calc
    _ ≤ U / ‖a * value‖ := div_le_div_of_nonneg_right slopeUpper (norm_nonneg _)
    _ ≤ U / L := div_le_div_of_nonneg_left
      ((norm_nonneg (a * slope)).trans slopeUpper) positive valueLower

end

end GRWTSK.Analysis.Complex.ContractiveZeroSeparation
