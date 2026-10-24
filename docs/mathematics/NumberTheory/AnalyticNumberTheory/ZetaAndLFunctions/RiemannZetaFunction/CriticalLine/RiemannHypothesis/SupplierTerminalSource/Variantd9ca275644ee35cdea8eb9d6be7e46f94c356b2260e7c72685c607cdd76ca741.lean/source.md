# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SupplierTerminalSource.Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e83e4b73a439e8d3aa048d9226b6862e319b56f` · SHA-256 `d9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Uniform endpoint positivity for the prescribed supplier source

Research direction: grwtsk contributors.
Formal implementation: OpenAI Codex.

This module proves positivity of the exact endpoint polynomial and its inward
derivative for every real scale `A ≥ 1`.  The polynomial is transported to the
repository's unchanged normalized source, including its actual normalization.
These source results do not assert the open signed arithmetic supplier.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.SupplierTerminalSource

open MeasureTheory Set
open scoped BigOperators Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- Exact endpoint polynomial, with `u = 1/A`; the normalization is retained
separately by `endpointDenominator`. -/
def endpointPolynomial (u y : ℝ) : ℝ :=
  y ^ 2 * (2 - u * y) ^ 2 *
    (8 * (7 * (1 - u * y) ^ 2 - 1) - y ^ 2 * (2 - u * y) ^ 2 / 4)

/-- The ordinary inward derivative of the endpoint polynomial. -/
def endpointDerivative (u y : ℝ) : ℝ :=
  y * (2 - u * y) * (1 - u * y) *
    (192 - 672 * (u * y) + 336 * (u * y) ^ 2 -
      2 * y ^ 2 * (2 - u * y) ^ 2)

/-- The expanded endpoint coefficients are precisely those of the fixed bump. -/
theorem endpointPolynomial_expansion (u y : ℝ) :
    endpointPolynomial u y =
      192 * y ^ 2 - 640 * u * y ^ 3 +
      (720 * u ^ 2 - 4) * y ^ 4 +
      (8 * u - 336 * u ^ 3) * y ^ 5 +
      (56 * u ^ 4 - 6 * u ^ 2) * y ^ 6 +
      2 * u ^ 3 * y ^ 7 - u ^ 4 * y ^ 8 / 4 := by
  dsimp [endpointPolynomial]
  ring

/-- The expanded derivative retains every coefficient. -/
theorem endpointDerivative_expansion (u y : ℝ) :
    endpointDerivative u y =
      384 * y - 1920 * u * y ^ 2 +
      (2880 * u ^ 2 - 16) * y ^ 3 +
      (40 * u - 1680 * u ^ 3) * y ^ 4 +
      (336 * u ^ 4 - 36 * u ^ 2) * y ^ 5 +
      14 * u ^ 3 * y ^ 6 - 2 * u ^ 4 * y ^ 7 := by
  dsimp [endpointDerivative]
  ring

/-- The displayed inward derivative is proved by ordinary differentiation. -/
theorem endpointPolynomial_hasDerivAt (u y : ℝ) :
    HasDerivAt (endpointPolynomial u) (endpointDerivative u y) y := by
  have hy := hasDerivAt_id y
  have hz := hy.const_mul u
  have hp := (hasDerivAt_const y (2 : ℝ)).sub hz
  have hr := (hasDerivAt_const y (1 : ℝ)).sub hz
  have hb := (((hr.pow 2).const_mul 7).sub (hasDerivAt_const y (1 : ℝ))).const_mul 8
  have h := ((hy.pow 2).mul (hp.pow 2)).mul
    (hb.sub (((hy.pow 2).mul (hp.pow 2)).div_const 4))
  convert h using 1 <;> try rfl
  dsimp [endpointDerivative]
  ring

private theorem endpoint_bounds {u y : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) :
    0 ≤ u * y ∧ u * y ≤ 1 / 8 ∧
      y ^ 2 * (2 - u * y) ^ 2 ≤ 1 ∧
      (1 / 2 : ℝ) ≤ (1 - u * y) ^ 2 := by
  have hz0 : 0 ≤ u * y := mul_nonneg hu0 hy0
  have hz8 : u * y ≤ 1 / 8 := by nlinarith
  have hy2 : y ^ 2 ≤ (1 / 64 : ℝ) := by nlinarith
  have hp2 : (2 - u * y) ^ 2 ≤ (4 : ℝ) := by nlinarith
  have hprod : y ^ 2 * (2 - u * y) ^ 2 ≤ 1 := by
    calc
      y ^ 2 * (2 - u * y) ^ 2 ≤ (1 / 64 : ℝ) * 4 := by gcongr
      _ ≤ 1 := by norm_num
  have hr2 : (1 / 2 : ℝ) ≤ (1 - u * y) ^ 2 := by nlinarith
  exact ⟨hz0, hz8, hprod, hr2⟩

/-- Uniform positivity is an exact real inequality, with no sampled grid. -/
theorem endpointPolynomial_pos {u y : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1)
    (hy0 : 0 < y) (hy8 : y ≤ 1 / 8) : 0 < endpointPolynomial u y := by
  obtain ⟨hz0, hz8, hprod, hr2⟩ := endpoint_bounds hu0 hu1 hy0.le hy8
  have hp : 0 < 2 - u * y := by linarith
  have hb : 0 < 8 * (7 * (1 - u * y) ^ 2 - 1) -
      y ^ 2 * (2 - u * y) ^ 2 / 4 := by nlinarith
  exact mul_pos (mul_pos (sq_pos_of_pos hy0) (sq_pos_of_pos hp)) hb

/-- The inward source derivative is uniformly positive on the same real strip. -/
theorem endpointDerivative_pos {u y : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1)
    (hy0 : 0 < y) (hy8 : y ≤ 1 / 8) : 0 < endpointDerivative u y := by
  obtain ⟨hz0, hz8, hprod, hr2⟩ := endpoint_bounds hu0 hu1 hy0.le hy8
  have hp : 0 < 2 - u * y := by linarith
  have hr : 0 < 1 - u * y := by linarith
  have hb : 0 < 192 - 672 * (u * y) + 336 * (u * y) ^ 2 -
      2 * y ^ 2 * (2 - u * y) ^ 2 := by nlinarith [sq_nonneg (u * y)]
  exact mul_pos (mul_pos (mul_pos hy0 hp) hr) hb

/-- The scale and the prescribed source normalization are kept literally. -/
def endpointDenominator (A : ℝ) : ℝ :=
  A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)

theorem endpointDenominator_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < endpointDenominator A := by
  have hp : 0 < A := by linarith
  have hz := source_normalization_pos A hA
  dsimp [endpointDenominator]
  positivity

/-- Exact algebraic transport to the fixed normalized interior. -/
theorem normalizedInterior_endpoint {A y : ℝ} (hA : A ≠ 0) :
    normalizedInterior A (A - y) =
      endpointPolynomial (1 / A) y / endpointDenominator A := by
  dsimp [normalizedInterior, secondInterior, bumpInterior,
    endpointPolynomial, endpointDenominator]
  field_simp
  ring

/-- Exact algebraic transport for the ordinary outward source derivative. -/
theorem normalizedInteriorDerivative_endpoint {A y : ℝ} (hA : A ≠ 0) :
    normalizedInteriorDerivative A (A - y) =
      -endpointDerivative (1 / A) y / endpointDenominator A := by
  dsimp [normalizedInteriorDerivative, thirdInterior, firstInterior,
    endpointDerivative, endpointDenominator]
  field_simp
  ring

private theorem endpoint_mem {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) : A - y ∈ Icc (-A) A := by
  constructor <;> linarith

/-- The actual zero-extended source equals the endpoint polynomial at every
point of the terminal strip; closed cutoffs remain in place. -/
theorem normalizedTest_endpoint {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) :
    normalizedTest explicitSecondDerivative A (A - y) =
      endpointPolynomial (1 / A) y / endpointDenominator A := by
  have hp : 0 < A := by linarith
  rw [normalizedTest_eq_indicator A hp,
    indicator_of_mem (endpoint_mem hA hy0 hy8), normalizedInterior_endpoint hp.ne']

/-- The original source itself is positive, not merely an independent polynomial. -/
theorem normalizedTest_endpoint_pos {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 < y) (hy8 : y ≤ 1 / 8) :
    0 < normalizedTest explicitSecondDerivative A (A - y) := by
  have hp : 0 < A := by linarith
  rw [normalizedTest_endpoint hA hy0.le hy8]
  apply div_pos _ (endpointDenominator_pos hA)
  exact endpointPolynomial_pos (by positivity) ((div_le_one hp).mpr hA) hy0 hy8

/-- Ordinary differentiation through the unchanged closed zero extension. -/
theorem normalizedTest_deriv_endpoint {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) :
    deriv (normalizedTest explicitSecondDerivative A) (A - y) =
      -endpointDerivative (1 / A) y / endpointDenominator A := by
  have hp : 0 < A := by linarith
  rw [normalizedTest_eq_indicator A hp,
    (indicator_hasDerivAt (normalizedInterior_hasDerivAt A)
      (normalizedInterior_frontier A hp) (A - y)).deriv,
    indicator_of_mem (endpoint_mem hA hy0 hy8),
    normalizedInteriorDerivative_endpoint hp.ne']

/-- Its inward derivative has the asserted strict polarity at every real scale. -/
theorem normalizedTest_inward_deriv_endpoint_pos {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 < y) (hy8 : y ≤ 1 / 8) :
    0 < -deriv (normalizedTest explicitSecondDerivative A) (A - y) := by
  have hp : 0 < A := by linarith
  rw [normalizedTest_deriv_endpoint hA hy0.le hy8, neg_div, neg_neg]
  apply div_pos _ (endpointDenominator_pos hA)
  exact endpointDerivative_pos (by positivity) ((div_le_one hp).mpr hA) hy0 hy8

private theorem normalizedTest_deriv_eq_indicator {A : ℝ} (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := by
  rw [normalizedTest_eq_indicator A hA]
  exact funext fun x ↦ (indicator_hasDerivAt (normalizedInterior_hasDerivAt A)
    (normalizedInterior_frontier A hA) x).deriv

private theorem neg_mem_source_iff (A x : ℝ) :
    -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
  simp only [mem_Icc]
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor <;> linarith

/-- The prescribed normalized source is even, including its closed support. -/
theorem normalizedTest_even {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, indicator_of_mem ((neg_mem_source_iff A x).mpr hx)]
    dsimp [normalizedInterior, secondInterior, bumpInterior]
    ring
  · rw [indicator_of_notMem hx,
      indicator_of_notMem (fun hn ↦ hx ((neg_mem_source_iff A x).mp hn))]

/-- Its actual ordinary derivative is odd. -/
theorem normalizedTest_deriv_odd {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (normalizedTest explicitSecondDerivative A) (-x) =
      -deriv (normalizedTest explicitSecondDerivative A) x := by
  rw [normalizedTest_deriv_eq_indicator hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, indicator_of_mem ((neg_mem_source_iff A x).mpr hx)]
    dsimp [normalizedInteriorDerivative, thirdInterior, firstInterior]
    ring
  · rw [indicator_of_notMem hx,
      indicator_of_notMem (fun hn ↦ hx ((neg_mem_source_iff A x).mp hn))]
    simp

private theorem normalizedTest_endpoint_nonneg {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) :
    0 ≤ normalizedTest explicitSecondDerivative A (A - y) := by
  rcases eq_or_lt_of_le hy0 with hy | hy
  · subst y
    rw [normalizedTest_endpoint hA (by norm_num) (by norm_num)]
    simp [endpointPolynomial]
  · exact (normalizedTest_endpoint_pos hA hy hy8).le

private theorem normalizedTest_deriv_endpoint_nonpos {A y : ℝ} (hA : 1 ≤ A)
    (hy0 : 0 ≤ y) (hy8 : y ≤ 1 / 8) :
    deriv (normalizedTest explicitSecondDerivative A) (A - y) ≤ 0 := by
  rcases eq_or_lt_of_le hy0 with hy | hy
  · subst y
    rw [normalizedTest_deriv_endpoint hA (by norm_num) (by norm_num)]
    simp [endpointDerivative]
  · have h := normalizedTest_inward_deriv_endpoint_pos hA hy hy8
    linarith

private theorem terminal_product_polarities {A δ : ℝ} (hA : 1 ≤ A)
    (hδ0 : 0 < δ) (hδ8 : δ ≤ 1 / 8) (x : ℝ) :
    0 ≤ -deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - δ)) ∧
    0 ≤ -deriv (normalizedTest explicitSecondDerivative A) x *
      deriv (normalizedTest explicitSecondDerivative A) (x - (2 * A - δ)) := by
  have hp : 0 < A := by linarith
  by_cases hx : x ∈ Icc (-A) A
  · by_cases hz : x - (2 * A - δ) ∈ Icc (-A) A
    · have hy0 : 0 ≤ A - x := by linarith [hx.2]
      have hy8 : A - x ≤ 1 / 8 := by linarith [hz.1]
      have hw0 : 0 ≤ A + x - (2 * A - δ) := by linarith [hz.1]
      have hw8 : A + x - (2 * A - δ) ≤ 1 / 8 := by linarith [hx.2]
      have hdx : deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 := by
        have h := normalizedTest_deriv_endpoint_nonpos hA hy0 hy8
        simpa only [sub_sub_cancel] using h
      have hqz : 0 ≤ normalizedTest explicitSecondDerivative A (x - (2 * A - δ)) := by
        have h := normalizedTest_endpoint_nonneg hA hw0 hw8
        have he : A - (A + x - (2 * A - δ)) = -(x - (2 * A - δ)) := by ring
        rw [he, normalizedTest_even hp] at h
        exact h
      have hdz : 0 ≤ deriv (normalizedTest explicitSecondDerivative A)
          (x - (2 * A - δ)) := by
        have h := normalizedTest_deriv_endpoint_nonpos hA hw0 hw8
        have he : A - (A + x - (2 * A - δ)) = -(x - (2 * A - δ)) := by ring
        rw [he, normalizedTest_deriv_odd hp] at h
        linarith
      exact ⟨mul_nonneg (neg_nonneg.mpr hdx) hqz,
        mul_nonneg (neg_nonneg.mpr hdx) hdz⟩
    · have hqz : normalizedTest explicitSecondDerivative A (x - (2 * A - δ)) = 0 := by
        rw [normalizedTest_eq_indicator A hp, indicator_of_notMem hz]
      have hdz : deriv (normalizedTest explicitSecondDerivative A)
          (x - (2 * A - δ)) = 0 := by
        rw [normalizedTest_deriv_eq_indicator hp, indicator_of_notMem hz]
      simp [hqz, hdz]
  · have hdx : deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
      rw [normalizedTest_deriv_eq_indicator hp, indicator_of_notMem hx]
    simp [hdx]

/-- The actual first correlation derivative is strictly negative immediately
inside the terminal support endpoint. -/
theorem sourceCorrelation_deriv_terminal_neg {A δ : ℝ} (hA : 1 ≤ A)
    (hδ0 : 0 < δ) (hδ8 : δ ≤ 1 / 8) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - δ) < 0 := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) x *
    normalizedTest explicitSecondDerivative A (x - (2 * A - δ))
  have hc := normalizedTest_contDiff A hp
  have hfcont : Continuous f :=
    (hc.continuous_deriv (by norm_num)).neg.mul
      (hc.continuous.comp (continuous_id.sub continuous_const))
  have hfint : Integrable f := hfcont.integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hp).deriv.neg.mul_right
  have hfnonneg : 0 ≤ f := fun x ↦ (terminal_product_polarities hA hδ0 hδ8 x).1
  have hy0 : 0 < δ / 2 := by linarith
  have hy8 : δ / 2 ≤ 1 / 8 := by linarith
  have hfirst := normalizedTest_inward_deriv_endpoint_pos hA hy0 hy8
  have hsecond := normalizedTest_endpoint_pos hA hy0 hy8
  have hfpoint : 0 < f (A - δ / 2) := by
    dsimp [f]
    have he : A - δ / 2 - (2 * A - δ) = -(A - δ / 2) := by ring
    rw [he, normalizedTest_even hp]
    exact mul_pos hfirst hsecond
  have hi := integral_pos_of_integrable_nonneg_nonzero hfcont hfint hfnonneg hfpoint.ne'
  have he : (∫ x : ℝ, f x) =
      -deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - δ) := by
    rw [SourceCorrelationEnergy.sourceCorrelation_deriv_eq_integral hp]
    simp only [f, neg_mul, integral_neg]
  rw [he] at hi
  linarith

/-- The actual second correlation derivative is strictly positive on the
same terminal strip, using both differentiated source factors. -/
theorem sourceCorrelation_second_deriv_terminal_pos {A δ : ℝ} (hA : 1 ≤ A)
    (hδ0 : 0 < δ) (hδ8 : δ ≤ 1 / 8) :
    0 < deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A - δ) := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) x *
    deriv (normalizedTest explicitSecondDerivative A) (x - (2 * A - δ))
  have hc := (normalizedTest_contDiff A hp).continuous_deriv (by norm_num)
  have hfcont : Continuous f := hc.neg.mul (hc.comp (continuous_id.sub continuous_const))
  have hfint : Integrable f := hfcont.integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hp).deriv.neg.mul_right
  have hfnonneg : 0 ≤ f := fun x ↦ (terminal_product_polarities hA hδ0 hδ8 x).2
  have hy0 : 0 < δ / 2 := by linarith
  have hy8 : δ / 2 ≤ 1 / 8 := by linarith
  have hfirst := normalizedTest_inward_deriv_endpoint_pos hA hy0 hy8
  have hfpoint : 0 < f (A - δ / 2) := by
    dsimp [f]
    have he : A - δ / 2 - (2 * A - δ) = -(A - δ / 2) := by ring
    rw [he, normalizedTest_deriv_odd hp]
    exact mul_pos hfirst hfirst
  have hi := integral_pos_of_integrable_nonneg_nonzero hfcont hfint hfnonneg hfpoint.ne'
  have he : (∫ x : ℝ, f x) =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A - δ) := by
    rw [SourceCorrelationCurvature.sourceCorrelation_second_deriv_eq_integral hp]
    simp only [f, neg_mul, integral_neg]
  rwa [he] at hi

/-- Positivity of the literal derivative combination of the prescribed source. -/
theorem sourcePolarity_terminal_pos {A δ : ℝ} (hA : 1 ≤ A)
    (hδ0 : 0 < δ) (hδ8 : δ ≤ 1 / 8) :
    0 < deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A - δ) -
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - δ) / 2 := by
  have hfirst := sourceCorrelation_deriv_terminal_neg hA hδ0 hδ8
  have hsecond := sourceCorrelation_second_deriv_terminal_pos hA hδ0 hδ8
  linarith

/-- The exact integer inventory and literal polarity expression.  Every
integer from two through the original closed cutoff is retained. -/
def terminalLiteralKernel (A t : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A))
          (t + Real.log (k : ℝ)) -
        deriv (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log (k : ℝ)) / 2)

private theorem sourceCorrelation_deriv_zero_above {A s : ℝ} (hA : 0 < A)
    (hs : 2 * A < s) : deriv (sourceCorrelation explicitSecondDerivative A) s = 0 := by
  have he : sourceCorrelation explicitSecondDerivative A =ᶠ[𝓝 s] fun _ ↦ 0 := by
    filter_upwards [isOpen_Ioi.mem_nhds hs] with x hx
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A x hA
      (le_trans hx.le (le_abs_self x))
  exact ((hasDerivAt_const s (0 : ℝ)).congr_of_eventuallyEq he).deriv

private theorem sourceCorrelation_second_deriv_zero_above {A s : ℝ} (hA : 0 < A)
    (hs : 2 * A < s) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s = 0 := by
  have he : deriv (sourceCorrelation explicitSecondDerivative A) =ᶠ[𝓝 s] fun _ ↦ 0 := by
    filter_upwards [isOpen_Ioi.mem_nhds hs] with x hx
    exact sourceCorrelation_deriv_zero_above hA hx
  exact ((hasDerivAt_const s (0 : ℝ)).congr_of_eventuallyEq he).deriv

private theorem log_three_sub_log_two :
    (1 / 8 : ℝ) < Real.log 3 - Real.log 2 := by
  have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 3 / 2)
  rw [Real.log_div (by norm_num : (3 : ℝ) ≠ 0) (by norm_num : (2 : ℝ) ≠ 0)] at h
  norm_num at h
  linarith

/-- On the terminal strip all original terms except integer two vanish by
proved support, rather than being removed from the definition. -/
theorem terminalLiteralKernel_eq_two {A t : ℝ} (hA : 1 ≤ A)
    (hleft : 2 * A - Real.log 2 - 1 / 8 < t)
    (_hright : t < 2 * A - Real.log 2) :
    terminalLiteralKernel A t =
      Real.log 2 / Real.sqrt 2 *
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log 2) -
          deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log 2) / 2) := by
  have hp : 0 < A := by linarith
  have hcut : 2 ≤ ⌊Real.exp (2 * A)⌋₊ := by
    apply Nat.le_floor
    have h := Real.add_one_le_exp (2 * A)
    norm_num
    linarith
  have hmem : 2 ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ := Finset.mem_Icc.mpr ⟨le_rfl, hcut⟩
  dsimp [terminalLiteralKernel]
  rw [Finset.sum_eq_single 2]
  · norm_num
  · intro k hk hk2
    have hk3 : 3 ≤ k := by have hklo := (Finset.mem_Icc.mp hk).1; omega
    have hlog : Real.log 3 ≤ Real.log (k : ℝ) :=
      Real.log_le_log (by norm_num) (by exact_mod_cast hk3)
    have hs : 2 * A < t + Real.log (k : ℝ) := by
      linarith [log_three_sub_log_two]
    rw [sourceCorrelation_deriv_zero_above hp hs,
      sourceCorrelation_second_deriv_zero_above hp hs]
    simp
  · intro hn
    exact (hn hmem).elim

/-- Uniform positivity of the original literal integer kernel on a fixed-width
terminal strip, including every admissible real scale. -/
theorem terminalLiteralKernel_pos {A t : ℝ} (hA : 1 ≤ A)
    (hleft : 2 * A - Real.log 2 - 1 / 8 < t)
    (hright : t < 2 * A - Real.log 2) : 0 < terminalLiteralKernel A t := by
  rw [terminalLiteralKernel_eq_two hA hleft hright]
  have hδ0 : 0 < 2 * A - (t + Real.log 2) := by linarith
  have hδ8 : 2 * A - (t + Real.log 2) ≤ 1 / 8 := by linarith
  have hpol := sourcePolarity_terminal_pos hA hδ0 hδ8
  have he : 2 * A - (2 * A - (t + Real.log 2)) = t + Real.log 2 := by ring
  rw [he] at hpol
  exact mul_pos (div_pos (Real.log_pos (by norm_num)) (by positivity)) hpol

/-- This terminal positive strip is entirely inside the original reading
window for every `A ≥ 1`. -/
theorem terminal_strip_reading {A t : ℝ} (hA : 1 ≤ A)
    (hleft : 2 * A - Real.log 2 - 1 / 8 < t)
    (hright : t < 2 * A - Real.log 2) : t ∈ Icc (2 * Real.log A) (2 * A) := by
  have hp : 0 < A := by linarith
  have ha := Real.log_le_sub_one_of_pos hp
  have htwo := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlogpos := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  constructor <;> linarith

end FormalResearch.RiemannHypothesis.Conversation.SupplierTerminalSource
```
