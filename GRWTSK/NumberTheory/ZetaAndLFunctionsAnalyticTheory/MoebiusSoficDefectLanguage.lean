/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.DefectEnrichedSoficLanguage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusBitGramReturn
import Mathlib.Tactic

/-!
# The ACTUAL signed Möbius Gram as a source-anchored sofic observation

A state is an observation chart and the original index-addressed physical-bit
stream. Certified edges are genuine chart shifts using `transferStream`.
Candidate/admissible edges here are intentionally larger (all pairs); there is
NO claim that arbitrary discovery edges preserve the arithmetic source.
The original pickupCross and the complete readout defect are the imported
arithmetic functions, not a new arithmetic surrogate or RH estimate.

For every certified shift word, the readout is unchanged and the signed
representation defect is retained. Ideal original-index two-bit encoding has
zero initial defect. No signed Möbius cancellation bound is asserted.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficDefectLanguage

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.RiemannHypothesis.CCC

/-- The numeric chart and complete original-index physical stream. -/
abbrev ChartedStream := ℝ × PhysicalStream

/-- Actual geometric chart-transfer edge; this is not a mere similarity edge. -/
def actualShift (source : ChartedStream) (label : ℝ)
    (target : ChartedStream) : Prop :=
  target.1 = source.1 + label ∧
    target.2 = transferStream label source.2

/-- The lower language is exactly certified chart shifts; the other two
relations are only broad navigation classes with no semantic claim. -/
def shiftSandwich : LabeledSandwich ChartedStream ℝ where
  lower := actualShift
  middle := fun _ _ _ => True
  upper := fun _ _ _ => True
  lower_le_middle := by
    intro source target label edge
    trivial
  middle_le_upper := by
    intro source target label edge
    trivial

/-- Source-exact edge return follows from the repository's real observer
shift, not an invented zero-defect assumption. -/
theorem actualShift_preserves_packet
    (p : Parameters) (T : ℝ)
    {source target : ChartedStream} {label : ℝ}
    (edge : actualShift source label target) :
    observedPacket p source.1 T source.2 =
      observedPacket p target.1 T target.2 := by
  rcases edge with ⟨hchart, hstream⟩
  rw [hchart, hstream]
  exact (observedPacket_transfer p source.1 label T source.2).symm

/-- The same original signed defect survives all certified chart transfers. -/
theorem actualShift_preserves_signed_defect
    (p : Parameters) (T : ℝ)
    {source target : ChartedStream} {label : ℝ}
    (edge : actualShift source label target) :
    signedReadoutDefect p source.1 T source.2 =
      signedReadoutDefect p target.1 T target.2 := by
  rcases edge with ⟨hchart, hstream⟩
  rw [hchart, hstream]
  exact (signedReadoutDefect_transfer p source.1 label T source.2).symm

/-- The source-specific certified semantics charges *zero* ONLY because the
old transfer theorem establishes exact invariance of the actual readout. -/
def mobiusShiftSystem (p : Parameters) (T : ℝ) :
    DefectSoficSystem ChartedStream ℝ where
  sandwich := shiftSandwich
  readout := fun v => observedPacket p v.1 T v.2
  edgeDefect := fun _ _ _ => 0
  edgeAllowance := fun _ _ _ => 0
  edgeReturn := by
    intro source target label h
    change observedPacket p source.1 T source.2 =
      observedPacket p target.1 T target.2 + 0
    simpa only [add_zero] using actualShift_preserves_packet p T h
  edgeAllowance_nonneg := by
    intro source target label h
    exact le_refl 0
  edgeBound := by
    intro source target label h
    simp

/-- The original `pickupCross` is the immutable source; the initial defect
is exactly the complete source-minus-observed ordered Möbius Gram. -/
def mobiusSource (p : Parameters) (T : ℝ) :
    SourceAnchored PhysicalStream ChartedStream ℝ where
  system := mobiusShiftSystem p T
  original := fun _ => pickupCross T
  encode := fun stream => (0, stream)
  initialDefect := fun stream => signedReadoutDefect p 0 T stream
  initialAllowance := fun stream => |signedReadoutDefect p 0 T stream|
  initialReturn := by
    intro stream
    exact pickupCross_eq_observed_add_defect p 0 T stream
  initialAllowance_nonneg := by
    intro stream
    exact abs_nonneg _
  initialBound := by
    intro stream
    exact le_refl _

/-- The full signed original packet is recovered after ANY certified shift
word, even from a missing/mislabeled stream, with its unpaid defect visible. -/
theorem pickupCross_source_return
    (p : Parameters) (T : ℝ) (stream : PhysicalStream)
    {target : ChartedStream} {word : List ℝ} {defect allowance : ℝ}
    (trace : CertifiedTrace (mobiusShiftSystem p T) (0, stream)
      word target defect allowance) :
    pickupCross T = observedPacket p target.1 T target.2 +
      (signedReadoutDefect p 0 T stream + defect) ∧
    |pickupCross T - observedPacket p target.1 T target.2| ≤
      |signedReadoutDefect p 0 T stream| + allowance := by
  exact (mobiusSource p T).path_return stream trace

/-- All actually certified shifts have zero *transport* allowance. This does
not zero the initial defect of a damaged or absent physical recording. -/
theorem actual_trace_allowance_zero
    (p : Parameters) (T : ℝ)
    {source target : ChartedStream} {word : List ℝ} {defect allowance : ℝ}
    (trace : CertifiedTrace (mobiusShiftSystem p T)
      source word target defect allowance) : allowance = 0 := by
  apply CertifiedTrace.zeroAllowance (M := mobiusShiftSystem p T)
  · intro s t label edge
    rfl
  · exact trace

/-- The canonical original-index Möbius bit stream has zero initial cost. -/
theorem encoded_initial_allowance_zero (p : Parameters) (T : ℝ) :
    (mobiusSource p T).initialAllowance (encodedStream p) = 0 := by
  change |signedReadoutDefect p 0 T (encodedStream p)| = 0
  rw [signedReadoutDefect_encoded_zero, abs_zero]

/-- Concrete consumer of the generic category-like composition theorem:
all finite certified chart words return the *actual* signed Möbius source,
without any unproved arithmetic estimate or missing signed pair. -/
theorem encoded_certified_word_returns_original
    (p : Parameters) (T : ℝ)
    {target : ChartedStream} {word : List ℝ} {defect allowance : ℝ}
    (trace : CertifiedTrace (mobiusShiftSystem p T)
      (0, encodedStream p) word target defect allowance) :
    observedPacket p target.1 T target.2 = pickupCross T := by
  have h := (mobiusSource p T).exact_of_zero_budget
    (encodedStream p) trace
    (encoded_initial_allowance_zero p T)
    (actual_trace_allowance_zero p T trace)
  exact h.symm

end GRWTSK.NumberTheory.Moebius.MoebiusSoficDefectLanguage
