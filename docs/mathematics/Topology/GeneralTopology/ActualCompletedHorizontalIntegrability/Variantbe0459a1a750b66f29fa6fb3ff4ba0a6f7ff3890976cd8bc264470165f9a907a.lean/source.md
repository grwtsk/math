# Complete source: GRWTSK.Topology.GeneralTopology.ActualCompletedHorizontalIntegrability.Variantbe0459a1a750b66f29fa6fb3ff4ba0a6f7ff3890976cd8bc264470165f9a907a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b36def041fb70d830fd94e3c6c6a3ad0369bacf` · SHA-256 `be0459a1a750b66f29fa6fb3ff4ba0a6f7ff3890976cd8bc264470165f9a907a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMovingHorizontalCompletedBudget

/-!
The literal actual completed horizontal integrals are genuine finite L1 integrals
on good heights. Both pole exclusions follow from the nonzero imaginary height;
completed-zeta nonvanishing uses the authentic functional reflection.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCompletedHorizontalIntegrability
open MeasureTheory Set Complex Topology Filter
open Zeta23 Zeta23.WeilEF
open SourcePairing SourceBumpLaplace SourceActualBumpTransform
open ActualCorrelationOppositeHalf ActualMovingHorizontalCompletedBudget
noncomputable section

/-- The exact actual bilateral correlation transform is continuous on the full complex plane. -/
theorem actual_bilateral_transform_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (fun s : ℂ => actualBilateralCorrelationTransform A (s-1/2)) := by
  have hb : Continuous bumpLaplace := by
    have hh := bump_laplace_moment_continuous 0
    simpa only [bump_laplace_moment_zero] using hh
  have hbc : Continuous (fun s : ℂ => bumpLaplace ((A : ℂ)*(s-1/2))) :=
    hb.comp (by fun_prop)
  simp_rw [actualBilateralCorrelationTransform_eq_bump hA]
  fun_prop

/-- Genuine finite L1 holds on either actual good horizontal, with all completed terms. -/
theorem actual_completed_horizontal_intervalIntegrable (A c R y : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3/2) (hR : 7 ≤ R)
    (hζ : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) (hy : y = R ∨ y = -R) :
    IntervalIntegrable (fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)*
        logDeriv completedRiemannZeta ((x : ℂ)+y*I)) volume (1-c) c := by
  have hyn : y ≠ 0 := by rcases hy with hh | hh <;> rw [hh] <;> linarith
  have hline : Continuous (fun x : ℝ => (x : ℂ)+y*I) := by fun_prop
  have hsource : Continuous (fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)) :=
    (actual_bilateral_transform_continuous hA).comp hline
  have hnonzero := completedZeta_ne_zero_on_horizontals hc hc2 hζ
  have hlog : ContinuousOn (fun x : ℝ =>
      logDeriv completedRiemannZeta ((x : ℂ)+y*I)) (Icc (1-c) c) := by
    intro x hx
    let s : ℂ := (x : ℂ)+y*I
    have hs0 : s ≠ 0 := by
      intro hh
      apply hyn
      have hm := congrArg Complex.im hh
      simpa [s] using hm
    have hs1 : s ≠ 1 := by
      intro hh
      apply hyn
      have hm := congrArg Complex.im hh
      simpa [s] using hm
    have hnc : completedRiemannZeta s ≠ 0 :=
      hnonzero s (by simpa [s] using hy) (by simpa [s] using hx.1)
        (by simpa [s] using hx.2)
    have han := Zeta23.RvM.analyticAt_completedRiemannZeta hs0 hs1
    have hh : ContinuousAt (fun s => deriv completedRiemannZeta s /
        completedRiemannZeta s) s := han.deriv.continuousAt.div han.continuousAt hnc
    exact (hh.comp hline.continuousAt).continuousWithinAt
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith)]
  exact hsource.continuousOn.mul hlog

end
end FormalResearch.RiemannHypothesis.ActualCompletedHorizontalIntegrability
```
