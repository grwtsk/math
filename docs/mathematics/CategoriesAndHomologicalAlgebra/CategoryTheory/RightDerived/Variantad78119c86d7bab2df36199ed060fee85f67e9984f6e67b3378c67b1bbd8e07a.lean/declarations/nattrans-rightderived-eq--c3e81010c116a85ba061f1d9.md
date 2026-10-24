# NatTrans.rightDerived_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c4bd9d8-72f2-c02e-a489-db02d9560013",
  "kind": "theorem",
  "lexical_name": "NatTrans.rightDerived_eq",
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
  "slug": "nattrans-rightderived-eq--c3e81010c116a85ba061f1d9",
  "source": {
    "blob": "1886f7421ca4de2239a0ea86b677d40f46b1aa31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e81010c116a85ba061f1d908eb81c003a795f74b36085db7ed9eea27a46dc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c4bd9d8-72f2-c02e-a489-db02d9560013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NatTrans.rightDerived_eq {F G : C ⥤ D} [F.Additive] [G.Additive] (α : F ⟶ G) (n : ℕ) {X : C}
    (P : InjectiveResolution X) :
    (NatTrans.rightDerived α n).app X =
      (F.rightDerivedObjIso n P).hom ≫
        (homologyFunctor D _ n).map ((NatTrans.mapHomologicalComplex α _).app P.cocomplex) ≫
          (G.rightDerivedObjIso n P).inv := by
  symm
  dsimp [NatTrans.rightDerived, Functor.rightDerivedObjIso]
  simp only [Category.comp_id, Category.id_comp]
  rw [← homologyFunctor_map, HomotopyCategory.homologyFunctor_map_factors]
  simp only [← Functor.map_comp]
  congr 1
  apply HomotopyCategory.eq_of_homotopy
  simp only [NatTrans.mapHomologicalComplex_naturality_assoc, ← Functor.map_comp]
  apply Homotopy.compLeftId
  rw [← Functor.map_id]
  apply Functor.mapHomotopy
  apply HomotopyEquiv.homotopyHomInvId
#align category_theory.nat_trans.right_derived_eq CategoryTheory.NatTrans.rightDerived_eq

end CategoryTheory

section

universe w v u

open CategoryTheory.Limits CategoryTheory CategoryTheory.Functor

variable {C : Type u} [Category.{w} C] {D : Type u} [Category.{w} D]

variable (F : C ⥤ D) {X Y Z : C} {f : X ⟶ Y} {g : Y ⟶ Z}

namespace CategoryTheory.Abelian.Functor

open CategoryTheory.Preadditive

variable [Abelian C] [Abelian D] [Additive F]

/-- If `PreservesFiniteLimits F` and `Mono f`, then `Exact (F.map f) (F.map g)` if
`Exact f g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1886f7421ca4de2239a0ea86b677d40f46b1aa31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
