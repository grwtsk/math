# covarianceBilin_map_const_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7098d5b-d820-7d44-92bf-7b1dc40a436e",
  "kind": "lemma",
  "lexical_name": "covarianceBilin_map_const_add",
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
  "slug": "covariancebilin-map-const-add--190431bfd5113bb761881989",
  "source": {
    "blob": "e5d539fe677f0d1da209b9776f9e977c7fa58be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 129,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:190431bfd5113bb76188198936648f5237300ad66ba81bc7a7e9f7e246c87f86",
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

Occurrence: `result:d7098d5b-d820-7d44-92bf-7b1dc40a436e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covarianceBilin_map_const_add [CompleteSpace E] [IsProbabilityMeasure μ] (c : E) :
    covarianceBilin (μ.map (fun x ↦ c + x)) = covarianceBilin μ := by
  by_cases h : MemLp id 2 μ
  · ext x y
    have h_Lp : MemLp id 2 (μ.map (fun x ↦ c + x)) :=
      (measurableEmbedding_addLeft _).memLp_map_measure_iff.mpr <| (memLp_const c).add h
    rw [covarianceBilin_apply h_Lp,
      covarianceBilin_apply h, integral_map (by fun_prop) (by fun_prop)]
    congr with z
    rw [integral_map (by fun_prop) h_Lp.aestronglyMeasurable]
    simp only [id_eq]
    rw [integral_add (integrable_const _)]
    · simp
    · exact h.integrable (by simp)
  · ext
    rw [covarianceBilin_of_not_memLp, covarianceBilin_of_not_memLp h]
    rw [(measurableEmbedding_addLeft _).memLp_map_measure_iff.not]
    contrapose h
    convert! (memLp_const (-c)).add h
    ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant8399a957cb5f451b73adf5f1ec72121688fb79b4dec0adba07b5a11249906919.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d539fe677f0d1da209b9776f9e977c7fa58be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
