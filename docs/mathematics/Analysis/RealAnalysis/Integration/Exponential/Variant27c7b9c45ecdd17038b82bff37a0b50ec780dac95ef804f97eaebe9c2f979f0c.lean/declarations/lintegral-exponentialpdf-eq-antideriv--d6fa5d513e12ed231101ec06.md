# lintegral_exponentialPDF_eq_antiDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f216d7e749e28202a90e8509d8f373d5fafdd959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d6f2226-211f-f0e2-f1c0-039db29d4362",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2831b600-76dc-2ea0-dea8-72349da067b9",
  "kind": "lemma",
  "lexical_name": "lintegral_exponentialPDF_eq_antiDeriv",
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
  "slug": "lintegral-exponentialpdf-eq-antideriv--d6fa5d513e12ed231101ec06",
  "source": {
    "blob": "f216d7e749e28202a90e8509d8f373d5fafdd959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6fa5d513e12ed231101ec064bff9ee6962261522a820613cafeba4d1be5ba0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2831b600-76dc-2ea0-dea8-72349da067b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_exponentialPDF_eq_antiDeriv {r : ℝ} (hr : 0 < r) (x : ℝ) :
    ∫⁻ y in Iic x, exponentialPDF r y
    = ENNReal.ofReal (if 0 ≤ x then 1 - exp (-(r * x)) else 0) := by
  split_ifs with h
  case neg =>
    simp only [exponentialPDF_eq]
    rw [setLIntegral_congr_fun measurableSet_Iic, lintegral_zero, ENNReal.ofReal_zero]
    exact ae_of_all _ fun a (_ : a ≤ _) ↦ by rw [if_neg (by linarith), ENNReal.ofReal_eq_zero]
  case pos =>
    rw [lintegral_Iic_eq_lintegral_Iio_add_Icc _ h, lintegral_exponentialPDF_of_nonpos (le_refl 0),
      zero_add]
    simp only [exponentialPDF_eq]
    rw [setLIntegral_congr_fun measurableSet_Icc (ae_of_all _
        (by intro a ⟨(hle : _ ≤ a), _⟩; rw [if_pos hle]))]
    rw [← ENNReal.toReal_eq_toReal _ ENNReal.ofReal_ne_top, ← integral_eq_lintegral_of_nonneg_ae
        (Eventually.of_forall fun _ ↦ le_of_lt (mul_pos hr (exp_pos _)))]
    · have : ∫ a in uIoc 0 x, r * rexp (-(r * a)) = ∫ a in (0)..x, r * rexp (-(r * a)) := by
        rw [intervalIntegral.intervalIntegral_eq_integral_uIoc, smul_eq_mul, if_pos h, one_mul]
      rw [integral_Icc_eq_integral_Ioc, ← uIoc_of_le h, this]
      rw [intervalIntegral.integral_eq_sub_of_hasDeriv_right_of_le h
        (f := fun a ↦ -1 * rexp (-(r * a))) _ _]
      · rw [ENNReal.toReal_ofReal_eq_iff.2 (by norm_num; positivity)]
        norm_num; ring
      · simp only [intervalIntegrable_iff, uIoc_of_le h]
        exact Integrable.const_mul (exp_neg_integrableOn_Ioc hr) _
      · have : Continuous (fun a ↦ rexp (-(r * a))) := by
          simp only [← neg_mul]; exact (continuous_mul_left (-r)).rexp
        exact Continuous.continuousOn (Continuous.comp' (continuous_mul_left (-1)) this)
      · simp only [neg_mul, one_mul]
        exact fun _ _ ↦ HasDerivAt.hasDerivWithinAt hasDerivAt_neg_exp_mul_exp
    · refine Integrable.aestronglyMeasurable (Integrable.const_mul ?_ _)
      rw [← IntegrableOn, integrableOn_Icc_iff_integrableOn_Ioc]
      exact exp_neg_integrableOn_Ioc hr
    · refine ne_of_lt (IntegrableOn.setLIntegral_lt_top ?_)
      rw [integrableOn_Icc_iff_integrableOn_Ioc]
      exact Integrable.const_mul (exp_neg_integrableOn_Ioc hr) _

/-- The CDF of the exponential distribution equals ``1 - exp (-(r * x))`` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f216d7e749e28202a90e8509d8f373d5fafdd959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
