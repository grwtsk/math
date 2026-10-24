# covarianceBilinDual_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91229d07915567158654b983bea309a79386b950",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a87bb673-8a7f-7693-fa4b-8b2dc3861acd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dfd054c-d789-cfe5-1580-b796aeebb746",
  "kind": "lemma",
  "lexical_name": "covarianceBilinDual_apply",
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
  "slug": "covariancebilindual-apply--57ea2c4418bd04553c4e3083",
  "source": {
    "blob": "91229d07915567158654b983bea309a79386b950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 336,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ea2c4418bd04553c4e3083f2aa0bd4fe16e39ae6f5a3c5fe60e0f21e4a41f5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dfd054c-d789-cfe5-1580-b796aeebb746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covarianceBilinDual_apply (h : MemLp id 2 μ) (L₁ L₂ : StrongDual ℝ E) :
    covarianceBilinDual μ L₁ L₂ = ∫ x, (L₁ x - μ[L₁]) * (L₂ x - μ[L₂]) ∂μ := by
  rw [covarianceBilinDual, uncenteredCovarianceBilinDual_apply,
    integral_map (by fun_prop) (by fun_prop)]
  · have hL (L : StrongDual ℝ E) : μ[L] = L (∫ x, x ∂μ) :=
      L.integral_comp_comm (h.integrable (by simp))
    simp [← hL]
  · exact (measurableEmbedding_subRight _).memLp_map_measure_iff.mpr <| h.sub (memLp_const _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91229d07915567158654b983bea309a79386b950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
