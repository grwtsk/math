# continuousOn_norm_circleTransformBoundingFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e143c50a68d03b6298543db7c4534f820054ddc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0785880c-b9f4-b905-aa2c-2d05cd1800cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3461b70-b772-68bd-930b-d692456728a8",
  "kind": "theorem",
  "lexical_name": "continuousOn_norm_circleTransformBoundingFunction",
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
  "slug": "continuouson-norm-circletransformboundingfunction--b4302290acc69dccec90327b",
  "source": {
    "blob": "8e143c50a68d03b6298543db7c4534f820054ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4302290acc69dccec90327b3f19f10daa85ab176459ee9dd0e90e480ab9cb30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3461b70-b772-68bd-930b-d692456728a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_norm_circleTransformBoundingFunction {R r : ℝ} (hr : r < R) (z : ℂ) :
    ContinuousOn ((‖·‖) ∘ circleTransformBoundingFunction R z) (closedBall z r ×ˢ univ) := by
  have : ContinuousOn (circleTransformBoundingFunction R z) (closedBall z r ×ˢ univ) := by
    apply_rules [ContinuousOn.fun_smul, continuousOn_const]
    · simp only [deriv_circleMap]
      apply_rules [ContinuousOn.mul, (continuous_circleMap 0 R).comp_continuousOn continuousOn_snd,
        continuousOn_const]
    · simpa only [inv_pow] using continuousOn_prod_circle_transform_function hr
  exact this.norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e143c50a68d03b6298543db7c4534f820054ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
