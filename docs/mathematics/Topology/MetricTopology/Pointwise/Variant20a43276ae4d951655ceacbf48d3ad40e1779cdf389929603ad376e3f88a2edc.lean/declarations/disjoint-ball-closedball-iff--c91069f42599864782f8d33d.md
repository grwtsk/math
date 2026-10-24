# disjoint_ball_closedBall_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1679fe75-6278-9df5-844a-3c17fd522e4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faa218de-7c7b-df33-972f-b11abe6c3e31",
  "kind": "theorem",
  "lexical_name": "disjoint_ball_closedBall_iff",
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
  "slug": "disjoint-ball-closedball-iff--c91069f42599864782f8d33d",
  "source": {
    "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 207,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91069f42599864782f8d33d04e3f52bfa21078e9f644771b511f77ad37ab4a6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faa218de-7c7b-df33-972f-b11abe6c3e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_ball_closedBall_iff (hδ : 0 < δ) (hε : 0 ≤ ε) :
    Disjoint (ball x δ) (closedBall y ε) ↔ δ + ε ≤ dist x y := by
  refine ⟨fun h => le_of_not_lt fun hxy => ?_, ball_disjoint_closedBall⟩
  rw [add_comm] at hxy
  obtain ⟨z, hxz, hzy⟩ := exists_dist_lt_le hδ hε hxy
  rw [dist_comm] at hxz
  exact h.le_bot ⟨hxz, hzy⟩

-- This is also true for `ℚ`-normed spaces
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dded1b56b521e54f1f90bcc6f550b2d4602112c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
