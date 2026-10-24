# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19058aeb1cf7c98301961fe44de12ad997c8feb804a8ea792b9636eb6af1ebe5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--821c0ed3e53428df910fd8eb",
  "source": {
    "blob": "5506c116d4d801e2fc506f36bd4ab99be03ef661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpOp/Variantefeaaa5176ca9dd6fba276d3bea85bcb6bd470f2c0d1b8258a1080443b6e329e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:821c0ed3e53428df910fd8ebff3a1d85f98a215b73838e236f62ce658a03199f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpOp/Variantefeaaa5176ca9dd6fba276d3bea85bcb6bd470f2c0d1b8258a1080443b6e329e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19058aeb1cf7c98301961fe44de12ad997c8feb804a8ea792b9636eb6af1ebe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (unopUnop C).CommShift ℤ where
  commShiftIso := iso _
  commShiftIso_zero := by
    ext X
    simp [iso_hom_app _ 0 0, shiftFunctorZero_op_inv_app,
      shiftFunctorZero_op_hom_app]
  commShiftIso_add p q := by
    ext X
    simp only [Functor.CommShift.isoAdd_hom_app, op_comp,
      ← shiftFunctorAdd'_eq_shiftFunctorAdd, Functor.map_comp,
      fun X n ↦ iso_hom_app X n (-n) (add_neg_cancel n),
      shiftFunctorAdd'_op_hom_app _ p q (p + q) rfl (-p) (-q) (-(p + q))
        (add_neg_cancel p) (add_neg_cancel q) (add_neg_cancel (p + q)),
      shiftFunctorAdd'_op_inv_app _ (-p) (-q) (-(p + q)) (by lia) p q (p + q)
        (neg_add_cancel p) (neg_add_cancel q) (neg_add_cancel (p + q)),
      shiftFunctor_op_map _ (-q) q, shiftFunctor_op_map _ q (-q)]
    simp [← Functor.map_comp_assoc, ← unop_comp, ← unop_comp_assoc]

end Opposite

variable {C}

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpOp/Variantefeaaa5176ca9dd6fba276d3bea85bcb6bd470f2c0d1b8258a1080443b6e329e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpOp/Variantefeaaa5176ca9dd6fba276d3bea85bcb6bd470f2c0d1b8258a1080443b6e329e.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5506c116d4d801e2fc506f36bd4ab99be03ef661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
