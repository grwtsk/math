import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

/-!
# Actual curvature on a strict positive derivative phase

Research candidate; local/kernel/main acceptance are separate receipt gates.
The literal max formula is differentiated only where the actual critical
prime-test derivative is strictly positive. No global paired C2 regularity,
curvature sign, arithmetic estimate or uniform signed witness is asserted.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex; independent AI review is a separate gate.
-/

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase

open Filter Set
open SourceCriticalSecondAbel SourcePairedTailTest SourcePairedPrimeWork SourceFirstPrimeAbel

/-- Strict positivity selects the literal positive max branch on an ambient neighborhood. -/
theorem pairedTailTest_second_deriv_eq_neg_of_deriv_pos
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u =
      -deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hpos : ∀ᶠ v in 𝓝 u, 0 < deriv (criticalPrimeTest A) v :=
    hg.continuous.continuousAt.preimage_mem_nhds (Ioi_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -deriv (criticalPrimeTest A) v) := by
    filter_upwards [hpos] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_left hv.le,
      max_eq_right (neg_nonpos.mpr hv.le), mul_zero, add_zero]
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact (hd.neg.congr_of_eventuallyEq he).deriv

end FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
