# cartesianClosedOfEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ac8147a0d1b582e1b7de2fd8058a7d5bb34241ce7ece6e11e7e5e11cd9e0121",
  "kind": "def",
  "lexical_name": "cartesianClosedOfEquiv",
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
  "slug": "cartesianclosedofequiv--1507ebf36044e3b7980ba0a0",
  "source": {
    "blob": "b5cec0fec095510a1004cebef8b6ccb7f8bc2732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 413,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1507ebf36044e3b7980ba0a0677a6b5f7a891a146535a1b6f96fffed11a60e53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ac8147a0d1b582e1b7de2fd8058a7d5bb34241ce7ece6e11e7e5e11cd9e0121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cartesianClosedOfEquiv (e : C ≌ D) [h : CartesianClosed C] : CartesianClosed D where
  closed X :=
    { isAdj := by
        haveI q : Exponentiable (e.inverse.obj X) := inferInstance
        have : IsLeftAdjoint (prod.functor.obj (e.inverse.obj X)) := q.isAdj
        have : e.functor ⋙ prod.functor.obj X ⋙ e.inverse ≅ prod.functor.obj (e.inverse.obj X)
        apply NatIso.ofComponents _ _
        · intro Y
          apply asIso (prodComparison e.inverse X (e.functor.obj Y)) ≪≫ _
          apply prod.mapIso (Iso.refl _) (e.unitIso.app Y).symm
        · intro Y Z g
          dsimp
          simp [prodComparison, prod.comp_lift, ← e.inverse.map_comp, ← e.inverse.map_comp_assoc]
          -- I wonder if it would be a good idea to make `map_comp` a simp lemma the other way round
        · have : IsLeftAdjoint (e.functor ⋙ prod.functor.obj X ⋙ e.inverse) :=
            Adjunction.leftAdjointOfNatIso this.symm
          have : IsLeftAdjoint (e.inverse ⋙ e.functor ⋙ prod.functor.obj X ⋙ e.inverse) :=
            Adjunction.leftAdjointOfComp e.inverse _
          have :
            (e.inverse ⋙ e.functor ⋙ prod.functor.obj X ⋙ e.inverse) ⋙ e.functor ≅
              prod.functor.obj X := by
            apply isoWhiskerRight e.counitIso (prod.functor.obj X ⋙ e.inverse ⋙ e.functor) ≪≫ _
            change prod.functor.obj X ⋙ e.inverse ⋙ e.functor ≅ prod.functor.obj X
            apply isoWhiskerLeft (prod.functor.obj X) e.counitIso
          skip
          apply Adjunction.leftAdjointOfNatIso this }
#align category_theory.cartesian_closed_of_equiv CategoryTheory.cartesianClosedOfEquiv

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5cec0fec095510a1004cebef8b6ccb7f8bc2732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
