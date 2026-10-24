# FreshCountedTrail.complete_or_strict_connected_progress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3c0bebe-a6fd-a282-083c-5a77a8884ae1",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.complete_or_strict_connected_progress",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "freshcountedtrail-complete-or-strict-connected-progress--5994f67648be4e0d4741daac",
  "source": {
    "blob": "63225b5daf030a150a29c5f427753155f9274d44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 26,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5994f67648be4e0d4741daac2f866215ac171c824c56e695be856721f285129e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3c0bebe-a6fd-a282-083c-5a77a8884ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.complete_or_strict_connected_progress
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (hconn : CountedEdgeSupportCutConnected m c)
    (hnonempty : T.used.Nonempty) :
    T.used = Finset.univ ∨
      ∃ R : FreshCountedTrail m c a b,
        T.used ⊆ R.used ∧
          (Finset.univ \ R.used).card <
            (Finset.univ \ T.used).card := by
  classical
  rcases T.complete_or_unused_edge with hcomplete | ⟨e, he⟩
  · exact Or.inl hcomplete
  · right
    let S := T.walk.vertexSupport
    have hused : ∀ f ∈ T.used,
        countedEdgeSource m c f ∈ S ∧
          countedEdgeTarget m c f ∈ S :=
      T.used_internal_vertexSupport
    have hinside : ∃ f : CountedBinaryEdge m c,
        CountedEdgeMeets m c S f := by
      obtain ⟨f, hf⟩ := T.exists_edge_meeting_vertexSupport hnonempty
      exact ⟨f, hf⟩
    obtain ⟨v, hvS, f, hf, hsource⟩ :=
      T.unused_outgoing_of_nonempty_residual
        hclosed hbalance hconn S hused hinside e he
    have hvisit : T.walk.Visits v :=
      T.walk.visits_of_mem_vertexSupport hvS
    exact T.exists_strict_progress_of_visited_unused_edge
      hclosed hbalance hvisit f hf hsource


/-- Finite Hierholzer termination: a nonempty closed fresh trail
extends to a complete counted closed trail in a balanced,
weakly edge-support-connected multigraph. No edge labels or
parallel-edge instances are identified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerConnectedProgress.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63225b5daf030a150a29c5f427753155f9274d44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
