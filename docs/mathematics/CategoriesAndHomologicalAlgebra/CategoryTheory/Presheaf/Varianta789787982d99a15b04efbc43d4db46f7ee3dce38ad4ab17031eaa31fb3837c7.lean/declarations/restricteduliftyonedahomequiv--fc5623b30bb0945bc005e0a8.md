# restrictedULiftYonedaHomEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:992cb3871eb8c87abdb28b4ab3235c614635ab6cd861b6cddb36c51e2362c098",
  "kind": "def",
  "lexical_name": "restrictedULiftYonedaHomEquiv'",
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
  "slug": "restricteduliftyonedahomequiv--fc5623b30bb0945bc005e0a8",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc5623b30bb0945bc005e0a8ad424fb29e2eca8cf6250b8a5d61e24b48b1e37c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:992cb3871eb8c87abdb28b4ab3235c614635ab6cd861b6cddb36c51e2362c098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictedULiftYonedaHomEquiv' (P : Cᵒᵖ ⥤ Type max w v₁ v₂) (E : ℰ) :
    (CostructuredArrow.proj uliftYoneda.{max w v₂} P ⋙ A ⟶
      (Functor.const (CostructuredArrow uliftYoneda.{max w v₂} P)).obj E) ≃
      (P ⟶ (restrictedULiftYoneda.{max w v₁} A).obj E) where
  toFun f :=
    { app _ := ↾fun x ↦ ULift.up
        (f.app (CostructuredArrow.mk (uliftYonedaEquiv.symm x)))
      naturality _ _ g := by
        ext x
        let φ : CostructuredArrow.mk (uliftYonedaEquiv.{max w v₂}.symm (P.map g x)) ⟶
          CostructuredArrow.mk (uliftYonedaEquiv.symm x) :=
            CostructuredArrow.homMk g.unop (by
              dsimp
              rw [uliftYonedaEquiv_symm_map])
        dsimp
        congr 1
        simpa using! (f.naturality φ).symm }
  invFun g :=
    { app y := (uliftYonedaEquiv.{max w v₂} (y.hom ≫ g)).down
      naturality y y' f := by
        dsimp
        rw [comp_id, ← CostructuredArrow.w f, assoc, map_comp_uliftYonedaEquiv_down] }
  left_inv f := by
    ext X
    let e : CostructuredArrow.mk
      (uliftYonedaEquiv.{max w v₂}.symm (X.hom.app (op X.left) ⟨𝟙 X.left⟩)) ≅ X :=
        CostructuredArrow.isoMk (Iso.refl _) (by
          ext Y x
          dsimp
          simp [← NatTrans.naturality_apply])
    simpa [e] using! f.naturality e.inv
  right_inv g := by
    ext X x
    apply ULift.down_injective
    simp [uliftYonedaEquiv]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
