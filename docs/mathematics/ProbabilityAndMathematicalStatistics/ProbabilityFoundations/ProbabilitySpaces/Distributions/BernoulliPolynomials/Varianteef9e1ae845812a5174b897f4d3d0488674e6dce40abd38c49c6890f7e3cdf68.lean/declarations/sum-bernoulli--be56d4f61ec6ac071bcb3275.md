# sum_bernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1bd737b-b2dd-739a-610a-31489885ebea",
  "kind": "theorem",
  "lexical_name": "sum_bernoulli",
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
  "slug": "sum-bernoulli--be56d4f61ec6ac071bcb3275",
  "source": {
    "blob": "00ca83672ae9748eea4df4fb6db9797565252d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 127,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Varianteef9e1ae845812a5174b897f4d3d0488674e6dce40abd38c49c6890f7e3cdf68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be56d4f61ec6ac071bcb327515b79fd8ebdcad15dbee062997209039e0b5c206",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Varianteef9e1ae845812a5174b897f4d3d0488674e6dce40abd38c49c6890f7e3cdf68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1bd737b-b2dd-739a-610a-31489885ebea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem sum_bernoulli (n : ℕ) :
    (∑ k ∈ range (n + 1), ((n + 1).choose k : ℚ) • bernoulli k) = monomial n (n + 1 : ℚ) := by
  simp_rw [bernoulli_def, Finset.smul_sum, Finset.range_eq_Ico, ← Finset.sum_Ico_Ico_comm,
    Finset.sum_Ico_eq_sum_range]
  simp only [add_tsub_cancel_left, zero_add, map_add]
  simp_rw [smul_monomial, mul_comm (_root_.bernoulli _) _, smul_eq_mul, ← mul_assoc]
  conv_lhs =>
    apply_congr
    · skip
    · conv =>
      apply_congr
      · skip
      · rw [← Nat.cast_mul, choose_mul (le_add_right _ _), Nat.cast_mul, add_tsub_cancel_left,
          mul_assoc, mul_comm, ← smul_eq_mul, ← smul_monomial]
  simp_rw [← sum_smul, Nat.sub_zero]
  rw [sum_range_succ_comm]
  simp only [add_eq_left, mul_one, cast_one, cast_add, add_tsub_cancel_left,
    choose_succ_self_right, one_smul, _root_.bernoulli_zero, sum_singleton, zero_add,
    map_add, range_one, mul_one]
  refine sum_eq_zero ?_
  intro x hx
  have hx1 : n + 1 - x ≠ 1 := by grind
  simp [_root_.sum_bernoulli, hx1]

/-- Another version of `Polynomial.sum_bernoulli`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Varianteef9e1ae845812a5174b897f4d3d0488674e6dce40abd38c49c6890f7e3cdf68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Varianteef9e1ae845812a5174b897f4d3d0488674e6dce40abd38c49c6890f7e3cdf68.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ca83672ae9748eea4df4fb6db9797565252d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
