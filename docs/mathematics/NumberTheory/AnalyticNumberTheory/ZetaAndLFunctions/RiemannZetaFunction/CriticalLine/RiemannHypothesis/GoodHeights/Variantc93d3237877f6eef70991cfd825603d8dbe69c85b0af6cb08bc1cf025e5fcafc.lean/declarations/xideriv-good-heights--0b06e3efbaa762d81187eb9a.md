# xiDeriv_good_heights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21fb495a9c82c83f518106e78f53edc662a44be5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c93d3237877f6eef70991cfd825603d8dbe69c85b0af6cb08bc1cf025e5fcafc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:918b8793-7d2d-cf69-5676-84501c200db2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6eaf73f-d2cc-dc7d-fa65-f20ad709d1b2",
  "kind": "theorem",
  "lexical_name": "xiDeriv_good_heights",
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
  "slug": "xideriv-good-heights--0b06e3efbaa762d81187eb9a",
  "source": {
    "blob": "21fb495a9c82c83f518106e78f53edc662a44be5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variantc93d3237877f6eef70991cfd825603d8dbe69c85b0af6cb08bc1cf025e5fcafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b06e3efbaa762d81187eb9aefe2bd608ce4fe4a4c9f4c56ed200c8b1ed83749",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variantc93d3237877f6eef70991cfd825603d8dbe69c85b0af6cb08bc1cf025e5fcafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6eaf73f-d2cc-dc7d-fa65-f20ad709d1b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_good_heights (hF2 : XiDerivZerosInStrip) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j →
    ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
    ∀ s : ℂ, (s.im = R ∨ s.im = -R) → -1 ≤ s.re → s.re ≤ 2 →
      xiDeriv s ≠ 0 ∧ ‖logDeriv xiDeriv s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2 := by
  classical
  set hs := xiDerivSeam_of_strip hF2
  set Zc := xiDerivZeros hF2 hs with hZc
  obtain ⟨Cf, t₀, hCf, ht₀2, hfa, hgrow, hlow⟩ := Yfn_generic_inputs
  have hlink' : ∀ ρ : ℂ, 0 < ρ.re → t₀ ≤ |ρ.im| → Yfn ρ = 0 → ρ ∈ Zc.carrier :=
    fun ρ hre _ h0 => (Yfn_eq_zero_iff hre).mp h0
  obtain ⟨C, hC, j₀, hgh⟩ :=
    Generic.good_heights_two_line hfa hCf hgrow hlow Zc (xiDerivZeros_link hF2 hs) hlink'
  refine ⟨C + 12, by positivity, max j₀ 2, fun j hj => ?_⟩
  have hj₀ : j₀ ≤ j := le_trans (le_max_left _ _) hj
  have hj2 : (2 : ℝ) ≤ j := by exact_mod_cast le_trans (le_max_right _ _) hj
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
  -- the right half 1/2 ≤ Re s ≤ 2: Y-part from the generic machine, Γℝ-part by Stirling
  have right_half : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      xiDeriv s ≠ 0 ∧ ‖logDeriv xiDeriv s‖ ≤ (C + 12) * Lg ^ 2 := by
    intro s hsR hσ1 hσ2
    have hsre : 0 < s.re := by linarith
    obtain ⟨hY, hYb⟩ := hright s hsR hσ1 hσ2
    have hξ : xiDeriv s ≠ 0 := fun h => hY ((Yfn_eq_zero_iff hsre).mpr h)
    have habs : |s.im| = R := by
      rcases hsR with h | h
      · rw [h, abs_of_nonneg (by linarith)]
      · rw [h, abs_neg, abs_of_nonneg (by linarith)]
    have hΓ : ‖logDeriv Gammaℝ s‖ ≤ 2 * Lg + 5 := by
      have h2 : 2 ≤ |s.im| := by rw [habs]; linarith
      have := norm_logDeriv_Gammaℝ_le_log hsre (by linarith) h2
      rw [habs] at this; linarith
    refine ⟨hξ, ?_⟩
    rw [logDeriv_xiDeriv_eq hsre hξ]
    refine (norm_add_le _ _).trans ?_
    have : Lg ≤ Lg ^ 2 := by nlinarith
    nlinarith [hYb, hΓ]
  -- now all of −1 ≤ Re s ≤ 2, by reflection through s ↦ 1 − s on the left part
  intro s hsR hσ1 hσ2
  rcases le_or_gt (1 / 2 : ℝ) s.re with h | h
  · exact right_half s hsR h hσ2
  · have h1 : (1 - s).im = R ∨ (1 - s).im = -R := by
      rcases hsR with h' | h' <;> simp [h']
    obtain ⟨hne, hb⟩ := right_half (1 - s) h1 (by simp; linarith) (by simp; linarith)
    refine ⟨fun h0 => hne (by rw [xiDeriv_one_sub, h0, neg_zero]), ?_⟩
    have : logDeriv xiDeriv s = -logDeriv xiDeriv (1 - s) := by
      rw [logDeriv_xiDeriv_one_sub]; ring
    rw [this, norm_neg]
    exact hb

end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variantc93d3237877f6eef70991cfd825603d8dbe69c85b0af6cb08bc1cf025e5fcafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variantc93d3237877f6eef70991cfd825603d8dbe69c85b0af6cb08bc1cf025e5fcafc.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21fb495a9c82c83f518106e78f53edc662a44be5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
