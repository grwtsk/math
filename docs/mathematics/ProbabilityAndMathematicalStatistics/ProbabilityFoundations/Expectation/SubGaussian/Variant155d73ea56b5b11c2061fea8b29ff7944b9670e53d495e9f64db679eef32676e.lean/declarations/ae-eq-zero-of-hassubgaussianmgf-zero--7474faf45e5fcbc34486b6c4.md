# ae_eq_zero_of_hasSubgaussianMGF_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9153afb7-da1d-026d-5456-938173453872",
  "kind": "lemma",
  "lexical_name": "ae_eq_zero_of_hasSubgaussianMGF_zero",
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
  "slug": "ae-eq-zero-of-hassubgaussianmgf-zero--7474faf45e5fcbc34486b6c4",
  "source": {
    "blob": "0392f56ed0dce14393aa269b42c8ddc86d59f0e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 384,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7474faf45e5fcbc34486b6c43bb6f32496c8c4bc0bafe93988a5d01459b4ab67",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9153afb7-da1d-026d-5456-938173453872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_eq_zero_of_hasSubgaussianMGF_zero (h : HasSubgaussianMGF X 0 κ ν) :
    ∀ᵐ ω' ∂ν, X =ᵐ[κ ω'] 0 := by
  filter_upwards [(h.neg).measure_pos_eq_zero_of_hasSubGaussianMGF_zero,
    h.measure_pos_eq_zero_of_hasSubGaussianMGF_zero]
  intro ω' h1 h2
  simp_rw [Pi.neg_apply, Left.neg_pos_iff] at h1
  apply nonpos_iff_eq_zero.1
  calc (κ ω') {ω | X ω ≠ 0}
  _ = (κ ω') {ω | X ω < 0 ∨ 0 < X ω} := by simp_rw [ne_iff_lt_or_gt]
  _ ≤ (κ ω') {ω | X ω < 0} + (κ ω') {ω | 0 < X ω} := measure_union_le _ _
  _ = 0 := by simp [h1, h2]

/-- Auxiliary lemma for `ae_eq_zero_of_hasSubgaussianMGF_zero'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant155d73ea56b5b11c2061fea8b29ff7944b9670e53d495e9f64db679eef32676e.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0392f56ed0dce14393aa269b42c8ddc86d59f0e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
