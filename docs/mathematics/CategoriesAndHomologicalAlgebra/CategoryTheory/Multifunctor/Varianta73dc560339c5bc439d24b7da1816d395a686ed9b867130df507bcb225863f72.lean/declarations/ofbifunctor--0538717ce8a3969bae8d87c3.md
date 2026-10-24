# ofBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1039ba60c954b63e41545a8b260e7833919bda91c756f3c71b2e464fa5bbc11",
  "kind": "def",
  "lexical_name": "ofBifunctor",
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
  "slug": "ofbifunctor--0538717ce8a3969bae8d87c3",
  "source": {
    "blob": "bccffda4710af3e89a3a789bee1ae0a442263446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 476,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0538717ce8a3969bae8d87c363a37079c82bbd21f608369f13a2964678014754",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1039ba60c954b63e41545a8b260e7833919bda91c756f3c71b2e464fa5bbc11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBifunctor : F.OplaxMonoidal where
  η := η
  δ X Y := (δ.app X).app Y
  δ_natural_left f X := (NatTrans.congr_app (δ.naturality f) X).symm
  δ_natural_right X f := ((δ.app X).naturality f).symm
  oplax_associativity X Y Z :=
    NatTrans.congr_app (NatTrans.congr_app (NatTrans.congr_app oplax_associativity X) Y) Z
  oplax_left_unitality X := NatTrans.congr_app oplax_left_unitality X
  oplax_right_unitality X := NatTrans.congr_app oplax_right_unitality X

end OplaxMonoidal

open LaxMonoidal.ofBifunctor OplaxMonoidal.ofBifunctor

namespace Monoidal

variable {F : C ⥤ D}
    /- unit morphism -/
    (ε : 𝟙_ D ⟶ F.obj (𝟙_ C))
    /- lax tensorator as a morphism of bifunctors -/
    (μ : curriedTensorPre F ⟶ curriedTensorPost F)
    /- the lax associativity hexagon commutes -/
    (associativity : firstMap μ = secondMap μ)
    /- the lax left unitality square commutes -/
    (left_unitality : LaxMonoidal.ofBifunctor.leftMapₗ F = topMapₗ ε ≫ μ.app (𝟙_ C) ≫ bottomMapₗ F)
    /- the lax right unitality square commutes -/
    (right_unitality : LaxMonoidal.ofBifunctor.leftMapᵣ F =
      topMapᵣ ε ≫ ((flipFunctor _ _ _).map μ).app (𝟙_ C) ≫ bottomMapᵣ F)
    /- counit morphism -/
    (η : F.obj (𝟙_ C) ⟶ 𝟙_ D)
    /- oplax tensorator as a morphism of bifunctors -/
    (δ : curriedTensorPost F ⟶ curriedTensorPre F)
    /- the oplax associativity hexagon commutes -/
    (oplax_associativity : firstMap δ = secondMap δ)
    /- the left unitality square commutes -/
    (oplax_left_unitality : OplaxMonoidal.ofBifunctor.leftMapₗ F =
      topMapₗ F ≫ δ.app (𝟙_ C) ≫ bottomMapₗ η)
    /- the right unitality square commutes -/
    (oplax_right_unitality : OplaxMonoidal.ofBifunctor.leftMapᵣ F =
      topMapᵣ F ≫ ((flipFunctor _ _ _).map δ).app (𝟙_ C) ≫ bottomMapᵣ η)

/--
`F` is monoidal given a co/unit morphisms `ε/η : 𝟙_ D ↔ F.obj (𝟙_ C)` and tensorators
`μ / δ : F - ⊗ F - ↔ F (- ⊗ -)` as natural transformations between bifunctors, satisfying the
relevant compatibilities.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccffda4710af3e89a3a789bee1ae0a442263446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
