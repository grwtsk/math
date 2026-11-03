/- Copyright (c) 2026 grwtsk contributors. MIT.
Original mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianUnsignedDualEnvelope
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSignedEvolution
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# The missing SIGNED HEAT cancellation is exactly a two-polarity overlap

The previous unsigned dual-envelope shows that the complete ORIGINAL
positive magnitude source cannot be paid by separately controlling
the unsigned HEATED energy and the positive reconstruction-error
radius: their sum is at least exp(T_J)/32768 for J>=9, EVERY s>=0.

For the GENUINE signed heated coefficient c_s(n)=mu(n)*e^(-s log²n),
define its TRUE positive/negative REAL parts
  p_s(n)=max(c_s(n),0), q_s(n)=max(-c_s(n),0).
They retain every original integer, every squareful zero, all
birth gates and both ordered orientations. At EVERY physical u,
  signedHeatWave = P_s(u)-Q_s(u),
  absoluteHeatWave = P_s(u)+Q_s(u).
The complete energy relation is EXACT:
  unsignedHeatEnergy - signedHeatEnergy
     =4*int_0^T P_s(u)*Q_s(u)du >=0.      (P)
This is the true mixed sign-cancellation credit, not an invented
statistical covariance or a positive Gram replacement.

At every original dyadic J>=9, if 0<=s and s*T_J²<=1/2,
the source heat multiplier for all n<=exp(T_J) is >=1/2;
hence unsignedHeatEnergy(s,T_J)>=exp(T_J)/65536.
Therefore any hypothesized rate-r bound on the genuine signed
heated energy at that SAME J must pay the signed mixed
polarity overlap:
  4*int P_s Q_s >=exp(T_J)/65536-C*exp(r*T_J).

For the critical reconstruction schedule s(T)=exp(-T/2),
the condition s(T)*T²<=1/2 eventually holds by elementary
exponential Taylor. The TRUE signed cancellation would need
growth at exponential rate ONE even if the signed heated
energy were bounded by exp(o(T)). This is a necessary
conditional cancellation debt, not a proof it occurs.

The source exact finite-sum/polarity/integral identities below
are proof candidates, not kernel-verified Lean theorems.
The original squarefree and terminal positive integral gates
remain explicit UNPORTED elementary inputs, no RH assumption.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedPolarityDebt

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianUnsignedDualEnvelope
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUniformEnergy
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement

/-- True positive and negative coefficient polarities, with ALL
original squareful-zero indices retained as two zero entries. -/
def positiveHeatCoeff (s : ℝ) (n : ℕ) : ℝ :=
  max (sourceHeatCoeff s n) 0

def negativeHeatCoeff (s : ℝ) (n : ℕ) : ℝ :=
  max (-sourceHeatCoeff s n) 0

/-- Full positive physical wave of original heated +μ indices. -/
def positiveHeatWave (s T u : ℝ) : ℝ :=
  radiusWave (positiveHeatCoeff s) T u

/-- Full positive physical wave of original heated -μ indices. -/
def negativeHeatWave (s T u : ℝ) : ℝ :=
  radiusWave (negativeHeatCoeff s) T u

/-- The ACTUAL mixed two-polarity physical-time Gram overlap.
No modeled statistical independence, no diagonal deletion. -/
def positiveNegativeHeatOverlap (s T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    positiveHeatWave s T u*negativeHeatWave s T u

/-- This is the exact arithmetic sign-cancellation debit
relative to the full NONNEGATIVE absolute heated source. -/
def signedHeatCancellationDebt (s T : ℝ) : ℝ :=
  unsignedHeatEnergy s T - sourceHeatEnergy s T

theorem positive_negative_coeff_sum_eq_abs
    (s : ℝ) (n : ℕ) :
    positiveHeatCoeff s n + negativeHeatCoeff s n =
      unsignedHeatRadius s n := by
  unfold positiveHeatCoeff negativeHeatCoeff unsignedHeatRadius
  by_cases h : 0 ≤ sourceHeatCoeff s n
  · rw [max_eq_left h, max_eq_right (by linarith : -sourceHeatCoeff s n ≤ 0)]
    rw [abs_of_nonneg h]
    ring
  · have hneg : sourceHeatCoeff s n ≤ 0 := le_of_lt (lt_of_not_ge h)
    rw [max_eq_right hneg, max_eq_left (by linarith : 0 ≤ -sourceHeatCoeff s n)]
    rw [abs_of_nonpos hneg]
    ring

theorem positive_negative_coeff_sub_eq_source
    (s : ℝ) (n : ℕ) :
    positiveHeatCoeff s n - negativeHeatCoeff s n =
      sourceHeatCoeff s n := by
  unfold positiveHeatCoeff negativeHeatCoeff
  by_cases h : 0 ≤ sourceHeatCoeff s n
  · rw [max_eq_left h, max_eq_right (by linarith : -sourceHeatCoeff s n ≤ 0)]
    ring
  · have hneg : sourceHeatCoeff s n ≤ 0 := le_of_lt (lt_of_not_ge h)
    rw [max_eq_right hneg, max_eq_left (by linarith : 0 ≤ -sourceHeatCoeff s n)]
    ring

/-- The exact POSITIVE physical heat envelope is the sum of
the genuine two signs at every true source index. -/
theorem unsignedHeatWave_eq_polarity_sum
    (s T u : ℝ) :
    radiusWave (unsignedHeatRadius s) T u =
      positiveHeatWave s T u + negativeHeatWave s T u := by
  unfold positiveHeatWave negativeHeatWave radiusWave
  calc
    (∑ n ∈ endpointIndex T,
      unsignedHeatRadius s n*pickupResponse n u) =
      ∑ n ∈ endpointIndex T,
        (positiveHeatCoeff s n+negativeHeatCoeff s n)*
          pickupResponse n u := by
        apply Finset.sum_congr rfl
        intro n hn
        rw [positive_negative_coeff_sum_eq_abs]
    _ = _ := by simp only [add_mul, Finset.sum_add_distrib]

/-- The SIGNED Gaussian heat response retains BOTH source
polarities with opposite sign. The sourceHeatPhase index
is the genuine original positive integer, not a finite
symbol that could lose squareful zero states. -/
theorem signedHeatWave_eq_polarity_difference
    (s T u : ℝ) :
    sourceHeatWave s T u =
      positiveHeatWave s T u - negativeHeatWave s T u := by
  have hsource :
      sourceHeatWave s T u =
      ∑ n ∈ endpointIndex T,
        sourceHeatCoeff s n*pickupResponse n u := by
    unfold sourceHeatWave observedWave
    apply Finset.sum_congr rfl
    intro n hn
    unfold observedCoeff sourceHeatPhase
    rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  rw [hsource]
  unfold positiveHeatWave negativeHeatWave radiusWave
  calc
    (∑ n ∈ endpointIndex T,
      sourceHeatCoeff s n*pickupResponse n u) =
      ∑ n ∈ endpointIndex T,
        (positiveHeatCoeff s n-negativeHeatCoeff s n)*
          pickupResponse n u := by
        apply Finset.sum_congr rfl
        intro n hn
        rw [positive_negative_coeff_sub_eq_source]
    _ = _ := by simp only [sub_mul, Finset.sum_sub_distrib]

/-- Exact original physical-time polarity cancellation identity:
the difference between the absolute and signed heat square
energies is the sum of BOTH mixed (plus/minus) Gram orientations,
equal to 4 times their nonnegative time overlap.
The true source masks, births and indices are unchanged. -/
theorem signedHeatCancellationDebt_eq_four_overlap
    (s T : ℝ) :
    signedHeatCancellationDebt s T =
      4*positiveNegativeHeatOverlap s T := by
  let p : ℝ → ℝ := positiveHeatWave s T
  let n : ℝ → ℝ := negativeHeatWave s T
  let a : ℝ → ℝ := radiusWave (unsignedHeatRadius s) T
  let h : ℝ → ℝ := sourceHeatWave s T
  have hCA : Continuous a :=
    radiusWave_continuous (unsignedHeatRadius s) T
  have hCH : Continuous h := by
    unfold h sourceHeatWave
    exact observedWave_continuous sourceHeatPhase
      (sourceHeatCoeff s) T
  have hCP : Continuous p :=
    radiusWave_continuous (positiveHeatCoeff s) T
  have hCN : Continuous n :=
    radiusWave_continuous (negativeHeatCoeff s) T
  have hA : IntervalIntegrable (fun u : ℝ => a u^2) volume 0 T :=
    (hCA.pow 2).intervalIntegrable 0 T
  have hH : IntervalIntegrable (fun u : ℝ => h u^2) volume 0 T :=
    (hCH.pow 2).intervalIntegrable 0 T
  have hP : IntervalIntegrable (fun u : ℝ => 4*(p u*n u))
      volume 0 T :=
    (continuous_const.mul (hCP.mul hCN)).intervalIntegrable 0 T
  have hpoint (u : ℝ) :
      a u^2 - h u^2 = 4*(p u*n u) := by
    have ha := unsignedHeatWave_eq_polarity_sum s T u
    have hh := signedHeatWave_eq_polarity_difference s T u
    change a u=p u+n u at ha
    change h u=p u-n u at hh
    rw [ha,hh]
    ring
  unfold signedHeatCancellationDebt
    unsignedHeatEnergy sourceHeatEnergy
    radiusEnergy observedEnergy positiveNegativeHeatOverlap
  change
    (∫ u in (0 : ℝ)..T, a u^2) -
    (∫ u in (0 : ℝ)..T, h u^2) =
      4*(∫ u in (0 : ℝ)..T, p u*n u)
  calc
    (∫ u in (0 : ℝ)..T, a u^2) -
    (∫ u in (0 : ℝ)..T, h u^2) =
      ∫ u in (0 : ℝ)..T, (a u^2-h u^2) := by
        rw [intervalIntegral.integral_sub hA hH]
    _ = ∫ u in (0 : ℝ)..T, 4*(p u*n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      exact hpoint u
    _ = 4*(∫ u in (0 : ℝ)..T, p u*n u) := by
      rw [intervalIntegral.integral_const_mul]

/-- Elementary uniform retained HEAT amplitude:
s*T²<=1/2 means every actual original coefficient in
endpointIndex T retains at least half of its original
magnitude. No source n is removed or altered. -/
theorem unsignedHeatRadius_ge_half_source
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T)
    (hSmall : s*T^2 ≤ 1/2)
    {n : ℕ} (hn : n ∈ endpointIndex T) :
    (1/2 : ℝ)*sourceUnsignedRadius n ≤
      unsignedHeatRadius s n := by
  have hlog := source_index_logFrequency_le hT hn
  have hSquare : (logFrequency n)^2 ≤ T^2 :=
    (sq_le_sq₀ hlog.1 hT).mpr hlog.2
  have hsmallTerm : s*(logFrequency n)^2 ≤ 1/2 :=
    (mul_le_mul_of_nonneg_left hSquare hs).trans hSmall
  have hExp : (1/2 : ℝ) ≤
      logHeatMultiplier s n := by
    have hexp := Real.add_one_le_exp
      (-(s*(logFrequency n)^2))
    unfold logHeatMultiplier
    linarith
  unfold sourceUnsignedRadius unsignedHeatRadius sourceHeatCoeff
  rw [abs_mul, abs_of_pos (logHeatMultiplier_pos s n)]
  exact mul_le_mul_of_nonneg_right hExp (abs_nonneg _)

/-- For a sufficiently near-identity heat at the ORIGINAL
dyadic J, the true unsigned heated physical square energy
alone is exponentially large. This is a POSITIVE envelope,
not a lower bound on SIGNED heat energy. -/
theorem unsignedHeatEnergy_large_of_small_heat
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (s : ℝ) (hs : 0 ≤ s)
    (hSmall : s*(dyadicTime J)^2 ≤ 1/2) :
    Real.exp (dyadicTime J)/65536 ≤
      unsignedHeatEnergy s (dyadicTime J) := by
  let T : ℝ := dyadicTime J
  let c : ℝ := Real.exp (T/2)/128
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hQuarter : (1/4 : ℝ) ≤ T := by
    have hOne := (hPop J hJ).1
    dsimp [T]
    linarith
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hpoint (n : ℕ) (hn : n ∈ endpointIndex T) (u : ℝ) :
      (1/2 : ℝ)*(sourceUnsignedRadius n*pickupResponse n u) ≤
        unsignedHeatRadius s n*pickupResponse n u :=
    mul_le_mul_of_nonneg_right
      (unsignedHeatRadius_ge_half_source hs hT hSmall hn)
      (response_nonneg (Finset.mem_Icc.mp hn).1 u)
  have hWave (u : ℝ) :
      (1/2 : ℝ)*radiusWave sourceUnsignedRadius T u ≤
        radiusWave (unsignedHeatRadius s) T u := by
    unfold radiusWave
    calc
      (1/2 : ℝ) *
        (∑ n ∈ endpointIndex T,
          sourceUnsignedRadius n*pickupResponse n u) =
        ∑ n ∈ endpointIndex T,
          (1/2 : ℝ)*
           (sourceUnsignedRadius n*pickupResponse n u) := by
             rw [Finset.mul_sum]
      _ ≤ ∑ n ∈ endpointIndex T,
           unsignedHeatRadius s n*pickupResponse n u := by
             apply Finset.sum_le_sum
             intro n hn
             exact hpoint n hn u
  have hFinal : ∀ u : ℝ, T-1/4 ≤ u → u ≤ T →
      c ≤ radiusWave (unsignedHeatRadius s) T u := by
    intro u hu huT
    have hUnsigned :=
      sourceUnsignedWave_terminal_lower hPop hResponse J hJ u
        (by simpa [T] using hu)
        (by simpa [T] using huT)
    have hsumb := hWave u
    dsimp [c]
    linarith
  have hLow := hIntegral (unsignedHeatRadius s) T c
    hQuarter hc hFinal
  have hExp : (Real.exp (T/2))^2 = Real.exp T := by
    rw [pow_two, ←Real.exp_add]
    congr 1
    ring
  have hNorm : (1/4 : ℝ)*c^2 = Real.exp T/65536 := by
    dsimp [c]
    rw [div_pow, hExp]
    ring
  change Real.exp T/65536 ≤
    radiusEnergy (unsignedHeatRadius s) T
  rw [←hNorm]
  exact hLow

/-- A genuinely nonzero near-identity schedule exp(-T/2)
preserves AT LEAST HALF of every ORIGINAL coefficient for
T>=32. This is purely exponential Taylor arithmetic.
Specifically, T^4<=384*exp(T/2) and T^2>=1024 imply
exp(-T/2)*T²<=384/T²<=3/8<1/2. -/
theorem halfRootSchedule_preserves_half_from_time_32
    (T : ℝ) (hT : 32 ≤ T) :
    rootRateHeatTime (1/2) T*T² ≤ 1/2 := by
  have hTnonneg : 0 ≤ T := by linarith
  have hT2 : (1024 : ℝ) ≤ T² := by nlinarith
  have hfour : T^4 ≤ 384*Real.exp (T/2) := by
    have h := pow_le_factorial_mul_exp
      (by norm_num : (0:ℝ)<(1/2))
      hTnonneg 4
    convert h using 1 <;> ring
  have he : Real.exp (T/2)*Real.exp (-T/2)=1 := by
    rw [←Real.exp_add]
    norm_num
  have hh :
      T^4*Real.exp (-T/2) ≤ 384 := by
    have hb := mul_le_mul_of_nonneg_right hfour
      (Real.exp_pos _).le
    nlinarith [hb]
  have hz : 0 ≤ T²*Real.exp (-T/2) := by positivity
  have hmult := mul_nonneg
    (by linarith : 0 ≤ T²-1024) hz
  unfold rootRateHeatTime
  nlinarith [hh,hmult]

/-- The critical near-identity Gaussian source retains an
EXPONENTIALLY LARGE POSITIVE UNSIGNED heated energy for all
dyadic times T_J>=32. It is not a lower bound on signed
sourceHeatEnergy: its signs still require cancellation. -/
theorem halfRoot_schedule_unsigned_heat_exponential_lower
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (hT : 32 ≤ dyadicTime J) :
    Real.exp (dyadicTime J)/65536 ≤
      unsignedHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) := by
  exact unsignedHeatEnergy_large_of_small_heat
    hPop hResponse hIntegral J hJ
    (rootRateHeatTime (1/2) (dyadicTime J))
    (rootRateHeatTime_nonneg _ _)
    (halfRootSchedule_preserves_half_from_time_32 _ hT)

/-- Quantitative NECESSARY SIGNED-POLARITY cancellation bill
for any claimed subcritical signed Gaussian observation:
the total positive/negative ORIGINAL mixed Gram must
offset an exponent-one unsigned source contribution.
This theorem assumes a SIGNED heated energy upper at the
current J, and DOES NOT prove that upper. -/
theorem halfRoot_schedule_requires_signed_polarity_credit
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (hT : 32 ≤ dyadicTime J)
    (r C : ℝ)
    (hObserved : sourceHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) ≤
      C*Real.exp (r*dyadicTime J)) :
    Real.exp (dyadicTime J)/65536 -
      C*Real.exp (r*dyadicTime J) ≤
      4*positiveNegativeHeatOverlap
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) := by
  exact signedHeatCancellationDebt_necessary_for_small_observation
    hPop hResponse hIntegral J hJ
    (rootRateHeatTime (1/2) (dyadicTime J))
    (rootRateHeatTime_nonneg _ _)
    (halfRootSchedule_preserves_half_from_time_32 _ hT)
    r C hObserved

/-- Quantify the NEGATIVE MIXED signed-polarity interference
that any sub-rate ONE signed Gaussian energy estimate needs:
  4*int PositiveWave*NegativeWave
   >= exp(T_J)/2^16 - observedSignedEnergy.
This is a source-correct necessary cancellation bill, never
an assertion that the observed signed energy is small. -/
theorem signedHeatCancellationDebt_necessary_for_small_observation
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (s : ℝ) (hs : 0 ≤ s)
    (hSmall : s*(dyadicTime J)^2 ≤ 1/2)
    (r C : ℝ)
    (hObserved : sourceHeatEnergy s (dyadicTime J) ≤
      C*Real.exp (r*dyadicTime J)) :
    Real.exp (dyadicTime J)/65536 -
       C*Real.exp (r*dyadicTime J) ≤
       4*positiveNegativeHeatOverlap s (dyadicTime J) := by
  have hlarge := unsignedHeatEnergy_large_of_small_heat
    hPop hResponse hIntegral J hJ s hs hSmall
  have heq := signedHeatCancellationDebt_eq_four_overlap
    s (dyadicTime J)
  unfold signedHeatCancellationDebt at heq
  linarith

end GRWTSK.NumberTheory.Moebius.GaussianSignedPolarityDebt
