# power_stretched_exp_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51e9cdcb21af9828ba91aa1aac0cfa9661660387",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68b1c6d8-d956-e342-c4bb-902e58eb8339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:207eaee4-4a76-3fce-e510-30162692a46a",
  "kind": "theorem",
  "lexical_name": "power_stretched_exp_tendsto_zero",
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
  "slug": "power-stretched-exp-tendsto-zero--84f077f45076b745a1302c9a",
  "source": {
    "blob": "51e9cdcb21af9828ba91aa1aac0cfa9661660387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84f077f45076b745a1302c9ae2420874f0953d7f6d85b7004061777eacf5f128",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:207eaee4-4a76-3fce-e510-30162692a46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem power_stretched_exp_tendsto_zero (n : ℕ) {c : ℝ} (hc : 0 < c) :
    Tendsto (fun t : ℝ => t ^ n * Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop (𝓝 0) := by
  have hp := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero
    (10 * (n : ℝ)) c hc).comp (tendsto_rpow_atTop (by norm_num : 0 < (1 : ℝ) / 10))
  refine hp.congr' ?_
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
  dsimp only [Function.comp_apply]
  congr 1
  rw [←Real.rpow_mul ht]
  convert Real.rpow_natCast t n using 1
  ring

/-- Every fixed polynomially weighted actual relative error tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e9cdcb21af9828ba91aa1aac0cfa9661660387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
