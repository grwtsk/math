# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2Core.Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b` · SHA-256 `24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingDerivative
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Full-line squared-error convergence for the prescribed mollifier

A continuous compactly supported real function and its prescribed mollifications
belong to L². Nonnegativity and mass one preserve a uniform bound. Shrinking
kernel supports give a fixed compact support for the errors, so dominated
convergence applies to their genuinely integrable squared errors on all of ℝ.
The same theorem can be applied to the actual source test and its global
derivative. No transform identity or zero-side formula is used here.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingL2Core

open MeasureTheory Set Filter
open scoped ContDiff Convolution Topology Pointwise
open ZeroSmoothing

noncomputable section

/-- Apply the existing source kernel with its unchanged positive-radius parameter. -/
def mollify (f : ℝ → ℝ) (ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] f

/-- The compact smooth kernel makes every pointwise convolution integral genuine. -/
theorem mollify_integrand_integrable {f : ℝ → ℝ} (hf : Continuous f)
    (ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    Integrable (fun y ↦ mollifier ε hε y * f (x - y)) volume :=
  (mollifier_hasCompactSupport ε hε).convolutionExists_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_contDiff ε hε).continuous hf.locallyIntegrable x

/-- Smoothness is supplied by the prescribed kernel, not an alternate approximation. -/
theorem mollify_contDiff {f : ℝ → ℝ} (hf : Continuous f) (ε : ℝ) (hε : 0 < ε) :
    ContDiff ℝ ∞ (mollify f ε hε) :=
  (mollifier_hasCompactSupport ε hε).contDiff_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_contDiff ε hε) hf.locallyIntegrable

/-- Each mollification is continuous on the full real line. -/
theorem mollify_continuous {f : ℝ → ℝ} (hf : Continuous f) (ε : ℝ) (hε : 0 < ε) :
    Continuous (mollify f ε hε) :=
  (mollify_contDiff hf ε hε).continuous

/-- Convolution of the two compactly supported functions has compact support. -/
theorem mollify_hasCompactSupport {f : ℝ → ℝ} (hcompact : HasCompactSupport f)
    (ε : ℝ) (hε : 0 < ε) : HasCompactSupport (mollify f ε hε) :=
  (mollifier_hasCompactSupport ε hε).convolution
    (ContinuousLinearMap.lsmul ℝ ℝ) hcompact

/-- The input function has a genuine L² class. -/
theorem continuous_compact_memLp_two {f : ℝ → ℝ} (hf : Continuous f)
    (hcompact : HasCompactSupport f) : MemLp f 2 volume :=
  hf.memLp_of_hasCompactSupport hcompact

/-- Every member of the prescribed family has a genuine L² class. -/
theorem mollify_memLp_two {f : ℝ → ℝ} (hf : Continuous f) (hcompact : HasCompactSupport f)
    (ε : ℝ) (hε : 0 < ε) : MemLp (mollify f ε hε) 2 volume :=
  (mollify_continuous hf ε hε).memLp_of_hasCompactSupport
    (mollify_hasCompactSupport hcompact ε hε)

/-- The error is in L² before its squared integral is used. -/
theorem error_memLp_two {f : ℝ → ℝ} (hf : Continuous f) (hcompact : HasCompactSupport f)
    (ε : ℝ) (hε : 0 < ε) : MemLp (fun x ↦ mollify f ε hε x - f x) 2 volume :=
  (mollify_memLp_two hf hcompact ε hε).sub (continuous_compact_memLp_two hf hcompact)

/-- This proves convergence of the error-square integral is not a totalized-integral shortcut. -/
theorem error_square_integrable {f : ℝ → ℝ} (hf : Continuous f)
    (hcompact : HasCompactSupport f) (ε : ℝ) (hε : 0 < ε) :
    Integrable (fun x ↦ (mollify f ε hε x - f x) ^ 2) volume :=
  (error_memLp_two hf hcompact ε hε).integrable_sq

/-- Nonnegative mass-one convolution preserves any global norm bound of the input. -/
theorem mollify_norm_le {f : ℝ → ℝ} (hf : Continuous f) {M : ℝ}
    (hbound : ∀ x, ‖f x‖ ≤ M) (ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    ‖mollify f ε hε x‖ ≤ M := by
  have hM : 0 ≤ M := (norm_nonneg (f 0)).trans (hbound 0)
  have hsupport : Function.support (mollifier ε hε) ⊆ Metric.ball (0 : ℝ) ε := by
    simpa only [mollifier, smoothingBump] using
      (smoothingBump ε hε).support_normed_eq (μ := volume) |>.subset
  simpa only [mollify, dist_zero_right] using
    (dist_convolution_le (μ := volume) (x₀ := x) (z₀ := (0 : ℝ)) hM hsupport
      (mollifier_nonneg ε hε) (mollifier_integral ε hε) hf.aestronglyMeasurable
      (fun y _ ↦ by simpa only [dist_zero_right] using hbound y))

/-- The exact source support enlargement holds for each positive kernel radius. -/
theorem mollify_support_subset {f : ℝ → ℝ} (A : ℝ)
    (hsupport : Function.support f ⊆ Icc (-A) A) (ε : ℝ) (hε : 0 < ε) :
    Function.support (mollify f ε hε) ⊆ Icc (-A - ε) (A + ε) := by
  intro x hx
  obtain ⟨y, hy, z, hz, rfl⟩ :=
    support_convolution_subset (ContinuousLinearMap.lsmul ℝ ℝ) hx
  rw [mollifier_support ε hε] at hy
  have hz' := hsupport hz
  constructor <;> linarith [hy.1, hy.2, hz'.1, hz'.2]

/-- Every small-radius error vanishes outside the same compact interval. -/
theorem error_support_subset_common {f : ℝ → ℝ} (A : ℝ)
    (hsupport : Function.support f ⊆ Icc (-A) A) (ε : ℝ) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Function.support (fun x ↦ mollify f ε hε x - f x) ⊆ Icc (-A - 1) (A + 1) := by
  intro x hx
  by_contra hnot
  have hm : mollify f ε hε x = 0 := by
    by_contra hm
    have hs := mollify_support_subset A hsupport ε hε hm
    exact hnot ⟨by linarith [hs.1], by linarith [hs.2]⟩
  have hfx : f x = 0 := by
    by_contra hfx
    have hs := hsupport hfx
    exact hnot ⟨by linarith [hs.1], by linarith [hs.2]⟩
  exact hx (by
    change mollify f ε hε x - f x = 0
    rw [hm, hfx, sub_self])

/-- The shrinking prescribed kernels recover any continuous input pointwise. -/
theorem mollify_tendsto {ι : Type*} {l : Filter ι} {f : ℝ → ℝ} (hf : Continuous f)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) (x : ℝ) :
    Tendsto (fun i ↦ mollify f (ε i) (hε i) x) l (𝓝 (f x)) :=
  ContDiffBump.convolution_tendsto_right_of_continuous
    (φ := fun i ↦ smoothingBump (ε i) (hε i)) hlim hf x

/-- On the full real line, the genuine L² error squares tend to zero.
The countably generated filter includes the source limit through positive real radii. -/
theorem mollify_integral_sq_tendsto_zero {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) {f : ℝ → ℝ} (hf : Continuous f)
    (hcompact : HasCompactSupport f) (hsupport : Function.support f ⊆ Icc (-A) A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, (mollify f (ε i) (hε i) x - f x) ^ 2) l (𝓝 0) := by
  obtain ⟨C, hC⟩ := hcompact.exists_bound_of_continuous hf
  let M := max C A
  have hM : 0 ≤ M := le_trans (by linarith : 0 ≤ A) (le_max_right C A)
  have hbound : ∀ x, ‖f x‖ ≤ M := fun x ↦ (hC x).trans (le_max_left C A)
  let bound : ℝ → ℝ := (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ (2 * M) ^ 2)
  have hbound_integrable : Integrable bound volume :=
    (continuous_const.integrableOn_Icc).integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hmeas : ∀ᶠ i in l,
      AEStronglyMeasurable (fun x ↦ (mollify f (ε i) (hε i) x - f x) ^ 2) volume :=
    Eventually.of_forall fun i ↦ (error_square_integrable hf hcompact (ε i) (hε i)).1
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖(mollify f (ε i) (hε i) x - f x) ^ 2‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_pow]
        have hn : ‖mollify f (ε i) (hε i) x - f x‖ ≤ 2 * M := by
          calc
            ‖mollify f (ε i) (hε i) x - f x‖ ≤
                ‖mollify f (ε i) (hε i) x‖ + ‖f x‖ := norm_sub_le _ _
            _ ≤ M + M := add_le_add (mollify_norm_le hf hbound (ε i) (hε i) x) (hbound x)
            _ = 2 * M := by ring
        exact (sq_le_sq₀ (norm_nonneg _) (by positivity)).2 hn
      · have hz : mollify f (ε i) (hε i) x - f x = 0 := by
          by_contra hz
          exact hx (error_support_subset_common A hsupport (ε i) (hε i) hi hz)
        simp only [hz, zero_pow two_ne_zero, norm_zero, bound, indicator_of_notMem hx, le_refl]
  have hpoint : ∀ᵐ x ∂volume,
      Tendsto (fun i ↦ (mollify f (ε i) (hε i) x - f x) ^ 2) l (𝓝 (0 : ℝ)) :=
    Eventually.of_forall fun x ↦ by
      have hc : Tendsto (fun _ : ι ↦ f x) l (𝓝 (f x)) := tendsto_const_nhds
      simpa only [sub_self, zero_pow two_ne_zero] using
        ((mollify_tendsto hf ε hε hlim x).sub hc).pow 2
  simpa only [integral_zero] using
    (tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hbound_integrable hpoint)

end
end ZeroSmoothingL2Core
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
