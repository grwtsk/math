# norm_logDeriv_Gammaℝ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 610,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9591424-22c1-96d1-a9f0-288dbb6096f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e401cc76-6c13-3212-8b0f-658872d8e29f",
  "kind": "lemma",
  "lexical_name": "norm_logDeriv_Gammaℝ_le",
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
  "slug": "norm-logderiv-gamma-le--ed6728f5937d8309175dbcc3",
  "source": {
    "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 610,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed6728f5937d8309175dbcc3b30bd7638c0a8069236d9e156c7668a3be725f58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e401cc76-6c13-3212-8b0f-658872d8e29f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_logDeriv_Gammaℝ_le : ∃ C : ℝ, 0 < C ∧ ∀ σ t : ℝ, 1 / 2 ≤ σ → σ ≤ 3 / 2 →
    ‖logDeriv Complex.Gammaℝ (σ + t * I)‖ ≤ C * Real.log (2 + |t|) := by
  obtain ⟨C, hC, hψ⟩ := digamma_growth_strip
  have hlogπ0 : 0 < Real.log Real.pi := Real.log_pos (by linarith [Real.pi_gt_three])
  refine ⟨2 * Real.log Real.pi + C, by positivity, ?_⟩
  intro σ t h1 h2
  have hre : 0 < ((σ : ℂ) + t * I).re := by simp; linarith
  rw [logDeriv_Gammaℝ hre]
  have hs2 : ((σ : ℂ) + t * I) / 2 = ((σ / 2 : ℝ) : ℂ) + ((t / 2 : ℝ) : ℂ) * I := by
    push_cast; ring
  have hψb := hψ (((σ : ℂ) + t * I) / 2) (by rw [hs2]; simp; linarith) (by rw [hs2]; simp; linarith)
  have him : (((σ : ℂ) + t * I) / 2).im = t / 2 := by rw [hs2]; simp
  rw [him] at hψb
  have hlog2 : Real.log 2 ≤ Real.log (2 + |t|) := Real.log_le_log (by norm_num) (by linarith [abs_nonneg t])
  have hlog2' : (1:ℝ) / 2 < Real.log 2 := by have := Real.log_two_gt_d9; linarith
  have hloght : Real.log (2 + |t / 2|) ≤ Real.log (2 + |t|) := by
    apply Real.log_le_log (by positivity)
    rw [abs_div, abs_two]; linarith [abs_nonneg t]
  have hlogπ : 0 < Real.log Real.pi := Real.log_pos (by linarith [Real.pi_gt_three])
  calc ‖-((Real.log Real.pi : ℝ) : ℂ) / 2 + 1 / 2 * Complex.digamma (((σ : ℂ) + t * I) / 2)‖
      ≤ ‖-((Real.log Real.pi : ℝ) : ℂ) / 2‖ + ‖1 / 2 * Complex.digamma (((σ : ℂ) + t * I) / 2)‖ :=
        norm_add_le _ _
    _ = Real.log Real.pi / 2 + (1 / 2) * ‖Complex.digamma (((σ : ℂ) + t * I) / 2)‖ := by
        rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hlogπ, norm_mul]
        norm_num
    _ ≤ Real.log Real.pi / 2 + (1 / 2) * (C * Real.log (2 + |t / 2|)) := by gcongr
    _ ≤ Real.log Real.pi * Real.log (2 + |t|) * 2 + C * Real.log (2 + |t|) := by
        nlinarith [hC.le, hloght, Real.log_nonneg (show (1:ℝ) ≤ 2 + |t/2| by linarith [abs_nonneg (t/2)])]
    _ = (2 * Real.log Real.pi + C) * Real.log (2 + |t|) := by ring

/-- **Archimedean line shift**: the Γℝ'/Γℝ-part of the two
vertical lines shifts to the critical line (rectangle with no poles of Γℝ'/Γℝ in Re s > 0,
horizontal pieces vanish by digamma growth × [eq:hfbound] decay of paperFT k). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc4a8b030c00845c3242faa3dbec21eaae5522b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
