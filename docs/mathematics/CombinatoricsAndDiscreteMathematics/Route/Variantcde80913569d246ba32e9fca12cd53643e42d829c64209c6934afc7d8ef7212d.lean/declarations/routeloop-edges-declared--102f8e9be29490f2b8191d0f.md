# routeLoop_edges_declared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c716f17-ecad-751a-70b4-54b75754fae6",
  "kind": "theorem",
  "lexical_name": "routeLoop_edges_declared",
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
  "slug": "routeloop-edges-declared--102f8e9be29490f2b8191d0f",
  "source": {
    "blob": "d079ac894b8512a0a52ecae8ae73c41d024c0db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 472,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantcde80913569d246ba32e9fca12cd53643e42d829c64209c6934afc7d8ef7212d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:102f8e9be29490f2b8191d0f8b0b9f39fb2ffc6a07f823b9d8e067a2538d648a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantcde80913569d246ba32e9fca12cd53643e42d829c64209c6934afc7d8ef7212d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c716f17-ecad-751a-70b4-54b75754fae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem routeLoop_edges_declared
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (stateValid : DiscoveryEdgesDeclared contract state) :
    DiscoveryEdgesDeclared contract (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateValid
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateValid
      · rename_i host remaining queueEquation
        apply ih
        apply discoverOutgoing_edges_declared contract _ _
        · simpa only [DiscoveryEdgesDeclared] using stateValid
        intro edge member
        exact orderedOutgoingEdges_declared contract host member

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantcde80913569d246ba32e9fca12cd53643e42d829c64209c6934afc7d8ef7212d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantcde80913569d246ba32e9fca12cd53643e42d829c64209c6934afc7d8ef7212d.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d079ac894b8512a0a52ecae8ae73c41d024c0db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
