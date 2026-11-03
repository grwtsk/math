/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSaturatedRadiusUpper
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalLaplaceZeroBarrier
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Sharp unconditional exponent threshold for positive Gaussian radius

On the SAME original dyadic grid T_J=J*log 2, N=2^J,
J>=9, and on the ACTUAL original integer interval
  I_J=[N/4,N/2] (including both endpoints),
a completely elementary squarefree union bound gives
  #{n in I_J : |mu(n)|=1} >=N/32.
Indeed numbers divisible by some d², d>=2, have at
most (N/4)/d²+1 occurrences in I_J. The elementary
sum_(d>=2)1/d²<=3/4 and d<=sqrt(N/2) give
  #squarefree >=N/4+1-3N/16-sqrt(N/2)>=N/32
for N>=512. No PNT, RH, or signed cancellation input.

For every such nonzero original Mobius coefficient n,
log n>=T/2. Put m=min(1,s*T²), s>=0:
  eta_s(n)=|mu(n)|*(1-exp(-s*(log n)^2)) >=m/8,
by the elementary 1-exp(-x)>=min(x,1)/2.

On the terminal PHYSICAL time window
  u in [T-1/4,T], all these indices are born
(n<=N/2, log 2>1/4), and the original response is
  pickupResponse(n,u) >= exp(-T/2)/2
since sqrt 2>7/5 and exp(1/8)<=8/7.

All other radius response terms are NONNEGATIVE.
Therefore the COMPLETE ACTUAL positive radius wave
is >=m*exp(T/2)/512 throughout this fixed window.
Its true positive square integral satisfies
  radiusEnergy(sourceHeatRadius(s),T)
         >=exp(T)*m²/2^20.

The preceding source module proves the matching upper
  radiusEnergy <=16*T*exp(T)*m².
Thus the EXACT EXPONENTIAL RATE for s_a(T)=exp(-aT)
is 1-2a for every a>0 and 1 for a<=0. This is a
sharpness theorem about the POSITIVE SOURCE ERROR,
not about the actual SIGNED HEATED ENERGY or RH.

The 3 independent ordinary elementary Lean ports
(squarefree band population/subset, pointwise original
birth+heat loss, and interval-square lower) are EXPLICIT
unproved pinned-Lean Props, not axioms or the RH target.
The source body below carries their finite sum and
logical consequences. No heat/xi identification.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness

classical

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier

/-- TRUE original Mobius nonzero indices in a terminal
nonempty DYADIC interval. All other original integer indices
remain in endpointIndex(T); we select these only for a LOWER
bound on the nonnegative reconstruction error. -/
def squarefreeDyadicWitnessBand (J : ℕ) : Finset ℕ :=
  (Finset.Icc ((2 : ℕ)^J / 4) ((2 : ℕ)^J / 2)).filter
    (fun n => moebiusReal n ≠ 0)

/-- Elementary unconditional sieve and index inclusion:
for J>=9, #nonzero mu in [N/4,N/2]>=N/32 and the entire
band lies inside ORIGINAL endpointIndex(T_J).
The mathematical union-bound proof is fully written in
the companion review. It is NOT pinned-Lean-ported. -/
def ElementarySquarefreeBandPopulationTarget : Prop :=
  ∀ J : ℕ, 9 ≤ J →
    let T : ℝ := dyadicTime J
    (1 : ℝ) ≤ T ∧
    squarefreeDyadicWitnessBand J ⊆ endpointIndex T ∧
    Real.exp T / 32 ≤
      ((squarefreeDyadicWitnessBand J).card : ℝ)

/-- Source-exact REAL lower bound for the Gaussian loss on
the selected true nonzero mu indices. It is independent of
Mertens cancellation and works for ALL s>=0:
  eta_s(n)>=min(1,s*T_J²)/8.
Elementary input: log n>=T/2 and
  1-exp(-x)>=min(x,1)/2, x>=0. -/
def ElementarySquarefreeGaussianLossTarget : Prop :=
  ∀ J : ℕ, 9 ≤ J → ∀ s : ℝ, 0 ≤ s →
    ∀ n ∈ squarefreeDyadicWitnessBand J,
      min (1 : ℝ) (s*(dyadicTime J)^2) / 8 ≤
        sourceHeatRadius s n

/-- Actual ORIGINAL CAUSAL response on the fixed terminal
physical slice, not a stationary or surrogate kernel.
Elementary input: for n∈[N/4,N/2] and
u∈[T-1/4,T], birth is active and
2*(sqrt 2-exp(1/8))*exp(-T/2) >exp(-T/2)/2. -/
def ElementarySquarefreeTerminalResponseTarget : Prop :=
  ∀ J : ℕ, 9 ≤ J →
    ∀ n ∈ squarefreeDyadicWitnessBand J,
      ∀ u : ℝ,
        dyadicTime J - 1 / 4 ≤ u → u ≤ dyadicTime J →
        Real.exp (-(dyadicTime J)/2)/2 ≤
          pickupResponse n u

/-- Standard positive interval-square calculus:
if a REAL full radius wave >=m throughout the final quarter
unit of the original physical interval, its entire interval
square energy is at least m²/4.
No number theory or cancellation is present in this gate. -/
def ElementaryTerminalRadiusIntegralTarget : Prop :=
  ∀ (eta : ℕ → ℝ) (T m : ℝ),
    1 / 4 ≤ T → 0 ≤ m →
    (∀ u : ℝ, T-1/4 ≤ u → u ≤ T →
      m ≤ radiusWave eta T u) →
    (1 / 4 : ℝ)*m^2 ≤ radiusEnergy eta T

/-- FULL positive error-wave SOURCE MINORANT. The proof sums
only selected squarefree original integers, paying all
other original terms by their nonnegative true radius.
It never cancels, replaces or drops a signed original term
from the ORIGINAL energy, which is NOT this positive radius. -/
theorem true_source_radiusWave_terminal_lower
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hLoss : ElementarySquarefreeGaussianLossTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (s : ℝ) (hs : 0 ≤ s) (u : ℝ)
    (hu : dyadicTime J-1/4 ≤ u)
    (huT : u ≤ dyadicTime J) :
    (min 1 (s*(dyadicTime J)^2)) *
      Real.exp ((dyadicTime J)/2)/512 ≤
        radiusWave (sourceHeatRadius s) (dyadicTime J) u := by
  let T : ℝ := dyadicTime J
  let band : Finset ℕ := squarefreeDyadicWitnessBand J
  let m : ℝ := min 1 (s*T^2)
  let c : ℝ := m*Real.exp (-T/2)/16
  have hm : 0 ≤ m := by
    dsimp [m]
    exact le_min (by norm_num) (mul_nonneg hs (sq_nonneg _))
  have hc : 0 ≤ c := by dsimp [c]; positivity
  obtain ⟨hQuarter,hSubset,hPopulation⟩ := hPop J hJ
  have hper (n : ℕ) (hn : n ∈ band) :
      c ≤ sourceHeatRadius s n * pickupResponse n u := by
    have hl := hLoss J hJ s hs n hn
    have hr := hResponse J hJ n hn u hu huT
    have hradpos : 0 ≤ sourceHeatRadius s n :=
      sourceHeatRadius_nonneg hs n
    calc
      c = (m/8)*(Real.exp (-T/2)/2) := by dsimp [c]; ring
      _ ≤ sourceHeatRadius s n * pickupResponse n u := by
        apply mul_le_mul
        · simpa [m,T] using hl
        · simpa [T] using hr
        · positivity
        · exact hradpos
  have hBandSum :
      ((band.card : ℝ)*c) ≤
        ∑ n ∈ band, sourceHeatRadius s n * pickupResponse n u := by
    calc
      ((band.card : ℝ)*c) = ∑ _n ∈ band, c := by
        simp [Finset.sum_const, nsmul_eq_mul]
      _ ≤ _ := Finset.sum_le_sum (by
        intro n hn
        exact hper n hn)
  have hNonneg (n : ℕ) (hn : n ∈ endpointIndex T) :
      0 ≤ sourceHeatRadius s n * pickupResponse n u := by
    exact mul_nonneg (sourceHeatRadius_nonneg hs n)
      (response_nonneg (Finset.mem_Icc.mp hn).1 u)
  have hAllSum :
      (∑ n ∈ band, sourceHeatRadius s n * pickupResponse n u) ≤
        radiusWave (sourceHeatRadius s) T u := by
    unfold radiusWave
    apply Finset.sum_le_sum_of_subset_of_nonneg hSubset
    intro n hn hnot
    exact hNonneg n hn
  have hcard :
      (Real.exp T / 32)*c ≤ (band.card : ℝ)*c :=
    mul_le_mul_of_nonneg_right hPopulation hc
  have hexp : Real.exp T*Real.exp (-T/2) =
      Real.exp (T/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hfactor :
      (Real.exp T/32)*c = m*Real.exp (T/2)/512 := by
    dsimp [c]
    rw [show (Real.exp T/32)*(m*Real.exp (-T/2)/16) =
      m*(Real.exp T*Real.exp (-T/2))/512 by ring,
      hexp]
  have hfinal :
      m*Real.exp (T/2)/512 ≤
        radiusWave (sourceHeatRadius s) T u := by
    rw [← hfactor]
    exact hcard.trans (hBandSum.trans hAllSum)
  simpa only [m,T] using hfinal

/-- The sharp EXPONENTIAL source lower, with an explicit
positive universal constant 2^-20, now follows from
the mathematically elementary population, original
response and radius-integral inputs. No PNT or RH. -/
theorem true_source_radiusEnergy_lower
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hLoss : ElementarySquarefreeGaussianLossTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (s : ℝ) (hs : 0 ≤ s) :
    (Real.exp (dyadicTime J)/1048576) *
      (min 1 (s*(dyadicTime J)^2))^2 ≤
        sourceHeatRadiusEnergy s (dyadicTime J) := by
  let T : ℝ := dyadicTime J
  let m : ℝ := min 1 (s*T^2)
  let c : ℝ := m*Real.exp (T/2)/512
  have hm : 0 ≤ m := by
    dsimp [m]
    exact le_min (by norm_num) (mul_nonneg hs (sq_nonneg _))
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hQuarter : (1/4 : ℝ) ≤ T := by
    have hT := (hPop J hJ).1
    linarith
  have hwave : ∀ u : ℝ, T-1/4 ≤ u → u ≤ T →
      c ≤ radiusWave (sourceHeatRadius s) T u := by
    intro u hu huT
    simpa only [T,m,c] using
      true_source_radiusWave_terminal_lower
        hPop hLoss hResponse J hJ s hs u hu huT
  have hlower :=
    hIntegral (sourceHeatRadius s) T c hQuarter hc hwave
  have hexp : (Real.exp (T/2))^2 = Real.exp T := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hfactor :
      (1/4 : ℝ)*c^2 = (Real.exp T/1048576)*m^2 := by
    dsimp [c]
    rw [mul_pow, hexp]
    ring
  change (Real.exp T/1048576)*m^2 ≤
    sourceHeatRadiusEnergy s T
  rw [← hfactor]
  exact hlower

/-- Exact two-sided ORIGINAL nonnegative reconstruction radius
at every true dyadic J>=9 and every nonnegative artificial
heat time. The exponential factor and saturation minimum
match in BOTH directions, up to one physical-time power. -/
theorem source_radius_sandwich
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hLoss : ElementarySquarefreeGaussianLossTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (J : ℕ) (hJ : 9 ≤ J)
    (s : ℝ) (hs : 0 ≤ s) :
    (Real.exp (dyadicTime J)/1048576)*
       (min 1 (s*(dyadicTime J)^2))^2 ≤
       sourceHeatRadiusEnergy s (dyadicTime J) ∧
    sourceHeatRadiusEnergy s (dyadicTime J) ≤
       16*dyadicTime J*Real.exp (dyadicTime J)*
         (min 1 (s*(dyadicTime J)^2))^2 := by
  constructor
  · exact true_source_radiusEnergy_lower
      hPop hLoss hResponse hIntegral J hJ s hs
  · exact sourceHeat_radiusEnergy_le_saturated hs
      (dyadicTime_nonneg J)

end GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
