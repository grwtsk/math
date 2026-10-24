# FreshCountedTrail.unused_outgoing_of_meeting_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c27378c-59e6-3109-66a1-af56dcb09a4e",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.unused_outgoing_of_meeting_edge",
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
  "slug": "freshcountedtrail-unused-outgoing-of-meeting-edge--6db7461defb4939becc466b8",
  "source": {
    "blob": "8cb989bc0033ef3f2fcbfb5066b77cef070de133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6db7461defb4939becc466b8cba7bf65daa4fc56e0c8c428e3d0d47a844eecc2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c27378c-59e6-3109-66a1-af56dcb09a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.unused_outgoing_of_meeting_edge
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (S : Finset (Fin m → Bool))
    (e : CountedBinaryEdge m c)
    (he : e ∈ Finset.univ \ T.used)
    (hmeets : CountedEdgeMeets m c S e) :
    ∃ v ∈ S, ∃ f : CountedBinaryEdge m c,
      f ∈ Finset.univ \ T.used ∧ countedEdgeSource m c f = v := by
  rcases hmeets with hs | ht
  · exact ⟨countedEdgeSource m c e, hs, e, he, rfl⟩
  · obtain ⟨f, hf, hsource⟩ :=
      T.unused_out_edge_of_incident hclosed hbalance
        (countedEdgeTarget m c e) e he (Or.inr rfl)
    exact ⟨countedEdgeTarget m c e, ht, f, hf, hsource⟩

/-- Under weak edge-support cut connectivity, a nonempty internal
used circuit and ANY remaining unused edge yield an unused outgoing
edge at a vertex of S. The two cases distinguish whether the
remaining edge meets S or has an endpoint outside S. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb989bc0033ef3f2fcbfb5066b77cef070de133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
