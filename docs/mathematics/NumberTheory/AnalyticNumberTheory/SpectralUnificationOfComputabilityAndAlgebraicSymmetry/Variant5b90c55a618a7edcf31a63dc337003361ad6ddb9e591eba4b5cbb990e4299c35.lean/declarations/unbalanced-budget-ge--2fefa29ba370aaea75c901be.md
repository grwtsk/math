# unbalanced_budget_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2009903d-9ca0-5636-05bb-976d96549d73",
  "kind": "theorem",
  "lexical_name": "unbalanced_budget_ge",
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
  "slug": "unbalanced-budget-ge--2fefa29ba370aaea75c901be",
  "source": {
    "blob": "6c2c0a770235d3adc6e76252ad841135c5f2b206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 264,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fefa29ba370aaea75c901be3c982a4f9fa2c0020786bab214505e6d2ba1b931",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2009903d-9ca0-5636-05bb-976d96549d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unbalanced_budget_ge (A K : ℝ) (hA : 64 ≤ A) (hK : 1 ≤ K) :
    Real.exp (A/4-1/2) ≤ deterministicBlockBudget A K (unbalancedCell A) := by
  have hs : (1 : ℝ) ≤ Real.sqrt 2 := Real.one_le_sqrt.mpr (by norm_num)
  have he : (1 : ℝ) ≤ Real.exp 1 := by
    calc
      1 = Real.exp 0 := Real.exp_zero.symm
      _ ≤ Real.exp 1 := Real.exp_le_exp.mpr (by norm_num)
  have hU : (1 : ℝ) ≤ vaughanCutoff A := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hc : 1 ≤ 2*Real.sqrt 2*Real.exp 1*(vaughanCutoff A : ℝ)*(1+2*K)*
      (((unbalancedCell A).1 : ℝ)+1) := by
    apply one_le_mul_of_one_le_of_one_le
    · apply one_le_mul_of_one_le_of_one_le
      · apply one_le_mul_of_one_le_of_one_le
        · apply one_le_mul_of_one_le_of_one_le
          · apply one_le_mul_of_one_le_of_one_le (by norm_num) hs
          · exact he
        · exact hU
      · linarith
    · have : (0 : ℝ) ≤ ((unbalancedCell A).1 : ℝ) := Nat.cast_nonneg _
      linarith
  refine (unbalanced_loss_factor_ge A hA).trans ?_
  unfold deterministicBlockBudget
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hc
    (Real.exp_pos ((((unbalancedCell A).1 : ℝ)-((unbalancedCell A).2 : ℝ))/2)).le

/-- The complete positive log-cell budget inherits this loss from an admissible cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2c0a770235d3adc6e76252ad841135c5f2b206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
