# map_opShiftFunctorEquivalence_counitIso_hom_app_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fcb439a21a56c7325397635cb79c641600c88e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bb5c215-0e8b-2127-dbba-40b41c1b67fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94de0abb-956f-419b-1e7c-f74a80130256",
  "kind": "lemma",
  "lexical_name": "map_opShiftFunctorEquivalence_counitIso_hom_app_unop",
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
  "slug": "map-opshiftfunctorequivalence-counitiso-hom-app-unop--f2d9690933e9f943f993fa40",
  "source": {
    "blob": "8fcb439a21a56c7325397635cb79c641600c88e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2d9690933e9f943f993fa40d7bd171454f0f9e9154535affc34c4fd2ce38b1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94de0abb-956f-419b-1e7c-f74a80130256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_opShiftFunctorEquivalence_counitIso_hom_app_unop (X : Cᵒᵖ) (n : ℤ) :
    F.map ((opShiftFunctorEquivalence C n).counitIso.hom.app X).unop =
      ((opShiftFunctorEquivalence D n).counitIso.hom.app (op (F.obj X.unop))).unop ≫
        (((F.commShiftIso n).inv.app X.unop).op⟦n⟧').unop ≫
          ((F.op.commShiftIso n).hom.app (op (X.unop⟦n⟧))).unop := by
  apply Quiver.Hom.op_inj
  dsimp [opShiftFunctorEquivalence]
  rw [assoc, F.op_commShiftIso_hom_app_assoc _ _ _ (add_neg_cancel n), map_comp,
    map_shiftFunctorCompIsoId_inv_app_assoc, op_comp, op_comp_assoc, op_comp_assoc,
    NatTrans.naturality_assoc, op_map, Iso.inv_hom_id_app_assoc, Quiver.Hom.unop_op]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcb439a21a56c7325397635cb79c641600c88e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
