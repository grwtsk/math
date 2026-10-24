# bernoulli_generating_function

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a614a1f28ddb57d5e491478df279b0f264f46390",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63567df1-4834-f3ed-4355-d0fc091a862b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:302294ba-8da8-3afd-9ead-19da77715fab",
  "kind": "theorem",
  "lexical_name": "bernoulli_generating_function",
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
  "slug": "bernoulli-generating-function--eddab4eb66ab275b880067cd",
  "source": {
    "blob": "a614a1f28ddb57d5e491478df279b0f264f46390",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 225,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eddab4eb66ab275b880067cd926e294c78dc2a4461364a0a8a8a397e9f7c5138",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:302294ba-8da8-3afd-9ead-19da77715fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulli_generating_function (t : A) :
    (mk fun n => aeval t ((1 / n ! : ℚ) • bernoulli n)) * (exp A - 1) =
      PowerSeries.X * rescale t (exp A) := by
  -- check equality of power series by checking coefficients of X^n
  ext n
  -- n = 0 case solved by `simp`
  cases' n with n;
  · simp
  -- n ≥ 1, the coefficients is a sum to n+2, so use `sum_range_succ` to write as
  -- last term plus sum to n+1
  rw [coeff_succ_X_mul, coeff_rescale, coeff_exp, PowerSeries.coeff_mul,
    Nat.sum_antidiagonal_eq_sum_range_succ_mk, sum_range_succ]
  -- last term is zero so kill with `add_zero`
  simp only [RingHom.map_sub, tsub_self, constantCoeff_one, constantCoeff_exp,
    coeff_zero_eq_constantCoeff, mul_zero, sub_self, add_zero]
  -- Let's multiply both sides by (n+1)! (OK because it's a unit)
  have hnp1 : IsUnit ((n + 1)! : ℚ) := IsUnit.mk0 _ (by exact_mod_cast factorial_ne_zero (n + 1))
  rw [← (hnp1.map (algebraMap ℚ A)).mul_right_inj]
  -- do trivial rearrangements to make RHS (n+1)*t^n
  rw [mul_left_comm, ← RingHom.map_mul]
  change _ = t ^ n * algebraMap ℚ A (((n + 1) * n ! : ℕ) * (1 / n !))
  rw [cast_mul, mul_assoc,
    mul_one_div_cancel (show (n ! : ℚ) ≠ 0 from cast_ne_zero.2 (factorial_ne_zero n)), mul_one,
    mul_comm (t ^ n), ← aeval_monomial, cast_add, cast_one]
  -- But this is the RHS of `Polynomial.sum_bernoulli`
  rw [← sum_bernoulli, Finset.mul_sum, AlgHom.map_sum]
  -- and now we have to prove a sum is a sum, but all the terms are equal.
  apply Finset.sum_congr rfl
  -- The rest is just trivialities, hampered by the fact that we're coercing
  -- factorials and binomial coefficients between ℕ and ℚ and A.
  intro i hi
  -- deal with coefficients of e^X-1
  simp only [Nat.cast_choose ℚ (mem_range_le hi), coeff_mk, if_neg (mem_range_sub_ne_zero hi),
    one_div, AlgHom.map_smul, PowerSeries.coeff_one, coeff_exp, sub_zero, LinearMap.map_sub,
    Algebra.smul_mul_assoc, Algebra.smul_def, mul_right_comm _ ((aeval t) _), ← mul_assoc, ←
    RingHom.map_mul, succ_eq_add_one, ← Polynomial.C_eq_algebraMap, Polynomial.aeval_mul,
    Polynomial.aeval_C]
  -- finally cancel the Bernoulli polynomial and the algebra_map
  field_simp
#align polynomial.bernoulli_generating_function Polynomial.bernoulli_generating_function

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant7e78782f7e2c325dd3f248cac26732f9f4b14f3cc5f3e75704b23d1bdc566b3d.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a614a1f28ddb57d5e491478df279b0f264f46390` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
