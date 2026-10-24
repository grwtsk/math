# actual_massRatio_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc6dcd17-2e0a-daca-ecb0-7805b6ef5d0a",
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
  "slug": "actual-massratio-tendsto--cdd73b0700039ebd016f227a",
  "source": {
    "blob": "e7d3a9fef82002a94e8850773107f54a6f6aed4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd73b0700039ebd016f227ad6a0a9f92247b76cd60f661fb59ad6c53d3d7e83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc6dcd17-2e0a-daca-ecb0-7805b6ef5d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7d3a9fef82002a94e8850773107f54a6f6aed4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
