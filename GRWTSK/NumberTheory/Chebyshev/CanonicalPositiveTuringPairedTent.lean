/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringEnumeration
import GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation

set_option autoImplicit false

/-!
# Evaluate a complete bounded divisor from positive Turing rows only

A zero-gap canonical packet identifies its positive certified records with the
complete positive-height divisor. Conjugation supplies the negative-height half,
and the real tent kernel commutes with conjugation. Therefore one numeric row per
positive record can enclose the full two-sign contribution.

`PositivePairRowAlignment` retains the exact source obligations:

* a bijection from numeric rows to certified positive record indices;
* equality of each row weight with the record's actual analytic multiplicity;
* a full complex coordinate enclosure for the actual positive zero.

The conjugate coordinate ball is not supplied separately. It is unnecessary for
this evaluator because kernel conjugation is exact and the one-point error is
doubled. This halves the row count compared with the signed-row `HeadBinding`
adapter, but it does not reduce or hide the mathematical error budget.

No count theorem, packet, coordinate enclosure, accepted evaluation, prime margin,
or RH conclusion is constructed. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringPairedTent

open scoped BigOperators ComplexConjugate
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringFullHead
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringEnumeration
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalTentAccumulation
open GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalRationalTentEvaluation TentSource SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Exact alignment of one executable row with each positive certified record.
Row cardinality alone is not this structure. -/
structure PositivePairRowAlignment
    (packet : CanonicalPositiveTuringPacket family)
    {k : ℕ} (rows : Fin k → WeightedInput) where
  rowEquiv : Fin k ≃ Index
  weight_eq : ∀ i,
    (rows i).weight = (family.record (rowEquiv i)).multiplicity
  coordinate : ∀ i,
    ‖(packet.alignment.point (rowEquiv i)).1 -
      QComplex.embed (rows i).point.center‖ ≤
        ((rows i).point.coordinateError : ℝ)

namespace PositivePairRowAlignment

/-- The compressed evaluator uses one row per positive record, not two signed rows. -/
theorem row_count_eq_index_card
    {k : ℕ} {rows : Fin k → WeightedInput}
    {packet : CanonicalPositiveTuringPacket family}
    (alignment : PositivePairRowAlignment packet rows) :
    k = Fintype.card Index := by
  simpa using Fintype.card_congr alignment.rowEquiv

end PositivePairRowAlignment

/-- At zero gap, the complete canonical tent source is exactly the positive-row
pair source used by the compressed accumulator. -/
theorem full_tent_sum_eq_positive_rows_of_gap_eq_zero
    (x h : ℝ)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    {k : ℕ} (rows : Fin k → WeightedInput)
    (alignment : PositivePairRowAlignment packet rows) :
    (∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * tentKernel x h z.1) =
      ∑ i : Fin k, ((rows i).weight : ℂ) *
        (tentKernel x h (packet.alignment.point (alignment.rowEquiv i)).1 +
          tentKernel x h
            (conj (packet.alignment.point (alignment.rowEquiv i)).1)) := by
  classical
  calc
    _ = ∑ j : Index, ((family.record j).multiplicity : ℂ) *
        (tentKernel x h (packet.alignment.point j).1 +
          tentKernel x h (conjugated (packet.alignment.point j)).1) :=
      packet.full_weighted_sum_eq_records_of_gap_eq_zero zeroGap
        (fun z => tentKernel x h z.1)
    _ = ∑ i : Fin k, ((family.record (alignment.rowEquiv i)).multiplicity : ℂ) *
        (tentKernel x h (packet.alignment.point (alignment.rowEquiv i)).1 +
          tentKernel x h
            (conjugated (packet.alignment.point (alignment.rowEquiv i))).1) :=
      (Equiv.sum_comp alignment.rowEquiv _).symm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i _
      rw [← alignment.weight_eq i]
      simp [conjugated, zeroConjugate]

/-- Numeric pair acceptance now encloses the SAME complete bounded canonical head. -/
theorem verified_head_of_positive_pair_packet
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : verify x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  have hs := GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation.verify_sound
    x h bits rows tolerance out accepted
    (fun i => (packet.alignment.point (alignment.rowEquiv i)).1)
    (fun i => (point_mem_strip (packet.alignment.point (alignment.rowEquiv i))).2.le)
    (fun i => ne_of_gt (((mem_positiveHeightHead packet.certificate.height
      (packet.alignment.point (alignment.rowEquiv i))).mp
        (packet.alignment.point_mem_head (alignment.rowEquiv i))).1))
    alignment.coordinate
  rw [full_tent_sum_eq_positive_rows_of_gap_eq_zero
    (x : ℝ) (h : ℝ) packet zeroGap rows alignment]
  exact hs

/-- The existing prime consumer can use only the positive certified rows.
Completeness comes from zero gap; the accepted arithmetic and strict prime margin
remain independent premises. -/
theorem prime_in_square_of_positive_pair_packet
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : verify (squareCenterQ n) (squareRadiusQ n)
      bits rows tolerance out = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      ((QComplex.embed out.value).re + (out.error : ℝ))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have enclosure :=
    (verified_head_of_positive_pair_packet
      (squareCenterQ n) (squareRadiusQ n) bits rows packet zeroGap
      alignment tolerance out accepted).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at enclosure
  exact prime_in_square_of_canonical_tent n hn packet.certificate.height hT
    (QComplex.embed out.value) (out.error : ℝ) enclosure margin

/-- A mere row-count equality is weaker than source alignment: a constant map can
have the right finite domain size while failing injectivity. -/
theorem matching_count_not_alignment_fixture :
    Fintype.card (Fin 2) = Fintype.card (Fin 2) ∧
      ¬ Function.Injective (fun _i : Fin 2 => (0 : Fin 2)) := by
  constructor
  · rfl
  · intro h
    have : (0 : Fin 2) = 1 := h rfl
    norm_num at this

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringPairedTent
