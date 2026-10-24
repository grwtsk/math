/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix

set_option autoImplicit false

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open PathUnfolding OccurrencePrefix

section Generic

variable {V : Type*} [Quiver V] {root : V}

example (first second : Occurrence root) :
    Reachable first second ↔ trace first <+: trace second := reachable_iff_prefix first second

example (node : Occurrence root) : trace node <+: trace node :=
  (reachable_iff_prefix node node).mp (Reachable.refl node)

example (vertex : ReachableVertex root) :
    reachableEndpoint (selectedOccurrence vertex) = vertex := endpoint_selectedOccurrence vertex

example (node : Occurrence root) :
    retractOccurrence (retractOccurrence node) = retractOccurrence node :=
  retractOccurrence_idempotent node

end Generic

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix.Checks.Positive

noncomputable def emptyOccurrence : Occurrence (SingleObj.star Bool) := origin _

noncomputable def falseOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop false)

noncomputable def trueOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop true)

noncomputable def twiceOccurrence : Occurrence (SingleObj.star Bool) :=
  extend falseOccurrence (SingleObj.toHom true)

example : trace emptyOccurrence = [] := rfl

example : trace falseOccurrence =
    [⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩] := rfl

example : trace twiceOccurrence =
    [⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩,
      ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom true⟩] := rfl

theorem actual_chain : Reachable emptyOccurrence falseOccurrence ∧
    Reachable falseOccurrence twiceOccurrence :=
  ⟨⟨liftHistory (PathOccurrences.parallelLoop false)⟩,
    ⟨(step falseOccurrence (SingleObj.toHom true)).toPath⟩⟩

example : trace emptyOccurrence <+: trace falseOccurrence ∧
    trace falseOccurrence <+: trace twiceOccurrence :=
  ⟨(reachable_iff_prefix _ _).mp actual_chain.1, (reachable_iff_prefix _ _).mp actual_chain.2⟩

example : Reachable emptyOccurrence twiceOccurrence := actual_chain.1.trans actual_chain.2

theorem parallel_occurrences_distinct : falseOccurrence ≠ trueOccurrence := by
  intro hequal
  have hhistory := congrArg Occurrence.history hequal
  exact PathOccurrences.parallel_loops_ne (eq_of_heq (Sigma.mk.inj hhistory).2)

theorem parallel_traces_incomparable :
    ¬ trace falseOccurrence <+: trace trueOccurrence ∧
    ¬ trace trueOccurrence <+: trace falseOccurrence := by
  constructor
  · intro hprefix
    exact parallel_occurrences_distinct (trace_injective (hprefix.eq_of_length rfl))
  · intro hprefix
    exact parallel_occurrences_distinct (trace_injective (hprefix.eq_of_length rfl)).symm

theorem parallel_occurrences_incomparable :
    ¬ Reachable falseOccurrence trueOccurrence ∧ ¬ Reachable trueOccurrence falseOccurrence :=
  ⟨fun h => parallel_traces_incomparable.1 ((reachable_iff_prefix _ _).mp h),
    fun h => parallel_traces_incomparable.2 ((reachable_iff_prefix _ _).mp h)⟩

example : falseOccurrence.endpoint = trueOccurrence.endpoint ∧
    falseOccurrence.path.vertices = trueOccurrence.path.vertices := ⟨rfl, rfl⟩

example : twiceOccurrence.path.vertices =
    [SingleObj.star Bool, SingleObj.star Bool, SingleObj.star Bool] := rfl

theorem base_reachable_to_empty : Reachable falseOccurrence.endpoint emptyOccurrence.endpoint :=
  Reachable.refl _

theorem occurrence_not_reachable_to_empty : ¬ Reachable falseOccurrence emptyOccurrence := by
  intro hreach
  have hprefix := (reachable_iff_prefix _ _).mp hreach
  change trace falseOccurrence <+: [] at hprefix
  have hnil := List.prefix_nil.mp hprefix
  change ([⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩] :
    List (EdgeTrace.TotalEdge (SingleObj Bool))) = [] at hnil
  cases hnil

theorem endpoint_summary_does_not_reflect :
    falseOccurrence.endpoint = emptyOccurrence.endpoint ∧
    Reachable falseOccurrence.endpoint emptyOccurrence.endpoint ∧
    ¬ Reachable falseOccurrence emptyOccurrence :=
  ⟨rfl, base_reachable_to_empty, occurrence_not_reachable_to_empty⟩

theorem retraction_does_not_reflect_ancestry :
    Reachable (retractOccurrence falseOccurrence) (retractOccurrence emptyOccurrence) ∧
    ¬ Reachable falseOccurrence emptyOccurrence := by
  constructor
  · rw [(retractOccurrence_eq_iff falseOccurrence emptyOccurrence).mpr rfl]
  · exact occurrence_not_reachable_to_empty

theorem parallel_retraction_loses_history :
    falseOccurrence ≠ trueOccurrence ∧
    retractOccurrence falseOccurrence = retractOccurrence trueOccurrence :=
  ⟨parallel_occurrences_distinct, (retractOccurrence_eq_iff _ _).mpr rfl⟩

/- A genuine one-edge Unit loop already prevents any endpoint decoder recovering all histories. -/
noncomputable def unitLoopOccurrence : Occurrence (SingleObj.star Unit) :=
  ofPath (SingleObj.toHom ()).toPath

theorem unit_histories_distinct : origin (SingleObj.star Unit) ≠ unitLoopOccurrence := by
  intro hequal
  have hlength := congrArg (fun node : Occurrence (SingleObj.star Unit) => node.path.length) hequal
  change 0 = 1 at hlength
  exact Nat.noConfusion hlength

theorem unit_retraction_loses_history :
    retractOccurrence (origin (SingleObj.star Unit)) = retractOccurrence unitLoopOccurrence :=
  (retractOccurrence_eq_iff _ _).mpr rfl

theorem unit_no_endpoint_left_inverse :
    ¬ ∃ select : ReachableVertex (SingleObj.star Unit) → Occurrence (SingleObj.star Unit),
      Function.LeftInverse select reachableEndpoint :=
  no_left_inverse_of_distinct_histories unit_histories_distinct rfl

example : reachableEndpoint (selectedOccurrence
    (⟨SingleObj.star Unit, Reachable.refl _⟩ : ReachableVertex (SingleObj.star Unit))) =
      ⟨SingleObj.star Unit, Reachable.refl _⟩ := endpoint_selectedOccurrence _

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix.Checks.Positive
