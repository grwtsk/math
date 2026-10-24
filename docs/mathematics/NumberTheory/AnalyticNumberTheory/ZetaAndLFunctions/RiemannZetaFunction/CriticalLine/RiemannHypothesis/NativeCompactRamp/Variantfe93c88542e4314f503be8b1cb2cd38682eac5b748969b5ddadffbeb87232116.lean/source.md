# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeCompactRamp.Variantfe93c88542e4314f503be8b1cb2cd38682eac5b748969b5ddadffbeb87232116

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e672d5ea3db9f79c208906f727f78f6505d2eb95` · SHA-256 `fe93c88542e4314f503be8b1cb2cd38682eac5b748969b5ddadffbeb87232116`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimeSquareGreen
import FormalResearch.RiemannHypothesis.Conversation.FlexedTents
import FormalResearch.RiemannHypothesis.Conversation.AccordionConsumer

/-!
# Actual compact native ramps retain the square compensation and entrance

Batch 09's compact causal ramp is instantiated on every integer of an actual
prime cycle. The endpoint atom has zero weight. Exact Green reconstruction
retains the initial storage, and the favorable prime-square sector is retained
in the Mangoldt payment. A nonpositive entrance then bounds a proposed new
record by that payment. An endpoint proposal is not the sum of all record
increments inside the cycle; no peak or cycle-energy estimate is inferred.

Human compact-ramp and compensation direction: grwtsk contributors. Local
native-source adapter and Lean consumer: OpenAI Codex. Mathlib arithmetic
functions retain their identity. No arithmetic payment bound is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeCompactRamp

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer
open PrimeStorage PrimePowerPrimitive PrimeSquareGreen CenteredVaughan CausalRecords
open ArithmeticFunction
open scoped BigOperators
noncomputable section

/-- The ramp weight in this module, with the following exact parameterization.

def rampWeight (u K j : ℕ) : ℝ := cellClock (u + j + 1) (u + K : ℕ)
-/
def rampWeight (u K j : ℕ) : ℝ := cellClock (u + j + 1) (u + K : ℕ)
/-- The prime ramp in this module, with the following exact parameterization.

def primeRamp (u K : ℕ) : ℝ := ∑ j ∈ Finset.range K, ordinaryPrimeCoefficient (u + j + 1) *
rampWeight u K j
-/
def primeRamp (u K : ℕ) : ℝ := ∑ j ∈ Finset.range K,
  ordinaryPrimeCoefficient (u + j + 1) * rampWeight u K j
/-- The mangoldt ramp in this module, with the following exact parameterization.

def mangoldtRamp (u K : ℕ) : ℝ := ∑ j ∈ Finset.range K, centeredMangoldt (u + j + 1) *
rampWeight u K j
-/
def mangoldtRamp (u K : ℕ) : ℝ := ∑ j ∈ Finset.range K,
  centeredMangoldt (u + j + 1) * rampWeight u K j
/-- The square ramp in this module, with the following exact parameterization.

def squareRamp (u K : ℕ) : ℝ := ∑ j ∈ Finset.range K, squareLogAtom (u + j + 1) * rampWeight u
K j
-/
def squareRamp (u K : ℕ) : ℝ := ∑ j ∈ Finset.range K,
  squareLogAtom (u + j + 1) * rampWeight u K j

theorem ramp_weight_nonneg {u K j : ℕ} (hu : 1 ≤ u) (hj : j < K) :
    0 ≤ rampWeight u K j := by
  apply cellClock_nonneg (by omega : 1 ≤ u + j + 1)
  exact_mod_cast (by omega : u + j + 1 ≤ u + K)

theorem terminal_ramp_weight (u K : ℕ) : rampWeight u (K + 1) K = 0 := by
  simp only [rampWeight, cellClock, Nat.add_assoc]
  ring

theorem actual_compact_green_identity {u : ℕ} (hu : 1 ≤ u) (K : ℕ) :
    ordinaryPrimePrimitive (u + K : ℕ) - ordinaryPrimePrimitive u =
      cumulativeDiscrepancy ordinaryPrimeCoefficient u * cellClock u (u + K : ℕ) +
        primeRamp u K := by
  have h := FlexedTents.finite_green_identity
    (fun j => 1 / Real.sqrt (u + j : ℕ))
    (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j)) K
  rw [AccordionConsumer.actual_signed_work_telescope hu]
  calc
    _ = 2 * ∑ j ∈ Finset.range K,
        (1 / Real.sqrt (u + j : ℕ) - 1 / Real.sqrt (u + (j + 1) : ℕ)) *
          cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      simp only [cellClock, Nat.add_assoc]
      ring
    _ = _ := by
      rw [h, mul_add, Finset.mul_sum]
      simp only [Nat.add_zero]
      congr 1
      · unfold cellClock
        ring
      · unfold primeRamp
        apply Finset.sum_congr rfl
        intro j _
        rw [show u + (j + 1) = u + j + 1 by omega,
          actual_storage_step (by omega : 1 ≤ u + j)]
        unfold rampWeight cellClock
        ring

theorem square_ramp_nonneg {u : ℕ} (hu : 1 ≤ u) (K : ℕ) : 0 ≤ squareRamp u K := by
  exact Finset.sum_nonneg (fun j hj => mul_nonneg (square_log_atom_nonneg _)
    (ramp_weight_nonneg hu (Finset.mem_range.mp hj)))

theorem prime_ramp_le_mangoldt_minus_squares {u : ℕ} (hu : 1 ≤ u) (K : ℕ) :
    primeRamp u K ≤ mangoldtRamp u K - squareRamp u K := by
  rw [primeRamp, mangoldtRamp, squareRamp, ← Finset.sum_sub_distrib]
  apply Finset.sum_le_sum
  intro j hj
  have hsource : ordinaryPrimeCoefficient (u + j + 1) =
      centeredMangoldt (u + j + 1) -
        (vonMangoldt (u + j + 1) - primeLogAtom (u + j + 1)) := by
    rw [ordinaryPrimeCoefficient_at_source_index (by omega),
      centeredMangoldt_apply (by omega)]
    unfold primeLogAtom
    ring
  have hcomp := mul_le_mul_of_nonneg_right
    (square_log_atom_le_higher_powers (u + j + 1))
    (ramp_weight_nonneg hu (Finset.mem_range.mp hj))
  rw [hsource, sub_mul]
  exact sub_le_sub_left hcomp _

theorem actual_cycle_work_le_square_compensated_ramp {u : ℕ} (hu : 1 ≤ u)
    (hentrance : cumulativeDiscrepancy ordinaryPrimeCoefficient u ≤ 0) (K : ℕ) :
    ordinaryPrimePrimitive (u + K : ℕ) - ordinaryPrimePrimitive u ≤
      mangoldtRamp u K - squareRamp u K := by
  rw [actual_compact_green_identity hu]
  have hclock := cellClock_nonneg (x := (u + K : ℕ)) hu
    (by exact_mod_cast (Nat.le_add_right u K))
  have hi := mul_nonpos_of_nonpos_of_nonneg hentrance hclock
  linarith [prime_ramp_le_mangoldt_minus_squares hu K]

/-- This is one endpoint's proposed new record, not the accumulated cycle energy. -/
theorem actual_record_proposal_le_square_compensated_ramp {N J : ℕ}
    (hN : 1 ≤ N)
    (hentrance : cumulativeDiscrepancy ordinaryPrimeCoefficient (N + J) ≤ 0) (K : ℕ) :
    recordIncrement (primeRecordLevel N J)
      (ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive N) ≤
        max (mangoldtRamp (N + J) K - squareRamp (N + J) K) 0 := by
  have h := record_le_positive_work (actual_prefix_le_record N J)
    (work := ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive (N + J : ℕ))
  have heq : (ordinaryPrimePrimitive (N + J : ℕ) - ordinaryPrimePrimitive N) +
      (ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive (N + J : ℕ)) =
      ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive N := by ring
  rw [heq] at h
  exact h.trans (max_le_max_right 0
    (actual_cycle_work_le_square_compensated_ramp (by omega) hentrance K))

theorem nonpositive_compact_payment_cannot_make_record {N J K : ℕ} (hN : 1 ≤ N)
    (hentrance : cumulativeDiscrepancy ordinaryPrimeCoefficient (N + J) ≤ 0)
    (hpayment : mangoldtRamp (N + J) K - squareRamp (N + J) K ≤ 0) :
    recordIncrement (primeRecordLevel N J)
      (ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive N) = 0 := by
  apply le_antisymm
  · have h := actual_record_proposal_le_square_compensated_ramp hN hentrance K
    rwa [max_eq_right hpayment] at h
  · exact recordIncrement_nonneg _ _

theorem prime_record_level_monotone (N : ℕ) : Monotone (primeRecordLevel N) := by
  apply monotone_nat_of_le_succ
  intro j
  exact le_max_left _ _

/-- The actual last-cell increment is bounded; earlier cycle peaks are not counted twice. -/
theorem actual_final_record_increment_le_compact_payment {N J K : ℕ} (hN : 1 ≤ N)
    (hK : 0 < K)
    (hentrance : cumulativeDiscrepancy ordinaryPrimeCoefficient (N + J) ≤ 0) :
    primeRecordIncrement N (J + K - 1) ≤
      max (mangoldtRamp (N + J) K - squareRamp (N + J) K) 0 := by
  have hlevels := prime_record_level_monotone N (by omega : J ≤ J + K - 1)
  have hproposal := actual_record_proposal_le_square_compensated_ramp hN hentrance K
  have hinc : primeRecordIncrement N (J + K - 1) ≤
      recordIncrement (primeRecordLevel N J)
        (ordinaryPrimePrimitive (N + J + K : ℕ) - ordinaryPrimePrimitive N) := by
    unfold primeRecordIncrement
    rw [show N + (J + K - 1) + 1 = N + J + K by omega]
    rw [recordIncrement_eq_positive_gap, recordIncrement_eq_positive_gap]
    exact max_le_max_right 0 (sub_le_sub_left hlevels _)
  exact hinc.trans hproposal

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCompactRamp
```
