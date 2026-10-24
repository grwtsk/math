# equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3e5499f9900f0e723c7e13ea2ea30b8831b571176cbcdcb99c6e7cc1283b6d4",
  "kind": "def",
  "lexical_name": "equivalence",
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
  "slug": "equivalence--98b16ca85ddf7a742eef9a08",
  "source": {
    "blob": "96d0beb2279d327b104bcd172c4e595e19d4fbe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98b16ca85ddf7a742eef9a08536c19570235ff5103702989497f9923b68b6b3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3e5499f9900f0e723c7e13ea2ea30b8831b571176cbcdcb99c6e7cc1283b6d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalence {f' : X' ⟶ Y'} {f : X ≌ Y} (r : RetractArrow₁ f' f.hom) :
    X' ≌ Y' where
  hom := f'
  inv := r.i₂ ≫ f.inv ≫ r.r₁
  unit :=
    r.id₁.symm ≪≫ _ ◁ᵢ (λ_ _).symm ≪≫ r.i₁ ◁ᵢ f.unit ▷ᵢ r.r₁ ≪≫
      _ ◁ᵢ (α_ _ _ _) ≪≫ (α_ _ _ _).symm ≪≫ (r.commi.symm ▷ᵢ (f.inv ≫ r.r₁)) ≪≫ α_ _ _ _
  counit :=
    α_ _ _ _ ≪≫ _ ◁ᵢ (α_ _ _ _ ≪≫ _ ◁ᵢ r.commr.symm ≪≫ (α_ _ _ _).symm) ≪≫
      r.i₂ ◁ᵢ f.counit ▷ᵢ r.r₂ ≪≫ _ ◁ᵢ λ_ _ ≪≫ r.id₂
  left_triangle := by
    ext : 1
    calc
      _ = r.id₁.inv ▷ f' ⊗≫ ((r.i₁ ◁ f.unit.hom ⊗≫ r.commi.inv ▷ f.inv) ▷ (r.r₁ ≫ f') ≫
          ((f' ≫ r.i₂) ≫ f.inv) ◁ r.commr.inv) ⊗≫
          f' ◁ r.i₂ ◁ f.counit.hom ▷ r.r₂ ⊗≫ f' ◁ r.id₂.hom := by
        simp only [leftZigzagIso, leftZigzagIso_hom, Iso.trans_hom, Iso.symm_hom,
          whiskerLeftIso_hom, whiskerRightIso_hom]
        bicategory
      _ = r.id₁.inv ▷ f' ⊗≫ r.i₁ ◁ r.commr.inv ⊗≫
          (r.i₁ ◁ f.unit.hom) ▷ (f.hom ≫ r.r₂) ⊗≫
          ((r.commi.inv ▷ (f.inv ≫ f.hom) ≫ (f' ≫ r.i₂) ◁ f.counit.hom) ▷ r.r₂) ⊗≫
          f' ◁ r.id₂.hom := by
        rw [← whisker_exchange]
        bicategory
      _ = r.id₁.inv ▷ f' ⊗≫ r.i₁ ◁ r.commr.inv ⊗≫
          r.i₁ ◁ (leftZigzag f.unit.hom f.counit.hom) ▷ r.r₂ ⊗≫
          (r.commi.inv ▷ r.r₂) ⊗≫ f' ◁ r.id₂.hom := by
        rw [← whisker_exchange]
        bicategory
      _ = r.id₁.inv ▷ f' ⊗≫ r.i₁ ◁ r.commr.inv ⊗≫
          (r.commi.inv ▷ r.r₂) ⊗≫ f' ◁ r.id₂.hom := by
        rw [f.left_triangle_hom]
        bicategory
      _ = _ := by
        simp [bicategoricalComp, r.comm'_assoc]

end RetractArrow₁

end Bicategory

open Bicategory

/-- A retract of morphisms in a category `C` induces a retract of
`1`-morphisms in the bicategory `LocallyDiscrete C`. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d0beb2279d327b104bcd172c4e595e19d4fbe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
