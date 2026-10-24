# ConvexSpace.AffineMap.instIsModuleConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a60f5ec90b8c403e629a92e21ca1e10189ebf1ff79f685d12f7d767d689b3814",
  "kind": "instance",
  "lexical_name": "ConvexSpace.AffineMap.instIsModuleConvexSpace",
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
  "slug": "convexspace-affinemap-instismoduleconvexspace--47ac176141ba1d59ec2044e5",
  "source": {
    "blob": "a58f9be2de7a8c059b52952187f30d549e24b9f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 113,
    "path": "GRWTSK/Geometry/ConvexGeometry/Module/Variant0cfcebcd9f5f1ff49765719789840e1be4c04ea8f0f39ad8207aad118b603b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47ac176141ba1d59ec2044e513d71cab9212e3e4f4d505942eef4f4eb4c13dca",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Module/Variant0cfcebcd9f5f1ff49765719789840e1be4c04ea8f0f39ad8207aad118b603b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a60f5ec90b8c403e629a92e21ca1e10189ebf1ff79f685d12f7d767d689b3814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ConvexSpace.AffineMap.instIsModuleConvexSpace :
    IsModuleConvexSpace S (ConvexSpace.AffineMap R X M) where
  sConvexComb_eq_sum w := by ext x; simp [Finsupp.sum]

end Pointwise
end Convexity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Module/Variant0cfcebcd9f5f1ff49765719789840e1be4c04ea8f0f39ad8207aad118b603b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Module/Variant0cfcebcd9f5f1ff49765719789840e1be4c04ea8f0f39ad8207aad118b603b29.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58f9be2de7a8c059b52952187f30d549e24b9f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
