# controlledGramPivotDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7f1678c10c289a94584a323eb59c1bcb080f4157d1a629ff0e52a52a0089749",
  "kind": "def",
  "lexical_name": "controlledGramPivotDomain",
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
  "slug": "controlledgrampivotdomain--4fa20d4fdd566f557918ce74",
  "source": {
    "blob": "7ffa37b3436ed0f1462946b74d122bc898cbc5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fa20d4fdd566f557918ce746889868cf777fa52335987a48297dcf7c58fc901",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7f1678c10c289a94584a323eb59c1bcb080f4157d1a629ff0e52a52a0089749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def controlledGramPivotDomain (I : Fin k ↪o Fin n) : Set (Matrix (Fin k) (Fin n) ℝ) :=
  {A | controlledPivotThreshold k n ^ 2 * (A * A.transpose).det < columnMinor A I ^ 2}

/-- The homogeneous test agrees with the specified absolute determinant margin on orthonormal rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ffa37b3436ed0f1462946b74d122bc898cbc5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
