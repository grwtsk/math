# LightDiagram'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ca1f573eeb821d5792a3e4586275e53f8afcea17b09fdc36bba744e3e85d956",
  "kind": "structure",
  "lexical_name": "LightDiagram'",
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
  "slug": "lightdiagram--ecd45a2b6a8f5b74caef0412",
  "source": {
    "blob": "ffb2ba00de20d586d456387de47cd41e77069cca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant559a682263a5a321e30a55ad713e23b1a9417437130c377ef6e1f5b70ef37f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecd45a2b6a8f5b74caef04120c7aa0f98693e3239d5d183426bb3bbe31470192",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant559a682263a5a321e30a55ad713e23b1a9417437130c377ef6e1f5b70ef37f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ca1f573eeb821d5792a3e4586275e53f8afcea17b09fdc36bba744e3e85d956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LightDiagram' : Type u where
  /-- The diagram takes values in a small category equivalent to `FintypeCat`. -/
  diagram : ℕᵒᵖ ⥤ FintypeCat.Skeleton.{u}

/-- A `LightDiagram'` yields a `Profinite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant559a682263a5a321e30a55ad713e23b1a9417437130c377ef6e1f5b70ef37f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant559a682263a5a321e30a55ad713e23b1a9417437130c377ef6e1f5b70ef37f66.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb2ba00de20d586d456387de47cd41e77069cca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
