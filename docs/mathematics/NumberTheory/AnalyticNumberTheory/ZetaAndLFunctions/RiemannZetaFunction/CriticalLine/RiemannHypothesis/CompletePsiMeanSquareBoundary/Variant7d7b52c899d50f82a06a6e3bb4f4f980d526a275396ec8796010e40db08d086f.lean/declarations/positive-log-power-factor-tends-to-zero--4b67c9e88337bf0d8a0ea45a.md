# positive_log_power_factor_tends_to_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34dcdcdf-3758-7ab2-ebc0-bc79a43962e5",
  "kind": "theorem",
  "lexical_name": "positive_log_power_factor_tends_to_zero",
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
  "slug": "positive-log-power-factor-tends-to-zero--4b67c9e88337bf0d8a0ea45a",
  "source": {
    "blob": "5ec6029ba18c5b1c02fbb40a291ca6019bf4b649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b67c9e88337bf0d8a0ea45aa81836f12d804858454a387d9a786ba5ab8db594",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34dcdcdf-3758-7ab2-ebc0-bc79a43962e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_log_power_factor_tends_to_zero {delta : ℝ} (hd : 0 < delta) (C : ℝ) :
    Tendsto (fun X : ℝ ↦ C / (Real.log X) ^ delta) atTop (𝓝 0) := by
  have hp := (tendsto_rpow_atTop hd).comp Real.tendsto_log_atTop
  simpa only [Function.comp_def, div_eq_mul_inv, mul_zero] using
    (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ C) atTop (𝓝 C)).mul
      (tendsto_inv_atTop_zero.comp hp)

/-- The external lower bound remains visible and is not an accepted upstream Lean receipt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7d7b52c899d50f82a06a6e3bb4f4f980d526a275396ec8796010e40db08d086f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec6029ba18c5b1c02fbb40a291ca6019bf4b649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
