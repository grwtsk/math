# iterated_fderiv_logPartition_eq_residual_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bec81f97dcc2cea65e9d6cb09621f980950a6e80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e6a5fc9-6bad-646a-a091-266be0dd5412",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f038f1ce-ff5d-f8ed-8213-1fd3ac732064",
  "kind": "theorem",
  "lexical_name": "iterated_fderiv_logPartition_eq_residual_pairing",
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
  "slug": "iterated-fderiv-logpartition-eq-residual-pairing--b118370e8666df660190fc1c",
  "source": {
    "blob": "bec81f97dcc2cea65e9d6cb09621f980950a6e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b118370e8666df660190fc1c61be05dbd02f332bde74aa49e369ee2b998124d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f038f1ce-ff5d-f8ed-8213-1fd3ac732064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterated_fderiv_logPartition_eq_residual_pairing (theta u v : E) :
    fderiv ℝ (fderiv ℝ F.logPartition) theta u v =
      (F.probabilityFibre theta).positiveForm.form
        (F.centeredObservable theta u) (F.centeredObservable theta v) := by
  rw [F.iterated_fderiv_logPartition_eq_covariance, F.covariance_eq_residual_pairing]

/-- A covariance-null direction has constant statistics, and conversely.
Strict positivity of all normalized sample weights is essential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec81f97dcc2cea65e9d6cb09621f980950a6e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
