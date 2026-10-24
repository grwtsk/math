# MonObj.ofRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8e3b950eef22f5ce66a3e120fc09173cb6531e34d2683d5ae0e4093845390d3",
  "kind": "def",
  "lexical_name": "MonObj.ofRepresentableBy",
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
  "slug": "monobj-ofrepresentableby--d92c43624357d25b3315f3dd",
  "source": {
    "blob": "f8c9e2efd164a1a7cc25b36ea3f194c49eeee6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d92c43624357d25b3315f3dd04d022ce8f506d5a59965040e819e4c58b116e61",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8e3b950eef22f5ce66a3e120fc09173cb6531e34d2683d5ae0e4093845390d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MonObj.ofRepresentableBy (F : Cᵒᵖ ⥤ MonCat.{w}) (α : (F ⋙ forget _).RepresentableBy X) :
    MonObj X where
  one := α.homEquiv'.symm 1
  mul := α.homEquiv'.symm (α.homEquiv' (fst X X) * α.homEquiv' (snd X X))
  one_mul := by
    apply α.homEquiv'.injective
    simp only [α.homEquiv'_comp, Equiv.apply_symm_apply, map_mul]
    simp only [← α.homEquiv'_comp]
    simp only [whiskerRight_fst, whiskerRight_snd, α.homEquiv'_comp, Equiv.apply_symm_apply]
    simp [leftUnitor_hom, -op_tensorObj, -op_whiskerRight, -op_tensorUnit]
  mul_one := by
    apply α.homEquiv'.injective
    simp only [α.homEquiv'_comp, Equiv.apply_symm_apply, map_mul]
    simp only [← α.homEquiv'_comp]
    simp only [whiskerLeft_fst, whiskerLeft_snd, α.homEquiv'_comp, Equiv.apply_symm_apply]
    simp [rightUnitor_hom, -op_tensorObj, -op_whiskerRight, -op_tensorUnit]
  mul_assoc := by
    apply α.homEquiv'.injective
    simp only [α.homEquiv'_comp, Equiv.apply_symm_apply, map_mul]
    simp only [← α.homEquiv'_comp]
    simp only [whiskerRight_fst, whiskerRight_snd, whiskerLeft_fst, associator_hom_fst,
      whiskerLeft_snd, α.homEquiv'_comp, Equiv.apply_symm_apply, map_mul, _root_.mul_assoc]
    simp only [← α.homEquiv'_comp]
    simp

/-- If `M` is a monoid object, then `Hom(X, M)` has a monoid structure. -/
@[to_additive
/-- If `M` is an additive monoid object, then `Hom(X, M)` has an additive monoid structure. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8c9e2efd164a1a7cc25b36ea3f194c49eeee6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
