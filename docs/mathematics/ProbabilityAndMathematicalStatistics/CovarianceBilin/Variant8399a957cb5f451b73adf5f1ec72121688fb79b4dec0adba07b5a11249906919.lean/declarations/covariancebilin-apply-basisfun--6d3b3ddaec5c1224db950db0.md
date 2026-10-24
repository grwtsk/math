# covarianceBilin_apply_basisFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19512443-1de9-a118-c1a7-9f74216690d2",
  "kind": "lemma",
  "lexical_name": "covarianceBilin_apply_basisFun",
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
  "slug": "covariancebilin-apply-basisfun--6d3b3ddaec5c1224db950db0",
  "source": {
    "blob": "e5d539fe677f0d1da209b9776f9e977c7fa58be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3b3ddaec5c1224db950db0a024dce68c4539f41b8e7c9e97b45e3a9b4c5a0b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19512443-1de9-a118-c1a7-9f74216690d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covarianceBilin_apply_basisFun {ι Ω : Type*} [Fintype ι] {mΩ : MeasurableSpace Ω}
    {μ : Measure Ω} [IsFiniteMeasure μ] {X : ι → Ω → ℝ} (hX : ∀ i, MemLp (X i) 2 μ) (i j : ι) :
    covarianceBilin (μ.map (fun ω ↦ toLp 2 (X · ω)))
      (basisFun ι ℝ i) (basisFun ι ℝ j) = cov[X i, X j; μ] := by
  have (i : ι) := (hX i).aemeasurable
  rw [covarianceBilin_apply_eq_cov, covariance_map]
  · simp [basisFun_inner]; rfl
  · exact Measurable.aestronglyMeasurable (by fun_prop)
  · exact Measurable.aestronglyMeasurable (by fun_prop)
  · fun_prop
  · exact (memLp_map_measure_iff aestronglyMeasurable_id (by fun_prop)).2 (MemLp.of_eval_piLp hX)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d539fe677f0d1da209b9776f9e977c7fa58be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
