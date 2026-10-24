# prime_gap_record.hasPrimeInInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:477b904b-df08-d7f0-5af5-5a94ced0a270",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1b1f74f-1f77-1826-79bd-b0109edb937a",
  "kind": "lemma",
  "lexical_name": "prime_gap_record.hasPrimeInInterval",
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
  "slug": "prime-gap-record-hasprimeininterval--6c6a978dc5388563a2d7e9d4",
  "source": {
    "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 215,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c6a978dc5388563a2d7e9d47302b537e32eb22bdfbb9fcab01880e3b157ac59",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b1f74f-1f77-1826-79bd-b0109edb937a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prime_gap_record.hasPrimeInInterval {g p : ℕ} {x h : ℝ}
    (hgap : prime_gap_record p g) (hx : x ≤ p) (hx_ge_two : x ≥ 2) (hh : h ≥ g) :
    HasPrimeInInterval x h := by
  rcases hgap with ⟨n, hn_p, hn_g, hrec⟩
  let m : ℕ := ⌊x⌋₊
  let k : ℕ := m.primeCounting
  let q : ℕ := nth_prime k
  have hk_count : k = Nat.count Nat.Prime (m + 1) := by
    simp [k, Nat.primeCounting, Nat.primeCounting']
  have hx_nonneg : 0 ≤ x := by linarith
  have hm_le_x : (m : ℝ) ≤ x := Nat.floor_le hx_nonneg
  have hm_ge_two : 2 ≤ m := Nat.le_floor hx_ge_two
  have hk_pos : 0 < k := by
    by_contra hk0
    have hk0' : k = 0 := Nat.eq_zero_of_not_pos hk0
    have hm_le_one : m ≤ 1 := Nat.primeCounting_eq_zero_iff.mp (by simpa [k] using hk0')
    exact (not_le_of_gt hm_ge_two) hm_le_one
  have hm_lt_q : m < q := by
    have hmq : m + 1 ≤ q := by
      exact (Nat.count_le_iff_le_nth (p := Nat.Prime) infinite_setOf_prime).1 (by simp [hk_count])
    exact lt_of_lt_of_le (Nat.lt_succ_self m) hmq
  have hq_prime : Nat.Prime q := by simp [q]
  have hq_le_m_add_g : q ≤ m + g := by
    have hk1 : k - 1 < k := Nat.sub_lt (Nat.succ_le_of_lt hk_pos) (by norm_num)
    have hprev_le_m : nth_prime (k - 1) ≤ m := by
      have hprev_lt : nth_prime (k - 1) < m + 1 := by
        exact (Nat.lt_nth_iff_count_lt (p := Nat.Prime) infinite_setOf_prime).1
          (by simpa [hk_count] using hk1)
      exact Nat.lt_succ_iff.mp hprev_lt
    have hm_le_p : m ≤ p := by
      exact Nat.cast_le.mp (le_trans hm_le_x hx)
    have hprev_le_p : nth_prime (k - 1) ≤ p := by
      exact le_trans hprev_le_m hm_le_p
    have hgap_prev_le : nth_prime_gap (k - 1) ≤ g := by
      by_cases hlt : nth_prime (k - 1) < p
      · exact Nat.le_of_lt (hrec (k - 1) hlt)
      · have heq : nth_prime (k - 1) = p := le_antisymm hprev_le_p (le_of_not_gt hlt)
        have hk1_eq_n : k - 1 = n := by
          apply (nth_strictMono infinite_setOf_prime).injective
          simpa [hn_p] using heq
        simp [nth_prime_gap, hk1_eq_n, hn_g]
    have hmono : nth_prime (k - 1) ≤ nth_prime (k - 1 + 1) :=
      (nth_strictMono infinite_setOf_prime).monotone (Nat.le_succ _)
    have : q = nth_prime (k - 1) + nth_prime_gap (k - 1) := by
      have hk' : k - 1 + 1 = k := Nat.sub_add_cancel (Nat.succ_le_of_lt hk_pos)
      calc
        q = nth_prime (k - 1 + 1) := by simp [q, hk']
        _ = nth_prime (k - 1) + (nth_prime (k - 1 + 1) - nth_prime (k - 1)) := by
          exact (Nat.add_sub_of_le hmono).symm
        _ = nth_prime (k - 1) + nth_prime_gap (k - 1) := by simp [nth_prime_gap]
    calc
      q = nth_prime (k - 1) + nth_prime_gap (k - 1) := this
      _ ≤ m + g := by gcongr
  refine ⟨q, hq_prime, ?_, ?_⟩
  · have hx_lt_m1 : x < (m : ℝ) + 1 := by simpa [m] using (Nat.lt_floor_add_one x)
    have hm1_le_q : (m : ℝ) + 1 ≤ q := by exact_mod_cast (Nat.succ_le_iff.mpr hm_lt_q)
    exact lt_of_lt_of_le hx_lt_m1 hm1_le_q
  · have hq_le_xhg : (q : ℝ) ≤ x + h := by
      have hq_le : (q : ℝ) ≤ m + g := by exact_mod_cast hq_le_m_add_g
      linarith
    exact hq_le_xhg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e97a91adcba4fe274cbb67c931e9bb414eb650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
