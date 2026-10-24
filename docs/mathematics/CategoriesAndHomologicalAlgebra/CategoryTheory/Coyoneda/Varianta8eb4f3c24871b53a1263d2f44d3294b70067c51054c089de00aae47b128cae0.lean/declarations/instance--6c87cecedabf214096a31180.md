# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7a895093af0015ac56bc5e4b00c1b7090976fe47436496bb60759b0569c95fe",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6c87cecedabf214096a31180",
  "source": {
    "blob": "2dc8f758d3fa5792de1ebbd102dbbf7985c0ec0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coyoneda/Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c87cecedabf214096a311805d0db3d732998b50457983f863723748726117aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coyoneda/Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7a895093af0015ac56bc5e4b00c1b7090976fe47436496bb60759b0569c95fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (C : Type u) [Category.{v} C] [MonoidalCategory C] :
    (coyoneda.obj (op (𝟙_ C))).LaxMonoidal :=
  Functor.LaxMonoidal.ofTensorHom
    (ε := ↾fun _ ↦ 𝟙 _)
    (μ := fun X Y ↦ ↾fun p ↦ (λ_ (𝟙_ C)).inv ≫ (p.1 ⊗ₘ p.2))
    (μ_natural := by cat_disch)
    (associativity := fun X Y Z => by
      ext ⟨⟨f, g⟩, h⟩; dsimp at f g h
      dsimp; simp only [Category.assoc, Iso.cancel_iso_inv_left]
      conv_lhs =>
        rw [← Category.id_comp h, ← tensorHom_comp_tensorHom, Category.assoc, associator_naturality,
          ← Category.assoc, unitors_inv_equal, tensorHom_id, triangle_assoc_comp_right_inv]
      conv_rhs => rw [← Category.id_comp f, ← tensorHom_comp_tensorHom]
      simp)
    (right_unitality := fun X => by
      ext ⟨f, ⟨⟩⟩
      simp [unitors_inv_equal])

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coyoneda/Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coyoneda/Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc8f758d3fa5792de1ebbd102dbbf7985c0ec0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
