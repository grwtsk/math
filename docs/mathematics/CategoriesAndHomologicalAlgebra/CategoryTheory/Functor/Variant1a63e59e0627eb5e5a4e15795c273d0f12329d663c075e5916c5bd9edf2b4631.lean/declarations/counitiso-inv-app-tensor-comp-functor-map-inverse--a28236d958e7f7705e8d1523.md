# counitIso_inv_app_tensor_comp_functor_map_δ_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5ede9fe-4bc9-9f61-255c-fdd09e10bdf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5078bec7-355e-d043-93c7-75c9af389f07",
  "kind": "lemma",
  "lexical_name": "counitIso_inv_app_tensor_comp_functor_map_δ_inverse",
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
  "slug": "counitiso-inv-app-tensor-comp-functor-map-inverse--a28236d958e7f7705e8d1523",
  "source": {
    "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1214,
    "line": 1205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a28236d958e7f7705e8d1523ae21081af3c19c7d3da40adb9749f7453496f097",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5078bec7-355e-d043-93c7-75c9af389f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1205–1214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma counitIso_inv_app_tensor_comp_functor_map_δ_inverse (X Y : C) :
    e.counitIso.inv.app (e.functor.obj X ⊗ e.functor.obj Y) ≫
      e.functor.map (δ e.inverse (e.functor.obj X) (e.functor.obj Y)) =
      μ e.functor X Y ≫ e.functor.map (e.unitIso.hom.app X ⊗ₘ e.unitIso.hom.app Y) := by
  rw [← cancel_epi (δ e.functor _ _), Monoidal.δ_μ_assoc]
  apply e.inverse.map_injective
  simp [← cancel_epi (e.unitIso.hom.app (X ⊗ Y)), Functor.map_comp,
    unitIso_hom_app_tensor_comp_inverse_map_δ_functor_assoc]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean#L1205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795cfcd62b99acf8328fe29e452bfb809f75b774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
