# FiniteBicomplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3fc12c3843250ec9e5179b3b7c034b742b049c2af9a8224d854e970d0dbbe3d",
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
  "slug": "finitebicomplex--a6b745d81f82ff229b0bf670",
  "source": {
    "blob": "7068c0dbad3b9cb3c2a26e81ecc47fd30f03207a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6b745d81f82ff229b0bf6702a202c4629badf4ddd428a508d702f750c7248b4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3fc12c3843250ec9e5179b3b7c034b742b049c2af9a8224d854e970d0dbbe3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7068c0dbad3b9cb3c2a26e81ecc47fd30f03207a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
