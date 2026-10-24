# NatTrans.mapElements_op_comp_toCostructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f619f006-c7d7-77c7-ee76-7fca33b3d722",
  "kind": "lemma",
  "lexical_name": "NatTrans.mapElements_op_comp_toCostructuredArrow",
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
  "slug": "nattrans-mapelements-op-comp-tocostructuredarrow--11b978be91b95d4d43740dde",
  "source": {
    "blob": "f9337be97b7759d16a20e23a14410cdfefecf06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 358,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b978be91b95d4d43740ddebd705aed869151b6ee3b71074da1c1638836988d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f619f006-c7d7-77c7-ee76-7fca33b3d722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NatTrans.mapElements_op_comp_toCostructuredArrow {F₁ F₂ : Cᵒᵖ ⥤ Type v} (α : F₁ ⟶ F₂) :
    α.mapElements.op ⋙ toCostructuredArrow F₂ =
      toCostructuredArrow F₁ ⋙ CostructuredArrow.map α :=
  Functor.ext_of_iso (α.mapElementsOpCompToCostructuredArrowIso)
    (fun _ ↦ CostructuredArrow.obj_ext _ _ (by dsimp)
      (yonedaEquiv.injective (by simp [yonedaEquiv])))

namespace CategoryOfElements

@[deprecated (since := "2026-08-30")] alias homMk := Functor.Elements.homMk
@[deprecated (since := "2026-08-30")] alias isoMk := Functor.Elements.isoMk
@[deprecated (since := "2026-08-30")] alias ext := Functor.Elements.hom_ext
@[deprecated (since := "2026-08-30")] alias id_val := Functor.Elements.id_hom
@[deprecated (since := "2026-08-30")] alias comp_val := Functor.Elements.comp_hom
@[deprecated (since := "2026-08-30")] alias map_snd := Functor.Elements.Hom.map_val
@[deprecated (since := "2026-08-30")] alias π := Functor.Elements.π
@[deprecated (since := "2026-08-30")] alias map := NatTrans.mapElements
@[deprecated (since := "2026-08-30")] alias map_π := NatTrans.mapElements_comp_π
@[deprecated (since := "2026-08-30")] alias toStructuredArrow :=
  Functor.Elements.toStructuredArrow
@[deprecated (since := "2026-08-30")] alias fromStructuredArrow :=
  Functor.Elements.fromStructuredArrow
@[deprecated (since := "2026-08-30")] alias fromStructuredArrow_obj :=
  Functor.Elements.toStructuredArrow_obj
@[deprecated (since := "2026-08-30")] alias fromStructuredArrow_map :=
  Functor.Elements.toStructuredArrow_map
@[deprecated (since := "2026-08-30")] alias structuredArrowEquivalence :=
  Functor.Elements.structuredArrowEquivalence
@[deprecated (since := "2026-08-30")] alias toCostructuredArrow :=
  Functor.Elements.toCostructuredArrow
@[deprecated (since := "2026-08-30")] alias fromCostructuredArrow :=
  Functor.Elements.fromCostructuredArrow
@[deprecated (since := "2026-08-30")] alias fromCostructuredArrow_obj_mk :=
  Functor.Elements.fromCostructuredArrow_obj_mk
@[deprecated (since := "2026-08-30")] alias costructuredArrowYonedaEquivalence :=
  Functor.Elements.costructuredArrowYonedaEquivalence
@[deprecated (since := "2026-08-30")] alias costructuredArrow_yoneda_equivalence_naturality :=
  NatTrans.mapElements_op_comp_toCostructuredArrow
@[deprecated (since := "2026-08-30")] alias costructuredArrowYonedaEquivalenceFunctorProj :=
  Functor.Elements.costructuredArrowYonedaEquivalenceFunctorProj
@[deprecated (since := "2026-08-30")] alias costructuredArrowYonedaEquivalenceInverseπ :=
  Functor.Elements.costructuredArrowYonedaEquivalenceInverseπ
@[deprecated (since := "2026-08-30")] alias costructuredArrowULiftYonedaEquivalence :=
  Functor.Elements.costructuredArrowULiftYonedaEquivalence
@[deprecated (since := "2026-08-30")]
alias costructuredArrowULiftYonedaEquivalenceFunctorCompProjIso :=
  Functor.Elements.costructuredArrowULiftYonedaEquivalenceFunctorCompProjIso

@[deprecated "No replacement (this is proven `by dsimp`)" (since := "2026-08-30")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9337be97b7759d16a20e23a14410cdfefecf06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
