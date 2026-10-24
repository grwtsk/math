# halfContour_omegaW_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:856f6873-32f5-aa72-4822-93d5af56e482",
  "kind": "theorem",
  "lexical_name": "halfContour_omegaW_split",
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
  "slug": "halfcontour-omegaw-split--d9b4e4e6ff0afb02d2b17639",
  "source": {
    "blob": "914d33c50b2fa2dc9431a58ebc899c28af675d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b4e4e6ff0afb02d2b176394b62fc1259641564a2e51204da8cb30019173b9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856f6873-32f5-aa72-4822-93d5af56e482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfContour_omegaW_split {T₁ T₂ : ℝ} (h1 : 0 < T₁) (h12 : T₁ ≤ T₂)
    (hg₁ : GoodHeightW T₁) (hg₂ : GoodHeightW T₂) (hvert : ∀ t ∈ Icc T₁ T₂, hardyW (2 + t * I) ≠ 0) :
    halfContour (logDeriv omegaW) T₁ T₂ =
      halfContour (logDeriv Complex.Gammaℝ) T₁ T₂ + halfContour (logDeriv hardyW) T₁ T₂ := by
  have hseg : ∀ (T : ℝ), 0 < T → GoodHeightW T → ∀ σ ∈ uIcc (1 / 2 : ℝ) 2,
      0 < ((σ : ℂ) + T * I).re ∧ ((σ : ℂ) + T * I).im ≠ 0 ∧ hardyW ((σ : ℂ) + T * I) ≠ 0 := by
    intro T hT hg σ hσ
    rw [uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
    exact ⟨by simp; linarith [hσ.1], by simp [hT.ne'], goodHeightW_ne_zero hT.ne' hg (by simp)⟩
  have hver : ∀ t ∈ uIcc T₁ T₂, 0 < ((2 : ℂ) + t * I).re ∧ ((2 : ℂ) + t * I).im ≠ 0 ∧
      hardyW ((2 : ℂ) + t * I) ≠ 0 := by
    intro t ht
    rw [uIcc_of_le h12] at ht
    exact ⟨by simp, by simp; linarith [ht.1], hvert t ht⟩
  have hT₂ : 0 < T₂ := lt_of_lt_of_le h1 h12
  have keyb : EqOn (fun σ : ℝ => logDeriv omegaW ((σ : ℂ) + T₁ * I))
      (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + T₁ * I) + logDeriv hardyW ((σ : ℂ) + T₁ * I))
      (uIcc (1 / 2 : ℝ) 2) := fun σ hσ => by
    obtain ⟨-, him, hne⟩ := hseg T₁ h1 hg₁ σ hσ
    exact logDeriv_omegaW_eq him hne
  have keyt : EqOn (fun σ : ℝ => logDeriv omegaW ((σ : ℂ) + T₂ * I))
      (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + T₂ * I) + logDeriv hardyW ((σ : ℂ) + T₂ * I))
      (uIcc (1 / 2 : ℝ) 2) := fun σ hσ => by
    obtain ⟨-, him, hne⟩ := hseg T₂ hT₂ hg₂ σ hσ
    exact logDeriv_omegaW_eq him hne
  have keyr : EqOn (fun t : ℝ => logDeriv omegaW ((2 : ℂ) + t * I))
      (fun t : ℝ => logDeriv Complex.Gammaℝ ((2 : ℂ) + t * I) + logDeriv hardyW ((2 : ℂ) + t * I))
      (uIcc T₁ T₂) := fun t ht => by
    obtain ⟨-, him, hne⟩ := hver t ht
    exact logDeriv_omegaW_eq him hne
  have hΓc : ∀ {s : ℂ}, 0 < s.re → ContinuousAt (logDeriv Complex.Gammaℝ) s := fun hs =>
    (Zeta23.RvM.logDeriv_Gammaℝ_differentiableOn.differentiableAt
      (Zeta23.RvM.isOpen_rightHalfPlane.mem_nhds hs)).continuousAt
  have hWc : ∀ {s : ℂ}, s.im ≠ 0 → hardyW s ≠ 0 → ContinuousAt (logDeriv hardyW) s := fun hs hne =>
    continuousAt_logDeriv_of_analyticAt (hardyW_analyticAt hs) hne
  have hintbΓ : ∀ (T : ℝ), 0 < T → GoodHeightW T →
      IntervalIntegrable (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + T * I)) volume (1 / 2) 2 := by
    intro T hT hg
    apply ContinuousOn.intervalIntegrable
    intro σ hσ
    obtain ⟨hre, -, -⟩ := hseg T hT hg σ hσ
    exact ((hΓc hre).comp (f := fun σ : ℝ => (σ : ℂ) + T * I) (x := σ) (by fun_prop)).continuousWithinAt
  have hintbW : ∀ (T : ℝ), 0 < T → GoodHeightW T →
      IntervalIntegrable (fun σ : ℝ => logDeriv hardyW ((σ : ℂ) + T * I)) volume (1 / 2) 2 := by
    intro T hT hg
    apply ContinuousOn.intervalIntegrable
    intro σ hσ
    obtain ⟨-, him, hne⟩ := hseg T hT hg σ hσ
    exact ((hWc him hne).comp (f := fun σ : ℝ => (σ : ℂ) + T * I) (x := σ) (by fun_prop)).continuousWithinAt
  have hintrΓ : IntervalIntegrable (fun t : ℝ => logDeriv Complex.Gammaℝ ((2 : ℂ) + t * I)) volume T₁ T₂ := by
    apply ContinuousOn.intervalIntegrable
    intro t ht
    exact ((hΓc (hver t ht).1).comp (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t) (by fun_prop)).continuousWithinAt
  have hintrW : IntervalIntegrable (fun t : ℝ => logDeriv hardyW ((2 : ℂ) + t * I)) volume T₁ T₂ := by
    apply ContinuousOn.intervalIntegrable
    intro t ht
    exact ((hWc (hver t ht).2.1 (hver t ht).2.2).comp (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t)
      (by fun_prop)).continuousWithinAt
  unfold halfContour
  rw [integral_congr keyb, integral_congr keyt, integral_congr keyr,
    integral_add (hintbΓ T₁ h1 hg₁) (hintbW T₁ h1 hg₁), integral_add (hintbΓ T₂ hT₂ hg₂) (hintbW T₂ hT₂ hg₂),
    integral_add hintrΓ hintrW]
  ring

/-! ### the W-part of the half-contour is O(log T) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914d33c50b2fa2dc9431a58ebc899c28af675d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
