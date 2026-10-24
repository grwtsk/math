# sum_sq_div_moebius_is_multiplicative_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0469e52a1dea229b348e0e5d72172ba91f8a1022",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5cff8ca-5843-82c8-8883-3712daa600b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c3dc11f-59cc-29a8-239d-ecdae906a86f",
  "kind": "lemma",
  "lexical_name": "sum_sq_div_moebius_is_multiplicative_explicit",
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
  "slug": "sum-sq-div-moebius-is-multiplicative-explicit--fc0b23d5d534b399d8256abc",
  "source": {
    "blob": "0469e52a1dea229b348e0e5d72172ba91f8a1022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 61,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc0b23d5d534b399d8256abc20e684033c9d5f7c5b75b73f32d9cade398ae698",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3dc11f-59cc-29a8-239d-ecdae906a86f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_sq_div_moebius_is_multiplicative_explicit : (sum_sq_div_moebius 1 = 1) ∧
    (∀ m n : ℕ, Nat.Coprime m n →
      sum_sq_div_moebius (m * n) = sum_sq_div_moebius m * sum_sq_div_moebius n) := by
  have h_map : ∀ m n, m.Coprime n →
      (Nat.divisors (m * n)).filter (fun d ↦ d ^ 2 ∣ m * n) =
        image (fun p : ℕ × ℕ ↦ p.1 * p.2)
          ((Nat.divisors m).filter (fun d ↦ d ^ 2 ∣ m) ×ˢ
            (Nat.divisors n).filter (fun d ↦ d ^ 2 ∣ n)) := by
    intro m n hmn
    ext d
    simp only [mem_filter, Nat.mem_divisors, ne_eq, mul_eq_zero, not_or, mem_image,
      mem_product, Prod.exists]
    refine ⟨fun hd ↦ ?_, ?_⟩
    swap
    · rintro ⟨a, b, ⟨⟨⟨ha₁, ha₂⟩, ha₃⟩, ⟨⟨hb₁, hb₂⟩, hb₃⟩⟩, rfl⟩
      exact ⟨⟨mul_dvd_mul ha₁ hb₁, ha₂, hb₂⟩, by convert mul_dvd_mul ha₃ hb₃ using 1; ring⟩
    obtain ⟨hd_div, hd_sq_div⟩ := hd
    obtain ⟨a, b, ha, hb, rfl⟩ : ∃ a b : ℕ, a ∣ m ∧ b ∣ n ∧ d = a * b :=
      Exists.imp (by grind) (Nat.dvd_mul.mp hd_div.1)
    simp_all only [mul_pow, not_false_eq_true, and_true]
    exact ⟨a, b, ⟨⟨ha, (hmn.coprime_dvd_left ha).pow_left 2 |>.dvd_of_dvd_mul_right <|
      dvd_of_mul_right_dvd hd_sq_div⟩, hb,
      (hmn.symm.coprime_dvd_left hb).pow_left 2 |>.dvd_of_dvd_mul_left <|
        dvd_of_mul_left_dvd hd_sq_div⟩, rfl⟩
  have h_sum : ∀ m n : ℕ, Nat.Coprime m n →
      ∑ d ∈ (Nat.divisors (m * n)).filter (fun d ↦ d ^ 2 ∣ m * n), (moebius d : ℤ) =
        ∑ a ∈ (Nat.divisors m).filter (fun d ↦ d ^ 2 ∣ m),
          ∑ b ∈ (Nat.divisors n).filter (fun d ↦ d ^ 2 ∣ n), (moebius (a * b) : ℤ) := by
    intro m n hmn
    rw [h_map m n hmn, sum_image, sum_product]
    intro p hp q hq h_eq
    have hp1_eq_q1 : p.1 = q.1 := by
      norm_num at *
      have hdvd : p.1 ∣ q.1 ∧ q.1 ∣ p.1 :=
        ⟨(hmn.coprime_dvd_left (by grind)).coprime_dvd_right (by grind) |>.dvd_of_dvd_mul_right <|
          h_eq ▸ dvd_mul_right _ _,
         (hmn.coprime_dvd_left (by grind)).coprime_dvd_right (by grind) |>.dvd_of_dvd_mul_right <|
          h_eq.symm ▸ dvd_mul_right _ _⟩
      exact Nat.dvd_antisymm hdvd.1 hdvd.2
    aesop
  have h_inner : ∀ m n, m.Coprime n → ∀ a ∈ (Nat.divisors m).filter (fun d ↦ d ^ 2 ∣ m),
      ∀ b ∈ (Nat.divisors n).filter (fun d ↦ d ^ 2 ∣ n),
        (moebius (a * b) : ℤ) = (moebius a : ℤ) * (moebius b : ℤ) := by
    intro m n hmn a ha b hb
    simp only [moebius, mem_filter, Nat.mem_divisors, ne_eq, Int.reduceNeg, coe_mk,
      mul_ite, ite_mul, zero_mul, mul_zero] at *
    split_ifs with h <;> simp_all only [Nat.squarefree_mul_iff, and_self, and_true, ne_eq,
      Int.reduceNeg, zero_eq_mul, pow_eq_zero_iff', neg_eq_zero, one_ne_zero,
      cardFactors_eq_zero_iff_eq_zero_or_one, not_or, false_and, or_self, and_false]
    · rw [← pow_add, cardFactors_mul]
      · intro a; simp_all [Int.reduceNeg]
      · intro a; simp_all [Int.reduceNeg]
    · exact h (hmn.coprime_dvd_left ha.1.1 |>.coprime_dvd_right hb.1.1)
  dsimp only [sum_sq_div_moebius]
  exact ⟨by simp [sum_filter], fun m n hmn ↦ by
    rw [h_sum m n hmn, sum_mul]
    exact sum_congr rfl fun i hi ↦ by
      rw [mul_sum]; exact sum_congr rfl fun j hj ↦ h_inner m n hmn i hi j hj⟩

/- For a prime power `p^k`, `sum_sq_div_moebius` is `1` if `k < 2` and `0` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantefbbe4222f529bbc6fcc4ecd57260c9726fa54befb8f596d2a91f99eefbf610c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0469e52a1dea229b348e0e5d72172ba91f8a1022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
