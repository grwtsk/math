/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter

/-!
# Reciprocal-prefix variation kernel for the critical response

Discrete partial summation rewrites the critical weighted/Mertens flux using
the ordinary reciprocal Möbius prefix.  The resulting finite kernel has total
mass zero, so the flux depends only on variations of the reciprocal prefix,
not on a constant component.  No decay or cancellation estimate is asserted.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

/-- The coefficient of the `k`th reciprocal-prefix history term at logarithmic
time `u`. -/
def reciprocalFluxWeight (u : ℝ) (k : ℕ) : ℝ :=
  Real.exp (-u / 2) -
    (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))

/-- Abel summation of the square-root weighted Möbius prefix through the
ordinary reciprocal prefix. -/
theorem pickupWeightedPrefix_eq_reciprocalPartialSummation (n : ℕ) :
    pickupWeightedPrefix n =
      Real.sqrt n * pickupReciprocalPrefix n -
        ∑ k ∈ Finset.range n,
          (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) *
            pickupReciprocalPrefix k := by
  induction n with
  | zero => simp [pickupWeightedPrefix, pickupReciprocalPrefix]
  | succ n ih =>
      have hx : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      have hs : 0 < Real.sqrt ((n + 1 : ℕ) : ℝ) := Real.sqrt_pos.mpr hx
      have hsq : Real.sqrt ((n + 1 : ℕ) : ℝ) ^ 2 = ((n + 1 : ℕ) : ℝ) :=
        Real.sq_sqrt hx.le
      have hinv :
          Real.sqrt ((n + 1 : ℕ) : ℝ) / ((n + 1 : ℕ) : ℝ) =
            (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ := by
        rw [div_eq_iff hx.ne']
        calc
          Real.sqrt ((n + 1 : ℕ) : ℝ) =
              (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ *
                Real.sqrt ((n + 1 : ℕ) : ℝ) ^ 2 := by
            field_simp [hs.ne']
          _ = (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ * ((n + 1 : ℕ) : ℝ) := by
            rw [hsq]
      have hterm :
          Real.sqrt ((n + 1 : ℕ) : ℝ) *
              (moebiusReal (n + 1) / ((n + 1 : ℕ) : ℝ)) =
            moebiusReal (n + 1) * (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ := by
        calc
          _ = moebiusReal (n + 1) *
              (Real.sqrt ((n + 1 : ℕ) : ℝ) / ((n + 1 : ℕ) : ℝ)) := by ring
          _ = _ := by rw [hinv]
      rw [pickupWeightedPrefix, Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1)]
      change pickupWeightedPrefix n +
          moebiusReal (n + 1) * (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ = _
      rw [ih, pickupReciprocalPrefix_succ, Finset.sum_range_succ, ← hterm]
      ring

/-- Consecutive square-root increments telescope exactly. -/
theorem sum_sqrt_increment (n : ℕ) :
    (∑ k ∈ Finset.range n,
      (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))) = Real.sqrt n := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Finset.sum_range_succ, ih]
      ring

/-- Including the endpoint coefficient, the reciprocal-prefix flux kernel has
zero total mass. -/
theorem reciprocalFluxWeight_sum_zero (u : ℝ) (n : ℕ) :
    (Real.sqrt n - (n : ℝ) * Real.exp (-u / 2)) +
        ∑ k ∈ Finset.range n, reciprocalFluxWeight u k = 0 := by
  rw [show (∑ k ∈ Finset.range n, reciprocalFluxWeight u k) =
      (n : ℝ) * Real.exp (-u / 2) - Real.sqrt n by
    unfold reciprocalFluxWeight
    rw [Finset.sum_sub_distrib, Finset.sum_const, nsmul_eq_mul,
      sum_sqrt_increment]
    simp only [Finset.card_range]]
  ring

/-- Exact reciprocal-prefix representation of the weighted/Mertens flux. -/
theorem pickupFlux_eq_reciprocalKernel (u : ℝ) (n : ℕ) :
    pickupWeightedPrefix n - Real.exp (-u / 2) * pickupMertensPrefix n =
      (Real.sqrt n - (n : ℝ) * Real.exp (-u / 2)) *
          pickupReciprocalPrefix n +
        ∑ k ∈ Finset.range n,
          reciprocalFluxWeight u k * pickupReciprocalPrefix k := by
  rw [pickupWeightedPrefix_eq_reciprocalPartialSummation,
    pickupMertensPrefix_eq_reciprocalPartialSummation]
  unfold reciprocalFluxWeight
  have hsum :
      (∑ k ∈ Finset.range n,
          (Real.exp (-u / 2) -
            (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))) *
              pickupReciprocalPrefix k) =
        Real.exp (-u / 2) *
            ∑ k ∈ Finset.range n, pickupReciprocalPrefix k -
          ∑ k ∈ Finset.range n,
            (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) *
              pickupReciprocalPrefix k := by
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hsum]
  ring

/-- Centering by the endpoint reciprocal prefix removes the endpoint term and
makes the zero-mass structure explicit. -/
theorem pickupFlux_eq_reciprocalVariationKernel (u : ℝ) (n : ℕ) :
    pickupWeightedPrefix n - Real.exp (-u / 2) * pickupMertensPrefix n =
      ∑ k ∈ Finset.range n,
        reciprocalFluxWeight u k *
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n) := by
  rw [pickupFlux_eq_reciprocalKernel]
  have hzero := reciprocalFluxWeight_sum_zero u n
  calc
    (Real.sqrt n - (n : ℝ) * Real.exp (-u / 2)) *
          pickupReciprocalPrefix n +
        ∑ k ∈ Finset.range n,
          reciprocalFluxWeight u k * pickupReciprocalPrefix k =
        (∑ k ∈ Finset.range n,
          reciprocalFluxWeight u k * pickupReciprocalPrefix k) -
          (∑ k ∈ Finset.range n, reciprocalFluxWeight u k) *
            pickupReciprocalPrefix n := by
      linear_combination hzero * pickupReciprocalPrefix n
    _ = _ := by
      rw [Finset.sum_mul, ← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- On every open logarithmic cell, the actual pickup is twice the centered
reciprocal-prefix variation kernel. -/
theorem wholePickup_eq_reciprocalVariationKernel {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) < u)
    (hhi : u < Real.log ((n + 1 : ℕ) : ℝ)) :
    wholePickup u =
      2 * ∑ k ∈ Finset.range n,
        reciprocalFluxWeight u k *
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n) := by
  rw [wholePickup_eq_prefix_flux_on_log_cell hn hlo hhi,
    pickupFlux_eq_reciprocalVariationKernel]

/-- The positive variation-kernel energy on the `n`th logarithmic cell. -/
def reciprocalVariationBlock (n : ℕ) : ℝ :=
  ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
    Real.exp (-u) *
      (2 * ∑ k ∈ Finset.range n,
        reciprocalFluxWeight u k *
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) ^ 2

/-- Every critical arithmetic block is exactly the square energy of the
zero-mass reciprocal-prefix variation kernel. -/
theorem criticalIntervalBlock_eq_reciprocalVariationKernel (n : ℕ) :
    criticalIntervalBlock n = reciprocalVariationBlock n := by
  unfold criticalIntervalBlock
  unfold reciprocalVariationBlock
  apply intervalIntegral.integral_congr
  intro u _
  change Real.exp (-u) *
      (2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2 = _
  rw [pickupFlux_eq_reciprocalVariationKernel]

/-- Uniform boundedness of partial sums of the exact reciprocal-prefix
variation energies. -/
def ReciprocalVariationBlockUniform : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, reciprocalVariationBlock n) ≤ C

theorem criticalIntervalBlockUniform_iff_reciprocalVariationBlockUniform :
    CriticalIntervalBlockUniform ↔ ReciprocalVariationBlockUniform := by
  constructor
  · rintro ⟨C, hC, hbound⟩
    refine ⟨C, hC, ?_⟩
    intro N
    unfold criticalIntervalBlockSum at hbound
    simpa only [criticalIntervalBlock_eq_reciprocalVariationKernel] using hbound N
  · rintro ⟨C, hC, hbound⟩
    refine ⟨C, hC, ?_⟩
    intro N
    unfold criticalIntervalBlockSum
    simpa only [criticalIntervalBlock_eq_reciprocalVariationKernel] using hbound N

/-- The completed critical vertical line is equivalent to bounded total energy
of the zero-mass reciprocal-prefix variation kernel. -/
theorem criticalBoundary_iff_reciprocalVariationBlockUniform :
    CriticalBoundaryVerticalLineUniform ↔ ReciprocalVariationBlockUniform :=
  criticalBoundary_iff_intervalBlockUniform.trans
    criticalIntervalBlockUniform_iff_reciprocalVariationBlockUniform

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.pickupWeightedPrefix_eq_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.reciprocalFluxWeight_sum_zero
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.pickupFlux_eq_reciprocalKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.pickupFlux_eq_reciprocalVariationKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.wholePickup_eq_reciprocalVariationKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.criticalIntervalBlock_eq_reciprocalVariationKernel
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.criticalIntervalBlockUniform_iff_reciprocalVariationBlockUniform
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel.criticalBoundary_iff_reciprocalVariationBlockUniform
