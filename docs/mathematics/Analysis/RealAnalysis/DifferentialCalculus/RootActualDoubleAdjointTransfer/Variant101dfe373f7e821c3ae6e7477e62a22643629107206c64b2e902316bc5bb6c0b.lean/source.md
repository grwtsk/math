# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualDoubleAdjointTransfer.Variant101dfe373f7e821c3ae6e7477e62a22643629107206c64b2e902316bc5bb6c0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9777e31e78d9db06c78603a79329dd4d203c19f` · SHA-256 `101dfe373f7e821c3ae6e7477e62a22643629107206c64b2e902316bc5bb6c0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualLogColumnTransport
import RootActualUpperTimeJets
import Mathlib.MeasureTheory.Integral.Prod

/-!
Two genuine weighted Abel integrations act on the literal original mixed work.
The upper time traces vanish at the actual source seam. The lower column trace,
original second sector, closed arithmetic inventories and compensation remain.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualDoubleAdjointTransfer
open MeasureTheory Set Filter
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open SourceActualDoubleMixedKernel SourceActualCovariantKernel RootActualCovariantWorkKernel
open RootActualUpperTimeJets SourceMangoldtAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

/-- The independently specified first twisted derivative retains both actual odd jets. -/
def actualTwistedTimeDensity (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
      actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
        Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hU1 : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by simp
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hUN, Real.log_le_log hU hU1,
    Real.log_le_log (hU.trans_le hU1) hK⟩

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  simpa only [iteratedDeriv_succ] using
    (((actual_correlation_contDiff_four A hA).differentiable_iteratedDeriv n
      (by exact_mod_cast hn)) z).hasDerivAt

private theorem jet_contDiff_one {A : ℝ} (hA : 0 < A) (n : ℕ) (hn : n ≤ 3) :
    ContDiff ℝ 1 (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A)) := by
  rw [iteratedDeriv_eq_iterate]
  exact ContDiff.iterate_deriv' 1 n ((actual_correlation_contDiff_four A hA).of_le
    (by exact_mod_cast (by omega : 1 + n ≤ 4)))

private theorem mixed_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ => actualLogMixedDensity A z.1 z.2) := by
  have h0 := (actual_correlation_contDiff_four A hA).continuous
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  unfold actualLogMixedDensity
  fun_prop

private theorem twisted_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ => actualTwistedTimeDensity A z.1 z.2) := by
  have h1 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3
    (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

private theorem covariant_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ =>
      covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2) := by
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  simp_rw [actual_covariant_ordinary_work_kernel A hA]
  fun_prop

private theorem mixed_time_contDiff {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiff ℝ 1 (fun t => actualLogMixedDensity A t s) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  have h2 := jet_contDiff_one hA 2 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualLogMixedDensity
  fun_prop

private theorem twisted_column_contDiff {A : ℝ} (hA : 0 < A) (t : ℝ) :
    ContDiff ℝ 1 (actualTwistedTimeDensity A t) := by
  have h1 := jet_contDiff_one hA 1 (by norm_num)
  have h3 := jet_contDiff_one hA 3 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

/-- This is the genuine first twisted derivative of the original mixed density. -/
theorem actualTwistedTimeDensity_eq_time_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (fun x => actualLogMixedDensity A x s) t - actualLogMixedDensity A t s / 2 =
      actualTwistedTimeDensity A t s := by
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h2 := (jet_hasDerivAt hA 2 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (h2.sub (h0.div_const 4))
  have hd : HasDerivAt (fun x => actualLogMixedDensity A x s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
              sourceCorrelation explicitSecondDerivative A (t + s) / 8)) t := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, iteratedDeriv_zero, id_eq, Pi.sub_apply]
    ring
  rw [hd.deriv]
  simp only [actualLogMixedDensity, actualTwistedTimeDensity]
  ring

/-- Its second twisted derivative is the original post-adjoint kernel with its second sector. -/
theorem actualTwistedTimeDensity_column_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (actualTwistedTimeDensity A t) s + actualTwistedTimeDensity A t s / 2 =
      covariantMixedDerivative (actualLogMixedDensity A) t s := by
  have hf : (fun y => deriv (fun x => actualLogMixedDensity A x y) t -
      actualLogMixedDensity A t y / 2) = actualTwistedTimeDensity A t := by
    funext y
    exact actualTwistedTimeDensity_eq_time_deriv hA t y
  unfold covariantMixedDerivative
  rw [hf, actualTwistedTimeDensity_eq_time_deriv hA t s]

private theorem weighted_box_integrable {l b a c : ℝ} (hlb : l ≤ b) (hac : a ≤ c)
    (f g : ℝ → ℝ) (K : ℝ → ℝ → ℝ)
    (hf : IntervalIntegrable f volume l b) (hg : IntervalIntegrable g volume a c)
    (hK : Continuous (fun z : ℝ × ℝ => K z.1 z.2)) :
    Integrable (fun z : ℝ × ℝ => f z.1 * (g z.2 * K z.1 z.2))
      ((volume.restrict (Ioc l b)).prod (volume.restrict (Ioc a c))) := by
  obtain ⟨C, hC⟩ := (isCompact_Icc.prod isCompact_Icc).exists_bound_of_continuousOn
    hK.continuousOn
  have hb : ∀ᵐ z ∂(volume.restrict (Ioc l b)).prod (volume.restrict (Ioc a c)),
      ‖K z.1 z.2‖ ≤ C := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)] with z hz
    exact hC z ⟨⟨hz.1.1.le, hz.1.2⟩, ⟨hz.2.1.le, hz.2.2⟩⟩
  have hi := ((intervalIntegrable_iff_integrableOn_Ioc_of_le hlb).mp hf).mul_prod
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le hac).mp hg)
  convert hi.mul_bdd hK.aestronglyMeasurable hb using 1
  funext z
  ring

private theorem weighted_box_swap {l b a c : ℝ} (hlb : l ≤ b) (hac : a ≤ c)
    (f g : ℝ → ℝ) (K : ℝ → ℝ → ℝ)
    (hf : IntervalIntegrable f volume l b) (hg : IntervalIntegrable g volume a c)
    (hK : Continuous (fun z : ℝ × ℝ => K z.1 z.2)) :
    (∫ t in l..b, f t * ∫ s in a..c, g s * K t s) =
      ∫ s in a..c, g s * ∫ t in l..b, f t * K t s := by
  have hi := weighted_box_integrable hlb hac f g K hf hg hK
  have hs := integral_integral_swap (f := fun t s => f t * (g s * K t s)) hi
  simp only [intervalIntegral.integral_of_le hlb, intervalIntegral.integral_of_le hac]
  simp_rw [← integral_const_mul] at hs
  calc
    _ = ∫ s, ∫ t, f t * (g s * K t s)
        ∂volume.restrict (Ioc l b) ∂volume.restrict (Ioc a c) := hs
    _ = _ := by
      simp_rw [show ∀ t s, f t * (g s * K t s) = g s * (f t * K t s) by
        intro t s; ring, integral_const_mul]

end
end FormalResearch.RiemannHypothesis.RootActualDoubleAdjointTransfer
```
