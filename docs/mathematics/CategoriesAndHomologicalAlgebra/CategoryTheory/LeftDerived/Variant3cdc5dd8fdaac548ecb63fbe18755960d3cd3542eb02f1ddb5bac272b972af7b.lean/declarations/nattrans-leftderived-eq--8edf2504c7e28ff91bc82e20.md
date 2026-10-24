# NatTrans.leftDerived_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "877e846cb5ac1176ebda6524062353b1ad8e0813",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f96b8bb-4eae-2cb3-410a-91b2eb7dde86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0e1eb85-4083-fbc6-a790-376836e3d02c",
  "kind": "theorem",
  "lexical_name": "NatTrans.leftDerived_eq",
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
  "slug": "nattrans-leftderived-eq--8edf2504c7e28ff91bc82e20",
  "source": {
    "blob": "877e846cb5ac1176ebda6524062353b1ad8e0813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8edf2504c7e28ff91bc82e204476da5cefe24a967000e8771aeffbccfe5188ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e1eb85-4083-fbc6-a790-376836e3d02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NatTrans.leftDerived_eq {F G : C ⥤ D} [F.Additive] [G.Additive] (α : F ⟶ G) (n : ℕ) {X : C}
    (P : ProjectiveResolution X) :
    (NatTrans.leftDerived α n).app X =
      (F.leftDerivedObjIso n P).hom ≫
        (homologyFunctor D _ n).map ((NatTrans.mapHomologicalComplex α _).app P.complex) ≫
          (G.leftDerivedObjIso n P).inv := by
  symm
  dsimp [NatTrans.leftDerived, Functor.leftDerivedObjIso]
  simp only [Category.comp_id, Category.id_comp]
  rw [← homologyFunctor_map, HomotopyCategory.homologyFunctor_map_factors]
  simp only [← Functor.map_comp]
  congr 1
  apply HomotopyCategory.eq_of_homotopy
  simp only [NatTrans.mapHomologicalComplex_naturality_assoc, ← Functor.map_comp]
  apply Homotopy.compLeftId
  refine' (Functor.mapHomotopy _ (HomotopyEquiv.homotopyHomInvId _) ).trans _
  apply Homotopy.ofEq
  simp only [Functor.map_id]
#align category_theory.nat_trans.left_derived_eq CategoryTheory.NatTrans.leftDerived_eq

-- TODO:
-- lemma nat_trans.left_derived_projective_zero {F G : C ⥤ D} [F.additive] [G.additive] (α : F ⟶ G)
--   (X : C) [projective X] :
--   (nat_trans.left_derived α 0).app X =
--     (F.left_derived_obj_projective_zero X).hom ≫
--       α.app X ≫
--         (G.left_derived_obj_projective_zero X).inv := sorry
-- TODO:
-- lemma nat_trans.left_derived_projective_succ {F G : C ⥤ D} [F.additive] [G.additive] (α : F ⟶ G)
--   (n : ℕ) (X : C) [projective X] :
--   (nat_trans.left_derived α (n+1)).app X = 0 := sorry
-- TODO left-derived functors of the identity functor are the identity
-- (requires we assume `abelian`?)
-- PROJECT left-derived functors of a composition (Grothendieck sequence)
end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `877e846cb5ac1176ebda6524062353b1ad8e0813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
