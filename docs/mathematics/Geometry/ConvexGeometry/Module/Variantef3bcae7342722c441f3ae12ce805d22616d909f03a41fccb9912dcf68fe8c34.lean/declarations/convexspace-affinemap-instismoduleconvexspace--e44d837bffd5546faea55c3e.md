# ConvexSpace.AffineMap.instIsModuleConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f70333b865c33d1bf94acbaea8bda4549ac208fdb601e9c6e6182ef55b5d9b85",
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
  "slug": "convexspace-affinemap-instismoduleconvexspace--e44d837bffd5546faea55c3e",
  "source": {
    "blob": "7223661a99830d38f8c6a4e7c2a0b309b49511ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 105,
    "path": "GRWTSK/Geometry/ConvexGeometry/Module/Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e44d837bffd5546faea55c3eefa95dab1ad5f2f084187614c5f11fe2338e684a",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Module/Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f70333b865c33d1bf94acbaea8bda4549ac208fdb601e9c6e6182ef55b5d9b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–110.

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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Module/Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Module/Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7223661a99830d38f8c6a4e7c2a0b309b49511ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
