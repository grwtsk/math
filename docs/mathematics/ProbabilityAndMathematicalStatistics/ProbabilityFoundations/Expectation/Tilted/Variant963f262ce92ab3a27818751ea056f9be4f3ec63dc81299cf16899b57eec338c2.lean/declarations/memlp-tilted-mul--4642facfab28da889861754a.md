# memLp_tilted_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3577ff8ea86ca2cb65cb4b1ecd222de57d052e9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9c37a73-7b94-eb2a-ec9a-225401751e59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c88c13d-6294-7004-0303-d18e2ea23c3f",
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
  "slug": "memlp-tilted-mul--4642facfab28da889861754a",
  "source": {
    "blob": "3577ff8ea86ca2cb65cb4b1ecd222de57d052e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 136,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4642facfab28da889861754aac758fa05eeb9a72341decc600158bc0769537a2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c88c13d-6294-7004-0303-d18e2ea23c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma memLp_tilted_mul (ht : t ∈ interior (integrableExpSet X μ)) (p : ℝ≥0) :
    MemLp X p (μ.tilted (t * X ·)) := by
  have hX : AEMeasurable X μ := aemeasurable_of_mem_interior_integrableExpSet ht
  by_cases hp : p = 0
  · simpa [hp] using hX.aestronglyMeasurable.mono_ac (tilted_absolutelyContinuous _ _)
  refine ⟨hX.aestronglyMeasurable.mono_ac (tilted_absolutelyContinuous _ _), ?_⟩
  rw [eLpNorm_lt_top_iff_lintegral_rpow_enorm_lt_top]
  rotate_left
  · simp [hp]
  · simp
  simp_rw [ENNReal.coe_toReal, ← ofReal_norm_eq_enorm, norm_eq_abs,
    ENNReal.ofReal_rpow_of_nonneg (x := |X _|) (p := p) (abs_nonneg (X _)) p.2]
  refine Integrable.lintegral_lt_top ?_
  simp_rw [integrable_tilted_iff (interior_subset (s := integrableExpSet X μ) ht),
    smul_eq_mul, mul_comm]
  exact integrable_rpow_abs_mul_exp_of_mem_interior_integrableExpSet ht p.2

/-- The variance of `X` under the tilted measure `μ.tilted (t * X ·)` is the second derivative of
the cumulant generating function of `X` at `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3577ff8ea86ca2cb65cb4b1ecd222de57d052e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
