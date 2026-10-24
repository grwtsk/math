# colimitPointwiseProductToProductColimit_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1be73a5cadd8d6602391c58cb41ba363036fa59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33104d01-74a3-759f-b3b6-a3d67283401b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:322c1365-237f-3b33-d31c-0660bdec254f",
  "kind": "theorem",
  "lexical_name": "colimitPointwiseProductToProductColimit_app",
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
  "slug": "colimitpointwiseproducttoproductcolimit-app--e7d49d734e70ec43aa3d5d4f",
  "source": {
    "blob": "a1be73a5cadd8d6602391c58cb41ba363036fa59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d49d734e70ec43aa3d5d4f84c876ef2ab9c962413c8343ae65adf52ea18ead",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322c1365-237f-3b33-d31c-0660bdec254f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitPointwiseProductToProductColimit_app (d : D) :
    (colimitPointwiseProductToProductColimit F).app d =
      (colimitObjIsoColimitCompEvaluation _ _).hom ≫
        (HasColimit.isoOfNatIso (pointwiseProductCompEvaluation F d)).hom ≫
          colimitPointwiseProductToProductColimit _ ≫
            (Pi.mapIso fun _ => (colimitObjIsoColimitCompEvaluation _ _).symm).hom ≫
              (piObjIso _ _).inv := by
  rw [← Iso.inv_comp_eq]
  simp only [← Category.assoc]
  rw [Iso.eq_comp_inv]
  refine Pi.hom_ext _ _ (fun s => colimit.hom_ext (fun k => ?_))
  simp [← NatTrans.comp_app]

end functorCategory

section

variable (C : Type u) [Category.{v} C]

/-- A category `C` has the `w`-IPC property if the natural morphism
`colim_k (∏ᶜ s ↦ (F s).obj (k s)) ⟶ ∏ᶜ s ↦ colim_k (F s).obj (k s)` is an isomorphism for any
family of functors `F i : I i ⥤ C` with `I i` `w`-small and filtered for all `i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesProduct/Variant92e8edf8fdbda6052f8e8cf7a449a42a309dfb242cd99409c3155ae7f333983b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1be73a5cadd8d6602391c58cb41ba363036fa59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
