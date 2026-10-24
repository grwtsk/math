# typeToCatObjectsAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c34da92c0231a9f2242af282640368c26f78ba962060b5f7afe91aa7ef0d464",
  "kind": "def",
  "lexical_name": "typeToCatObjectsAdj",
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
  "slug": "typetocatobjectsadj--3c4da03a069abddede853d98",
  "source": {
    "blob": "d559014dd15ce3fd9a78cb24068dd7a728ed8888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c4da03a069abddede853d986993a01cee77d1245ea31b80c4341545419e7025",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c34da92c0231a9f2242af282640368c26f78ba962060b5f7afe91aa7ef0d464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeToCatObjectsAdj : typeToCat ⊣ Cat.objects :=
  Adjunction.mk' {
    homEquiv := typeToCatObjectsAdjHomEquiv
    unit := { app:= fun _  ↦ Discrete.mk }
    counit := {
      app := typeToCatObjectsAdjCounitApp
      naturality := fun _ _ _  ↦  Functor.hext (fun _ ↦ rfl)
        (by intro ⟨_⟩ ⟨_⟩ f
            obtain rfl := Discrete.eq_of_hom f
            aesop_cat ) } }

/-- The connected components functor -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d559014dd15ce3fd9a78cb24068dd7a728ed8888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
