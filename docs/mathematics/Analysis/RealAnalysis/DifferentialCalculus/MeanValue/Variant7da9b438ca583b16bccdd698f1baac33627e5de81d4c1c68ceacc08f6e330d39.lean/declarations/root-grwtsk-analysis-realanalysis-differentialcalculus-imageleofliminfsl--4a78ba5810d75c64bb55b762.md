# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lipschitzWith_of_nnnorm_deriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8fd19d2-3f2d-0e4a-2ccc-20071ea0473c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lipschitzWith_of_nnnorm_deriv_le",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl--4a78ba5810d75c64bb55b762",
  "source": {
    "blob": "8f92c4fb9d3518aa0b671799c23de8b13893d065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 746,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a78ba5810d75c64bb55b76240f3156ae041576498100addb54a0382805a6da4",
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

Occurrence: `result:d8fd19d2-3f2d-0e4a-2ccc-20071ea0473c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lipschitzWith_of_nnnorm_deriv_le {C : ℝ≥0} (hf : Differentiable 𝕜 f)
    (bound : ∀ x, ‖deriv f x‖₊ ≤ C) : LipschitzWith C f :=
  lipschitzOnWith_univ.1 <|
    convex_univ.lipschitzOnWith_of_nnnorm_deriv_le (fun x _ => hf x) fun x _ => bound x

/-- If `f : 𝕜 → G`, `𝕜 = R` or `𝕜 = ℂ`, is differentiable everywhere and its derivative equal zero,
then it is a constant function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f92c4fb9d3518aa0b671799c23de8b13893d065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
