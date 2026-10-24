# functorHasLeftDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:759a860f4182ce840891339978d86a033b3ac4d297a59a10d740ff5db6ff7998",
  "kind": "instance",
  "lexical_name": "functorHasLeftDual",
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
  "slug": "functorhasleftdual--cf6dc035f46f830b0a133f6b",
  "source": {
    "blob": "72bb317a5034656e5e6fe1714949f1e54974080f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf6dc035f46f830b0a133f6b2a0867ebeafaea735b6db70fa9627bdc98b1e039",
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

Occurrence: `declaration:759a860f4182ce840891339978d86a033b3ac4d297a59a10d740ff5db6ff7998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functorHasLeftDual [LeftRigidCategory D] (F : C ⥤ D) : HasLeftDual F where
  leftDual :=
    { obj := fun X => ᘁ(F.obj X)
      map := fun f => ᘁ(F.map (inv f))
      map_comp := fun f g => by simp [comp_leftAdjointMate] }
  exact :=
    { evaluation' :=
        { app := fun _ => ε_ _ _
          naturality := fun X Y f => by
            dsimp
            simp [tensorHom_def, leftAdjointMate_comp_evaluation] }
      coevaluation' :=
        { app := fun _ => η_ _ _
          naturality := fun X Y f => by
            dsimp
            simp [tensorHom_def, coevaluation_comp_leftAdjointMate_assoc] } }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72bb317a5034656e5e6fe1714949f1e54974080f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
