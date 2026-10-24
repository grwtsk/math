# rectangleIntegral'_logDeriv_omegaW_eq_NcountW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a887d946c92892bd16d61d6efc4d295ace8245ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29200f14-1b9d-56c4-9318-7d157f3695a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c22c915a-4c0c-3bb0-dec7-259efb77a63f",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral'_logDeriv_omegaW_eq_NcountW",
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
  "slug": "rectangleintegral-logderiv-omegaw-eq-ncountw--867bed895321d8a83497d911",
  "source": {
    "blob": "a887d946c92892bd16d61d6efc4d295ace8245ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867bed895321d8a83497d911682e2f31e20f87384a845683545be50ca18fe16d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c22c915a-4c0c-3bb0-dec7-259efb77a63f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral'_logDeriv_omegaW_eq_NcountW (hZ : WZerosInStrip t₀) (hs : WSeam t₀)
    {T₁ T₂ : ℝ} (h0 : t₀ ≤ T₁) (hT : T₁ ≤ T₂) (hg₁ : GoodHeightW T₁) (hg₂ : GoodHeightW T₂) :
    RectangleIntegral' (logDeriv omegaW) (-1 + T₁ * I) (2 + T₂ * I) = (NcountW T₁ T₂ : ℂ) := by
  classical
  have ht₀ := hs.pos
  set z : ℂ := -1 + T₁ * I with hzdef
  set w : ℂ := 2 + T₂ * I with hwdef
  have hzre : z.re = -1 := by simp [z]
  have hzim : z.im = T₁ := by simp [z]
  have hwre : w.re = 2 := by simp [w]
  have hwim : w.im = T₂ := by simp [w]
  have hre : z.re ≤ w.re := by rw [hzre, hwre]; norm_num
  have him : z.im ≤ w.im := by rw [hzim, hwim]; exact hT
  have hmem : ∀ s : ℂ, s ∈ Rectangle z w ↔ (-1 ≤ s.re ∧ s.re ≤ 2) ∧ (T₁ ≤ s.im ∧ s.im ≤ T₂) := by
    intro s
    simp only [Rectangle, mem_reProdIm, hzre, hzim, hwre, hwim,
      uIcc_of_le (show (-1 : ℝ) ≤ 2 by norm_num), uIcc_of_le hT, mem_Icc]
  have hoff : Rectangle z w ⊆ {s : ℂ | s.im ≠ 0} := fun s hsR => by
    have := ((hmem s).mp hsR).2.1; exact fun h => by rw [h] at this; linarith
  have hf : AnalyticOnNhd ℂ omegaW (Rectangle z w) := omegaW_analyticOnNhd hoff
  have hg : AnalyticOnNhd ℂ (fun _ : ℂ => (1 : ℂ)) (Rectangle z w) := fun _ _ => analyticAt_const
  have hfin := hs.finite_window T₁ T₂
  have hZf : ∀ s ∈ Rectangle z w, omegaW s = 0 ↔ s ∈ hfin.toFinset := by
    intro s hsR
    rw [Set.Finite.mem_toFinset]
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsR
    have hsim : s.im ≠ 0 := hoff hsR
    constructor
    · intro h0
      have hW0 := (omegaW_eq_zero_iff hsim).mp h0
      refine ⟨⟨⟨hW0, hsim⟩, by rw [abs_of_pos (by linarith)]; linarith⟩,
        lt_of_le_of_ne hi1 (fun h' => hg₁ s ⟨hW0, hsim⟩ h'.symm), hi2⟩
    · rintro ⟨⟨⟨hW0, -⟩, -⟩, _⟩
      exact (omegaW_eq_zero_iff hsim).mpr hW0
  have hZsub : ((hfin.toFinset : Finset ℂ) : Set ℂ) ⊆ Rectangle z w := by
    intro s hsZ
    rw [Finset.mem_coe, Set.Finite.mem_toFinset] at hsZ
    obtain ⟨⟨⟨h0, -⟩, ht⟩, hi1, hi2⟩ := hsZ
    obtain ⟨ha, hb⟩ := hZ s h0 ht
    exact (hmem s).mpr ⟨⟨by linarith, by linarith⟩, hi1.le, hi2⟩
  have hborder : ∀ s ∈ RectangleBorder z w, omegaW s ≠ 0 := by
    intro s hsB h0
    have hsR := rectangleBorder_subset_rectangle z w hsB
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsR
    have hsim : s.im ≠ 0 := hoff hsR
    have hW0 := (omegaW_eq_zero_iff hsim).mp h0
    obtain ⟨ha, hb⟩ := hZ s hW0 (by rw [abs_of_pos (by linarith)]; linarith)
    simp only [RectangleBorder, mem_union, mem_reProdIm, mem_singleton_iff, hzre, hzim, hwre, hwim] at hsB
    rcases hsB with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · exact hg₁ s ⟨hW0, hsim⟩ h'
    · linarith
    · exact hg₂ s ⟨hW0, hsim⟩ h'
    · linarith
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv hre him hf hg hborder hfin.toFinset hZf hZsub
  simp only [one_mul, mul_one] at key
  rw [show (fun s => logDeriv omegaW s) = logDeriv omegaW from rfl] at key
  rw [key]
  unfold NcountW
  have hset : zerosInW T₁ T₂ = {ρ | IsWZero ρ ∧ t₀ ≤ |ρ.im|} ∩ {ρ | T₁ < ρ.im ∧ ρ.im ≤ T₂} := by
    ext ρ
    simp only [zerosInW, mem_setOf_eq, mem_inter_iff]
    constructor
    · rintro ⟨hρ, h1, h2⟩; exact ⟨⟨hρ, by rw [abs_of_pos (by linarith)]; linarith⟩, h1, h2⟩
    · rintro ⟨⟨hρ, -⟩, h1, h2⟩; exact ⟨hρ, h1, h2⟩
  rw [hset, finsum_mem_eq_finite_toFinset_sum _ hfin, Nat.cast_sum]
  refine Finset.sum_congr rfl fun ρ hρ => ?_
  rw [Set.Finite.mem_toFinset] at hρ
  rw [analyticOrderNatAt_omegaW hρ.1.1.2]

/-! ### the fold -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887d946c92892bd16d61d6efc4d295ace8245ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
