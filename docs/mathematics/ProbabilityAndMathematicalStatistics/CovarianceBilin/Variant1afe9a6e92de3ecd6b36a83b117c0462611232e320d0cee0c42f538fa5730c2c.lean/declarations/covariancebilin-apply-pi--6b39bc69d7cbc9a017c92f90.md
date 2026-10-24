# covarianceBilin_apply_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5941a37b650761c98eea985ef44046fae1596596",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89676048-c420-e064-89af-b32f79c9790e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d461dd2b-be1f-f2b6-bef1-57d97026fad2",
  "kind": "lemma",
  "lexical_name": "covarianceBilin_apply_pi",
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
  "slug": "covariancebilin-apply-pi--6b39bc69d7cbc9a017c92f90",
  "source": {
    "blob": "5941a37b650761c98eea985ef44046fae1596596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 162,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b39bc69d7cbc9a017c92f901aa49b4d73dfbe05d1d076348032f1d7a0c4ce7e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d461dd2b-be1f-f2b6-bef1-57d97026fad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covarianceBilin_apply_pi {ι Ω : Type*} [Fintype ι] {mΩ : MeasurableSpace Ω}
    {μ : Measure Ω} [IsFiniteMeasure μ] {X : ι → Ω → ℝ}
    (hX : ∀ i, MemLp (X i) 2 μ) (x y : EuclideanSpace ℝ ι) :
    covarianceBilin (μ.map (fun ω ↦ toLp 2 (X · ω))) x y =
      ∑ i, ∑ j, x i * y j * cov[X i, X j; μ] := by
  have (i : ι) := (hX i).aemeasurable
  nth_rw 1 [covarianceBilin_apply_eq_cov, covariance_map_fun, ← (basisFun ι ℝ).sum_repr' x,
    ← (basisFun ι ℝ).sum_repr' y]
  · simp_rw [sum_inner, real_inner_smul_left, basisFun_inner]
    rw [covariance_fun_sum_fun_sum]
    · refine Finset.sum_congr rfl fun i _ ↦ Finset.sum_congr rfl fun j _ ↦ ?_
      rw [covariance_const_mul_left, covariance_const_mul_right]
      ring
    all_goals exact fun i ↦ (hX i).const_mul _
  any_goals exact Measurable.aestronglyMeasurable (by fun_prop)
  · fun_prop
  · exact (memLp_map_measure_iff aestronglyMeasurable_id (by fun_prop)).2 (MemLp.of_eval_piLp hX)

section covarianceOperator

variable [CompleteSpace E]

/-- The covariance operator of the measure `μ`. This is the bounded operator `F : E →L[ℝ] E`
associated to the continuous bilinear form `B : E →L[ℝ] E →L[ℝ] ℝ` such that
`B x y = ∫ z, ⟪x, z⟫ * ⟪y, z⟫ ∂μ` (see `covarianceOperator_inner`). Namely we have
`B x y = ⟪F x, y⟫`.

Note that the bilinear form `B` is the _uncentered_ covariance bilinear form associated to the
measure `µ`, which is not to be confused with the covariance bilinear form defined earlier in this
file as `covarianceBilin μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant1afe9a6e92de3ecd6b36a83b117c0462611232e320d0cee0c42f538fa5730c2c.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5941a37b650761c98eea985ef44046fae1596596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
