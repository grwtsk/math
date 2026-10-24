# equivalenceRightToLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ffca00edda40acc1cd47a33eb80980ffcd5b58548fba1c7f2fa0352fccb6dd3",
  "kind": "def",
  "lexical_name": "equivalenceRightToLeft",
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
  "slug": "equivalencerighttoleft--29a54c5ed9def9954f4162bd",
  "source": {
    "blob": "579e504bc2a691d81a22ea18557c055dccc8d9c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29a54c5ed9def9954f4162bd4a65c489cf1544b5feb27a874c6f51743b70c410",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ffca00edda40acc1cd47a33eb80980ffcd5b58548fba1c7f2fa0352fccb6dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceRightToLeft (F : Arrow C) (X : CosimplicialObject.Augmented C)
    (G : F ⟶ Augmented.toArrow.obj X) : F.augmentedCechConerve ⟶ X where
  left := G.left
  right :=
    { app := fun x =>
        Limits.WidePushout.desc (G.left ≫ X.hom.app _)
          (fun i => G.right ≫ X.right.map (SimplexCategory.const x i))
          (by
            rintro j
            rw [← Arrow.w_assoc G]
            have t := X.hom.naturality (x.const j)
            dsimp at t ⊢
            simp only [Category.id_comp] at t
            rw [← t])
      naturality := by
        intro x y f
        dsimp
        ext
        · dsimp
          simp only [WidePushout.ι_desc_assoc, WidePushout.ι_desc]
          rw [Category.assoc, ← X.right.map_comp]
          rfl
        · dsimp
          simp only [Functor.const_obj_map, ← NatTrans.naturality, WidePushout.head_desc_assoc,
            WidePushout.head_desc, Category.assoc]
          erw [Category.id_comp] }
#align category_theory.cosimplicial_object.equivalence_right_to_left CategoryTheory.CosimplicialObject.equivalenceRightToLeft

/-- A helper function used in defining the Čech conerve adjunction. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579e504bc2a691d81a22ea18557c055dccc8d9c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
