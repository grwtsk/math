# mapBifunctorLeftUnitor_hasMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bf87e20-680b-a46d-87d4-e58d0e714423",
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
  "slug": "mapbifunctorleftunitor-hasmap--34f977f644e23259d92cee43",
  "source": {
    "blob": "0f80d2a0396b1a879a505789c245c21033ccd38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34f977f644e23259d92cee43c389e3372c9b763c9604d11ee469eca28ba08054",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bf87e20-680b-a46d-87d4-e58d0e714423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f80d2a0396b1a879a505789c245c21033ccd38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
