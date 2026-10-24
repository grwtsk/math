# tendsto_diagnostic_exponent_test_point_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d091845-2175-b974-236a-7b37a50525f7",
  "kind": "theorem",
  "lexical_name": "tendsto_diagnostic_exponent_test_point_div",
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
  "slug": "tendsto-diagnostic-exponent-test-point-div--93d5dffbeef0eba2121cee75",
  "source": {
    "blob": "767d9f48acd35fd989535c92582e8043569065a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d5dffbeef0eba2121cee75a73218fe45742fbedc2c135035b3e5e7f03e76a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d091845-2175-b974-236a-7b37a50525f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_diagnostic_exponent_test_point_div (c d : ℝ) {s : ℝ} (hs : 0 < s) :
    Tendsto (fun A : ℝ ↦ diagnosticExponent c d s A (testPoint s A) / A)
      atTop (𝓝 1) := by
  have hlog : Tendsto (fun A : ℝ ↦ (4 * c / s) * (Real.log A)⁻¹)
      atTop (𝓝 0) := by
    simpa using Real.tendsto_log_atTop.inv_tendsto_atTop.const_mul (4 * c / s)
  have hsqrt : Tendsto (fun A : ℝ ↦ d * (Real.sqrt A)⁻¹) atTop (𝓝 0) := by
    simpa using Real.tendsto_sqrt_atTop.inv_tendsto_atTop.const_mul d
  have hlogdiv : Tendsto (fun A : ℝ ↦ Real.log A / A) atTop (𝓝 0) :=
    Real.isLittleO_log_id_atTop.tendsto_div_nhds_zero
  have hconst : Tendsto (fun _ : ℝ ↦ (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have h' : Tendsto (fun A : ℝ ↦
      1 - (4 * c / s) * (Real.log A)⁻¹ - d * (Real.sqrt A)⁻¹ - Real.log A / A)
      atTop (𝓝 1) := by simpa using ((hconst.sub hlog).sub hsqrt).sub hlogdiv
  apply h'.congr'
  filter_upwards [eventually_gt_atTop (1 : ℝ)] with A hA
  exact (diagnostic_exponent_test_point_div c d hs hA).symm

/-- The tested envelope itself grows without bound; this is not a signed-sum claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767d9f48acd35fd989535c92582e8043569065a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
