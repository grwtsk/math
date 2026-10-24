# ReducerWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91a5483ab1c70eb242071b60793346d533381687a136f9784be45384d5942206",
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
  "slug": "reducerwitness--5b3800f732e81ea18087d826",
  "source": {
    "blob": "235d25342cb844b2fab7bac4875eb8047a02ca4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 438,
    "path": "GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b3800f732e81ea18087d8267ed6db7672e96179a9990c51fbd091bf965374e4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91a5483ab1c70eb242071b60793346d533381687a136f9784be45384d5942206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReducerWitness (_O : ReducerOperator) where
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variant477e0913c86490a3efdabb5caa1de446f1e92a332c117df3f9565df4d5abc79e.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235d25342cb844b2fab7bac4875eb8047a02ca4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
