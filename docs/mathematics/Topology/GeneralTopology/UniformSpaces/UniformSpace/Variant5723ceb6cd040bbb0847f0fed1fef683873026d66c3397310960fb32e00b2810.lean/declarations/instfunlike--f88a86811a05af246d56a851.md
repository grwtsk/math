# instFunLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268d3c5994930cc68eb0dd90baf55d417bcde89b8d582a9426a4232b2e04110a",
  "kind": "instance",
  "lexical_name": "instFunLike",
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
  "slug": "instfunlike--f88a86811a05af246d56a851",
  "source": {
    "blob": "38229bc4d13125ce098a58c1a879595c45db01b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f88a86811a05af246d56a85199f8bb7f0805cf7f04d6c1e70f336f2a3d5331ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268d3c5994930cc68eb0dd90baf55d417bcde89b8d582a9426a4232b2e04110a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instFunLike (X Y : CpltSepUniformSpace) :
    FunLike { f : X → Y // UniformContinuous f } X Y where
  coe := Subtype.val
  coe_injective' _ _ h := Subtype.ext h

/-- The concrete category instance on `CpltSepUniformSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38229bc4d13125ce098a58c1a879595c45db01b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
