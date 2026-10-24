# klDiv_smul_right_eq_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13554232dca143c81fbbef5d2ed808b81ec95776",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d07d6964-cf69-e73c-c3d9-bce612f27de7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03402366-4574-7955-a0cc-245c464c57e6",
  "kind": "lemma",
  "lexical_name": "klDiv_smul_right_eq_smul_left",
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
  "slug": "kldiv-smul-right-eq-smul-left--c767c52a8873c61c0c12c71f",
  "source": {
    "blob": "13554232dca143c81fbbef5d2ed808b81ec95776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c767c52a8873c61c0c12c71f8aec8b1fa97e592d88d40f07c73263e5f39cfa6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03402366-4574-7955-a0cc-245c464c57e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma klDiv_smul_right_eq_smul_left [IsFiniteMeasure μ] [IsFiniteMeasure ν] {c : ℝ≥0} (hc : c ≠ 0) :
    klDiv μ (c • ν) = c * klDiv (c⁻¹ • μ) ν := by
  have hc' : (c : ℝ≥0∞) ≠ 0 := by simpa
  have hμ_smul : μ = c • (c⁻¹ • μ) := by rw [smul_smul, mul_inv_cancel₀ hc, one_smul]
  have hν_smul : ν = c⁻¹ • (c • ν) := by rw [smul_smul, inv_mul_cancel₀ hc, one_smul]
  by_cases hμν : μ ≪ ν
  swap
  · rw [klDiv_of_not_ac, klDiv_of_not_ac, ENNReal.mul_top hc']
    · refine fun h_contra ↦ hμν ?_
      rw [hμ_smul]
      exact h_contra.smul_left _
    · refine fun h_contra ↦ hμν ?_
      rw [hν_smul]
      exact h_contra.smul_right (by simpa)
  have hμν_right := hμν.smul_right hc'
  simp only [Measure.coe_nnreal_smul] at hμν_right
  by_cases h_int : Integrable (llr μ ν) μ
  swap
  · rw [klDiv_of_not_integrable, klDiv_of_not_integrable, ENNReal.mul_top hc']
    · refine fun h_contra ↦ h_int ?_
      rw [hμ_smul]
      refine Integrable.smul_measure_nnreal ?_
      rw [integrable_congr (llr_smul_nnreal_left (hμν.smul_left _) c hc)]
      fun_prop
    · refine fun h_contra ↦ h_int ?_
      rw [hν_smul]
      have : IsFiniteMeasure ((c : ℝ≥0∞) • ν) := by
        simp only [Measure.coe_nnreal_smul]
        infer_instance
      have h := llr_smul_nnreal_right (hμν.smul_right hc') c⁻¹ (by simpa)
      simp only [Measure.coe_nnreal_smul, NNReal.coe_inv, log_inv, sub_neg_eq_add] at h
      rw [integrable_congr h]
      fun_prop
  have h_int_left : Integrable (llr (c⁻¹ • μ) ν) (c⁻¹ • μ) := by
    refine Integrable.smul_measure_nnreal ?_
    rw [integrable_congr (llr_smul_nnreal_left hμν c⁻¹ (by simpa))]
    fun_prop
  have h_int_right : Integrable (llr μ (c • ν)) μ := by
    rw [integrable_congr (llr_smul_nnreal_right hμν c (by simpa))]
    fun_prop
  rw [← ENNReal.ofReal_toReal (klDiv_ne_top hμν_right h_int_right),
    toReal_klDiv_smul_right_eq_smul_left hμν h_int c]
  simp only [NNReal.zero_le_coe, ENNReal.ofReal_mul, ENNReal.ofReal_coe_nnreal]
  rw [ENNReal.ofReal_toReal]
  exact klDiv_ne_top (hμν.smul_left _) h_int_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13554232dca143c81fbbef5d2ed808b81ec95776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
