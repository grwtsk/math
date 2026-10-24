# map_opShiftFunctorEquivalence_unitIso_hom_app_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83454ecd64c197f147f1760a7d3f5cd2d23afb4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7cd7ed9-a76f-3eac-8d99-dfd9d359db81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46dbdbcd-76e0-e58b-bf7a-2188cb90e1f8",
  "kind": "lemma",
  "lexical_name": "map_opShiftFunctorEquivalence_unitIso_hom_app_unop",
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
  "slug": "map-opshiftfunctorequivalence-unitiso-hom-app-unop--39339252b23551f2108aaf7d",
  "source": {
    "blob": "83454ecd64c197f147f1760a7d3f5cd2d23afb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39339252b23551f2108aaf7d51e80b7c58501fc3904951c0edb3b089f61a7b30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46dbdbcd-76e0-e58b-bf7a-2188cb90e1f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_opShiftFunctorEquivalence_unitIso_hom_app_unop (X : Cᵒᵖ) (n : ℤ) :
    F.map ((opShiftFunctorEquivalence C n).unitIso.hom.app X).unop =
      (F.commShiftIso n).hom.app _ ≫
        (((F.op).commShiftIso n).inv.app X).unop⟦n⟧' ≫
        ((opShiftFunctorEquivalence D n).unitIso.hom.app (op _)).unop := by
  dsimp [opShiftFunctorEquivalence]
  simp only [map_comp, unop_comp, Quiver.Hom.unop_op, assoc,
    map_shiftFunctorCompIsoId_hom_app, commShiftIso_hom_naturality_assoc,
    op_commShiftIso_inv_app _ _ _ _ (add_neg_cancel n)]
  congr 3
  rw [← Functor.map_comp_assoc, ← unop_comp,
    Iso.inv_hom_id_app]
  dsimp
  rw [map_id, id_comp]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83454ecd64c197f147f1760a7d3f5cd2d23afb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
