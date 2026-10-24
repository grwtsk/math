# boundary_count_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 410,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85fba2db-8ecc-f2da-cd7b-a4e9f51c71c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59878304-c172-f721-ad2e-88f9de0307bb",
  "kind": "theorem",
  "lexical_name": "boundary_count_le",
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
  "slug": "boundary-count-le--a61a41ec9f492c58f1605974",
  "source": {
    "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 410,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a61a41ec9f492c58f16059742b5dea564cba61d7d3e1c9fba4f3d4a73da7799d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59878304-c172-f721-ad2e-88f9de0307bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_count_le {ι : Type*} {γ : ι → ℝ} {m : ι → ℕ} {A₀ T : ℝ}
    (hN : LocalCount γ m A₀) (hT : T₀ ≤ T) (s : Finset ι)
    (hs : ∀ ρ ∈ s, (T - Real.sqrt T < γ ρ ∧ γ ρ ≤ T)
      ∨ (2 * T < γ ρ ∧ γ ρ ≤ 2 * T + Real.sqrt T)) :
    ∑ ρ ∈ s, (m ρ : ℝ) ≤ 3 * A₀ * Real.sqrt T * Real.log (4 * T) := by
  classical
  have hT' : (300 : ℝ) ≤ T := hT
  have hT0 : (0 : ℝ) ≤ T := by linarith
  have hA₀ : 0 ≤ A₀ := hN.A₀_pos.le
  set D₀ := Real.sqrt T with hD₀def
  have hD₀ : 17 ≤ D₀ := by
    rw [hD₀def, Real.le_sqrt (by norm_num) (by linarith)]; linarith
  have hD₀T : D₀ ^ 2 = T := Real.sq_sqrt hT0
  have hD₀leT : D₀ + 4 ≤ T := by nlinarith
  set K : ℕ := ⌈D₀⌉₊ with hK
  have hKlt : (K : ℝ) < D₀ + 1 := Nat.ceil_lt_add_one (by linarith)
  have hKge : D₀ ≤ K := Nat.le_ceil D₀
  set C : ℝ := A₀ * Real.log (4 * T) with hCdef
  have hlog1 : 1 ≤ Real.log (4 * T) := one_le_log_four_mul hT
  have hC : 0 ≤ C := by positivity
  have hlogmono : ∀ (t : ℝ), |t| + 3 ≤ 4 * T →
      A₀ * Real.log (|t| + 3) ≤ C := fun t h =>
    mul_le_mul_of_nonneg_left (Real.log_le_log (by positivity) h) hA₀
  set slo := s.filter (fun ρ => γ ρ ≤ T) with hslo
  set shi := s.filter (fun ρ => ¬ γ ρ ≤ T) with hshi
  have hlo_mem : ∀ ρ ∈ slo, T - D₀ < γ ρ ∧ γ ρ ≤ T := by
    intro ρ hρ
    rw [hslo, mem_filter] at hρ
    rcases hs ρ hρ.1 with h | h
    · exact h
    · exact absurd hρ.2 (by linarith [h.1])
  have hhi_mem : ∀ ρ ∈ shi, 2 * T < γ ρ ∧ γ ρ ≤ 2 * T + D₀ := by
    intro ρ hρ
    rw [hshi, mem_filter] at hρ
    rcases hs ρ hρ.1 with h | h
    · exact absurd h.2 hρ.2
    · exact h
  -- lower boundary strip: key = ⌊T − γ⌋₊ < K
  have hlo : ∑ ρ ∈ slo, (m ρ : ℝ) ≤ K * C := by
    apply sum_mult_le_of_windows slo m (fun ρ => ⌊T - γ ρ⌋₊) K
    · intro ρ hρ
      have h := hlo_mem ρ hρ
      have : (⌊T - γ ρ⌋₊ : ℝ) < K :=
        lt_of_le_of_lt (Nat.floor_le (by linarith [h.2])) (by linarith [h.1])
      exact_mod_cast this
    · intro j hj
      refine (hN.window (T - j - 1) _ ?_).trans (hlogmono _ ?_)
      · intro ρ hρ
        rw [mem_filter] at hρ
        obtain ⟨hρs, hρj⟩ := hρ
        have hnn : 0 ≤ T - γ ρ := by linarith [(hlo_mem ρ hρs).2]
        have := (Nat.floor_eq_iff hnn).mp hρj
        constructor <;> linarith [this.1, this.2]
      · have hj' : (j : ℝ) < D₀ + 1 := lt_of_lt_of_le (by exact_mod_cast hj) hKlt.le
        rw [abs_of_nonneg (by linarith)]
        linarith [(Nat.cast_nonneg j : (0 : ℝ) ≤ j)]
  -- upper boundary strip: key = ⌈γ − 2T⌉₊ − 1 < K
  have hhi : ∑ ρ ∈ shi, (m ρ : ℝ) ≤ K * C := by
    have hceil1 : ∀ ρ ∈ shi, 1 ≤ ⌈γ ρ - 2 * T⌉₊ := fun ρ hρ =>
      Nat.one_le_ceil_iff.mpr (by linarith [(hhi_mem ρ hρ).1])
    apply sum_mult_le_of_windows shi m (fun ρ => ⌈γ ρ - 2 * T⌉₊ - 1) K
    · intro ρ hρ
      have h := hhi_mem ρ hρ
      have : ⌈γ ρ - 2 * T⌉₊ ≤ K := by rw [hK]; exact Nat.ceil_mono (by linarith [h.2])
      have := hceil1 ρ hρ
      omega
    · intro j hj
      refine (hN.window (2 * T + j) _ ?_).trans (hlogmono _ ?_)
      · intro ρ hρ
        rw [mem_filter] at hρ
        obtain ⟨hρs, hρj⟩ := hρ
        have hc : ⌈γ ρ - 2 * T⌉₊ = j + 1 := by have := hceil1 ρ hρs; omega
        have := (Nat.ceil_eq_iff (Nat.succ_ne_zero j)).mp hc
        push_cast at this
        constructor <;> linarith [this.1, this.2]
      · have hj' : (j : ℝ) < D₀ + 1 := lt_of_lt_of_le (by exact_mod_cast hj) hKlt.le
        rw [abs_of_nonneg (by positivity)]
        linarith
  -- combine: 2·K·C ≤ 2(D₀+1)·A₀ log(4T) ≤ 3 D₀ A₀ log(4T)
  rw [← sum_filter_add_sum_filter_not s (fun ρ => γ ρ ≤ T)]
  have hK' : (K : ℝ) * C ≤ (D₀ + 1) * C := mul_le_mul_of_nonneg_right hKlt.le hC
  have : (2 : ℝ) * ((D₀ + 1) * C) ≤ 3 * A₀ * D₀ * Real.log (4 * T) := by
    rw [hCdef]
    have : 2 * (D₀ + 1) ≤ 3 * D₀ := by linarith
    have hAl : 0 ≤ A₀ * Real.log (4 * T) := hC
    nlinarith
  linarith

end Tail
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9921557758c132db22727b91adfc063f9ca5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
