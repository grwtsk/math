# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variantcf568e88d2994f22aa43cd6473e313eb223ee855af34b83f704e46a2555a60f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2860e57596cf20f82223e46e2b01030027caa31` · SHA-256 `cf568e88d2994f22aa43cd6473e313eb223ee855af34b83f704e46a2555a60f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
Exact original source recovery at the physical endpoint.
Direction: grwtsk contributors. Formal construction: this Codex arithmetic analyst.
All filters, normalization, and closed half-support endpoints remain literal.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution

open Set MeasureTheory SourcePairing SourceBumpAutocorrelation
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature
open SourcePrimitiveBumpProfile SourcePeanoProfileTransport SourcePositivePeanoPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

private theorem primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (primitiveCorrelationZero A))))
      (deriv (deriv (deriv (normalizedOverlapProfile A)))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'
    exact hF2.differentiable (by norm_num)
  · have hG : ContDiff ℝ 3 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    have hG2 : ContDiff ℝ 1 (deriv (deriv (normalizedOverlapProfile A))) :=
      hG.deriv'.deriv'
    exact hG2.differentiable (by norm_num)
  · exact primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA

theorem primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))))
      (deriv (deriv (deriv (deriv (normalizedOverlapProfile A))))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF3 : ContDiff ℝ 1 (deriv (deriv (deriv (primitiveCorrelationZero A)))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'.deriv'
    exact hF3.differentiable (by norm_num)
  · have hG : ContDiff ℝ 4 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    have hG3 : ContDiff ℝ 1 (deriv (deriv (deriv (normalizedOverlapProfile A)))) :=
      hG.deriv'.deriv'.deriv'
    exact hG3.differentiable (by norm_num)
  · exact primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile hA

theorem sourceCorrelation_eq_normalizedOverlap_filter {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A t =
      deriv (deriv (deriv (deriv (normalizedOverlapProfile A)))) t -
        deriv (deriv (normalizedOverlapProfile A)) t / 2 +
        normalizedOverlapProfile A t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter hA,
    ← primitiveCorrelationZero_fourth_deriv hA,
    primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    ← neg_neg (primitiveCorrelationOne A t),
    ← primitiveCorrelationZero_second_deriv_eq_neg_one hA,
    primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    primitiveCorrelationZero_eq_profile hA ht0 ht2]
  unfold normalizedOverlapProfile
  ring


private def profileD0 (A t : ℝ) : ℝ :=
  (((65536 / 109395)) / A ^ 0 +
    ((-65536 / 45045)) * t ^ 2 / A ^ 2 +
    ((8192 / 5005)) * t ^ 4 / A ^ 4 +
    ((-4096 / 3465)) * t ^ 6 / A ^ 6 +
    ((256 / 315)) * t ^ 8 / A ^ 8 +
    ((-128 / 315)) * t ^ 9 / A ^ 9 +
    ((128 / 3465)) * t ^ 11 / A ^ 11 +
    ((-16 / 5005)) * t ^ 13 / A ^ 13 +
    ((8 / 45045)) * t ^ 15 / A ^ 15 +
    ((-1 / 218790)) * t ^ 17 / A ^ 17) / sourceNormalization A

private def profileD1 (A t : ℝ) : ℝ :=
  (((-131072 / 45045)) * t / A ^ 2 +
    ((32768 / 5005)) * t ^ 3 / A ^ 4 +
    ((-8192 / 1155)) * t ^ 5 / A ^ 6 +
    ((2048 / 315)) * t ^ 7 / A ^ 8 +
    ((-128 / 35)) * t ^ 8 / A ^ 9 +
    ((128 / 315)) * t ^ 10 / A ^ 11 +
    ((-16 / 385)) * t ^ 12 / A ^ 13 +
    ((8 / 3003)) * t ^ 14 / A ^ 15 +
    ((-1 / 12870)) * t ^ 16 / A ^ 17) / sourceNormalization A

private def profileD2 (A t : ℝ) : ℝ :=
  (((-131072 / 45045)) / A ^ 2 +
    ((98304 / 5005)) * t ^ 2 / A ^ 4 +
    ((-8192 / 231)) * t ^ 4 / A ^ 6 +
    ((2048 / 45)) * t ^ 6 / A ^ 8 +
    ((-1024 / 35)) * t ^ 7 / A ^ 9 +
    ((256 / 63)) * t ^ 9 / A ^ 11 +
    ((-192 / 385)) * t ^ 11 / A ^ 13 +
    ((16 / 429)) * t ^ 13 / A ^ 15 +
    ((-8 / 6435)) * t ^ 15 / A ^ 17) / sourceNormalization A

private def profileD3 (A t : ℝ) : ℝ :=
  (((196608 / 5005)) * t / A ^ 4 +
    ((-32768 / 231)) * t ^ 3 / A ^ 6 +
    ((4096 / 15)) * t ^ 5 / A ^ 8 +
    ((-1024 / 5)) * t ^ 6 / A ^ 9 +
    ((256 / 7)) * t ^ 8 / A ^ 11 +
    ((-192 / 35)) * t ^ 10 / A ^ 13 +
    ((16 / 33)) * t ^ 12 / A ^ 15 +
    ((-8 / 429)) * t ^ 14 / A ^ 17) / sourceNormalization A

private def profileD4 (A t : ℝ) : ℝ :=
  (((196608 / 5005)) / A ^ 4 +
    ((-32768 / 77)) * t ^ 2 / A ^ 6 +
    ((4096 / 3)) * t ^ 4 / A ^ 8 +
    ((-6144 / 5)) * t ^ 5 / A ^ 9 +
    ((2048 / 7)) * t ^ 7 / A ^ 11 +
    ((-384 / 7)) * t ^ 9 / A ^ 13 +
    ((64 / 11)) * t ^ 11 / A ^ 15 +
    ((-112 / 429)) * t ^ 13 / A ^ 17) / sourceNormalization A

private theorem normalizedOverlapProfile_eq_profileD0 {A : ℝ} (hA : 0 < A) :
    normalizedOverlapProfile A = profileD0 A := by
  funext t
  unfold normalizedOverlapProfile overlapProfile overlapP0 profileD0
  congr 1
  field_simp [hA.ne']
  ring

private theorem profileD0_deriv (A : ℝ) :
    deriv (profileD0 A) = profileD1 A := by
  funext t
  unfold profileD0 profileD1
  simp (disch := fun_prop) only [deriv_div_const, deriv_fun_add, deriv_fun_mul,
    deriv_fun_pow, deriv_id'', deriv_const]
  ring

private theorem profileD1_deriv (A : ℝ) :
    deriv (profileD1 A) = profileD2 A := by
  funext t
  unfold profileD1 profileD2
  simp (disch := fun_prop) only [deriv_div_const, deriv_fun_add, deriv_fun_mul,
    deriv_fun_pow, deriv_const_mul_id, deriv_id'', deriv_const]
  ring

private theorem profileD2_deriv (A : ℝ) :
    deriv (profileD2 A) = profileD3 A := by
  funext t
  unfold profileD2 profileD3
  simp (disch := fun_prop) only [deriv_div_const, deriv_fun_add, deriv_fun_mul,
    deriv_fun_pow, deriv_id'', deriv_const]
  ring

private theorem profileD3_deriv (A : ℝ) :
    deriv (profileD3 A) = profileD4 A := by
  funext t
  unfold profileD3 profileD4
  simp (disch := fun_prop) only [deriv_div_const, deriv_fun_add, deriv_fun_mul,
    deriv_fun_pow, deriv_const_mul_id, deriv_id'', deriv_const]
  ring

/-- Complete endpoint filter, including every inverse-scale order. -/
def endpointQ (r v : ℝ) : ℝ :=
  (192) * v ^ 2 +
    (-4) * v ^ 4 +
    (-640) * r * v ^ 3 +
    (8) * r * v ^ 5 +
    (720) * r ^ 2 * v ^ 4 +
    (-6) * r ^ 2 * v ^ 6 +
    (-336) * r ^ 3 * v ^ 5 +
    (2) * r ^ 3 * v ^ 7 +
    (56) * r ^ 4 * v ^ 6 +
    ((-1 / 4)) * r ^ 4 * v ^ 8

/-- Complete convolution polynomial, not a leading-order approximation. -/
def endpointPolynomial (r s : ℝ) : ℝ :=
  ((6144 / 5)) * s ^ 5 +
    (-4096) * r * s ^ 6 +
    ((-512 / 35)) * s ^ 7 +
    ((38912 / 7)) * r ^ 2 * s ^ 7 +
    ((256 / 7)) * r * s ^ 8 +
    ((-28416 / 7)) * r ^ 3 * s ^ 8 +
    ((8 / 315)) * s ^ 9 +
    ((-2432 / 63)) * r ^ 2 * s ^ 9 +
    ((36992 / 21)) * r ^ 4 * s ^ 9 +
    ((-16 / 315)) * r * s ^ 10 +
    ((2368 / 105)) * r ^ 3 * s ^ 10 +
    ((-1408 / 3)) * r ^ 5 * s ^ 10 +
    ((152 / 3465)) * r ^ 2 * s ^ 11 +
    ((-9248 / 1155)) * r ^ 4 * s ^ 11 +
    ((832 / 11)) * r ^ 6 * s ^ 11 +
    ((-74 / 3465)) * r ^ 3 * s ^ 12 +
    ((16 / 9)) * r ^ 5 * s ^ 12 +
    ((-224 / 33)) * r ^ 7 * s ^ 12 +
    ((289 / 45045)) * r ^ 4 * s ^ 13 +
    ((-8 / 33)) * r ^ 6 * s ^ 13 +
    ((112 / 429)) * r ^ 8 * s ^ 13 +
    ((-1 / 819)) * r ^ 5 * s ^ 14 +
    ((8 / 429)) * r ^ 7 * s ^ 14 +
    ((1 / 6930)) * r ^ 6 * s ^ 15 +
    ((-4 / 6435)) * r ^ 8 * s ^ 15 +
    ((-1 / 102960)) * r ^ 7 * s ^ 16 +
    ((1 / 3500640)) * r ^ 8 * s ^ 17

-- The exact inverse-scale expansion needs a larger finite algebra budget.
set_option maxHeartbeats 2000000 in
theorem sourceCorrelation_endpoint_eq_polynomial {A s : ℝ} (hA : 0 < A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A (2 * A - s) =
      endpointPolynomial (1 / A) s / (sourceNormalization A * A ^ 9) := by
  rw [sourceCorrelation_eq_normalizedOverlap_filter hA (by linarith) (by linarith),
    normalizedOverlapProfile_eq_profileD0 hA, profileD0_deriv, profileD1_deriv,
    profileD2_deriv, profileD3_deriv]
  have hZ : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  unfold profileD0 profileD2 profileD4 endpointPolynomial
  field_simp [hA.ne', hZ.ne']
  ring

-- The full polynomial integrand retains all 183 monomials before integration.
set_option maxHeartbeats 2000000 in
set_option maxRecDepth 8192 in
theorem endpointPolynomial_eq_convolution (r s : ℝ) :
    endpointPolynomial r s =
      ∫ v : ℝ in (0 : ℝ)..s, endpointQ r v * endpointQ r (s - v) := by
  have he : (fun v : ℝ => endpointQ r v * endpointQ r (s - v)) =
      (fun v => ((36864) * s ^ 2 +
    (-122880) * r * s ^ 3 +
    (-768) * s ^ 4 +
    (138240) * r ^ 2 * s ^ 4 +
    (1536) * r * s ^ 5 +
    (-64512) * r ^ 3 * s ^ 5 +
    (-1152) * r ^ 2 * s ^ 6 +
    (10752) * r ^ 4 * s ^ 6 +
    (384) * r ^ 3 * s ^ 7 +
    (-48) * r ^ 4 * s ^ 8) * v ^ 2 +
    ((-73728) * s +
    (245760) * r * s ^ 2 +
    (3072) * s ^ 3 +
    (-143360) * r ^ 2 * s ^ 3 +
    (-5120) * r * s ^ 4 +
    (-138240) * r ^ 3 * s ^ 4 +
    (1792) * r ^ 2 * s ^ 5 +
    (150528) * r ^ 4 * s ^ 5 +
    (1152) * r ^ 3 * s ^ 6 +
    (-35840) * r ^ 5 * s ^ 6 +
    (-896) * r ^ 4 * s ^ 7 +
    (160) * r ^ 5 * s ^ 8) * v ^ 3 +
    ((36864) +
    (-122880) * r * s +
    (-5376) * s ^ 2 +
    (-261120) * r ^ 2 * s ^ 2 +
    (7680) * r * s ^ 3 +
    (737280) * r ^ 3 * s ^ 3 +
    (16) * s ^ 4 +
    (2560) * r ^ 2 * s ^ 4 +
    (-395520) * r ^ 4 * s ^ 4 +
    (-32) * r * s ^ 5 +
    (-7872) * r ^ 3 * s ^ 5 +
    (-26880) * r ^ 5 * s ^ 5 +
    (24) * r ^ 2 * s ^ 6 +
    (3072) * r ^ 4 * s ^ 6 +
    (40320) * r ^ 6 * s ^ 6 +
    (-8) * r ^ 3 * s ^ 7 +
    (160) * r ^ 5 * s ^ 7 +
    (1) * r ^ 4 * s ^ 8 +
    (-180) * r ^ 6 * s ^ 8) * v ^ 4 +
    ((4608) * s +
    (399360) * r ^ 2 * s +
    (-6144) * r * s ^ 2 +
    (-801792) * r ^ 3 * s ^ 2 +
    (-64) * s ^ 3 +
    (-10240) * r ^ 2 * s ^ 3 +
    (76800) * r ^ 4 * s ^ 3 +
    (128) * r * s ^ 4 +
    (15744) * r ^ 3 * s ^ 4 +
    (430080) * r ^ 5 * s ^ 4 +
    (-80) * r ^ 2 * s ^ 5 +
    (-2304) * r ^ 4 * s ^ 5 +
    (-129024) * r ^ 6 * s ^ 5 +
    (8) * r ^ 3 * s ^ 6 +
    (-3136) * r ^ 5 * s ^ 6 +
    (-18816) * r ^ 7 * s ^ 6 +
    (8) * r ^ 4 * s ^ 7 +
    (768) * r ^ 6 * s ^ 7 +
    (-2) * r ^ 5 * s ^ 8 +
    (84) * r ^ 7 * s ^ 8) * v ^ 5 +
    ((-1536) +
    (-133120) * r ^ 2 +
    (2048) * r * s +
    (267264) * r ^ 3 * s +
    (96) * s ^ 2 +
    (13568) * r ^ 2 * s ^ 2 +
    (486912) * r ^ 4 * s ^ 2 +
    (-192) * r * s ^ 3 +
    (-16896) * r ^ 3 * s ^ 3 +
    (-770560) * r ^ 5 * s ^ 3 +
    (64) * r ^ 2 * s ^ 4 +
    (-4384) * r ^ 4 * s ^ 4 +
    (80640) * r ^ 6 * s ^ 4 +
    (72) * r ^ 3 * s ^ 5 +
    (8960) * r ^ 5 * s ^ 5 +
    (94080) * r ^ 7 * s ^ 5 +
    (-48) * r ^ 4 * s ^ 6 +
    (-1008) * r ^ 6 * s ^ 6 +
    (3136) * r ^ 8 * s ^ 6 +
    (4) * r ^ 5 * s ^ 7 +
    (-560) * r ^ 7 * s ^ 7 +
    ((3 / 2)) * r ^ 6 * s ^ 8 +
    (-14) * r ^ 8 * s ^ 8) * v ^ 6 +
    ((-64) * s +
    (-8704) * r ^ 2 * s +
    (-439296) * r ^ 4 * s +
    (128) * r * s ^ 2 +
    (9984) * r ^ 3 * s ^ 2 +
    (537600) * r ^ 5 * s ^ 2 +
    (64) * r ^ 2 * s ^ 3 +
    (11904) * r ^ 4 * s ^ 3 +
    (161280) * r ^ 6 * s ^ 3 +
    (-208) * r ^ 3 * s ^ 4 +
    (-13120) * r ^ 5 * s ^ 4 +
    (-188160) * r ^ 7 * s ^ 4 +
    (80) * r ^ 4 * s ^ 5 +
    (-672) * r ^ 6 * s ^ 5 +
    (-18816) * r ^ 8 * s ^ 5 +
    (16) * r ^ 5 * s ^ 6 +
    (1680) * r ^ 7 * s ^ 6 +
    (-8) * r ^ 6 * s ^ 7 +
    (112) * r ^ 8 * s ^ 7 +
    ((-1 / 2)) * r ^ 7 * s ^ 8) * v ^ 7 +
    ((16) +
    (2176) * r ^ 2 +
    (109824) * r ^ 4 +
    (-32) * r * s +
    (-2496) * r ^ 3 * s +
    (-134400) * r ^ 5 * s +
    (-136) * r ^ 2 * s ^ 2 +
    (-12336) * r ^ 4 * s ^ 2 +
    (-282240) * r ^ 6 * s ^ 2 +
    (232) * r ^ 3 * s ^ 3 +
    (11200) * r ^ 5 * s ^ 3 +
    (188160) * r ^ 7 * s ^ 3 +
    (-29) * r ^ 4 * s ^ 4 +
    (4020) * r ^ 6 * s ^ 4 +
    (47040) * r ^ 8 * s ^ 4 +
    (-70) * r ^ 5 * s ^ 5 +
    (-2940) * r ^ 7 * s ^ 5 +
    ((31 / 2)) * r ^ 6 * s ^ 6 +
    (-406) * r ^ 8 * s ^ 6 +
    ((7 / 2)) * r ^ 7 * s ^ 7 +
    ((1 / 16)) * r ^ 8 * s ^ 8) * v ^ 8 +
    ((80) * r ^ 2 * s +
    (6240) * r ^ 4 * s +
    (161280) * r ^ 6 * s +
    (-120) * r ^ 3 * s ^ 2 +
    (-5280) * r ^ 5 * s ^ 2 +
    (-94080) * r ^ 7 * s ^ 2 +
    (-60) * r ^ 4 * s ^ 3 +
    (-6000) * r ^ 6 * s ^ 3 +
    (-62720) * r ^ 8 * s ^ 3 +
    (110) * r ^ 5 * s ^ 4 +
    (3220) * r ^ 7 * s ^ 4 +
    (-9) * r ^ 6 * s ^ 5 +
    (868) * r ^ 8 * s ^ 5 +
    ((-21 / 2)) * r ^ 7 * s ^ 6 +
    ((-1 / 2)) * r ^ 8 * s ^ 7) * v ^ 9 +
    ((-16) * r ^ 2 +
    (-1248) * r ^ 4 +
    (-32256) * r ^ 6 +
    (24) * r ^ 3 * s +
    (1056) * r ^ 5 * s +
    (18816) * r ^ 7 * s +
    (78) * r ^ 4 * s ^ 2 +
    (4632) * r ^ 6 * s ^ 2 +
    (47040) * r ^ 8 * s ^ 2 +
    (-88) * r ^ 5 * s ^ 3 +
    (-2184) * r ^ 7 * s ^ 3 +
    ((-25 / 2)) * r ^ 6 * s ^ 4 +
    (-1190) * r ^ 8 * s ^ 4 +
    ((35 / 2)) * r ^ 7 * s ^ 5 +
    ((7 / 4)) * r ^ 8 * s ^ 6) * v ^ 10 +
    ((-36) * r ^ 4 * s +
    (-1872) * r ^ 6 * s +
    (-18816) * r ^ 8 * s +
    (36) * r ^ 5 * s ^ 2 +
    (840) * r ^ 7 * s ^ 2 +
    (26) * r ^ 6 * s ^ 3 +
    (1064) * r ^ 8 * s ^ 3 +
    ((-35 / 2)) * r ^ 7 * s ^ 4 +
    ((-7 / 2)) * r ^ 8 * s ^ 5) * v ^ 11 +
    ((6) * r ^ 4 +
    (312) * r ^ 6 +
    (3136) * r ^ 8 +
    (-6) * r ^ 5 * s +
    (-140) * r ^ 7 * s +
    ((-39 / 2)) * r ^ 6 * s ^ 2 +
    (-602) * r ^ 8 * s ^ 2 +
    ((21 / 2)) * r ^ 7 * s ^ 3 +
    ((35 / 8)) * r ^ 8 * s ^ 4) * v ^ 12 +
    ((7) * r ^ 6 * s +
    (196) * r ^ 8 * s +
    ((-7 / 2)) * r ^ 7 * s ^ 2 +
    ((-7 / 2)) * r ^ 8 * s ^ 3) * v ^ 13 +
    ((-1) * r ^ 6 +
    (-28) * r ^ 8 +
    ((1 / 2)) * r ^ 7 * s +
    ((7 / 4)) * r ^ 8 * s ^ 2) * v ^ 14 +
    (((-1 / 2)) * r ^ 8 * s) * v ^ 15 +
    (((1 / 16)) * r ^ 8) * v ^ 16) := by
    funext v
    unfold endpointQ
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow]
  norm_num
  unfold endpointPolynomial
  ring

theorem sourceCorrelation_endpoint_eq_convolution {A s : ℝ} (hA : 0 < A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A (2 * A - s) =
      (∫ v : ℝ in (0 : ℝ)..s, endpointQ (1 / A) v * endpointQ (1 / A) (s - v)) /
        (sourceNormalization A * A ^ 9) := by
  rw [sourceCorrelation_endpoint_eq_polynomial hA hs0 hs2, endpointPolynomial_eq_convolution]

end FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution
```
