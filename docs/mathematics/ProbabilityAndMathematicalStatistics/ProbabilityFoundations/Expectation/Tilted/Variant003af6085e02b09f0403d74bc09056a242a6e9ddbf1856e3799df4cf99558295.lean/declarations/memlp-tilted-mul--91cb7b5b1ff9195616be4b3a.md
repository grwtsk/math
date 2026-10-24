# memLp_tilted_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f441b724-1c2c-d290-9cb8-dfd3df3ac11e",
  "kind": "lemma",
  "lexical_name": "memLp_tilted_mul",
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
  "slug": "memlp-tilted-mul--91cb7b5b1ff9195616be4b3a",
  "source": {
    "blob": "4f8f6d1ece71c8139b4c2eb0ae74e490af643837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 148,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant003af6085e02b09f0403d74bc09056a242a6e9ddbf1856e3799df4cf99558295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91cb7b5b1ff9195616be4b3a188525d7b1a6ff59e997c0d64b69775c9f3f178d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant003af6085e02b09f0403d74bc09056a242a6e9ddbf1856e3799df4cf99558295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f441b724-1c2c-d290-9cb8-dfd3df3ac11e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma memLp_tilted_mul (ht : t ∈ interior (integrableExpSet X μ)) (p : ℝ≥0) :
    MemLp X p (μ.tilted (t * X ·)) := by
  have hX : AEMeasurable X μ := aemeasurable_of_mem_interior_integrableExpSet ht
  by_cases hp : p = 0
  · simpa [hp] using hX.aestronglyMeasurable.mono_ac (tilted_absolutelyContinuous _ _)
  rw [memLp_iff, eLpNorm_lt_top_iff_lintegral_rpow_enorm_lt_top
    (hf := hX.aestronglyMeasurable.mono_ac (tilted_absolutelyContinuous _ _))]
  rotate_left
  · simp [hp]
  · simp
  simp_rw [ENNReal.coe_toReal, ← ofReal_norm, norm_eq_abs,
    ENNReal.ofReal_rpow_of_nonneg (x := |X _|) (p := p) (abs_nonneg (X _)) p.2]
  refine Integrable.lintegral_lt_top ?_
  simp_rw [integrable_tilted_iff (interior_subset (s := integrableExpSet X μ) ht),
    smul_eq_mul, mul_comm]
  exact integrable_rpow_abs_mul_exp_of_mem_interior_integrableExpSet ht p.2

/-- The variance of `X` under the tilted measure `μ.tilted (t * X ·)` is the second derivative of
the cumulant-generating function of `X` at `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant003af6085e02b09f0403d74bc09056a242a6e9ddbf1856e3799df4cf99558295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant003af6085e02b09f0403d74bc09056a242a6e9ddbf1856e3799df4cf99558295.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f8f6d1ece71c8139b4c2eb0ae74e490af643837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
