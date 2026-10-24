# AnalyticContinuationMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3aa9fc6e2fb79e1c4be7295e746318b12216e54a40918b90b679f84d6063f36f",
  "kind": "structure",
  "lexical_name": "AnalyticContinuationMap",
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
  "slug": "analyticcontinuationmap--1615f789b405d6f8afc7012c",
  "source": {
    "blob": "32b004267a7351ea9185e9b84d54e176fa0706e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1615f789b405d6f8afc7012cd4cf5dc35a9b7d2c182ea1e38d3c762e75d00e6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3aa9fc6e2fb79e1c4be7295e746318b12216e54a40918b90b679f84d6063f36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticContinuationMap where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : DerivedSheaf.SectionComplex
  targetComplex : DerivedSheaf.SectionComplex
  chainMapData : Type
  respectsDifferential : Prop
  respectsDifferential_certified : respectsDifferential
  compactnessFredholmEstimates : Prop
  compactnessFredholmEstimates_certified : compactnessFredholmEstimates
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variant24e0bc88e8d9a24bad5fba9bd3ac383932d39ce506389cc56a282d5400a1f411.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32b004267a7351ea9185e9b84d54e176fa0706e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
