# subobjectOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:013c3c48a6e35636112ee8d98a4ce9be282339de2ed9d1101d45ea25e59328f8",
  "kind": "def",
  "lexical_name": "subobjectOrderIso",
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
  "slug": "subobjectorderiso--dbd84ff1d75bebe5c19118c1",
  "source": {
    "blob": "1d5e107720ee5306d6234b9581591d8afa991389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 691,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbd84ff1d75bebe5c19118c1e779c93e515582cc8d190c1045d449927db62b4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:013c3c48a6e35636112ee8d98a4ce9be282339de2ed9d1101d45ea25e59328f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subobjectOrderIso {X : C} (Y : Subobject X) : Subobject (Y : C) ≃o Set.Iic Y where
  toFun Z :=
    ⟨Subobject.mk (Z.arrow ≫ Y.arrow),
      Set.mem_Iic.mpr (le_of_comm ((underlyingIso _).hom ≫ Z.arrow) (by simp))⟩
  invFun Z := Subobject.mk (ofLE _ _ Z.2)
  left_inv Z := mk_eq_of_comm _ (underlyingIso _) (by aesop_cat)
  right_inv Z := Subtype.ext (mk_eq_of_comm _ (underlyingIso _) (by
          dsimp
          simp [← Iso.eq_inv_comp]))
  map_rel_iff' {W Z} := by
    dsimp
    constructor
    · intro h
      exact le_of_comm (((underlyingIso _).inv ≫ ofLE _ _ (Subtype.mk_le_mk.mp h) ≫
        (underlyingIso _).hom)) (by aesop_cat)
    · intro h
      exact Subtype.mk_le_mk.mpr (le_of_comm
        ((underlyingIso _).hom ≫ ofLE _ _ h ≫ (underlyingIso _).inv) (by simp))

end SubobjectSubobject

end Subobject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5e107720ee5306d6234b9581591d8afa991389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
