# fixtureContract_sortedCanonicalEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:372e8dbd-c24c-9b45-4b26-163ccff6328b",
  "kind": "theorem",
  "lexical_name": "fixtureContract_sortedCanonicalEdges",
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
  "slug": "fixturecontract-sortedcanonicaledges--0f91b445ea4816b021fe3df8",
  "source": {
    "blob": "88bb497d35940b1cae878786a1d4314d1fec68fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant8c5225cf392f113e6ca9dd10f3ee48c37deb9ef53de6103957049d47f1aca1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f91b445ea4816b021fe3df8c79ab0ceb329be01b2628bdf8abba0525e5d06cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant8c5225cf392f113e6ca9dd10f3ee48c37deb9ef53de6103957049d47f1aca1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:372e8dbd-c24c-9b45-4b26-163ccff6328b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixtureContract_sortedCanonicalEdges :
    fixtureContract.sortedCanonicalEdges = fixtureCanonicalEdges := by
  unfold RoutingContract.sortedCanonicalEdges
  rw [show fixtureContract.edges = fixtureCanonicalEdges.toFinset by
    simp [fixtureContract, fixtureEdges, fixtureEdgeFinsets_equal]]
  apply (List.toFinset_sort fixtureContract.canonicalEdgeLE
    (by
      simp [fixtureCanonicalEdges, fixtureEdge] :
        fixtureCanonicalEdges.Nodup)).2
  simp [fixtureCanonicalEdges, fixtureEdge, fixtureContract,
    RoutingContract.canonicalEdgeLE, RoutingContract.canonicalEdgeLexValue,
    fixtureHostCode, fixtureEdgeCode, Prod.Lex.toLex_le_toLex]

@[surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant8c5225cf392f113e6ca9dd10f3ee48c37deb9ef53de6103957049d47f1aca1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant8c5225cf392f113e6ca9dd10f3ee48c37deb9ef53de6103957049d47f1aca1ff.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bb497d35940b1cae878786a1d4314d1fec68fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
