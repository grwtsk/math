# finite_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa2ca10c56ecc0787023bb2455ed5603653b2814",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c07dad05-8257-1d49-fdd8-c6f31d15b68b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19a3b52b-92c9-1479-f1ea-e131a48a4a97",
  "kind": "theorem",
  "lexical_name": "finite_upper",
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
  "slug": "finite-upper--e5f89e8cecf1fca9212f71d1",
  "source": {
    "blob": "aa2ca10c56ecc0787023bb2455ed5603653b2814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5f89e8cecf1fca9212f71d1e660b2070faa3471c35dc684f4d2f5fd72e21782",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19a3b52b-92c9-1479-f1ea-e131a48a4a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_upper (ht₀ : 0 < t₀) (hZ : WZerosInStrip t₀) (b : ℝ) :
    ({ρ | IsWZero ρ ∧ t₀ ≤ |ρ.im|} ∩ {ρ | 0 < ρ.im ∧ ρ.im ≤ b}).Finite := by
  obtain ⟨t₁, ht₁, hlow⟩ := hardyW_two_line_lower
  set M : ℝ := max b (max t₁ t₀) with hM
  set z : ℂ := (0 : ℂ) + (t₀ : ℝ) * I with hz
  set w : ℂ := (2 : ℂ) + (M : ℝ) * I with hw
  have hzre : z.re = 0 := by simp [hz]
  have hzim : z.im = t₀ := by simp [hz]
  have hwre : w.re = 2 := by simp [hw]
  have hwim : w.im = M := by simp [hw]
  have ht₀M : t₀ ≤ M := le_trans (le_max_right _ _) (le_max_right _ _)
  have hmem : ∀ s : ℂ, 0 ≤ s.re → s.re ≤ 2 → t₀ ≤ s.im → s.im ≤ M → s ∈ Rectangle z w := by
    intro s h1 h2 h3 h4
    simp only [Rectangle, mem_reProdIm, hzre, hzim, hwre, hwim, uIcc_of_le (by norm_num : (0:ℝ) ≤ 2),
      uIcc_of_le ht₀M, mem_Icc]
    exact ⟨⟨h1, h2⟩, ⟨h3, h4⟩⟩
  have hsub : Rectangle z w ⊆ {s : ℂ | s.im ≠ 0} := by
    intro s hs
    simp only [Rectangle, mem_reProdIm, hzim, hwim, uIcc_of_le ht₀M, mem_Icc] at hs
    exact fun h0 => by linarith [hs.2.1]
  have hx : (2 : ℂ) + (max t₁ t₀ : ℝ) * I ∈ Rectangle z w :=
    hmem _ (by simp) (by simp) (by simp) (by simp [hM])
  have hfx : hardyW ((2 : ℂ) + (max t₁ t₀ : ℝ) * I) ≠ 0 := by
    intro h0
    have := (hlow (max t₁ t₀) (by rw [abs_of_pos (by positivity)]; exact le_max_left _ _)).2
    rw [h0, norm_zero] at this; linarith
  have hfin := Zeta23.Analytic.finite_zeros_rectangle (hardyW_analyticOnNhd.mono hsub) hx hfx
  refine hfin.subset ?_
  rintro ρ ⟨⟨⟨hρ0, hρim⟩, hρt⟩, hpos, hle⟩
  have habs : |ρ.im| = ρ.im := abs_of_pos hpos
  obtain ⟨ha, hb⟩ := hZ ρ hρ0 hρt
  refine ⟨hmem ρ ha.le (by linarith) (by rw [← habs]; exact hρt) (le_trans hle (le_max_left _ _)), ?_⟩
  simpa using hρ0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa2ca10c56ecc0787023bb2455ed5603653b2814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
