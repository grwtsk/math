# source_laplace_scaled_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3810eb4a-bab4-bd3f-9919-971b8e99f8e6",
  "kind": "theorem",
  "lexical_name": "source_laplace_scaled_tendsto",
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
  "slug": "source-laplace-scaled-tendsto--18289d1fed357fe67d426ee5",
  "source": {
    "blob": "e75447124feead8dc5b7f02252ed8c655686401f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18289d1fed357fe67d426ee588323b04df18ef3dca51f0d92a8bc33219f07fd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3810eb4a-bab4-bd3f-9919-971b8e99f8e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_scaled_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ sourceLaplace A z * (A : ℂ) ^ 9 *
      Complex.exp (-2 * (A : ℂ) * z)) atTop
      (nhds ((147456 / (4096 / 109395) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10)) := by
  have hne : z ≠ 0 := by intro h; simp [h] at hz
  have hZ : Tendsto (fun A : ℝ ↦ (sourceNormalization A : ℂ)) atTop
      (nhds (4096 / 109395 : ℂ)) := by
    simpa [Function.comp_def] using Complex.continuous_ofReal.continuousAt.tendsto.comp
      PhaseKernelBoundary.source_normalization_tendsto
  have hratio := (bump_endpoint_ratio_tendsto_one z hz).pow 2
  have hc : Tendsto (fun _ : ℝ ↦ (147456 : ℂ)) atTop (nhds 147456) := tendsto_const_nhds
  have hmain := ((hc.div hZ (by norm_num)).mul_const
    ((z ^ 2 - 1 / 4) ^ 2 / z ^ 10)).mul hratio
  have ht : Tendsto (fun A : ℝ ↦ 147456 / (sourceNormalization A : ℂ) *
      (z ^ 2 - 1 / 4) ^ 2 / z ^ 10 * bumpEndpointRatio ((A : ℂ) * z) ^ 2) atTop
      (nhds ((147456 / (4096 / 109395) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10)) := by
    simpa only [one_pow, mul_one, mul_div_assoc, Pi.div_apply] using hmain
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (source_laplace_scaled_eq_ratio A z hA hne).symm

/-- The actual source response has the same leading magnitude with its exact real exponential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75447124feead8dc5b7f02252ed8c655686401f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
