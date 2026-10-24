# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceScaledKernel.Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3053a6ee4028934f237cb5de0bcf0839e2c16fd` · SHA-256 `3ba271c956ebe22829af3842c046008869d41f17240f00cc0d51601e0507069f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationScaledExact.Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceCorrelationScaledExact.Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34","mathematical_subject":"Analysis.Calculus","original_sha256":"1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Exact fixed-kernel and source endpoint polynomials

The native bump convolution, compact support, and justified Fourier differential
identities determine the three fixed shapes. All coefficients and endpoint
orders are exact rational identities. These identities contain no arithmetic
estimate or prime-distribution premise.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationScaledExact.Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34

namespace FormalResearch.RiemannHypothesis.SourceScaledKernel

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointPhaseScaling PoleDifferentialCorrelation

noncomputable section

/-- The actual source at a jointly scaled displacement retains all three fixed shapes. -/
theorem source_correlation_scaled_exact (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    sourceCorrelation explicitSecondDerivative A (A * x) =
      (fixedKernel 0 x / 16 + fixedKernel 1 x / (2 * A ^ 2) +
        fixedKernel 2 x / A ^ 4) / sourceNormalization A := by
  rw [← scaled_kernel_eq_source_correlation A x hA]
  exact scaled_kernel_eq_three_fixed_kernels A x hA

/-- The unchanged normalization is exactly quadratic in the inverse square scale. -/
theorem source_normalization_inverse_square (A : ℝ) :
    sourceNormalization A = (4096 / 109395 : ℝ) +
      (65536 / 45045 : ℝ) * (A ^ 2)⁻¹ + (196608 / 5005 : ℝ) * ((A ^ 2)⁻¹) ^ 2 := by
  unfold sourceNormalization
  simp only [div_eq_mul_inv, ← pow_mul, ← inv_pow]
  ring

/-- The exact scaled correlation is a rational quadratic in `A⁻²`. -/
theorem source_correlation_inverse_square_exact (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    sourceCorrelation explicitSecondDerivative A (A * x) =
      (fixedKernel 0 x / 16 + (A ^ 2)⁻¹ * (fixedKernel 1 x / 2) +
        ((A ^ 2)⁻¹) ^ 2 * fixedKernel 2 x) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * (A ^ 2)⁻¹ +
        (196608 / 5005 : ℝ) * ((A ^ 2)⁻¹) ^ 2) := by
  rw [source_correlation_scaled_exact A hA x, source_normalization_inverse_square]
  congr 1
  simp only [div_eq_mul_inv, mul_inv_rev, ← inv_pow, ← pow_mul]
  ring

/-- The residual degree-eight polynomial at the ninth-order base endpoint. -/
def endpointPolynomialZero (s : ℝ) : ℝ :=
    (128 / 315 : ℝ) +
    (-256 / 315 : ℝ) * s ^ 1 +
    (2432 / 3465 : ℝ) * s ^ 2 +
    (-1184 / 3465 : ℝ) * s ^ 3 +
    (4624 / 45045 : ℝ) * s ^ 4 +
    (-16 / 819 : ℝ) * s ^ 5 +
    (8 / 3465 : ℝ) * s ^ 6 +
    (-1 / 6435 : ℝ) * s ^ 7 +
    (1 / 218790 : ℝ) * s ^ 8

/-- The residual degree-eight polynomial at the seventh-order second-derivative endpoint. -/
def endpointPolynomialOne (s : ℝ) : ℝ :=
    (-1024 / 35 : ℝ) +
    (512 / 7 : ℝ) * s ^ 1 +
    (-4864 / 63 : ℝ) * s ^ 2 +
    (4736 / 105 : ℝ) * s ^ 3 +
    (-18496 / 1155 : ℝ) * s ^ 4 +
    (32 / 9 : ℝ) * s ^ 5 +
    (-16 / 33 : ℝ) * s ^ 6 +
    (16 / 429 : ℝ) * s ^ 7 +
    (-8 / 6435 : ℝ) * s ^ 8

/-- The residual degree-eight polynomial at the fifth-order fourth-derivative endpoint. -/
def endpointPolynomialTwo (s : ℝ) : ℝ :=
    (6144 / 5 : ℝ) +
    (-4096 / 1 : ℝ) * s ^ 1 +
    (38912 / 7 : ℝ) * s ^ 2 +
    (-28416 / 7 : ℝ) * s ^ 3 +
    (36992 / 21 : ℝ) * s ^ 4 +
    (-1408 / 3 : ℝ) * s ^ 5 +
    (832 / 11 : ℝ) * s ^ 6 +
    (-224 / 33 : ℝ) * s ^ 7 +
    (112 / 429 : ℝ) * s ^ 8

/-- All three endpoint residuals have their exact nonzero rational leading coefficient. -/
theorem endpoint_polynomial_values_at_zero :
    endpointPolynomialZero 0 = (128 / 315 : ℝ) ∧
      endpointPolynomialOne 0 = (-1024 / 35 : ℝ) ∧
      endpointPolynomialTwo 0 = (6144 / 5 : ℝ) := by
  norm_num [endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo]

/-- The actual zeroth Fourier kernel equals its polynomial convolution on positive support. -/
theorem fixed_kernel_zero_eq_polynomial_integral (q : ℝ) (hq0 : 0 ≤ q) (hq2 : q ≤ 2) :
    fixedKernel 0 q = ∫ x in (q - 1)..1, (1 - x ^ 2) ^ 4 * (1 - (x - q) ^ 2) ^ 4 := by
  rw [GeneralizedPoleMoments.fixed_kernel_zero_eq_bump_correlation]
  have he (x : ℝ) : sourceBump x * sourceBump (x - q) =
      (Icc (q - 1) 1).indicator
        (fun x ↦ (1 - x ^ 2) ^ 4 * (1 - (x - q) ^ 2) ^ 4) x := by
    by_cases hx : x ∈ Icc (q - 1) 1
    · have h1 : x ∈ Icc (-1 : ℝ) 1 := ⟨by linarith [hx.1], hx.2⟩
      have h2 : x - q ∈ Icc (-1 : ℝ) 1 := ⟨by linarith [hx.1], by linarith [hx.2]⟩
      simp only [sourceBump, if_pos h1, if_pos h2, indicator_of_mem hx]
    · rw [indicator_of_notMem hx]
      by_cases h1 : x ∈ Icc (-1 : ℝ) 1
      · have h2 : x - q ∉ Icc (-1 : ℝ) 1 := by
          intro h
          exact hx ⟨by linarith [h.1], h1.2⟩
        simp [sourceBump, h1, h2]
      · simp [sourceBump, h1]
  simp_rw [he]
  rw [integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : q - 1 ≤ (1 : ℝ))]

private def convolutionPrimitive (q x : ℝ) : ℝ :=
  (1 + -4 * q ^ 2 + 6 * q ^ 4 + -4 * q ^ 6 + 1 * q ^ 8) * x ^ 1 / 1 +
  (8 * q ^ 1 + -24 * q ^ 3 + 24 * q ^ 5 + -8 * q ^ 7) * x ^ 2 / 2 +
  (-8 + 52 * q ^ 2 + -84 * q ^ 4 + 44 * q ^ 6 + -4 * q ^ 8) * x ^ 3 / 3 +
  (-56 * q ^ 1 + 176 * q ^ 3 + -152 * q ^ 5 + 32 * q ^ 7) * x ^ 4 / 4 +
  (28 + -228 * q ^ 2 + 346 * q ^ 4 + -136 * q ^ 6 + 6 * q ^ 8) * x ^ 5 / 5 +
  (168 * q ^ 1 + -520 * q ^ 3 + 368 * q ^ 5 + -48 * q ^ 7) * x ^ 6 / 6 +
  (-56 + 500 * q ^ 2 + -664 * q ^ 4 + 184 * q ^ 6 + -4 * q ^ 8) * x ^ 7 / 7 +
  (-280 * q ^ 1 + 800 * q ^ 3 + -432 * q ^ 5 + 32 * q ^ 7) * x ^ 8 / 8 +
  (70 + -620 * q ^ 2 + 666 * q ^ 4 + -116 * q ^ 6 + 1 * q ^ 8) * x ^ 9 / 9 +
  (280 * q ^ 1 + -680 * q ^ 3 + 248 * q ^ 5 + -8 * q ^ 7) * x ^ 10 / 10 +
  (-56 + 444 * q ^ 2 + -340 * q ^ 4 + 28 * q ^ 6) * x ^ 11 / 11 +
  (-168 * q ^ 1 + 304 * q ^ 3 + -56 * q ^ 5) * x ^ 12 / 12 +
  (28 + -172 * q ^ 2 + 70 * q ^ 4) * x ^ 13 / 13 +
  (56 * q ^ 1 + -56 * q ^ 3) * x ^ 14 / 14 +
  (-8 + 28 * q ^ 2) * x ^ 15 / 15 +
  (-8 * q ^ 1) * x ^ 16 / 16 +
  (1) * x ^ 17 / 17

set_option maxHeartbeats 1600000 in
-- Exact ring normalization expands the degree-sixteen convolution polynomial.
private theorem convolution_primitive_has_deriv_at (q x : ℝ) :
    HasDerivAt (convolutionPrimitive q)
      ((1 - x ^ 2) ^ 4 * (1 - (x - q) ^ 2) ^ 4) x := by
  have h := hasDerivAt_id x
  have h0 := ((h.pow 1).const_mul (1 + -4 * q ^ 2 + 6 * q ^ 4 + -4 * q ^ 6 + 1 * q ^ 8)).div_const 1
  have h1 := ((h.pow 2).const_mul (8 * q ^ 1 + -24 * q ^ 3 + 24 * q ^ 5 + -8 * q ^ 7)).div_const 2
  have h2 := ((h.pow 3).const_mul (-8 + 52 * q ^ 2 + -84 * q ^ 4 + 44 * q ^ 6 + -4 * q ^
      8)).div_const 3
  have h3 := ((h.pow 4).const_mul (-56 * q ^ 1 + 176 * q ^ 3 + -152 * q ^ 5 + 32 * q ^
      7)).div_const 4
  have h4 := ((h.pow 5).const_mul (28 + -228 * q ^ 2 + 346 * q ^ 4 + -136 * q ^ 6 + 6 * q ^
      8)).div_const 5
  have h5 := ((h.pow 6).const_mul (168 * q ^ 1 + -520 * q ^ 3 + 368 * q ^ 5 + -48 * q ^
      7)).div_const 6
  have h6 := ((h.pow 7).const_mul (-56 + 500 * q ^ 2 + -664 * q ^ 4 + 184 * q ^ 6 + -4 * q ^
      8)).div_const 7
  have h7 := ((h.pow 8).const_mul (-280 * q ^ 1 + 800 * q ^ 3 + -432 * q ^ 5 + 32 * q ^
      7)).div_const 8
  have h8 := ((h.pow 9).const_mul (70 + -620 * q ^ 2 + 666 * q ^ 4 + -116 * q ^ 6 + 1 * q ^
      8)).div_const 9
  have h9 := ((h.pow 10).const_mul (280 * q ^ 1 + -680 * q ^ 3 + 248 * q ^ 5 + -8 * q ^
      7)).div_const 10
  have h10 := ((h.pow 11).const_mul (-56 + 444 * q ^ 2 + -340 * q ^ 4 + 28 * q ^ 6)).div_const 11
  have h11 := ((h.pow 12).const_mul (-168 * q ^ 1 + 304 * q ^ 3 + -56 * q ^ 5)).div_const 12
  have h12 := ((h.pow 13).const_mul (28 + -172 * q ^ 2 + 70 * q ^ 4)).div_const 13
  have h13 := ((h.pow 14).const_mul (56 * q ^ 1 + -56 * q ^ 3)).div_const 14
  have h14 := ((h.pow 15).const_mul (-8 + 28 * q ^ 2)).div_const 15
  have h15 := ((h.pow 16).const_mul (-8 * q ^ 1)).div_const 16
  have h16 := ((h.pow 17).const_mul (1)).div_const 17
  convert ((((((((((((((((h0.add h1).add h2).add h3).add h4).add h5).add h6).add h7).add h8).add
      h9).add h10).add h11).add h12).add h13).add h14).add h15).add h16) using 1 <;> try rfl
  simp only [id_eq]
  ring

set_option maxHeartbeats 1600000 in
-- Exact endpoint subtraction normalizes the degree-seventeen antiderivative.
/-- The actual base convolution has exact ninth-order endpoint factorization. -/
theorem fixed_kernel_zero_endpoint (s : ℝ) (hs0 : 0 ≤ s) (hs2 : s ≤ 2) :
    fixedKernel 0 (2 - s) = s ^ 9 * endpointPolynomialZero s := by
  rw [fixed_kernel_zero_eq_polynomial_integral (2 - s) (by linarith) (by linarith)]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ convolution_primitive_has_deriv_at (2 - s) x)
    ((by fun_prop : Continuous (fun x : ℝ ↦
      (1 - x ^ 2) ^ 4 * (1 - (x - (2 - s)) ^ 2) ^ 4)).intervalIntegrable _ _)]
  unfold convolutionPrimitive endpointPolynomialZero
  ring

private def endpointExpandedZero (s : ℝ) : ℝ :=
  (128 / 315 : ℝ) * s ^ 9 +
  (-256 / 315 : ℝ) * s ^ 10 +
  (2432 / 3465 : ℝ) * s ^ 11 +
  (-1184 / 3465 : ℝ) * s ^ 12 +
  (4624 / 45045 : ℝ) * s ^ 13 +
  (-16 / 819 : ℝ) * s ^ 14 +
  (8 / 3465 : ℝ) * s ^ 15 +
  (-1 / 6435 : ℝ) * s ^ 16 +
  (1 / 218790 : ℝ) * s ^ 17

private theorem endpoint_expanded_zero_eq (s : ℝ) :
    endpointExpandedZero s = s ^ 9 * endpointPolynomialZero s := by
  unfold endpointExpandedZero endpointPolynomialZero
  ring

private theorem endpoint_expanded_zero_deriv (n : ℕ) (x : ℝ) :
    iteratedDeriv n endpointExpandedZero x =
      (128 / 315 : ℝ) * (9 : ℕ).descFactorial n * x ^ (9 - n) +
      (-256 / 315 : ℝ) * (10 : ℕ).descFactorial n * x ^ (10 - n) +
      (2432 / 3465 : ℝ) * (11 : ℕ).descFactorial n * x ^ (11 - n) +
      (-1184 / 3465 : ℝ) * (12 : ℕ).descFactorial n * x ^ (12 - n) +
      (4624 / 45045 : ℝ) * (13 : ℕ).descFactorial n * x ^ (13 - n) +
      (-16 / 819 : ℝ) * (14 : ℕ).descFactorial n * x ^ (14 - n) +
      (8 / 3465 : ℝ) * (15 : ℕ).descFactorial n * x ^ (15 - n) +
      (-1 / 6435 : ℝ) * (16 : ℕ).descFactorial n * x ^ (16 - n) +
      (1 / 218790 : ℝ) * (17 : ℕ).descFactorial n * x ^ (17 - n) := by
  unfold endpointExpandedZero
  simp (disch := fun_prop) only [iteratedDeriv_fun_add,
    iteratedDeriv_const_mul_field, iteratedDeriv_pow, mul_assoc]

private theorem endpoint_expanded_zero_second (x : ℝ) :
    iteratedDeriv 2 endpointExpandedZero x = -x ^ 7 * endpointPolynomialOne x := by
  rw [endpoint_expanded_zero_deriv]
  norm_num [endpointPolynomialOne, Nat.descFactorial]
  ring

private theorem endpoint_expanded_zero_fourth (x : ℝ) :
    iteratedDeriv 4 endpointExpandedZero x = x ^ 5 * endpointPolynomialTwo x := by
  rw [endpoint_expanded_zero_deriv]
  norm_num [endpointPolynomialTwo, Nat.descFactorial]
  ring

/-- The native fixed base is eighth-order smooth, including at the cutoff endpoints. -/
theorem fixed_kernel_zero_cont_diff_eight : ContDiff ℝ 8 (fixedKernel 0) := by
  have h := PoleCorrelationRegularity.base_correlation_cont_diff_eight 1
  change ContDiff ℝ 8 (fun t ↦ fixedKernel 0 (t / 1)) at h
  simpa using h

private theorem fixed_kernel_zero_deriv_eq_polynomial (n : ℕ) (hn : n ≤ 8)
    (x : ℝ) (hx0 : 0 ≤ x) (hx2 : x ≤ 2) :
    iteratedDeriv n (fixedKernel 0) x =
      iteratedDeriv n (fun q ↦ endpointExpandedZero (2 - q)) x := by
  have he : EqOn (fixedKernel 0) (fun q ↦ endpointExpandedZero (2 - q)) (Ioo (0 : ℝ) 2) := by
    intro q hq
    change fixedKernel 0 q = endpointExpandedZero (2 - q)
    rw [endpoint_expanded_zero_eq]
    have h := fixed_kernel_zero_endpoint (2 - q) (by linarith [hq.2]) (by linarith [hq.1])
    rw [show 2 - (2 - q) = q by ring] at h
    exact h
  have hd := he.iteratedDeriv_of_isOpen isOpen_Ioo n
  have hc1 := fixed_kernel_zero_cont_diff_eight.continuous_iteratedDeriv n
    (by exact_mod_cast hn)
  have hp : ContDiff ℝ (n : ℕ) (fun q : ℝ ↦ endpointExpandedZero (2 - q)) := by
    unfold endpointExpandedZero
    fun_prop
  have hc2 := hp.continuous_iteratedDeriv n (le_refl _)
  have hclosed := hd.closure hc1 hc2
  rw [closure_Ioo (by norm_num : (0 : ℝ) ≠ 2)] at hclosed
  exact hclosed ⟨hx0, hx2⟩

/-- The native second fixed kernel has exact seventh-order endpoint factorization. -/
theorem fixed_kernel_one_endpoint (s : ℝ) (hs0 : 0 ≤ s) (hs2 : s ≤ 2) :
    fixedKernel 1 (2 - s) = s ^ 7 * endpointPolynomialOne s := by
  have h := fixed_kernel_zero_deriv_eq_polynomial 2 (by norm_num) (2 - s)
    (by linarith) (by linarith)
  rw [fixed_kernel_second_deriv 0 (by norm_num), iteratedDeriv_comp_const_sub] at h
  norm_num only [one_smul, neg_one_sq, Nat.reduceAdd] at h
  rw [show 2 - (2 - s) = s by ring, endpoint_expanded_zero_second] at h
  linarith

/-- The native fourth fixed kernel has exact fifth-order endpoint factorization. -/
theorem fixed_kernel_two_endpoint (s : ℝ) (hs0 : 0 ≤ s) (hs2 : s ≤ 2) :
    fixedKernel 2 (2 - s) = s ^ 5 * endpointPolynomialTwo s := by
  have h := fixed_kernel_zero_deriv_eq_polynomial 4 (by norm_num) (2 - s)
    (by linarith) (by linarith)
  rw [fixed_kernel_fourth_deriv, iteratedDeriv_comp_const_sub] at h
  norm_num at h
  rw [endpoint_expanded_zero_fourth] at h
  exact h

/-- All three endpoint leading coefficients are nonzero, so the orders cannot be increased. -/
theorem endpoint_polynomial_values_ne_zero :
    endpointPolynomialZero 0 ≠ 0 ∧ endpointPolynomialOne 0 ≠ 0 ∧
      endpointPolynomialTwo 0 ≠ 0 := by
  rcases endpoint_polynomial_values_at_zero with ⟨h0, h1, h2⟩
  rw [h0, h1, h2]
  norm_num

/-- Every base-kernel derivative below its ninth endpoint order vanishes at the cutoff. -/
theorem fixed_kernel_zero_endpoint_derivatives (n : ℕ) (hn : n ≤ 8) :
    iteratedDeriv n (fixedKernel 0) 2 = 0 := by
  rw [fixed_kernel_zero_deriv_eq_polynomial n hn 2 (by norm_num) (by norm_num),
    iteratedDeriv_comp_const_sub]
  simp only [sub_self, endpoint_expanded_zero_deriv, smul_eq_mul]
  have hz (k : ℕ) (hk : 9 ≤ k) : (0 : ℝ) ^ (k - n) = 0 := zero_pow (by omega)
  simp only [hz 9 (by omega), hz 10 (by omega), hz 11 (by omega), hz 12 (by omega),
    hz 13 (by omega), hz 14 (by omega), hz 15 (by omega), hz 16 (by omega),
    hz 17 (by omega), mul_zero, add_zero]

private theorem iterated_deriv_iterated (n m : ℕ) (f : ℝ → ℝ) :
    iteratedDeriv n (iteratedDeriv m f) = iteratedDeriv (n + m) f := by
  simp only [iteratedDeriv_eq_iterate, Function.iterate_add_apply]

/-- Every second-kernel derivative below its seventh endpoint order vanishes. -/
theorem fixed_kernel_one_endpoint_derivatives (n : ℕ) (hn : n ≤ 6) :
    iteratedDeriv n (fixedKernel 1) 2 = 0 := by
  have h := congrFun (iterated_deriv_iterated n 2 (fixedKernel 0)) 2
  rw [fixed_kernel_second_deriv 0 (by norm_num)] at h
  simp only [Nat.reduceAdd, iteratedDeriv_fun_neg] at h
  rw [fixed_kernel_zero_endpoint_derivatives (n + 2) (by omega)] at h
  linarith

/-- Every fourth-kernel derivative below its fifth endpoint order vanishes. -/
theorem fixed_kernel_two_endpoint_derivatives (n : ℕ) (hn : n ≤ 4) :
    iteratedDeriv n (fixedKernel 2) 2 = 0 := by
  have h := congrFun (iterated_deriv_iterated n 4 (fixedKernel 0)) 2
  rw [fixed_kernel_fourth_deriv] at h
  rw [fixed_kernel_zero_endpoint_derivatives (n + 4) (by omega)] at h
  exact h

end

end FormalResearch.RiemannHypothesis.SourceScaledKernel
```
