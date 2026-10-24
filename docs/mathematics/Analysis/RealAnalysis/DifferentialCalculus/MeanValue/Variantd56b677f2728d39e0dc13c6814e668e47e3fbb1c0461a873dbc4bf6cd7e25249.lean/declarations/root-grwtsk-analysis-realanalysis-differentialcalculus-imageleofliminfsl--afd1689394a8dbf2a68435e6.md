# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.IsOpen.exists_eq_add_of_fderiv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b29c7084-1f98-654e-7ac4-499287eb8796",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.IsOpen.exists_eq_add_of_fderiv_eq",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl--afd1689394a8dbf2a68435e6",
  "source": {
    "blob": "3f2ade99bd4274610b32419ae28b9b0ecd8fbce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 632,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd1689394a8dbf2a68435e6b734114e1f48c38eef373b062b069ee89c144a3e",
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

Occurrence: `result:b29c7084-1f98-654e-7ac4-499287eb8796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImageLeOfLiminfSlopeRightLtDerivBoundaryPrime.Variant7e1e6f097fe92a2493ea5b4bc9a1896c850514604f26f863f812906fb500b856.IsOpen.exists_eq_add_of_fderiv_eq (hs : IsOpen s) (hs' : IsPreconnected s)
    (hf : DifferentiableOn 𝕜 f s) (hg : DifferentiableOn 𝕜 g s)
    (hf' : s.EqOn (fderiv 𝕜 f) (fderiv 𝕜 g)) : ∃ a, s.EqOn f (g · + a) := by
  simp_rw [Set.EqOn, ← sub_eq_iff_eq_add']
  refine hs.exists_is_const_of_fderiv_eq_zero hs' (hf.sub hg) fun x hx ↦ ?_
  rw [fderiv_fun_sub (hf.differentiableAt (hs.mem_nhds hx)) (hg.differentiableAt (hs.mem_nhds hx)),
    hf' hx, sub_self, Pi.zero_apply]

/-- If two functions have equal Fréchet derivatives at every point of a connected open set,
and are equal at one point in that set, then they are equal on that set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantd56b677f2728d39e0dc13c6814e668e47e3fbb1c0461a873dbc4bf6cd7e25249.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f2ade99bd4274610b32419ae28b9b0ecd8fbce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
