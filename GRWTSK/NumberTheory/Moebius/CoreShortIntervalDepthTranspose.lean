/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #579. Parent: draft PR #577 at
`5c7606863a30b8763a6298bfb797e095130982bd`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalIncompatibleLinearWitness

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Interior Abel coefficient attached to cumulative length `n`; zero outside
the actual long-interior range. -/
def coreInteriorLengthCoefficient (j t n : ℕ) : ℝ :=
  if logarithmicShiftThreshold j ≤ n ∧
      n < harmonicShiftCount j t then
    harmonicShiftSecondDifference j t (n - 1)
  else 0

/-- Terminal Abel coefficient attached to cumulative length `n`; zero unless
`n` is exactly the active shift count at this depth. -/
def coreTerminalLengthCoefficient (j t n : ℕ) : ℝ :=
  if 0 < n ∧ n = harmonicShiftCount j t then
    harmonicShiftFirstDifference j t (n - 1)
  else 0

/-- Complete nonnegative Abel coefficient mass at retained length `n`,
aggregated across all genuine core depths before any short-interval estimate is
inserted. -/
def coreLengthCoefficientMass (j n : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    (coreTerminalLengthCoefficient j t n +
      coreInteriorLengthCoefficient j t n)

/-- Incompatible dyadic start-block first moment at one retained length,
written with the block scale exposed. -/
def incompatibleBlockLengthL1 (j r n : ℕ) : ℝ :=
  if r < j + 1 ∧ 2 ^ r < n then
    dyadicStartBlockShortIntervalL1 r n
  else 0

/-- The length-transposed incompatible packet.  Short-interval first moments
depend only on `r,n`; all depth dependence has been moved into the exact
coefficient mass. -/
def transposedIncompatibleDyadicL1Packet (j : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
      (2 ^ (j + 1) + 1),
    coreLengthCoefficientMass j n *
      ∑ r ∈ Finset.range (j + 1),
        incompatibleBlockLengthL1 j r n

/-- The terminal coefficient is nonnegative. -/
theorem coreTerminalLengthCoefficient_nonneg
    (j t n : ℕ) :
    0 ≤ coreTerminalLengthCoefficient j t n := by
  unfold coreTerminalLengthCoefficient
  split_ifs with h
  · exact harmonicShiftReciprocal_terminalDifference_nonneg
      (by omega)
  · norm_num

/-- The interior coefficient is nonnegative. -/
theorem coreInteriorLengthCoefficient_nonneg
    (j t n : ℕ) :
    0 ≤ coreInteriorLengthCoefficient j t n := by
  unfold coreInteriorLengthCoefficient
  split_ifs with h
  · have hn : 1 ≤ n := by
      have hH : 1 ≤ logarithmicShiftThreshold j := by
        unfold logarithmicShiftThreshold
        omega
      omega
    simpa [Nat.sub_add_cancel hn] using
      harmonicShiftReciprocal_secondDifference_nonneg j t (n - 1)
  · norm_num

/-- Aggregated coefficient mass is nonnegative. -/
theorem coreLengthCoefficientMass_nonneg
    (j n : ℕ) :
    0 ≤ coreLengthCoefficientMass j n := by
  unfold coreLengthCoefficientMass
  apply Finset.sum_nonneg
  intro t _ht
  exact add_nonneg
    (coreTerminalLengthCoefficient_nonneg j t n)
    (coreInteriorLengthCoefficient_nonneg j t n)

/-- Exposing one incompatible dyadic block scale at fixed length does not
change its value on the compatible finite range. -/
theorem incompatibleBlockLengthL1_eq
    {j r n : ℕ}
    (hr : r < j + 1)
    (hrn : 2 ^ r < n) :
    incompatibleBlockLengthL1 j r n =
      dyadicStartBlockShortIntervalL1 r n := by
  simp [incompatibleBlockLengthL1, hr, hrn]

/-- The length-transposed form is the source-facing replacement for summing a
uniform per-depth bound.  This proposition deliberately asks for control of the
aggregated coefficient masses rather than paying the number of depths. -/
def SubpolynomialTransposedIncompatibleDyadicL1Packet : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      transposedIncompatibleDyadicL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact comparison interface between the original incompatible packet and
the length-transposed packet.  Constructing this adapter requires only finite
reindexing/Fubini identities; it carries no analytic cancellation theorem. -/
structure IncompatibleDepthTransposeAdapter : Type where
  packetComparison :
    ∀ j : ℕ,
      coreLongIncompatibleDyadicL1Packet j ≤
        transposedIncompatibleDyadicL1Packet j

/-- A transposed supplier plus the finite comparison supplies the original
incompatible packet at subpolynomial scale. -/
theorem subpolynomialIncompatibleDyadicPacket_of_transposed
    (bridge : IncompatibleDepthTransposeAdapter)
    (hTransposed : SubpolynomialTransposedIncompatibleDyadicL1Packet) :
    ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        coreLongIncompatibleDyadicL1Packet j ≤
          C * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hTransposed δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact le_trans (bridge.packetComparison j) (hbound j)

/-- A length-wise deterministic or arithmetic supplier may now target the
aggregated Abel coefficient mass directly, avoiding any automatic multiplication
by the number of core depths. -/
structure IncompatibleLengthwiseSupplier where
  sourceStatement : Prop
  coefficientMassControl : Prop
  blockLengthControl : Prop
  toTransposed :
    sourceStatement →
      coefficientMassControl →
      blockLengthControl →
      SubpolynomialTransposedIncompatibleDyadicL1Packet

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLengthCoefficientMass_nonneg
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialIncompatibleDyadicPacket_of_transposed
