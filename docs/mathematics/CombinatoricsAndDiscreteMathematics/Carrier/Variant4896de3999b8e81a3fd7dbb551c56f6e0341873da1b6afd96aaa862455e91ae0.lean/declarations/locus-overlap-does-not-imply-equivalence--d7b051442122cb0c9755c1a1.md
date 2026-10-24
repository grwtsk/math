# locus_overlap_does_not_imply_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f694f91-6d49-a4a9-c1b8-3ca2a5208d92",
  "kind": "theorem",
  "lexical_name": "locus_overlap_does_not_imply_equivalence",
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
  "slug": "locus-overlap-does-not-imply-equivalence--d7b051442122cb0c9755c1a1",
  "source": {
    "blob": "ac19591131f632b7871780c296d42d26831cef6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b051442122cb0c9755c1a1d96453c998443648ec90339d180db4aa22e1f7e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f694f91-6d49-a4a9-c1b8-3ca2a5208d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locus_overlap_does_not_imply_equivalence
    {carrier : CommunicationCarrier}
    {left right : MathematicalWorldModel}
    (leftLocus : ModelLocus carrier left)
    (rightLocus : ModelLocus carrier right)
    (_overlap : ∃ cell,
      cell ∈ leftLocus.occupiedCells ∧
      cell ∈ rightLocus.occupiedCells)
    (different : left.identity ≠ right.identity) :
    left.identity ≠ right.identity :=
  different

/-- Concrete finite carrier whose adjacency relation is universal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac19591131f632b7871780c296d42d26831cef6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
