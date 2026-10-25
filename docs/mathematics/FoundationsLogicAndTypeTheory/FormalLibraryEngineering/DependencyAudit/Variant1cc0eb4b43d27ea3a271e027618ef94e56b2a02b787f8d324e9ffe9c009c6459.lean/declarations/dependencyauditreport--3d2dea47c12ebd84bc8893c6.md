# DependencyAuditReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99f4419450635f6338b94b8a12556d4459a88e4f506a6a92493f123a635360fe",
  "kind": "structure",
  "lexical_name": "DependencyAuditReport",
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
  "slug": "dependencyauditreport--3d2dea47c12ebd84bc8893c6",
  "source": {
    "blob": "51d9783a3e1169440b1f7b9321401b15b516f9cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d2dea47c12ebd84bc8893c6bfe470b211de9d9ffde4e339cf32ca16374ce1b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99f4419450635f6338b94b8a12556d4459a88e4f506a6a92493f123a635360fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DependencyAuditReport where
  theoremLabel : String
  importsOnlyAllowedLayers : Prop
  importsOnlyAllowedLayers_holds : importsOnlyAllowedLayers
  noContractModules : Prop
  noContractModules_holds : noContractModules
  noExternalWitnessModules : Prop
  noExternalWitnessModules_holds : noExternalWitnessModules
  noIfSuppliedAccessors : Prop
  noIfSuppliedAccessors_holds : noIfSuppliedAccessors
  noCertifiedProjectionProofs : Prop
  noCertifiedProjectionProofs_holds : noCertifiedProjectionProofs
  noGapTokens : Prop
  noGapTokens_holds : noGapTokens
  assumptionBudget : AssumptionBudget
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51d9783a3e1169440b1f7b9321401b15b516f9cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
