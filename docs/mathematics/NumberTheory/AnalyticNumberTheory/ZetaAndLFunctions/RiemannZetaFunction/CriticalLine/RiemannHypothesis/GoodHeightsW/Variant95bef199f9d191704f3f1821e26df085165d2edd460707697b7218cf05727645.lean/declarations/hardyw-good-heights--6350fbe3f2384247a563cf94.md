# hardyW_good_heights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c8b9c41-f158-4611-401a-4fba734a8026",
  "kind": "theorem",
  "lexical_name": "hardyW_good_heights",
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
  "slug": "hardyw-good-heights--6350fbe3f2384247a563cf94",
  "source": {
    "blob": "ab7c296b64e6e09176c92f88367da030b74e93ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6350fbe3f2384247a563cf94299f7b30ffff350289f7d349437b1773b0e20c3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c8b9c41-f158-4611-401a-4fba734a8026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_good_heights (hZ : WZerosInStrip t₀) (hs : WSeam t₀) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, t₀ + 1 ≤ j₀ ∧ ∀ j : ℕ, j₀ ≤ j →
    ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
    ∀ s : ℂ, (s.im = R ∨ s.im = -R) → -1 ≤ s.re → s.re ≤ 2 →
      hardyW s ≠ 0 ∧ ‖L2 s + logDeriv hardyW s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2 := by
  classical
  obtain ⟨Cf, t₁, hCf, ht₁2, hfa, hgrow, hlow⟩ := hardyW_generic_inputs
  set Zc := wZeros hZ hs with hZc
  set T₀ : ℝ := max t₁ t₀ with hT₀
  have hfa' : ∀ t : ℝ, T₀ ≤ |t| → AnalyticOnNhd ℂ hardyW (closedBall (2 + t * I) (91 / 50)) :=
    fun t ht => hfa t (le_trans (le_max_left _ _) ht)
  have hlow' : ∀ t : ℝ, T₀ ≤ |t| → 1 ≤ ‖hardyW (2 + t * I)‖ :=
    fun t ht => hlow t (le_trans (le_max_left _ _) ht)
  have hlink : ∀ ρ ∈ Zc.carrier, 1 / 2 ≤ ρ.re → hardyW ρ = 0 ∧ analyticOrderNatAt hardyW ρ = Zc.mult ρ :=
    fun ρ hρ _ => ⟨hρ.1.1, rfl⟩
  have hlink' : ∀ ρ : ℂ, 0 < ρ.re → T₀ ≤ |ρ.im| → hardyW ρ = 0 → ρ ∈ Zc.carrier := by
    intro ρ _ hT h0
    have him : ρ.im ≠ 0 := by
      intro h; rw [h, abs_zero] at hT
      linarith [le_trans ht₁2 (le_max_left t₁ t₀)]
    exact ⟨⟨h0, him⟩, le_trans (le_max_right _ _) hT⟩
  obtain ⟨C, hC, j₀, hgh⟩ :=
    Zeta23.XiPrime.ZeroCount.Generic.good_heights_two_line hfa' hCf hgrow hlow' Zc hlink hlink'
  refine ⟨C + 10, by positivity, max (max j₀ 2) (⌈t₀⌉₊ + 1), ?_, fun j hj => ?_⟩
  · have h1 : t₀ ≤ ⌈t₀⌉₊ := Nat.le_ceil t₀
    have h2 : ((⌈t₀⌉₊ + 1 : ℕ) : ℝ) ≤ ((max (max j₀ 2) (⌈t₀⌉₊ + 1) : ℕ) : ℝ) := by
      exact_mod_cast le_max_right _ _
    push_cast at h2 ⊢; linarith
  have hj₀ : j₀ ≤ j := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hj
  have hj2 : (2 : ℝ) ≤ j := by exact_mod_cast le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hj
  obtain ⟨R, hR1, hR2, hright⟩ := hgh j hj₀
  refine ⟨R, hR1, hR2, ?_⟩
  set Lg : ℝ := Real.log ((j : ℝ) + 3) with hLg
  have hLg1 : 1 ≤ Lg := by
    rw [hLg, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hlogR : Real.log (R + 3) ≤ 2 * Lg := by
    have hlog2 : Real.log 2 ≤ Lg := by rw [hLg]; exact Real.log_le_log (by norm_num) (by linarith)
    calc Real.log (R + 3) ≤ Real.log (2 * ((j:ℝ) + 3)) := Real.log_le_log (by linarith) (by linarith)
      _ = Real.log 2 + Lg := by rw [Real.log_mul (by norm_num) (by linarith)]
      _ ≤ 2 * Lg := by linarith
  -- right half first, with the L₂ term added
  have right : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      hardyW s ≠ 0 ∧ ‖L2 s + logDeriv hardyW s‖ ≤ (C + 10) * Lg ^ 2 := by
    intro s hsR h1 h2
    obtain ⟨hW, hb⟩ := hright s hsR h1 h2
    have habs : |s.im| = R := by
      rcases hsR with h | h
      · rw [h, abs_of_nonneg (by linarith)]
      · rw [h, abs_neg, abs_of_nonneg (by linarith)]
    have hL2 : ‖L2 s‖ ≤ 2 * Lg + 6 := by
      have := norm_L2_le_log h1 h2 (by rw [habs]; linarith)
      rw [habs] at this; linarith
    refine ⟨hW, (norm_add_le _ _).trans ?_⟩
    have : Lg ≤ Lg ^ 2 := by nlinarith
    nlinarith [hb, hL2]
  intro s hsR hσ1 hσ2
  rcases le_or_gt (1 / 2 : ℝ) s.re with h | h
  · exact right s hsR h hσ2
  · have hsim : s.im ≠ 0 := by
      rcases hsR with h' | h' <;> rw [h'] <;> [skip; rw [neg_ne_zero]] <;> linarith
    have h1 : (1 - s).im = R ∨ (1 - s).im = -R := by
      rcases hsR with h' | h' <;> simp [h']
    obtain ⟨hne, hb⟩ := right (1 - s) h1 (by simp; linarith) (by simp; linarith)
    have hWs : hardyW s ≠ 0 := fun h0 => hne ((hardyW_one_sub_eq_zero_iff hsim).mpr h0)
    refine ⟨hWs, ?_⟩
    rw [L2_add_logDeriv_hardyW_one_sub hsim hWs, norm_neg] at hb
    exact hb

end Hardy
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7c296b64e6e09176c92f88367da030b74e93ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
