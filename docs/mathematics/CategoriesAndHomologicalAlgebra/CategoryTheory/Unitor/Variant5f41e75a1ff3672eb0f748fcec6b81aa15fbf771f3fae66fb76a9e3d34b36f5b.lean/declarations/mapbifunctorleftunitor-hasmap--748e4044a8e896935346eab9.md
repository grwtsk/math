# mapBifunctorLeftUnitor_hasMap

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
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2b172d4-f4e6-1c92-3b08-901dace3fd65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:159a2964-1a39-c274-accf-466b9c902bb3",
  "kind": "lemma",
  "lexical_name": "mapBifunctorLeftUnitor_hasMap",
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
  "slug": "mapbifunctorleftunitor-hasmap--748e4044a8e896935346eab9",
  "source": {
    "blob": "1df233085203accb0ce7483f7e7717bbee037dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748e4044a8e896935346eab913e10713104e29c4db46ff262519b5c4248a6c22",
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

Occurrence: `result:159a2964-1a39-c274-accf-466b9c902bb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorLeftUnitor_hasMap :
    HasMap (((mapBifunctor F I J).obj ((single₀ I).obj X)).obj Y) p :=
  CofanMapObjFun.hasMap _ _ _ (mapBifunctorLeftUnitorCofanIsColimit F X e p hp Y)

variable [HasMap (((mapBifunctor F I J).obj ((single₀ I).obj X)).obj Y) p]
  [HasMap (((mapBifunctor F I J).obj ((single₀ I).obj X)).obj Y') p]

/-- Given `F : C ⥤ D ⥤ D`, `X : C`, `e : F.obj X ≅ 𝟭 D`, `Y : GradedObject J D` and
`p : I × J → J` such that `p ⟨0, j⟩ = j` for all `j`,
this is the left unitor isomorphism `mapBifunctorMapObj F p ((single₀ I).obj X) Y ≅ Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df233085203accb0ce7483f7e7717bbee037dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
