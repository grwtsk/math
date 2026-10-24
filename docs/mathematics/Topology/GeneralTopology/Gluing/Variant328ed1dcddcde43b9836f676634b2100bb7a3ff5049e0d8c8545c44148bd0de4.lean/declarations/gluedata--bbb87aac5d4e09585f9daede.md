# GlueData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b0a6cb3f4cb2f94af4712a5678404cff46c66845f05a0432bff6290739b7684",
  "kind": "structure",
  "lexical_name": "GlueData",
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
  "slug": "gluedata--bbb87aac5d4e09585f9daede",
  "source": {
    "blob": "1fd25bdc23a1a0eb0820f4c246448e1762c34d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbb87aac5d4e09585f9daeded96ebbe350803a97df026d16b7a606b65bb50d24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b0a6cb3f4cb2f94af4712a5678404cff46c66845f05a0432bff6290739b7684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlueData extends CategoryTheory.GlueData TopCat where
  f_open : ∀ i j, IsOpenEmbedding (f i j)
  f_mono i j := (TopCat.mono_iff_injective _).mpr (f_open i j).isEmbedding.injective

namespace GlueData

variable (D : GlueData.{u})

local notation "𝖣" => D.toGlueData

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd25bdc23a1a0eb0820f4c246448e1762c34d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
