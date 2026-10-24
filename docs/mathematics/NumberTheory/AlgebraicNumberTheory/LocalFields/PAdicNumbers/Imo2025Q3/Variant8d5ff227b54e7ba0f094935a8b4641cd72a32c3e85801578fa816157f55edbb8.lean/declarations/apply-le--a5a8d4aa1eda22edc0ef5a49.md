# apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83bdceb1-1dd8-8c2b-1a57-4daade13c2bd",
  "kind": "theorem",
  "lexical_name": "apply_le",
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
  "slug": "apply-le--a5a8d4aa1eda22edc0ef5a49",
  "source": {
    "blob": "5b0937d10f8a03d15058e87e045307623061c556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a8d4aa1eda22edc0ef5a491e7ef584b28ae36554edc2b05dad78f84e27cd43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83bdceb1-1dd8-8c2b-1a57-4daade13c2bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_le {f : ℕ → ℕ} (hf : IsBonza f) {n : ℕ} (hn : 0 < n) : f n ≤ 4 * n := by
  by_cases hnf : ∀ x > (0 : ℕ), f x = x
  · simp [hnf n hn]
    lia
  · obtain ⟨k, hk⟩ := hf.not_id_two_pow hnf n hn
    rcases n.even_or_odd with ch | ch
    · have apply_dvd_three_pow_sub_one : f n ∣ 3 ^ n - 1 := by
        have eq1 : f 3 = 1 := hf.apply_prime_gt_two_eq_one hnf 3 (by norm_num) prime_three
        have eq2 : (3 : ℤ) ^ n - 1 = (3 ^ n - 1 : ℕ) := by
          grind [natCast_pred_of_pos, pos_of_neZero]
        have := hf.1 n 3 hn (by norm_num)
        rwa [Nat.cast_ofNat, eq1, Nat.cast_one, one_pow, eq2, ofNat_dvd] at this
      rw [hk] at apply_dvd_three_pow_sub_one
      calc
        _ ≤ 2 ^ padicValNat 2 (3 ^ n - 1) := by
          rwa [hk, Nat.pow_le_pow_iff_right le.refl, ← padicValNat_dvd_iff_le
            (by grind [one_lt_pow])]
        _ = 4 * 2 ^ padicValNat 2 n := by
          have : padicValNat 2 (3 ^ n - 1) + 1 = 3 + padicValNat 2 n := by
            simpa [← factorization_def _ prime_two, ← primeFactorsList_count_eq] using
              padicValNat.pow_two_sub_one (show 1 < 3 by simp) (by simp) (by lia) ch
          have : padicValNat 2 (3 ^ n - 1) = 2 + padicValNat 2 n := by lia
          rw [congrArg (HPow.hPow 2) this, Nat.pow_add]
        _ ≤ _ := mul_le_mul_left 4 (le_of_dvd hn pow_padicValNat_dvd)
    · have : k = 0 := by
        by_contra! nh
        have : Odd (f n) := ch.pow.of_dvd_nat (hf.apply_dvd_pow hn)
        rw [hk, odd_pow_iff nh] at this
        contradiction
      simp [hk, this]
      lia

end fExample

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0937d10f8a03d15058e87e045307623061c556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
