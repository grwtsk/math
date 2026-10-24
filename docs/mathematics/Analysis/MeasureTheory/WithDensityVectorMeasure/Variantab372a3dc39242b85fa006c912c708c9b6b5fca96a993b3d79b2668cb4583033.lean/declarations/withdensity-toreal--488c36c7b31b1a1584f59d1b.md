# withDensityᵥ_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4737ad5-dd55-5d18-cae8-dd0799fa06e4",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_toReal",
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
  "slug": "withdensity-toreal--488c36c7b31b1a1584f59d1b",
  "source": {
    "blob": "f13be07516fd409d36a16c9e5418feb90f4dcbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488c36c7b31b1a1584f59d1be4ec8eeebeef5d2a2fc794035e1b919969661cdb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4737ad5-dd55-5d18-cae8-dd0799fa06e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_toReal {f : α → ℝ≥0∞} (hfm : AEMeasurable f μ) (hf : (∫⁻ x, f x ∂μ) ≠ ∞) :
    (μ.withDensityᵥ fun x => (f x).toReal) =
      @toSignedMeasure α _ (μ.withDensity f) (isFiniteMeasure_withDensity hf) := by
  have hfi := integrable_toReal_of_lintegral_ne_top hfm hf
  haveI := isFiniteMeasure_withDensity hf
  ext i hi
  rw [withDensityᵥ_apply hfi hi, toSignedMeasure_apply_measurable hi, withDensity_apply _ hi,
    integral_toReal hfm.restrict]
  refine' ae_lt_top' hfm.restrict (ne_top_of_le_ne_top hf _)
  conv_rhs => rw [← set_lintegral_univ]
  exact lintegral_mono_set (Set.subset_univ _)
#align measure_theory.with_densityᵥ_to_real MeasureTheory.withDensityᵥ_toReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13be07516fd409d36a16c9e5418feb90f4dcbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
