# bernoulli_eval_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63ae4ddc-0932-9359-a414-9a0e00bd85e6",
  "kind": "theorem",
  "lexical_name": "bernoulli_eval_one_add",
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
  "slug": "bernoulli-eval-one-add--24351628bcb217e1f2ebf5f2",
  "source": {
    "blob": "424955549367746c27538def15b2779c01b6051d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 183,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24351628bcb217e1f2ebf5f2144c49e39b41845bf1b48361f9816f66ac864010",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ae4ddc-0932-9359-a414-9a0e00bd85e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulli_eval_one_add (n : ℕ) (x : ℚ) :
    (bernoulli n).eval (1 + x) = (bernoulli n).eval x + n * x ^ (n - 1) := by
  refine Nat.strong_induction_on n fun d hd => ?_
  have nz : ((d.succ : ℕ) : ℚ) ≠ 0 := by norm_cast
  apply (mul_right_inj' nz).1
  rw [← smul_eq_mul, ← eval_smul, bernoulli_eq_sub_sum, mul_add, ← smul_eq_mul, ← eval_smul,
    bernoulli_eq_sub_sum, eval_sub, eval_finset_sum]
  conv_lhs =>
    congr
    · skip
    · apply_congr
      · skip
      · rw [eval_smul, hd _ (mem_range.1 (by assumption))]
  rw [eval_sub, eval_finset_sum]
  simp_rw [eval_smul, smul_add]
  rw [sum_add_distrib, sub_add, sub_eq_sub_iff_sub_eq_sub, _root_.add_sub_sub_cancel]
  conv_rhs =>
    congr
    · skip
    · congr
      rw [succ_eq_add_one, ← choose_succ_self_right d]
  rw [Nat.cast_succ, ← smul_eq_mul, ← sum_range_succ _ d, eval_monomial_one_add_sub]
  simp_rw [smul_eq_mul]

open PowerSeries

variable {A : Type*} [CommRing A] [Algebra ℚ A]

-- TODO: define exponential generating functions, and use them here
-- This name should probably be updated afterwards
/-- The theorem that $(e^X - 1) * ∑ Bₙ(t)* X^n/n! = Xe^{tX}$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variant4477432d89d0e55c1dc75df9e334a18434b3fd003296db5431aed2d3a1e162e7.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424955549367746c27538def15b2779c01b6051d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
