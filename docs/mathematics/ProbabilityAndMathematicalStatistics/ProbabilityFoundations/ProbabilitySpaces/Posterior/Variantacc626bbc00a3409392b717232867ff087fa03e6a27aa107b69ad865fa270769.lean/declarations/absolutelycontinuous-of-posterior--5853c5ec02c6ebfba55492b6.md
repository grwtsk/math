# absolutelyContinuous_of_posterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03273580dc27c3d7c03e7c9366ca8788193c6dac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dd007ca-5cdc-1099-193a-d519de81ed74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffd98848-8915-a223-e810-1ab7ddc0ebca",
  "kind": "lemma",
  "lexical_name": "absolutelyContinuous_of_posterior",
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
  "slug": "absolutelycontinuous-of-posterior--5853c5ec02c6ebfba55492b6",
  "source": {
    "blob": "03273580dc27c3d7c03e7c9366ca8788193c6dac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 207,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5853c5ec02c6ebfba55492b69ad2a2fbecd2ccce7fb080613e02fefa9d1cc0ab",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd98848-8915-a223-e810-1ab7ddc0ebca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absolutelyContinuous_of_posterior (h_ac : ∀ᵐ b ∂(κ ∘ₘ μ), (κ†μ) b ≪ μ) :
    ∀ᵐ ω ∂μ, κ ω ≪ κ ∘ₘ μ := by
  suffices μ ⊗ₘ κ ≪ μ.prod (κ ∘ₘ μ) by
    rw [← Measure.compProd_const] at this
    simpa using this.kernel_of_compProd
  suffices (κ ∘ₘ μ) ⊗ₘ κ†μ ≪ (κ ∘ₘ μ).prod μ by
    rw [← swap_compProd_posterior, ← Measure.prod_swap, Measure.swap_comp]
    exact this.map measurable_swap
  rw [← Measure.compProd_const]
  refine Measure.AbsolutelyContinuous.compProd_right ?_
  simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03273580dc27c3d7c03e7c9366ca8788193c6dac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
