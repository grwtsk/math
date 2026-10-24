# example_projection_step_node_fiber_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8a6237ef473b64102cc41670340f5ed31d44fb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cde801de-bb5c-ed49-b252-9fdecba7ef31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61bb9b22-1f85-aa7e-11db-31da407b9597",
  "kind": "theorem",
  "lexical_name": "example_projection_step_node_fiber_sound",
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
  "slug": "example-projection-step-node-fiber-sound--b4fa77f99c968e1aadb5d6e2",
  "source": {
    "blob": "b8a6237ef473b64102cc41670340f5ed31d44fb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 303,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variantea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4fa77f99c968e1aadb5d6e2276941ee9656aff0b0a618ef406f1f16def64926",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variantea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61bb9b22-1f85-aa7e-11db-31da407b9597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_projection_step_node_fiber_sound :
    toyStepOne.projectsNodeAndFiber ∧
    toyStepOne.witness.identityPreserved ∧
    toyStepOne.witness.theoremResolutionPreserved ∧
    toyStepOne.witness.authorityBoundaryPreserved ∧
    toyStepOne.witness.cacheKeyPreserved ∧
    toyStepOne.witness.lossRecorded ∧
    toyStepOne.witness.noAuthorityCreated ∧
    ¬ ProjectionStepCreatesAuthority toyStepOne :=
  projection_step_node_fiber_sound toyStepOne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variantea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variantea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a6237ef473b64102cc41670340f5ed31d44fb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
