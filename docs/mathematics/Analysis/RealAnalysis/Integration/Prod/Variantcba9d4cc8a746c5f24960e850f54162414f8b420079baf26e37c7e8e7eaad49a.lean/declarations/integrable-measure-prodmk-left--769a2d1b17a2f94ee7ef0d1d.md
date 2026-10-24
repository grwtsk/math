# integrable_measure_prodMk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:907bda81-5799-3292-ba25-2954fb801f50",
  "kind": "theorem",
  "lexical_name": "integrable_measure_prodMk_left",
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
  "slug": "integrable-measure-prodmk-left--769a2d1b17a2f94ee7ef0d1d",
  "source": {
    "blob": "1801c1787071c513d02810bfe62707e7c4cb520e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:769a2d1b17a2f94ee7ef0d1d6cb258b4bc9eac2d30322942f26791e8a3c6d80a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:907bda81-5799-3292-ba25-2954fb801f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_measure_prodMk_left {s : Set (α × β)} (hs : MeasurableSet s)
    (h2s : (μ.prod ν) s ≠ ∞) : Integrable (fun x => ν.real (Prod.mk x ⁻¹' s)) μ := by
  refine ⟨(measurable_measure_prodMk_left hs).ennreal_toReal.aemeasurable.aestronglyMeasurable, ?_⟩
  simp_rw [hasFiniteIntegral_iff_enorm, measureReal_def, enorm_eq_ofReal toReal_nonneg]
  convert! h2s.lt_top using 1
  rw [prod_apply hs]
  apply lintegral_congr_ae
  filter_upwards [ae_measure_lt_top hs h2s] with x hx
  rw [lt_top_iff_ne_top] at hx
  simp [ofReal_toReal, hx]

end Measure

end MeasureTheory

open MeasureTheory.Measure

section

variable {X : Type*} [TopologicalSpace X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1801c1787071c513d02810bfe62707e7c4cb520e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
