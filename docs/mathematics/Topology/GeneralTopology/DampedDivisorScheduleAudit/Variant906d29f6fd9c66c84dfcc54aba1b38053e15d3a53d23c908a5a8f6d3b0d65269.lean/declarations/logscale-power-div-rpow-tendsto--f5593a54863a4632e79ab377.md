# logScale_power_div_rpow_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb1f8288c414f04de7612ebb9498e02053c2851",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a6e2204-3c1d-dbde-c2e6-9d7096af55d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:849adc73-e87a-69ba-66e3-b18f1c4d6cc9",
  "kind": "theorem",
  "lexical_name": "logScale_power_div_rpow_tendsto",
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
  "slug": "logscale-power-div-rpow-tendsto--f5593a54863a4632e79ab377",
  "source": {
    "blob": "9cb1f8288c414f04de7612ebb9498e02053c2851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5593a54863a4632e79ab377a43fc7789ed87d4da12d58c6527ebbd956b6d025",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:849adc73-e87a-69ba-66e3-b18f1c4d6cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logScale_power_div_rpow_tendsto (n : ℕ) (r : ℝ) (hr : 0 < r) :
    Tendsto (fun X : ℕ => logScale X ^ n / (X : ℝ) ^ r) atTop (nhds 0) := by
  have hb : Tendsto (fun x : ℝ => Real.log x ^ n / x ^ r) atTop (nhds 0) := by
    simpa only [Real.rpow_natCast] using
      (isLittleO_log_rpow_rpow_atTop (n : ℝ) hr).tendsto_div_nhds_zero
  have hc : Tendsto (fun x : ℝ => (2 : ℝ) ^ n * (Real.log x ^ n / x ^ r))
      atTop (nhds 0) := by simpa using tendsto_const_nhds.mul hb
  have ht : Tendsto (fun x : ℝ => (1 + Real.log x) ^ n / x ^ r) atTop (nhds 0) := by
    apply squeeze_zero' _ _ hc
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with x hx
      exact div_nonneg (pow_nonneg (by linarith [Real.log_nonneg hx]) _) (Real.rpow_nonneg (by linarith : 0 ≤ x) r)
    · filter_upwards [Real.tendsto_log_atTop.eventually_ge_atTop (1 : ℝ),
        eventually_ge_atTop (1 : ℝ)] with x hl hx
      have hp : (1 + Real.log x) ^ n ≤ (2 * Real.log x) ^ n := by gcongr; linarith
      calc
        _ ≤ (2 * Real.log x) ^ n / x ^ r := div_le_div_of_nonneg_right hp (Real.rpow_nonneg (by linarith : 0 ≤ x) r)
        _ = _ := by rw [mul_pow]; ring
  exact ht.comp tendsto_natCast_atTop_atTop

/-- Damping and all three explicit error bounds vanish on the same complete natural diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb1f8288c414f04de7612ebb9498e02053c2851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
