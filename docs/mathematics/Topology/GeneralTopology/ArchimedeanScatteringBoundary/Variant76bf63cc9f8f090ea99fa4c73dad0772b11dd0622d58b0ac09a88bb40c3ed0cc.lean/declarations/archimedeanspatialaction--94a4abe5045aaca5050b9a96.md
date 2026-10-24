# ArchimedeanSpatialAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4a452e518c8d925078828af80814de46c7ba9556c43ae727473f9f55d8dce45",
  "kind": "structure",
  "lexical_name": "ArchimedeanSpatialAction",
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
  "slug": "archimedeanspatialaction--94a4abe5045aaca5050b9a96",
  "source": {
    "blob": "3bda45e8e096fee13aaef49082c4f0812bd1498e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94a4abe5045aaca5050b9a96f5655d99d9529e8d9d4f7d2bcb53700146ecb778",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4a452e518c8d925078828af80814de46c7ba9556c43ae727473f9f55d8dce45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArchimedeanSpatialAction (Time Carrier : Type) where
  action : Time → Carrier → Carrier
  unitaryAction : Prop
  stronglyContinuousAction : Prop
  stoneGeneratorSelfAdjoint : Prop
  stoneGeneratorSelfAdjoint_of_unitary_strong :
    unitaryAction → stronglyContinuousAction → stoneGeneratorSelfAdjoint

namespace ArchimedeanSpatialAction

variable {Time Carrier : Type}
variable (spatial : ArchimedeanSpatialAction Time Carrier)

/-- The Archimedean spatial action preserves self-adjointness through the
unitary, strongly-continuous action obligation.  This is the formal surface of
Stone-generator self-adjointness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bda45e8e096fee13aaef49082c4f0812bd1498e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
