# riemannZeta_neg_nat_eq_bernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8af04d5a-54ce-8bc7-fb40-3dee585dc290",
  "kind": "theorem",
  "lexical_name": "riemannZeta_neg_nat_eq_bernoulli",
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
  "slug": "riemannzeta-neg-nat-eq-bernoulli--97ecaedfefcdb5b5d671e2fc",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 737,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97ecaedfefcdb5b5d671e2fc3d231ec1a44028a2c8f9fa1fefac8fe2588139dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8af04d5a-54ce-8bc7-fb40-3dee585dc290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_neg_nat_eq_bernoulli (k : ℕ) :
    riemannZeta (-k) = (-1 : ℂ) ^ k * bernoulli (k + 1) / (k + 1) := by
  rcases Nat.even_or_odd' k with ⟨m, rfl | rfl⟩
  · cases' m with m m
    ·-- k = 0 : evaluate explicitly
      rw [Nat.zero_eq, mul_zero, Nat.cast_zero, pow_zero, one_mul, zero_add, neg_zero, zero_add,
        div_one, bernoulli_one, riemannZeta_zero]
      norm_num
    · -- k = 2 * (m + 1) : both sides "trivially" zero
      rw [Nat.cast_mul, ← neg_mul, Nat.cast_two, Nat.cast_succ, riemannZeta_neg_two_mul_nat_add_one,
        bernoulli_eq_bernoulli'_of_ne_one]
      swap; · apply ne_of_gt; norm_num
      rw [bernoulli'_odd_eq_zero ⟨m + 1, rfl⟩ (by norm_num), Rat.cast_zero, mul_zero,
        zero_div]
  · -- k = 2 * m + 1 : the interesting case
    rw [Odd.neg_one_pow ⟨m, rfl⟩]
    rw [show -(↑(2 * m + 1) : ℂ) = 1 - (2 * m + 2) by push_cast; ring]
    rw [riemannZeta_one_sub]
    rotate_left
    · intro n
      rw [(by norm_cast : 2 * (m : ℂ) + 2 = ↑(2 * m + 2)), ← Int.cast_neg_natCast, ← Int.cast_ofNat,
        Ne.def, Int.cast_inj]
      apply ne_of_gt
      exact lt_of_le_of_lt (by norm_num : (-n : ℤ) ≤ 0) (by positivity)
    · rw [(by norm_cast : 2 * (m : ℂ) + 2 = ↑(2 * m + 2)), Ne.def, Nat.cast_eq_one]; norm_num
    -- get rid of sine term
    rw [show Complex.sin (↑π * (1 - (2 * ↑m + 2)) / 2) = -(-1 : ℂ) ^ m by
        rw [(by field_simp; ring : (π : ℂ) * (1 - (2 * ↑m + 2)) / 2 = π / 2 - (π * m + π))]
        rw [Complex.sin_pi_div_two_sub, Complex.cos_add_pi, neg_inj]
        rcases Nat.even_or_odd' m with ⟨t, rfl | rfl⟩
        · rw [pow_mul, neg_one_sq, one_pow]
          convert Complex.cos_nat_mul_two_pi t using 2
          push_cast; ring_nf
        · rw [pow_add, pow_one, pow_mul, neg_one_sq, one_pow, one_mul]
          convert Complex.cos_nat_mul_two_pi_add_pi t using 2
          push_cast; ring_nf]
    -- substitute in what we know about zeta values at positive integers
    have step1 := congr_arg ((↑) : ℝ → ℂ) (hasSum_zeta_nat (by norm_num : m + 1 ≠ 0)).tsum_eq
    have step2 := zeta_nat_eq_tsum_of_gt_one (by rw [mul_add]; norm_num : 1 < 2 * (m + 1))
    simp_rw [ofReal_tsum, ofReal_div, ofReal_one, ofReal_pow, ofReal_nat_cast] at step1
    rw [step1, (by norm_cast : (↑(2 * (m + 1)) : ℂ) = 2 * ↑m + 2)] at step2
    rw [step2, mul_div]
    -- now the rest is just a lengthy but elementary rearrangement
    rw [show ((2 * (m + 1))! : ℂ) = Complex.Gamma (2 * m + 2) * (↑(2 * m + 1) + 1) by
        rw [(by push_cast; ring : (2 * m + 2 : ℂ) = ↑(2 * m + 1) + 1),
          Complex.Gamma_nat_eq_factorial, (by ring : 2 * (m + 1) = 2 * m + 1 + 1),
          Nat.factorial_succ, Nat.cast_mul, mul_comm]
        norm_num]
    rw [← div_div, neg_one_mul]
    congr 1
    rw [div_eq_iff (Gamma_ne_zero_of_re_pos _)]
    swap; · rw [(by norm_num : 2 * (m : ℂ) + 2 = ↑(2 * (m : ℝ) + 2)), ofReal_re]; positivity
    simp_rw [ofReal_mul, ← mul_assoc, ofReal_rat_cast, mul_add, Nat.add_assoc, mul_one,
      one_add_one_eq_two, mul_neg, neg_mul, neg_inj]
    conv_rhs => rw [mul_comm]
    congr 1
    rw [ofReal_pow, ofReal_neg, ofReal_one, pow_add, neg_one_sq, mul_one]
    conv_lhs =>
      congr
      congr
      rw [mul_assoc, ← pow_add, ← two_mul, pow_mul, neg_one_sq, one_pow, mul_one]
    rw [show (2 : ℂ) ^ (1 - (2 * (m : ℂ) + 2)) = (↑((2 : ℝ) ^ (2 * m + 2 - 1)))⁻¹ by
        rw [ofReal_pow, ← cpow_nat_cast, ← cpow_neg, show (2 : ℝ) = (2 : ℂ) by norm_num]
        congr 1
        rw [Nat.add_sub_assoc one_le_two, Nat.cast_add, Nat.cast_mul, Nat.cast_two,
          (by norm_num : 2 - 1 = 1)]
        push_cast; ring]
    rw [show (π : ℂ) ^ (-(2 * (m : ℂ) + 2)) = (↑(π ^ (2 * m + 2)))⁻¹ by
        rw [ofReal_pow, ← cpow_nat_cast, ← cpow_neg, Nat.cast_add, Nat.cast_mul, Nat.cast_two]]
    rw [(by intros; ring : ∀ a b c d e : ℂ, a * b * c * d * e = a * d * (b * e) * c)]
    rw [inv_mul_cancel (ofReal_ne_zero.mpr <| pow_ne_zero _ pi_pos.ne'),
      inv_mul_cancel (ofReal_ne_zero.mpr <| pow_ne_zero _ two_ne_zero), one_mul, one_mul]
#align riemann_zeta_neg_nat_eq_bernoulli riemannZeta_neg_nat_eq_bernoulli
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
