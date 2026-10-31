/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicWeightedResidueClasses
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.LogarithmicPickupSeries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.ArithmeticGridSubexponential
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact signed residue-class transport BEFORE squaring the real pickup

This supplements, and does not replace, a separately maintained local
SignedWaveformEnergyTarget.lean whose bytes were unavailable here.

The source is the existing wholePickup with the original real-valued causal
response and signed Möbius coefficient. The arithmetic class is the established
two-part (n % 2, floor(n / 2) modulo d²) coordinate, retaining nonunit
classes, squareful zeros, and both parities. Summing EVERY class reconstructs
the original SIGNED waveform before squaring.

Consequently squaring the reconstructed waveform preserves all four
(00, 01, 10, 11) parity-pair sectors and all mixed residue products.
The exact finite logarithmic Abel sample is also reassembled classwise from
the original Mertens prefix and square-root weighted prefix.

The conditional energy supplier below is explicitly UNSUPPLIED. It is
equivalent, by exact source return, to the original all-rate energy target;
it is not a new arithmetic estimate, a positive residue-variance majorant,
a 2-adic-to-real coefficient homomorphism, or a proof of RH.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.DyadicWeightedResidueClasses
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The same arithmetic class used by the existing signed d² convolution.
This is not a restriction to multiplicative units. -/
def classCoordinate (d n : ℕ) [NeZero d] : ZMod (d * d) :=
  ((n / 2 : ℕ) : ZMod (d * d))

/-- Exact summation over BOTH parities and ALL additive residue classes.
This elementary finite statement is used for signed weighted sums:
no absolute value, sifting, or random class average occurs. -/
private theorem sum_all_classes (d N : ℕ) [NeZero d]
    (f : ℕ → ℝ) :
    (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
      ∑ n ∈ Finset.Icc 1 N,
        if n % 2 = r ∧ classCoordinate d n = a then f n else 0) =
      ∑ n ∈ Finset.Icc 1 N, f n := by
  classical
  have hparity (n : ℕ) :
      n % 2 ∈ Finset.range 2 := by
    simp only [Finset.mem_range]
    omega
  have hsingle (n : ℕ) :
      (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
          if n % 2 = r ∧ classCoordinate d n = a then f n else 0) = f n := by
    calc
      _ = ∑ r ∈ Finset.range 2,
            if n % 2 = r then f n else 0 := by
          apply Finset.sum_congr rfl
          intro r _
          by_cases hr : n % 2 = r
          · simp [hr]
          · simp [hr]
      _ = f n := by simp [hparity n]
  calc
    _ = ∑ r ∈ Finset.range 2, ∑ n ∈ Finset.Icc 1 N,
          ∑ a : ZMod (d * d),
            if n % 2 = r ∧ classCoordinate d n = a then f n else 0 := by
          apply Finset.sum_congr rfl
          intro r _
          rw [Finset.sum_comm]
    _ = ∑ n ∈ Finset.Icc 1 N, ∑ r ∈ Finset.range 2,
          ∑ a : ZMod (d * d),
            if n % 2 = r ∧ classCoordinate d n = a then f n else 0 := by
          rw [Finset.sum_comm]
    _ = _ := by
          apply Finset.sum_congr rfl
          intro n _
          exact hsingle n

/-- Each signed, causal response is retained at its ORIGINAL integer label. -/
def classWave (j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (u : ℝ) : ℝ :=
  ∑ n ∈ indices j,
    if n % 2 = r ∧ classCoordinate d n = a then
      moebiusReal n * pickupResponse n u else 0

/-- Signed class aggregation occurs BEFORE the energy square. -/
def completeWave (j d : ℕ) [NeZero d] (u : ℝ) : ℝ :=
  ∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
    classWave j d r a u

/-- A fixed complete original inventory (responses not yet born are zero). -/
def originalFixedWave (j : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ indices j, moebiusReal n * pickupResponse n u

/-- An exact source identity, independent of d and with NO loss of signs. -/
theorem completeWave_eq_originalFixedWave
    (j d : ℕ) [NeZero d] (u : ℝ) :
    completeWave j d u = originalFixedWave j u := by
  simpa only [completeWave, classWave, originalFixedWave, indices] using
    (sum_all_classes d (2 ^ j)
      (fun n => moebiusReal n * pickupResponse n u))

/-- The actual causal waveform, not a proxy, at every point of its
closed dyadic time window. -/
theorem wholePickup_eq_completeWave
    (j d : ℕ) [NeZero d] {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    wholePickup u = completeWave j d u := by
  calc
    wholePickup u =
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp (dyadicTime j)⌋₊,
          moebiusReal n * pickupResponse n u :=
      wholePickup_fixed_inventory hu huT
    _ = originalFixedWave j u := by
      rw [dyadic_cutoff]
      rfl
    _ = completeWave j d u :=
      (completeWave_eq_originalFixedWave j d u).symm

/-- The exact existing nonnegative waveform energy in the full
four-parity residue-class coordinates. The mixed sectors are inside
the square and are not replaced by positive residue variances. -/
def completeResidueEnergy (j d : ℕ) [NeZero d] : ℝ :=
  ∫ u in (0 : ℝ)..dyadicTime j, (completeWave j d u) ^ 2

theorem completeResidueEnergy_eq_pickupEnergy
    (j d : ℕ) [NeZero d] :
    completeResidueEnergy j d = pickupEnergy (dyadicTime j) := by
  unfold completeResidueEnergy pickupEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [wholePickup_eq_completeWave j d hu.1 hu.2]

/-- One complete parity channel. Both signs are retained in the sum. -/
def parityWave (j d r : ℕ) [NeZero d] (u : ℝ) : ℝ :=
  ∑ a : ZMod (d * d), classWave j d r a u

/-- All four parity-pair interactions, including 01 and 10. -/
def fourSectorSquare (j d : ℕ) [NeZero d] (u : ℝ) : ℝ :=
  ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
    parityWave j d r u * parityWave j d s u

theorem completeWave_sq_eq_fourSectorSquare
    (j d : ℕ) [NeZero d] (u : ℝ) :
    (completeWave j d u) ^ 2 = fourSectorSquare j d u := by
  change (∑ r ∈ Finset.range 2, parityWave j d r u) ^ 2 =
    ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
      parityWave j d r u * parityWave j d s u
  rw [pow_two, Finset.sum_mul_sum]

/-- The same causal integral also retains the mixed sectors explicitly. -/
theorem completeResidueEnergy_eq_fourSectorIntegral
    (j d : ℕ) [NeZero d] :
    completeResidueEnergy j d =
      ∫ u in (0 : ℝ)..dyadicTime j, fourSectorSquare j d u := by
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro u _
  exact completeWave_sq_eq_fourSectorSquare j d u

/-- The original source Mertens prefix inside a SINGLE exact class. -/
def classMertens (d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    if n % 2 = r ∧ classCoordinate d n = a then
      moebiusReal n else 0

/-- The original signed reciprocal-square-root prefix in that class. -/
def classReciprocal (d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    if n % 2 = r ∧ classCoordinate d n = a then
      moebiusReal n * (Real.sqrt n)⁻¹ else 0

/-- The EXACT signed Abel-sampling correction, class by class. -/
def classAbelSample (d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (N : ℕ) : ℝ :=
  classReciprocal d r a N -
    (Real.sqrt N)⁻¹ * classMertens d r a N

/-- The original CLOSED prefix retains the new endpoint coefficient
exactly. This lemma is finite set algebra, not a Mertens bound. -/
private theorem prefix_succ (f : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 (N + 1), f n) =
      (∑ n ∈ Finset.Icc 1 N, f n) + f (N + 1) := by
  have hs :
      Finset.Icc 1 (N + 1) =
        insert (N + 1) (Finset.Icc 1 N) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hn : N + 1 ∉ Finset.Icc 1 N := by simp
  rw [hs, Finset.sum_insert hn]
  ring

/-- Exact classwise Mertens increment. No squarefree index is dropped. -/
theorem classMertens_succ (d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (N : ℕ) :
    classMertens d r a (N + 1) =
      classMertens d r a N +
        (if (N + 1) % 2 = r ∧ classCoordinate d (N + 1) = a then
          moebiusReal (N + 1) else 0) := by
  unfold classMertens
  exact prefix_succ _ N

/-- Exact reciprocal-square-root weighted prefix increment. -/
theorem classReciprocal_succ (d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (N : ℕ) :
    classReciprocal d r a (N + 1) =
      classReciprocal d r a N +
        (if (N + 1) % 2 = r ∧ classCoordinate d (N + 1) = a then
          moebiusReal (N + 1) * (Real.sqrt (N + 1 : ℕ))⁻¹ else 0) := by
  unfold classReciprocal
  exact prefix_succ _ N

/-- The touching newest Möbius coefficient cancels EXACTLY inside
each class's Abel-sampled flux. This proves the actual sign-preserving
summation-by-parts transport, independently for every residue class. -/
theorem classAbelSample_succ_sub (d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (N : ℕ) :
    classAbelSample d r a (N + 1) - classAbelSample d r a N =
      classMertens d r a N *
        ((Real.sqrt N)⁻¹ - (Real.sqrt (N + 1 : ℕ))⁻¹) := by
  rw [classAbelSample, classAbelSample,
    classMertens_succ, classReciprocal_succ]
  by_cases h : (N + 1) % 2 = r ∧ classCoordinate d (N + 1) = a
  · simp only [if_pos h]
    ring
  · simp only [if_neg h, add_zero]
    ring

/-- Reassemble the old signed Abel sample; no per-class smallness,
large sieve, fixed-shift saving, or RH estimate is assumed. -/
theorem sum_classAbelSample_eq_sampleResidue
    (d N : ℕ) [NeZero d] :
    (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
      classAbelSample d r a N) = sampleResidue N := by
  have hw := sum_all_classes d N
    (fun n => moebiusReal n * (Real.sqrt n)⁻¹)
  have hm := sum_all_classes d N moebiusReal
  simp only [classAbelSample, Finset.sum_sub_distrib,
    ← Finset.mul_sum]
  change
    (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
      classReciprocal d r a N) -
    (Real.sqrt N)⁻¹ *
      (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
        classMertens d r a N) = sampleResidue N
  rw [show (∑ r ∈ Finset.range 2,
      ∑ a : ZMod (d * d), classReciprocal d r a N) =
      ∑ n ∈ Finset.Icc 1 N,
        moebiusReal n * (Real.sqrt n)⁻¹ by
        simpa only [classReciprocal] using hw]
  rw [show (∑ r ∈ Finset.range 2,
      ∑ a : ZMod (d * d), classMertens d r a N) =
      ∑ n ∈ Finset.Icc 1 N, moebiusReal n by
        simpa only [classMertens] using hm]
  simp [sampleResidue, mertensPrefix, Nat.floor_natCast]

/-- An actual LOGARITHMIC event sample returns the original pickup,
not just a formal coefficient series. -/
theorem wholePickup_at_log_eq_classAbel
    (d N : ℕ) [NeZero d] (hN : 1 ≤ N) :
    wholePickup (Real.log (N : ℝ)) =
      2 * (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
        classAbelSample d r a N) := by
  rw [wholePickup_log_eq_sampleResidue hN,
    sum_classAbelSample_eq_sampleResidue]

/-- The honest still-OPEN arithmetic supplier is an ALL-POSITIVE-RATE
bound on the COMPLETE SIGNED residue waveform energy. This is an
explicit hypothesis, never a theorem or axiom. -/
def AllRateResidueEnergy (d : ℕ) [NeZero d] : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        completeResidueEnergy j d ≤
          C * Real.exp (ε * dyadicTime j)

/-- Only CONDITIONAL transfer: the demanded arithmetic estimate,
if independently proved, reaches the unchanged canonical RH
through existing grid coverage and the old energy theorem. -/
theorem riemannHypothesis_of_allRateResidueEnergy
    (d : ℕ) [NeZero d] (h : AllRateResidueEnergy d) :
    _root_.RiemannHypothesis := by
  have hgrid : AllGridUpper pickupEnergy (Real.log 2) := by
    intro ε hε
    obtain ⟨C, hC, hb⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro j
    change pickupEnergy (dyadicTime j) ≤
      C * Real.exp (ε * dyadicTime j)
    rw [← completeResidueEnergy_eq_pickupEnergy j d]
    exact hb j
  exact riemannHypothesis_of_energy_good_scales dyadic_coverage
    ((allGridUpper_iff_subexponentialOn log_two_positive).mp hgrid)

end GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
