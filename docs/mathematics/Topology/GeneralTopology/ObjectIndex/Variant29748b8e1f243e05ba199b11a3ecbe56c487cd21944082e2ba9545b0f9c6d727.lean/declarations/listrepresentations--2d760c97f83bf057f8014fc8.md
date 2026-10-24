# listRepresentations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:366eb4677461ea05da5f4a92e2a27c1eed5b7ae815a5101ad141e258bee4dfd2",
  "kind": "def",
  "lexical_name": "listRepresentations",
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
  "slug": "listrepresentations--2d760c97f83bf057f8014fc8",
  "source": {
    "blob": "2a9b29c772ed759579e887847b595898019d3eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d760c97f83bf057f8014fc880d42829ed871a62550714103b7793bf8896262f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:366eb4677461ea05da5f4a92e2a27c1eed5b7ae815a5101ad141e258bee4dfd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listRepresentations (index : CanonicalMathematicalIndex)
    (id : MathematicalObjectId) : List RepresentationRecord :=
  index.representations.entries.filter fun record ↦
    decide (record.objectId = id)

/-- List positive finite examples registered for an object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9b29c772ed759579e887847b595898019d3eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
