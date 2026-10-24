# Convex.convexIndependent_extremePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daf43b64-01a1-0d61-17ec-d95c8dff7f8c",
  "kind": "theorem",
  "lexical_name": "Convex.convexIndependent_extremePoints",
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
  "slug": "convex-convexindependent-extremepoints--9c9b9142d6ad3319e360a7e8",
  "source": {
    "blob": "aec0dc59229e02455f5401ba255751db9bf821b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 204,
    "path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9b9142d6ad3319e360a7e8b1938edd7fe358a5e5d5eb5c38aaadf3611646be",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daf43b64-01a1-0d61-17ec-d95c8dff7f8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.convexIndependent_extremePoints (hs : Convex 𝕜 s) :
    ConvexIndependent 𝕜 ((↑) : s.extremePoints 𝕜 → E) :=
  convexIndependent_set_iff_notMem_convexHull_sdiff.2 fun _ hx h =>
    (extremePoints_convexHull_subset
          (inter_extremePoints_subset_extremePoints_of_subset
            (convexHull_min (Set.sdiff_subset.trans extremePoints_subset) hs) ⟨h, hx⟩)).2
      (Set.mem_singleton _)

end LinearOrderedField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aec0dc59229e02455f5401ba255751db9bf821b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
