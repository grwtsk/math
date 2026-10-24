# material_patch_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63c9b7d0-65d8-74f1-1edc-468cf98fcd4b",
  "kind": "theorem",
  "lexical_name": "material_patch_energy",
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
  "slug": "material-patch-energy--6640c144465ad6e7247ff6a4",
  "source": {
    "blob": "7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 393,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6640c144465ad6e7247ff6a477da3d0f8661ab5df1dee3a98376cf1330569f16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63c9b7d0-65d8-74f1-1edc-468cf98fcd4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem material_patch_energy (material : Space → Space) (chart : ParameterPlane → Space)
    (deformation : ParameterPlane → Deformation) (measure : Measure ParameterPlane)
    (tension : ℝ) (regular : RegularFinitePatch chart measure)
    (materialRegular : ∀ᵐ point ∂measure, DifferentiableAt ℝ material (chart point))
    (representsDerivative : ∀ᵐ point ∂measure,
      ∀ v, fderiv ℝ material (chart point) v = act (deformation point) v)
    (volumePreserving : ∀ᵐ point ∂measure, (deformation point).det = 1)
    (transportedIntegrable : Integrable (fun point => patchAreaDensity chart point *
      ‖act ((deformation point)⁻¹).transpose (patchNormal chart point)‖) measure) :
    Integrable (fun point => tension * patchAreaDensity (material ∘ chart) point) measure ∧
      patchEnergy tension (material ∘ chart) measure = tension *
        ∫ point, patchAreaDensity chart point *
          ‖act ((deformation point)⁻¹).transpose (patchNormal chart point)‖ ∂measure := by
  have densities : patchAreaDensity (material ∘ chart) =ᵐ[measure]
      (fun point => patchAreaDensity chart point *
        ‖act ((deformation point)⁻¹).transpose (patchNormal chart point)‖) := by
    filter_upwards [regular.differentiable, materialRegular, representsDerivative,
      volumePreserving] with point hc hm hd hv
    exact patchAreaDensity_comp material chart point (deformation point) hc hm hd hv
  constructor
  · exact (transportedIntegrable.congr densities.symm).const_mul tension
  · rw [patchEnergy_eq_tension_mul_area, patchArea, integral_congr_ae densities]

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk
namespace CurvatureFixture
open scoped RealInnerProductSpace
noncomputable section

/-- A coordinate functional on the Euclidean ambient space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
