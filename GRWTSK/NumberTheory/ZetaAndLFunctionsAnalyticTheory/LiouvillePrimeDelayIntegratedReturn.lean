/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

/-!
# Exact selected-prime arithmetic partition and physical covariance return

The original Liouville coefficient and CCC.pickupResponse are unchanged.
Finite band bookkeeping is proved without prime independence, squarefree
restriction, positivity of signed correlations, or estimates.

The exact one-prime divisor-waveform identity remains a separately visible
premise in the last source return. A conditional consumer does NOT discharge
that premise; the math review gives the complete elementary reindexing proof,
with Lean formalization and kernel acceptance still open.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity
open GRWTSK.NumberTheory.LiouvilleReciprocalPrimeMassObstruction
open GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability

namespace GRWTSK.NumberTheory.LiouvillePrimeDelayIntegratedReturn

/-- The selected and omitted prime weights partition the full band at
EVERY integer, including squareful integers and the unsifted unit. -/
theorem selected_add_uncovered_eq_bandMass
    (P : Finset ℕ) (w : ℕ → ℝ) (n : ℕ) :
    selectedDivisorWeight P w n + uncoveredWeight P w n =
      bandMass P w := by
  classical
  unfold selectedDivisorWeight uncoveredWeight bandMass
  simp only [Finset.sum_filter]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases h : p ∣ n
  · simp [h]
  · simp [h]

/-- The one-prime divisor source equals the divisor-filtered original
finite source. This includes every p^k, k>=1; there is no coprimality
condition on the quotient. -/
theorem primeDivisorWaveform_eq_filter
    (p : ℕ) (u : ℝ) :
    primeDivisorWaveform p u =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        if p ∣ n then coefficient n * pickupResponse n u else 0 := by
  classical
  simp only [primeDivisorWaveform, Finset.sum_filter]

/-- Complete weighted source of all selected divisibility incidences:
overlapping prime tags are summed, NOT disjointified. -/
theorem selectedWaveform_eq_primeSum
    (P : Finset ℕ) (w : ℕ → ℝ) (u : ℝ) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
       coefficient n * selectedDivisorWeight P w n *
         pickupResponse n u) =
      ∑ p ∈ P, w p * primeDivisorWaveform p u := by
  classical
  let S := Finset.Icc 1 ⌊Real.exp u⌋₊
  calc
    (∑ n ∈ S, coefficient n * selectedDivisorWeight P w n *
      pickupResponse n u) =
        ∑ n ∈ S, ∑ p ∈ P,
          if p ∣ n then w p * (coefficient n * pickupResponse n u)
          else 0 := by
            apply Finset.sum_congr rfl
            intro n hn
            unfold selectedDivisorWeight
            simp only [Finset.sum_filter]
            rw [Finset.sum_mul]
            apply Finset.sum_congr rfl
            intro p hp
            split_ifs <;> ring
    _ = ∑ p ∈ P, ∑ n ∈ S,
          if p ∣ n then w p * (coefficient n * pickupResponse n u)
          else 0 := by rw [Finset.sum_comm]
    _ = ∑ p ∈ P, w p * primeDivisorWaveform p u := by
      apply Finset.sum_congr rfl
      intro p hp
      rw [primeDivisorWaveform_eq_filter, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      split_ifs <;> ring

/-- The original band identity follows algebraically from the actual
one-prime source identity, with no new analytic or growth premise. -/
theorem growingBandWaveform_of_primeDelay
    (hprime : PrimeDivisorWaveformIdentity) :
    GrowingPrimeBandWaveformIdentity := by
  intro P w u hP
  have hsel := selectedWaveform_eq_primeSum P w u
  have hsum : (∑ p ∈ P, w p * primeDivisorWaveform p u) =
      -(∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
        waveform (u - Real.log p)) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    rw [hprime p u (hP p hp)]
    ring
  have hpartition :
      bandMass P w * waveform u =
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
          coefficient n * selectedDivisorWeight P w n *
            pickupResponse n u) +
        uncoveredWaveform P w u := by
    unfold waveform uncoveredWaveform
    rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    have h := selected_add_uncovered_eq_bandMass P w n
    nlinarith [h]
  rw [hsel, hsum] at hpartition
  linarith

/-- Exact mixed covariance recovered from the earlier already-source-written
physical Gram, provided the original one-prime identity and the resulting
finite integral interchange are established. The latter is exposed as hInt:
this source does not silently insert an unproved integral lemma. -/
theorem weightedDelayedCovariance_eq_negative_complete_mixed
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) (hT : 0 ≤ T)
    (hPrime : PrimeDivisorWaveformIdentity)
    (hP : ∀ p ∈ P, Nat.Prime p)
    (hInt :
      weightedDelayedCovariance P w T =
        ∫ u in (0 : ℝ)..T,
          waveform u *
            (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
              waveform (u - Real.log p))) :
    weightedDelayedCovariance P w T =
      -(originalMixedDiagonal P
          (Finset.Icc 1 ⌊Real.exp T⌋₊) w
          (originalCausalKernel T) +
        originalMixedOffDiagonal P
          (Finset.Icc 1 ⌊Real.exp T⌋₊) w
          (originalCausalKernel T)) := by
  have hband := selectedWaveform_eq_primeSum P w
  have hpoint (u : ℝ) (hu : u ≤ T) :
      (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
        waveform (u - Real.log p)) =
        -(∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u) := by
    have hs : (∑ p ∈ P, w p * primeDivisorWaveform p u) =
        -(∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
          waveform (u - Real.log p)) := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro p hp
      rw [hPrime p u (hP p hp)]
      ring
    have hcut :
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u) =
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
          coefficient m * selectedDivisorWeight P w m *
            pickupResponse m u) := by
      classical
      have hf : ⌊Real.exp u⌋₊ ≤ ⌊Real.exp T⌋₊ :=
        Nat.floor_mono (Real.exp_le_exp.mpr hu)
      have hsub :
          Finset.Icc 1 ⌊Real.exp u⌋₊ ⊆
          Finset.Icc 1 ⌊Real.exp T⌋₊ := by
        intro n hn
        exact Finset.mem_Icc.mpr
          ⟨(Finset.mem_Icc.mp hn).1,
            le_trans (Finset.mem_Icc.mp hn).2 hf⟩
      symm
      apply Finset.sum_subset hsub
      intro n hn hnot
      have hl : ⌊Real.exp u⌋₊ < n := by
        have h1 := (Finset.mem_Icc.mp hn).1
        by_contra hc
        exact hnot (Finset.mem_Icc.mpr ⟨h1, Nat.le_of_not_gt hc⟩)
      rw [pickupResponse_zero_of_floor_lt n u hl]
      ring
    rw [hcut, hband u, hs]
    ring
  have hgram := mixedPhysicalGram P w T hT
  rw [hInt]
  have hrewrite : (∫ u in (0 : ℝ)..T,
      waveform u *
        (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
          waveform (u - Real.log p))) =
      -(∫ u in (0 : ℝ)..T,
        waveform u *
          (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
            coefficient m * selectedDivisorWeight P w m *
              pickupResponse m u)) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro u hu
    rw [hpoint u hu.2]
    ring
  rw [hrewrite, hgram, originalMixedGram_eq_diagonal_add_offDiagonal]

end GRWTSK.NumberTheory.LiouvillePrimeDelayIntegratedReturn
