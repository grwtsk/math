# actual_massRatio_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f516cba-a632-e7c9-6b55-dea629fd7736",
  "kind": "theorem",
  "lexical_name": "actual_massRatio_tendsto",
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
  "slug": "actual-massratio-tendsto--fb0e106f3097226eb2a7050e",
  "source": {
    "blob": "3ec2b656bda02d069ca7b465201dff5783ca3850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0e106f3097226eb2a7050ee84f0ceea0827106da970ca80601eab5d133e590",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f516cba-a632-e7c9-6b55-dea629fd7736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_massRatio_tendsto :
    Tendsto (fun A : ℝ => positiveMass A/negativeMass A) atTop (𝓝 (1:ℝ)) := by
  have hi := tendsto_inv_atTop_zero.comp actual_negativeMass_tendsto
  have ht := tendsto_const_nhds.sub hi
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hd := actual_massRatio_deficit hA
  simp only [one_div] at hd
  linarith

end ContinuousResearch.ActualEndpointLimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec2b656bda02d069ca7b465201dff5783ca3850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
