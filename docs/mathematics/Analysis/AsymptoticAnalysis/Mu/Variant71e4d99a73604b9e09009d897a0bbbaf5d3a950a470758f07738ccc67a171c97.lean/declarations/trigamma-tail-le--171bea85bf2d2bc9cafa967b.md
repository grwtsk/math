# trigamma_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb0401d2-c1a9-5b29-1177-0c24ccbe4b76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a9a0299-2cc0-b43a-2eb3-c29ef2f931b8",
  "kind": "lemma",
  "lexical_name": "trigamma_tail_le",
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
  "slug": "trigamma-tail-le--171bea85bf2d2bc9cafa967b",
  "source": {
    "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 215,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:171bea85bf2d2bc9cafa967bf519b91d2fae20ced4436f2d633615a386612bdd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a9a0299-2cc0-b43a-2eb3-c29ef2f931b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trigamma_tail_le {t : ℝ} (ht : 1 / 2 ≤ |t|) :
    ∑' n : ℕ, (((1 / 4 : ℝ) + n) ^ 2 + t ^ 2)⁻¹ ≤ 12 / |t| := by
  have ht0 : (0 : ℝ) < |t| := by linarith
  have htsq : (0 : ℝ) < t ^ 2 := by
    have := sq_abs t
    nlinarith
  set N : ℕ := ⌈|t|⌉₊ + 2 with hN
  have hNt : |t| ≤ (N : ℝ) := by
    calc |t| ≤ (⌈|t|⌉₊ : ℝ) := Nat.le_ceil _
      _ ≤ (N : ℝ) := by
          rw [hN]
          push_cast
          linarith
  have hNle : (N : ℝ) ≤ |t| + 3 := by
    rw [hN]
    push_cast
    have := Nat.ceil_lt_add_one (abs_nonneg t)
    linarith
  have hsummable : Summable (fun n : ℕ => (((1 / 4 : ℝ) + n) ^ 2 + t ^ 2)⁻¹) := by
    refine Summable.of_norm_bounded_eventually
      (g := fun n : ℕ => (((n : ℝ)) ^ 2)⁻¹) ?_ ?_
    · have h3 := Real.summable_nat_rpow_inv.mpr (by norm_num : (1 : ℝ) < 2)
      have heq : (fun n : ℕ => ((n : ℝ) ^ (2 : ℝ))⁻¹) = fun n : ℕ => (((n : ℝ)) ^ 2)⁻¹ := by
        funext n
        rw [show ((2 : ℝ)) = ((2 : ℕ) : ℝ) by norm_num, Real.rpow_natCast]
      rwa [heq] at h3
    · rw [Nat.cofinite_eq_atTop]
      filter_upwards [Filter.eventually_ge_atTop 1] with n hn
      have hn1 : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
      rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
      gcongr
      nlinarith
  rw [← hsummable.sum_add_tsum_nat_add N]
  have hhead : ∑ i ∈ Finset.range N, (((1 / 4 : ℝ) + i) ^ 2 + t ^ 2)⁻¹
      ≤ (N : ℝ) * (t ^ 2)⁻¹ := by
    have h1 : ∀ i ∈ Finset.range N, (((1 / 4 : ℝ) + i) ^ 2 + t ^ 2)⁻¹ ≤ (t ^ 2)⁻¹ := by
      intro i _
      gcongr
      nlinarith [sq_nonneg ((1 / 4 : ℝ) + i)]
    calc ∑ i ∈ Finset.range N, (((1 / 4 : ℝ) + i) ^ 2 + t ^ 2)⁻¹
        ≤ ∑ _i ∈ Finset.range N, (t ^ 2)⁻¹ := Finset.sum_le_sum h1
      _ = (N : ℝ) * (t ^ 2)⁻¹ := by
          rw [Finset.sum_const, Finset.card_range]
          simp [nsmul_eq_mul]
  have htail : ∑' i : ℕ, (((1 / 4 : ℝ) + ((i + N : ℕ) : ℝ)) ^ 2 + t ^ 2)⁻¹
      ≤ ((N : ℝ) - 1)⁻¹ := by
    have hN2 : (2 : ℕ) ≤ N := by
      rw [hN]
      omega
    push_cast
    refine Real.tsum_le_of_sum_range_le (fun n => by positivity) fun K => ?_
    have hterm : ∀ i : ℕ, (((1 / 4 : ℝ) + (i + N)) ^ 2 + t ^ 2)⁻¹
        ≤ ((i : ℝ) + N - 1)⁻¹ - ((i : ℝ) + N)⁻¹ := by
      intro i
      have hiN1 : (1 : ℝ) ≤ (i : ℝ) + N - 1 := by
        have : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN2
        have := Nat.cast_nonneg (α := ℝ) i
        linarith
      have hpos1 : (0 : ℝ) < (i : ℝ) + N - 1 := by linarith
      have hpos2 : (0 : ℝ) < (i : ℝ) + N := by linarith
      have hsub : ((i : ℝ) + N - 1)⁻¹ - ((i : ℝ) + N)⁻¹
          = (((i : ℝ) + N - 1) * ((i : ℝ) + N))⁻¹ := by
        rw [inv_sub_inv hpos1.ne' hpos2.ne']
        ring_nf
      rw [hsub]
      have hd1 : (0 : ℝ) < ((i : ℝ) + N - 1) * ((i : ℝ) + N) := mul_pos hpos1 hpos2
      have hd2 : ((i : ℝ) + N - 1) * ((i : ℝ) + N)
          ≤ ((1 / 4 : ℝ) + ((i : ℝ) + (N : ℝ))) ^ 2 + t ^ 2 := by
        nlinarith [Nat.cast_nonneg (α := ℝ) i, sq_nonneg t]
      have h3 := one_div_le_one_div_of_le hd1 hd2
      simpa [one_div] using h3
    calc ∑ i ∈ Finset.range K, (((1 / 4 : ℝ) + (i + N)) ^ 2 + t ^ 2)⁻¹
        ≤ ∑ i ∈ Finset.range K, (((i : ℝ) + N - 1)⁻¹ - ((i : ℝ) + N)⁻¹) :=
          Finset.sum_le_sum fun i _ => hterm i
      _ = ((N : ℝ) - 1)⁻¹ - ((K : ℝ) + N - 1)⁻¹ := by
          have htel := Finset.sum_range_sub' (f := fun i : ℕ => ((i : ℝ) + N - 1)⁻¹) K
          simp only [Nat.cast_zero, zero_add] at htel
          rw [← htel]
          refine Finset.sum_congr rfl fun i _ => ?_
          have hx : (((i + 1 : ℕ) : ℝ) + N - 1)⁻¹ = ((i : ℝ) + N)⁻¹ := by
            push_cast
            ring_nf
          rw [hx]
      _ ≤ ((N : ℝ) - 1)⁻¹ := by
          have h2 : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN2
          have : (0 : ℝ) < (K : ℝ) + N - 1 := by
            have := Nat.cast_nonneg (α := ℝ) K
            linarith
          have : (0 : ℝ) ≤ ((K : ℝ) + N - 1)⁻¹ := by positivity
          linarith
  have hN1 : (1 : ℝ) ≤ (N : ℝ) - 1 := by
    have h2 : (2 : ℕ) ≤ N := by
      rw [hN]
      omega
    have : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast h2
    linarith
  have hNm1 : |t| ≤ (N : ℝ) - 1 := by
    rw [hN]
    push_cast
    have := Nat.le_ceil |t|
    linarith
  have htail2 : ((N : ℝ) - 1)⁻¹ ≤ |t|⁻¹ := by
    rw [← one_div, ← one_div]
    exact one_div_le_one_div_of_le ht0 hNm1
  have hhead2 : (N : ℝ) * (t ^ 2)⁻¹ ≤ 10 / |t| := by
    have hts : t ^ 2 = |t| ^ 2 := (sq_abs t).symm
    rw [hts]
    rw [div_eq_mul_inv]
    have h1 : (N : ℝ) ≤ 7 * |t| := by linarith
    calc (N : ℝ) * ((|t| ^ 2)⁻¹) ≤ 7 * |t| * ((|t| ^ 2)⁻¹) := by
          gcongr
      _ = 7 * |t|⁻¹ := by
          field_simp
      _ ≤ 10 * |t|⁻¹ := by
          have : (0 : ℝ) ≤ |t|⁻¹ := by positivity
          linarith
  calc (∑ i ∈ Finset.range N, (((1 / 4 : ℝ) + i) ^ 2 + t ^ 2)⁻¹)
        + ∑' i : ℕ, (((1 / 4 : ℝ) + ((i + N : ℕ) : ℝ)) ^ 2 + t ^ 2)⁻¹
      ≤ (N : ℝ) * (t ^ 2)⁻¹ + ((N : ℝ) - 1)⁻¹ := add_le_add hhead htail
    _ ≤ 10 / |t| + |t|⁻¹ := add_le_add hhead2 htail2
    _ ≤ 12 / |t| := by
        rw [div_eq_mul_inv, div_eq_mul_inv]
        have : (0 : ℝ) ≤ |t|⁻¹ := by positivity
        linarith

/-- Summability of the quarter-line trigamma comparison series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744e30031e69bfe25e10559ca71b12a53ccc1c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
