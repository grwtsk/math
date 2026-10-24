# tendsto_measure_norm_gt_of_isTightMeasureSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:549c3f5a-744e-294e-07bd-eaff14cb8238",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_norm_gt_of_isTightMeasureSet",
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
  "slug": "tendsto-measure-norm-gt-of-istightmeasureset--605cfcce54c0bf77ef66d289",
  "source": {
    "blob": "00bb98a6312309c2ac1f7a1558672b77199a7dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605cfcce54c0bf77ef66d28987e748994064feaca5f296a8f9074e97b03d274b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:549c3f5a-744e-294e-07bd-eaff14cb8238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_norm_gt_of_isTightMeasureSet (hS : IsTightMeasureSet S) :
    Tendsto (fun r : ℝ ↦ ⨆ μ ∈ S, μ {x | r < ‖x‖}) atTop (𝓝 0) := by
  have h := tendsto_measure_compl_closedBall_of_isTightMeasureSet hS 0
  convert h using 6 with r
  ext
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00bb98a6312309c2ac1f7a1558672b77199a7dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
