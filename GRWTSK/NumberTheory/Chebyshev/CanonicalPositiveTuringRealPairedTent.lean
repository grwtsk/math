/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation
import GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringPairedTent

set_option autoImplicit false

/-!
# Real-rounded positive-row evaluation for canonical Turing packets

The positive-row paired adapter already reduces the complete bounded two-sign
divisor to one row per positive certified record. The paired source is exactly
real. This module composes that canonical source identity with the one-component
real accumulator.

The mathematical obligations are unchanged: zero gap, exact row/source alignment,
actual multiplicity equality, and full complex coordinate enclosures remain
premises. The improvement is only the final value quantization allowance:
`1 / 2^bits` rather than the generic complex `2 / 2^bits`. Every analytic pair
error is still doubled and charged at full multiplicity.

The accepted output has exactly zero stored imaginary component. The existing
prime consumer can use it, but the strict prime margin remains an independent
premise. No packet, accepted arithmetic, margin, prime, or RH result is constructed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringRealPairedTent

open scoped BigOperators ComplexConjugate
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringFullHead
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringEnumeration
open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.Analysis.ComplexAnalysis.RationalTentAccumulation
open GRWTSK.Analysis.ComplexAnalysis.RationalConjugatePairAccumulation
open GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalPositiveTuringPairedTent
open CanonicalRationalTentEvaluation TentSource SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- The one-component pre-rounding allowance is strictly smaller than the generic
complex pair accumulator's allowance. All analytic row errors are identical. -/
theorem real_preRound_allowance_strictly_smaller
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) :
    GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.sumError x h rows +
        realRoundoffQ bits <
      GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.sumError x h rows +
        roundoffQ bits :=
  preRoundError_lt_complexPreRoundError x h bits rows

/-- Numeric real-pair acceptance encloses the SAME complete canonical bounded head. -/
theorem verified_head_of_positive_real_pair_packet
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.verify
      x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  have hs := GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.verify_sound
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

/-- Every accepted real-pair output stores exactly zero in its imaginary field. -/
theorem accepted_output_im_zero
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State)
    (accepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.verify
      x h bits rows tolerance out = true) :
    out.value.im = 0 :=
  GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.accepted_value_im_zero
    x h bits rows tolerance out accepted

/-- The embedded accepted center is an exactly real complex number. -/
theorem accepted_output_eq_real
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (tolerance : ℚ) (out : State)
    (accepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.verify
      x h bits rows tolerance out = true) :
    QComplex.embed out.value = (((out.value.re : ℚ) : ℝ) : ℂ) := by
  apply Complex.ext
  · rfl
  · simp [QComplex.embed,
      accepted_output_im_zero x h bits rows tolerance out accepted]

/-- Equivalent enclosure statement with an explicitly real center. -/
theorem verified_head_with_real_center
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.verify
      x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      (((out.value.re : ℚ) : ℝ) : ℂ)‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  have hs := verified_head_of_positive_real_pair_packet
    x h bits rows packet zeroGap alignment tolerance out accepted
  rw [accepted_output_eq_real x h bits rows tolerance out accepted] at hs
  exact hs

/-- The existing prime consumer can use the real-rounded positive rows.
The strict arithmetic margin is unchanged and remains independently required. -/
theorem prime_in_square_of_positive_real_pair_packet
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (tolerance : ℚ) (out : State)
    (accepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows tolerance out = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      ((QComplex.embed out.value).re + (out.error : ℝ))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have enclosure :=
    (verified_head_of_positive_real_pair_packet
      (squareCenterQ n) (squareRadiusQ n) bits rows packet zeroGap
      alignment tolerance out accepted).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at enclosure
  exact prime_in_square_of_canonical_tent n hn packet.certificate.height hT
    (QComplex.embed out.value) (out.error : ℝ) enclosure margin

/-- The improved final value allowance does not alter any analytic pair error.
It only replaces the two-component quantization charge by the one-component charge. -/
theorem analytic_pair_error_unchanged
    (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput) :
    GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation.sumError x h rows =
      GRWTSK.Analysis.ComplexAnalysis.RationalConjugatePairAccumulation.sumError x h rows :=
  rfl

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringRealPairedTent
