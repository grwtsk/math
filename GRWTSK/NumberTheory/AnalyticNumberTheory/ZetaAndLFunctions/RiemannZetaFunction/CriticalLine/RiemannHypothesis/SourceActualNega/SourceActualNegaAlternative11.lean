import SourceActualEdgeLeadingLimit

/-!
A uniform signed interval of the genuine normalized support-edge correlation.
The finite endpoint polynomial, its two true support factors, and the literal
normalization are preserved. This controls a selected negative window, not
its complementary positive windows or the full arithmetic residual.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeCorrelation
open Set MeasureTheory
open SourcePairing SourceActualEdgeLeadingLimit
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation
noncomputable section

private def leadingAntiderivative (u r : ℝ) : ℝ :=
  (36864 * u ^ 2 - 768 * u ^ 4) / 3 * r ^ 3 +
  (-73728 * u + 3072 * u ^ 3) / 4 * r ^ 4 +
  (36864 - 5376 * u ^ 2 + 16 * u ^ 4) / 5 * r ^ 5 +
  (4608 * u - 64 * u ^ 3) / 6 * r ^ 6 +
  (-1536 + 96 * u ^ 2) / 7 * r ^ 7 + (-64 * u) / 8 * r ^ 8 + 16 / 9 * r ^ 9

/-- The actual leading signed overlap has its exact polynomial value. -/
theorem actualLeadingEdgeConvolution_eq (u : ℝ) :
    actualLeadingEdgeConvolution u =
      (8 / 315 : ℝ) * u ^ 5 * (u ^ 4 - 576 * u ^ 2 + 48384) := by
  have hd (r : ℝ) : HasDerivAt (leadingAntiderivative u)
      (actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r)) r := by
    unfold leadingAntiderivative actualLeadingEndpointPolynomial
    have h3 := ((hasDerivAt_id r).pow 3).const_mul ((36864 * u ^ 2 - 768 * u ^ 4) / 3)
    have h4 := ((hasDerivAt_id r).pow 4).const_mul ((-73728 * u + 3072 * u ^ 3) / 4)
    have h5 := ((hasDerivAt_id r).pow 5).const_mul ((36864 - 5376 * u ^ 2 + 16 * u ^ 4) / 5)
    have h6 := ((hasDerivAt_id r).pow 6).const_mul ((4608 * u - 64 * u ^ 3) / 6)
    have h7 := ((hasDerivAt_id r).pow 7).const_mul ((-1536 + 96 * u ^ 2) / 7)
    have h8 := ((hasDerivAt_id r).pow 8).const_mul ((-64 * u) / 8)
    have h9 := ((hasDerivAt_id r).pow 9).const_mul (16 / 9)
    have hh := (((((h3.add h4).add h5).add h6).add h7).add h8).add h9
    convert hh using 1 <;> first | rfl | (norm_num [Pi.add_apply, Pi.pow_apply, id_eq]; ring)
  rw [actualLeadingEdgeConvolution,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun r _ => hd r) (actualLeadingEdgeProduct_intervalIntegrable u)]
  unfold leadingAntiderivative
  ring

/-- A whole real edge interval has a fixed strictly negative leading margin. -/
theorem actualLeadingEdgeConvolution_le_neg_hundred {u : ℝ}
    (hu : 12 ≤ u) (hu' : u ≤ 13) :
    actualLeadingEdgeConvolution u ≤ -100 := by
  rw [actualLeadingEdgeConvolution_eq]
  have h2 : (12 : ℝ) ^ 2 ≤ u ^ 2 := (sq_le_sq₀ (by norm_num) (by linarith)).2 hu
  have h4 : u ^ 4 ≤ (13 : ℝ) ^ 4 := pow_le_pow_left₀ (by linarith) hu' 4
  have hf : u ^ 4 - 576 * u ^ 2 + 48384 ≤ -5999 := by nlinarith
  have h5 : (1 : ℝ) ≤ u ^ 5 := one_le_pow₀ (by linarith)
  have hm := mul_le_mul_of_nonneg_left hf (by positivity : 0 ≤ (8 / 315 : ℝ) * u ^ 5)
  nlinarith

private theorem normalization_le_forty_one {A : ℝ} (hA : 1 ≤ A) :
    sourceNormalization A ≤ 41 := by
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : 1 ≤ A ^ 4 := one_le_pow₀ hA
  have ht2 : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045 : ℝ) / 2 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num)
    nlinarith
  have ht4 : (196608 / 5005 : ℝ) / A ^ 4 ≤ (196608 / 5005 : ℝ) := by
    simpa using div_le_div_of_nonneg_left (by norm_num : 0 ≤ (196608 / 5005 : ℝ))
      (by norm_num : (0 : ℝ) < 1) h4
  unfold sourceNormalization
  linarith

private theorem endpoint_error (A r : ℝ) (hA : 13 ≤ A) (hr : 0 ≤ r) (hr' : r ≤ 13) :
    |endpointPolynomial A r - actualLeadingEndpointPolynomial r| ≤ 5000000 / A := by
  have hp : 0 < A := by linarith
  let v := r / A
  let b := (2 - v) ^ 2
  let d := (1 - v) ^ 2
  have hv0 : 0 ≤ v := div_nonneg hr hp.le
  have hv1 : v ≤ 1 := (div_le_iff₀ hp).2 (by linarith)
  have hb0 : 0 ≤ b := sq_nonneg _
  have hb4 : b ≤ 4 := by dsimp [b]; nlinarith
  have hd0 : 0 ≤ d := sq_nonneg _
  have hd1 : d ≤ 1 := by dsimp [d]; nlinarith
  have hb : |b - 4| ≤ 4 * v := by
    rw [abs_of_nonpos (by linarith)]
    dsimp [b]
    nlinarith
  have hd : |d - 1| ≤ 2 * v := by
    rw [abs_of_nonpos (by linarith)]
    dsimp [d]
    nlinarith
  have hbb : |b ^ 2 - 16| ≤ 32 * v := by
    rw [show b ^ 2 - 16 = (b - 4) * (b + 4) by ring, abs_mul,
      abs_of_nonneg (by linarith : 0 ≤ b + 4)]
    have hh := mul_le_mul_of_nonneg_right hb (by linarith : 0 ≤ b + 4)
    have hh' := mul_le_mul_of_nonneg_left (by linarith : b + 4 ≤ 8) (by positivity : 0 ≤ 4 * v)
    nlinarith
  have hid : endpointPolynomial A r - actualLeadingEndpointPolynomial r =
      r ^ 2 * (48 * (b - 4) + 56 * b * (d - 1) - r ^ 2 / 4 * (b ^ 2 - 16)) := by
    unfold endpointPolynomial actualLeadingEndpointPolynomial
    dsimp [b, d, v]
    ring
  rw [hid, abs_mul, abs_of_nonneg (sq_nonneg r)]
  have ht : |48 * (b - 4) + 56 * b * (d - 1) - r ^ 2 / 4 * (b ^ 2 - 16)| ≤
      48 * (4 * v) + 56 * b * (2 * v) + r ^ 2 / 4 * (32 * v) := by
    calc
      _ ≤ |48 * (b - 4)| + |56 * b * (d - 1)| + |r ^ 2 / 4 * (b ^ 2 - 16)| :=
        (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
      _ = 48 * |b - 4| + 56 * b * |d - 1| + r ^ 2 / 4 * |b ^ 2 - 16| := by
        rw [abs_mul (48 : ℝ), abs_mul (56 * b), abs_mul (r ^ 2 / 4),
          abs_of_nonneg (by positivity : 0 ≤ (48 : ℝ)),
          abs_of_nonneg (by positivity : 0 ≤ 56 * b),
          abs_of_nonneg (by positivity : 0 ≤ r ^ 2 / 4)]
      _ ≤ _ := add_le_add (add_le_add (mul_le_mul_of_nonneg_left hb (by norm_num))
        (mul_le_mul_of_nonneg_left hd (by positivity)))
        (mul_le_mul_of_nonneg_left hbb (by positivity))
  have hr2 : r ^ 2 ≤ 169 := by nlinarith
  have htv : 48 * (4 * v) + 56 * b * (2 * v) + r ^ 2 / 4 * (32 * v) ≤ 1992 * v := by
    have hb' := mul_le_mul_of_nonneg_right hb4 hv0
    have hr' := mul_le_mul_of_nonneg_right hr2 hv0
    nlinarith
  have hmain := mul_le_mul_of_nonneg_left (ht.trans htv) (sq_nonneg r)
  have hh := mul_le_mul_of_nonneg_right hr2 (by positivity : 0 ≤ 1992 * v)
  have hvr : v ≤ 13 / A := div_le_div_of_nonneg_right hr' hp.le
  have hvb := mul_le_mul_of_nonneg_left hvr (by norm_num : (0 : ℝ) ≤ 169 * 1992)
  have hlast : (169 : ℝ) * 1992 * (13 / A) ≤ 5000000 / A := by
    rw [show (169 : ℝ) * 1992 * (13 / A) = (169 * 1992 * 13) / A by ring]
    apply (div_le_div_iff_of_pos_right hp).2
    norm_num
  exact hmain.trans (hh.trans (by nlinarith [hvb.trans hlast]))

/-- Finite source-polynomial convergence is uniform on the entire closed edge interval. -/
theorem endpointProduct_integral_uniform_error {A u : ℝ} (hA : 13 ≤ A)
    (hu : 0 ≤ u) (hu' : u ≤ 13) :
    |(∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) -
      actualLeadingEdgeConvolution u| ≤ 20000000000000 / A := by
  have hp : 0 < A := by linarith
  have hi1 := endpointProduct_intervalIntegrable A u
  have hi2 := actualLeadingEdgeProduct_intervalIntegrable u
  rw [actualLeadingEdgeConvolution, ← intervalIntegral.integral_sub hi1 hi2]
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := u)
    (f := fun r => endpointPolynomial A r * endpointPolynomial A (u - r) -
      actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r))
    (C := 2 * 146692 * (5000000 / A)) ?_
  · have hl : (2 : ℝ) * 146692 * (5000000 / A) * u ≤ 20000000000000 / A := by
      have hh := mul_le_mul_of_nonneg_left hu' (by positivity :
        0 ≤ (2 : ℝ) * 146692 * (5000000 / A))
      refine hh.trans ?_
      rw [show (2 : ℝ) * 146692 * (5000000 / A) * 13 =
        (2 * 146692 * 5000000 * 13) / A by ring]
      apply (div_le_div_iff_of_pos_right hp).2
      norm_num
    simp only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hu] at h
    simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hu] using h.trans hl
  · intro r hr
    have hm := (uIoc_of_le hu) ▸ hr
    have hr0 : 0 ≤ r := hm.1.le
    have hru : r ≤ u := hm.2
    have hq0 : 0 ≤ u - r := by linarith
    have hqr : u - r ≤ 13 := by linarith
    have hr13 : r ≤ 13 := hru.trans hu'
    have ha (v : ℝ) (hv0 : 0 ≤ v) (hv13 : v ≤ 13) :
        |endpointPolynomial A v| ≤ 146692 := by
      refine (endpointPolynomial_abs_le A v (by linarith) hv0 (by linarith)).trans ?_
      have h2 : v ^ 2 ≤ (13 : ℝ) ^ 2 := (sq_le_sq₀ hv0 (by norm_num)).2 hv13
      have h4 : v ^ 4 ≤ (13 : ℝ) ^ 4 := pow_le_pow_left₀ hv0 hv13 4
      nlinarith
    have hb (v : ℝ) (hv0 : 0 ≤ v) (hv13 : v ≤ 13) :
        |actualLeadingEndpointPolynomial v| ≤ 146692 := by
      unfold actualLeadingEndpointPolynomial
      refine (abs_sub _ _).trans ?_
      rw [abs_of_nonneg (by positivity : 0 ≤ 192 * v ^ 2),
        abs_of_nonneg (by positivity : 0 ≤ 4 * v ^ 4)]
      have h2 : v ^ 2 ≤ (13 : ℝ) ^ 2 := (sq_le_sq₀ hv0 (by norm_num)).2 hv13
      have h4 : v ^ 4 ≤ (13 : ℝ) ^ 4 := pow_le_pow_left₀ hv0 hv13 4
      nlinarith
    rw [Real.norm_eq_abs]
    have he : endpointPolynomial A r * endpointPolynomial A (u - r) -
        actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r) =
        endpointPolynomial A r * (endpointPolynomial A (u - r) -
          actualLeadingEndpointPolynomial (u - r)) +
        (endpointPolynomial A r - actualLeadingEndpointPolynomial r) *
          actualLeadingEndpointPolynomial (u - r) := by ring
    rw [he]
    refine (abs_add_le _ _).trans ?_
    rw [abs_mul, abs_mul]
    have hh1 := mul_le_mul (ha r hr0 hr13) (endpoint_error A (u - r) hA hq0 hqr)
      (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 146692)
    have hh2 := mul_le_mul (endpoint_error A r hA hr0 hr13) (hb (u - r) hq0 hqr)
      (abs_nonneg _) (by positivity : 0 ≤ 5000000 / A)
    nlinarith

/-- Genuine normalized correlation is uniformly negative, at every real point of this window. -/
theorem actualCorrelation_negative_edge {A u : ℝ} (hA : 20000000000000 ≤ A)
    (hu : 12 ≤ u) (hu' : u ≤ 13) :
    sourceCorrelation explicitSecondDerivative A (2 * A - u) ≤ -(1 / A ^ 9) := by
  have hp : 0 < A := by linarith
  have he := endpointProduct_integral_uniform_error (by linarith : 13 ≤ A)
    (by linarith : 0 ≤ u) hu'
  have hh : (20000000000000 : ℝ) / A ≤ 1 := (div_le_one hp).2 hA
  have hn : (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) ≤ -99 := by
    have := (abs_le.mp (he.trans hh)).2
    linarith [actualLeadingEdgeConvolution_le_neg_hundred hu hu']
  have hZ := source_normalization_pos A (by linarith)
  have hz := normalization_le_forty_one (by linarith : 1 ≤ A)
  rw [sourceCorrelation_upper_edge A u (by linarith) (by linarith) (by linarith)]
  rw [show -(1 / A ^ 9) = (-1 : ℝ) / A ^ 9 by ring]
  apply (le_div_iff₀ (pow_pos hp 9)).2
  have heq : (1 / (A ^ 9 * sourceNormalization A) *
      (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r))) * A ^ 9 =
      (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) /
        sourceNormalization A := by field_simp
  rw [heq]
  apply (div_le_iff₀ hZ).2
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeCorrelation
