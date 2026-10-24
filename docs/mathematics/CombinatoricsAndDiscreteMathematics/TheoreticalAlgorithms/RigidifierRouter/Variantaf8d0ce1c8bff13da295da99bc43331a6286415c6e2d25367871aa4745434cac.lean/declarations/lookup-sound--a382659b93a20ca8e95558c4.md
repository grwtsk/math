# lookup_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2469115b-d983-e359-65b8-94bf57233cf9",
  "kind": "theorem",
  "lexical_name": "lookup_sound",
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
  "slug": "lookup-sound--a382659b93a20ca8e95558c4",
  "source": {
    "blob": "f15463c951b594bc03ea7ab2fc39086e4105f908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a382659b93a20ca8e95558c4d1a6cf970373762d414031b867acf4eec7e8277c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2469115b-d983-e359-65b8-94bf57233cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lookup_sound
    (router : SourceRouter sortCount neighborhoodCount objectCount)
    {key : RigidKey} {element : Fin objectCount}
    (found : router.lookup key = some element) :
    (router.objectAt element).key = key := by
  have found' :
      (List.finRange objectCount).find?
          (fun candidate ↦
            decide ((router.objectAt candidate).key = key)) =
        some element := by
    simpa [lookup] using found
  have selected :
      decide ((router.objectAt element).key = key) = true :=
    @List.find?_some
      (Fin objectCount)
      (fun candidate ↦ decide ((router.objectAt candidate).key = key))
      element
      (List.finRange objectCount)
      found'
  apply of_decide_eq_true
  exact selected

end SourceRouter

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f15463c951b594bc03ea7ab2fc39086e4105f908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
