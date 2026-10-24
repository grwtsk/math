# constructLeftAdjointEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae081076ef85332cfa21a092ccfdd43ea00baa15bc7ac57ef000c1ca9e9871f5",
  "kind": "def",
  "lexical_name": "constructLeftAdjointEquiv",
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
  "slug": "constructleftadjointequiv--0cd2efb7e0b42371faefbdc2",
  "source": {
    "blob": "86662e1df75b63bf9c9995697803eac492a29a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cd2efb7e0b42371faefbdc27a93773c01f1d0862a0b878966863aea018a3b6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae081076ef85332cfa21a092ccfdd43ea00baa15bc7ac57ef000c1ca9e9871f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constructLeftAdjointEquiv [∀ X : B, RegularEpi (adj₁.counit.app X)] (Y : A)
    (X : B) : (constructLeftAdjointObj _ _ adj₁ adj₂ X ⟶ Y) ≃ (X ⟶ R.obj Y) :=
  calc
    (constructLeftAdjointObj _ _ adj₁ adj₂ X ⟶ Y) ≃
        { f : F'.obj (U.obj X) ⟶ Y //
          F'.map (U.map (adj₁.counit.app X)) ≫ f = otherMap _ _ adj₁ adj₂ _ ≫ f } :=
      Cofork.IsColimit.homIso (colimit.isColimit _) _
    _ ≃ { g : U.obj X ⟶ U.obj (R.obj Y) //
          U.map (F.map g ≫ adj₁.counit.app _) = U.map (adj₁.counit.app _) ≫ g } := by
      apply (adj₂.homEquiv _ _).subtypeEquiv _
      intro f
      rw [← (adj₂.homEquiv _ _).injective.eq_iff, eq_comm, adj₂.homEquiv_naturality_left,
        otherMap, assoc, adj₂.homEquiv_naturality_left, ← adj₂.counit_naturality,
        adj₂.homEquiv_naturality_left, adj₂.homEquiv_unit, adj₂.right_triangle_components,
        comp_id, Functor.comp_map, ← U.map_comp, assoc, ← adj₁.counit_naturality,
        adj₂.homEquiv_unit, adj₂.homEquiv_unit, F.map_comp, assoc]
      rfl
    _ ≃ { z : F.obj (U.obj X) ⟶ R.obj Y // _ } := by
      apply (adj₁.homEquiv _ _).symm.subtypeEquiv
      intro g
      rw [← (adj₁.homEquiv _ _).symm.injective.eq_iff, adj₁.homEquiv_counit,
        adj₁.homEquiv_counit, adj₁.homEquiv_counit, F.map_comp, assoc, U.map_comp, F.map_comp,
        assoc, adj₁.counit_naturality, adj₁.counit_naturality_assoc]
      apply eq_comm
    _ ≃ (X ⟶ R.obj Y) := (Cofork.IsColimit.homIso (counitCoequalises adj₁ X) _).symm

attribute [local simp] Adjunction.homEquiv_counit

/-- Construct the left adjoint to `R`, with object map `constructLeftAdjointObj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86662e1df75b63bf9c9995697803eac492a29a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
