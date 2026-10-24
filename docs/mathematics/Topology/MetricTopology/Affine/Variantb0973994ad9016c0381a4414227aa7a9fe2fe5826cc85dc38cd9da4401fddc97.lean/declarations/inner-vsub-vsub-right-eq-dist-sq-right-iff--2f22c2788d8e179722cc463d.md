# inner_vsub_vsub_right_eq_dist_sq_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3189aef-4cfa-773e-2d5c-9b6ae50afeb1",
  "kind": "theorem",
  "lexical_name": "inner_vsub_vsub_right_eq_dist_sq_right_iff",
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
  "slug": "inner-vsub-vsub-right-eq-dist-sq-right-iff--2f22c2788d8e179722cc463d",
  "source": {
    "blob": "9fbc39c2876effbe7ca471748a211da5e06fe330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f22c2788d8e179722cc463d6aa7bde130a6fc8339c27b9ec58a677d8232f1d3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3189aef-4cfa-773e-2d5c-9b6ae50afeb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_vsub_vsub_right_eq_dist_sq_right_iff {a b c : P} :
    ⟪a -ᵥ c, b -ᵥ c⟫ = dist b c ^ 2 ↔ ⟪a -ᵥ b, b -ᵥ c⟫ = 0 := by
  rw [real_inner_comm, inner_vsub_vsub_right_eq_dist_sq_left_iff, real_inner_comm]

/-- Squared distance between two points on lines from a common origin,
given orthogonality of the direction vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbc39c2876effbe7ca471748a211da5e06fe330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
