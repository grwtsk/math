# one_lt_of_not_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6327db5-10ba-08de-1ec0-ecd4d460a771",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1982994-26cb-c690-b68e-640ae53cb3f4",
  "kind": "lemma",
  "lexical_name": "one_lt_of_not_bounded",
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
  "slug": "one-lt-of-not-bounded--58a54b96a8a8aee348379619",
  "source": {
    "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 308,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a54b96a8a8aee34837961943d5869af5d25b94e5eca5535e9f8f2bf43c4113",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1982994-26cb-c690-b68e-640ae53cb3f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_lt_of_not_bounded (notbdd : ¬ ∀ n : ℕ, f n ≤ 1) {n₀ : ℕ} (hn₀ : 1 < n₀) : 1 < f n₀ := by
  contrapose! notbdd with h
  intro n
  have h_ineq1 {m : ℕ} (hm : 1 ≤ m) : f m ≤ n₀ * (logb n₀ m + 1) := by
    /- L is the string of digits of `n` in the base `n₀` -/
    set L := Nat.digits n₀ m
    calc
    f m ≤ (L.mapIdx fun i _ ↦ n₀ * f n₀ ^ i).sum := apply_le_sum_digits m hn₀
    _ ≤ (L.mapIdx fun _ _ ↦ (n₀ : ℝ)).sum := by
      simp only [List.mapIdx_eq_zipIdx_map, List.map_map]
      refine List.sum_le_sum fun ⟨i, a⟩ _ ↦ ?_
      simp only [Function.comp_apply, Function.uncurry_apply_pair]
      exact (mul_le_mul_of_nonneg_right (mod_cast le_refl n₀) (by positivity)).trans <|
        mul_le_of_le_one_right (by positivity) (pow_le_one₀ (by positivity) h)
    _ = n₀ * (Nat.log n₀ m + 1) := by
      rw [List.mapIdx_eq_zipIdx_map, List.eq_replicate_of_mem (a := (n₀ : ℝ)) (l := L.zipIdx.map _),
        List.sum_replicate, List.length_map, List.length_zipIdx, nsmul_eq_mul, mul_comm,
        Nat.digits_len n₀ m hn₀ (ne_zero_of_lt hm), Nat.cast_add_one]
      simp +contextual
    _ ≤ n₀ * (logb n₀ m + 1) := by gcongr; exact natLog_le_logb ..
  -- For h_ineq2 we need to exclude the case n = 0.
  rcases eq_or_ne n 0 with rfl | h₀
  · simp
  have h_ineq2 (k : ℕ) (hk : 0 < k) :
      f n ≤ (n₀ * (logb n₀ n + 1)) ^ (k : ℝ)⁻¹ * k ^ (k : ℝ)⁻¹ := by
    have : 0 ≤ logb n₀ n := logb_nonneg (one_lt_cast.mpr hn₀) (mod_cast Nat.one_le_of_lt h₀.bot_lt)
    calc
    f n = (f ↑(n ^ k)) ^ (k : ℝ)⁻¹ := by
      rw [Nat.cast_pow, map_pow, ← rpow_natCast, rpow_rpow_inv (by positivity) (by positivity)]
    _  ≤ (n₀ * (logb n₀ ↑(n ^ k) + 1)) ^ (k : ℝ)⁻¹ := by
      gcongr
      exact h_ineq1 <| one_le_pow₀ (one_le_iff_ne_zero.mpr h₀)
    _  = (n₀ * (k * logb n₀ n + 1)) ^ (k : ℝ)⁻¹ := by
      rw [Nat.cast_pow, logb_pow]
    _  ≤ (n₀ * (k * logb n₀ n + k)) ^ (k : ℝ)⁻¹ := by
      gcongr
      exact one_le_cast.mpr hk
    _ = (n₀ * (logb n₀ n + 1)) ^ (k : ℝ)⁻¹ * k ^ (k : ℝ)⁻¹ := by
      rw [← mul_rpow (by positivity) (by positivity), mul_assoc, add_mul, one_mul,
        mul_comm _ (k : ℝ)]
-- For 0 < logb n₀ n below we also need to exclude n = 1.
  rcases eq_or_ne n 1 with rfl | h₁
  · simp
  refine le_of_tendsto_of_tendsto tendsto_const_nhds ?_ (eventually_atTop.mpr ⟨1, h_ineq2⟩)
  nth_rw 2 [← mul_one 1]
  have : 0 < logb n₀ n := logb_pos (mod_cast hn₀) (by norm_cast; omega)
  exact (tendsto_const_rpow_inv (by positivity)).mul tendsto_nat_rpow_inv

-- ## Step 2: given m, n ≥ 2 and |m| = m^s, |n| = n^t for s, t > 0, we have t ≤ s

variable {m n : ℕ} (hm : 1 < m) (hn : 1 < n) (notbdd : ¬ ∀ n : ℕ, f n ≤ 1)

include hm notbdd in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac74f5817575d5ab839eb460e5284b309bad584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
