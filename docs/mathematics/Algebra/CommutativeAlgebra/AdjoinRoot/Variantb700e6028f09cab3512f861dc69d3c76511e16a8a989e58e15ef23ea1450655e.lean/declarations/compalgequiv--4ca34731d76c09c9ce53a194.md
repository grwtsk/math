# compAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c018bda98e4a3c843588876e3241de8b03649a60ce09b6a18fe0a4a2c43cd94",
  "kind": "def",
  "lexical_name": "compAlgEquiv",
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
  "slug": "compalgequiv--4ca34731d76c09c9ce53a194",
  "source": {
    "blob": "a6806900c2cb830aedd789f923b0b87923dec737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 533,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ca34731d76c09c9ce53a194d51bd69b8c8583f17b3cb0e9fdf0e35396c20d0f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c018bda98e4a3c843588876e3241de8b03649a60ce09b6a18fe0a4a2c43cd94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compAlgEquiv : AdjoinRoot (f.comp g) ≃ₐ[R] AdjoinRoot (g.map (of f) - C (root f)) :=
  .ofAlgHom
    (liftAlgHom (f.comp g) (Algebra.ofId R (AdjoinRoot _)) (root _) ?fgroot)
    (liftAlgHom _ (liftAlgHom f (Algebra.ofId R (AdjoinRoot (f.comp g)))
      (g.aeval (root (f.comp g))) ?froot) (root (f.comp g)) ?groot)
    (AdjoinRoot.algHom_ext' (AdjoinRoot.algHom_ext ?mapf) ?mapg) (AdjoinRoot.algHom_ext ?mapfg)
where finally
  case fgroot =>
    conv =>
      rw [Algebra.toRingHom_ofId, algebraMap_eq', algebraMap_eq, eval₂_comp]
      enter [1, 2]
      rw [eval₂_eq_eval_map]
      enter [2]
      equals (g.map (of f) - C (root f)).map (of _) + C (of _ (root f)) =>
        rw [Polynomial.map_sub, Polynomial.map_C, sub_add_cancel, Polynomial.map_map]
    rw [eval_add, eval_C, (isRoot_root _).eq_zero, zero_add, ← hom_eval₂, eval₂_root, map_zero]
  case mapfg =>
    rw [AlgHom.comp_apply, liftAlgHom_root, liftAlgHom_root, AlgHom.id_apply]
  case froot =>
    rw [Algebra.toRingHom_ofId, aeval_def, algebraMap_eq, ← eval₂_comp, eval₂_root]
  case mapf =>
    rw [AlgHom.comp_apply, AlgHom.comp_apply, AlgHom.id_comp, coe_ofAlgHom,
      liftAlgHom_of, liftAlgHom_root, aeval_def, algebraMap_eq, coe_liftAlgHom]
    dsimp only [AlgHom.toRingHom_eq_coe]
    rw [hom_eval₂, lift_root, lift_comp_of, Algebra.toRingHom_ofId, eval₂_eq_eval_map,
      algebraMap_eq', algebraMap_eq]
    conv =>
      enter [1, 2]
      equals (g.map (of f) - C (root f)).map (of _) + C (of _ (root f)) =>
        rw [Polynomial.map_sub, Polynomial.map_C, sub_add_cancel, Polynomial.map_map]
    rw [eval_add, eval_C, (isRoot_root _).eq_zero, zero_add]
  case groot =>
    rw [eval₂_eq_eval_map, Polynomial.map_sub, Polynomial.map_C, Polynomial.map_map,
      AlgHom.coe_toRingHom, liftAlgHom_root, toRingHom_liftAlgHom]
    dsimp only [AlgHom.toRingHom_eq_coe]
    rw [lift_comp_of, Algebra.toRingHom_ofId, eval_sub, eval_C, eval_map, ← aeval_def,
      sub_self]
  case mapg =>
    rw [AlgHom.comp_apply, liftAlgHom_root, liftAlgHom_root, AlgHom.id_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6806900c2cb830aedd789f923b0b87923dec737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
