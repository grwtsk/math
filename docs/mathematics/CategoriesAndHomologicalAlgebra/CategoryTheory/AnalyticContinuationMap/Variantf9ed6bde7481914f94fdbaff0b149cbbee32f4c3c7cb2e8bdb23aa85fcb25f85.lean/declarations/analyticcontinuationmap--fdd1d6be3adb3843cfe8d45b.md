# AnalyticContinuationMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7ff6b2a15f28b308a21d43cd1cd086e1b7c1dc83325f5f4189890f243019cc9",
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
  "slug": "analyticcontinuationmap--fdd1d6be3adb3843cfe8d45b",
  "source": {
    "blob": "7fafb240d82b07326196659b0fd1fab6ca945d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variantf9ed6bde7481914f94fdbaff0b149cbbee32f4c3c7cb2e8bdb23aa85fcb25f85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdd1d6be3adb3843cfe8d45bea5e6f8c11fb843e15d0874ae474eb876ee101a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variantf9ed6bde7481914f94fdbaff0b149cbbee32f4c3c7cb2e8bdb23aa85fcb25f85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7ff6b2a15f28b308a21d43cd1cd086e1b7c1dc83325f5f4189890f243019cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variantf9ed6bde7481914f94fdbaff0b149cbbee32f4c3c7cb2e8bdb23aa85fcb25f85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AnalyticContinuationMap/Variantf9ed6bde7481914f94fdbaff0b149cbbee32f4c3c7cb2e8bdb23aa85fcb25f85.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fafb240d82b07326196659b0fd1fab6ca945d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
