# hessian_null_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b99cca6ef8229c8f52ddb40bf70a67696113cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe9b5ad8-a07d-4a45-0efe-ae4d1acdda3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecc258f2-882d-5dee-e1af-575300cd4e00",
  "kind": "theorem",
  "lexical_name": "hessian_null_iff",
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
  "slug": "hessian-null-iff--7f6b7c80d4299ae4daf6da37",
  "source": {
    "blob": "8b99cca6ef8229c8f52ddb40bf70a67696113cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6b7c80d4299ae4daf6da3785e673b1a9d1c2f24decd38616629fbec249e2c3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc258f2-882d-5dee-e1af-575300cd4e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hessian_null_iff (theta u : ℝ) :
    fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) theta u u = 0 ↔ u = 0 := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  change (twoSampleFamily.covarianceForm theta).IsNull u ↔ u = 0
  rw [twoSampleFamily.covariance_null_iff_constant_statistics]
  constructor
  · intro h
    have h01 := h 0 1
    simpa [twoSampleFamily] using h01.symm
  · rintro rfl
    intro i j
    simp

/-- Changing the parameter does not change this exact finite Hessian null space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/PositiveAtlasFiniteAveraging/Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b99cca6ef8229c8f52ddb40bf70a67696113cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
