import SourceActualFiniteMoebiusDirichlet
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
The actual closed two-term reciprocal Moebius cosine inventory exceeds one.
This challenges an extension of the proved real-exponent unit bound to arbitrary
Fourier frequencies. It supplies no RH counterexample or source pairing bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualMoebiusCosineFrequency
open ArithmeticFunction
open scoped BigOperators
noncomputable section

/-- Independently specified complete actual reciprocal Moebius cosine inventory. -/
def actualReciprocalMoebiusCosine (N : ℕ) (tau : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * Real.cos (tau * Real.log (n : ℝ))

/-- The closed unit and the actual prime-two Moebius sign are both retained. -/
theorem actualReciprocalMoebiusCosine_two (tau : ℝ) :
    actualReciprocalMoebiusCosine 2 tau = 1 - Real.cos (tau * Real.log 2) / 2 := by
  have hs : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  norm_num [actualReciprocalMoebiusCosine, hs, moebius_apply_prime Nat.prime_two]
  ring

/-- A genuine actual frequency gives the exact larger-than-unit value. -/
theorem actualReciprocalMoebiusCosine_two_pi :
    actualReciprocalMoebiusCosine 2 (Real.pi / Real.log 2) = 3 / 2 := by
  have hlog : Real.log (2 : ℝ) ≠ 0 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'
  rw [actualReciprocalMoebiusCosine_two, div_mul_cancel₀ _ hlog, Real.cos_pi]
  norm_num

/-- The real-exponent unit bound cannot be extended to every actual cosine frequency. -/
theorem actualReciprocalMoebiusCosine_not_uniform_unit :
    ¬ ∀ (N : ℕ) (tau : ℝ), |actualReciprocalMoebiusCosine N tau| ≤ 1 := by
  intro h
  have hh := h 2 (Real.pi / Real.log 2)
  rw [actualReciprocalMoebiusCosine_two_pi] at hh
  norm_num at hh

end
end FormalResearch.RiemannHypothesis.SourceActualMoebiusCosineFrequency
