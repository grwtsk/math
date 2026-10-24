# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.IsOpen.eqOn_of_deriv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aecee6f2-45d8-870e-88f7-60e86ab49e4d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.IsOpen.eqOn_of_deriv_eq",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl--22ae490f0f67a40254eb23dd",
  "source": {
    "blob": "3f2ade99bd4274610b32419ae28b9b0ecd8fbce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 787,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22ae490f0f67a40254eb23dd4f4a811c67da77c6b37936f8f9e383ebcaaed9b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aecee6f2-45d8-870e-88f7-60e86ab49e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.IsOpen.eqOn_of_deriv_eq {f g : 𝕜 → G} (hs : IsOpen s)
    (hs' : IsPreconnected s) (hf : DifferentiableOn 𝕜 f s) (hg : DifferentiableOn 𝕜 g s)
    (hf' : s.EqOn (deriv f) (deriv g)) (hx : x ∈ s) (hfgx : f x = g x) :
    s.EqOn f g :=
  hs.eqOn_of_fderiv_eq hs' hf hg (fun _ hx ↦ ContinuousLinearMap.ext_ring (hf' hx)) hx hfgx

end Convex

end

section RCLike

/-!
### Vector-valued functions `f : E → F`. Strict differentiability.

A `C^1` function is strictly differentiable, when the field is `ℝ` or `ℂ`. This follows from the
mean value inequality on balls, which is a particular case of the above results after restricting
the scalars to `ℝ`. Note that it does not make sense to talk of a convex set over `ℂ`, but balls
make sense and are enough. Many formulations of the mean value inequality could be generalized to
balls over `ℝ` or `ℂ`. For now, we only include the ones that we need.
-/

variable {𝕜 : Type*} [RCLike 𝕜] {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G] {H : Type*}
  [NormedAddCommGroup H] [NormedSpace 𝕜 H] {f : G → H} {f' : G → G →L[𝕜] H} {x : G}

/-- Over the reals or the complexes, a continuously differentiable function is strictly
differentiable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f2ade99bd4274610b32419ae28b9b0ecd8fbce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
