import Mathlib

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Finite reductions for the growing-shift exceptional-set obstruction.
No large-values, Chowla, pretentious, geometric-trace, or RH theorem is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupExceptionalShiftConnections

/-- Weighted mass of a finite exceptional set. -/
def exceptionalMass {ι : Type*} [DecidableEq ι]
    (bad : Finset ι) (w : ι → ℝ) : ℝ :=
  ∑ r ∈ bad, |w r|

/-- Cardinality alone controls weighted exceptional mass only after a pointwise
bound on the original source contribution is supplied. -/
theorem exceptionalMass_le_card_mul_sup {ι : Type*} [DecidableEq ι]
    (bad : Finset ι) (w : ι → ℝ) (B : ℝ)
    (hB : ∀ r ∈ bad, |w r| ≤ B) :
    exceptionalMass bad w ≤ bad.card * B := by
  unfold exceptionalMass
  calc
    ∑ r ∈ bad, |w r| ≤ ∑ _r ∈ bad, B := by
      exact Finset.sum_le_sum fun r hr => hB r hr
    _ = bad.card * B := by simp [Nat.cast_ofNat]

/-- Finite layer-cake identity for a nonnegative integer-valued height.  This is
the discrete prototype needed when a large-values theorem bounds level sets of
the original shift contribution. -/
theorem finite_layer_cake_nat {ι : Type*} [DecidableEq ι]
    (bad : Finset ι) (height : ι → ℕ) :
    ∑ r ∈ bad, height r =
      ∑ k ∈ Finset.range (1 + (bad.sup height)),
        ((bad.filter fun r => k < height r).card : ℕ) := by
  classical
  simp only [Finset.sum_filter]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro r hr
  simp only [Finset.mem_range]
  have hle : height r ≤ bad.sup height := Finset.le_sup hr
  simp [Nat.lt_succ_iff, hle]

/-- Reciprocal prime-coordinate loss attached to a shift. -/
def deletionLoss (primes : Finset ℕ) (r : ℕ) : ℚ :=
  ∑ p ∈ primes.filter (fun p => p ∣ r), (p : ℚ)⁻¹

/-- Pretentious-distance bookkeeping requirement.  It is deliberately a record
of obligations rather than a theorem asserting stability for the pickup source. -/
structure PretentiousDeletionBridge where
  originalDistance : ℝ
  deletedDistance : ℝ
  reciprocalLoss : ℝ
  deletionBound : deletedDistance ≥ originalDistance - reciprocalLoss

/-- Requirements for consuming a large-values estimate on the original
Gram-weighted shift contribution. -/
structure WeightedExceptionalShiftBridge where
  sourceContribution : ℕ → ℝ
  bad : Finset ℕ
  levelSetBound : Prop
  gramWeightsPreserved : Prop
  roughMasksPreserved : Prop
  frozenEndpointsPreserved : Prop
  cofactorComplementPreserved : Prop
  repeatedPrimeCorrectionPaid : Prop
  weightedBadMassSmall : Prop

/-- Requirements for replacing exceptional-set splitting by a complete trace or
spectral object. -/
structure CompleteTraceShiftBridge where
  integerSourcePreserved : Prop
  everyShiftIncluded : Prop
  signedGramObservationRecovered : Prop
  masksAndEndpointsRecovered : Prop
  growingComplexityControlled : Prop
  exceptionalFibersPaid : Prop
  quantitativeTraceBound : Prop

end GRWTSK.NumberTheory.Moebius.PickupExceptionalShiftConnections
