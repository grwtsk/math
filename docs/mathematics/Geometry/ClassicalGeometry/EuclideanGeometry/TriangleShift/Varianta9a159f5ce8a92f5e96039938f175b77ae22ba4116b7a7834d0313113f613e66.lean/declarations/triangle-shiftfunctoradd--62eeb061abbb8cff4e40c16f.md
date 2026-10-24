# Triangle.shiftFunctorAdd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c18570e3ab2332cd8e9e03158d4450c41b089e5b21291345e307ff02c7c6df3d",
  "kind": "def",
  "lexical_name": "Triangle.shiftFunctorAdd'",
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
  "slug": "triangle-shiftfunctoradd--62eeb061abbb8cff4e40c16f",
  "source": {
    "blob": "d96955c04e428883705fcaa6549b88bfa9733bc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 95,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62eeb061abbb8cff4e40c16f48a77c76303cd7cfd5de4716fe1baad5e8863e8a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c18570e3ab2332cd8e9e03158d4450c41b089e5b21291345e307ff02c7c6df3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Triangle.shiftFunctorAdd' (a b n : ℤ) (h : a + b = n) :
    Triangle.shiftFunctor C n ≅ Triangle.shiftFunctor C a ⋙ Triangle.shiftFunctor C b :=
  NatIso.ofComponents
    (fun T => Triangle.isoMk _ _
      ((CategoryTheory.shiftFunctorAdd' C a b n h).app _)
      ((CategoryTheory.shiftFunctorAdd' C a b n h).app _)
      ((CategoryTheory.shiftFunctorAdd' C a b n h).app _)
      (by
        subst h
        dsimp
        rw [Linear.units_smul_comp, NatTrans.naturality, Linear.comp_units_smul, Functor.comp_map,
          Functor.map_units_smul, Linear.comp_units_smul, smul_smul, Int.negOnePow_add, mul_comm])
      (by
        subst h
        dsimp
        rw [Linear.units_smul_comp, NatTrans.naturality, Linear.comp_units_smul, Functor.comp_map,
          Functor.map_units_smul, Linear.comp_units_smul, smul_smul, Int.negOnePow_add, mul_comm])
      (by
        subst h
        dsimp
        rw [Linear.units_smul_comp, Linear.comp_units_smul, Functor.map_units_smul,
          Linear.units_smul_comp, Linear.comp_units_smul, smul_smul, assoc, Functor.map_comp, assoc,
          ← dsimp% (CategoryTheory.shiftFunctorAdd' C a b (a + b) rfl).hom.naturality_assoc]
        simp only [shiftFunctorAdd'_eq_shiftFunctorAdd, Int.negOnePow_add,
          shiftFunctorComm_hom_app_comp_shift_shiftFunctorAdd_hom_app, add_comm a]))
    (by intros; ext <;> simp)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Rotating triangles three times identifies with the shift by `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/TriangleShift/Varianta9a159f5ce8a92f5e96039938f175b77ae22ba4116b7a7834d0313113f613e66.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96955c04e428883705fcaa6549b88bfa9733bc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
