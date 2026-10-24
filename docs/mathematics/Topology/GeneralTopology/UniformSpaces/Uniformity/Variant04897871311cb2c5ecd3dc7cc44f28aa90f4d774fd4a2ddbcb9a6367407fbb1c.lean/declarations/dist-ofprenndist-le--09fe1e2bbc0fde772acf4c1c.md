# dist_ofPreNNDist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f895809b-a6e8-fb2d-e55c-3c46967d6cd6",
  "kind": "theorem",
  "lexical_name": "dist_ofPreNNDist_le",
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
  "slug": "dist-ofprenndist-le--09fe1e2bbc0fde772acf4c1c",
  "source": {
    "blob": "6e425d8f3ff21eaf3e066202c24a38ca41dd5483",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant04897871311cb2c5ecd3dc7cc44f28aa90f4d774fd4a2ddbcb9a6367407fbb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09fe1e2bbc0fde772acf4c1c3c53c032fed872aac1f9e36cdfff83edce700eef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant04897871311cb2c5ecd3dc7cc44f28aa90f4d774fd4a2ddbcb9a6367407fbb1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f895809b-a6e8-fb2d-e55c-3c46967d6cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_ofPreNNDist_le (d : X → X → ℝ≥0) (dist_self : ∀ x, d x x = 0)
    (dist_comm : ∀ x y, d x y = d y x) (x y : X) :
    @dist X (@PseudoMetricSpace.toDist X (PseudoMetricSpace.ofPreNNDist d dist_self dist_comm)) x
        y ≤
      d x y :=
  NNReal.coe_le_coe.2 <| (ciInf_le (OrderBot.bddBelow _) []).trans_eq <| by simp

/-- Consider a function `d : X → X → ℝ≥0` such that `d x x = 0` and `d x y = d y x` for all `x`,
`y`. Let `dist` be the largest pseudometric distance such that `dist x y ≤ d x y`, see
`PseudoMetricSpace.ofPreNNDist`. Suppose that `d` satisfies the following triangle-like
inequality: `d x₁ x₄ ≤ 2 * max (d x₁ x₂, d x₂ x₃, d x₃ x₄)`. Then `d x y ≤ 2 * dist x y` for all
`x`, `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant04897871311cb2c5ecd3dc7cc44f28aa90f4d774fd4a2ddbcb9a6367407fbb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant04897871311cb2c5ecd3dc7cc44f28aa90f4d774fd4a2ddbcb9a6367407fbb1c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e425d8f3ff21eaf3e066202c24a38ca41dd5483` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
