# IndepFun.variance_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa115b78-ba58-96b2-c501-ca6b87e7356d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6924bf62-9bd8-9fa2-e934-30ba646f0ad1",
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
  "slug": "indepfun-variance-add--8a6988b5409741c269918bb8",
  "source": {
    "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 295,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a6988b5409741c269918bb86ab8eb9a7698d485da627557330ab660b7a3492f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6924bf62-9bd8-9fa2-e934-30ba646f0ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.variance_add [@IsProbabilityMeasure Ω _ ℙ] {X Y : Ω → ℝ} (hX : Memℒp X 2)
    (hY : Memℒp Y 2) (h : @IndepFun _ _ _ (_) _ _ X Y ℙ) : Var[X + Y] = Var[X] + Var[Y] :=
  calc
    Var[X + Y] = 𝔼[fun a => X a ^ 2 + Y a ^ 2 + 2 * X a * Y a] - 𝔼[X + Y] ^ 2 := by
      simp [variance_def' (hX.add hY), add_sq']
    _ = 𝔼[X ^ 2] + 𝔼[Y ^ 2] + (2 : ℝ) * 𝔼[X * Y] - (𝔼[X] + 𝔼[Y]) ^ 2 := by
      simp only [Pi.add_apply, Pi.pow_apply, Pi.mul_apply, mul_assoc]
      rw [integral_add, integral_add, integral_add, integral_mul_left]
      · exact hX.integrable one_le_two
      · exact hY.integrable one_le_two
      · exact hX.integrable_sq
      · exact hY.integrable_sq
      · exact hX.integrable_sq.add hY.integrable_sq
      · apply Integrable.const_mul
        exact h.integrable_mul (hX.integrable one_le_two) (hY.integrable one_le_two)
    _ = 𝔼[X ^ 2] + 𝔼[Y ^ 2] + 2 * (𝔼[X] * 𝔼[Y]) - (𝔼[X] + 𝔼[Y]) ^ 2 := by
      congr
      exact h.integral_mul_of_integrable (hX.integrable one_le_two) (hY.integrable one_le_two)
    _ = Var[X] + Var[Y] := by simp only [variance_def', hX, hY, Pi.pow_apply]; ring
#align probability_theory.indep_fun.variance_add ProbabilityTheory.IndepFun.variance_add

-- Porting note: supplied `MeasurableSpace Ω` argument of `hs`, `h` by unification
/-- The variance of a finite sum of pairwise independent random variables is the sum of the
variances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4634dff20022dc3647faa5c663f097a747d0e26d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
