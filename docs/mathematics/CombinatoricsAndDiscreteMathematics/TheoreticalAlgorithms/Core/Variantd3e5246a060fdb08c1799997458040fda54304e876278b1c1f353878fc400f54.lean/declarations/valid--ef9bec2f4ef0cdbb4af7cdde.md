# Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:344d0799fb9208579b8899d9424021f18a12125b7a2d8c4c8a59b07385dbab87",
  "kind": "structure",
  "lexical_name": "Valid",
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
  "slug": "valid--ef9bec2f4ef0cdbb4af7cdde",
  "source": {
    "blob": "49a7420d8e7983342dd66d85014351d90ca9da7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef9bec2f4ef0cdbb4af7cddea9ffee63ccedf1662f0649a91ba3ad12cd924c59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:344d0799fb9208579b8899d9424021f18a12125b7a2d8c4c8a59b07385dbab87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Valid (extraction : EnvironmentExtraction) : Prop where
  declarationIdsUnique : extraction.UniqueDeclarationIds
  declarationNamesUnique : extraction.UniqueDeclarationNames
  moduleIdsUnique : extraction.UniqueModuleIds
  dependencyEndpointsResolved : extraction.DependencyEndpointsResolved
  declarationOwnersResolved : extraction.DeclarationOwnersResolved
  moduleDeclarationListsExact : extraction.ModuleDeclarationListsExact
  expressionReferencesResolved : extraction.ExpressionReferencesResolved
  expressionGraphAcyclic : extraction.ExpressionGraphAcyclic
  generationRelationsResolved : extraction.GenerationRelationsResolved
  trustCoverageExact : extraction.TrustCoverageExact
  sourceRecordsAligned : extraction.SourceRecordsAligned
  attributesResolve : extraction.AttributesResolve
  canonicalOrdering : extraction.CanonicallyOrdered
  digestsValid : extraction.DigestsValid
  selectedModulesAgree :
    extraction.project.selectedModules = extraction.completeness.selectedModules
  policyCompliant : extraction.ExtractionPolicyCompliant
  completeness : extraction.completeness.Valid

end EnvironmentExtraction

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd3e5246a060fdb08c1799997458040fda54304e876278b1c1f353878fc400f54.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a7420d8e7983342dd66d85014351d90ca9da7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
