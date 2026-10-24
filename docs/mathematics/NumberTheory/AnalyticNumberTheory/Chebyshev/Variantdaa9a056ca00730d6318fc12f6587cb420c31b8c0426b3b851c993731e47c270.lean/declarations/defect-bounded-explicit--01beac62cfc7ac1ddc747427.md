# defect_bounded_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 932,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db38ff1c-782c-4927-54be-717ce08b6615",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:562a7fe4-2c28-6bd2-0d76-2dd1ab84002c",
  "kind": "lemma",
  "lexical_name": "defect_bounded_explicit",
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
  "slug": "defect-bounded-explicit--01beac62cfc7ac1ddc747427",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 991,
    "line": 932,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01beac62cfc7ac1ddc747427bb1737687dfd1ef69f86dba33f98132ea56af1b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:562a7fe4-2c28-6bd2-0d76-2dd1ab84002c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 932–991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma defect_bounded_explicit : ∀ x : ℝ,
    ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n * (Real.log n - Λ n) / n ≤ 1537 := by
  intro x
  have hsum74 : Summable (fun m : ℕ => ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹) :=
    Real.summable_nat_rpow_inv.mpr (by norm_num)
  set B : ℝ := ∑' m : ℕ, ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ with hB
  have hBnn : (0 : ℝ) ≤ B := tsum_nonneg fun m => by positivity
  have hB3 : B ≤ 3 := by
    rw [hB]
    exact tsum_rpow_neg_seven_quarters_le
  rcases lt_or_ge x 0 with hxneg | hx0
  · rw [Nat.floor_of_nonpos hxneg.le]
    simp only [Finset.Ioc_self, Finset.sum_empty]
    positivity
  have hvanish : ∀ n ∈ Ioc 0 ⌊x⌋₊, Λ n * (Real.log n - Λ n) / n ≠ 0 → IsPrimePow n := by
    intro n _ hne
    by_contra hnot
    rw [vonMangoldt_eq_zero_iff.mpr hnot] at hne
    simp at hne
  rw [← Finset.sum_filter_of_ne hvanish,
    Chebyshev.sum_PrimePow_eq_sum_sum (fun n => Λ n * (Real.log n - Λ n) / n) hx0]
  have hinner : ∀ k ∈ Icc 1 ⌊Real.log x / Real.log 2⌋₊,
      (∑ p ∈ Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊ with p.Prime,
        Λ (p ^ k) * (Real.log ((p ^ k : ℕ) : ℝ) - Λ (p ^ k)) / ((p ^ k : ℕ) : ℝ))
        ≤ 256 * B * ((k : ℝ) * (2⁻¹) ^ k) := by
    intro k hk
    have hk1 : 1 ≤ k := (Finset.mem_Icc.mp hk).1
    have hk0 : k ≠ 0 := by omega
    have hstep : ∑ p ∈ Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊ with p.Prime,
        Λ (p ^ k) * (Real.log ((p ^ k : ℕ) : ℝ) - Λ (p ^ k)) / ((p ^ k : ℕ) : ℝ)
        ≤ ∑ p ∈ Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊ with p.Prime,
          256 * ((k : ℝ) * (2⁻¹) ^ k) * ((p : ℝ) ^ ((7 : ℝ) / 4))⁻¹ := by
      refine Finset.sum_le_sum fun p hp => ?_
      have hpp : p.Prime := (Finset.mem_filter.mp hp).2
      have hΛ : Λ (p ^ k) = Real.log p := by
        rw [vonMangoldt_apply_pow hk0, vonMangoldt_apply_prime hpp]
      have hlg : Real.log ((p ^ k : ℕ) : ℝ) = (k : ℝ) * Real.log p := by
        rw [Nat.cast_pow, Real.log_pow]
      have heq : Λ (p ^ k) * (Real.log ((p ^ k : ℕ) : ℝ) - Λ (p ^ k)) / ((p ^ k : ℕ) : ℝ)
          = ((k : ℝ) - 1) * Real.log p ^ 2 / (p : ℝ) ^ k := by
        rw [hΛ, hlg, Nat.cast_pow]
        ring
      rw [heq]
      exact defect_term_le hk1 hpp
    refine hstep.trans ?_
    rw [← Finset.mul_sum]
    have hs : (∑ p ∈ Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊ with p.Prime,
        ((p : ℝ) ^ ((7 : ℝ) / 4))⁻¹) ≤ B :=
      hsum74.sum_le_tsum _ fun i _ => by positivity
    calc 256 * ((k : ℝ) * (2⁻¹) ^ k)
          * (∑ p ∈ Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊ with p.Prime, ((p : ℝ) ^ ((7 : ℝ) / 4))⁻¹)
        ≤ 256 * ((k : ℝ) * (2⁻¹) ^ k) * B :=
          mul_le_mul_of_nonneg_left hs (by positivity)
      _ = 256 * B * ((k : ℝ) * (2⁻¹) ^ k) := by ring
  refine le_trans (Finset.sum_le_sum hinner) ?_
  rw [← Finset.mul_sum]
  have h2 := sum_k_mul_half_pow_le ⌊Real.log x / Real.log 2⌋₊
  nlinarith [h2, hBnn, hB3]

/-- The defect sum is bounded by an absolute constant (from the explicit bound). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L932).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
