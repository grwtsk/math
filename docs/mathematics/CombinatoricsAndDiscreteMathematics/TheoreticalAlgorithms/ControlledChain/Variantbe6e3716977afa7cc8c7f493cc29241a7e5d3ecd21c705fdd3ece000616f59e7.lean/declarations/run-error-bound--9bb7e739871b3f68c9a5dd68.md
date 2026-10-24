# run_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50df03ab2e2c6135771e0ad0c079acaf3e8f489b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94ead7b5-3ba8-b0d0-6f95-b86d2acec629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c42252c-fc6f-48b5-27ff-8c20706eb641",
  "kind": "theorem",
  "lexical_name": "run_error_bound",
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
  "slug": "run-error-bound--9bb7e739871b3f68c9a5dd68",
  "source": {
    "blob": "50df03ab2e2c6135771e0ad0c079acaf3e8f489b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variantbe6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb7e739871b3f68c9a5dd689715a1079de7b4ff53e6f846fa5cf5b2d2f8b88d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variantbe6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c42252c-fc6f-48b5-27ff-8c20706eb641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem run_error_bound
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      ErrorFactor.propagateFrom initial chain.profile := by
  induction chain generalizing initial with
  | nil carrier =>
      simpa [runImplementation, runReference, profile,
        ErrorFactor.propagateFrom] using initialSound
  | cons head tail inductionHypothesis =>
      simp only [runImplementation, runReference, profile,
        ErrorFactor.propagateFrom_cons]
      apply inductionHypothesis
      exact head.input_error_bound initialSound

/-- Closed form with an arbitrary certified initial discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variantbe6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variantbe6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50df03ab2e2c6135771e0ad0c079acaf3e8f489b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
