# IsProperMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:578866ee6fd817bfbcead6d1a0cd8a87631f80a227a1db7a5edd90288e28f375",
  "kind": "structure",
  "lexical_name": "IsProperMap",
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
  "slug": "ispropermap--b09270aed1d48bdd8408c6cb",
  "source": {
    "blob": "e576d67c01f6a18b36e5521d4ad0c11612d31d82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b09270aed1d48bdd8408c6cb0abb46070ec45cad6cc99183d5a150f4ce8f1232",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:578866ee6fd817bfbcead6d1a0cd8a87631f80a227a1db7a5edd90288e28f375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsProperMap (f : X → Y) extends Continuous f : Prop where
  /-- By definition, if `f` is a proper map and `ℱ` is any filter on `X`, then any cluster point of
  `map f ℱ` is the image by `f` of some cluster point of `ℱ`. -/
  clusterPt_of_mapClusterPt :
    ∀ ⦃ℱ : Filter X⦄, ∀ ⦃y : Y⦄, MapClusterPt y ℱ f → ∃ x, f x = y ∧ ClusterPt x ℱ

/-- Definition of proper maps. See also `isClosedMap_iff_clusterPt` for a related criterion
for closed maps. -/
add_decl_doc isProperMap_iff_clusterPt

/-- By definition, a proper map is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e576d67c01f6a18b36e5521d4ad0c11612d31d82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
