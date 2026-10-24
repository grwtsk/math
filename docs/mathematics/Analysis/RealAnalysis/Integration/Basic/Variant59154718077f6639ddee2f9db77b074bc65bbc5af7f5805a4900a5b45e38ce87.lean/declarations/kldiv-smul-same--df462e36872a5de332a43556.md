# klDiv_smul_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:510c629b-fada-7cdf-cd74-ea90c8c30bbd",
  "kind": "lemma",
  "lexical_name": "klDiv_smul_same",
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
  "slug": "kldiv-smul-same--df462e36872a5de332a43556",
  "source": {
    "blob": "d0ed9b931229caef19dd1626bfb1ac775a5194e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 294,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df462e36872a5de332a43556ee3e2d3ba1695f72b5b90f993e201725cc8432ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:510c629b-fada-7cdf-cd74-ea90c8c30bbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma klDiv_smul_same [IsFiniteMeasure μ] [IsFiniteMeasure ν] (c : ℝ≥0) :
    klDiv (c • μ) (c • ν) = c * klDiv μ ν := by
  by_cases hc : c = 0
  · simp [hc]
  have hc' : (c : ℝ≥0∞) ≠ 0 := by simpa
  have hμ_smul (μ : Measure α) : μ = c⁻¹ • (c • μ) := by
    rw [smul_smul, inv_mul_cancel₀ hc, one_smul]
  by_cases hμν : μ ≪ ν
  swap
  · rw [klDiv_of_not_ac hμν, klDiv_of_not_ac, ENNReal.mul_top hc']
    refine fun h_contra ↦ hμν ?_
    rw [hμ_smul μ, hμ_smul ν]
    exact h_contra.smul _
  by_cases h_int : Integrable (llr μ ν) μ
  swap
  · rw [klDiv_of_not_integrable h_int, klDiv_of_not_integrable, ENNReal.mul_top hc']
    refine fun h_contra ↦ h_int ?_
    rw [hμ_smul μ, hμ_smul ν]
    refine Integrable.smul_measure_nnreal ?_
    rw [integrable_congr (llr_smul_nnreal_same (hμν.smul c) c⁻¹ (by simpa))]
    fun_prop
  rw [← ENNReal.ofReal_toReal (klDiv_ne_top (hμν.smul c) _),
    ← ENNReal.ofReal_toReal (klDiv_ne_top hμν h_int)]
  swap
  · refine Integrable.smul_measure_nnreal ?_
    rw [integrable_congr (llr_smul_nnreal_same hμν c hc)]
    fun_prop
  simp [toReal_klDiv_smul_same hμν h_int]

section Inequalities

variable [IsFiniteMeasure μ] [IsFiniteMeasure ν]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant59154718077f6639ddee2f9db77b074bc65bbc5af7f5805a4900a5b45e38ce87.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ed9b931229caef19dd1626bfb1ac775a5194e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
