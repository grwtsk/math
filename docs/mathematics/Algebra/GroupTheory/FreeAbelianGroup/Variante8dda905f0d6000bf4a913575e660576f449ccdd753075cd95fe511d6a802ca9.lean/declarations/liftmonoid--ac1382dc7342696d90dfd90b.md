# liftMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ad1d0033baf292e90ecec2bdea6b74f980542f338864487e1dc264b5309053c",
  "kind": "def",
  "lexical_name": "liftMonoid",
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
  "slug": "liftmonoid--ac1382dc7342696d90dfd90b",
  "source": {
    "blob": "3060e64081b3e4fe91eb13fdf8daee28c6486f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 493,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac1382dc7342696d90dfd90ba04915dbd9449fa7fd2b60cc74612c75fc963de9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ad1d0033baf292e90ecec2bdea6b74f980542f338864487e1dc264b5309053c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftMonoid : (α →* R) ≃ (FreeAbelianGroup α →+* R) where
  toFun f := { lift f with
    toFun := lift f
    map_one' := (lift.of f _).trans f.map_one
    map_mul' := fun x y ↦ by
      refine FreeAbelianGroup.induction_on y
          (by simp only [mul_zero, map_zero]) (fun L2 ↦ ?_) (fun L2 ih ↦ ?_) ?_
      · refine FreeAbelianGroup.induction_on x
            (by simp only [zero_mul, map_zero]) (fun L1 ↦ ?_) (fun L1 ih ↦ ?_) ?_
        · simp_rw [of_mul_of, lift.of]
          exact f.map_mul _ _
        · simp_rw [neg_mul, map_neg, neg_mul]
          exact congr_arg Neg.neg ih
        · intro x1 x2 ih1 ih2
          simp only [add_mul, map_add, ih1, ih2]
      · rw [mul_neg, map_neg, map_neg, mul_neg, ih]
      · intro y1 y2 ih1 ih2
        rw [mul_add, map_add, map_add, mul_add, ih1, ih2] }
  invFun F := MonoidHom.comp (↑F) ofMulHom
  left_inv f := MonoidHom.ext <| by
    simp only [RingHom.coe_monoidHom_mk, MonoidHom.coe_comp, MonoidHom.coe_mk, OneHom.coe_mk,
      ofMulHom_coe, Function.comp_apply, lift.of, forall_const]
  right_inv F := RingHom.coe_addMonoidHom_injective <| by
    simp only
    rw [← lift.apply_symm_apply (↑F : FreeAbelianGroup α →+ R)]
    rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3060e64081b3e4fe91eb13fdf8daee28c6486f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
