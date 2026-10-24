# halfContour_xiDeriv_split

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
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41dc43ee-6162-7b9c-8526-701323b699db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49411d15-9e9a-2c49-e51b-bcf93facd723",
  "kind": "theorem",
  "lexical_name": "halfContour_xiDeriv_split",
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
  "slug": "halfcontour-xideriv-split--901c338915285bf6e7bdd42c",
  "source": {
    "blob": "9fa8e4703df69d60e537b5ecef1c3888d474e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901c338915285bf6e7bdd42c5f018dca59eb65b81c7e958956829192180930c1",
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

Occurrence: `result:49411d15-9e9a-2c49-e51b-bcf93facd723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfContour_xiDeriv_split (hF2 : XiDerivZerosInStrip) {T₁ T₂ : ℝ}
    (hg₁ : GoodHeight T₁) (hg₂ : GoodHeight T₂) :
    halfContour (logDeriv xiDeriv) T₁ T₂ =
      halfContour (logDeriv Complex.Gammaℝ) T₁ T₂ + halfContour (logDeriv Yfn) T₁ T₂ := by
  -- facts at horizontal-segment points (good height T): Re s = σ ∈ [1/2,2] > 0, ξ′ ≠ 0
  have hseg : ∀ (T : ℝ), GoodHeight T → ∀ σ ∈ uIcc (1 / 2 : ℝ) 2,
      0 < ((σ : ℂ) + T * I).re ∧ xiDeriv ((σ : ℂ) + T * I) ≠ 0 := by
    intro T hg σ hσ
    rw [uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
    exact ⟨by simp; linarith [hσ.1], goodHeight_xiDeriv_ne_zero hg (by simp)⟩
  -- facts at vertical-segment points (Re s = 2): ξ′ ≠ 0 by (F2)
  have hvert : ∀ t : ℝ, 0 < ((2 : ℂ) + t * I).re ∧ xiDeriv ((2 : ℂ) + t * I) ≠ 0 := by
    intro t
    refine ⟨by simp, fun h => ?_⟩
    have := (hF2 _ h).2
    simp at this
  have keyb : EqOn (fun σ : ℝ => logDeriv xiDeriv ((σ : ℂ) + T₁ * I))
      (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + T₁ * I) + logDeriv Yfn ((σ : ℂ) + T₁ * I))
      (uIcc (1 / 2 : ℝ) 2) := fun σ hσ => by
    obtain ⟨hre, hne⟩ := hseg T₁ hg₁ σ hσ
    exact logDeriv_xiDeriv_eq hre hne
  have keyt : EqOn (fun σ : ℝ => logDeriv xiDeriv ((σ : ℂ) + T₂ * I))
      (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + T₂ * I) + logDeriv Yfn ((σ : ℂ) + T₂ * I))
      (uIcc (1 / 2 : ℝ) 2) := fun σ hσ => by
    obtain ⟨hre, hne⟩ := hseg T₂ hg₂ σ hσ
    exact logDeriv_xiDeriv_eq hre hne
  have keyr : EqOn (fun t : ℝ => logDeriv xiDeriv ((2 : ℂ) + t * I))
      (fun t : ℝ => logDeriv Complex.Gammaℝ ((2 : ℂ) + t * I) + logDeriv Yfn ((2 : ℂ) + t * I))
      (uIcc T₁ T₂) := fun t _ => by
    obtain ⟨hre, hne⟩ := hvert t
    exact logDeriv_xiDeriv_eq hre hne
  -- integrability: continuity of each piece along each segment
  have hΓc : ∀ {s : ℂ}, 0 < s.re → ContinuousAt (logDeriv Complex.Gammaℝ) s := fun hs =>
    (Zeta23.RvM.logDeriv_Gammaℝ_differentiableOn.differentiableAt
      (Zeta23.RvM.isOpen_rightHalfPlane.mem_nhds hs)).continuousAt
  have hYc : ∀ {s : ℂ}, 0 < s.re → xiDeriv s ≠ 0 → ContinuousAt (logDeriv Yfn) s := fun hs hne =>
    continuousAt_logDeriv_of_analyticAt (Yfn_analyticAt hs) (fun h => hne ((Yfn_eq_zero_iff hs).mp h))
  have hintbΓ : ∀ (T : ℝ), GoodHeight T →
      IntervalIntegrable (fun σ : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + T * I)) volume (1 / 2) 2 := by
    intro T hg
    apply ContinuousOn.intervalIntegrable
    intro σ hσ
    obtain ⟨hre, _⟩ := hseg T hg σ hσ
    exact ((hΓc hre).comp (f := fun σ : ℝ => (σ : ℂ) + T * I) (x := σ) (by fun_prop)).continuousWithinAt
  have hintbY : ∀ (T : ℝ), GoodHeight T →
      IntervalIntegrable (fun σ : ℝ => logDeriv Yfn ((σ : ℂ) + T * I)) volume (1 / 2) 2 := by
    intro T hg
    apply ContinuousOn.intervalIntegrable
    intro σ hσ
    obtain ⟨hre, hne⟩ := hseg T hg σ hσ
    exact ((hYc hre hne).comp (f := fun σ : ℝ => (σ : ℂ) + T * I) (x := σ) (by fun_prop)).continuousWithinAt
  have hintrΓ : IntervalIntegrable (fun t : ℝ => logDeriv Complex.Gammaℝ ((2 : ℂ) + t * I)) volume T₁ T₂ := by
    apply ContinuousOn.intervalIntegrable
    intro t _
    exact ((hΓc (hvert t).1).comp (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t) (by fun_prop)).continuousWithinAt
  have hintrY : IntervalIntegrable (fun t : ℝ => logDeriv Yfn ((2 : ℂ) + t * I)) volume T₁ T₂ := by
    apply ContinuousOn.intervalIntegrable
    intro t _
    exact ((hYc (hvert t).1 (hvert t).2).comp (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t)
      (by fun_prop)).continuousWithinAt
  unfold halfContour
  rw [integral_congr keyb, integral_congr keyt, integral_congr keyr,
    integral_add (hintbΓ T₁ hg₁) (hintbY T₁ hg₁), integral_add (hintbΓ T₂ hg₂) (hintbY T₂ hg₂),
    integral_add hintrΓ hintrY]
  ring

/-! ### the Y′/Y part of the half-contour is O(log T) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa8e4703df69d60e537b5ecef1c3888d474e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
