/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source proof assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianClassicalPNTPolarity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSharpSourceEnvelope
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSaturatedRadiusUpper
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Source-exact relative positive/negative Gaussian cancellation

The true original index n, Mobius μ(n), squareful zero, birth-gated
pickupResponse, both ordered orientations and T_J=J*log 2 are retained.

At s(T)=exp(-T/2), write:
 H(T)=sourceHeatEnergy(s(T),T)  (SIGNED physical square),
 U(T)=unsignedHeatEnergy(s(T),T) (POSITIVE absolute square),
 O(T)=positiveNegativeHeatOverlap(s(T),T) (TRUE mixed polarities).
The previous exact source identity gives U-4O=H. For J>=9 and
T_J>=32, the PNT-free squarefree lower gives U>=exp(T)/65536.

This module supplies the missing companion source upper U<=16T exp T
by true coefficient magnitude |μ(n)*heat|<=1, the exact
inverse-root sum and the original causal response. There is NO
arithmetic cancellation assumed in this U bound.

Classical PNT (the repository's explicitly UNPORTED IN LEAN
OriginalBalancedPNTLogPowerTarget) gives at every integer A>=1:
 H<=2C_A exp T/(1+T)^A+4T²+32T^5.
Thus H/U =1-4O/U is O_A((1+T)^(-A)).
This is a NONCIRCULAR ORDINARY consequence of classical PNT, NOT
the RH-strength exponential relative precision. The one new
scalar PolynomialExpAbsorptionTarget is a standard elementary
exp-series inequality, not a Mobius/RH input.

The attached theorem bodies are NOT compiled; NO new axiom.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianRelativePolarityPNT

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianHeatSharpSourceEnvelope
open GRWTSK.NumberTheory.Moebius.GaussianUnsignedDualEnvelope
open GRWTSK.NumberTheory.Moebius.GaussianSignedPolarityDebt
open GRWTSK.NumberTheory.Moebius.GaussianClassicalPNTPolarity
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

def halfRootHeatTime (T : ℝ) : ℝ :=
  rootRateHeatTime (1/2) T

def halfRootUnsignedEnergy (T : ℝ) : ℝ :=
  unsignedHeatEnergy (halfRootHeatTime T) T

def halfRootSignedEnergy (T : ℝ) : ℝ :=
  sourceHeatEnergy (halfRootHeatTime T) T

def halfRootPolarityOverlap (T : ℝ) : ℝ :=
  positiveNegativeHeatOverlap (halfRootHeatTime T) T

/-- Source-independent REAL polynomial/exponential absorption.
An explicit ordinary proof uses (1+T)^A<=2^A(1+T^A)
for A>=1, and exp(T)>=T^k/k! for all integer k.
For example B_A=2^A[4(2!+(A+2)!)+32(5!+(A+5)!)]
suffices. The pinned-Lean factorial/calc port is NOT_RUN.
This contains no original Mobius signed growth assumption. -/
def GaussianPolynomialExpAbsorptionTarget : Prop :=
  ∀ A : ℕ, 1 ≤ A →
    ∃ B : ℝ, 0 ≤ B ∧
      ∀ T : ℝ, 0 ≤ T →
        (4*T^2+32*T^5)*(1+T)^A ≤ B*Real.exp T

/-- The ACTUAL absolute Gaussian coefficient is at most ONE.
No artificial independence or probabilistic model. -/
theorem unsignedHeatCoeff_le_one
    (s : ℝ) (hs : 0 ≤ s) (n : ℕ) :
    unsignedHeatRadius s n ≤ 1 := by
  unfold unsignedHeatRadius sourceHeatCoeff
  rw [abs_mul, abs_of_nonneg (logHeatMultiplier_pos s n).le]
  have hm := logHeatMultiplier_le_one hs n
  have hmu := moebiusReal_abs_le_one n
  have hpos := (logHeatMultiplier_pos s n).le
  calc
    logHeatMultiplier s n*|moebiusReal n| ≤
      logHeatMultiplier s n*1 :=
      mul_le_mul_of_nonneg_left hmu hpos
    _ ≤ 1 := by simpa using hm

/-- The complete POSITIVE absolute heated physical wave is bounded
by 4 exp(T/2) from TRUE original inverse-square-root weights.
All original born responses are preserved and nonnegative. -/
theorem unsignedHeatWave_le_four_sqrt_exp
    (s T u : ℝ) (hs : 0 ≤ s) :
    radiusWave (unsignedHeatRadius s) T u ≤
      4*Real.sqrt (Real.exp T) := by
  have hTerm : ∀ n ∈ endpointIndex T,
      unsignedHeatRadius s n*pickupResponse n u ≤
        2*(Real.sqrt (n : ℝ))⁻¹ := by
    intro n hn
    have hresp0 := response_nonneg (Finset.mem_Icc.mp hn).1 u
    have hresp := response_le_two_inv_sqrt
      (Finset.mem_Icc.mp hn).1 u
    calc
      unsignedHeatRadius s n*pickupResponse n u ≤
          1*pickupResponse n u :=
        mul_le_mul_of_nonneg_right
          (unsignedHeatCoeff_le_one s hs n) hresp0
      _ ≤ 2*(Real.sqrt (n : ℝ))⁻¹ := by simpa using hresp
  calc
    radiusWave (unsignedHeatRadius s) T u ≤
      ∑ n ∈ endpointIndex T,
        2*(Real.sqrt (n : ℝ))⁻¹ := by
          unfold radiusWave
          exact Finset.sum_le_sum (by
            intro n hn
            exact hTerm n hn)
    _ = 2*(∑ n ∈ endpointIndex T,
        (Real.sqrt (n : ℝ))⁻¹) := by rw [Finset.mul_sum]
    _ ≤ 2*(2*Real.sqrt (Real.exp T)) := by
      exact mul_le_mul_of_nonneg_left
        (endpoint_invsqrt_sum_le_two_sqrt_exp T) (by norm_num)
    _ = _ := by ring

/-- The missing UNCONDITIONAL companion to the PNT-free
unsigned heat LOWER: the entire original absolute heat
square is <=16 T exp T for ANY heat parameter s>=0.
This is positive and does not control SIGNED heat. -/
theorem unsignedHeatEnergy_le_sixteen_time_exp
    (s T : ℝ) (hs : 0 ≤ s) (hT : 0 ≤ T) :
    unsignedHeatEnergy s T ≤ 16*T*Real.exp T := by
  have hcont : Continuous (radiusWave (unsignedHeatRadius s) T) :=
    radiusWave_continuous (unsignedHeatRadius s) T
  have hpoint : ∀ u : ℝ,
      (radiusWave (unsignedHeatRadius s) T u)^2 ≤
        (4*Real.sqrt (Real.exp T))^2 := by
    intro u
    have hnonneg : 0 ≤ radiusWave (unsignedHeatRadius s) T u := by
      unfold radiusWave
      apply Finset.sum_nonneg
      intro n hn
      exact mul_nonneg (abs_nonneg _)
        (response_nonneg (Finset.mem_Icc.mp hn).1 u)
    exact (sq_le_sq₀ hnonneg (by positivity)).mpr
      (unsignedHeatWave_le_four_sqrt_exp s T u hs)
  have hsqrt : (Real.sqrt (Real.exp T))^2 = Real.exp T :=
    Real.sq_sqrt (Real.exp_pos T).le
  have hI : IntervalIntegrable
      (fun u : ℝ => radiusWave (unsignedHeatRadius s) T u ^ 2)
      volume 0 T :=
    (hcont.pow 2).intervalIntegrable 0 T
  have hc : IntervalIntegrable
      (fun _ : ℝ => (4*Real.sqrt (Real.exp T))^2)
      volume 0 T := continuous_const.intervalIntegrable 0 T
  change (∫ u in (0 : ℝ)..T,
      radiusWave (unsignedHeatRadius s) T u ^ 2) ≤
      16*T*Real.exp T
  calc
    (∫ u in (0 : ℝ)..T,
      radiusWave (unsignedHeatRadius s) T u ^ 2) ≤
        ∫ _u in (0 : ℝ)..T,
          (4*Real.sqrt (Real.exp T))^2 := by
            apply intervalIntegral.integral_mono_on hT hI hc
            intro u hu
            exact hpoint u
    _ = (4*Real.sqrt (Real.exp T))^2*T := by
      rw [intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring
    _ = 16*T*Real.exp T := by
      rw [mul_pow,hsqrt]
      ring

/-- Exact ORIGINAL relative precision: H/U=1-4Overlap/U.
The denominator is genuinely positive on all dyadic J>=9
with T_J>=32 by the old true squarefree-source lower.
No cancellation estimate is used. -/
theorem halfRoot_polarity_relative_identity
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (hT32 : 32 ≤ dyadicTime J) :
    1 - 4*halfRootPolarityOverlap (dyadicTime J)/
        halfRootUnsignedEnergy (dyadicTime J) =
      halfRootSignedEnergy (dyadicTime J)/
        halfRootUnsignedEnergy (dyadicTime J) := by
  let T : ℝ := dyadicTime J
  have hU := halfRoot_schedule_unsigned_heat_exponential_lower
    hPop hResponse hIntegral J hJ hT32
  have hpos : 0 < halfRootUnsignedEnergy T := by
    dsimp [halfRootUnsignedEnergy,halfRootHeatTime]
    have hexp : 0 < Real.exp T/65536 := by positivity
    exact hexp.trans_le hU
  have hEq := signedHeatCancellationDebt_eq_four_overlap
    (halfRootHeatTime T) T
  dsimp [signedHeatCancellationDebt,halfRootUnsignedEnergy,
    halfRootSignedEnergy,halfRootPolarityOverlap] at hEq ⊢
  apply (div_eq_iff hpos.ne').mpr
  field_simp
  linarith [hEq]

/-- NEW classical-PNT relative cancellation law, on the
SAME true Mobius source: for EACH integer logarithmic power A,
the signed heat energy H is negligible compared with its
UNSIGNED positive heat energy U at order (1+T)^(-A).
The single new scalar gate is ordinary factorial arithmetic.
The PNT input is classical but not pinned-Lean imported.
This does NOT provide exponential relative precision. -/
theorem classicalPNT_relative_gaussian_cancellation_all_log_powers
    (hPNT : OriginalBalancedPNTLogPowerTarget)
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (hAbsorb : GaussianPolynomialExpAbsorptionTarget)
    (A : ℕ) (hA : 1 ≤ A) :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ J : ℕ, 9 ≤ J → 32 ≤ dyadicTime J →
        (1+dyadicTime J)^A*
          halfRootSignedEnergy (dyadicTime J) ≤
          K * halfRootUnsignedEnergy (dyadicTime J) := by
  obtain ⟨C,hC,hCross⟩ := hPNT A hA
  obtain ⟨B,hB,hPoly⟩ := hAbsorb A hA
  let K : ℝ := 65536*(2*C+B)
  have hK : 0 ≤ K := by dsimp [K]; positivity
  refine ⟨K,hK,?_⟩
  intro J hJ hT32
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := by dsimp [T]; linarith
  let s : ℝ := halfRootHeatTime T
  have hs : 0 ≤ s := by
    dsimp [s,halfRootHeatTime]
    exact rootRateHeatTime_nonneg _ _
  have hDiag := (pickupDiagonal_quadratic_bound hT).2
  have hCross := hCross T hT
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
  have hTotal : pickupEnergy T ≤
      2*T^2+C*Real.exp T/(1+T)^A := by
    linarith
  have hHeat :=
    heatEnergy_le_pickup_add_radius hs hT
  have hRadius :
      sourceHeatRadiusEnergy s T ≤ 16*T^5 := by
    simpa only [s,halfRootHeatTime] using
      halfRootHeat_radiusEnergy_le_quintic
        originalInverseRootInventory_closed_from_existing_source hT
  have hH :
      sourceHeatEnergy s T ≤
        2*C*Real.exp T/(1+T)^A+4*T^2+32*T^5 := by
    linarith [hHeat,hRadius,hTotal]
  have hUnsigned := halfRoot_schedule_unsigned_heat_exponential_lower
    hPop hResponse hIntegral J hJ hT32
  have hPow : 0 < (1+T)^A := pow_pos (by linarith) _
  have hExp : 0 ≤ Real.exp T := (Real.exp_pos _).le
  have hPolyT := hPoly T hT
  have hMult := mul_le_mul_of_nonneg_right hH hPow.le
  have hDiv : (2*C*Real.exp T/(1+T)^A)*(1+T)^A =
      2*C*Real.exp T := by
    exact div_mul_cancel₀ _ hPow.ne'
  have hU :
      Real.exp T ≤ 65536*unsignedHeatEnergy s T := by
    dsimp [halfRootUnsignedEnergy,halfRootHeatTime] at hUnsigned
    dsimp [s] at hUnsigned
    linarith
  have hBudget :
      (1+T)^A*sourceHeatEnergy s T ≤
        (2*C+B)*Real.exp T := by
    nlinarith [hMult,hPolyT,hDiv]
  have hFinal :
      (1+T)^A*sourceHeatEnergy s T ≤
      K*unsignedHeatEnergy s T := by
    dsimp [K]
    have hCP : 0 ≤ 2*C+B := by linarith
    nlinarith [hBudget,mul_le_mul_of_nonneg_left hU hCP]
  simpa [halfRootSignedEnergy,halfRootUnsignedEnergy,
    halfRootHeatTime,s,T] using hFinal

end GRWTSK.NumberTheory.Moebius.GaussianRelativePolarityPNT
