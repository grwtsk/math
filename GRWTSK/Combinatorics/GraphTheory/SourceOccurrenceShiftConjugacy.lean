/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source-level formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SourceOccurrenceInfiniteTraceBridge
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficShiftPeriodicPointBridge

/-!
# Shift conjugacy on exact original source-occurrence streams

An original owner/ordinal key is not its printed payload and is not
identified merely because its endpoints match another source occurrence.
The existing ExactSourceRefinement supplies the explicit equivalence of
raw records and occurrence labels, plus source/target endpoint preservation.

Applying the original encoding pointwise defines an equivalence of the
actual Nat-indexed infinite streams. This equivalence commutes with
the ORIGINAL one-sided shift and preserves all its period-n predicates.
It also preserves the ORIGINAL RunsOnGraph condition for every trace,
because the very same state sequence satisfies the original edge
relation, in both directions.

Specializing to the original FiniteSourceOccurrenceTable.ObservedKey
connects exact (owner, ordinal) source keys and distinct Fin n occurrence
slots. This is a conditional source-level theorem: no Noe source index or
Python extractor is proved to instantiate the Lean refinement here.

A periodic label stream need not have a same-period graph-state cycle,
a unique graph lift, or a periodic factor-language identity. The original
periodic surplus/missing-lift ledger and topological realizability
conditions remain separate. No analytic zeta/RH implication is inferred.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceShiftConjugacy

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceSoficBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceKeyRefinement
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics

universe u v w

variable {State : Type u} {Occurrence : Type v} {Raw : Type w}

/-- A genuine checked source-label equivalence induces a bijection
on the original, unchanged Nat-indexed infinite traces. -/
noncomputable def rawOccurrenceTraceEquiv
    (bridge : ExactSourceRefinement Raw Occurrence State) :
    (ℕ → Raw) ≃ (ℕ → Occurrence) where
  toFun := fun trace k => bridge.encoding (trace k)
  invFun := fun trace k => bridge.encoding.symm (trace k)
  left_inv := by
    intro trace
    funext k
    exact bridge.encoding.symm_apply_apply (trace k)
  right_inv := by
    intro trace
    funext k
    exact bridge.encoding.apply_symm_apply (trace k)

/-- The exact source-key encoding does not change the chronology of the
original one-sided shift, even when printed payloads coincide. -/
theorem rawOccurrenceTraceEquiv_shift
    (bridge : ExactSourceRefinement Raw Occurrence State)
    (trace : ℕ → Raw) :
    rawOccurrenceTraceEquiv bridge
      (SoficShiftPeriodicPointBridge.oneSidedShift trace) =
    SoficShiftPeriodicPointBridge.oneSidedShift
      (rawOccurrenceTraceEquiv bridge trace) := by
  funext k
  rfl

/-- The SAME actual infinite graph-state run witnesses source-key and
occurrence-label admission in both directions. The fixed mathematical
edge relation is preserved exactly, not a source-text heuristic. -/
theorem runsOnRaw_iff_runsOnOccurrence
    (bridge : ExactSourceRefinement Raw Occurrence State)
    (trace : ℕ → Raw) :
    ExactSoficLanguageCover.RunsOnGraph (rawGraph bridge) trace ↔
    ExactSoficLanguageCover.RunsOnGraph
      (occurrenceGraph bridge.occurrenceSource bridge.occurrenceTarget)
      (rawOccurrenceTraceEquiv bridge trace) := by
  constructor
  · rintro ⟨states, hedge⟩
    refine ⟨states, ?_⟩
    intro k
    change (occurrenceGraph bridge.occurrenceSource bridge.occurrenceTarget).edge
      (states k) (bridge.encoding (trace k)) (states (k + 1))
    exact (encoded_edge_iff bridge (trace k)
      (states k) (states (k + 1))).mpr (hedge k)
  · rintro ⟨states, hedge⟩
    refine ⟨states, ?_⟩
    intro k
    have h := hedge k
    change (occurrenceGraph bridge.occurrenceSource bridge.occurrenceTarget).edge
      (states k) (bridge.encoding (trace k)) (states (k + 1)) at h
    exact (encoded_edge_iff bridge (trace k)
      (states k) (states (k + 1))).mp h

/-- The original one-sided shift preserves admission to the ORIGINAL
graph. Its state witness simply drops the first original state.
No periodic state cycle is inferred. -/
theorem runsOnGraph_shift
    (G : ExactSoficLanguageCover.LabeledGraph State Raw)
    (trace : ℕ → Raw)
    (hrun : ExactSoficLanguageCover.RunsOnGraph G trace) :
    ExactSoficLanguageCover.RunsOnGraph G
      (SoficShiftPeriodicPointBridge.oneSidedShift trace) := by
  rcases hrun with ⟨states, hedge⟩
  refine ⟨fun k => states (k + 1), ?_⟩
  intro k
  simpa only [SoficShiftPeriodicPointBridge.oneSidedShift,
    Nat.add_assoc] using hedge (k + 1)

/-- All original one-sided shift period predicates are preserved and
reflected by exact source-label encoding, including nonminimal periods.
This is NOT the assertion that graph-state cycles have that period. -/
theorem rawOccurrenceShift_periodic_iff
    (bridge : ExactSourceRefinement Raw Occurrence State)
    (trace : ℕ → Raw) (period : ℕ) :
    Function.IsPeriodicPt
      (SoficShiftPeriodicPointBridge.oneSidedShift (Alphabet := Raw))
      period trace ↔
    Function.IsPeriodicPt
      (SoficShiftPeriodicPointBridge.oneSidedShift (Alphabet := Occurrence))
      period (rawOccurrenceTraceEquiv bridge trace) := by
  constructor
  · intro h
    apply (SoficShiftPeriodicPointBridge.oneSidedShift_isPeriodicPt_iff
      (rawOccurrenceTraceEquiv bridge trace) period).mpr
    intro k
    change bridge.encoding (trace (k + period)) =
      bridge.encoding (trace k)
    exact congrArg bridge.encoding
      (((SoficShiftPeriodicPointBridge.oneSidedShift_isPeriodicPt_iff
        trace period).mp h) k)
  · intro h
    apply (SoficShiftPeriodicPointBridge.oneSidedShift_isPeriodicPt_iff
      trace period).mpr
    intro k
    apply bridge.encoding.injective
    have hk := ((SoficShiftPeriodicPointBridge.oneSidedShift_isPeriodicPt_iff
      (rawOccurrenceTraceEquiv bridge trace) period).mp h) k
    change bridge.encoding (trace (k + period)) =
      bridge.encoding (trace k) at hk
    exact hk

/-- The exact original key subtype, and not a quotient of printed source
labels, gives a genuine infinite stream equivalence with occurrence slots. -/
noncomputable def observedKeyTraceEquiv
    {Owner : Type v} {Payload : Type w} {n : Nat}
    (table : FiniteSourceOccurrenceTable State Owner Payload n) :
    (ℕ → table.ObservedKey) ≃ (ℕ → Fin n) :=
  rawOccurrenceTraceEquiv table.observedKeyRefinement

/-- All actual admitted original owner/ordinal key streams correspond to
and only to their incidence-preserving original slot-label streams. -/
theorem observedKey_runsOnGraph_iff
    {Owner : Type v} {Payload : Type w} {n : Nat}
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → table.ObservedKey) :
    ExactSoficLanguageCover.RunsOnGraph
      (rawGraph table.observedKeyRefinement) trace ↔
    ExactSoficLanguageCover.RunsOnGraph
      (occurrenceGraph table.source table.target)
      (observedKeyTraceEquiv table trace) :=
  runsOnRaw_iff_runsOnOccurrence table.observedKeyRefinement trace

/-- The original owner/ordinal source-key stream and its full
occurrence-slot stream have exactly the same one-sided shift periods.
No periodic factor-word cardinality equality is asserted. -/
theorem observedKey_shiftPeriodic_iff
    {Owner : Type v} {Payload : Type w} {n : Nat}
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → table.ObservedKey) (period : ℕ) :
    Function.IsPeriodicPt
      (SoficShiftPeriodicPointBridge.oneSidedShift
        (Alphabet := table.ObservedKey)) period trace ↔
    Function.IsPeriodicPt
      (SoficShiftPeriodicPointBridge.oneSidedShift
        (Alphabet := Fin n)) period
      (observedKeyTraceEquiv table trace) :=
  rawOccurrenceShift_periodic_iff table.observedKeyRefinement trace period

/-- Restrict the original full stream equivalence to ACTUAL graph-admitted
periodic streams of one fixed period. This counts original source-occurrence
label streams with their individual keys, NOT distinct factor-language
periodic words or graph based cycles. The missing/surplus lift problem
remains independent of this bijection. -/
noncomputable def rawAdmittedPeriodicEquiv
    (bridge : ExactSourceRefinement Raw Occurrence State) (period : ℕ) :
    {trace : ℕ → Raw //
      ExactSoficLanguageCover.RunsOnGraph (rawGraph bridge) trace ∧
      Function.IsPeriodicPt
        (SoficShiftPeriodicPointBridge.oneSidedShift (Alphabet := Raw))
        period trace} ≃
    {trace : ℕ → Occurrence //
      ExactSoficLanguageCover.RunsOnGraph
        (occurrenceGraph bridge.occurrenceSource bridge.occurrenceTarget)
        trace ∧
      Function.IsPeriodicPt
        (SoficShiftPeriodicPointBridge.oneSidedShift
          (Alphabet := Occurrence)) period trace} where
  toFun := fun x => ⟨rawOccurrenceTraceEquiv bridge x.val,
    ⟨(runsOnRaw_iff_runsOnOccurrence bridge x.val).mp x.property.1,
      (rawOccurrenceShift_periodic_iff bridge x.val period).mp x.property.2⟩⟩
  invFun := fun y => by
    let trace := (rawOccurrenceTraceEquiv bridge).symm y.val
    have hround : rawOccurrenceTraceEquiv bridge trace = y.val :=
      (rawOccurrenceTraceEquiv bridge).apply_symm_apply y.val
    refine ⟨trace, ?_⟩
    constructor
    · apply (runsOnRaw_iff_runsOnOccurrence bridge trace).mpr
      simpa only [hround] using y.property.1
    · apply (rawOccurrenceShift_periodic_iff bridge trace period).mpr
      simpa only [hround] using y.property.2
  left_inv := by
    intro x
    apply Subtype.ext
    exact (rawOccurrenceTraceEquiv bridge).symm_apply_apply x.val
  right_inv := by
    intro y
    apply Subtype.ext
    exact (rawOccurrenceTraceEquiv bridge).apply_symm_apply y.val

/-- The ACTUAL observed owner+ordinal key subtype specializes that same
graph-admitted period-n bijection to the unchanged original finite slots. -/
noncomputable def observedKeyAdmittedPeriodicEquiv
    {Owner : Type v} {Payload : Type w} {n : Nat}
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (period : ℕ) :
    {trace : ℕ → table.ObservedKey //
      ExactSoficLanguageCover.RunsOnGraph
        (rawGraph table.observedKeyRefinement) trace ∧
      Function.IsPeriodicPt
        (SoficShiftPeriodicPointBridge.oneSidedShift
          (Alphabet := table.ObservedKey)) period trace} ≃
    {trace : ℕ → Fin n //
      ExactSoficLanguageCover.RunsOnGraph
        (occurrenceGraph table.source table.target) trace ∧
      Function.IsPeriodicPt
        (SoficShiftPeriodicPointBridge.oneSidedShift
          (Alphabet := Fin n)) period trace} :=
  rawAdmittedPeriodicEquiv table.observedKeyRefinement period

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceShiftConjugacy
