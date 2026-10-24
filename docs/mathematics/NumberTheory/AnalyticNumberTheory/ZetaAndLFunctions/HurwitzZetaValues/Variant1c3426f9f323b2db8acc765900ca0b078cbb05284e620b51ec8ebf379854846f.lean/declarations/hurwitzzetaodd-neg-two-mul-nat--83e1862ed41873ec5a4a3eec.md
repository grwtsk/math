# hurwitzZetaOdd_neg_two_mul_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1810f9bd-3745-e1c4-6e57-d03d9a4ac9b0",
  "kind": "theorem",
  "lexical_name": "hurwitzZetaOdd_neg_two_mul_nat",
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
  "slug": "hurwitzzetaodd-neg-two-mul-nat--83e1862ed41873ec5a4a3eec",
  "source": {
    "blob": "3202a1b71118103de05b67901cdac2dd1dc460bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83e1862ed41873ec5a4a3eec7c031e673bb593b6bc1c4e20eaaafe6b3a004fc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1810f9bd-3745-e1c4-6e57-d03d9a4ac9b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hurwitzZetaOdd_neg_two_mul_nat (hk : k ≠ 0) (hx : x ∈ Icc (0 : ℝ) 1) :
    hurwitzZetaOdd x (-(2 * k)) =
    -1 / (2 * k + 1) * ((Polynomial.bernoulli (2 * k + 1)).map (algebraMap ℚ ℂ)).eval (x : ℂ) := by
  have h1 (n : ℕ) : (2 * k + 1 : ℂ) ≠ -n := by
    rw [← Int.cast_ofNat, ← Int.cast_natCast, ← Int.cast_mul, ← Int.cast_natCast n, ← Int.cast_neg,
      ← Int.cast_one, ← Int.cast_add, Ne, Int.cast_inj, ← Ne]
    refine ne_of_gt ((neg_nonpos_of_nonneg n.cast_nonneg).trans_lt ?_)
    positivity
  have h3 : Gammaℂ (2 * k + 1) ≠ 0 := by
    refine mul_ne_zero (mul_ne_zero two_ne_zero ?_) (Gamma_ne_zero h1)
    simp [pi_ne_zero]
  rw [(by simp : -(2 * k : ℂ) = 1 - (2 * k + 1)),
    hurwitzZetaOdd_one_sub _ h1, ← Gammaℂ, sinZeta_two_mul_nat_add_one' hk hx, ← mul_assoc,
    ← mul_div_assoc, mul_assoc, mul_div_cancel_left₀ _ h3, ← mul_div_assoc]
  congr 2
  rw [mul_div_assoc, add_div, mul_div_cancel_left₀ _ two_ne_zero, ← ofReal_natCast,
    ← ofReal_one, ← ofReal_ofNat, ← ofReal_div, ← ofReal_add, ← ofReal_mul,
    ← ofReal_sin, mul_comm π, add_mul, mul_comm (1 / 2), mul_one_div, Real.sin_add_pi_div_two,
    ← sub_zero (k * π), cos_nat_mul_pi_sub, Real.cos_zero, mul_one,
    ofReal_pow, ofReal_neg, ofReal_one, pow_succ, mul_neg_one, mul_neg, ← mul_pow, neg_one_mul,
    neg_neg, one_pow]

-- private because it is superseded by `hurwitzZeta_neg_nat` below
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3202a1b71118103de05b67901cdac2dd1dc460bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
