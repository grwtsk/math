# tmSin_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2672184-e47f-b43e-311c-20d8216b1b1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f370b7d5-12b9-42dc-fdc2-76b1682e6fc6",
  "kind": "theorem",
  "lexical_name": "tmSin_correct",
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
  "slug": "tmsin-correct--1afa0798b7d08227fd3826df",
  "source": {
    "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 331,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1afa0798b7d08227fd3826df1a0f486a51925f615f3317b7202788b5d684ae3a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f370b7d5-12b9-42dc-fdc2-76b1682e6fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmSin_correct (J : IntervalRat) (n : ℕ) :
    ∀ z : ℝ, z ∈ J → Real.sin z ∈ (tmSin J n).evalSet z := by
  intro z hz
  simp only [tmSin, evalSet, Set.mem_setOf_eq]
  set r := Real.sin z - Polynomial.aeval (z - 0) (sinTaylorPoly n) with hr_def
  refine ⟨r, ?_, ?_⟩
  · simp only [IntervalRat.mem_def, Rat.cast_neg]
    -- Rewrite polynomial to Mathlib form
    have hpoly_eq := sinTaylorPoly_aeval_eq n z
    simp only [sub_zero] at hr_def hpoly_eq
    -- The remainder r = sin z - ∑ (iteratedDeriv i sin 0 / i!) * z^i
    have hr_rewrite : r = Real.sin z - ∑ i ∈ Finset.range (n + 1),
        (iteratedDeriv i Real.sin 0 / i.factorial) * z ^ i := by
      rw [hr_def, hpoly_eq]
    -- Apply taylor_remainder_bound with f = sin, c = 0, M = 1
    set a := min (J.lo : ℝ) 0 with ha_def
    set b := max (J.hi : ℝ) 0 with hb_def
    have hab : a ≤ b := by simp only [ha_def, hb_def]; exact le_trans (min_le_of_right_le (le_refl 0)) (le_max_right _ _)
    have hca : a ≤ 0 := min_le_right _ _
    have hcb : 0 ≤ b := le_max_right _ _
    have hz_ab : z ∈ Set.Icc a b := by
      simp only [Set.mem_Icc, ha_def, hb_def]
      have hmem := mem_Icc_of_mem_interval hz
      constructor
      · exact le_trans (min_le_left _ _) hmem.1
      · exact le_trans hmem.2 (le_max_left _ _)
    have hM : ∀ x ∈ Set.Icc a b, ‖iteratedDeriv (n + 1) Real.sin x‖ ≤ 1 := by
      intro x _
      exact (LeanCert.Core.sin_cos_deriv_bound (n + 1) x).1
    have hf : ContDiff ℝ (n + 1) Real.sin := Real.contDiff_sin.of_le le_top
    have hTaylor := LeanCert.Core.taylor_remainder_bound hab hca hcb hf hM (by norm_num : (0 : ℝ) ≤ 1) z hz_ab
    simp only [sub_zero] at hTaylor
    have hr_bound : ‖r‖ ≤ 1 * |z| ^ (n + 1) / (n + 1).factorial := by
      rw [hr_rewrite]
      exact hTaylor
    rw [Real.norm_eq_abs] at hr_bound
    simp only [one_mul] at hr_bound
    -- |r| ≤ sinRemainderBound since |z| ≤ radius
    have habs_z_le : |z| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := abs_le_interval_radius hz
    set radius : ℚ := max (|J.lo|) (|J.hi|) with hradius_def
    have hradius_real : (radius : ℝ) = max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := by
      simp only [hradius_def, Rat.cast_max, Rat.cast_abs]
    have hrem_eq : (sinRemainderBound J n : ℝ) = (radius : ℝ) ^ (n + 1) / (n + 1).factorial := by
      simp only [sinRemainderBound, hradius_def, Rat.cast_div, Rat.cast_pow, Rat.cast_natCast]
    have hpow_le : |z| ^ (n + 1) ≤ (radius : ℝ) ^ (n + 1) := by
      apply pow_le_pow_left₀ (abs_nonneg z)
      rw [hradius_real]
      exact habs_z_le
    have hfact_pos : (0 : ℝ) < ((n + 1).factorial : ℝ) := Nat.cast_pos.mpr (Nat.factorial_pos _)
    have hrem_ge : (sinRemainderBound J n : ℝ) ≥ |z| ^ (n + 1) / (n + 1).factorial := by
      rw [hrem_eq]
      apply div_le_div_of_nonneg_right hpow_le (le_of_lt hfact_pos)
    have hr_le_rem : |r| ≤ sinRemainderBound J n := le_trans hr_bound hrem_ge
    constructor
    · have := neg_abs_le r; linarith
    · exact le_trans (le_abs_self r) hr_le_rem
  · simp only [hr_def, sub_zero]; ring_nf

/-- cos z ∈ (tmCos J n).evalSet z for all z in J.
    Uses taylor_remainder_bound with f = Real.cos, c = 0, M = 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e970205ff06cf1cf82c7132d8d4f93251403f29c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
