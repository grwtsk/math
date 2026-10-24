# affine_rate_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f8b9837-02b9-0eae-b1eb-f58487d01653",
  "kind": "theorem",
  "lexical_name": "affine_rate_tendsto",
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
  "slug": "affine-rate-tendsto--d2dcf03ecb7ca2f4386ae769",
  "source": {
    "blob": "1d5ef7bd7ed1c0c4edb85195ddc078eab77bee1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2dcf03ecb7ca2f4386ae769f09c040fdc71ec8c9f4e840f94ebe3e13b69fc09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f8b9837-02b9-0eae-b1eb-f58487d01653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem affine_rate_tendsto {c C : ℝ} (hc : 0 < c) :
    Tendsto (fun A : ℝ => C*(4*A+13)*Real.exp (-c*(2*A-1)^((1:ℝ)/10)))
      atTop (𝓝 0) := by
  have hlin : Tendsto (fun A : ℝ => 2*A-1) atTop atTop :=
    tendsto_atTop.2 (fun b => by
      filter_upwards [eventually_ge_atTop ((b+1)/2)] with A hA
      linarith)
  have hp : Tendsto (fun A : ℝ => (2*A-1)^((1:ℝ)/10)) atTop atTop :=
    (tendsto_rpow_atTop (by norm_num : (0:ℝ)<1/10)).comp hlin
  have h10 := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (10:ℝ) c hc).comp hp
  have h0 := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (0:ℝ) c hc).comp hp
  have hh := (h10.const_mul (2*C)).add (h0.const_mul (15*C))
  simp only [mul_zero, zero_add] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have he : ((2*A-1)^((1:ℝ)/10))^(10:ℝ) = 2*A-1 := by
    rw [← Real.rpow_mul (by linarith : 0 ≤ 2*A-1)]
    norm_num
  dsimp only [Function.comp_def]
  rw [he, Real.rpow_zero, one_mul]
  ring

/-- The actual affine payment vanishes along all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5ef7bd7ed1c0c4edb85195ddc078eab77bee1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
