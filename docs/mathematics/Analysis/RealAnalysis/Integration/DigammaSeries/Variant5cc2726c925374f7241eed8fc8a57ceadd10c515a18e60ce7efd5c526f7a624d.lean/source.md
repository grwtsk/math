# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.DigammaSeries.Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a137138042801b801618e03a55b5b53cdd321ed8` · SHA-256 `9a2dd1c24130d21d211a475387735e3297f0cc27dd7d45a28c672cdfbfd57d22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.AddNatNeZero.Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.AddNatNeZero.Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337","mathematical_subject":"Analysis.Integration","original_sha256":"f9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/Analysis/DigammaSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Topology.Algebra.InfiniteSum.ENNReal

/-!
# Euler approximation and the actual digamma difference series

The finite approximants here are Mathlib's `Complex.GammaSeq`, and the limiting
function is Mathlib's `Complex.Gamma`. No replacement special function is defined.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.AddNatNeZero.Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337

noncomputable section

open Complex Filter Set MeasureTheory
open scoped Topology BigOperators

namespace FormalResearch.Analysis.DigammaSeries

private theorem add_nat_ne_zero {z : ℂ} (hz : 0 < z.re) (n : ℕ) : z + n ≠ 0 := by
  intro h
  have h' := congrArg Complex.re h
  simp only [Complex.add_re, Complex.natCast_re, Complex.zero_re] at h'
  have : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  linarith

/-- The finite Euler approximant is differentiable on the positive half-plane. -/
theorem differentiableAt_gammaSeq {z : ℂ} (hz : 0 < z.re) {n : ℕ} (hn : n ≠ 0) :
    DifferentiableAt ℂ (fun w ↦ Complex.GammaSeq w n) z := by
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn
  unfold Complex.GammaSeq
  apply DifferentiableAt.div
  · exact (differentiableAt_id.const_cpow (Or.inl hnC)).mul_const _
  · fun_prop
  · exact Finset.prod_ne_zero_iff.mpr fun j _ ↦ add_nat_ne_zero hz j

/-- The logarithmic derivative of an actual finite Euler approximant. -/
theorem logDeriv_gammaSeq {z : ℂ} (hz : 0 < z.re) {n : ℕ} (hn : n ≠ 0) :
    logDeriv (fun w ↦ Complex.GammaSeq w n) z =
      Complex.log n - ∑ j ∈ Finset.range (n + 1), (z + j)⁻¹ := by
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn
  have hf : (n.factorial : ℂ) ≠ 0 := by exact_mod_cast n.factorial_ne_zero
  have hp : (∏ j ∈ Finset.range (n + 1), (z + j)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun j _ ↦ add_nat_ne_zero hz j
  unfold Complex.GammaSeq
  rw [logDeriv_div (f := fun w : ℂ ↦ (n : ℂ) ^ w * n.factorial)
    (g := fun w : ℂ ↦ ∏ j ∈ Finset.range (n + 1), (w + j)) z
    (mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (Or.inl hnC)) hf) hp
    ((differentiableAt_id.const_cpow (Or.inl hnC)).mul_const _)
    (by fun_prop), logDeriv_mul_const _ _ hf]
  rw [logDeriv_prod (fun j _ ↦ add_nat_ne_zero hz j) (by intros; fun_prop)]
  have hder : logDeriv (fun w : ℂ ↦ (n : ℂ) ^ w) z = Complex.log n := by
    rw [logDeriv_apply, (Complex.hasStrictDerivAt_const_cpow (Or.inl hnC)).hasDerivAt.deriv]
    exact mul_div_cancel_left₀ _ (Complex.cpow_ne_zero_iff.mpr (Or.inl hnC))
  rw [hder]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  simp [logDeriv_apply]

/-- The real reciprocal difference is the source's positive kernel, including `b = 0`. -/
theorem reciprocal_difference {x : ℝ} (hx : 0 < x) (b : ℝ) :
    ((x : ℂ)⁻¹ - ((x : ℂ) + b * Complex.I)⁻¹).re =
      b ^ 2 / (x * (x ^ 2 + b ^ 2)) := by
  have hx0 : x ≠ 0 := ne_of_gt hx
  have hden : x ^ 2 + b ^ 2 ≠ 0 := ne_of_gt (by positivity)
  simp only [Complex.sub_re, Complex.inv_re, Complex.normSq_apply,
    Complex.ofReal_re, Complex.ofReal_im, Complex.add_re, Complex.add_im,
    Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im]
  simp only [mul_zero, mul_one, sub_zero, add_zero, zero_add]
  field_simp
  ring

/-- The exact finite Euler logarithmic-derivative difference. -/
theorem gammaSeq_difference {a : ℝ} (ha : 0 < a) (b : ℝ) {n : ℕ} (hn : n ≠ 0) :
    (logDeriv (fun w ↦ Complex.GammaSeq w n) (a + b * Complex.I) -
      logDeriv (fun w ↦ Complex.GammaSeq w n) a).re =
      ∑ j ∈ Finset.range (n + 1),
        b ^ 2 / ((a + j) * ((a + j) ^ 2 + b ^ 2)) := by
  have hab : 0 < ((a : ℂ) + b * Complex.I).re := by simpa using ha
  rw [logDeriv_gammaSeq hab hn, logDeriv_gammaSeq (by simpa using ha) hn]
  rw [sub_sub_sub_cancel_left, ← Finset.sum_sub_distrib, Complex.re_sum]
  apply Finset.sum_congr rfl
  intro j _
  convert reciprocal_difference (show 0 < a + (j : ℝ) by positivity) b using 1
  push_cast
  congr 2
  ring

/-- The real scalar Euler kernel on the positive integration half-line. -/
def eulerKernel (n : ℕ) (x : ℝ) : ℝ :=
  (Ioc 0 (n : ℝ)).indicator (fun t ↦ (1 - t / n) ^ n) x

private theorem eulerKernel_nonneg (n : ℕ) {x : ℝ} (_hx : 0 < x) :
    0 ≤ eulerKernel n x := by
  unfold eulerKernel
  by_cases h : x ∈ Ioc 0 (n : ℝ)
  · rw [indicator_of_mem h]
    exact pow_nonneg (sub_nonneg.mpr (div_le_one_of_le₀ h.2 (by positivity))) _
  · rw [indicator_of_notMem h]

private theorem eulerKernel_le (n : ℕ) (x : ℝ) :
    eulerKernel n x ≤ Real.exp (-x) := by
  unfold eulerKernel
  by_cases h : x ∈ Ioc 0 (n : ℝ)
  · rw [indicator_of_mem h]
    exact Real.one_sub_div_pow_le_exp_neg h.2
  · rw [indicator_of_notMem h]
    exact (Real.exp_pos _).le

private theorem eulerKernel_tendsto (x : ℝ) (hx : 0 < x) :
    Tendsto (fun n : ℕ ↦ eulerKernel n x) atTop (𝓝 (Real.exp (-x))) := by
  apply (Real.tendsto_one_add_div_pow_exp (-x)).congr'
  filter_upwards [eventually_ge_atTop ⌈x⌉₊] with n hn
  have hxn : x ≤ (n : ℝ) := Nat.ceil_le.mp hn
  simp [eulerKernel, indicator_of_mem (show x ∈ Ioc 0 (n : ℝ) from ⟨hx, hxn⟩),
    neg_div, sub_eq_add_neg]

private theorem eulerKernel_measurable (n : ℕ) : Measurable (eulerKernel n) := by
  exact (by fun_prop : Measurable (fun x : ℝ ↦ (1 - x / n) ^ n)).indicator measurableSet_Ioc

private theorem euler_integrand_integrable {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    MeasureTheory.IntegrableOn
      (fun x : ℝ ↦ (eulerKernel n x : ℂ) * (x : ℂ) ^ (z - 1)) (Ioi 0) := by
  apply (Complex.GammaIntegral_convergent hz).norm.mono'
  · apply MeasureTheory.AEStronglyMeasurable.mul
    · exact (Complex.continuous_ofReal.measurable.comp
        (eulerKernel_measurable n)).aestronglyMeasurable
    · exact (by fun_prop : Measurable (fun x : ℝ ↦ (x : ℂ) ^ (z - 1))).aestronglyMeasurable
  · apply (MeasureTheory.ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with x hx
    rw [norm_mul, Complex.norm_of_nonneg (eulerKernel_nonneg n hx), norm_mul,
      Complex.norm_of_nonneg (Real.exp_pos _).le]
    exact mul_le_mul_of_nonneg_right (eulerKernel_le n x) (norm_nonneg _)

private theorem gammaSeq_integral {z : ℂ} (hz : 0 < z.re) {n : ℕ} (hn : n ≠ 0) :
    Complex.GammaSeq z n =
      ∫ x : ℝ in Ioi 0, (eulerKernel n x : ℂ) * (x : ℂ) ^ (z - 1) := by
  rw [Complex.GammaSeq_eq_approx_Gamma_integral hz hn]
  have heq : (fun x : ℝ ↦ (eulerKernel n x : ℂ) * (x : ℂ) ^ (z - 1)) =
      (Ioc 0 (n : ℝ)).indicator
        (fun x : ℝ ↦ ((1 - x / n) ^ n : ℂ) * (x : ℂ) ^ (z - 1)) := by
    ext x
    by_cases hx : x ∈ Ioc 0 (n : ℝ) <;> simp [eulerKernel, hx]
  rw [heq, MeasureTheory.integral_indicator measurableSet_Ioc,
    MeasureTheory.Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self,
    intervalIntegral.integral_of_le (by positivity : (0 : ℝ) ≤ n)]
  congr 1
  ext x
  push_cast
  rfl

/-- A uniform, integrable error majorant for a closed positive real-part strip. -/
def errorEnvelope (n : ℕ) (a b x : ℝ) : ℝ :=
  (Real.exp (-x) - eulerKernel n x) * (x ^ (a - 1) + x ^ (b - 1))

private theorem errorEnvelope_bound (n : ℕ) (a b : ℝ) {x : ℝ} (hx : 0 < x) :
    ‖errorEnvelope n a b x‖ ≤
      Real.exp (-x) * x ^ (a - 1) + Real.exp (-x) * x ^ (b - 1) := by
  have he : 0 ≤ Real.exp (-x) - eulerKernel n x := sub_nonneg.mpr (eulerKernel_le n x)
  have hp : 0 ≤ x ^ (a - 1) + x ^ (b - 1) := by positivity
  rw [errorEnvelope, Real.norm_eq_abs, abs_of_nonneg (mul_nonneg he hp), ← mul_add]
  exact mul_le_mul_of_nonneg_right (sub_le_self _ (eulerKernel_nonneg n hx)) hp

private theorem errorEnvelope_integrable {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (n : ℕ) :
    IntegrableOn (errorEnvelope n a b) (Ioi 0) := by
  apply ((Real.GammaIntegral_convergent ha).add (Real.GammaIntegral_convergent hb)).mono'
  · have hm : Measurable (errorEnvelope n a b) := by
      unfold errorEnvelope
      exact ((by fun_prop : Measurable (fun x : ℝ ↦ Real.exp (-x))).sub
        (eulerKernel_measurable n)).mul (by fun_prop)
    exact hm.aestronglyMeasurable
  · apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with x hx
    exact errorEnvelope_bound n a b hx

private theorem errorEnvelope_integral_tendsto {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    Tendsto (fun n : ℕ ↦ ∫ x : ℝ in Ioi 0, errorEnvelope n a b x) atTop (𝓝 0) := by
  have ht := tendsto_integral_of_dominated_convergence
    (fun x : ℝ ↦ Real.exp (-x) * x ^ (a - 1) + Real.exp (-x) * x ^ (b - 1))
    (fun n ↦ (errorEnvelope_integrable ha hb n).aestronglyMeasurable)
    ((Real.GammaIntegral_convergent ha).add (Real.GammaIntegral_convergent hb))
    (fun n ↦ (ae_restrict_iff' measurableSet_Ioi).mpr (ae_of_all _ fun x hx ↦
      errorEnvelope_bound n a b hx))
    (f := fun _ ↦ (0 : ℝ)) ?_
  · simpa using ht
  · apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with x hx
    simpa [errorEnvelope] using
      ((tendsto_const_nhds (x := Real.exp (-x))).sub (eulerKernel_tendsto x hx)).mul_const
        (x ^ (a - 1) + x ^ (b - 1))

private theorem rpow_strip_bound {a b r x : ℝ} (hx : 0 < x) (ha : a ≤ r) (hb : r ≤ b) :
    x ^ (r - 1) ≤ x ^ (a - 1) + x ^ (b - 1) := by
  rcases le_total x 1 with h | h
  · exact (Real.rpow_le_rpow_of_exponent_ge hx h (by linarith)).trans
      (le_add_of_nonneg_right (by positivity))
  · exact (Real.rpow_le_rpow_of_exponent_le h (by linarith)).trans
      (le_add_of_nonneg_left (by positivity))

private theorem gammaSeq_error_bound {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    {z : ℂ} (hza : a ≤ z.re) (hzb : z.re ≤ b) {n : ℕ} (hn : n ≠ 0) :
    ‖Complex.Gamma z - Complex.GammaSeq z n‖ ≤
      ∫ x : ℝ in Ioi 0, errorEnvelope n a b x := by
  have hz : 0 < z.re := ha.trans_le hza
  rw [Complex.Gamma_eq_integral hz, Complex.GammaIntegral, gammaSeq_integral hz hn,
    ← integral_sub (Complex.GammaIntegral_convergent hz) (euler_integrand_integrable hz n)]
  apply norm_integral_le_of_norm_le (errorEnvelope_integrable ha hb n)
  apply (ae_restrict_iff' measurableSet_Ioi).mpr
  filter_upwards with x hx
  rw [← sub_mul, ← Complex.ofReal_sub, norm_mul,
    Complex.norm_of_nonneg (sub_nonneg.mpr (eulerKernel_le n x)),
    Complex.norm_cpow_eq_rpow_re_of_pos hx, Complex.sub_re, Complex.one_re]
  exact mul_le_mul_of_nonneg_left (rpow_strip_bound hx hza hzb)
    (sub_nonneg.mpr (eulerKernel_le n x))

/-- Euler's finite Gamma approximants converge uniformly on every positive real-part
    strip, including unbounded imaginary coordinate; the error bound is independent of it. -/
theorem gammaSeq_uniformly_on_strip {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    TendstoUniformlyOn (fun n z ↦ Complex.GammaSeq z n) Complex.Gamma atTop
      {z : ℂ | a ≤ z.re ∧ z.re ≤ b} := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro ε hε
  have ht := (errorEnvelope_integral_tendsto ha hb).eventually (gt_mem_nhds hε)
  filter_upwards [ht, eventually_ne_atTop 0] with n hn hn0
  intro z hz
  rw [dist_eq_norm]
  exact (gammaSeq_error_bound ha hb hz.1 hz.2 hn0).trans_lt hn

/-- The genuine locally uniform Euler Gamma limit on the positive half-plane. -/
theorem gammaSeq_locally_uniform :
    TendstoLocallyUniformlyOn (fun n z ↦ Complex.GammaSeq z n)
      Complex.Gamma atTop {z : ℂ | 0 < z.re} := by
  apply tendstoLocallyUniformlyOn_of_forall_exists_nhds
  intro z hz
  change 0 < z.re at hz
  let a : ℝ := z.re / 2
  let b : ℝ := z.re + 1
  refine ⟨{w : ℂ | a ≤ w.re ∧ w.re ≤ b}, ?_, gammaSeq_uniformly_on_strip ?_ ?_⟩
  · apply mem_nhdsWithin_of_mem_nhds
    have ha : a < z.re := by dsimp [a]; linarith
    have hb : z.re < b := by dsimp [b]; linarith
    exact (Complex.continuous_re.continuousAt.eventually (Icc_mem_nhds ha hb))
  · dsimp [a]; linarith
  · dsimp [b]; linarith

/-- The derivative-limit proposition needed to transfer Euler approximation to the actual
    special function. Pointwise convergence alone would be insufficient; it is proved below. -/
def EulerDerivativeLimit : Prop :=
  ∀ z : ℂ, 0 < z.re →
    Tendsto (fun n : ℕ ↦ deriv (fun w ↦ Complex.GammaSeq w n) z) atTop
      (𝓝 (deriv Complex.Gamma z))

/-- A derivative limit and the independently established Euler function limit give
    the actual logarithmic-derivative limit. -/
theorem logDeriv_tendsto_of_derivative_limit (h : EulerDerivativeLimit)
    {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun n : ℕ ↦ logDeriv (fun w ↦ Complex.GammaSeq w n) z) atTop
      (𝓝 (Complex.digamma z)) := by
  exact (h z hz).div (Complex.GammaSeq_tendsto_Gamma z)
    (Complex.Gamma_ne_zero_of_re_pos hz)

/-- Locally uniform Euler approximation transfers to a genuine derivative limit. -/
theorem derivative_limit_of_locally_uniform
    (h : TendstoLocallyUniformlyOn (fun n z ↦ Complex.GammaSeq z n)
      Complex.Gamma atTop {z : ℂ | 0 < z.re}) : EulerDerivativeLimit := by
  intro z hz
  have hd : ∀ᶠ n : ℕ in atTop,
      DifferentiableOn ℂ (fun w ↦ Complex.GammaSeq w n) {z : ℂ | 0 < z.re} := by
    filter_upwards [eventually_ne_atTop 0] with n hn
    intro w hw
    exact (differentiableAt_gammaSeq hw hn).differentiableWithinAt
  exact (h.deriv hd (isOpen_lt continuous_const Complex.continuous_re)).tendsto_at hz

/-- The manuscript's real digamma difference series follows from the named derivative
    limit; this conditional interface retains its input explicitly. -/
theorem hasSum_difference_of_derivative_limit (h : EulerDerivativeLimit)
    {a : ℝ} (ha : 0 < a) (b : ℝ) :
    HasSum (fun n : ℕ ↦ b ^ 2 / ((a + n) * ((a + n) ^ 2 + b ^ 2)))
      ((Complex.digamma (a + b * Complex.I)).re - (Complex.digamma a).re) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg (fun n ↦ by positivity) _).mpr
  apply (tendsto_add_atTop_iff_nat 1).mp
  have hab : 0 < ((a : ℂ) + b * Complex.I).re := by simpa using ha
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    ((logDeriv_tendsto_of_derivative_limit h hab).sub
      (logDeriv_tendsto_of_derivative_limit h (z := (a : ℂ)) (by simpa using ha)))
  simp only [Complex.sub_re] at ht
  apply ht.congr'
  filter_upwards [eventually_ne_atTop 0] with n hn
  exact gammaSeq_difference ha b hn

/-- Euler approximation converges after differentiation, proved from its locally uniform
    positive-half-plane convergence. -/
theorem euler_derivative_limit : EulerDerivativeLimit :=
  derivative_limit_of_locally_uniform gammaSeq_locally_uniform

/-- The exact real difference series for Mathlib's actual digamma function. -/
theorem hasSum_difference {a : ℝ} (ha : 0 < a) (b : ℝ) :
    HasSum (fun n : ℕ ↦ b ^ 2 / ((a + n) * ((a + n) ^ 2 + b ^ 2)))
      ((Complex.digamma (a + b * Complex.I)).re - (Complex.digamma a).re) :=
  hasSum_difference_of_derivative_limit euler_derivative_limit ha b

end FormalResearch.Analysis.DigammaSeries
```
