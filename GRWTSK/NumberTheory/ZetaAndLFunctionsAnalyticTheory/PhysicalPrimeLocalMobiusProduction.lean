/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitGramReturn
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Prime-local observer production without Möbius input

The generator takes squarefreeness (whether any prime exponent >= 2)
and the parity sign of the number of distinct prime factors of n.
It never calls ArithmeticFunction.moebius when creating the state.
Its agreement with the original source is a separate theorem.

The states are idealized Gödel observer tangent states, not a physical
hardware implementation. This factorization rule is an elementary
arithmetic computation, NOT an independent RH cancellation law.
-/

namespace GRWTSK.NumberTheory.Moebius.PhysicalPrimeLocalProduction

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- Local square-exponent annihilation and prime-parity sign rotation.
No Möbius function evaluation appears in the producer. -/
def producedBits (n : ℕ) : SignedBits where
  nonzero := decide (Squarefree n)
  negative := decide (((-1 : ℤ) ^ Nat.cardFactors n) = -1)

/-- Source equivalence is proved AFTER the independent input computation.
The only arithmetic premise is Mathlib's actual definition of μ. -/
theorem decode_producedBits (n : ℕ) :
    decodeSigned (producedBits n) =
      (ArithmeticFunction.moebius n : ℤ) := by
  by_cases hs : Squarefree n
  · have hsign :
        ((-1 : ℤ) ^ Nat.cardFactors n) = 1 ∨
        ((-1 : ℤ) ^ Nat.cardFactors n) = -1 :=
      neg_one_pow_eq_or ..
    rcases hsign with hpos | hneg
    · simp [producedBits, decodeSigned, hs, hpos,
        ArithmeticFunction.moebius_apply_of_squarefree hs]
    · simp [producedBits, decodeSigned, hs, hneg,
        ArithmeticFunction.moebius_apply_of_squarefree hs]
  · simp [producedBits, decodeSigned, hs,
      ArithmeticFunction.moebius_eq_zero_of_not_squarefree hs]

/-- Actual two future-timelike mathematical states with ORIGINAL n. -/
def producedRecord (p : Parameters) (n : ℕ) : PhysicalBitRecord :=
  { index := n
    presence := polarizationState p (producedBits n).nonzero
    sign := polarizationState p (producedBits n).negative }

theorem producedRecord_index (p : Parameters) (n : ℕ) :
    (producedRecord p n).index = n := rfl

theorem readRecord_produced (p : Parameters) (chart : ℝ) (n : ℕ) :
    readRecord p chart (producedRecord p n) =
      (ArithmeticFunction.moebius n : ℤ) := by
  change decodeSigned
    { nonzero :=
        polarizationBit p (polarizationState p (producedBits n).nonzero)
      negative :=
        polarizationBit p (polarizationState p (producedBits n).negative) } =
    (ArithmeticFunction.moebius n : ℤ)
  rw [polarizationBit_state, polarizationBit_state]
  exact decode_producedBits n

/-- Genuine chart transfer preserves both generated measured bits. -/
theorem readRecord_transferred_produced
    (p : Parameters) (chart s : ℝ) (n : ℕ) :
    readRecord p (chart + s)
        (transferRecord s (producedRecord p n)) =
      (ArithmeticFunction.moebius n : ℤ) := by
  rw [readRecord_transfer, readRecord_produced]

/-- Complete original-index stream; no missing/misindexed records. -/
def producedStream (p : Parameters) : PhysicalStream :=
  ⟨fun n => some (producedRecord p n)⟩

theorem observedCoeff_produced
    (p : Parameters) (chart : ℝ) (n : ℕ) :
    observedCoeff p chart (producedStream p) n = moebiusReal n := by
  simp [observedCoeff, producedStream, producedRecord_index,
    readRecord_produced, moebiusReal]

/-- True source-minus-observer defect vanishes termwise for this ideal
generator; existing arbitrary-stream defect still retains all errors. -/
theorem signedReadoutDefect_produced_zero
    (p : Parameters) (chart T : ℝ) :
    signedReadoutDefect p chart T (producedStream p) = 0 := by
  classical
  unfold signedReadoutDefect
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  by_cases h : m ≠ n
  · simp [h, observedKernel, sourceKernel, observedCoeff_produced]
  · simp [h]

/-- Original complete signed ordered pair Gram; no dropped orientations. -/
theorem observedPacket_produced_eq_pickupCross
    (p : Parameters) (chart T : ℝ) :
    observedPacket p chart T (producedStream p) = pickupCross T := by
  have h := pickupCross_eq_observed_add_defect p chart T (producedStream p)
  rw [signedReadoutDefect_produced_zero] at h
  linarith

/-- Original full signed rough, both mixed and elliptic trace defect. -/
theorem observedPacket_produced_elliptic_return
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (p : Parameters) (chart T : ℝ) :
    observedPacket p chart T (producedStream p) =
      matchedEllipticPacket B T + fullSignedResidual B T := by
  rw [observedPacket_produced_eq_pickupCross]
  exact pickupCross_eq_elliptic_add_full_residual B T

end GRWTSK.NumberTheory.Moebius.PhysicalPrimeLocalProduction
