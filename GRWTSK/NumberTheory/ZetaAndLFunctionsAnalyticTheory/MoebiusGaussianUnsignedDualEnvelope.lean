/- Copyright (c) 2026 grwtsk contributors. MIT.
Original mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSquarefreeRadiusSharpness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianStrongHeatUniformEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianRadiusSharpThreshold
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# HEAT-AGNOSTIC absolute-envelope no-go for true Möbius physical source

This is a genuine unconditional ORDINARY-mathematical obstruction to
using TWO independently nonnegative Gaussian source envelopes to
establish all-positive-rate signed energy.

At every original n, any heat s>=0 has EXACT coefficient decomposition
 |mu(n)|=|mu(n)*exp(-s(log n)^2)|
         +|mu(n)|*(1-exp(-s(log n)^2)).
The original response is NONNEGATIVE with its literal birth at log n.
Therefore the TOTAL positive unsigned waveform is exactly the sum of
two nonnegative, source-indexed physical response waves:
  A(T,u)=U_s(T,u)+R_s(T,u).

Both use the COMPLETE original index set and all diagonal and both
ordered cross pairs when integrated. The square-energy inequality
  A(T,u)^2 <=2(U_s(T,u)^2+R_s(T,u)^2)
has no arithmetic assumption. The previous PNT-free squarefree band
count and actual final-quarter response give
  A(T_J,u)>=exp(T_J/2)/64 on [T_J-1/4,T_J], J>=9.
Hence
  unsignedHeatEnergy(s,T_J)+sourceHeatRadiusEnergy(s,T_J)
   >=exp(T_J)/32768       for EVERY s>=0, J>=9.

Thus NO heat schedule (even s depending arbitrarily on the original
dyadic J) can make BOTH of these POSITIVE square-energy envelopes
subexponential at all positive rates. This is a barrier to absolute
majorization, not to SIGNED arithmetic cancellation, and not RH.

The existing elementary squarefree population, actual terminal response
and positive last-quarter interval integral are EXPLICIT unported
pinned-Lean gates; this new file introduces NO new analytic, RH or
global-signed-FAR premise. Lean compilation user-DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianUnsignedDualEnvelope

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUniformEnergy
open GRWTSK.NumberTheory.Moebius.GaussianRadiusSharpThreshold

/-- Literal original squarefree source magnitude at EVERY original
positive integer. Squareful zeros are still zeros. -/
def sourceUnsignedRadius (n : ℕ) : ℝ := |moebiusReal n|

/-- The positive magnitude of the ACTUAL signed Gaussian heat
coefficient, NOT a surrogate Bernoulli or random sign. -/
def unsignedHeatRadius (s : ℝ) (n : ℕ) : ℝ :=
  |sourceHeatCoeff s n|

/-- True FULL positive original physical-time energy of the
unsigned Gaussian heat coefficients. This is NOT the signed
sourceHeatEnergy, and can be exponentially larger. -/
def unsignedHeatEnergy (s T : ℝ) : ℝ :=
  radiusEnergy (unsignedHeatRadius s) T

/-- Full original positive-square energy of the source
coefficient magnitudes, with unchanged physical birth. -/
def sourceUnsignedEnergy (T : ℝ) : ℝ :=
  radiusEnergy sourceUnsignedRadius T

/-- Exact coefficient identity for EVERY original integer n and
arbitrary real heat parameter s, using positivity of the Gaussian
multiplier. The positive-envelope interpretation uses s>=0. -/
theorem unsigned_heat_add_radius_eq_original
    (s : ℝ) (n : ℕ) :
    unsignedHeatRadius s n + sourceHeatRadius s n =
      sourceUnsignedRadius n := by
  unfold unsignedHeatRadius sourceHeatCoeff sourceHeatRadius
    sourceUnsignedRadius
  rw [abs_mul, abs_of_pos (logHeatMultiplier_pos s n)]
  ring

/-- Exact full source-wave identity, including zero squareful
coefficients and all original indices with their actual birth. -/
theorem sourceUnsignedWave_eq_heat_add_radius
    (s T u : ℝ) :
    radiusWave sourceUnsignedRadius T u =
      radiusWave (unsignedHeatRadius s) T u +
        radiusWave (sourceHeatRadius s) T u := by
  unfold radiusWave
  calc
    (∑ n ∈ endpointIndex T,
      sourceUnsignedRadius n * pickupResponse n u) =
      ∑ n ∈ endpointIndex T,
        (unsignedHeatRadius s n + sourceHeatRadius s n) *
          pickupResponse n u := by
          apply Finset.sum_congr rfl
          intro n hn
          rw [unsigned_heat_add_radius_eq_original]
    _ = (∑ n ∈ endpointIndex T,
            unsignedHeatRadius s n * pickupResponse n u) +
          (∑ n ∈ endpointIndex T,
            sourceHeatRadius s n * pickupResponse n u) := by
          simp only [add_mul, Finset.sum_add_distrib]

/-- A genuine nonzero ORIGINAL integer Möbius coefficient has
absolute magnitude at least one: its value is an INTEGER.
No PNT or signed cancellation is required. -/
theorem sourceUnsignedRadius_ge_one_of_nonzero
    (n : ℕ) (hn : moebiusReal n ≠ 0) :
    (1 : ℝ) ≤ sourceUnsignedRadius n := by
  unfold sourceUnsignedRadius moebiusReal
  have hi : (ArithmeticFunction.moebius n : ℤ) ≠ 0 := by
    intro h
    apply hn
    exact_mod_cast h
  have h := Int.one_le_abs hi
  simpa only [← Int.cast_abs, ← Int.cast_one, Int.cast_le]
    using h

/-- The true squarefree band from the PREEXISTING sharp-radius
module already gives N/32 ORIGINAL source integer addresses.
This time use the original full |mu|, not the Gaussian LOSS. -/
theorem sourceUnsignedWave_terminal_lower
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (u : ℝ)
    (hu : dyadicTime J - 1/4 ≤ u)
    (huT : u ≤ dyadicTime J) :
    Real.exp (dyadicTime J/2)/64 ≤
      radiusWave sourceUnsignedRadius (dyadicTime J) u := by
  let T : ℝ := dyadicTime J
  let band : Finset ℕ := squarefreeDyadicWitnessBand J
  let c : ℝ := Real.exp (-T/2)/2
  obtain ⟨hT,hSubset,hCard⟩ := hPop J hJ
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hTerm (n : ℕ) (hn : n ∈ band) :
      c ≤ sourceUnsignedRadius n * pickupResponse n u := by
    have hnNonzero : moebiusReal n ≠ 0 :=
      (Finset.mem_filter.mp hn).2
    have hnOne := sourceUnsignedRadius_ge_one_of_nonzero n hnNonzero
    have hnResp := hResponse J hJ n hn u hu huT
    calc
      c = 1 * (Real.exp (-T/2)/2) := by dsimp [c]; ring
      _ ≤ sourceUnsignedRadius n*(Real.exp (-T/2)/2) :=
        mul_le_mul_of_nonneg_right hnOne (by positivity)
      _ ≤ sourceUnsignedRadius n * pickupResponse n u :=
        mul_le_mul_of_nonneg_left
          (by simpa [T] using hnResp)
          (abs_nonneg _)
  have hBand :
      (band.card : ℝ)*c ≤
        ∑ n ∈ band, sourceUnsignedRadius n * pickupResponse n u := by
    calc
      (band.card : ℝ)*c = ∑ _n ∈ band, c := by
        simp [Finset.sum_const, nsmul_eq_mul]
      _ ≤ _ := Finset.sum_le_sum (by
        intro n hn
        exact hTerm n hn)
  have hExtra (n : ℕ) (hn : n ∈ endpointIndex T) :
      0 ≤ sourceUnsignedRadius n * pickupResponse n u :=
    mul_nonneg (abs_nonneg _) (response_nonneg
      (Finset.mem_Icc.mp hn).1 u)
  have hSubsetSum :
      (∑ n ∈ band, sourceUnsignedRadius n * pickupResponse n u) ≤
      radiusWave sourceUnsignedRadius T u := by
    unfold radiusWave
    apply Finset.sum_le_sum_of_subset_of_nonneg hSubset
    intro n hn hnot
    exact hExtra n hn
  have hCardPaid :
      (Real.exp T/32)*c ≤ (band.card : ℝ)*c :=
    mul_le_mul_of_nonneg_right hCard hc
  have hExp : Real.exp T*Real.exp (-T/2) =
      Real.exp (T/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hNormalize :
      (Real.exp T/32)*c = Real.exp (T/2)/64 := by
    dsimp [c]
    rw [show (Real.exp T/32)*(Real.exp (-T/2)/2) =
      (Real.exp T*Real.exp (-T/2))/64 by ring, hExp]
  change Real.exp (T/2)/64 ≤
    radiusWave sourceUnsignedRadius T u
  rw [← hNormalize]
  exact hCardPaid.trans (hBand.trans hSubsetSum)

/-- Full UNSIGNED original-positive physical square energy is
exponentially large at EVERY original dyadic J>=9, independent
of heat. The only unported calculus is the PREEXISTING
ElementaryTerminalRadiusIntegralTarget for a positive
quarter-unit time slice. -/
theorem sourceUnsignedEnergy_dyadic_lower
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J) :
    Real.exp (dyadicTime J)/16384 ≤
      sourceUnsignedEnergy (dyadicTime J) := by
  let T : ℝ := dyadicTime J
  let c : ℝ := Real.exp (T/2)/64
  have hQuarter : (1/4 : ℝ) ≤ T := by
    have hh := (hPop J hJ).1
    dsimp [T]
    linarith
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hWave : ∀ u : ℝ, T-1/4 ≤ u → u ≤ T →
    c ≤ radiusWave sourceUnsignedRadius T u := by
      intro u hu huT
      simpa [T,c] using
        sourceUnsignedWave_terminal_lower
          hPop hResponse J hJ u hu huT
  have hlower := hIntegral sourceUnsignedRadius T c
    hQuarter hc hWave
  have hExp :
      (Real.exp (T/2))^2 = Real.exp T := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hNorm : (1/4 : ℝ)*c^2 =
      Real.exp T/16384 := by
    dsimp [c]
    rw [div_pow, hExp]
    ring
  change Real.exp T/16384 ≤
    radiusEnergy sourceUnsignedRadius T
  rw [← hNorm]
  exact hlower

/-- A pure Hilbert-square inequality on the ORIGINAL time
interval and exact original coefficient split:
  unsigned TOTAL energy <=2*(unsigned HEAT energy+positive ERROR energy).
The two positive envelopes retain both ordered original
Gram orientations and are not the SIGNED Gaussian waveform. -/
theorem sourceUnsignedEnergy_le_twice_split
    (s T : ℝ) (hT : 0 ≤ T) :
    sourceUnsignedEnergy T ≤
      2 * (unsignedHeatEnergy s T + sourceHeatRadiusEnergy s T) := by
  let a : ℝ → ℝ := radiusWave (unsignedHeatRadius s) T
  let b : ℝ → ℝ := radiusWave (sourceHeatRadius s) T
  have hA : IntervalIntegrable (fun u : ℝ => a u^2) volume 0 T :=
    ((radiusWave_continuous (unsignedHeatRadius s) T).pow 2).intervalIntegrable 0 T
  have hB : IntervalIntegrable (fun u : ℝ => b u^2) volume 0 T :=
    ((radiusWave_continuous (sourceHeatRadius s) T).pow 2).intervalIntegrable 0 T
  have hU : IntervalIntegrable
      (fun u : ℝ => (radiusWave sourceUnsignedRadius T u)^2)
      volume 0 T :=
    ((radiusWave_continuous sourceUnsignedRadius T).pow 2).intervalIntegrable 0 T
  have hTwo : IntervalIntegrable
      (fun u : ℝ => 2*a u^2 + 2*b u^2) volume 0 T := by
    exact ((hA.const_mul 2).add (hB.const_mul 2))
  have hpoint (u : ℝ) :
      (radiusWave sourceUnsignedRadius T u)^2 ≤
        2*a u^2+2*b u^2 := by
    have heq := sourceUnsignedWave_eq_heat_add_radius s T u
    change radiusWave sourceUnsignedRadius T u = a u+b u at heq
    rw [heq]
    nlinarith [sq_nonneg (a u-b u)]
  have hineq :
      (∫ u in (0 : ℝ)..T,
        (radiusWave sourceUnsignedRadius T u)^2) ≤
      ∫ u in (0 : ℝ)..T, (2*a u^2+2*b u^2) := by
    apply intervalIntegral.integral_mono_on hT hU hTwo
    intro u hu
    exact hpoint u
  have hlinear :
      (∫ u in (0 : ℝ)..T, (2*a u^2+2*b u^2)) =
        2*(∫ u in (0 : ℝ)..T, a u^2) +
        2*(∫ u in (0 : ℝ)..T, b u^2) := by
    rw [intervalIntegral.integral_add (hA.const_mul 2) (hB.const_mul 2)]
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_const_mul]
  unfold sourceUnsignedEnergy unsignedHeatEnergy
    sourceHeatRadiusEnergy radiusEnergy
  change
    (∫ u in (0 : ℝ)..T,
      (radiusWave sourceUnsignedRadius T u)^2) ≤
      2 * ((∫ u in (0 : ℝ)..T, a u^2) +
           (∫ u in (0 : ℝ)..T, b u^2))
  linarith [hineq, hlinear]

/-- HEAT-INDEPENDENT and RATE-SHARP obstruction to the
ABSOLUTE-two-budget strategy. It applies to EVERY s>=0,
including s varying with the original dyadic endpoint:
at least one positive square-energy envelope is
of exponential size exp(T_J). No RH assumption. -/
theorem any_heat_two_positive_envelopes_ge_original_shell
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (s : ℝ) (hs : 0 ≤ s) :
    Real.exp (dyadicTime J)/32768 ≤
      unsignedHeatEnergy s (dyadicTime J) +
        sourceHeatRadiusEnergy s (dyadicTime J) := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  have hSource := sourceUnsignedEnergy_dyadic_lower
    hPop hResponse hIntegral J hJ
  have hSplit := sourceUnsignedEnergy_le_twice_split
    s (dyadicTime J) hT
  linarith


/-- No arbitrary nonnegative heat schedule can make BOTH the
complete absolute heated energy and the complete positive
reconstruction-radius energy bounded at the SAME positive
exponential rate r<1 on ALL sufficiently large original
dyadic J. The true squarefree band gives the source lower;
the existing elementary exponential divergence is the ONLY
extra scale argument, not a research cancellation input. -/
theorem no_heat_schedule_two_positive_all_scale_rates
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (hDivergence : ElementaryDyadicExponentialDivergenceTarget)
    (r : ℝ) (hr : 0 < r) (hrOne : r < 1)
    (schedule : ℕ → ℝ)
    (hschedule : ∀ J : ℕ, 9 ≤ J → 0 ≤ schedule J)
    (CHeat CError : ℝ)
    (hHeat : ∀ J : ℕ, 9 ≤ J →
      unsignedHeatEnergy (schedule J) (dyadicTime J) ≤
        CHeat*Real.exp (r*dyadicTime J))
    (hError : ∀ J : ℕ, 9 ≤ J →
      sourceHeatRadiusEnergy (schedule J) (dyadicTime J) ≤
        CError*Real.exp (r*dyadicTime J)) :
    False := by
  have hDelta : 0 < 1-r := by linarith
  obtain ⟨J,hJ,hHuge⟩ := hDivergence (1-r) hDelta (CHeat+CError)
  let T : ℝ := dyadicTime J
  have hSource := any_heat_two_positive_envelopes_ge_original_shell
    hPop hResponse hIntegral J hJ (schedule J) (hschedule J hJ)
  have hHeatJ := hHeat J hJ
  have hErrorJ := hError J hJ
  have hUpper :
      Real.exp T/32768 ≤
      (CHeat+CError)*Real.exp (r*T) := by
    dsimp [T] at hSource hHeatJ hErrorJ ⊢
    linarith
  have hRate :
      (CHeat+CError)*Real.exp (r*T) <
        Real.exp T/1048576 := by
    calc
      (CHeat+CError)*Real.exp (r*T) <
          (Real.exp ((1-r)*T)/1048576)*Real.exp (r*T) :=
            mul_lt_mul_of_pos_right hHuge (Real.exp_pos _)
      _ = Real.exp T/1048576 := by
        rw [div_mul_eq_mul_div, ← Real.exp_add]
        congr 1
        ring
  have hpos : 0 < Real.exp T := Real.exp_pos T
  linarith [hUpper,hRate]


end GRWTSK.NumberTheory.Moebius.GaussianUnsignedDualEnvelope
