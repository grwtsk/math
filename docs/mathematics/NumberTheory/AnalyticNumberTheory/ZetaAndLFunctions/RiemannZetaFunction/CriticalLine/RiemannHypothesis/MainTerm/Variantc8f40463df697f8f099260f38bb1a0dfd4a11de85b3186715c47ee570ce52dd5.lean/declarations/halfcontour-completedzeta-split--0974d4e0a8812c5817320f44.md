# halfContour_completedZeta_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:682645c1-e4b3-d28f-ed82-f55243afcd4d",
  "kind": "theorem",
  "lexical_name": "halfContour_completedZeta_split",
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
  "slug": "halfcontour-completedzeta-split--0974d4e0a8812c5817320f44",
  "source": {
    "blob": "e75c03435ac68cb9371c18dc60202bf324c599b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0974d4e0a8812c5817320f44dee84f5d3885a55c373742dcef653680fdba8e87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:682645c1-e4b3-d28f-ed82-f55243afcd4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfContour_completedZeta_split {T₁ T₂ : ℝ} (h1 : 1 ≤ T₁) (h12 : T₁ < T₂)
    (hg1 : GoodHeight T₁) (hg2 : GoodHeight T₂) :
    halfContour (logDeriv completedRiemannZeta) T₁ T₂ =
      halfContour (logDeriv riemannZeta) T₁ T₂ + halfContour (logDeriv Complex.Gammaℝ) T₁ T₂ := by
  have hmem : ∀ σ : ℝ, σ ∈ Set.uIcc (1/2:ℝ) 2 → 1/2 ≤ σ ∧ σ ≤ 2 := by
    intro σ hσ
    rw [Set.uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
    exact ⟨hσ.1, hσ.2⟩
  -- facts at horizontal-segment points
  have hseg : ∀ (T : ℝ), 1 ≤ T → GoodHeight T → ∀ σ ∈ Set.uIcc (1/2:ℝ) 2,
      ((σ:ℂ) + T*I ≠ 0 ∧ (σ:ℂ) + T*I ≠ 1 ∧ riemannZeta ((σ:ℂ) + T*I) ≠ 0
        ∧ 0 < ((σ:ℂ) + T*I).re) := by
    intro T hT hg σ hσ
    obtain ⟨ha, hb'⟩ := hmem σ hσ
    have hre : ((σ:ℂ) + T*I).re = σ := by simp
    have him : ((σ:ℂ) + T*I).im = T := by simp
    refine contour_point_facts ?_ ?_ ?_ ?_
    · rw [hre]; exact ha
    · rw [hre]; exact hb'
    · rw [him]; exact hT
    · rw [him]; exact fun ρ hρ => hg ρ hρ
  -- facts at vertical-segment points (σ = 2)
  have hvert : ∀ t : ℝ, t ∈ Set.uIcc T₁ T₂ →
      ((2:ℂ) + t*I ≠ 0 ∧ (2:ℂ) + t*I ≠ 1 ∧ riemannZeta ((2:ℂ) + t*I) ≠ 0
        ∧ 0 < ((2:ℂ) + t*I).re) := by
    intro t _
    have hre : ((2:ℂ) + t*I).re = 2 := by simp
    refine ⟨?_, ?_, riemannZeta_ne_zero_of_one_le_re (by rw [hre]; norm_num), by rw [hre]; norm_num⟩
    · intro hh
      have := congrArg Complex.re hh
      rw [hre] at this
      simp at this
    · intro hh
      have := congrArg Complex.re hh
      rw [hre] at this
      simp at this
  -- pointwise splitting along the three segments
  have keyb : Set.EqOn (fun σ : ℝ => logDeriv completedRiemannZeta ((σ:ℂ) + T₁*I))
      (fun σ : ℝ => logDeriv riemannZeta ((σ:ℂ) + T₁*I)
        + logDeriv Complex.Gammaℝ ((σ:ℂ) + T₁*I)) (Set.uIcc (1/2:ℝ) 2) := by
    intro σ hσ
    obtain ⟨hs0, hs1, hζ, hre⟩ := hseg T₁ h1 hg1 σ hσ
    simp only
    rw [Zeta23.WeilEF.logDeriv_completedZeta _ hs1 hζ hre]
    ring
  have keyt : Set.EqOn (fun σ : ℝ => logDeriv completedRiemannZeta ((σ:ℂ) + T₂*I))
      (fun σ : ℝ => logDeriv riemannZeta ((σ:ℂ) + T₂*I)
        + logDeriv Complex.Gammaℝ ((σ:ℂ) + T₂*I)) (Set.uIcc (1/2:ℝ) 2) := by
    intro σ hσ
    obtain ⟨hs0, hs1, hζ, hre⟩ := hseg T₂ (by linarith) hg2 σ hσ
    simp only
    rw [Zeta23.WeilEF.logDeriv_completedZeta _ hs1 hζ hre]
    ring
  have keyr : Set.EqOn (fun t : ℝ => logDeriv completedRiemannZeta ((2:ℂ) + t*I))
      (fun t : ℝ => logDeriv riemannZeta ((2:ℂ) + t*I)
        + logDeriv Complex.Gammaℝ ((2:ℂ) + t*I)) (Set.uIcc T₁ T₂) := by
    intro t ht
    obtain ⟨hs0, hs1, hζ, hre⟩ := hvert t ht
    simp only
    rw [Zeta23.WeilEF.logDeriv_completedZeta _ hs1 hζ hre]
    ring
  -- integrability of the ζ and Γℝ pieces on each segment
  have hintb : ∀ (T : ℝ), 1 ≤ T → GoodHeight T →
      IntervalIntegrable (fun σ : ℝ => logDeriv riemannZeta ((σ:ℂ) + T*I))
        MeasureTheory.volume (1/2) 2 := by
    intro T hT hg
    apply ContinuousOn.intervalIntegrable
    intro σ hσ
    obtain ⟨_, hs1, hζ, _⟩ := hseg T hT hg σ hσ
    have hparam : ContinuousAt (fun σ : ℝ => (σ:ℂ) + T*I) σ := by fun_prop
    exact ContinuousAt.continuousWithinAt
      (ContinuousAt.comp (g := logDeriv riemannZeta) (f := fun σ : ℝ => (σ:ℂ) + T*I)
        (continuousAt_logDeriv_zeta hs1 hζ) hparam)
  have hintbΓ : ∀ (T : ℝ), 1 ≤ T → GoodHeight T →
      IntervalIntegrable (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ:ℂ) + T*I))
        MeasureTheory.volume (1/2) 2 := by
    intro T hT hg
    apply ContinuousOn.intervalIntegrable
    intro σ hσ
    obtain ⟨_, _, _, hre⟩ := hseg T hT hg σ hσ
    have hparam : ContinuousAt (fun σ : ℝ => (σ:ℂ) + T*I) σ := by fun_prop
    exact ContinuousAt.continuousWithinAt
      (ContinuousAt.comp (g := logDeriv Complex.Gammaℝ) (f := fun σ : ℝ => (σ:ℂ) + T*I)
        (continuousAt_logDeriv_Gammaℝ hre) hparam)
  have hintr : IntervalIntegrable (fun t : ℝ => logDeriv riemannZeta ((2:ℂ) + t*I))
      MeasureTheory.volume T₁ T₂ := by
    apply ContinuousOn.intervalIntegrable
    intro t ht
    obtain ⟨_, hs1, hζ, _⟩ := hvert t ht
    have hparam : ContinuousAt (fun t : ℝ => (2:ℂ) + t*I) t := by fun_prop
    exact ContinuousAt.continuousWithinAt
      (ContinuousAt.comp (g := logDeriv riemannZeta) (f := fun t : ℝ => (2:ℂ) + t*I)
        (continuousAt_logDeriv_zeta hs1 hζ) hparam)
  have hintrΓ : IntervalIntegrable (fun t : ℝ => logDeriv Complex.Gammaℝ ((2:ℂ) + t*I))
      MeasureTheory.volume T₁ T₂ := by
    apply ContinuousOn.intervalIntegrable
    intro t ht
    obtain ⟨_, _, _, hre⟩ := hvert t ht
    have hparam : ContinuousAt (fun t : ℝ => (2:ℂ) + t*I) t := by fun_prop
    exact ContinuousAt.continuousWithinAt
      (ContinuousAt.comp (g := logDeriv Complex.Gammaℝ) (f := fun t : ℝ => (2:ℂ) + t*I)
        (continuousAt_logDeriv_Gammaℝ hre) hparam)
  -- assemble
  unfold halfContour
  rw [intervalIntegral.integral_congr keyb, intervalIntegral.integral_congr keyt,
    intervalIntegral.integral_congr keyr,
    intervalIntegral.integral_add (hintb T₁ h1 hg1) (hintbΓ T₁ h1 hg1),
    intervalIntegral.integral_add (hintb T₂ (by linarith) hg2) (hintbΓ T₂ (by linarith) hg2),
    intervalIntegral.integral_add hintr hintrΓ]
  ring


/-- Zero-free ordinates are dense enough: every interval [a, a+1] (a ≥ 0) contains one
(finitely many ordinates per window, Zeta23.zerosIn_finite). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75c03435ac68cb9371c18dc60202bf324c599b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
