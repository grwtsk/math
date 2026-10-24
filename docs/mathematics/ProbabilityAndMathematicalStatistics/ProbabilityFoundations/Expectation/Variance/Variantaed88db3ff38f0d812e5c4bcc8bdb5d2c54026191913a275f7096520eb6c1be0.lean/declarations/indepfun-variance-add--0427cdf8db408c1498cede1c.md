# IndepFun.variance_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4f85e63a93fe4e2421cb53371e82f97fb09653f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e4aac80-63f2-6a2d-995a-5320cca5daf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df8a6079-a874-2335-ad47-3935922caa04",
  "kind": "theorem",
  "lexical_name": "IndepFun.variance_add",
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
  "slug": "indepfun-variance-add--0427cdf8db408c1498cede1c",
  "source": {
    "blob": "c4f85e63a93fe4e2421cb53371e82f97fb09653f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 329,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0427cdf8db408c1498cede1c995eff8f36bbecc0beb84468610c01a5a1ac13d1",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df8a6079-a874-2335-ad47-3935922caa04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.variance_add [IsProbabilityMeasure μ] {X Y : Ω → ℝ} (hX : MemLp X 2 μ)
    (hY : MemLp Y 2 μ) (h : IndepFun X Y μ) : variance (X + Y) μ = variance X μ + variance Y μ :=
  calc
    variance (X + Y) μ = μ[fun a => X a ^ 2 + Y a ^ 2 + 2 * X a * Y a] - μ[X + Y] ^ 2 := by
      simp [variance_def' (hX.add hY), add_sq']
    _ = μ[X ^ 2] + μ[Y ^ 2] + (2 : ℝ) * μ[X * Y] - (μ[X] + μ[Y]) ^ 2 := by
      simp only [Pi.add_apply, Pi.pow_apply, Pi.mul_apply, mul_assoc]
      rw [integral_add, integral_add, integral_add, integral_const_mul]
      · exact hX.integrable one_le_two
      · exact hY.integrable one_le_two
      · exact hX.integrable_sq
      · exact hY.integrable_sq
      · exact hX.integrable_sq.add hY.integrable_sq
      · apply Integrable.const_mul
        exact h.integrable_mul (hX.integrable one_le_two) (hY.integrable one_le_two)
    _ = μ[X ^ 2] + μ[Y ^ 2] + 2 * (μ[X] * μ[Y]) - (μ[X] + μ[Y]) ^ 2 := by
      congr
      exact h.integral_mul_of_integrable (hX.integrable one_le_two) (hY.integrable one_le_two)
    _ = variance X μ + variance Y μ := by simp only [variance_def', hX, hY, Pi.pow_apply]; ring

-- Porting note: supplied `MeasurableSpace Ω` argument of `hs`, `h` by unification
/-- The variance of a finite sum of pairwise independent random variables is the sum of the
variances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f85e63a93fe4e2421cb53371e82f97fb09653f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
