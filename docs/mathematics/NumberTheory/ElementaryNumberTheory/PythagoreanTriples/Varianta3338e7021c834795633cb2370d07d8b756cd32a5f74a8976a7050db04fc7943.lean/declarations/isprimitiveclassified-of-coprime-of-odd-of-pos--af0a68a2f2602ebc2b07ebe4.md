# isPrimitiveClassified_of_coprime_of_odd_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f34b17b-2174-9683-5303-2322ea3075d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96e8e470-a8ee-7f55-3cc6-09fd4a842daa",
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
  "slug": "isprimitiveclassified-of-coprime-of-odd-of-pos--af0a68a2f2602ebc2b07ebe4",
  "source": {
    "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 457,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0a68a2f2602ebc2b07ebe481c0a626cb264f2bd973c485cfee2a68f849696e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e8e470-a8ee-7f55-3cc6-09fd4a842daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimitiveClassified_of_coprime_of_odd_of_pos (hc : Int.gcd x y = 1) (hyo : y % 2 = 1)
    (hzpos : 0 < z) : h.IsPrimitiveClassified := by
  by_cases h0 : x = 0
  · exact h.isPrimitiveClassified_of_coprime_of_zero_left hc h0
  let v := (x : ℚ) / z
  let w := (y : ℚ) / z
  have hq : v ^ 2 + w ^ 2 = 1 := by
    field_simp [sq]
    norm_cast
  have hvz : v ≠ 0 := by
    field_simp
    exact h0
  have hw1 : w ≠ -1 := by
    contrapose! hvz with hw1
    -- porting note: `contrapose` unfolds local names, refold them
    replace hw1 : w = -1 := hw1; show v = 0
    rw [hw1, neg_sq, one_pow, add_left_eq_self] at hq
    exact pow_eq_zero hq
  have hQ : ∀ x : ℚ, 1 + x ^ 2 ≠ 0 := by
    intro q
    apply ne_of_gt
    exact lt_add_of_pos_of_le zero_lt_one (sq_nonneg q)
  have hp : (⟨v, w⟩ : ℚ × ℚ) ∈ { p : ℚ × ℚ | p.1 ^ 2 + p.2 ^ 2 = 1 ∧ p.2 ≠ -1 } := ⟨hq, hw1⟩
  let q := (circleEquivGen hQ).symm ⟨⟨v, w⟩, hp⟩
  have ht4 : v = 2 * q / (1 + q ^ 2) ∧ w = (1 - q ^ 2) / (1 + q ^ 2) := by
    apply Prod.mk.inj
    have := ((circleEquivGen hQ).apply_symm_apply ⟨⟨v, w⟩, hp⟩).symm
    exact congr_arg Subtype.val this
  let m := (q.den : ℤ)
  let n := q.num
  have hm0 : m ≠ 0 := by
    norm_cast
    apply Rat.den_nz q
  have hq2 : q = n / m := (Rat.num_div_den q).symm
  have hm2n2 : 0 < m ^ 2 + n ^ 2 := by
    apply lt_add_of_pos_of_le _ (sq_nonneg n)
    exact lt_of_le_of_ne (sq_nonneg m) (Ne.symm (pow_ne_zero 2 hm0))
  have hm2n20 : (m : ℚ) ^ 2 + (n : ℚ) ^ 2 ≠ 0 := by
    norm_cast
    simpa only [Int.coe_nat_pow] using ne_of_gt hm2n2
  have hx1 {j k : ℚ} (h₁ : k ≠ 0) (h₂ : k ^ 2 + j ^ 2 ≠ 0) :
      (1 - (j / k) ^ 2) / (1 + (j / k) ^ 2) = (k ^ 2 - j ^ 2) / (k ^ 2 + j ^ 2) :=
    by field_simp
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
  cases' Int.emod_two_eq_zero_or_one m with hm2 hm2 <;>
    cases' Int.emod_two_eq_zero_or_one n with hn2 hn2
  · -- m even, n even
    exfalso
    have h1 : 2 ∣ (Int.gcd n m : ℤ) :=
      Int.dvd_gcd (Int.dvd_of_emod_eq_zero hn2) (Int.dvd_of_emod_eq_zero hm2)
    rw [hnmcp] at h1
    revert h1
    norm_num
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
        rw [Int.ediv_mul_cancel h1.1, Int.ediv_mul_cancel h1.2.1, hw2]
        norm_cast
      · apply (mul_lt_mul_right (by norm_num : 0 < (2 : ℤ))).mp
        rw [Int.ediv_mul_cancel h1.1, zero_mul]
        exact hm2n2
    rw [h2.1, h1.2.2.1] at hyo
    revert hyo
    norm_num
#align pythagorean_triple.is_primitive_classified_of_coprime_of_odd_of_pos PythagoreanTriple.isPrimitiveClassified_of_coprime_of_odd_of_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be1ba662c7674a80f7812d8e40933b02bd9c4d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
