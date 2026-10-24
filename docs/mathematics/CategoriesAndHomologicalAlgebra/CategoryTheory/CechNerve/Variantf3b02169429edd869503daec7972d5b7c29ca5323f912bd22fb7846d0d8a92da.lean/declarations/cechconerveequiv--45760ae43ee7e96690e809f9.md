# cechConerveEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d9fef7730778fc377447c6a2b7a9a5fe10e6508036a7c9af526997671ff07c",
  "kind": "def",
  "lexical_name": "cechConerveEquiv",
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
  "slug": "cechconerveequiv--45760ae43ee7e96690e809f9",
  "source": {
    "blob": "8545d54209844596b9d8252ef425254a2660476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45760ae43ee7e96690e809f9d0b37c3693193d4673be6bc57646d15290204a36",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d9fef7730778fc377447c6a2b7a9a5fe10e6508036a7c9af526997671ff07c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cechConerveEquiv (F : Arrow C) (X : CosimplicialObject.Augmented C) :
    (F.augmentedCechConerve ⟶ X) ≃ (F ⟶ Augmented.toArrow.obj X) where
  toFun := equivalenceLeftToRight _ _
  invFun := equivalenceRightToLeft _ _
  left_inv := by
    intro A
    ext x : 2
    · rfl
    · refine' WidePushout.hom_ext _ _ _ (fun j => _) _
      · dsimp
        simp only [Category.assoc, ← NatTrans.naturality A.right, Arrow.augmentedCechConerve_right,
          SimplexCategory.len_mk, Arrow.cechConerve_map, colimit.ι_desc,
          WidePushoutShape.mkCocone_ι_app, colimit.ι_desc_assoc]
        rfl
      · dsimp
        rw [colimit.ι_desc]
        exact congr_app A.w x
  right_inv := by
    intro A
    ext
    · rfl
    · dsimp
      erw [WidePushout.ι_desc]
      nth_rw 2 [← Category.comp_id A.right]
      congr 1
      convert X.right.map_id _
      ext ⟨a, ha⟩
      change a < 1 at ha
      change 0 = a
      linarith
#align category_theory.cosimplicial_object.cech_conerve_equiv CategoryTheory.CosimplicialObject.cechConerveEquiv

/-- The augmented Čech conerve construction is left adjoint to the `toArrow` functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8545d54209844596b9d8252ef425254a2660476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
