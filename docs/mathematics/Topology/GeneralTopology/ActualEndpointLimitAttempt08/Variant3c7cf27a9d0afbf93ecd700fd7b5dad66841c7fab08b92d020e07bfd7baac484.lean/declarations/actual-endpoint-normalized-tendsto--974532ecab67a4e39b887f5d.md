# actual_endpoint_normalized_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838a5a03-8fa3-d4e2-76a8-23406e2267ba",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_normalized_tendsto",
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
  "slug": "actual-endpoint-normalized-tendsto--974532ecab67a4e39b887f5d",
  "source": {
    "blob": "c3664c6461434d9c54bf6799b64a19855d1e475c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:974532ecab67a4e39b887f5d08ea21f684c7ccbad38284b083fb018eefb1da12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838a5a03-8fa3-d4e2-76a8-23406e2267ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_normalized_tendsto {y : ℝ} (hy : 0≤y) :
    Tendsto (fun A : ℝ => A^9*sourceCorrelation explicitSecondDerivative A (2*A-y))
      atTop (𝓝 (endpointLeadingCorrelation y/(4096/109395:ℝ))) := by
  have ht := (actual_endpoint_scaled_tendsto hy).div
    sourceNormalization_tendsto (by norm_num : (4096/109395:ℝ)≠0)
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hZ := (source_normalization_pos A hA).ne'
  dsimp only [Pi.div_apply]
  field_simp [hZ]

/-- The literal source has a growing excursion at one fixed physical endpoint distance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3664c6461434d9c54bf6799b64a19855d1e475c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
