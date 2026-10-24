# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalCurvaturePhasePrepared.Variantd824a0ed2f0285b5a65bb73fc58c0ba10bdaa9ae994458f7c80d285c02506eeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `504445a73a8b3c73010fc78507819873987678a4` · SHA-256 `d824a0ed2f0285b5a65bb73fc58c0ba10bdaa9ae994458f7c80d285c02506eeb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
