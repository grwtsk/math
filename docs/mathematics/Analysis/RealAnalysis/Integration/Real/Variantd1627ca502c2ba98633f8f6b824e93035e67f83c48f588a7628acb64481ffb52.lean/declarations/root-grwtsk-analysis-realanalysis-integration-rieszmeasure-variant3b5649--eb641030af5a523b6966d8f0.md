# _root_.GRWTSK.Analysis.RealAnalysis.Integration.RieszMeasure.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.MeasureTheory.Measure.exists_regular_eq_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b2b2ee2-8e5d-a798-e2dd-9c2d0acc7e2f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.RieszMeasure.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.MeasureTheory.Measure.exists_regular_eq_of_compactSpace",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-rieszmeasure-variant3b5649--eb641030af5a523b6966d8f0",
  "source": {
    "blob": "76072544280c8e16574e79284f627a921a700291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 463,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb641030af5a523b6966d8f0e5153af99df9eb906eda3205e79c3b2ce7a3c7ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b2b2ee2-8e5d-a798-e2dd-9c2d0acc7e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.Integration.RieszMeasure.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.MeasureTheory.Measure.exists_regular_eq_of_compactSpace [CompactSpace X]
    (μ : Measure X) [IsFiniteMeasure μ] :
    ∃ (ν : Measure X), ν.Regular ∧ IsFiniteMeasure ν ∧
      ∀ g : X →ᵇ ℝ, ∫ x, g x ∂μ = ∫ x, g x ∂ν := by
  let Λ : C_c(X, ℝ) →ₚ[ℝ] ℝ :=
  { toFun g := ∫ x, g x ∂μ
    map_add' g g' := integral_add g.integrable g'.integrable
    map_smul' c g := integral_smul c g
    monotone' g g' hgg' := integral_mono g.integrable g'.integrable hgg' }
  refine ⟨RealRMK.rieszMeasure Λ, by infer_instance, by infer_instance, fun g ↦ ?_⟩
  let g' : C_c(X, ℝ) :=
  { toFun := g
    hasCompactSupport' := HasCompactSupport.of_compactSpace _ }
  exact (integral_rieszMeasure Λ g').symm

/-- Given a finite measure supported on a compact set, there exists another finite measure which
integrates in the same way bounded continuous functions, and is regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76072544280c8e16574e79284f627a921a700291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
