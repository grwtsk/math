# OxfordInvariants.Week3P1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ea6243aef1baeebad5f458ec7d2de076bca4c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb09e12f5169b05d5fa69221ab39b48724d7d6c35536f7778f5ac3fa80a6d4d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b63c7ea9-12da-54ad-f8d4-73a95f770a88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd3eaa36-062d-49f2-d38f-0d7c5c1b8630",
  "kind": "theorem",
  "lexical_name": "OxfordInvariants.Week3P1",
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
  "slug": "oxfordinvariants-week3p1--f6223046fddbfe6629391be7",
  "source": {
    "blob": "4ea6243aef1baeebad5f458ec7d2de076bca4c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 77,
    "path": "GRWTSK/Algebra/Week3P1/Variantfb09e12f5169b05d5fa69221ab39b48724d7d6c35536f7778f5ac3fa80a6d4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6223046fddbfe6629391be7abde09c8f90486865c69f0d2f6df77399ac19489",
  "verification": {
    "reference": "docs/verification/Algebra/Week3P1/Variantfb09e12f5169b05d5fa69221ab39b48724d7d6c35536f7778f5ac3fa80a6d4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd3eaa36-062d-49f2-d38f-0d7c5c1b8630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OxfordInvariants.Week3P1 (n : ℕ) (a : ℕ → ℕ) (a_pos : ∀ i ≤ n, 0 < a i)
    (ha : ∀ i, i + 2 ≤ n → a (i + 1) ∣ a i + a (i + 2)) :
    ∃ b : ℕ, (b : α) = ∑ i in Finset.range n, (a 0 : α) * a n / (a i * a (i + 1)) := by
  -- Treat separately `n = 0` and `n ≥ 1`
  cases' n with n
  /- Case `n = 0`
    The sum is trivially equal to `0` -/
  · exact ⟨0, by rw [Nat.cast_zero, Finset.sum_range_zero]⟩
  -- `⟨Claim it, Prove it⟩`
  /- Case `n ≥ 1`. We replace `n` by `n + 1` everywhere to make this inequality explicit
    Set up the stronger induction hypothesis -/
  rsuffices ⟨b, hb, -⟩ :
    ∃ b : ℕ,
      (b : α) = ∑ i in Finset.range (n + 1), (a 0 : α) * a (n + 1) / (a i * a (i + 1)) ∧
        a (n + 1) ∣ a n * b - a 0
  · exact ⟨b, hb⟩
  simp_rw [← @Nat.cast_pos α] at a_pos
  /- Declare the induction
    `ih` will be the induction hypothesis -/
  induction' n with n ih
  /- Base case
    Claim that the sum equals `1`-/
  · refine' ⟨1, _, _⟩
    -- Check that this indeed equals the sum
    · rw [Nat.cast_one, Finset.sum_range_one]
      norm_num
      rw [div_self]
      exact (mul_pos (a_pos 0 (Nat.zero_le _)) (a_pos 1 (Nat.zero_lt_succ _))).ne'
    -- Check the divisibility condition
    · rw [mul_one, tsub_self]
      exact dvd_zero _
  /- Induction step
    `b` is the value of the previous sum as a natural, `hb` is the proof that it is indeed the
    value, and `han` is the divisibility condition -/
  obtain ⟨b, hb, han⟩ :=
    ih (fun i hi => ha i <| Nat.le_succ_of_le hi) fun i hi => a_pos i <| Nat.le_succ_of_le hi
  specialize ha n le_rfl
  have ha₀ : a 0 ≤ a n * b := by
    -- Needing this is an artifact of `ℕ`-subtraction.
    rw [← @Nat.cast_le α, Nat.cast_mul, hb, ←
      div_le_iff' (a_pos _ <| n.le_succ.trans <| Nat.le_succ _), ←
      mul_div_mul_right _ _ (a_pos _ <| Nat.le_succ _).ne']
    suffices h : ∀ i, i ∈ Finset.range (n + 1) → 0 ≤ (a 0 : α) * a (n + 1) / (a i * a (i + 1))
    · exact Finset.single_le_sum h (Finset.self_mem_range_succ n)
    refine' fun i _ => div_nonneg _ _ <;> refine' mul_nonneg _ _ <;> exact Nat.cast_nonneg _
  -- Claim that the sum equals `(aₙ + aₙ₊₂)/aₙ₊₁ * b - (aₙ * b - a₀)/aₙ₊₁`
  refine' ⟨(a n + a (n + 2)) / a (n + 1) * b - (a n * b - a 0) / a (n + 1), _, _⟩
  -- Check that this indeed equals the sum
  · calc
      (((a n + a (n + 2)) / a (n + 1) * b - (a n * b - a 0) / a (n + 1) : ℕ) : α) =
          ((a n + a (n + 2)) / a (n + 1) * b - (a n * b - a 0) / a (n + 1) ) := by
        have :((a (n + 1)) : α) ≠ 0 := ne_of_gt <| a_pos (n + 1) <| Nat.le_succ (n + 1)
        simp only [← Nat.cast_add, ← Nat.cast_div ha this, ← Nat.cast_mul, ← Nat.cast_sub ha₀,
            ← Nat.cast_div han this]
        rw [Nat.cast_sub (Nat.div_le_of_le_mul _)]
        rw [← mul_assoc, Nat.mul_div_cancel' ha, add_mul]
        exact tsub_le_self.trans (Nat.le_add_right _ _)
      _ = a (n + 2) / a (n + 1) * b + a 0 * a (n + 2) / (a (n + 1) * a (n + 2)) := by
        rw [add_div, add_mul, sub_div, mul_div_right_comm, add_sub_sub_cancel,
          mul_div_mul_right _ _ (a_pos _ le_rfl).ne']
      _ = ∑ i : ℕ in Finset.range (n + 2), (a 0 : α) * a (n + 2) / (a i * a (i + 1)) := by
        rw [Finset.sum_range_succ, hb, Finset.mul_sum]
        congr; ext i
        rw [← mul_div_assoc, ← mul_div_right_comm, mul_div_assoc,
          mul_div_cancel _ (a_pos _ <| Nat.le_succ _).ne', mul_comm]
  -- Check the divisibility condition
  · rw [mul_tsub, ← mul_assoc, Nat.mul_div_cancel' ha, add_mul, Nat.mul_div_cancel' han,
      add_tsub_tsub_cancel ha₀, add_tsub_cancel_right]
    exact dvd_mul_right _ _
#align oxford_invariants.week3_p1 OxfordInvariants.Week3P1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Week3P1/Variantfb09e12f5169b05d5fa69221ab39b48724d7d6c35536f7778f5ac3fa80a6d4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Week3P1/Variantfb09e12f5169b05d5fa69221ab39b48724d7d6c35536f7778f5ac3fa80a6d4d7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea6243aef1baeebad5f458ec7d2de076bca4c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
