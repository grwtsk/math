/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveSignedTupleMoments
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothAllRateProof
import Mathlib.Tactic

/-!
# A whole-height high-smooth source envelope from the existing dyadic count

The genuine original n remains the integer Fourier frequency and carries
moebiusReal n * adaptiveResponse n u. For a FIXED genuine-prime bank B,
each highSmoothBlock B (2^s) (log (2^(s+1))) is the actual high smooth
divisor subset of the original dyadic shell, not the set of wholly
P-smooth integers. No sign is altered or omitted.

The finite SOURCE theorem bounds the coherent high-smooth SHELL by the
actual source cardinality times its causal 2/sqrt(X) amplitude. The
preexisting highSmoothCofactorCount_target then bounds it by
  2/sqrt(X) * exp(2*sqrt(log(2X))) * (1+log(2X)/log2)^r.
Summing this explicit bound over dyadic s gives a convergent geometric
majorant and a time-uniform complete high-smooth wave envelope ON PAPER.
The companion review derives the constant. That last infinite summation,
complete high/low source partition, and the all-k Lp transfer are
NOT YET kernel-proved declarations. The low/low arithmetic supplier and
cross-shell signed source remain open until the reduction is accepted.

The earlier high-incident same-shell theorem already existed in grwtsk/math.
No RH or global arithmetic-cancellation theorem is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothCofactorCountProof
open GRWTSK.NumberTheory.Moebius.HighSmoothTimeLocalGramProof
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveFourierMoments

/-- The current C-infinity adaptive source equals the original causal
response multiplied by its literal real 0-to-1 gate. -/
theorem adaptiveResponse_eq_pickup_mul (n : ℕ) (u : ℝ) :
    adaptiveResponse n u = pickupResponse n u * adaptiveActivation n u := by
  by_cases hbirth : Real.log (n : ℝ) ≤ u
  · simp [adaptiveResponse, pickupResponse, hbirth, adaptiveActivation]
    ring
  · have hu : u ≤ sourceBirthTime n := by
      dsimp [sourceBirthTime]
      exact le_of_lt (lt_of_not_ge hbirth)
    have hz := adaptiveResponse_zero_before n u hu
    simp [hz, pickupResponse, hbirth]

/-- Unlike the original Möbius coefficient, the regularizing gate is
nonnegative and <=1, so it cannot increase an individual positive atom. -/
theorem adaptiveResponse_nonneg_le_pickup (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ adaptiveResponse n u ∧ adaptiveResponse n u ≤ pickupResponse n u := by
  have hp : 0 ≤ pickupResponse n u :=
    pickupResponse_nonneg_positive n hn u
  have hg0 : 0 ≤ adaptiveActivation n u := by
    exact Real.smoothTransition.nonneg _
  have hg1 : adaptiveActivation n u ≤ 1 := by
    exact Real.smoothTransition.le_one _
  rw [adaptiveResponse_eq_pickup_mul]
  constructor
  · exact mul_nonneg hp hg0
  · calc
      pickupResponse n u * adaptiveActivation n u ≤ pickupResponse n u * 1 :=
        mul_le_mul_of_nonneg_left hg1 hp
      _ = pickupResponse n u := mul_one _

/-- Original source bound on every n in an original dyadic shell X<n<=2X. -/
theorem signedAdaptiveCoefficient_abs_le_shell
    (X n : ℕ) (hX : 1 ≤ X) (hXn : X < n) (u : ℝ) :
    |signedAdaptiveCoefficient n u| ≤
      2 * (Real.sqrt (X : ℝ))⁻¹ := by
  have hn : 1 ≤ n := by omega
  have hr := adaptiveResponse_nonneg_le_pickup n hn u
  have hb := sourceResponse_nonneg_le_dyadic_amplitude hX hXn u
  have hm : |moebiusReal n| ≤ 1 := by
    rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;>
      simp [moebiusReal, h]
  calc
    |signedAdaptiveCoefficient n u| =
        |moebiusReal n| * adaptiveResponse n u := by
          simp [signedAdaptiveCoefficient, abs_mul, abs_of_nonneg hr.1]
    _ ≤ 1 * adaptiveResponse n u :=
      mul_le_mul_of_nonneg_right hm hr.1
    _ = adaptiveResponse n u := one_mul _
    _ ≤ pickupResponse n u := hr.2
    _ ≤ 2 * (Real.sqrt (X : ℝ))⁻¹ := hb.2

/-- The genuine high-smooth-divisor original-index shell at X=2^s. -/
def highShell (B : PrimeBand) (s : ℕ) : Finset ℕ :=
  highSmoothBlock B (2 ^ s)
    (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))

theorem highShell_gt_lower (B : PrimeBand) (s n : ℕ)
    (hn : n ∈ highShell B s) : 2 ^ s < n := by
  unfold highShell at hn
  change n ∈ (balancedBlock (2 ^ s)
    (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))).filter
      (hasNearMaximalSmoothDivisor B (2 ^ s)) at hn
  have hpart := (Finset.mem_filter.mp hn).1
  change n ∈ (Finset.Ioc (2 ^ s) (2 * (2 ^ s))).filter
      (fun k => k ∈ endpointIndex (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))) at hpart
  exact (Finset.mem_Ioc.mp (Finset.mem_filter.mp hpart).1).1

/-- Signed high-smooth shell with ORIGINAL mu(n), not new support weights. -/
def highShellWave (B : PrimeBand) (s : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ highShell B s, signedAdaptiveCoefficient n u

theorem highShellWave_abs_le_card (B : PrimeBand) (s : ℕ) (u : ℝ) :
    |highShellWave B s u| ≤
      ((highShell B s).card : ℝ) *
        (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) := by
  unfold highShellWave
  calc
    |∑ n ∈ highShell B s, signedAdaptiveCoefficient n u| ≤
        ∑ n ∈ highShell B s, |signedAdaptiveCoefficient n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ highShell B s,
        (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) := by
          apply Finset.sum_le_sum
          intro n hn
          exact signedAdaptiveCoefficient_abs_le_shell (2 ^ s) n
            (by positivity) (highShell_gt_lower B s n hn) u
    _ = ((highShell B s).card : ℝ) *
          (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) := by
      simp

/-- The PREVIOUSLY sourced original high-smooth counting theorem is
now paid into the original adaptive coherent high-shell amplitude. -/
theorem highShellWave_abs_le_count (B : PrimeBand) (s : ℕ) (u : ℝ) :
    |highShellWave B s u| ≤
      2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ *
        Real.exp (2 * Real.sqrt (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))) *
        (1 + Real.log (2 * ((2 ^ s : ℕ) : ℝ)) / Real.log 2) ^ B.primes.card := by
  have hcount := highSmoothCofactorCount_target B (2 ^ s)
    (by positivity : 1 ≤ 2 ^ s)
  have hnonneg : 0 ≤ 2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ := by
    positivity
  calc
    |highShellWave B s u| ≤
        ((highShell B s).card : ℝ) *
          (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) :=
      highShellWave_abs_le_card B s u
    _ ≤ (Real.exp (2 * Real.sqrt (Real.log
            (2 * ((2 ^ s : ℕ) : ℝ)))) *
          (1 + Real.log (2 * ((2 ^ s : ℕ) : ℝ)) / Real.log 2) ^ B.primes.card) *
          (2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹) :=
      mul_le_mul_of_nonneg_right hcount hnonneg
    _ = _ := by ring

/-- This is a COMPLETE finite collection of original high-smooth shells:
no shell samples are omitted or canceled after a residue projection. -/
def allHighShellWave (B : PrimeBand) (j : ℕ) (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range j, highShellWave B s u

def finiteHighEnvelope (B : PrimeBand) (j : ℕ) : ℝ :=
  ∑ s ∈ Finset.range j,
    2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ *
      Real.exp (2 * Real.sqrt (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))) *
        (1 + Real.log (2 * ((2 ^ s : ℕ) : ℝ)) / Real.log 2) ^ B.primes.card

theorem allHighShellWave_abs_le_finiteEnvelope
    (B : PrimeBand) (j : ℕ) (u : ℝ) :
    |allHighShellWave B j u| ≤ finiteHighEnvelope B j := by
  unfold allHighShellWave finiteHighEnvelope
  calc
    _ ≤ ∑ s ∈ Finset.range j, |highShellWave B s u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro s hs
      exact highShellWave_abs_le_count B s u

/-- Every ORIGINAL n in the dyadic inventory lies either in the
selected high sector or in its logical complement. This partitions
the coherent signed source without deleting any mixed products. -/
def highSelected (B : PrimeBand) (j n : ℕ) : Prop :=
  n = 1 ∨ ∃ s ∈ Finset.range j, n ∈ highShell B s

def highSelectedWave (B : PrimeBand) (j : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ indices j,
    if highSelected B j n then signedAdaptiveCoefficient n u else 0

def lowSelectedWave (B : PrimeBand) (j : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ indices j,
    if ¬highSelected B j n then signedAdaptiveCoefficient n u else 0

theorem completeWave_eq_high_add_low (B : PrimeBand) (j : ℕ) (u : ℝ) :
    adaptiveSmoothWave j u =
      highSelectedWave B j u + lowSelectedWave B j u := by
  unfold adaptiveSmoothWave highSelectedWave lowSelectedWave
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : highSelected B j n
  · simp [h, signedAdaptiveCoefficient]
  · simp [h, signedAdaptiveCoefficient]

/-- Named elementary but NOT YET formalized all-shell summability target.
The paper proof makes the fixed-B constant explicit. This is not an
arithmetic cancellation premise, but requires scalar exponential/geometric
sum normalization and a highSelected/shell enumeration identification. -/
def GlobalHighEnvelope : Prop :=
  ∀ (B : PrimeBand), ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, finiteHighEnvelope B j ≤ C

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
