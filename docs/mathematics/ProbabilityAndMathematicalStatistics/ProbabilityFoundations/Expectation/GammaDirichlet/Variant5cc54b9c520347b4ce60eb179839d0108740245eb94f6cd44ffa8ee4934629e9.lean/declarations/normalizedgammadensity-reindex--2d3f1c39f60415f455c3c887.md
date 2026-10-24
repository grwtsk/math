# normalizedGammaDensity_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fbdb1fee145a8837e7422afa9a2fe8c0464c20f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 547,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93bc5092-77e5-05a8-e27e-3fb873a444dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0a1e91f-57ba-8a94-f7b0-4121a18df2a6",
  "kind": "theorem",
  "lexical_name": "normalizedGammaDensity_reindex",
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
  "slug": "normalizedgammadensity-reindex--2d3f1c39f60415f455c3c887",
  "source": {
    "blob": "1fbdb1fee145a8837e7422afa9a2fe8c0464c20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 547,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d3f1c39f60415f455c3c887286bdc1e81b8dc3b083e54f3e97107c49c4d96fe",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a1e91f-57ba-8a94-f7b0-4121a18df2a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedGammaDensity_reindex [Fintype I] [Fintype J]
    [Nonempty I] [Nonempty J]
    (equivalence : I ≃ J) (parameters : Parameters I)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (parameters.reindex equivalence)
        (point.reindex equivalence) =
      normalizedGammaDensity parameters point := by
  unfold normalizedGammaDensity weightedInverseScaleSum
  rw [Parameters.reindex_total, Parameters.reindex_gammaProduct]
  simp only [InteriorSimplexPoint.reindex_apply, Parameters.reindex_shape,
    Parameters.reindex_scale]
  have productEquality :
      (∏ j : J, point (equivalence.symm j) ^
          (parameters.shape (equivalence.symm j) - 1) *
          parameters.scale (equivalence.symm j) ^
            (-parameters.shape (equivalence.symm j))) =
        ∏ i : I, point i ^ (parameters.shape i - 1) *
          parameters.scale i ^ (-parameters.shape i) :=
    Equiv.prod_comp equivalence.symm
      (fun i : I => point i ^ (parameters.shape i - 1) *
        parameters.scale i ^ (-parameters.shape i))
  have sumEquality :
      (∑ j : J, point (equivalence.symm j) /
          parameters.scale (equivalence.symm j)) =
        ∑ i : I, point i / parameters.scale i :=
    Equiv.sum_comp equivalence.symm
      (fun i : I => point i / parameters.scale i)
  rw [productEquality, sumEquality]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbdb1fee145a8837e7422afa9a2fe8c0464c20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
