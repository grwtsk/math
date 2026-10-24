# withDensityᵥ_smul_eq_withDensityᵥ_withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2153dca0-3e19-51da-77e9-9cccb72f833b",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_smul_eq_withDensityᵥ_withDensity",
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
  "slug": "withdensity-smul-eq-withdensity-withdensity--cf426a4d7d52938e5d9dd0c9",
  "source": {
    "blob": "5f4c007dfc99f21978e24db23e09b2b7e8d8d920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf426a4d7d52938e5d9dd0c977f4bf67776e5c5768d2f95ca594a18470d8ee3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2153dca0-3e19-51da-77e9-9cccb72f833b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_smul_eq_withDensityᵥ_withDensity {f : α → ℝ≥0} {g : α → E}
    (hf : AEMeasurable f μ) (hfg : Integrable (f • g) μ) :
    μ.withDensityᵥ (f • g) = (μ.withDensity (fun x ↦ f x)).withDensityᵥ g := by
  ext s hs
  rw [withDensityᵥ_apply hfg hs,
    withDensityᵥ_apply ((integrable_withDensity_iff_integrable_smul₀ hf).mpr hfg) hs,
    setIntegral_withDensity_eq_setIntegral_smul₀ hf.restrict _ hs]
  simp only [Pi.smul_apply']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant239200bdb65ffa935d0144aea26ab2b8f77cc5b153b0448e76f0a751d2142a3d.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4c007dfc99f21978e24db23e09b2b7e8d8d920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
