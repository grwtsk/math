# comparison_tail_tends_to_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c28722-12d9-9a74-5edd-73933ed35099",
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
  "slug": "comparison-tail-tends-to-limit--aa69296c22303049ce579b98",
  "source": {
    "blob": "965938f5fc883151680c69db351657d22625ec25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variant136d942d96b9431ab76d3106a15fdd1b1fdf8b65a4a785eba840129d8519ce30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa69296c22303049ce579b9825fe3244be0bf76181a5573df95a9f7f44b0424f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variant136d942d96b9431ab76d3106a15fdd1b1fdf8b65a4a785eba840129d8519ce30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c28722-12d9-9a74-5edd-73933ed35099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variant136d942d96b9431ab76d3106a15fdd1b1fdf8b65a4a785eba840129d8519ce30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativePanelSupremumBoundary/Variant136d942d96b9431ab76d3106a15fdd1b1fdf8b65a4a785eba840129d8519ce30.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965938f5fc883151680c69db351657d22625ec25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
