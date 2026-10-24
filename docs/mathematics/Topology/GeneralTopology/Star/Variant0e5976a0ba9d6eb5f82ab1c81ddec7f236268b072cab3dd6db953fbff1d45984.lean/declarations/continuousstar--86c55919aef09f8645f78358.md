# ContinuousStar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aed013d733a421eea09045daeb6df78bd45629f05baf4d86065975815b27e245",
  "kind": "class",
  "lexical_name": "ContinuousStar",
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
  "slug": "continuousstar--86c55919aef09f8645f78358",
  "source": {
    "blob": "0fdc6263f24f79fe983bbf56c2ca87838a6d50ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86c55919aef09f8645f78358832d0e61d1416d8ac4b2591bda5deb441b1b30cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aed013d733a421eea09045daeb6df78bd45629f05baf4d86065975815b27e245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousStar (R : Type*) [TopologicalSpace R] [Star R] : Prop where
  /-- The `star` operator is continuous. -/
  continuous_star : Continuous (star : R → R)

export ContinuousStar (continuous_star)

section Continuity

variable {α R : Type*} [TopologicalSpace R] [Star R] [ContinuousStar R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fdc6263f24f79fe983bbf56c2ca87838a6d50ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
