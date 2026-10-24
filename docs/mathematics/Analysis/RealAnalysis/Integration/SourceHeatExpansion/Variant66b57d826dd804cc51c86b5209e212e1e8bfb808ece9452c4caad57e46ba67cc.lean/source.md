# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceHeatExpansion.Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2900e246d8cace336edf4924e96672d0a59d216` · SHA-256 `09f81833358f101a793284cc80bebd24b2c4e279b5089cb08213a44985647c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.NegExpPolynomial.Variant3fbf53864c64d503fa2b114e46132e0cc727fae474cc1a52c772ccb6db58a7cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fbf53864c64d503fa2b114e46132e0cc727fae474cc1a52c772ccb6db58a7cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.NegExpPolynomial.Variant3fbf53864c64d503fa2b114e46132e0cc727fae474cc1a52c772ccb6db58a7cd","mathematical_subject":"Analysis.Integration","original_sha256":"3fbf53864c64d503fa2b114e46132e0cc727fae474cc1a52c772ccb6db58a7cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceHeatExpansion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSignedHeat
import Mathlib.Analysis.Calculus.Taylor
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
/-!
# Finite signed heat approximation with a paid sharp tail

Research direction: grwtsk contributors. Paper derivation in the supplied
study; native formal construction: OpenAI Codex, 7 October 2026. The tail
retains its absolute high moment and is not claimed uniform in source scale.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.NegExpPolynomial.Variant3fbf53864c64d503fa2b114e46132e0cc727fae474cc1a52c772ccb6db58a7cd

set_option autoImplicit false
open Set MeasureTheory
open scoped Interval
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHeatExpansion
open SourceSignedHeat

/-- Degree-`n` Taylor polynomial of the negative exponential at zero. -/
def negExpPolynomial (n : ℕ) (y : ℝ) : ℝ :=
  ∑ i ∈ Finset.range (n + 1), (-1 : ℝ) ^ i * y ^ i / i.factorial

private theorem negExpPolynomial_zero (n : ℕ) : negExpPolynomial n 0 = 1 := by
  unfold negExpPolynomial
  rw [Finset.sum_eq_single 0]
  · simp
  · intro i _ hi
    simp [zero_pow hi]
  · simp

private theorem negExpPolynomial_eq_taylor (n : ℕ) {y : ℝ} (hy : 0 < y) :
    negExpPolynomial n y = taylorWithinEval (fun u => Real.exp (-1 * u)) n (Icc 0 y) 0 y := by
  rw [taylor_within_apply]
  unfold negExpPolynomial
  apply Finset.sum_congr rfl
  intro i _
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc hy)
    (by fun_prop) (left_mem_Icc.mpr hy.le), iteratedDeriv_exp_const_mul]
  simp only [mul_zero, Real.exp_zero, mul_one, sub_zero, smul_eq_mul]
  ring

theorem exp_neg_taylor_bound (n : ℕ) {y : ℝ} (hy : 0 ≤ y) :
    |Real.exp (-y) - negExpPolynomial n y| ≤ y ^ (n + 1) / (n + 1).factorial := by
  rcases eq_or_lt_of_le hy with rfl | hy
  · simp [negExpPolynomial_zero]
  obtain ⟨u, hu, he⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (f := fun u => Real.exp (-1 * u)) (n := n) hy.ne
    (by fun_prop)
  rw [uIoo_of_lt hy] at hu
  rw [uIcc_of_le hy.le, ← negExpPolynomial_eq_taylor n hy, iteratedDeriv_exp_const_mul] at he
  simp only [neg_one_mul, sub_zero] at he
  rw [he, abs_div, abs_mul, abs_mul, abs_pow, abs_neg, abs_one, one_pow,
    one_mul, abs_of_pos (Real.exp_pos _), abs_pow, abs_of_nonneg hy.le,
    Nat.abs_cast]
  apply div_le_div_of_nonneg_right _ (Nat.cast_nonneg _)
  exact mul_le_of_le_one_left (pow_nonneg hy.le _) (Real.exp_le_one_iff.mpr (by linarith [hu.1]))

/-- Degree `N` in the cubic heat expansion gives degree `2*N+3` in the signed symbol. -/
def heatRemainderPolynomial (N : ℕ) (τ x : ℝ) : ℝ :=
  x * (1 - negExpPolynomial (N + 1) (τ * x ^ 2))

/-- The finite approximation is a signed sum of the actual odd powers. -/
theorem heatRemainderPolynomial_eq_sum (N : ℕ) (τ x : ℝ) :
    heatRemainderPolynomial N τ x =
      ∑ j ∈ Finset.range (N + 1),
        (-1 : ℝ) ^ j * τ ^ (j + 1) * x ^ (2 * j + 3) / (j + 1).factorial := by
  unfold heatRemainderPolynomial negExpPolynomial
  rw [Finset.sum_range_succ']
  simp only [pow_zero, mul_one, Nat.factorial_zero, Nat.cast_one, div_one]
  rw [show (1 : ℝ) - ((∑ j ∈ Finset.range (N + 1),
      (-1 : ℝ) ^ (j + 1) * (τ * x ^ 2) ^ (j + 1) / (j + 1).factorial) + 1) =
      -(∑ j ∈ Finset.range (N + 1),
        (-1 : ℝ) ^ (j + 1) * (τ * x ^ 2) ^ (j + 1) / (j + 1).factorial) by ring,
    mul_neg, Finset.mul_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro j _
  have hj : 2 * j + 3 = 2 * (j + 1) + 1 := by omega
  rw [pow_succ (-1 : ℝ) j, mul_pow, ← pow_mul, hj, pow_succ x (2 * (j + 1))]
  ring

/-- Negative exponential derivatives have magnitude at most one,
so the sharp tail needs no exponential inflation. -/
theorem heatRemainderPolynomial_error (N : ℕ) {τ : ℝ} (hτ : 0 ≤ τ) (x : ℝ) :
    |x * (1 - Real.exp (-τ * x ^ 2)) - heatRemainderPolynomial N τ x| ≤
      τ ^ (N + 2) / (N + 2).factorial * |x| ^ (2 * N + 5) := by
  have he := exp_neg_taylor_bound (N + 1) (mul_nonneg hτ (sq_nonneg x))
  have hi : 2 * N + 5 = 2 * (N + 2) + 1 := by omega
  calc
    _ = |x| * |Real.exp (-(τ * x ^ 2)) - negExpPolynomial (N + 1) (τ * x ^ 2)| := by
      unfold heatRemainderPolynomial
      rw [show x * (1 - Real.exp (-τ * x ^ 2)) -
        x * (1 - negExpPolynomial (N + 1) (τ * x ^ 2)) =
        -x * (Real.exp (-(τ * x ^ 2)) - negExpPolynomial (N + 1) (τ * x ^ 2)) by
          simp only [neg_mul]
          ring]
      rw [abs_mul, abs_neg]
    _ ≤ |x| * ((τ * x ^ 2) ^ (N + 2) / (N + 2).factorial) :=
      mul_le_mul_of_nonneg_left he (abs_nonneg x)
    _ = _ := by
      rw [← sq_abs x, mul_pow, ← pow_mul, hi, pow_succ (|x|) (2 * (N + 2))]
      ring

/-- Generic integration adapter: all three integrability obligations are explicit. -/
theorem integral_heatRemainderPolynomial_error {α : Type*} [MeasurableSpace α]
    (μ : Measure α) (k : α → ℝ) (N : ℕ) {τ : ℝ} (hτ : 0 ≤ τ)
    (hr : Integrable (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) μ)
    (hp : Integrable (fun x => heatRemainderPolynomial N τ (k x)) μ)
    (hm : Integrable (fun x => |k x| ^ (2 * N + 5)) μ) :
    |(∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ) -
      (∫ x, heatRemainderPolynomial N τ (k x) ∂μ)| ≤
        τ ^ (N + 2) / (N + 2).factorial * (∫ x, |k x| ^ (2 * N + 5) ∂μ) := by
  rw [← integral_sub hr hp]
  calc
    _ ≤ ∫ x, |k x * (1 - Real.exp (-τ * k x ^ 2)) - heatRemainderPolynomial N τ (k x)| ∂μ := by
      simpa only [Real.norm_eq_abs] using
        (norm_integral_le_integral_norm (μ := μ)
          (fun x => k x * (1 - Real.exp (-τ * k x ^ 2)) - heatRemainderPolynomial N τ (k x)))
    _ ≤ ∫ x, (τ ^ (N + 2) / (N + 2).factorial) * |k x| ^ (2 * N + 5) ∂μ := by
      apply integral_mono (hr.sub hp).abs (hm.const_mul _)
      intro x
      exact heatRemainderPolynomial_error N hτ (k x)
    _ = _ := integral_const_mul _ _

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsFiniteMeasure μ]
    {k : α → ℝ} {M : ℝ}

private theorem absolutePower_integrable (hk : Measurable k) (_hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (p : ℕ) : Integrable (fun x => |k x| ^ p) μ := by
  apply (integrable_const (M ^ p)).mono'
  · fun_prop
  · exact ae_of_all _ (fun x => by
      rw [Real.norm_of_nonneg (pow_nonneg (abs_nonneg _) _)]
      exact pow_le_pow_left₀ (abs_nonneg _) (hb x) p)

private theorem heatRemainder_integrable (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (τ : ℝ) :
    Integrable (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) μ := by
  have hi : Integrable k μ := by
    simpa only [neg_zero, zero_mul, Real.exp_zero, mul_one] using
      signedHeat_integrable hk hM hb (μ := μ) 0
  apply (hi.sub (signedHeat_integrable hk hM hb τ)).congr
  exact ae_of_all _ (fun x => by dsimp only [Pi.sub_apply]; ring)

/-- Bounded fixed-scale symbols discharge the analytic integrability gates automatically. -/
theorem signedHeatRemainder_polynomial_error (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (N : ℕ) {τ : ℝ} (hτ : 0 ≤ τ) :
    |signedHeatRemainder μ k τ - (∫ x, heatRemainderPolynomial N τ (k x) ∂μ)| ≤
      τ ^ (N + 2) / (N + 2).factorial * (∫ x, |k x| ^ (2 * N + 5) ∂μ) := by
  have hr := heatRemainder_integrable hk hM hb (μ := μ) τ
  have hm := absolutePower_integrable hk hM hb (μ := μ) (2 * N + 5)
  have he : Integrable (fun x => k x * (1 - Real.exp (-τ * k x ^ 2)) -
      heatRemainderPolynomial N τ (k x)) μ := by
    apply (hm.const_mul (τ ^ (N + 2) / (N + 2).factorial)).mono'
    · unfold heatRemainderPolynomial negExpPolynomial
      fun_prop
    · exact ae_of_all _ (fun x => by
        simpa only [Real.norm_eq_abs] using heatRemainderPolynomial_error N hτ (k x))
  have hp : Integrable (fun x => heatRemainderPolynomial N τ (k x)) μ := by
    apply (hr.sub he).congr
    exact ae_of_all _ (fun x => by dsimp only [Pi.sub_apply]; ring)
  have hi : Integrable k μ := by
    simpa only [neg_zero, zero_mul, Real.exp_zero, mul_one] using
      signedHeat_integrable hk hM hb (μ := μ) 0
  have heq : (∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ) =
      signedHeatRemainder μ k τ := by
    have hd := signedHeat_decomposition hk hM hb (μ := μ) hτ
    have hx : (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) =
        fun x => k x - k x * Real.exp (-τ * k x ^ 2) := by funext x; ring
    rw [hx, integral_sub hi (signedHeat_integrable hk hM hb τ)]
    unfold signedHeat at hd
    linarith
  rw [← heq]
  exact integral_heatRemainderPolynomial_error μ k N hτ hr hp hm

/-- The displayed paper tail bound applies to the complete signed source
at each fixed arithmetic scale. -/
theorem sourceHeatRemainder_polynomial_error (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    {τ : ℝ} (hτ : 0 ≤ τ) :
    |sourceHeatRemainder A τ -
      (∫ ξ, heatRemainderPolynomial N τ
        (SourceCompensatedFourier.compensatedFourierSymbol A ξ) ∂sourceProbabilityMeasure A)| ≤
      τ ^ (N + 2) / (N + 2).factorial *
        (∫ ξ, |SourceCompensatedFourier.compensatedFourierSymbol A ξ| ^ (2 * N + 5)
          ∂sourceProbabilityMeasure A) := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  exact signedHeatRemainder_polynomial_error (compensatedFourierSymbol_measurable A)
    (sourceSymbolBound_nonneg A) (compensatedFourierSymbol_abs_le A) N hτ

end FormalResearch.RiemannHypothesis.SourceHeatExpansion
```
