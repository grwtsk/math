# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lipschitzWith_of_nnnorm_fderiv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97f3d8c7-5acf-814a-0c51-9d017206ec8c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lipschitzWith_of_nnnorm_fderiv_le",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl--a0dfcabcd411015d6b534a70",
  "source": {
    "blob": "8f92c4fb9d3518aa0b671799c23de8b13893d065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 520,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0dfcabcd411015d6b534a707be4efcbd1463403137299f7502003673782dd70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f3d8c7-5acf-814a-0c51-9d017206ec8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lipschitzWith_of_nnnorm_fderiv_le
    {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] {f : E → G}
    {C : ℝ≥0} (hf : Differentiable 𝕜 f)
    (bound : ∀ x, ‖fderiv 𝕜 f x‖₊ ≤ C) : LipschitzWith C f := by
  letI : RCLike 𝕜 := IsRCLikeNormedField.rclike 𝕜
  let A : NormedSpace ℝ E := RestrictScalars.normedSpace ℝ 𝕜 E
  rw [← lipschitzOnWith_univ]
  exact lipschitzOnWith_of_nnnorm_fderiv_le (fun x _ ↦ hf x) (fun x _ ↦ bound x) convex_univ

/-- Variant of the mean value inequality on a convex set, using a bound on the difference between
the derivative and a fixed linear map, rather than a bound on the derivative itself. Version with
`HasFDerivWithinAt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f92c4fb9d3518aa0b671799c23de8b13893d065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
