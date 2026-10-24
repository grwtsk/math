# not_summable_residueClass_prime_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9838e0fd-d067-455c-5b9f-d6e82db298f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3f5570a-bead-d5da-0129-be7df8326c87",
  "kind": "lemma",
  "lexical_name": "not_summable_residueClass_prime_div",
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
  "slug": "not-summable-residueclass-prime-div--343acb2b14daa1a0b04e7af5",
  "source": {
    "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 423,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:343acb2b14daa1a0b04e7af5be9239f7b68cd6110b867d4455883ace164e86e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f5570a-bead-d5da-0129-be7df8326c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_summable_residueClass_prime_div (ha : IsUnit a) :
    ¬ Summable fun n : ℕ ↦ (if n.Prime then residueClass a n else 0) / n := by
  intro H
  have key : Summable fun n : ℕ ↦ residueClass a n / n := by
    convert (summable_residueClass_non_primes_div a).add H using 2 with n
    simp only [← add_div, ite_add_ite, zero_add, add_zero, ite_self]
  let C := ∑' n, residueClass a n / n
  have H₁ {x : ℝ} (hx : 1 < x) : ∑' n, residueClass a n / (n : ℝ) ^ x ≤ C := by
    refine Summable.tsum_le_tsum (fun n ↦ ?_) ?_ key
    · rcases n.eq_zero_or_pos with rfl | hn
      · simp only [Nat.cast_zero, Real.zero_rpow (zero_lt_one.trans hx).ne', div_zero, le_refl]
      · refine div_le_div_of_nonneg_left (residueClass_nonneg a _) (mod_cast hn) ?_
        conv_lhs => rw [← Real.rpow_one n]
        exact Real.rpow_le_rpow_of_exponent_le (by norm_cast) hx.le
    · exact summable_real_of_abscissaOfAbsConv_lt <|
        (abscissaOfAbsConv_residueClass_le_one a).trans_lt <| mod_cast hx
  obtain ⟨C', hC'⟩ := LSeries_residueClass_lower_bound ha
  have H₁ {x} (hx : x ∈ Set.Ioc 1 2) : (q.totient : ℝ)⁻¹ ≤ (C + C') * (x - 1) :=
    (div_le_iff₀ <| sub_pos.mpr hx.1).mp <|
      sub_le_iff_le_add.mp <| (hC' hx).trans (H₁ hx.1)
  have hq : 0 < (q.totient : ℝ)⁻¹ := inv_pos.mpr (mod_cast q.totient.pos_of_neZero)
  rcases le_or_lt (C + C') 0 with h₀ | h₀
  · have := hq.trans_le (H₁ (Set.right_mem_Ioc.mpr one_lt_two))
    rw [show (2 : ℝ) - 1 = 1 by norm_num, mul_one] at this
    exact (this.trans_le h₀).false
  · obtain ⟨ξ, hξ₁, hξ₂⟩ : ∃ ξ ∈ Set.Ioc 1 2, (C + C') * (ξ - 1) < (q.totient : ℝ)⁻¹ := by
      refine ⟨min (1 + (q.totient : ℝ)⁻¹ / (C + C') / 2) 2, ⟨?_, min_le_right ..⟩, ?_⟩
      · simpa only [lt_inf_iff, lt_add_iff_pos_right, Nat.ofNat_pos, div_pos_iff_of_pos_right,
          Nat.one_lt_ofNat, and_true] using div_pos hq h₀
      · rw [← min_sub_sub_right, add_sub_cancel_left, ← lt_div_iff₀' h₀]
        exact (min_le_left ..).trans_lt <| div_lt_self (div_pos hq h₀) one_lt_two
    exact ((H₁ hξ₁).trans_lt hξ₂).false

end ArithmeticFunction.vonMangoldt

end arith_prog

/-!
### Dirichlet's Theorem
-/

section DirichletsTheorem

namespace Nat

open ArithmeticFunction vonMangoldt

variable {q : ℕ} [NeZero q] {a : ZMod q}

/-- **Dirichlet's Theorem** on primes in arithmetic progression: if `q` is a positive
integer and `a : ZMod q` is a unit, then there are infinitely many prime numbers `p`
such that `(p : ZMod q) = a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4dc098acc1ae00b08cc00185b830ece502f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
