# iso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea74c8e-f813-2e5c-e645-d7ea6e372f48",
  "kind": "lemma",
  "lexical_name": "iso_inv_app",
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
  "slug": "iso-inv-app--86cedc87c3aa56ecaf8e77c3",
  "source": {
    "blob": "6dc822ffe537245acf22e03b89b52f1b2f16b85b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 333,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86cedc87c3aa56ecaf8e77c3a496faa0d7c85f1bf1f3bbaf8454be1950beaafb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea74c8e-f813-2e5c-e645-d7ea6e372f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iso_inv_app (Y : D) :
    (iso adj a).inv.app Y =
      adj.unit.app ((shiftFunctor C a).obj (G.obj Y)) ≫
          G.map ((shiftFunctorCompIsoId D b a h).inv.app
              (F.obj ((shiftFunctor C a).obj (G.obj Y)))) ≫
            G.map ((shiftFunctor D a).map ((shiftFunctor D b).map
                ((F.commShiftIso a).hom.app (G.obj Y)))) ≫
              G.map ((shiftFunctor D a).map ((shiftFunctorCompIsoId D a b
                  (by rw [eq_neg_of_add_eq_zero_left h, add_neg_cancel])).hom.app
                    (F.obj (G.obj Y)))) ≫
                G.map ((shiftFunctor D a).map (adj.counit.app Y)) := by
  obtain rfl : b = -a := by rw [← add_left_inj a, h, neg_add_cancel]
  simp only [iso, iso', shiftEquiv', Equiv.toFun_as_coe, conjugateIsoEquiv_apply_inv,
    conjugateEquiv_apply_app, Functor.comp_obj, comp_unit_app, Functor.id_obj,
    Equivalence.toAdjunction_unit, Equivalence.Equivalence_mk'_unit, Iso.symm_hom, Functor.comp_map,
    comp_counit_app, Equivalence.toAdjunction_counit, Equivalence.Equivalence_mk'_counit,
    Functor.map_shiftFunctorCompIsoId_hom_app, assoc, Functor.map_comp]
  slice_lhs 3 4 => rw [← Functor.map_comp, ← Functor.map_comp, Iso.inv_hom_id_app]
  simp only [Functor.comp_obj, Functor.map_id, id_comp, assoc]

/--
The commutation isomorphisms of `Adjunction.RightAdjointCommShift.iso` are compatible with
the unit of the adjunction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc822ffe537245acf22e03b89b52f1b2f16b85b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
