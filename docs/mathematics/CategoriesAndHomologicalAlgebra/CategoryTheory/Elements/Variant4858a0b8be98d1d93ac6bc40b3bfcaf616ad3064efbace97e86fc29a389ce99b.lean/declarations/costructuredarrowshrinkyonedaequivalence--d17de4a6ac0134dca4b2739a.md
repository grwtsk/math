# costructuredArrowShrinkYonedaEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49184f9a1a6ffac839ab658b89e48476551968d24fce6c136bccf08526ed5746",
  "kind": "def",
  "lexical_name": "costructuredArrowShrinkYonedaEquivalence",
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
  "slug": "costructuredarrowshrinkyonedaequivalence--d17de4a6ac0134dca4b2739a",
  "source": {
    "blob": "f9337be97b7759d16a20e23a14410cdfefecf06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 266,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d17de4a6ac0134dca4b2739a9e2ad3a27d756aa32291bda8f971fc6612f3de08",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49184f9a1a6ffac839ab658b89e48476551968d24fce6c136bccf08526ed5746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def costructuredArrowShrinkYonedaEquivalence
    [LocallySmall.{w} C] (F : Cᵒᵖ ⥤ Type w) :
    F.Elementsᵒᵖ ≌ CostructuredArrow shrinkYoneda.{w} F where
  functor.obj x := CostructuredArrow.mk (shrinkYonedaEquiv.symm x.unop.val)
  functor.map f := CostructuredArrow.homMk f.unop.hom.unop (by
    simp [← shrinkYonedaEquiv_symm_map.{w}])
  inverse.obj x := Opposite.op (Functor.elementsMk _ _ (shrinkYonedaEquiv x.hom))
  inverse.map f := (homMk f.left.op (by simp [shrinkYonedaEquiv_naturality])).op
  unitIso :=
    NatIso.ofComponents (fun x ↦ Iso.op (isoMk (Iso.refl _) (by simp)))
      (fun _ ↦ Quiver.Hom.unop_inj (by cat_disch))
  counitIso := NatIso.ofComponents (fun x ↦ CostructuredArrow.isoMk (Iso.refl _))

/-- The functor of the equivalence `costructuredArrowShrinkYonedaEquivalence F` followed
by the projection `CostructuredArrow shrinkYoneda.{w} F ⥤ C` identifies to `(π F).leftOp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4858a0b8be98d1d93ac6bc40b3bfcaf616ad3064efbace97e86fc29a389ce99b.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9337be97b7759d16a20e23a14410cdfefecf06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
