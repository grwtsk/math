# mapBifunctorRightUnitor_hasMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1df233085203accb0ce7483f7e7717bbee037dd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:874fa934-22bf-ffa4-c613-92246fa495e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:150cf5fe-08ce-eacd-a6cc-906d78d5fda5",
  "kind": "lemma",
  "lexical_name": "mapBifunctorRightUnitor_hasMap",
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
  "slug": "mapbifunctorrightunitor-hasmap--4653bc139e0d0712bc03753e",
  "source": {
    "blob": "1df233085203accb0ce7483f7e7717bbee037dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4653bc139e0d0712bc03753e0110ae9068c6236f377bb86d638310b994ff6e2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:150cf5fe-08ce-eacd-a6cc-906d78d5fda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorRightUnitor_hasMap :
    HasMap (((mapBifunctor F J I).obj X).obj ((single₀ I).obj Y)) p :=
  CofanMapObjFun.hasMap _ _ _ (mapBifunctorRightUnitorCofanIsColimit F Y e p hp X)

variable [HasMap (((mapBifunctor F J I).obj X).obj ((single₀ I).obj Y)) p]
  [HasMap (((mapBifunctor F J I).obj X').obj ((single₀ I).obj Y)) p]

/-- Given `F : D ⥤ C ⥤ D`, `Y : C`, `e : F.flip.obj Y ≅ 𝟭 D`, `X : GradedObject J D` and
`p : J × I → J` such that `p ⟨j, 0⟩ = j` for all `j`,
this is the right unitor isomorphism `mapBifunctorMapObj F p X ((single₀ I).obj Y) ≅ X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df233085203accb0ce7483f7e7717bbee037dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
