# unitCorrelation_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3392aae0-f66d-fbd8-30c8-4e8af898a5ce",
  "kind": "theorem",
  "lexical_name": "unitCorrelation_product_integrable",
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
  "slug": "unitcorrelation-product-integrable--9f0da8d96e3f185777a16428",
  "source": {
    "blob": "a7d00394254b5b62fed5eee7725744952e18c18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb50963ca7bad36ecbf36dca63e0a7cd10a1fd5db1a628d1b2bab040f6eb04597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0da8d96e3f185777a164289174ea23873aa5283fbd570e441364e587f3ac91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb50963ca7bad36ecbf36dca63e0a7cd10a1fd5db1a628d1b2bab040f6eb04597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3392aae0-f66d-fbd8-30c8-4e8af898a5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitCorrelation_product_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) := by
  have hc := (unitProfile_contDiff A hA).continuous
  have hm : AEStronglyMeasurable
      (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) :=
    ((hc.comp continuous_snd).mul
      (hc.comp (continuous_snd.sub continuous_fst))).aestronglyMeasurable
  apply (unitCorrelation_product_majorant_integrable A hA).mono' hm
  exact Filter.Eventually.of_forall fun z ↦ by simp only [Real.norm_eq_abs, abs_mul, le_refl]


/-- Fubini consumes the checked actual product gate and retains its signed mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb50963ca7bad36ecbf36dca63e0a7cd10a1fd5db1a628d1b2bab040f6eb04597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb50963ca7bad36ecbf36dca63e0a7cd10a1fd5db1a628d1b2bab040f6eb04597.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d00394254b5b62fed5eee7725744952e18c18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
