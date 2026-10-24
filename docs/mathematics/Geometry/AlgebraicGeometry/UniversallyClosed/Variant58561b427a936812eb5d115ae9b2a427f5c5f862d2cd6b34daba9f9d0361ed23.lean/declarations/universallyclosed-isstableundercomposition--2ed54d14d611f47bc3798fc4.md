# universallyClosed_isStableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4680d061af7adf971d778b0964de779fee72f91b815ea9bcf9f002377211cfe",
  "kind": "instance",
  "lexical_name": "universallyClosed_isStableUnderComposition",
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
  "slug": "universallyclosed-isstableundercomposition--2ed54d14d611f47bc3798fc4",
  "source": {
    "blob": "d69a347b2d8026170b4b4b555d9c2adedf8c67a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed54d14d611f47bc3798fc4c4a8210be57732d1dd487e34d45a3bd26edc1bc0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4680d061af7adf971d778b0964de779fee72f91b815ea9bcf9f002377211cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance universallyClosed_isStableUnderComposition :
    IsStableUnderComposition @UniversallyClosed := by
  rw [universallyClosed_eq]
  infer_instance

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d69a347b2d8026170b4b4b555d9c2adedf8c67a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
