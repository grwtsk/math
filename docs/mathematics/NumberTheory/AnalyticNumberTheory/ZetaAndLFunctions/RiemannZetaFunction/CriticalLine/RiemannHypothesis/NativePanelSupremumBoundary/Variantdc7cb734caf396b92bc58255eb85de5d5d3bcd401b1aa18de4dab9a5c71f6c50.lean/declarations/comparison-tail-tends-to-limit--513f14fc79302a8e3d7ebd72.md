# comparison_tail_tends_to_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea6519c9-b87d-bff0-f295-ec2c634794f4",
  "kind": "theorem",
  "lexical_name": "comparison_tail_tends_to_limit",
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
  "slug": "comparison-tail-tends-to-limit--513f14fc79302a8e3d7ebd72",
  "source": {
    "blob": "a3d2c338ca4e32f75d106eeae75799543f7f31f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variantdc7cb734caf396b92bc58255eb85de5d5d3bcd401b1aa18de4dab9a5c71f6c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:513f14fc79302a8e3d7ebd72f2f67ea0a80123f05fa17deda70be1949556d14b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variantdc7cb734caf396b92bc58255eb85de5d5d3bcd401b1aa18de4dab9a5c71f6c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea6519c9-b87d-bff0-f295-ec2c634794f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparison_tail_tends_to_limit :
    Tendsto (closedPrimitive comparisonCoefficient) atTop (𝓝 limitLevel) := by
  have hs : Tendsto (fun x : ℝ ↦ Real.sqrt x) atTop atTop := Real.tendsto_sqrt_atTop
  have hi := tendsto_inv_atTop_zero.comp hs
  have h := (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ limitLevel) atTop (𝓝 limitLevel)).sub
    (hi.const_mul 2)
  have hn : Tendsto (fun x : ℝ ↦ limitLevel - 2 / Real.sqrt x) atTop (𝓝 limitLevel) := by
    simpa [Function.comp_def, div_eq_mul_inv] using h
  apply hn.congr'
  filter_upwards [eventually_ge_atTop (3 : ℝ)] with x hx
  exact (exact_comparison_tail hx).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variantdc7cb734caf396b92bc58255eb85de5d5d3bcd401b1aa18de4dab9a5c71f6c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variantdc7cb734caf396b92bc58255eb85de5d5d3bcd401b1aa18de4dab9a5c71f6c50.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d2c338ca4e32f75d106eeae75799543f7f31f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
