/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarMixedChannel
import Mathlib.Tactic

/-!
# Typed connection atlas for the far divisor-mask mixed-channel obstruction

The preceding source identifies the complete divisor-mask obstruction with three
literal sectors:

* a one-channel mixed Gram;
* a moved indicator difference;
* an atomic inverse-omega term.

This module makes the research connections noncoercive.  The three sectors get
separate source-defined sums and separate conditional supplier records.  Only a
complete supplier controls the original `transportedDivisorMask`.  Shifted
convolution, boundary-strip and inverse-omega estimates are therefore typed
interfaces, while Chowla/Elliott, sieve parity, Selberg decomposition and
entropic PFR remain method analogies or negative controls until an exact theorem
inhabits one of those interfaces.

No external theorem is imported.  In particular, similarity of methods is not a
proof edge and does not supply cancellation, scale coverage, an endpoint bound,
or RH.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No quantitative gain or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannelConnections

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskReduction
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannel

/-- The complete first residual sector: one moved channel is compared with the
other before any absolute value or asymptotic estimate is applied. -/
def gramMismatchAtom
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  transportedOuter P p m n *
    (farIndicator N L H (p*m) (p*n) *
      rightWeightDelta P N Z p m n * mixedGram P p T m n)

/-- The complete second residual sector: the exact moved selector difference. -/
def indicatorMismatchAtom
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  transportedOuter P p m n *
    (signedChange
        (leftLost N L H p m (p*n))
        (leftGained N L H p m (p*n)) *
      rightWeightDelta P N Z p m n * gram P T m (p*n))

/-- The complete third residual sector, retaining the actual source denominator. -/
def atomicDenominatorAtom
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  transportedOuter P p m n *
    (-(farIndicator N L H (p*m) (p*n) *
      (omega P N (p*n) : ℝ)⁻¹ * gram P T (p*m) (p*n)))

/-- Pointwise partition of the exact mixed-channel source into the three named
residual mechanisms. -/
theorem mixedChannelAtom_eq_components
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) :
    mixedChannelAtom P N L Z H p T m n =
      gramMismatchAtom P N L Z H p T m n +
      indicatorMismatchAtom P N L Z H p T m n +
      atomicDenominatorAtom P N L Z H p T m n := by
  unfold mixedChannelAtom gramMismatchAtom indicatorMismatchAtom atomicDenominatorAtom
  ring

def gramMismatchSum
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    gramMismatchAtom P N L Z H p T m n

def indicatorMismatchSum
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    indicatorMismatchAtom P N L Z H p T m n

def atomicDenominatorSum
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    atomicDenominatorAtom P N L Z H p T m n

/-- Complete source return after naming all three residual sums. -/
theorem transportedDivisorMask_eq_componentSums
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    transportedDivisorMask P N L Z H p T =
      gramMismatchSum P N L Z H p T +
      indicatorMismatchSum P N L Z H p T +
      atomicDenominatorSum P N L Z H p T := by
  rw [transportedDivisorMask_eq_mixedChannel P N L Z H p T hpFresh hZp]
  unfold gramMismatchSum indicatorMismatchSum atomicDenominatorSum
  simp_rw [mixedChannelAtom_eq_components]
  simp only [Finset.sum_add_distrib]
  ring

/-- Conditional supplier for the shifted/mixed-Gram sector.  No shifted
convolution theorem is built into this record. -/
structure GramMismatchSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  budget : ℝ
  budget_nonnegative : 0 ≤ budget
  controls : gramMismatchSum P N L Z H p T ≤ budget

/-- Conditional supplier for the moved cutoff-strip sector. -/
structure IndicatorMismatchSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  budget : ℝ
  budget_nonnegative : 0 ≤ budget
  controls : indicatorMismatchSum P N L Z H p T ≤ budget

/-- Conditional supplier for the atomic inverse-omega sector. -/
structure AtomicDenominatorSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  budget : ℝ
  budget_nonnegative : 0 ≤ budget
  controls : atomicDenominatorSum P N L Z H p T ≤ budget

/-- A complete channel certificate must retain all three source sectors. -/
structure CompleteChannelSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  gram : GramMismatchSupplier P N L Z H p T
  indicator : IndicatorMismatchSupplier P N L Z H p T
  atomic : AtomicDenominatorSupplier P N L Z H p T

def CompleteChannelSupplier.totalBudget
    {P : List ℕ} {N L Z H p : ℕ} {T : ℝ}
    (S : CompleteChannelSupplier P N L Z H p T) : ℝ :=
  S.gram.budget + S.indicator.budget + S.atomic.budget

theorem CompleteChannelSupplier.totalBudget_nonnegative
    {P : List ℕ} {N L Z H p : ℕ} {T : ℝ}
    (S : CompleteChannelSupplier P N L Z H p T) :
    0 ≤ S.totalBudget := by
  exact add_nonneg (add_nonneg S.gram.budget_nonnegative
    S.indicator.budget_nonnegative) S.atomic.budget_nonnegative

/-- The only source-facing upper-bound composition theorem in this atlas:
all three suppliers are required, and the conclusion concerns the unchanged
`transportedDivisorMask`. -/
theorem transportedDivisorMask_le_of_completeChannelSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p)
    (S : CompleteChannelSupplier P N L Z H p T) :
    transportedDivisorMask P N L Z H p T ≤ S.totalBudget := by
  rw [transportedDivisorMask_eq_componentSums P N L Z H p T hpFresh hZp]
  exact add_le_add
    (add_le_add S.gram.controls S.indicator.controls)
    S.atomic.controls

inductive ResidualComponent where
  | completeSource
  | mixedGram
  | movedIndicator
  | atomicDenominator
  deriving DecidableEq, Repr

inductive ConnectionKind where
  | exactSourceDecomposition
  | shiftedConvolution
  | boundaryStrip
  | inverseOmegaAveraging
  | chowlaElliottAlignment
  | sieveParityBoundary
  | selbergDecomposition
  | entropicPFR
  deriving DecidableEq, Repr

inductive ConnectionStatus where
  | provedSourceBridge
  | conditionalInterface
  | methodAnalogy
  | negativeControl
  deriving DecidableEq, Repr

def connectionComponent : ConnectionKind → ResidualComponent
  | .exactSourceDecomposition => .completeSource
  | .shiftedConvolution => .mixedGram
  | .boundaryStrip => .movedIndicator
  | .inverseOmegaAveraging => .atomicDenominator
  | .chowlaElliottAlignment => .completeSource
  | .sieveParityBoundary => .completeSource
  | .selbergDecomposition => .completeSource
  | .entropicPFR => .completeSource

def connectionStatus : ConnectionKind → ConnectionStatus
  | .exactSourceDecomposition => .provedSourceBridge
  | .shiftedConvolution => .conditionalInterface
  | .boundaryStrip => .conditionalInterface
  | .inverseOmegaAveraging => .conditionalInterface
  | .chowlaElliottAlignment => .methodAnalogy
  | .sieveParityBoundary => .negativeControl
  | .selbergDecomposition => .methodAnalogy
  | .entropicPFR => .methodAnalogy

def ProofBearing : ConnectionStatus → Prop
  | .provedSourceBridge => True
  | _ => False

/-- Literature or method similarity never becomes a proof edge in this atlas. -/
theorem proofBearing_iff_exactSourceDecomposition (k : ConnectionKind) :
    ProofBearing (connectionStatus k) ↔
      k = .exactSourceDecomposition := by
  cases k <;> simp [ProofBearing, connectionStatus]

def connectionAtlas : List ConnectionKind :=
  [.exactSourceDecomposition, .shiftedConvolution, .boundaryStrip,
    .inverseOmegaAveraging, .chowlaElliottAlignment, .sieveParityBoundary,
    .selbergDecomposition, .entropicPFR]

theorem mem_connectionAtlas (k : ConnectionKind) :
    k ∈ connectionAtlas := by
  cases k <;> simp [connectionAtlas]

/-- Scalar hostile control: even exact telescoping of two weights does not
collapse channels when their indicators or readouts differ. -/
theorem scalar_telescoping_does_not_collapse_channels :
    ∃ δR δB IR IB GR GB : ℝ,
      δR + δB = -1 ∧
      IR * δR * GR + IB * δB * GB ≠ -IB * GB := by
  refine ⟨1, -2, 1, 0, 1, 0, by norm_num, ?_⟩
  norm_num

/-- Scalar hostile control: an atomic-sector bound alone cannot bound a complete
three-sector expression. -/
theorem atomic_control_alone_does_not_bound_total (B : ℝ) :
    ∃ gramPart indicatorPart atomicPart : ℝ,
      atomicPart = 0 ∧
      B < gramPart + indicatorPart + atomicPart := by
  refine ⟨B + 1, 0, 0, rfl, ?_⟩
  linarith

end GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannelConnections
