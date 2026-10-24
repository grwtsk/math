/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Path, Covering and Arborescence authorship and Apache-2.0 terms are
retained through the attributed PathUnfolding and EdgeTrace imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

/-!
# Exact prefixes of complete path-occurrence traces

Reachability between existing unfolding occurrences is exactly prefix order on
their complete chronological typed edge traces. The reverse direction actually
decodes a valid suffix and lifts its typed path, then uses full history identity
to recover the intended endpoint occurrence. No new reachability or path type,
vertex-only decoder, or uniqueness-of-arrows assumption is introduced.

The endpoint map onto root-reachable base vertices has an explicit noncomputable
chosen-path section. Its associated endomap preserves endpoints and is idempotent,
but identifies exactly the histories with equal endpoints. A section cannot
recover distinct histories that the endpoint map identifies; no ancestral or
arrow-preserving property of this set-theoretic choice is assumed.

These are occurrence relations, not an embedding of arbitrary base vertices or
a claim of proof implication, authorization, serialization or runtime refinement.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix

open Quiver PathUnfolding

variable {V : Type*} [Quiver V] {root : V}

/-- The complete chronological source/target/actual-arrow trace of an occurrence. -/
def trace (node : Occurrence root) : List (EdgeTrace.TotalEdge V) :=
  EdgeTrace.encode root node.history

theorem trace_injective : Function.Injective (trace (root := root)) := by
  intro first second hequal
  have hhistory := EdgeTrace.encode_injective root hequal
  cases first
  cases second
  cases hhistory
  rfl

theorem trace_comp (node : Occurrence root) {target : V} (suffix : Path node.endpoint target) :
    trace (ofPath (node.path.comp suffix)) = trace node ++ EdgeTrace.encodePath suffix :=
  EdgeTrace.encodePath_comp node.path suffix

/-- Full-history prefix order preserves and reflects actual unfolding reachability. -/
theorem reachable_iff_prefix (first second : Occurrence root) :
    Reachable first second ↔ trace first <+: trace second := by
  constructor
  · rintro ⟨lifted⟩
    refine ⟨EdgeTrace.encodePath ((projection root).mapPath lifted), ?_⟩
    exact (trace_comp first ((projection root).mapPath lifted)).symm.trans
      (congrArg trace (ofPath_comp_projection lifted))
  · rintro ⟨suffix, hsuffix⟩
    have hvalid : EdgeTrace.ValidFrom root (trace first ++ suffix) := by
      rw [hsuffix]
      exact EdgeTrace.validFrom_encodePath second.path
    have hvalidSuffix : EdgeTrace.ValidFrom first.endpoint suffix := by
      have h := (EdgeTrace.validFrom_append_iff root (trace first) suffix).mp hvalid
      simpa only [trace, EdgeTrace.encode, EdgeTrace.finish_encodePath] using h.2
    let decoded := EdgeTrace.decode first.endpoint suffix hvalidSuffix
    obtain ⟨lifted, hlift, _⟩ := unique_finite_lift first decoded
    have htail : EdgeTrace.encodePath ((projection root).mapPath lifted.2) = suffix := by
      have hequal := congrArg (EdgeTrace.encode first.endpoint) hlift
      change EdgeTrace.encodePath ((projection root).mapPath lifted.2) =
        EdgeTrace.encode first.endpoint decoded at hequal
      exact hequal.trans (EdgeTrace.encode_decode first.endpoint suffix hvalidSuffix)
    have htrace : trace lifted.1 = trace second := by
      calc
        trace lifted.1 =
            trace (ofPath (first.path.comp ((projection root).mapPath lifted.2))) :=
          congrArg trace (ofPath_comp_projection lifted.2).symm
        _ = trace first ++ EdgeTrace.encodePath ((projection root).mapPath lifted.2) :=
          trace_comp first ((projection root).mapPath lifted.2)
        _ = trace first ++ suffix := by rw [htail]
        _ = trace second := hsuffix
    have htarget : lifted.1 = second := trace_injective htrace
    exact ⟨htarget ▸ lifted.2⟩

/-- Base vertices that actually admit a path from the chosen root. -/
abbrev ReachableVertex (root : V) := {vertex : V // Reachable root vertex}

/-- The endpoint together with the actual occurrence's reachability witness. -/
def reachableEndpoint (node : Occurrence root) : ReachableVertex root :=
  ⟨node.endpoint, node.path.reachable⟩

/-- Choose an actual existing rooted path from the subtype's reachability witness. -/
noncomputable def selectedOccurrence (vertex : ReachableVertex root) : Occurrence root :=
  ofPath (Classical.choice vertex.2)

theorem endpoint_selectedOccurrence (vertex : ReachableVertex root) :
    reachableEndpoint (selectedOccurrence vertex) = vertex := Subtype.ext rfl

/-- The identity is endpoint after selection, not selection after endpoint on all histories. -/
theorem endpoint_right_inverse :
    Function.RightInverse (selectedOccurrence (root := root)) reachableEndpoint :=
  endpoint_selectedOccurrence

theorem reachableEndpoint_surjective :
    Function.Surjective (reachableEndpoint (root := root)) := endpoint_right_inverse.surjective

theorem selectedOccurrence_injective :
    Function.Injective (selectedOccurrence (root := root)) := endpoint_right_inverse.injective

/-- Replace an occurrence by the selected rooted history to its own endpoint. -/
noncomputable def retractOccurrence (node : Occurrence root) : Occurrence root :=
  selectedOccurrence (reachableEndpoint node)

theorem retractOccurrence_endpoint (node : Occurrence root) :
    (retractOccurrence node).endpoint = node.endpoint := rfl

theorem retractOccurrence_idempotent (node : Occurrence root) :
    retractOccurrence (retractOccurrence node) = retractOccurrence node := by
  simp only [retractOccurrence, endpoint_selectedOccurrence]

/-- This endpoint-based retraction loses precisely the distinction between histories to one vertex. -/
theorem retractOccurrence_eq_iff (first second : Occurrence root) :
    retractOccurrence first = retractOccurrence second ↔ first.endpoint = second.endpoint := by
  constructor
  · intro hequal
    have hendpoint := congrArg (fun node : Occurrence root => node.endpoint) hequal
    exact hendpoint
  · intro hequal
    exact congrArg selectedOccurrence (Subtype.ext hequal)

/-- No endpoint decoder can recover both distinct histories to the same vertex. -/
theorem no_left_inverse_of_distinct_histories {first second : Occurrence root}
    (hdistinct : first ≠ second) (hendpoint : first.endpoint = second.endpoint) :
    ¬ ∃ select : ReachableVertex root → Occurrence root,
      Function.LeftInverse select reachableEndpoint := by
  rintro ⟨_, hleft⟩
  exact hdistinct (hleft.injective (Subtype.ext hendpoint))

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix
