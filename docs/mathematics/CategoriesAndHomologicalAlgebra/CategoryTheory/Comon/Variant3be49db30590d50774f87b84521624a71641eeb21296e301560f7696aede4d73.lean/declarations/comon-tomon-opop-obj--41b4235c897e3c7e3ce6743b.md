# Comon_ToMon_OpOp_obj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6937e1f175987a589084a4ca8f7161b606a8339dee421a41c786d40d29ef7f55",
  "kind": "def",
  "lexical_name": "Comon_ToMon_OpOp_obj'",
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
  "slug": "comon-tomon-opop-obj--41b4235c897e3c7e3ce6743b",
  "source": {
    "blob": "552a4c1b13201e11e9a535544e6623b4747f6b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41b4235c897e3c7e3ce6743b838d6f1cd668008bd8e77912524b6ebd7aceed24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6937e1f175987a589084a4ca8f7161b606a8339dee421a41c786d40d29ef7f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def Comon_ToMon_OpOp_obj' (A : Comon_ C) : Mon_ (Cᵒᵖ) where
  X := op A.X
  one := A.counit.op
  mul := A.comul.op
  one_mul := by
    rw [← op_whiskerRight, ← op_comp, counit_comul]
    rfl
  mul_one := by
    rw [← op_whiskerLeft, ← op_comp, comul_counit]
    rfl
  mul_assoc := by
    rw [← op_inv_associator, ← op_whiskerRight, ← op_comp, ← op_whiskerLeft, ← op_comp,
      comul_assoc_flip, op_comp, op_comp_assoc]
    rfl

/--
The contravariant functor turning comonoid objects into monoid objects in the opposite category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant3be49db30590d50774f87b84521624a71641eeb21296e301560f7696aede4d73.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552a4c1b13201e11e9a535544e6623b4747f6b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
