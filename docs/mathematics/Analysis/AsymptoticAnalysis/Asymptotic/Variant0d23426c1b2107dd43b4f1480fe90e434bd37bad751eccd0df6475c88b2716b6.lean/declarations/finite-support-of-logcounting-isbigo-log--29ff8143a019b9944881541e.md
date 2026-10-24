# finite_support_of_logCounting_isBigO_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:643aec5e-242e-9602-99ab-357a34e9c1ce",
  "kind": "lemma",
  "lexical_name": "finite_support_of_logCounting_isBigO_log",
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
  "slug": "finite-support-of-logcounting-isbigo-log--29ff8143a019b9944881541e",
  "source": {
    "blob": "87e0b087251b13c855037151652d1d79b8670074",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 124,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ff8143a019b9944881541e155fd9d713607d8ac425b5a992428851c11e75a1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:643aec5e-242e-9602-99ab-357a34e9c1ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_support_of_logCounting_isBigO_log [ProperSpace E]
    {D : locallyFinsupp E ℤ} (h : 0 ≤ D) (hO : logCounting D =O[atTop] Real.log) :
    D.support.Finite := by
  classical
  -- Let (N : ℕ) be a number such that ‖logCounting D x‖ ≤ N * ‖log x‖
  obtain ⟨C, hC⟩ := isBigO_iff.1 hO
  obtain ⟨N, hCN⟩ := exists_nat_gt (max C 0)
  have hCN' : C < N := lt_of_le_of_lt (le_max_left C 0) hCN
  -- Argue by contradiction, let t be a cardinality=N finite subset in the (infinite) support of D
  -- and let D' be the divisor for the indicator function of t
  by_contra! hInf
  obtain ⟨t, htsub, htcard⟩ := hInf.exists_subset_card_eq N
  set D' := ∑ z ∈ t, single z (1 : ℤ) with hD'
  -- The auxiliary divisor `D'` is bounded above by `D`.
  have hle : D' ≤ D := by
    rw [le_def, Pi.le_def]
    intro w
    simp only [hD', coe_sum, Finset.sum_apply, single_apply, Finset.sum_ite_eq]
    by_cases hw : w ∈ t
    · simp only [hw, ite_true]
      have h₁ : D w ≠ 0 := mem_support.mp (htsub (Finset.mem_coe.2 hw))
      have h₂ : (0 : ℤ) ≤ D w := by simpa using (le_def.1 h) w
      omega
    · simpa [hw, ite_false] using (le_def.1 h) w
  -- A uniform bound on the norms of points in `t`.
  obtain ⟨R₀, hR₀⟩ : ∃ R₀ : ℝ, ∀ z ∈ t, ‖z‖ ≤ R₀ := t.finite_toSet.isBounded.exists_norm_le
  set K := ∑ z ∈ t, log ‖z‖ with hK
  -- Eventually, `logCounting D' = N * log - K`.
  have hEq : ∀ᶠ r in atTop, logCounting D' r = (N : ℝ) * log r - K := by
    filter_upwards [eventually_ge_atTop R₀] with r hr using calc
      logCounting D' r = ∑ c ∈ t, logCounting (single c 1) r := by simp [hD']
       _ = ∑ z ∈ t, (log r - log ‖z‖) := by
        congr! 1 with z hz;
        simpa using logCounting_single_eq_log_sub_const (e := z) (n := 1) ((hR₀ z hz).trans hr)
       _ = (N : ℝ) * log r - K := by simp [Finset.sum_sub_distrib, hK, htcard]
  -- Combine the bounds into a contradiction with `log → ∞`.
  have hFinal : ∀ᶠ r in atTop, ((N : ℝ) - C) * log r ≤ K := by
    filter_upwards [hEq, eventually_ge_atTop (1 : ℝ), hC] with r hr₁ hr₂ hr₃
    grind [logCounting_le hle hr₂, norm_eq_abs, abs_of_nonneg, log_nonneg, logCounting_nonneg]
  have hTendsto : Tendsto (fun r ↦ ((N : ℝ) - C) * log r) atTop atTop :=
    tendsto_log_atTop.const_mul_atTop (sub_pos.mpr hCN')
  obtain ⟨r, hr₁, hr₂⟩ := (hFinal.and (hTendsto.eventually_gt_atTop K)).exists
  linarith

/--
A non-negative function with locally finite support has finite support if and only if its
logarithmic counting function is big-O of `log`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87e0b087251b13c855037151652d1d79b8670074` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
