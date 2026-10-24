# ReducerWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:794caf0a7a3b9c58929031c81fa6da5c70516e7ca9f9df9f1105a3d65fdb8183",
  "kind": "structure",
  "lexical_name": "ReducerWitness",
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
  "slug": "reducerwitness--66ee9ffd2d7955b39ddc5693",
  "source": {
    "blob": "84b4fdc0603b4486c3ed5b8134b763b61dd6d55e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 130,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant8aa586c8a8ea89cdf6f978dd64be91977e02fc3fb67a6b56e2a2e2983f1bd6f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66ee9ffd2d7955b39ddc56939ed7112d66f8b1ed995437f11901933b83b3fada",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant8aa586c8a8ea89cdf6f978dd64be91977e02fc3fb67a6b56e2a2e2983f1bd6f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:794caf0a7a3b9c58929031c81fa6da5c70516e7ca9f9df9f1105a3d65fdb8183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReducerWitness where
  witnessId : Nat
  operatorId : Nat
  beforeMeshHash : Nat
  afterMeshHash : Nat
  affectedFaceHash : Nat
  energyDelta : Int
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/-- A reducer step is acceptable only through its witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant8aa586c8a8ea89cdf6f978dd64be91977e02fc3fb67a6b56e2a2e2983f1bd6f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant8aa586c8a8ea89cdf6f978dd64be91977e02fc3fb67a6b56e2a2e2983f1bd6f9.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b4fdc0603b4486c3ed5b8134b763b61dd6d55e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
