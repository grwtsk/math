# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8a3b29bd84bee77e7534eb0274ff7228346bfb34a3bfdfa38b1ee279ab18c14",
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
  "slug": "instance--ec5eaedef1e3e8a467eb6425",
  "source": {
    "blob": "ebb1876c7283274e0b8611c72b32eb40595383ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5eaedef1e3e8a467eb6425075ea54fbee7f4f4a7873134c2fecccc85f69cbd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8a3b29bd84bee77e7534eb0274ff7228346bfb34a3bfdfa38b1ee279ab18c14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (free R).Monoidal :=
  Functor.CoreMonoidal.toMonoidal
    { εIso := εIso R
      μIso := μIso R
      μIso_hom_natural_left := fun {X Y} f X' ↦ by
        rw [← cancel_epi (μIso R X X').inv]
        aesop
      μIso_hom_natural_right := fun {X Y} X' f ↦ by
        rw [← cancel_epi (μIso R X' X).inv]
        aesop
      associativity := fun X Y Z ↦ by
        rw [← cancel_epi ((μIso R X Y).inv ▷ _), ← cancel_epi (μIso R _ _).inv]
        ext ⟨⟨x, y⟩, z⟩
        dsimp
        rw [μIso_inv_freeMk, MonoidalCategory.whiskerRight_apply, μIso_inv_freeMk,
          MonoidalCategory.whiskerRight_apply, μIso_hom_freeMk_tmul_freeMk,
          μIso_hom_freeMk_tmul_freeMk, free_map_apply,
          CategoryTheory.associator_hom_apply, MonoidalCategory.associator_hom_apply,
          MonoidalCategory.whiskerLeft_apply, μIso_hom_freeMk_tmul_freeMk,
          μIso_hom_freeMk_tmul_freeMk]
      left_unitality := fun X ↦ by
        rw [← cancel_epi (λ_ _).inv, Iso.inv_hom_id]
        aesop
      right_unitality := fun X ↦ by
        rw [← cancel_epi (ρ_ _).inv, Iso.inv_hom_id]
        aesop }

open Functor.LaxMonoidal Functor.OplaxMonoidal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantabab7d646e63f9dcea42007e9846aff0099e0d04b853f899de91d4fdf9e24177.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb1876c7283274e0b8611c72b32eb40595383ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
