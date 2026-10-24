# integrable_exp_mul_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17f19e29a104382b33c6b64c5a3099841eef1c44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51bed0b5-488b-7b06-cfc0-01b247d02386",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58a5de83-cb1e-254a-bd99-c215d56f512a",
  "kind": "lemma",
  "lexical_name": "integrable_exp_mul_of_mem_Icc",
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
  "slug": "integrable-exp-mul-of-mem-icc--b46f7a4d68679233d6f07073",
  "source": {
    "blob": "17f19e29a104382b33c6b64c5a3099841eef1c44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 499,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b46f7a4d68679233d6f07073f7a5094c30f24a71593aff42a3243e7d2971411f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58a5de83-cb1e-254a-bd99-c215d56f512a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_exp_mul_of_mem_Icc [IsFiniteMeasure μ] {X : Ω → ℝ} {a b t : ℝ}
    (hm : AEMeasurable X μ) (hb : ∀ᵐ ω ∂μ, X ω ∈ Set.Icc a b) :
    Integrable (fun ω ↦ exp (t * X ω)) μ := by
  apply Integrable.of_mem_Icc (exp (min (a * t) (b * t))) (exp (max (a * t) (b * t)))
  · exact (measurable_exp.comp_aemeasurable (hm.const_mul t))
  filter_upwards [hb] with ω ⟨hl, hr⟩
  simp only [Set.mem_Icc, exp_le_exp, inf_le_iff, le_sup_iff]
  by_cases ht : 0 ≤ t
  · exact ⟨Or.inl (by nlinarith), Or.inr (by nlinarith)⟩
  · exact ⟨Or.inr (by nlinarith), Or.inl (by nlinarith)⟩

end ProbabilityTheory

namespace ContinuousLinearMap

variable {𝕜 E F : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [NormedAddCommGroup F]
    [NormedSpace 𝕜 E] [NormedSpace ℝ E] [NormedSpace 𝕜 F] [NormedSpace ℝ F] [CompleteSpace E]
    [CompleteSpace F] [MeasurableSpace E] {μ : Measure E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f19e29a104382b33c6b64c5a3099841eef1c44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
