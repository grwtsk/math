# preimage_emetric_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c796296c-17fa-253d-6bd3-c8cb0f8202b5",
  "kind": "theorem",
  "lexical_name": "preimage_emetric_ball",
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
  "slug": "preimage-emetric-ball--b13f170cbcaf34717f89f355",
  "source": {
    "blob": "3e058994a6656ec01a327f7a26a2a08c6ff24d19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 484,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13f170cbcaf34717f89f3559b18e8fa28847e1b0eb58555983c60fbcc35bc4f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c796296c-17fa-253d-6bd3-c8cb0f8202b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_emetric_ball (h : α ≃ᵢ β) (x : β) (r : ℝ≥0∞) :
    h ⁻¹' EMetric.ball x r = EMetric.ball (h.symm x) r := by
  rw [← h.isometry.preimage_emetric_ball (h.symm x) r, h.apply_symm_apply]
#align isometry_equiv.preimage_emetric_ball IsometryEquiv.preimage_emetric_ball

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e058994a6656ec01a327f7a26a2a08c6ff24d19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
