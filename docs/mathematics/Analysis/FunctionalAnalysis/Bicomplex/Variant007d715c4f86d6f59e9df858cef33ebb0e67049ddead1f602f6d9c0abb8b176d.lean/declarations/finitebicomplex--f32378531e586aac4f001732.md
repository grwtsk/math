# FiniteBicomplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:532183e525d1baf90f804cb6df455dbffc84198d3c536bfe4efb255ea2f97965",
  "kind": "structure",
  "lexical_name": "FiniteBicomplex",
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
  "slug": "finitebicomplex--f32378531e586aac4f001732",
  "source": {
    "blob": "a775e99325a914fd6458938d9c58ae6515093ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 20,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f32378531e586aac4f001732faf21ac7963b1411ae5379f4a864f606bf9c4ff0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:532183e525d1baf90f804cb6df455dbffc84198d3c536bfe4efb255ea2f97965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteBicomplex
    (Index : Type u) [Fintype Index] [DecidableEq Index] where
  terrainDifferential : FiniteOperator Index Index
  cubeDifferential : FiniteOperator Index Index
  terrain_square_zero : terrainDifferential * terrainDifferential = 0
  cube_square_zero : cubeDifferential * cubeDifferential = 0
  signed_compatibility :
    terrainDifferential * cubeDifferential +
      cubeDifferential * terrainDifferential = 0

namespace FiniteBicomplex

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- The signed total differential `d_K + (-1)^p d_Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant007d715c4f86d6f59e9df858cef33ebb0e67049ddead1f602f6d9c0abb8b176d.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a775e99325a914fd6458938d9c58ae6515093ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
