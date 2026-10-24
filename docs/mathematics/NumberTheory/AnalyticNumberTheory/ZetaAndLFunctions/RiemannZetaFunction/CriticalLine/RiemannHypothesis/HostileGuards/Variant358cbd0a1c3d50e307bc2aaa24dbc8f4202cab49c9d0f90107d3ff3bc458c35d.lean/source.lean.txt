import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

set_option autoImplicit false
set_option relaxedAutoImplicit false

noncomputable section
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open CorrelationRegularity PrimePowerDescent

/-- The exact probe keeps its true squared norm, including non-unit coefficients. -/
example (ε : ℝ) : ‖interactionProbe ε‖ ^ 2 = 1 + ε ^ 2 := by
  have h := interactionProbe_correlation ε 0
  rw [translation_zero] at h
  have hp := sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale (Real.log 2)
    probeScale_pos (probeScale_log_two.le.trans (le_abs_self _))
  have hn := sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale (-Real.log 2)
    probeScale_pos (by simpa only [abs_neg] using
      probeScale_log_two.le.trans (le_abs_self (Real.log 2)))
  simp only [zero_sub, zero_add, sourceCorrelation_zero probeScale_pos, hp, hn,
    mul_one, mul_zero, add_zero] at h
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  exact h

/-- Removing the index-two membership guard would give the wrong hostile value. -/
example : mangoldtInteraction 0 = 0 := by
  norm_num [mangoldtInteraction, primePowerInventory]
