# primeCounting_le_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e5857ca-51d2-cd48-999d-4fb043a01b14",
  "kind": "lemma",
  "lexical_name": "primeCounting_le_bound",
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
  "slug": "primecounting-le-bound--8c4a5df7029e0ee8aa76b813",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2859,
    "line": 2809,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4a5df7029e0ee8aa76b813d68637836ccae4a175ad9415bce2096fb7749511",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e5857ca-51d2-cd48-999d-4fb043a01b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2809–2859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primeCounting_le_bound (n : ℕ) (hn : 2 ≤ n) :
    (Nat.primeCounting n : ℝ) ≤ Real.sqrt n + (2 * n * Real.log 4) / Real.log n := by
  have h_sum_log_bound :
      (∑ p ∈ filter Prime (Icc 1 n), Real.log p) ≤ n * Real.log 4 := by
    have h_prod_le : (∏ p ∈ filter Prime (Icc 1 n), p : ℕ) ≤ 4 ^ n := by
      convert primorial_le_four_pow n using 1; congr 1 with (_ | p) <;> aesop
    have h_prod_le_real : (∏ p ∈ filter Prime (Icc 1 n), (p : ℝ)) ≤ 4 ^ n := by
      rw [← cast_prod]; exact_mod_cast h_prod_le
    rw [← log_prod fun x hx ↦ cast_ne_zero.mpr <| Nat.Prime.ne_zero <| by aesop]
    have h_prod_pos : 0 < ∏ p ∈ filter Prime (Icc 1 n), (p : ℝ) :=
      prod_pos fun p hp ↦ cast_pos.mpr <| Prime.pos <| by aesop
    simpa using log_le_log h_prod_pos h_prod_le_real
  have h_large_primes :
      (∑ p ∈ filter Prime (Icc (⌊Real.sqrt n⌋₊ + 1) n), Real.log p) ≥
      (primeCounting n - primeCounting ⌊Real.sqrt n⌋₊) * Real.log (Real.sqrt n) := by
    have h_log_lower : ∀ p ∈ Finset.filter Prime (Icc (⌊Real.sqrt n⌋₊ + 1) n),
        Real.log p ≥ Real.log (Real.sqrt n) := fun p hp ↦ log_le_log (by positivity)
        (le_trans (lt_floor_add_one _ |> le_of_lt)
          (mod_cast (Finset.mem_Icc.mp (mem_filter.mp hp).1).1))
    refine le_trans ?_ (sum_le_sum h_log_lower)
    norm_num [primeCounting, primeCounting', count_eq_card_filter_range]
    rw [show Finset.filter Prime (Icc (n.sqrt + 1) n) =
      Finset.filter Prime (range (n + 1)) \
        filter Nat.Prime (range (n.sqrt + 1)) from ?_, card_sdiff]
    · rw [cast_sub]
      · rw [inter_eq_left.mpr
          (filter_subset_filter _ <| range_mono <| succ_le_succ <| sqrt_le_self _)]
      · exact card_mono inter_subset_right
    · ext
      simp [Finset.mem_Icc, Finset.mem_range, mem_sdiff]
      grind
  have h_combined :
      (Nat.primeCounting n - Nat.primeCounting ⌊Real.sqrt n⌋₊) * Real.log (Real.sqrt n) ≤
      n * Real.log 4 := by
    refine le_trans h_large_primes <| h_sum_log_bound.trans' <| sum_le_sum_of_subset_of_nonneg ?_
        (fun _ _ _ ↦ log_nonneg <| one_le_cast.mpr <| Prime.pos <| by aesop)
    exact filter_subset_filter _ <| Icc_subset_Icc (succ_pos _) le_rfl
  have h_trivial : primeCounting ⌊Real.sqrt n⌋₊ ≤ Real.sqrt n := by
    have : primeCounting ⌊Real.sqrt n⌋₊ ≤ ⌊Real.sqrt n⌋₊ := by
      rw [primeCounting, primeCounting', count_eq_card_filter_range]
      calc (Finset.filter Prime (range (⌊Real.sqrt n⌋₊ + 1))).card
          ≤ (Finset.Ico 2 (⌊Real.sqrt n⌋₊ + 1)).card :=
            card_le_card fun x hx ↦ Finset.mem_Ico.mpr
            ⟨Prime.two_le (mem_filter.mp hx).2, Finset.mem_range.mp (mem_filter.mp hx).1⟩
        _ ≤ ⌊Real.sqrt n⌋₊ := by simp
    exact le_trans (cast_le.mpr this) (floor_le (sqrt_nonneg _))
  rw [log_sqrt (cast_nonneg _)] at h_combined
  rw [add_div', le_div_iff₀] <;> nlinarith [log_pos <| show (n : ℝ) > 1 by norm_cast,
    log_le_sub_one_of_pos <| show (n : ℝ) > 0 by positivity]

/-- The ratio `π(n) / n → 0` as `n → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2809).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
