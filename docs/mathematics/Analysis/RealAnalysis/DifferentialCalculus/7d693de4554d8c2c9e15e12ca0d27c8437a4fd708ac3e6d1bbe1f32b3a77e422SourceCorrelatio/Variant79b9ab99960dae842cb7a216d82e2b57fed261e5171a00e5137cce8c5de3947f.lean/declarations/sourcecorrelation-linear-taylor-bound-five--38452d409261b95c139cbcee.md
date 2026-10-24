# sourceCorrelation_linear_taylor_bound_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efeb79ca-3dc6-c515-d06f-e4bb1b42bb2b",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_linear_taylor_bound_five",
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
  "slug": "sourcecorrelation-linear-taylor-bound-five--38452d409261b95c139cbcee",
  "source": {
    "blob": "133b51d63486d6c2de84035ebf1007541010140b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant79b9ab99960dae842cb7a216d82e2b57fed261e5171a00e5137cce8c5de3947f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38452d409261b95c139cbcee2a3cce6681e0817499ed00bcd0b6747e91071392",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant79b9ab99960dae842cb7a216d82e2b57fed261e5171a00e5137cce8c5de3947f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efeb79ca-3dc6-c515-d06f-e4bb1b42bb2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_linear_taylor_bound_five {A : ℝ} (hA : 200 ≤ A) (a y : ℝ) :
    |sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      5 / A ^ 2 * y ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  by_cases hy : y = 0
  · subst y
    simp
  have hne : a ≠ a + y := by intro h; apply hy; linarith
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) hne hf.contDiffOn
  have ht : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc a (a + y)) a (a + y) =
      sourceCorrelation explicitSecondDerivative A a +
        y * deriv (sourceCorrelation explicitSecondDerivative A) a := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, add_sub_cancel_left]
    rw [((hf.differentiable (by norm_num)) a).derivWithin
      ((uniqueDiffOn_uIcc hne) a (left_mem_uIcc))]
  rw [ht] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one,
    add_sub_cancel_left] at hz
  have heq : sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * y ^ 2 / 2 := by
    linarith [hz]
  rw [heq, abs_div, abs_mul, abs_of_nonneg (sq_nonneg y)]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  gcongr
  exact sourceCorrelation_second_deriv_abs_le_five hA z

/-- The actual unit-norm correlation differs from one quadratically at the origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant79b9ab99960dae842cb7a216d82e2b57fed261e5171a00e5137cce8c5de3947f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant79b9ab99960dae842cb7a216d82e2b57fed261e5171a00e5137cce8c5de3947f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133b51d63486d6c2de84035ebf1007541010140b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
