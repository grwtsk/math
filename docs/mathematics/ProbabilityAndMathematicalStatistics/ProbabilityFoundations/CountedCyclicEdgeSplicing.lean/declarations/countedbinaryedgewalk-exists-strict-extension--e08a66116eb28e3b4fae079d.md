# countedBinaryEdgeWalk_exists_strict_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6210641-49b3-3fb3-a576-00ef8abf7824",
  "kind": "theorem",
  "lexical_name": "countedBinaryEdgeWalk_exists_strict_extension",
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
  "slug": "countedbinaryedgewalk-exists-strict-extension--e08a66116eb28e3b4fae079d",
  "source": {
    "blob": "d3fd634af9b0017d2ed13be0a37f6b6cbb713e83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 32,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEdgeSplicing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08a66116eb28e3b4fae079dcb6dd1be4c67fc04295ccf127188aab2d528fd7b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEdgeSplicing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6210641-49b3-3fb3-a576-00ef8abf7824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countedBinaryEdgeWalk_exists_strict_extension
    (m : ℕ) (c : BinaryEdgeWord m → ℕ) (a b : Fin m → Bool)
    (p : CountedBinaryEdgeWalk m c a b) (loop : CountedBinaryEdgeWalk m c b b)
    (q : CountedBinaryEdgeWalk m c b a)
    (hold : (p.append q).edges.Nodup) (hloop : loop.edges.Nodup)
    (hdisjoint : List.Disjoint (p.append q).edges loop.edges)
    (hne : loop.edges ≠ []) :
    ∃ r : CountedBinaryEdgeWalk m c a a,
      r.edges.Nodup ∧
      (r.edges : Multiset (CountedBinaryEdge m c)) =
        ((p.append q).edges : Multiset (CountedBinaryEdge m c)) +
          (loop.edges : Multiset (CountedBinaryEdge m c)) ∧
      (p.append q).edges.length < r.edges.length ∧
      ∀ w : BinaryEdgeWord m,
        (r.edges.map (countedEdgeLabel m c)).count w =
          ((p.append q).edges.map (countedEdgeLabel m c)).count w +
            (loop.edges.map (countedEdgeLabel m c)).count w := by
  refine ⟨p.splice loop q, Walk.splice_nodup p loop q hold hloop hdisjoint,
    Walk.splice_edges_multiset p loop q, ?_, ?_⟩
  · rw [Walk.splice_length]
    have hpos : 0 < loop.edges.length := List.length_pos_iff_ne_nil.mpr hne
    omega
  · intro w
    exact Walk.splice_label_count (countedEdgeLabel m c) w p loop q

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEdgeSplicing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEdgeSplicing.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3fd634af9b0017d2ed13be0a37f6b6cbb713e83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
