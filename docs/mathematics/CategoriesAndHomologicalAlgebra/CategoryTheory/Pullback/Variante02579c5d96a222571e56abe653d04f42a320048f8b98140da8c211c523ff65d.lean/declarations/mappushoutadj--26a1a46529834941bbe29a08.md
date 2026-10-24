# mapPushoutAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c4a1572b9087a1c2cde1545dbd5ea37fb4d8e34e446d4c9dfb41bbdc1e5ba86",
  "kind": "def",
  "lexical_name": "mapPushoutAdj",
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
  "slug": "mappushoutadj--26a1a46529834941bbe29a08",
  "source": {
    "blob": "78d30c23fdcea5be834b0f267b2a397227cd50ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26a1a46529834941bbe29a08ef8f276d412a98adc9bd0978b179aafb6c9e5fa2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c4a1572b9087a1c2cde1545dbd5ea37fb4d8e34e446d4c9dfb41bbdc1e5ba86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapPushoutAdj {X Y : C} (f : X ⟶ Y) : pushout f ⊣ map f :=
  Adjunction.mkOfHomEquiv {
    homEquiv := fun x y => {
      toFun := fun u => Under.homMk (pushout.inl _ _ ≫ u.right) <| by
        simp only [map_obj_hom]
        rw [← Under.w u]
        simp only [Functor.const_obj_obj, map_obj_right, Functor.id_obj, pushout_obj, mk_right,
          mk_hom]
        rw [← assoc, ← assoc, pushout.condition]
      invFun := fun v => Under.homMk (pushout.desc v.right y.hom <| by simp)
      left_inv := fun u => by
        ext
        dsimp
        ext
        · simp
        · simpa using (Under.w u).symm
      right_inv := by aesop_cat
    }
  }

/-- pushout (𝟙 X) : Under X ⥤ Under X is the identity functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78d30c23fdcea5be834b0f267b2a397227cd50ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
