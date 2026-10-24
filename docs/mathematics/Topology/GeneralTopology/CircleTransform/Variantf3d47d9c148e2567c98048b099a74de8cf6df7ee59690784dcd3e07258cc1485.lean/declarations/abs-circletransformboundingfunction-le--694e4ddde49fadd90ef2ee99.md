# abs_circleTransformBoundingFunction_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4996f048a5c3204a64f128ea84988d95c9f5f44f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8627f7c8-f048-d28d-d275-a7d4129305d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986f4e17-fcfc-a2b5-e609-785205aedd18",
  "kind": "theorem",
  "lexical_name": "abs_circleTransformBoundingFunction_le",
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
  "slug": "abs-circletransformboundingfunction-le--694e4ddde49fadd90ef2ee99",
  "source": {
    "blob": "4996f048a5c3204a64f128ea84988d95c9f5f44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694e4ddde49fadd90ef2ee99f64b0615562d2a9c51227aba1fb60ea4fcab25e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986f4e17-fcfc-a2b5-e609-785205aedd18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_circleTransformBoundingFunction_le {R r : ℝ} (hr : r < R) (hr' : 0 ≤ r) (z : ℂ) :
    ∃ x : closedBall z r ×ˢ [[0, 2 * π]], ∀ y : closedBall z r ×ˢ [[0, 2 * π]],
    abs (circleTransformBoundingFunction R z y) ≤ abs (circleTransformBoundingFunction R z x) := by
  have cts := continuousOn_abs_circleTransformBoundingFunction hr z
  have comp : IsCompact (closedBall z r ×ˢ [[0, 2 * π]]) := by
    apply_rules [IsCompact.prod, ProperSpace.isCompact_closedBall z r, isCompact_uIcc]
  have none : (closedBall z r ×ˢ [[0, 2 * π]]).Nonempty :=
    (nonempty_closedBall.2 hr').prod nonempty_uIcc
  have := IsCompact.exists_isMaxOn comp none (cts.mono
    (by intro z; simp only [mem_prod, mem_closedBall, mem_univ, and_true_iff, and_imp]; tauto))
  simp only [IsMaxOn, IsMaxFilter] at this
  simpa [SetCoe.forall, Subtype.coe_mk, SetCoe.exists]
#align complex.abs_circle_transform_bounding_function_le Complex.abs_circleTransformBoundingFunction_le

/-- The derivative of a `circleTransform` is locally bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4996f048a5c3204a64f128ea84988d95c9f5f44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
