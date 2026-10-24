# CanonicalIndexValidation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7617b26373c398a318c8bc850954146e1b79f95d6b197b6e02627ed32278b41",
  "kind": "structure",
  "lexical_name": "CanonicalIndexValidation",
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
  "slug": "canonicalindexvalidation--92c6695c168329070e1a2a32",
  "source": {
    "blob": "d943c1a31c70fa9a944df2f7066c55b79a8ac587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant381c4bd02141432fb5d851f549ad58d3ec495aa6f5cd7bbe8f76ca7477c92a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92c6695c168329070e1a2a323406e87345cbfca0a688f03fe1c7f2708931d6d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant381c4bd02141432fb5d851f549ad58d3ec495aa6f5cd7bbe8f76ca7477c92a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7617b26373c398a318c8bc850954146e1b79f95d6b197b6e02627ed32278b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalIndexValidation
    (index : CanonicalIndex) where
  identifiersUnique : index.Valid
  referencesResolve : Prop
  referencesResolve_proof : referencesResolve
  ownershipValid : Prop
  ownershipValid_proof : ownershipValid
  importPolicyValid : Prop
  importPolicyValid_proof : importPolicyValid
  schemaValid : Prop
  schemaValid_proof : schemaValid
  authorityNonPromotion : Prop
  authorityNonPromotion_proof : authorityNonPromotion
  assuranceNonPromotion : Prop
  assuranceNonPromotion_proof : assuranceNonPromotion
  openObligations : List ObligationId

/-- Every advertised validation check is backed by its corresponding proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant381c4bd02141432fb5d851f549ad58d3ec495aa6f5cd7bbe8f76ca7477c92a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant381c4bd02141432fb5d851f549ad58d3ec495aa6f5cd7bbe8f76ca7477c92a90.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d943c1a31c70fa9a944df2f7066c55b79a8ac587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
