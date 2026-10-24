# rotation_even_source_angular_fourier_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30fb40a1-9182-8058-4c53-8243adf43de4",
  "kind": "theorem",
  "lexical_name": "rotation_even_source_angular_fourier_coe_ae",
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
  "slug": "rotation-even-source-angular-fourier-coe-ae--863640bb32f4f640d01e82ff",
  "source": {
    "blob": "959e6105a0304eb57030fc19db79f0eeb74a502a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 519,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:863640bb32f4f640d01e82ff101bd92548abec1cf7bebb21c8c2772a7f3334a8",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30fb40a1-9182-8058-4c53-8243adf43de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_even_source_angular_fourier_coe_ae {q : ComplexL2}
    (hq : reflection q = q) (c s : ℝ) :
    (fun ω => (𝓕 (rotationMap c s q) : ComplexL2) (sourceAngularFrequency ω)) =ᵐ[volume]
      fun ω => ((c : ℂ)-(s : ℂ)*signSymbol ω)*
        (𝓕 q : ComplexL2) (sourceAngularFrequency ω) := by
  have hn : -(2*Real.pi)⁻¹ ≠ 0 := neg_ne_zero.mpr (inv_ne_zero (by positivity))
  have hm : Measure.QuasiMeasurePreserving sourceAngularFrequency volume volume := by
    convert Measure.quasiMeasurePreserving_smul (volume : Measure ℝ) hn using 1
    funext ω
    simp only [sourceAngularFrequency,smul_eq_mul,div_eq_mul_inv]
    ring
  have hzero : ∀ᵐ ω : ℝ ∂volume, ω ≠ 0 := by rw [ae_iff]; simp
  filter_upwards [hm.ae (rotation_even_fourier_coe_ae hq c s),hzero] with ω hω hnω
  change (𝓕 (rotationMap c s q) : ComplexL2) (sourceAngularFrequency ω) =
    ((c : ℂ)+(s : ℂ)*signSymbol (sourceAngularFrequency ω))*
      (𝓕 q : ComplexL2) (sourceAngularFrequency ω) at hω
  rw [hω,rotation_source_angular_symbol c s hnω]

/-- The literal π/4 fixture preserves norm and removes the negative standard-frequency half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959e6105a0304eb57030fc19db79f0eeb74a502a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
