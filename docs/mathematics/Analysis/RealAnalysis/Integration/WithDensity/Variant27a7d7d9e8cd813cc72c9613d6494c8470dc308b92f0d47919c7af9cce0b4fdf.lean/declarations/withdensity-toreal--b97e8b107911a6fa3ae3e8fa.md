# withDensityᵥ_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5e4a666-622e-15ab-9d57-952cbcfe128e",
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
  "slug": "withdensity-toreal--b97e8b107911a6fa3ae3e8fa",
  "source": {
    "blob": "3c830dd7edaad108101a49aef66f74893638c05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97e8b107911a6fa3ae3e8facbf349367734318502a1e9bb3f98afda08daf7aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e4a666-622e-15ab-9d57-952cbcfe128e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_toReal {f : α → ℝ≥0∞} (hfm : AEMeasurable f μ) (hf : (∫⁻ x, f x ∂μ) ≠ ∞) :
    (μ.withDensityᵥ fun x => (f x).toReal) =
      @toSignedMeasure α _ (μ.withDensity f) (isFiniteMeasure_withDensity hf) := by
  have hfi := integrable_toReal_of_lintegral_ne_top hfm hf
  have := isFiniteMeasure_withDensity hf
  ext i hi
  rw [withDensityᵥ_apply hfi hi, toSignedMeasure_apply_measurable hi, measureReal_def,
    withDensity_apply _ hi, integral_toReal hfm.restrict]
  refine ae_lt_top' hfm.restrict (ne_top_of_le_ne_top hf ?_)
  conv_rhs => rw [← setLIntegral_univ]
  exact lintegral_mono_set (Set.subset_univ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c830dd7edaad108101a49aef66f74893638c05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
