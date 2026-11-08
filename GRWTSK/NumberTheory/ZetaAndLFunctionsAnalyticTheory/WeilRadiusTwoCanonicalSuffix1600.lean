/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import CanonicalRoot1600Attach
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCheckpointSplice

/-!
# The checked last 1600 pivots of the original canonical radius-two tape

The actual canonical archive contains 399936 pivots at physical modes 65
through 400000. Four checked 256-pivot segments return the original archived
checkpoint at 398336 to the separately checked final 576-pivot checkpoint.
Every still-active row is checked, including all 3840 intermediate/successor
links, and the complete last 1600-pivot block is returned to the SAME tape
whose full aggregate price is checked. The preceding 398336 pivots remain
open. No native decision theorem is imported from CanonicalContinuation.

This module exposes the actual closed finite suffix and its original active
checkpoint, then consumes it in the full recurrence with only the preceding
prefix and exact 1600-row endpoint remaining as premises. Those premises are
not discharged. It also evaluates the full canonical price from its checked
integer totals: 5655958627021229278958088/(500*2^80), which is at most 1/100.
The existing 39/1000 price consumer is preserved on exactly the same tape.

These are finite integer recurrence and aggregate-price facts. The price
alone does not prove that missing pivots are feasible. Actual literal seed
comparisons, the preceding recurrence, HighFloor 2(-1/2)(1/5)64, StageLower 1,
cofinal source signs, RH and Dirichlet GRH are not established. The archived
checkpoint is a five-signed-coordinate input, not a spectral assumption.
Changing an active endpoint invalidates the prefix composition. The suffix
starts at 398336, not zero; importing its closed return cannot erase that
boundary. Its two-pair Cauchy displacement structure is not a global matrix
rank-four assertion or a checked compressed positivity certificate.

Mathematical comparison: ordinary exact finite Schur/checkpoint composition
with the original squared nodes, nearest-even rounding, positive pivots and
compact caps. No new analytical principle or theorem-level novelty is claimed.
Formal source, exact-target kernel replay and selected standard-axiom assurance
are recorded in grwtsk/noeaaeue docs/verification.md. Imported dependencies
are separately pinned; independent analytical review remains pending.
Automated assistance constructed this source and the proof wrappers. The finite
checker and archived data are shared, so these returns are not independent
analytical proofs.
-/

set_option autoImplicit false
set_option maxRecDepth 30000
set_option maxHeartbeats 6500000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCanonicalSuffix1600

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurCompactReplay StructuredSchurNearestEven StructuredSchurIntegerReplay
open RadiusTwoAggregateSchurBudget RadiusTwoGeometricSchurBudget
open scoped BigOperators

open private lift1600 lift1600_restrict from Canonical1600Transport

/-- The exact canonical tape which pays the complete aggregate price. -/
abbrev paidTape : Tape 2 399936 :=
  CanonicalRadiusTwoBudgetWhole.tape.withGeometricCaps (400000^2)

/-- Original full-tape address of an active archived row. -/
abbrev activeIndex (i : Fin 1600) : Fin 399936 :=
  suffixEmbedding 398336 1600 (by decide) i

/-- The original archived checkpoint, extended only outside its active suffix. -/
abbrev checkpoint : Fin 399936 → GridRow 2 := Canonical1600Transport.checkpoint

/-- Every active checkpoint row is the original archived five-coordinate row. -/
theorem checkpoint_active_original (i : Fin 1600) :
    checkpoint (activeIndex i) = RadiusTwoNextPredecessorData.initial i := by
  change (lift1600 RadiusTwoNextPredecessorData.initial ∘
      suffixEmbedding 398336 1600 (by decide)) i = RadiusTwoNextPredecessorData.initial i
  exact congrFun (lift1600_restrict RadiusTwoNextPredecessorData.initial) i

/-- All last 1600 pivots are checked, including the 1024 new pivots and final 576. -/
theorem checkedSuffix : paidTape.BlockCaps 398336 checkpoint 1600 (by decide) :=
  CanonicalRoot1600Attach.checkedFinal1600

/-- The closed suffix and complete 39/1000 price belong to exactly one tape. -/
theorem checkedSuffix_and_price :
    paidTape.BlockCaps 398336 checkpoint 1600 (by decide) ∧
      (∑ i, price (paidTape.caps i)) ≤ (39/1000 : ℝ) :=
  ⟨checkedSuffix, CanonicalRadiusTwoBudgetWhole.paid⟩

private theorem price_of_totals (tape : Tape 2 399936) (column generator : ℕ)
    (hNodes : ∀ i, tape.node i = (65+(i.val : ℤ))^2)
    (hTotals : (columnTotal tape.caps, generatorTotal tape.caps) = (column, generator)) :
    (∑ i, price ((tape.withGeometricCaps (400000^2)).caps i)) =
      (totalNumerator column generator : ℝ)/(500*2^80) := by
  simp only [Tape.withGeometricCaps, hNodes, price]
  change (∑ i, (priceNumerator (geometricCaps (tape.caps i) (span i)) : ℝ) /
    (500*(generatorScale : ℝ)^2)) = _
  rw [← Finset.sum_div, ← Nat.cast_sum, sum_priceNumerator_eq]
  obtain ⟨hColumn, hGenerator⟩ := Prod.mk.inj hTotals
  rw [hColumn, hGenerator]
  norm_num [generatorScale]

/-- Exact full canonical aggregate price, from the already checked integer totals.
This arithmetic identity does not assert any missing recurrence block. -/
theorem canonicalPrice_exact :
    (∑ i, price (paidTape.caps i)) =
      (5655958627021229278958088 : ℝ)/(500*2^80) := by
  have h := price_of_totals CanonicalRadiusTwoBudgetWhole.tape
    89499455725700701487104 45163608404076385964852
    (fun _ => rfl) CanonicalRadiusTwoBudgetWhole.exactTapeTotals
  have hNumerator : totalNumerator 89499455725700701487104 45163608404076385964852 =
      5655958627021229278958088 := by decide +kernel
  simpa only [paidTape, hNumerator, Nat.cast_ofNat] using h

/-- A sharper upper bound for the same complete tape price. -/
theorem canonicalPrice_le_one_hundredth :
    (∑ i, price (paidTape.caps i)) ≤ (1/100 : ℝ) := by
  rw [canonicalPrice_exact]
  norm_num

/-- Convert an exact original-coordinate prefix endpoint into the suffix port. -/
theorem prefixEndpoint_to_checkpoint
    (seed : Fin 399936 → GridRow 2)
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) = RadiusTwoNextPredecessorData.initial i) :
    ∀ i : Fin 399936, 398336 ≤ i.val →
      paidTape.rowAt 0 seed 398336 i = checkpoint i := by
  intro i hi
  let j : Fin 1600 := ⟨i.val-398336, by have := i.isLt; omega⟩
  have hIndex : activeIndex j = i := by
    apply Fin.ext
    change 398336+(i.val-398336) = i.val
    omega
  rw [← hIndex]
  exact (hEndpoint j).trans (checkpoint_active_original j).symm

/-- Actual closed-suffix consumer: only the preceding prefix and its original
archived endpoint remain. No unproved continuation is supplied as an argument. -/
theorem checkedFullRecurrence_of_prefix
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) = RadiusTwoNextPredecessorData.initial i) :
    paidTape.BlockCaps 0 seed 399936 (by decide) :=
  paidTape.blockCaps_add 0 seed 398336 1600 (by decide) checkpoint
    (prefixEndpoint_to_checkpoint seed hEndpoint) hPrefix checkedSuffix

/-- The exact full recurrence consumer retains the complete price on the same tape. -/
theorem checkedFullRecurrence_and_price_of_prefix
    (seed : Fin 399936 → GridRow 2)
    (hPrefix : paidTape.BlockCaps 0 seed 398336 (by decide))
    (hEndpoint : ∀ i : Fin 1600,
      paidTape.rowAt 0 seed 398336 (activeIndex i) = RadiusTwoNextPredecessorData.initial i) :
    paidTape.BlockCaps 0 seed 399936 (by decide) ∧
      (∑ i, price (paidTape.caps i)) ≤ (39/1000 : ℝ) :=
  ⟨checkedFullRecurrence_of_prefix seed hPrefix hEndpoint, CanonicalRadiusTwoBudgetWhole.paid⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCanonicalSuffix1600
