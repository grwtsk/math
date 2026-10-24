# stretched_budget_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ed36be6-cc5c-a119-c194-b5cf956bd08c",
  "kind": "theorem",
  "lexical_name": "stretched_budget_tendsto_zero",
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
  "slug": "stretched-budget-tendsto-zero--7d6ac597c8a9337ae93335c7",
  "source": {
    "blob": "9e0eacfef8e3b5709d69d99b9dd0d053ee723a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFractionNative01/Variant8e444bafb40f9d8e9b81001f293e158305a184cae96fa66be7f1259ce7d4d563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d6ac597c8a9337ae93335c77e6839a7080bf71b2010116c425797a3d230079a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualSignedVariationFractionNative01/Variant8e444bafb40f9d8e9b81001f293e158305a184cae96fa66be7f1259ce7d4d563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ed36be6-cc5c-a119-c194-b5cf956bd08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem stretched_budget_tendsto_zero (K c : ℝ) (hc : 0 < c) :
    Tendsto (fun A : ℝ => K * Real.exp (-c * A ^ (1 / 10 : ℝ))) atTop (𝓝 0) := by
  have he : Tendsto (fun x : ℝ => Real.exp (-c * x)) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero,one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 c hc
  have hx := tendsto_rpow_atTop (by norm_num : (0 : ℝ) < 1 / 10)
  simpa only [mul_zero] using (he.comp hx).const_mul K

/-- Every sufficiently large real source scale has positive fraction tending to one half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualSignedVariationFractionNative01/Variant8e444bafb40f9d8e9b81001f293e158305a184cae96fa66be7f1259ce7d4d563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFractionNative01/Variant8e444bafb40f9d8e9b81001f293e158305a184cae96fa66be7f1259ce7d4d563.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0eacfef8e3b5709d69d99b9dd0d053ee723a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
