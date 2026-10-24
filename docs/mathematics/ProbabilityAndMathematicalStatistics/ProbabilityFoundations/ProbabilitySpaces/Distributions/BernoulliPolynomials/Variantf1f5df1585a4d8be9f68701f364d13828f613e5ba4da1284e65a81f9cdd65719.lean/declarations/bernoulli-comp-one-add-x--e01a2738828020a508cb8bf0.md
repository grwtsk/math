# bernoulli_comp_one_add_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d20b561-32b9-efab-3874-2cce640a8666",
  "kind": "theorem",
  "lexical_name": "bernoulli_comp_one_add_X",
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
  "slug": "bernoulli-comp-one-add-x--e01a2738828020a508cb8bf0",
  "source": {
    "blob": "eb2ba67c8994e3be558f0b3bf4dce8fafa0ec5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 190,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e01a2738828020a508cb8bf0ca5849be66a00d47231a83433444f5d42d0d8495",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d20b561-32b9-efab-3874-2cce640a8666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulli_comp_one_add_X (n : ℕ) :
    (bernoulli n).comp (1 + X) = bernoulli n + n • X ^ (n - 1) := by
  refine Nat.strong_induction_on n fun d hd => ?_
  cases d with
  | zero => simp
  | succ d =>
  rw [← smul_right_inj (show d + 2 ≠ 0 by positivity), ← smul_comp, smul_add]
  simp only [bernoulli_eq_sub_sum, sub_comp, sum_comp, add_assoc, one_add_one_eq_two, smul_smul]
  conv_lhs =>
    congr
    · skip
    · apply_congr
      · skip
      · rw [smul_comp, hd _ (mem_range.1 (by assumption))]
  simp_rw [smul_add, sum_add_distrib, sub_add, sub_add_eq_sub_sub_swap, sub_sub_eq_add_sub]
  congr 1
  rw [show ∀ a b c d : ℚ[X], a - b = c + d ↔ a - c = b + d by grind]
  calc ((d + 2) • X ^ (d + 1)).comp (1 + X) - (d + 2) • X ^ (d + 1)
    _ = (d + 2) • ∑ i ∈ range (d + 1), (d + 1).choose i • X ^ i := by
      rw [smul_comp, ← smul_sub, X_pow_comp, one_add_X_pow_sub_X_pow]
    _ = ∑ i ∈ range (d + 1), ((d + 2).choose (i + 1) * (i + 1)) • X ^ i := by
      simp_rw [smul_sum, smul_smul, ← add_one_mul_choose_eq (d + 1)]
    _ = ∑ i ∈ range (d + 1), ((d + 2).choose i * i) • X ^ (i - 1) +
          (((d + 2).choose (d + 1)) * (d + 1)) • X ^ (d + 1 - 1) := by
      rw [← sum_range_succ _ (d + 1)]; simp [sum_range_succ']
    _ = ∑ i ∈ range (d + 1), (d + 2).choose i • i • X ^ (i - 1) +
          ((d + 2) * (d + 1)) • X ^ (d + 1 - 1) := by
      simp [choose_succ_self_right, add_assoc, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2ba67c8994e3be558f0b3bf4dce8fafa0ec5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
