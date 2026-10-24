# not_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5d02812a54e9265ede7657a1ab72565b0c817d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48256abb-4436-709f-b9af-e359ac064ba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ba9287f-2ff9-5ee2-741a-6dcaac1265bb",
  "kind": "theorem",
  "lexical_name": "not_minimal",
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
  "slug": "not-minimal--3a3005aac862e7ae53d8339b",
  "source": {
    "blob": "a5d02812a54e9265ede7657a1ab72565b0c817d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 168,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a3005aac862e7ae53d8339b0c93602a1fe89cf1a664b67a9824bc636d02e877",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ba9287f-2ff9-5ee2-741a-6dcaac1265bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_minimal {a b c : ℤ} (h : Minimal a b c) (ha2 : a % 2 = 1) (hc : 0 < c) : False := by
  -- Use the fact that a ^ 2, b ^ 2, c form a pythagorean triple to obtain m and n such that
  -- a ^ 2 = m ^ 2 - n ^ 2, b ^ 2 = 2 * m * n and c = m ^ 2 + n ^ 2
  -- first the formula:
  have ht : PythagoreanTriple (a ^ 2) (b ^ 2) c := by
    delta PythagoreanTriple
    linear_combination h.1.2.2
  -- coprime requirement:
  have h2 : Int.gcd (a ^ 2) (b ^ 2) = 1 := Int.gcd_eq_one_iff_coprime.mpr (coprime_of_minimal h).pow
  -- in order to reduce the possibilities we get from the classification of pythagorean triples
  -- it helps if we know the parity of a ^ 2 (and the sign of c):
  have ha22 : a ^ 2 % 2 = 1 := by
    rw [sq, Int.mul_emod, ha2]
    norm_num
  obtain ⟨m, n, ht1, ht2, ht3, ht4, ht5, ht6⟩ := ht.coprime_classification' h2 ha22 hc
  -- Now a, n, m form a pythagorean triple and so we can obtain r and s such that
  -- a = r ^ 2 - s ^ 2, n = 2 * r * s and m = r ^ 2 + s ^ 2
  -- formula:
  have htt : PythagoreanTriple a n m := by
    delta PythagoreanTriple
    linear_combination ht1
  -- a and n are coprime, because a ^ 2 = m ^ 2 - n ^ 2 and m and n are coprime.
  have h3 : Int.gcd a n = 1 := by
    apply Int.gcd_eq_one_iff_coprime.mpr
    apply @IsCoprime.of_mul_left_left _ _ _ a
    rw [← sq, ht1, (by ring : m ^ 2 - n ^ 2 = m ^ 2 + -n * n)]
    exact (Int.gcd_eq_one_iff_coprime.mp ht4).pow_left.add_mul_right_left (-n)
  -- m is positive because b is non-zero and b ^ 2 = 2 * m * n and we already have 0 ≤ m.
  have hb20 : b ^ 2 ≠ 0 := mt pow_eq_zero h.1.2.1
  have h4 : 0 < m := by
    apply lt_of_le_of_ne ht6
    rintro rfl
    revert hb20
    rw [ht2]
    simp
  obtain ⟨r, s, _, htt2, htt3, htt4, htt5, htt6⟩ := htt.coprime_classification' h3 ha2 h4
  -- Now use the fact that (b / 2) ^ 2 = m * r * s, and m, r and s are pairwise coprime to obtain
  -- i, j and k such that m = i ^ 2, r = j ^ 2 and s = k ^ 2.
  -- m and r * s are coprime because m = r ^ 2 + s ^ 2 and r and s are coprime.
  have hcp : Int.gcd m (r * s) = 1 := by
    rw [htt3]
    exact
      Int.gcd_eq_one_iff_coprime.mpr (Int.coprime_of_sq_sum' (Int.gcd_eq_one_iff_coprime.mp htt4))
  -- b is even because b ^ 2 = 2 * m * n.
  have hb2 : 2 ∣ b := by
    apply @Int.Prime.dvd_pow' _ 2 _ Nat.prime_two
    rw [ht2, mul_assoc]
    exact dvd_mul_right 2 (m * n)
  cases' hb2 with b' hb2'
  have hs : b' ^ 2 = m * (r * s) := by
    apply (mul_right_inj' (by norm_num : (4 : ℤ) ≠ 0)).mp
    linear_combination (-b - 2 * b') * hb2' + ht2 + 2 * m * htt2
  have hrsz : r * s ≠ 0 := by
    -- because b ^ 2 is not zero and (b / 2) ^ 2 = m * (r * s)
    by_contra hrsz
    revert hb20
    rw [ht2, htt2, mul_assoc, @mul_assoc _ _ _ r s, hrsz]
    simp
  have h2b0 : b' ≠ 0 := by
    apply ne_zero_pow two_ne_zero
    rw [hs]
    apply mul_ne_zero
    · exact ne_of_gt h4
    · exact hrsz
  obtain ⟨i, hi⟩ := Int.sq_of_gcd_eq_one hcp hs.symm
  -- use m is positive to exclude m = - i ^ 2
  have hi' : ¬m = -i ^ 2 := by
    by_contra h1
    have hit : -i ^ 2 ≤ 0
    apply neg_nonpos.mpr (sq_nonneg i)
    rw [← h1] at hit
    apply absurd h4 (not_lt.mpr hit)
  replace hi : m = i ^ 2
  · apply Or.resolve_right hi hi'
  rw [mul_comm] at hs
  rw [Int.gcd_comm] at hcp
  -- obtain d such that r * s = d ^ 2
  obtain ⟨d, hd⟩ := Int.sq_of_gcd_eq_one hcp hs.symm
  -- (b / 2) ^ 2 and m are positive so r * s is positive
  have hd' : ¬r * s = -d ^ 2 := by
    by_contra h1
    rw [h1] at hs
    have h2 : b' ^ 2 ≤ 0 := by
      rw [hs, (by ring : -d ^ 2 * m = -(d ^ 2 * m))]
      exact neg_nonpos.mpr ((zero_le_mul_right h4).mpr (sq_nonneg d))
    have h2' : 0 ≤ b' ^ 2 := by apply sq_nonneg b'
    exact absurd (lt_of_le_of_ne h2' (Ne.symm (pow_ne_zero _ h2b0))) (not_lt.mpr h2)
  replace hd : r * s = d ^ 2
  · apply Or.resolve_right hd hd'
  -- r = +/- j ^ 2
  obtain ⟨j, hj⟩ := Int.sq_of_gcd_eq_one htt4 hd
  have hj0 : j ≠ 0 := by
    intro h0
    rw [h0, zero_pow zero_lt_two, neg_zero, or_self_iff] at hj
    apply left_ne_zero_of_mul hrsz hj
  rw [mul_comm] at hd
  rw [Int.gcd_comm] at htt4
  -- s = +/- k ^ 2
  obtain ⟨k, hk⟩ := Int.sq_of_gcd_eq_one htt4 hd
  have hk0 : k ≠ 0 := by
    intro h0
    rw [h0, zero_pow zero_lt_two, neg_zero, or_self_iff] at hk
    apply right_ne_zero_of_mul hrsz hk
  have hj2 : r ^ 2 = j ^ 4 := by
    cases' hj with hjp hjp <;>
      · rw [hjp]
        ring
  have hk2 : s ^ 2 = k ^ 4 := by
    cases' hk with hkp hkp <;>
      · rw [hkp]
        ring
  -- from m = r ^ 2 + s ^ 2 we now get a new solution to a ^ 4 + b ^ 4 = c ^ 2:
  have hh : i ^ 2 = j ^ 4 + k ^ 4 := by rw [← hi, htt3, hj2, hk2]
  have hn : n ≠ 0 := by
    rw [ht2] at hb20
    apply right_ne_zero_of_mul hb20
  -- and it has a smaller c: from c = m ^ 2 + n ^ 2 we see that m is smaller than c, and i ^ 2 = m.
  have hic : Int.natAbs i < Int.natAbs c := by
    apply Int.ofNat_lt.mp
    rw [← Int.eq_natAbs_of_zero_le (le_of_lt hc)]
    apply gt_of_gt_of_ge _ (Int.natAbs_le_self_sq i)
    rw [← hi, ht3]
    apply gt_of_gt_of_ge _ (Int.le_self_sq m)
    exact lt_add_of_pos_right (m ^ 2) (sq_pos_of_ne_zero n hn)
  have hic' : Int.natAbs c ≤ Int.natAbs i := by
    apply h.2 j k i
    exact ⟨hj0, hk0, hh.symm⟩
  apply absurd (not_le_of_lt hic) (not_not.mpr hic')
#align fermat_42.not_minimal Fermat42.not_minimal

end Fermat42

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d02812a54e9265ede7657a1ab72565b0c817d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
