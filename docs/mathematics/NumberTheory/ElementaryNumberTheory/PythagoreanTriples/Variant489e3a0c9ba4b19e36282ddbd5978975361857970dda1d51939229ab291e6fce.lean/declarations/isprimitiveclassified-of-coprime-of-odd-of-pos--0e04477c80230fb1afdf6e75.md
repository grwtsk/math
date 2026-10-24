# isPrimitiveClassified_of_coprime_of_odd_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36aae5c7-d7ed-cbc3-9b66-a391ca1061a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16cd8d15-5a39-b893-f1f8-847e9fd5e6cc",
  "kind": "theorem",
  "lexical_name": "isPrimitiveClassified_of_coprime_of_odd_of_pos",
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
  "slug": "isprimitiveclassified-of-coprime-of-odd-of-pos--0e04477c80230fb1afdf6e75",
  "source": {
    "blob": "a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 432,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e04477c80230fb1afdf6e75bbf64c4731ec5b10f313f1d267bbcc4eba05fb89",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16cd8d15-5a39-b893-f1f8-847e9fd5e6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimitiveClassified_of_coprime_of_odd_of_pos (hc : Int.gcd x y = 1) (hyo : y % 2 = 1)
    (hzpos : 0 < z) : h.IsPrimitiveClassified := by
  by_cases h0 : x = 0
  · exact h.isPrimitiveClassified_of_coprime_of_zero_left hc h0
  let v := (x : ℚ) / z
  let w := (y : ℚ) / z
  have hq : v ^ 2 + w ^ 2 = 1 := by
    field_simp [v, w, sq]
    norm_cast
  have hvz : v ≠ 0 := by
    field_simp [v]
    exact h0
  have hw1 : w ≠ -1 := by
    contrapose! hvz with hw1
    rw [hw1, neg_sq, one_pow, add_eq_right] at hq
    exact pow_eq_zero hq
  have hQ : ∀ x : ℚ, 1 + x ^ 2 ≠ 0 := by
    intro q
    apply ne_of_gt
    exact lt_add_of_pos_of_le zero_lt_one (sq_nonneg q)
  have hp : (⟨v, w⟩ : ℚ × ℚ) ∈ { p : ℚ × ℚ | p.1 ^ 2 + p.2 ^ 2 = 1 ∧ p.2 ≠ -1 } := ⟨hq, hw1⟩
  let q := (circleEquivGen hQ).symm ⟨⟨v, w⟩, hp⟩
  have ht4 : v = 2 * q / (1 + q ^ 2) ∧ w = (1 - q ^ 2) / (1 + q ^ 2) := by
    apply Prod.mk.inj
    exact congr_arg Subtype.val ((circleEquivGen hQ).apply_symm_apply ⟨⟨v, w⟩, hp⟩).symm
  let m := (q.den : ℤ)
  let n := q.num
  have hm0 : m ≠ 0 := by
    -- Added to adapt to https://github.com/leanprover/lean4/pull/2734.
    -- Without `unfold`, `norm_cast` can't see the coercion.
    -- One might try `zeta := true` in `Tactic.NormCast.derive`,
    -- but that seems to break many other things.
    unfold m
    norm_cast
    apply Rat.den_nz q
  have hq2 : q = n / m := (Rat.num_div_den q).symm
  have hm2n2 : 0 < m ^ 2 + n ^ 2 := by positivity
  have hm2n20 : (m ^ 2 + n ^ 2 : ℚ) ≠ 0 := by positivity
  have hx1 {j k : ℚ} (h₁ : k ≠ 0) (h₂ : k ^ 2 + j ^ 2 ≠ 0) :
      (1 - (j / k) ^ 2) / (1 + (j / k) ^ 2) = (k ^ 2 - j ^ 2) / (k ^ 2 + j ^ 2) := by
    field_simp
  have hw2 : w = ((m : ℚ) ^ 2 - (n : ℚ) ^ 2) / ((m : ℚ) ^ 2 + (n : ℚ) ^ 2) := by
    calc
      w = (1 - q ^ 2) / (1 + q ^ 2) := by apply ht4.2
      _ = (1 - (↑n / ↑m) ^ 2) / (1 + (↑n / ↑m) ^ 2) := by rw [hq2]
      _ = _ := by exact hx1 (Int.cast_ne_zero.mpr hm0) hm2n20
  have hx2 {j k : ℚ} (h₁ : k ≠ 0) (h₂ : k ^ 2 + j ^ 2 ≠ 0) :
      2 * (j / k) / (1 + (j / k) ^ 2) = 2 * k * j / (k ^ 2 + j ^ 2) :=
    have h₃ : k * (k ^ 2 + j ^ 2) ≠ 0 := mul_ne_zero h₁ h₂
    by field_simp; ring
  have hv2 : v = 2 * m * n / ((m : ℚ) ^ 2 + (n : ℚ) ^ 2) := by
    calc
      v = 2 * q / (1 + q ^ 2) := by apply ht4.1
      _ = 2 * (n / m) / (1 + (↑n / ↑m) ^ 2) := by rw [hq2]
      _ = _ := by exact hx2 (Int.cast_ne_zero.mpr hm0) hm2n20
  have hnmcp : Int.gcd n m = 1 := q.reduced
  have hmncp : Int.gcd m n = 1 := by
    rw [Int.gcd_comm]
    exact hnmcp
  rcases Int.emod_two_eq_zero_or_one m with hm2 | hm2 <;>
    rcases Int.emod_two_eq_zero_or_one n with hn2 | hn2
  · -- m even, n even
    exfalso
    have h1 : 2 ∣ (Int.gcd n m : ℤ) :=
      Int.dvd_coe_gcd (Int.dvd_of_emod_eq_zero hn2) (Int.dvd_of_emod_eq_zero hm2)
    rw [hnmcp] at h1
    revert h1
    decide
  · -- m even, n odd
    apply h.isPrimitiveClassified_aux hc hzpos hm2n2 hv2 hw2 _ hmncp
    · apply Or.intro_left
      exact And.intro hm2 hn2
    · apply coprime_sq_sub_sq_add_of_even_odd hmncp hm2 hn2
  · -- m odd, n even
    apply h.isPrimitiveClassified_aux hc hzpos hm2n2 hv2 hw2 _ hmncp
    · apply Or.intro_right
      exact And.intro hm2 hn2
    apply coprime_sq_sub_sq_add_of_odd_even hmncp hm2 hn2
  · -- m odd, n odd
    exfalso
    have h1 :
      2 ∣ m ^ 2 + n ^ 2 ∧
        2 ∣ m ^ 2 - n ^ 2 ∧
          (m ^ 2 - n ^ 2) / 2 % 2 = 0 ∧ Int.gcd ((m ^ 2 - n ^ 2) / 2) ((m ^ 2 + n ^ 2) / 2) = 1 :=
      coprime_sq_sub_sq_sum_of_odd_odd hmncp hm2 hn2
    have h2 : y = (m ^ 2 - n ^ 2) / 2 ∧ z = (m ^ 2 + n ^ 2) / 2 := by
      apply Rat.div_int_inj hzpos _ (h.coprime_of_coprime hc) h1.2.2.2
      · show w = _
        rw [← Rat.divInt_eq_div, ← Rat.divInt_mul_right (by norm_num : (2 : ℤ) ≠ 0)]
        rw [Int.ediv_mul_cancel h1.1, Int.ediv_mul_cancel h1.2.1, hw2, Rat.divInt_eq_div]
        norm_cast
      · apply (mul_lt_mul_right (by norm_num : 0 < (2 : ℤ))).mp
        rw [Int.ediv_mul_cancel h1.1, zero_mul]
        exact hm2n2
    norm_num [h2.1, h1.2.2.1] at hyo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
