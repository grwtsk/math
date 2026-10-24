# exists_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ea5abb8-cb6c-6926-c49e-06c9710efd8f",
  "kind": "lemma",
  "lexical_name": "exists_app",
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
  "slug": "exists-app--a59a9a4de3ac7fe3c3c1cd56",
  "source": {
    "blob": "5b799ba89507032577c1618c90be307c9c7ac827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a59a9a4de3ac7fe3c3c1cd5609608fe560fd7c6f8c007e23dc9b396814395809",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea5abb8-cb6c-6926-c49e-06c9710efd8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_app (hx : x.Compatible) (g : Y ⟶ X) :
    ∃ (φ : F.obj (op Y) ⟶ G.obj (op Y)),
      ∀ {Z : C} (p : Z ⟶ Y) (hp : S (p ≫ g)), φ ≫ G.map p.op =
        F.map p.op ≫ (x (p ≫ g) hp).app ⟨Over.mk (𝟙 Z)⟩ := by
  let c : Cone ((Presieve.diagram (Sieve.pullback g S).arrows).op ⋙ G) :=
    { pt := F.obj (op Y)
      π :=
        { app := fun ⟨Z, hZ⟩ => F.map Z.hom.op ≫ (x _ hZ).app (op (Over.mk (𝟙 _)))
          naturality := by
            rintro ⟨Z₁, hZ₁⟩ ⟨Z₂, hZ₂⟩ ⟨f : Z₂ ⟶ Z₁⟩
            dsimp
            rw [id_comp, assoc]
            have H := hx f.left (𝟙 _) hZ₁ hZ₂ (by simp)
            simp only [presheafHom_obj, unop_op, Functor.id_obj, op_id,
              FunctorToTypes.map_id_apply] at H
            let φ : Over.mk f.left ⟶ Over.mk (𝟙 Z₁.left) := Over.homMk f.left
            have H' := (x (Z₁.hom ≫ g) hZ₁).naturality φ.op
            dsimp at H H' ⊢
            erw [← H, ← H', presheafHom_map_app_op_mk_id, ← F.map_comp_assoc,
              ← op_comp, Over.w f] } }
  use (hG g).lift c
  intro Z p hp
  exact ((hG g).fac c ⟨Over.mk p, hp⟩)

/-- Auxiliary definition for `presheafHom_isSheafFor`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b799ba89507032577c1618c90be307c9c7ac827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
