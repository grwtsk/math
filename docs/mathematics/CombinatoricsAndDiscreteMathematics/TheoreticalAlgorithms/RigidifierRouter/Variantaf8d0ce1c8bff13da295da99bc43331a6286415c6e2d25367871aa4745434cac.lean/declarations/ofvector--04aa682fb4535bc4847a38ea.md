# ofVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32f662c1da5299173104a86552c39e512d6ebe77ae6d907ac35991fab3a2af30",
  "kind": "def",
  "lexical_name": "ofVector",
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
  "slug": "ofvector--04aa682fb4535bc4847a38ea",
  "source": {
    "blob": "f15463c951b594bc03ea7ab2fc39086e4105f908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04aa682fb4535bc4847a38ea137010e32acd96ee1033c5c44cf0f886497e2dae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32f662c1da5299173104a86552c39e512d6ebe77ae6d907ac35991fab3a2af30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofVector
    (objects :
      List.Vector
        (SourceLabelObject sortCount neighborhoodCount) objectCount)
    (routeKeysUnique :
      (objects.map SourceLabelObject.key).toList.Nodup)
    (elementIdsUnique :
      (objects.map SourceLabelObject.elementId).toList.Nodup)
    (canonicalPathsUnique :
      (objects.map fun object ↦
        object.canonicalPath.toLower).toList.Nodup)
    (neighborhoodCover :
      Fin neighborhoodCount → Fin neighborhoodCount → Bool) :
    SourceRouter sortCount neighborhoodCount objectCount where
  objectAt := objects.get
  routeKey_injective := by
    have mapped :
        Function.Injective (objects.map SourceLabelObject.key).get :=
      (List.Vector.nodup_iff_injective_get
        (v := objects.map SourceLabelObject.key)).mp routeKeysUnique
    intro left right equality
    apply mapped
    simpa [List.Vector.get_map] using equality
  neighborhoodCover := neighborhoodCover
  elementId_injective := by
    have mapped :
        Function.Injective (objects.map SourceLabelObject.elementId).get :=
      (List.Vector.nodup_iff_injective_get
        (v := objects.map SourceLabelObject.elementId)).mp
          elementIdsUnique
    intro left right equality
    apply mapped
    simpa [List.Vector.get_map] using equality
  canonicalPath_injective := by
    have mapped :
        Function.Injective
          (objects.map fun object ↦
            object.canonicalPath.toLower).get :=
      (List.Vector.nodup_iff_injective_get
        (v := objects.map fun object ↦
          object.canonicalPath.toLower)).mp canonicalPathsUnique
    intro left right equality
    apply mapped
    simpa [List.Vector.get_map] using equality

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f15463c951b594bc03ea7ab2fc39086e4105f908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
