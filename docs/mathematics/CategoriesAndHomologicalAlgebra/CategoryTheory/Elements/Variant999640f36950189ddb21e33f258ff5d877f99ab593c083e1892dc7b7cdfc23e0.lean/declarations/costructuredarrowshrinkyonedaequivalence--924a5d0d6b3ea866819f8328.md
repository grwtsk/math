# costructuredArrowShrinkYonedaEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f40888f895e7ad9d7263c95c13aaab4778f65db2ee4e7df4259bf59be1684640",
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
  "slug": "costructuredarrowshrinkyonedaequivalence--924a5d0d6b3ea866819f8328",
  "source": {
    "blob": "e1d63ce0e5afe0cae35bd7a5fff7bcd02b5bbeb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:924a5d0d6b3ea866819f8328050731adeaea03264b4c77217516369c8488e165",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f40888f895e7ad9d7263c95c13aaab4778f65db2ee4e7df4259bf59be1684640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–272.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant999640f36950189ddb21e33f258ff5d877f99ab593c083e1892dc7b7cdfc23e0.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1d63ce0e5afe0cae35bd7a5fff7bcd02b5bbeb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
