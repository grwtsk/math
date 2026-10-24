# scaledAmplitude_ratio_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7f1e92b-4b60-e0da-91e4-082116191018",
  "kind": "theorem",
  "lexical_name": "scaledAmplitude_ratio_tendsto",
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
  "slug": "scaledamplitude-ratio-tendsto--8ba5f3d3034ce75140e18c00",
  "source": {
    "blob": "f612967560479fee211ab7ad780911a793014132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Varianta686acbf49f55ee9688449c6d9ddf34601a5be56e1441841d5625c5e0aac1c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba5f3d3034ce75140e18c0029564499e55f36a9c7bb21949ca72bc729d38def",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Varianta686acbf49f55ee9688449c6d9ddf34601a5be56e1441841d5625c5e0aac1c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7f1e92b-4b60-e0da-91e4-082116191018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledAmplitude_ratio_tendsto (z : ℂ) (hz : 0 < z.re)
    (hf : z^2-1/4 ≠ 0) :
    Tendsto (fun A : ℝ => scaledAmplitude A z/leadingCoefficient z)
      atTop (𝓝 1) := by
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero hz) hf
  simpa only [div_self hc] using (scaledAmplitude_tendsto z hz).div_const (leadingCoefficient z)

/-- The positive-real scale matches the exact real-power exponent in the paper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Varianta686acbf49f55ee9688449c6d9ddf34601a5be56e1441841d5625c5e0aac1c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Varianta686acbf49f55ee9688449c6d9ddf34601a5be56e1441841d5625c5e0aac1c3b.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f612967560479fee211ab7ad780911a793014132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
