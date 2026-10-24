# unused_edge_meets_of_support_cut_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8e95ed3-164c-6950-d888-09d559ee74b6",
  "kind": "theorem",
  "lexical_name": "unused_edge_meets_of_support_cut_connected",
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
  "slug": "unused-edge-meets-of-support-cut-connected--31f853c924089bfbdf518398",
  "source": {
    "blob": "8cb989bc0033ef3f2fcbfb5066b77cef070de133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 77,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f853c924089bfbdf51839864804241ec1ae1916a1e241eb42c129f9a36e881",
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

Occurrence: `result:e8e95ed3-164c-6950-d888-09d559ee74b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unused_edge_meets_of_support_cut_connected
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hconn : CountedEdgeSupportCutConnected m c)
    (used : Finset (CountedBinaryEdge m c))
    (S : Finset (Fin m → Bool))
    (hused : ∀ e ∈ used,
      countedEdgeSource m c e ∈ S ∧ countedEdgeTarget m c e ∈ S)
    (hinside : ∃ e : CountedBinaryEdge m c, CountedEdgeMeets m c S e)
    (houtside : ∃ e : CountedBinaryEdge m c,
      countedEdgeSource m c e ∉ S ∨ countedEdgeTarget m c e ∉ S) :
    ∃ e ∈ (Finset.univ \ used :
        Finset (CountedBinaryEdge m c)), CountedEdgeMeets m c S e := by
  classical
  obtain ⟨e, hc⟩ := hconn S hinside houtside
  have hnot : e ∉ used := by
    intro he
    obtain ⟨hs, ht⟩ := hused e he
    rcases hc with ⟨_, hn⟩ | ⟨hn, _⟩
    · exact hn ht
    · exact hn hs
  refine ⟨e, Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hnot⟩, ?_⟩
  rcases hc with ⟨hs, _⟩ | ⟨_, ht⟩
  · exact Or.inl hs
  · exact Or.inr ht


/-- A connected support cut and residual degree balance supply an
actual unused outgoing counted edge at a vertex in the circuit's
vertex set. This is the precise local splice entry point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb989bc0033ef3f2fcbfb5066b77cef070de133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
