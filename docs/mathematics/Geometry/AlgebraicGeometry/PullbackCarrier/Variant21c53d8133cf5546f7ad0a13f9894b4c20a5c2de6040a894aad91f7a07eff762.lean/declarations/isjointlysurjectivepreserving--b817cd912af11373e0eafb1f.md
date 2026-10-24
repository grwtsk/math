# isJointlySurjectivePreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0b4dcb3ca9ceb91539a50d3a94a40d0aa542dc771c4d1a4e2d8b022115fc4f4",
  "kind": "instance",
  "lexical_name": "isJointlySurjectivePreserving",
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
  "slug": "isjointlysurjectivepreserving--b817cd912af11373e0eafb1f",
  "source": {
    "blob": "3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 382,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b817cd912af11373e0eafb1facfb1dc328a6dd70a1e99d99569f315e08ef4ac4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0b4dcb3ca9ceb91539a50d3a94a40d0aa542dc771c4d1a4e2d8b022115fc4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isJointlySurjectivePreserving (P : MorphismProperty Scheme.{u}) :
    IsJointlySurjectivePreserving P where
  exists_preimage_fst_triplet_of_prop {X Y S} f g _ hg x y hxy := by
    obtain ⟨a, b, h⟩ := Pullback.exists_preimage_pullback x y hxy
    use a

/-- The comparison map for pullbacks under the forgetful functor `Scheme ⥤ Type u` is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
