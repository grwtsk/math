# GlueData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f75d404fc5ecd880e5dbbb90ef05f5bc4776337e4e1140e34a5fe2c642ac26bb",
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
  "slug": "gluedata--62f1603e5eddd883386cdaeb",
  "source": {
    "blob": "7d742846b153613845bea1363bff216a2232062f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62f1603e5eddd883386cdaeb6cfe082f5f25a2824ad70c2c985f1f5810eb35bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f75d404fc5ecd880e5dbbb90ef05f5bc4776337e4e1140e34a5fe2c642ac26bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–102.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d742846b153613845bea1363bff216a2232062f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
