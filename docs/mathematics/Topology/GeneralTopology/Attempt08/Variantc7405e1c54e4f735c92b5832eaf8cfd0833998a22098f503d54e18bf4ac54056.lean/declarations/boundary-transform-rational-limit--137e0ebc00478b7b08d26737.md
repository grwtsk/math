# boundary_transform_rational_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f458b825-7ef6-6143-c568-ee2adf77a093",
  "kind": "theorem",
  "lexical_name": "boundary_transform_rational_limit",
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
  "slug": "boundary-transform-rational-limit--137e0ebc00478b7b08d26737",
  "source": {
    "blob": "d97f365e1cecd14d1b77f20cd3b06989534aa96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137e0ebc00478b7b08d26737fe51d99766858436a667d2b2c8d4c3d9160aced3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f458b825-7ef6-6143-c568-ee2adf77a093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_transform_rational_limit (lambda : ℂ)
    (hl : -(1/2 : ℝ) < lambda.re) :
    Tendsto (fun A : ℝ => boundaryTransform A lambda) atTop
      (𝓝 (-3938220*lambda^3*(lambda+1)^2/(lambda+1/2)^10)) := by
  have hz : 0 < (lambda+(1/2 : ℂ)).re := by
    norm_num [Complex.add_re,Complex.div_re]
    linarith
  rw [← boundary_limit_coefficient lambda (half_plane_ne_zero hz)]
  exact boundary_transform_tendsto lambda hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97f365e1cecd14d1b77f20cd3b06989534aa96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
