/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringEnumeration
import GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation

set_option autoImplicit false

/-!
# Bind a zero-gap canonical Turing packet to rational tent rows

The zero-gap packet already enumerates the complete bounded divisor by two signed
copies of its positive certified record index. `CanonicalRationalTentEvaluation`
consumes a `HeadBinding` indexed by `Fin k`. This module supplies the exact adapter.

A row alignment must provide:

* an equivalence from numeric rows to the two signed record copies;
* equality of each row weight with the source-aligned record multiplicity;
* a full complex coordinate enclosure for the actual positive zero or conjugate
  selected by that signed copy.

These obligations cannot be inferred from row count, interval overlap, a residual,
or arithmetic acceptance. Under zero gap they construct the SAME complete-head
bijection required by the rational tent evaluator. The existing verified-head and
prime consumers can then be invoked without a separately supplied `HeadBinding`.

This file constructs no Turing count, zero packet, coordinate enclosure, accepted
numeric evaluation, strict prime margin, or RH conclusion.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Classical dependencies remain unaudited.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringTentBinding

open scoped BigOperators ComplexConjugate
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis.PositiveHeightSymmetricCount
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringFullHead
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringEnumeration
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalTentAccumulation
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalRationalTentEvaluation TentSource SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Forget the sign tag while retaining the originating certified record. -/
def signedRecordIndex : Sum Index Index → Index
  | Sum.inl i => i
  | Sum.inr i => i

/-- Each signed source point has the analytic multiplicity stored by its originating record. -/
theorem record_multiplicity_eq_signed_source
    (packet : CanonicalPositiveTuringPacket family)
    (s : Sum Index Index) :
    (family.record (signedRecordIndex s)).multiplicity =
      multiplicity (signedIndexMap packet s).1 := by
  cases s with
  | inl i =>
      simpa only [signedRecordIndex, signedIndexMap] using
        packet.alignment.multiplicity_eq i
  | inr i =>
      calc
        (family.record i).multiplicity = multiplicity (packet.alignment.point i) :=
          packet.alignment.multiplicity_eq i
        _ = multiplicity (conjugated (packet.alignment.point i)) :=
          (multiplicity_conjugated (packet.alignment.point i)).symm
        _ = multiplicity (signedIndexMap packet (Sum.inr i)).1 := rfl

/-- Semantic alignment between executable rational rows and the signed canonical source.

`rowEquiv` prevents missing or duplicate signed records. `weight_eq` binds each
numeric weight to its actual source record. `coordinate` is the full complex ball
obligation used by the tent evaluator; the height interval in the Turing packet is
not silently promoted to this stronger statement. -/
structure SignedTentRowAlignment
    (packet : CanonicalPositiveTuringPacket family)
    {k : ℕ} (rows : Fin k → WeightedInput) where
  rowEquiv : Fin k ≃ Sum Index Index
  weight_eq : ∀ i,
    (rows i).weight =
      (family.record (signedRecordIndex (rowEquiv i))).multiplicity
  coordinate : ∀ i,
    ‖(signedIndexMap packet (rowEquiv i)).1.1 -
      QComplex.embed (rows i).point.center‖ ≤
        ((rows i).point.coordinateError : ℝ)

namespace SignedTentRowAlignment

/-- The row family has exactly two signed copies of the positive record index.
This is a cardinality consequence of the supplied equivalence, not a source proof by itself. -/
theorem row_count_eq_two_mul_index_card
    {k : ℕ} {rows : Fin k → WeightedInput}
    {packet : CanonicalPositiveTuringPacket family}
    (alignment : SignedTentRowAlignment packet rows) :
    k = 2 * Fintype.card Index := by
  have hcard := Fintype.card_congr alignment.rowEquiv
  simpa [two_mul] using hcard

end SignedTentRowAlignment

/-- A zero-gap packet plus exact row alignment supplies the evaluator's complete `HeadBinding`. -/
noncomputable def headBindingOfZeroGap
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    {k : ℕ} (rows : Fin k → WeightedInput)
    (alignment : SignedTentRowAlignment packet rows) :
    HeadBinding packet.certificate.height rows where
  index := alignment.rowEquiv.trans (signedIndexEquiv packet zeroGap)
  weight_eq := by
    intro i
    change (rows i).weight =
      multiplicity (signedIndexMap packet (alignment.rowEquiv i)).1
    exact (alignment.weight_eq i).trans
      (record_multiplicity_eq_signed_source packet (alignment.rowEquiv i))
  coordinate := by
    intro i
    change ‖(signedIndexMap packet (alignment.rowEquiv i)).1.1 -
      QComplex.embed (rows i).point.center‖ ≤
        ((rows i).point.coordinateError : ℝ)
    exact alignment.coordinate i

/-- Numeric tent acceptance can consume the canonical zero-gap packet directly once
row/source alignment has been proved. -/
theorem verified_head_of_zero_gap_packet
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : SignedTentRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : verify x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
        out.error ≤ tolerance := by
  exact verified_head_sound x h packet.certificate.height bits rows
    (headBindingOfZeroGap packet zeroGap rows alignment) tolerance out accepted

/-- The existing finite prime consumer can use the packet-generated binding.
The strict arithmetic margin remains independent and is not inferred from zero gap. -/
theorem prime_in_square_of_zero_gap_packet
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : SignedTentRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : verify (squareCenterQ n) (squareRadiusQ n)
      bits rows tolerance out = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      ((QComplex.embed out.value).re + (out.error : ℝ))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  exact prime_in_square_of_verified_rational_head n hn
    packet.certificate.height hT bits rows
    (headBindingOfZeroGap packet zeroGap rows alignment)
    tolerance out accepted margin

/-- Two rows with the same signed-record label cannot satisfy the required row equivalence.
This finite control does not assert the existence of any zeta packet. -/
theorem duplicate_signed_label_not_equiv_fixture :
    ¬ Function.Bijective (fun _i : Fin 2 => (Sum.inl (0 : Fin 1) : Sum (Fin 1) (Fin 1))) := by
  intro h
  obtain ⟨i, hi⟩ := h.2 (Sum.inr (0 : Fin 1))
  cases hi

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringTentBinding
