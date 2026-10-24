# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinTailDerivative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60a81adb71f26f27a942cca13e1a9b46226ecc37` · SHA-256 `1258648bafa5c945504f483e758b8f19f44080b4de4bf58b4fe7152187a11892`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep
import Mathlib.Analysis.MellinTransform

set_option autoImplicit false

/-!
# Differentiating the actual bounded-kernel Mellin tail

The cutoff is retained in an indicator, the Mellin parameter is 1-z, and its
chain derivative supplies a MINUS sign. The logarithmic integral is not obtained
by differentiating a numerical error inequality. Its integrability and norm
majorant are established independently. No source continuation or RH is assumed.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinPrimitiveStep
open Complex MeasureTheory Set Filter Asymptotics
open scoped Topology
noncomputable section
namespace BoundedKernel

/-- Zero below the declared cutoff, not a changed arithmetic kernel above it. -/
def cutoff (K : BoundedKernel) (T : ℝ) : ℝ → ℂ := (Ioi T).indicator K.value

def logIntegrand (K : BoundedKernel) (z : ℂ) (t : ℝ) : ℂ :=
  (Real.log t : ℂ) * K.integrand z t

def logTail (K : BoundedKernel) (z : ℂ) (T : ℝ) : ℂ :=
  ∫ t : ℝ in Ioi T, K.logIntegrand z t

lemma cutoff_measurable (K : BoundedKernel) (T : ℝ) : Measurable (K.cutoff T) :=
  K.measurable.indicator measurableSet_Ioi

lemma cutoff_norm (K : BoundedKernel) (T t : ℝ) : ‖K.cutoff T t‖ ≤ K.bound := by
  by_cases ht : T < t
  · simpa [cutoff, ht] using K.norm_le t
  · simpa [cutoff, ht] using K.bound_nonneg

lemma cutoff_locallyIntegrable (K : BoundedKernel) (T : ℝ) :
    LocallyIntegrableOn (K.cutoff T) (Ioi 0) := by
  have h : MemLp (K.cutoff T) ⊤ (volume : Measure ℝ) :=
    memLp_top_of_bound (K.cutoff_measurable T).aestronglyMeasurable K.bound
      (Eventually.of_forall (K.cutoff_norm T))
  exact (h.locallyIntegrable le_top).locallyIntegrableOn _

lemma cutoff_bigO_top (K : BoundedKernel) (T : ℝ) :
    K.cutoff T =O[atTop] (fun t : ℝ => t ^ (-(0 : ℝ))) := by
  refine isBigO_iff.mpr ⟨K.bound, Eventually.of_forall ?_⟩
  intro t
  simpa using K.cutoff_norm T t

lemma cutoff_bigO_zero (K : BoundedKernel) {T : ℝ} (hT : 1 ≤ T) (b : ℝ) :
    K.cutoff T =O[𝓝[>] (0 : ℝ)] (fun t : ℝ => t ^ (-b)) := by
  refine isBigO_iff.mpr ⟨0, ?_⟩
  filter_upwards [(eventually_lt_nhds (show (0 : ℝ) < 1 by norm_num)).filter_mono
    nhdsWithin_le_nhds] with t ht
  have hnot : ¬ T < t := by linarith
  simp [cutoff, hnot]

lemma mellin_cutoff (K : BoundedKernel) {T : ℝ} (hT : 1 ≤ T) (z : ℂ) :
    mellin (K.cutoff T) (1 - z) = K.tail z T := by
  have h0 : 0 ≤ T := zero_le_one.trans hT
  have he : (fun t : ℝ => (t : ℂ) ^ ((1-z)-1) • K.cutoff T t) =
      (Ioi T).indicator (K.integrand z) := by
    funext t
    by_cases ht : T < t
    · simp only [cutoff, mem_Ioi, indicator_of_mem ht, smul_eq_mul, integrand]
      rw [show (1-z)-1 = -z by ring]
      exact mul_comm _ _
    · simp [cutoff, ht]
  unfold mellin
  rw [he, integral_indicator measurableSet_Ioi,
    Measure.restrict_restrict measurableSet_Ioi]
  simp only [Ioi_inter_Ioi, max_eq_left h0, tail]

lemma mellin_log_cutoff (K : BoundedKernel) {T : ℝ} (hT : 1 ≤ T) (z : ℂ) :
    mellin (fun t : ℝ => Real.log t • K.cutoff T t) (1-z) = K.logTail z T := by
  have h0 : 0 ≤ T := zero_le_one.trans hT
  have he : (fun t : ℝ => (t : ℂ) ^ ((1-z)-1) • (Real.log t • K.cutoff T t)) =
      (Ioi T).indicator (K.logIntegrand z) := by
    funext t
    by_cases ht : T < t
    · simp only [cutoff, mem_Ioi, indicator_of_mem ht, smul_eq_mul,
        Complex.real_smul, logIntegrand, integrand]
      rw [show (1-z)-1 = -z by ring]
      ring
    · simp [cutoff, ht]
  unfold mellin
  rw [he, integral_indicator measurableSet_Ioi,
    Measure.restrict_restrict measurableSet_Ioi]
  simp only [Ioi_inter_Ioi, max_eq_left h0, logTail]

/-- The true tail is holomorphic, and its derivative is the negative log-weighted tail. -/
theorem tail_hasDerivAt (K : BoundedKernel) {T : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hz : 1 < z.re) :
    HasDerivAt (fun w : ℂ => K.tail w T) (-K.logTail z T) z := by
  have hm := mellin_hasDerivAt_of_isBigO_rpow
    (K.cutoff_locallyIntegrable T) (K.cutoff_bigO_top T)
    (s := 1-z) (by simp only [Complex.sub_re, Complex.one_re]; linarith)
    (K.cutoff_bigO_zero hT (-z.re))
    (by simp only [Complex.sub_re, Complex.one_re]; linarith)
  have hlin : HasDerivAt (fun w : ℂ => 1-w) (-1) z := by
    simpa using (hasDerivAt_const z (1 : ℂ)).sub (hasDerivAt_id z)
  have h := hm.2.comp z hlin
  have he : (fun w : ℂ => mellin (K.cutoff T) (1-w)) = fun w => K.tail w T :=
    funext (K.mellin_cutoff hT)
  rw [he, K.mellin_log_cutoff hT] at h
  simpa only [mul_neg_one] using h

lemma logIntegrand_bound (K : BoundedKernel) {T σ : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hz : σ ≤ z.re) {t : ℝ} (ht : T < t) :
    ‖K.logIntegrand z t‖ ≤ K.bound * t ^ (-(σ-1)) := by
  have ht1 : 1 ≤ t := hT.trans ht.le
  have ht0 : 0 < t := zero_lt_one.trans_le ht1
  have hl : |Real.log t| ≤ t := by
    rw [abs_of_nonneg (Real.log_nonneg ht1)]
    linarith [Real.log_le_sub_one_of_pos ht0]
  rw [logIntegrand, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos ht0, Complex.neg_re]
  calc
    _ ≤ t * (K.bound * t ^ (-σ)) :=
      mul_le_mul hl (mul_le_mul (K.norm_le t)
        (Real.rpow_le_rpow_of_exponent_le ht1 (neg_le_neg hz))
        (Real.rpow_nonneg ht0.le _) K.bound_nonneg) (by positivity) ht0.le
    _ = K.bound * t ^ (-(σ-1)) := by
      rw [mul_left_comm, ← Real.rpow_one t, ← Real.rpow_add ht0]
      congr 1
      ring

lemma logIntegrand_integrable (K : BoundedKernel) {T σ : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hσ : 2 < σ) (hz : σ ≤ z.re) :
    IntegrableOn (K.logIntegrand z) (Ioi T) := by
  have ht0 : 0 < T := zero_lt_one.trans_le hT
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(σ-1))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) ht0
  have hlog : ContinuousOn (fun t : ℝ => (Real.log t : ℂ)) (Ioi T) := by
    intro t ht
    exact (Complex.continuous_ofReal.continuousAt.comp
      (Real.continuousAt_log (ht0.trans ht).ne')).continuousWithinAt
  have hi := K.integrand_integrable hT (by linarith : 1 < z.re)
  apply (hp.const_mul K.bound).mono'
    ((hlog.aestronglyMeasurable measurableSet_Ioi).mul hi.aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact K.logIntegrand_bound hT hz ht

/-- A deliberately elementary logarithm bound; its lost cutoff power is explicit. -/
theorem logTail_norm_le (K : BoundedKernel) {T σ : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hσ : 2 < σ) (hz : σ ≤ z.re) :
    ‖K.logTail z T‖ ≤ K.bound * (T ^ (-(σ-2)) / (σ-2)) := by
  have hi := K.logIntegrand_integrable hT hσ hz
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(σ-1))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (zero_lt_one.trans_le hT)
  calc
    ‖K.logTail z T‖ ≤ ∫ t : ℝ in Ioi T, ‖K.logIntegrand z t‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, K.bound * t ^ (-(σ-1)) := by
      apply integral_mono_ae hi.norm (hp.const_mul K.bound)
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact K.logIntegrand_bound hT hz ht
    _ = _ := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ-1) < -1) (zero_lt_one.trans_le hT),
        show -(σ-1)+1 = -(σ-2) by ring, neg_div_neg_eq]

end BoundedKernel
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinPrimitiveStep
```
