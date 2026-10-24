# halfContour_Yfn_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9fa8e4703df69d60e537b5ecef1c3888d474e904",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ed56d13-34f3-cd3d-2cb6-1d363216c8be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f412925-50d7-14f3-bd85-adfede087ba1",
  "kind": "theorem",
  "lexical_name": "halfContour_Yfn_bound",
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
  "slug": "halfcontour-yfn-bound--a11d7aebed13f329766fcd6f",
  "source": {
    "blob": "9fa8e4703df69d60e537b5ecef1c3888d474e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a11d7aebed13f329766fcd6fbdc047bee5528499a58a016b62eb7affe2318408",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f412925-50d7-14f3-bd85-adfede087ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfContour_Yfn_bound : ∃ C T₀ : ℝ, 0 < C ∧ 4 ≤ T₀ ∧ ∀ T₁ T₂ : ℝ, T₀ ≤ T₁ → T₁ ≤ T₂ →
    GoodHeight T₁ → GoodHeight T₂ →
    |(halfContour (logDeriv Yfn) T₁ T₂).im|
      ≤ C * Real.log (|T₁| + 3) + 3 * Real.pi + C * Real.log (|T₂| + 3) := by
  obtain ⟨CH, tH, hCH, htH4, hH⟩ := horizontal_bound
  obtain ⟨tV, htV2, hV⟩ := vertical_bound
  refine ⟨CH, max tH tV, hCH, le_trans htH4 (le_max_left _ _), fun T₁ T₂ hT₁ h12 hg₁ hg₂ => ?_⟩
  have h1 := hH T₁ (le_trans (le_trans (le_max_left _ _) hT₁) (le_abs_self _)) hg₁
  have h2 := hH T₂ (le_trans (le_trans (le_max_left _ _) (hT₁.trans h12)) (le_abs_self _)) hg₂
  have h3 := hV T₁ T₂ (le_trans (le_max_right _ _) hT₁) h12
  unfold halfContour
  have eim : ((∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₁ * I))
      + (∫ t in T₁..T₂, logDeriv Yfn (2 + t * I)) * I
      - ∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₂ * I)).im
      = (∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₁ * I)).im
        + ((∫ t in T₁..T₂, logDeriv Yfn (2 + t * I)) * I).im
        - (∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₂ * I)).im := by
    simp [Complex.add_im, Complex.sub_im]
  rw [eim]
  have hmulI : ((∫ t in T₁..T₂, logDeriv Yfn (2 + t * I)) * I).im
      = (∫ t in T₁..T₂, logDeriv Yfn (2 + t * I) * I).im :=
    congrArg Complex.im (intervalIntegral.integral_mul_const (μ := volume) I
      (fun t : ℝ => logDeriv Yfn (2 + t * I))).symm
  rw [hmulI]
  calc |(∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₁ * I)).im
        + (∫ t in T₁..T₂, logDeriv Yfn (2 + t * I) * I).im
        - (∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₂ * I)).im|
      ≤ |(∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₁ * I)).im|
        + |(∫ t in T₁..T₂, logDeriv Yfn (2 + t * I) * I).im|
        + |(∫ σ in (1/2:ℝ)..2, logDeriv Yfn (σ + T₂ * I)).im| :=
        (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ ≤ CH * Real.log (|T₁| + 3) + 3 * Real.pi + CH * Real.log (|T₂| + 3) := by linarith

/-! ### the main term -/

/-- **Riemann–von Mangoldt main term for ξ′**: |N_{ξ′}(T,2T) − (T/2π)ℓ₁(T)| ≤ C log T for T ≥ T₀
(instance of ZeroCount/GenericRvM.rvM_main_of: good heights, the argument principle + fold, the split
ξ″/ξ′ = Γℝ′/Γℝ + Y′/Y with the Y-part O(log T), and the local count). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa8e4703df69d60e537b5ecef1c3888d474e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
