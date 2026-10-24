# functorHasRightDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c6a28a23e4d2d45bce5da806612632a00ec8542a1285d206a0a4a9412c5b5af",
  "kind": "instance",
  "lexical_name": "functorHasRightDual",
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
  "slug": "functorhasrightdual--7a195cd12e35df8ff413f6c4",
  "source": {
    "blob": "72bb317a5034656e5e6fe1714949f1e54974080f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a195cd12e35df8ff413f6c4b8898e2c376cbe6cd31d6707762b3107e354fb9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c6a28a23e4d2d45bce5da806612632a00ec8542a1285d206a0a4a9412c5b5af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functorHasRightDual [RightRigidCategory D] (F : C ⥤ D) : HasRightDual F where
  rightDual :=
    { obj := fun X => (F.obj X)ᘁ
      map := fun f => (F.map (inv f))ᘁ
      map_comp := fun f g => by simp [comp_rightAdjointMate] }
  exact :=
    { evaluation' :=
        { app := fun _ => ε_ _ _
          naturality := fun X Y f => by
            dsimp
            rw [Category.comp_id, Functor.map_inv, ← id_tensor_comp_tensor_id, Category.assoc,
              id_tensorHom, tensorHom_id,
              rightAdjointMate_comp_evaluation, ← MonoidalCategory.whiskerLeft_comp_assoc,
              IsIso.hom_inv_id, MonoidalCategory.whiskerLeft_id, Category.id_comp] }
      coevaluation' :=
        { app := fun _ => η_ _ _
          naturality := fun X Y f => by
            dsimp
            rw [Functor.map_inv, Category.id_comp, ← id_tensor_comp_tensor_id,
              id_tensorHom, tensorHom_id, ← Category.assoc,
              coevaluation_comp_rightAdjointMate, Category.assoc, ← comp_whiskerRight,
              IsIso.inv_hom_id, id_whiskerRight, Category.comp_id] } }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72bb317a5034656e5e6fe1714949f1e54974080f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
