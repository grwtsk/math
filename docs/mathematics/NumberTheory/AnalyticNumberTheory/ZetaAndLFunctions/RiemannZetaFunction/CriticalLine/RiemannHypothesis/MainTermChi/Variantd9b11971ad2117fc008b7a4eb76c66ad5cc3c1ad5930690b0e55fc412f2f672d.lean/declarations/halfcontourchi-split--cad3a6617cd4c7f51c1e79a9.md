# halfContourChi_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be2de34516f6248636513b16bb9571ab47c39d3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6997fa3b-0504-6174-ff31-69f4093255a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f36138e-35e2-ea15-01ed-08b25ea1e580",
  "kind": "lemma",
  "lexical_name": "halfContourChi_split",
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
  "slug": "halfcontourchi-split--cad3a6617cd4c7f51c1e79a9",
  "source": {
    "blob": "be2de34516f6248636513b16bb9571ab47c39d3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cad3a6617cd4c7f51c1e79a9f2bc275c604c0c93bc0003d4f238586da8b982ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f36138e-35e2-ea15-01ed-08b25ea1e580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma halfContourChi_split (hq : 1 < q) (hprim : χ.IsPrimitive) {κ : ℕ}
    (hκdef : ∀ s, gammaFactor χ s = Complex.Gammaℝ (s + κ)) {T₁ T₂ : ℝ}
    (_h1 : 1 ≤ T₁) (_h12 : T₁ ≤ T₂) (hg1 : GoodHeightL χ T₁) (hg2 : GoodHeightL χ T₂) :
    RvM.halfContour (logDeriv (completedLSym χ)) T₁ T₂ =
      RvM.halfContour (logDeriv χ.LFunction) T₁ T₂ +
        RvM.halfContour (logDeriv (archChi q κ)) T₁ T₂ := by
  have hχ1 := ne_one_of_primitive hq hprim
  -- pointwise split on Re s ∈ [1/2, 2] with L s ≠ 0
  have hpt : ∀ s : ℂ, (1/2:ℝ) ≤ s.re → 0 < s.re → χ.LFunction s ≠ 0 →
      logDeriv (completedLSym χ) s = logDeriv χ.LFunction s + logDeriv (archChi q κ) s := by
    intro s hσ hσ0 hL
    have h := logDeriv_completedLSym_split hq hχ1 hσ0 hL
    rw [h]
    congr 1
    have : (fun z => (q:ℂ)^(z/2) * gammaFactor χ z) = archChi q κ := by
      funext z
      rw [hκdef z]
      rfl
    rw [this]
  -- segment-wise equality of the three integrals
  have hhor : ∀ T : ℝ, GoodHeightL χ T →
      (∫ σ in (1/2:ℝ)..2, logDeriv (completedLSym χ) ((σ:ℂ) + T * I))
        = (∫ σ in (1/2:ℝ)..2, logDeriv χ.LFunction ((σ:ℂ) + T * I))
          + ∫ σ in (1/2:ℝ)..2, logDeriv (archChi q κ) ((σ:ℂ) + T * I) := by
    intro T hgood
    have hcongr : ∀ σ ∈ Set.uIcc (1/2:ℝ) 2,
        logDeriv (completedLSym χ) ((σ:ℂ) + T * I)
          = logDeriv χ.LFunction ((σ:ℂ) + T * I) + logDeriv (archChi q κ) ((σ:ℂ) + T * I) := by
      intro σ hσ
      rw [Set.uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
      exact hpt _ (by simpa using hσ.1) (by simp; linarith [hσ.1])
        (LFunction_ne_zero_on_segment' hq hprim hσ.1 hgood)
    rw [intervalIntegral.integral_congr hcongr]
    apply intervalIntegral.integral_add
    · apply ContinuousOn.intervalIntegrable
      apply (continuousOn_logDeriv_LFunction hχ1 (S := {s : ℂ | (1/2:ℝ) ≤ s.re ∧ s.im = T ∧
          χ.LFunction s ≠ 0}) (fun s hs => hs.2.2)).comp (by fun_prop : Continuous fun σ : ℝ =>
          (σ:ℂ) + T * I).continuousOn ?_
      intro σ hσ
      rw [Set.uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
      exact ⟨by simpa using hσ.1, by simp, LFunction_ne_zero_on_segment' hq hprim hσ.1 hgood⟩
    · apply ContinuousOn.intervalIntegrable
      apply ((logDeriv_archChi_differentiableOn q κ).continuousOn.comp
        (by fun_prop : Continuous fun σ : ℝ => (σ:ℂ) + T * I).continuousOn ?_)
      intro σ hσ
      rw [Set.uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
      show (0:ℝ) < ((σ:ℂ) + T * I).re
      simp
      linarith [hσ.1]
  have hvert :
      (∫ t in T₁..T₂, logDeriv (completedLSym χ) ((2:ℂ) + t * I))
        = (∫ t in T₁..T₂, logDeriv χ.LFunction ((2:ℂ) + t * I))
          + ∫ t in T₁..T₂, logDeriv (archChi q κ) ((2:ℂ) + t * I) := by
    have hcongr : ∀ t ∈ Set.uIcc T₁ T₂,
        logDeriv (completedLSym χ) ((2:ℂ) + t * I)
          = logDeriv χ.LFunction ((2:ℂ) + t * I) + logDeriv (archChi q κ) ((2:ℂ) + t * I) := by
      intro t ht
      have hre2 : ((2:ℂ) + t * I).re = 2 := by simp
      exact hpt _ (by rw [hre2]; norm_num) (by rw [hre2]; norm_num)
        (LFunction_ne_zero_of_two_le_re (by rw [hre2]))
    rw [intervalIntegral.integral_congr hcongr]
    apply intervalIntegral.integral_add
    · apply ContinuousOn.intervalIntegrable
      apply (continuousOn_logDeriv_LFunction hχ1 (S := {s : ℂ | s.re = 2})
        (fun s hs => LFunction_ne_zero_of_two_le_re (by rw [hs]))).comp
        (by fun_prop : Continuous fun t : ℝ => (2:ℂ) + t * I).continuousOn ?_
      intro t ht
      show ((2:ℂ) + t * I).re = 2
      simp
    · apply ContinuousOn.intervalIntegrable
      apply ((logDeriv_archChi_differentiableOn q κ).continuousOn.comp
        (by fun_prop : Continuous fun t : ℝ => (2:ℂ) + t * I).continuousOn ?_)
      intro t ht
      show (0:ℝ) < ((2:ℂ) + t * I).re
      simp
  unfold RvM.halfContour
  rw [hhor T₁ hg1, hhor T₂ hg2, hvert]
  ring

/-! ### The q-UNIFORM assembly (absolute constants) -/

/-- q-uniform |μ_χ| ≤ (C+2)·log(q(τ+3)) for τ ≥ 1, from the bounded Stirling field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be2de34516f6248636513b16bb9571ab47c39d3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
