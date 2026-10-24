# integrable_comp_rnDeriv_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14a5bcafe26a7c10742129a196763d9d3ccb2be5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4acbd4db-9758-85d1-878e-9fce8d75a0f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:588bd338-382b-59cc-467a-a844ca58ae5e",
  "kind": "lemma",
  "lexical_name": "integrable_comp_rnDeriv_map",
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
  "slug": "integrable-comp-rnderiv-map--973819e7e7a85d3dce4f0e8e",
  "source": {
    "blob": "14a5bcafe26a7c10742129a196763d9d3ccb2be5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 67,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973819e7e7a85d3dce4f0e8e5149d63610ad7ef0428a0410904cf34b810d5908",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:588bd338-382b-59cc-467a-a844ca58ae5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_comp_rnDeriv_map (hμν : μ ≪ ν) (hg : Measurable g) (hf : StronglyMeasurable f)
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont_at : ContinuousWithinAt f (Ici 0) 0)
    (h_int : Integrable (fun x ↦ f (μ.rnDeriv ν x).toReal) ν) :
    Integrable (fun x ↦ f ((μ.map g).rnDeriv (ν.map g) x).toReal) (ν.map g) := by
  have hf_cont : ContinuousOn f (Ici 0) := hf_cvx.continuousOn_Ici hf_cont_at
  obtain ⟨c, c', h⟩ : ∃ c c', ∀ x, 0 ≤ x → c * x + c' ≤ f x :=
    hf_cvx.exists_affine_le_real isClosed_Ici hf_cont.lowerSemicontinuousOn
  rw [integrable_map_measure (StronglyMeasurable.aestronglyMeasurable (by fun_prop))
      hg.aemeasurable]
  refine integrable_of_le_of_le (f := fun x ↦ f ((∂μ.map g/∂ν.map g) (g x)).toReal)
    (g₁ := fun x ↦ c * ((∂μ.map g/∂ν.map g) (g x)).toReal + c')
    (g₂ := fun x ↦ (ν[fun x ↦ f (μ.rnDeriv ν x).toReal | m𝓨.comap g]) x)
    ?_ ?_ ?_ ?_ integrable_condExp
  · exact StronglyMeasurable.aestronglyMeasurable (by fun_prop)
  · exact ae_of_all _ (fun x ↦ h _ ENNReal.toReal_nonneg)
  · exact hf_cvx.comp_rnDeriv_map_le hμν hg hf hf_cont_at h_int
  · refine (Integrable.const_mul ?_ _).add (integrable_const _)
    rw [integrable_congr (toReal_rnDeriv_map hμν hg)]
    fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a5bcafe26a7c10742129a196763d9d3ccb2be5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
