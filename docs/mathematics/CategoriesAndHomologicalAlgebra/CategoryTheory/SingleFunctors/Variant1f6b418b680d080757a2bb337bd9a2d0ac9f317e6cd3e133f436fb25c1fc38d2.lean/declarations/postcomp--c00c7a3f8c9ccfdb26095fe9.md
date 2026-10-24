# postcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f29b3b623af4cfe86c5ba335ff6e1c521c46c2930ce726652acd9e798f91c46d",
  "kind": "def",
  "lexical_name": "postcomp",
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
  "slug": "postcomp--c00c7a3f8c9ccfdb26095fe9",
  "source": {
    "blob": "3ac3d3b193884ca0b8f64fdb76503c3b2d1bb2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c00c7a3f8c9ccfdb26095fe9c0f8c52aadbcb64ef20f29b4c4fb5f5f1961a07c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f29b3b623af4cfe86c5ba335ff6e1c521c46c2930ce726652acd9e798f91c46d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcomp (G : D ⥤ E) [G.CommShift A] :
    SingleFunctors C E A where
  functor a := F.functor a ⋙ G
  shiftIso n a a' ha' :=
    Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ (G.commShiftIso n).symm ≪≫
      (Functor.associator _ _ _).symm ≪≫ isoWhiskerRight (F.shiftIso n a a' ha') G
  shiftIso_zero a := by
    ext X
    dsimp
    simp only [Functor.commShiftIso_zero, Functor.CommShift.isoZero_inv_app,
      SingleFunctors.shiftIso_zero_hom_app, id_comp, assoc, ← G.map_comp, Iso.inv_hom_id_app,
      Functor.map_id, Functor.id_obj, comp_id]
  shiftIso_add n m a a' a'' ha' ha'' := by
    ext X
    dsimp
    simp only [F.shiftIso_add_hom_app n m a a' a'' ha' ha'', Functor.commShiftIso_add,
      Functor.CommShift.isoAdd_inv_app, Functor.map_comp, id_comp, assoc,
      Functor.commShiftIso_inv_naturality_assoc]
    simp only [← G.map_comp, Iso.inv_hom_id_app_assoc]

variable (C A)

set_option backward.defeqAttrib.useBackward true in
/-- The functor `SingleFunctors C D A ⥤ SingleFunctors C E A` given by the postcomposition
by a functor `G : D ⥤ E` which commutes with the shift. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac3d3b193884ca0b8f64fdb76503c3b2d1bb2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
