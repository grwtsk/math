# psp_from_prime_psp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f63d140-8a6e-b6d4-512f-acdb52786c9d",
  "kind": "theorem",
  "lexical_name": "psp_from_prime_psp",
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
  "slug": "psp-from-prime-psp--62720096559aa77267e2dc99",
  "source": {
    "blob": "83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 207,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62720096559aa77267e2dc9994295376167d5483c0d47468d499ef80387076f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f63d140-8a6e-b6d4-512f-acdb52786c9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psp_from_prime_psp {b : ℕ} (b_ge_two : 2 ≤ b) {p : ℕ} (p_prime : p.Prime)
    (p_gt_two : 2 < p) (not_dvd : ¬p ∣ b * (b ^ 2 - 1)) : FermatPsp (psp_from_prime b p) b := by
  unfold psp_from_prime
  set A := (b ^ p - 1) / (b - 1)
  set B := (b ^ p + 1) / (b + 1)
  -- Inequalities
  have hA : p < A := a_id_helper b_ge_two p_gt_two
  have hi_A : 1 < A := by lia
  have hi_B : 1 < B := b_id_helper b_ge_two p_gt_two
  have hi_b : 0 < b := by lia
  have hi_bsquared : 0 < b ^ 2 - 1 := by
    have := Nat.pow_le_pow_left b_ge_two 2
    lia
  have hi_bpowtwop : 1 ≤ b ^ (2 * p) := Nat.one_le_pow (2 * p) b hi_b
  have hi_bpowpsubone : 1 ≤ b ^ (p - 1) := Nat.one_le_pow (p - 1) b hi_b
  -- Other useful facts
  have p_odd : Odd p := p_prime.odd_of_ne_two p_gt_two.ne.symm
  have AB_not_prime : ¬Nat.Prime (A * B) := Nat.not_prime_mul hi_A.ne' hi_B.ne'
  have AB_id : A * B = (b ^ (2 * p) - 1) / (b ^ 2 - 1) := AB_id_helper _ _ b_ge_two p_odd
  have hd : b ^ 2 - 1 ∣ b ^ (2 * p) - 1 := by
    simpa only [one_pow, pow_mul] using Nat.sub_dvd_pow_sub_pow _ 1 p
  -- We know that `A * B` is not prime, and that `1 < A * B`. Since two conditions of being
  -- pseudoprime are satisfied, we only need to show that `A * B` is probable prime to base `b`
  refine ⟨?_, AB_not_prime, one_lt_mul'' hi_A hi_B⟩
  -- Used to prove that `2 * p * (b ^ 2 - 1) ∣ (b ^ 2 - 1) * (A * B - 1)`.
  have ha₁ : (b ^ 2 - 1) * (A * B - 1) = b * (b ^ (p - 1) - 1) * (b ^ p + b) := by
    apply_fun fun x => x * (b ^ 2 - 1) at AB_id
    rw [Nat.div_mul_cancel hd] at AB_id
    apply_fun fun x => x - (b ^ 2 - 1) at AB_id
    nth_rw 2 [← one_mul (b ^ 2 - 1)] at AB_id
    rw [← Nat.mul_sub_right_distrib, mul_comm] at AB_id
    rw [AB_id]
    exact bp_helper hi_b (by grind)
  -- If `b` is even, then `b^p` is also even, so `2 ∣ b^p + b`
  -- If `b` is odd, then `b^p` is also odd, so `2 ∣ b^p + b`
  have ha₂ : 2 ∣ b ^ p + b := by
    rw [← even_iff_two_dvd, Nat.even_add, Nat.even_pow' p_prime.ne_zero]
  -- Since `b` isn't divisible by `p`, `b` is coprime with `p`. we can use Fermat's Little Theorem
  -- to prove this.
  have ha₃ : p ∣ b ^ (p - 1) - 1 := by
    have : ¬p ∣ b := mt (fun h : p ∣ b => dvd_mul_of_dvd_left h _) not_dvd
    have : p.Coprime b := Or.resolve_right (Nat.coprime_or_dvd_of_prime p_prime b) this
    have : IsCoprime (b : ℤ) ↑p := this.symm.isCoprime
    have : ↑b ^ (p - 1) ≡ 1 [ZMOD ↑p] := Int.ModEq.pow_card_sub_one_eq_one p_prime this
    have : ↑p ∣ ↑b ^ (p - 1) - ↑1 := mod_cast Int.ModEq.dvd (Int.ModEq.symm this)
    exact mod_cast this
  -- Because `p - 1` is even, there is a `c` such that `2 * c = p - 1`. `Nat.sub_dvd_pow_sub_pow`
  -- implies that `b ^ c - 1 ∣ (b ^ c) ^ 2 - 1`, and `(b ^ c) ^ 2 = b ^ (p - 1)`.
  have ha₄ : b ^ 2 - 1 ∣ b ^ (p - 1) - 1 := by
    obtain ⟨k, hk⟩ := p_odd
    have : 2 ∣ p - 1 := ⟨k, by simp [hk]⟩
    obtain ⟨c, hc⟩ := this
    have : b ^ 2 - 1 ∣ (b ^ 2) ^ c - 1 := by
      simpa only [one_pow] using Nat.sub_dvd_pow_sub_pow _ 1 c
    have : b ^ 2 - 1 ∣ b ^ (2 * c) - 1 := by rwa [← pow_mul] at this
    rwa [← hc] at this
  -- Used to prove that `2 * p` divides `A * B - 1`
  have ha₅ : 2 * p * (b ^ 2 - 1) ∣ (b ^ 2 - 1) * (A * B - 1) := by
    suffices q : 2 * p * (b ^ 2 - 1) ∣ b * (b ^ (p - 1) - 1) * (b ^ p + b) by rwa [ha₁]
    -- We already proved that `b ^ 2 - 1 ∣ b ^ (p - 1) - 1`.
    -- Since `2 ∣ b ^ p + b` and `p ∣ b ^ p + b`, if we show that 2 and p are coprime, then we
    -- know that `2 * p ∣ b ^ p + b`
    have q₁ : Nat.Coprime p (b ^ 2 - 1) :=
      haveI q₂ : ¬p ∣ b ^ 2 - 1 := by
        rw [mul_comm] at not_dvd
        exact mt (fun h : p ∣ b ^ 2 - 1 => dvd_mul_of_dvd_left h _) not_dvd
      (Nat.Prime.coprime_iff_not_dvd p_prime).mpr q₂
    have q₂ : p * (b ^ 2 - 1) ∣ b ^ (p - 1) - 1 := Nat.Coprime.mul_dvd_of_dvd_of_dvd q₁ ha₃ ha₄
    have q₃ : p * (b ^ 2 - 1) * 2 ∣ (b ^ (p - 1) - 1) * (b ^ p + b) := mul_dvd_mul q₂ ha₂
    have q₄ : p * (b ^ 2 - 1) * 2 ∣ b * ((b ^ (p - 1) - 1) * (b ^ p + b)) :=
      dvd_mul_of_dvd_right q₃ _
    rwa [mul_assoc, mul_comm, mul_assoc b]
  have ha₆ : 2 * p ∣ A * B - 1 := by
    rw [mul_comm] at ha₅
    exact Nat.dvd_of_mul_dvd_mul_left hi_bsquared ha₅
  -- `A * B` divides `b ^ (2 * p) - 1` because `A * B * (b ^ 2 - 1) = b ^ (2 * p) - 1`.
  -- This can be proven by multiplying both sides of `AB_id` by `b ^ 2 - 1`.
  have ha₇ : A * B ∣ b ^ (2 * p) - 1 := by
    use b ^ 2 - 1
    have : A * B * (b ^ 2 - 1) = (b ^ (2 * p) - 1) / (b ^ 2 - 1) * (b ^ 2 - 1) :=
      congr_arg (fun x : ℕ => x * (b ^ 2 - 1)) AB_id
    simpa only [add_comm, Nat.div_mul_cancel hd, Nat.sub_add_cancel hi_bpowtwop] using this.symm
  -- Since `2 * p ∣ A * B - 1`, there is a number `q` such that `2 * p * q = A * B - 1`.
  -- By `Nat.sub_dvd_pow_sub_pow`, we know that `b ^ (2 * p) - 1 ∣ b ^ (2 * p * q) - 1`.
  -- This means that `b ^ (2 * p) - 1 ∣ b ^ (A * B - 1) - 1`.
  obtain ⟨q, hq⟩ := ha₆
  have ha₈ : b ^ (2 * p) - 1 ∣ b ^ (A * B - 1) - 1 := by
    simpa only [one_pow, pow_mul, hq] using Nat.sub_dvd_pow_sub_pow _ 1 q
  -- We have proved that `A * B ∣ b ^ (2 * p) - 1` and `b ^ (2 * p) - 1 ∣ b ^ (A * B - 1) - 1`.
  -- Therefore, `A * B ∣ b ^ (A * B - 1) - 1`.
  exact dvd_trans ha₇ ha₈

/--
This is a proof that the number produced using `psp_from_prime` is greater than the prime `p` used
to create it. The primary purpose of this lemma is to help prove `exists_infinite_pseudoprimes`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
