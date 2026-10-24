# opRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1e610e9669c9786454c572909e30a8407184f433185ff0ac8894fa99f4865c5",
  "kind": "def",
  "lexical_name": "opRingEquiv",
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
  "slug": "opringequiv--00fe8343a15894e1a92ecdf1",
  "source": {
    "blob": "505163d603c369fd89805cdd652c5a9491856b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1907,
    "line": 1884,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00fe8343a15894e1a92ecdf1b91f489c79360bd8920d75c521ec40f8b1bd7017",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1e610e9669c9786454c572909e30a8407184f433185ff0ac8894fa99f4865c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1884–1907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def opRingEquiv [AddCommMonoid G] :
    (AddMonoidAlgebra k G)ᵐᵒᵖ ≃+* AddMonoidAlgebra kᵐᵒᵖ G :=
  { MulOpposite.opAddEquiv.symm.trans
      (Finsupp.mapRange.addEquiv (MulOpposite.opAddEquiv : k ≃+ kᵐᵒᵖ)) with
    map_mul' := by
      rw [Equiv.toFun_as_coe, AddEquiv.toEquiv_eq_coe, AddEquiv.coe_toEquiv,
        ← AddEquiv.coe_toAddMonoidHom]
      refine Iff.mpr (AddMonoidHom.map_mul_iff (R := (AddMonoidAlgebra k G)ᵐᵒᵖ)
        (S := AddMonoidAlgebra kᵐᵒᵖ G) _) ?_
      -- Porting note: Was `ext`.
      refine AddMonoidHom.mul_op_ext _ _ <| addHom_ext' fun i₁ => AddMonoidHom.ext fun r₁ =>
        AddMonoidHom.mul_op_ext _ _ <| addHom_ext' fun i₂ => AddMonoidHom.ext fun r₂ => ?_
      -- Porting note: `reducible` cannot be `local` so proof gets long.
      dsimp
      rw [AddEquiv.trans_apply, AddEquiv.trans_apply, AddEquiv.trans_apply,
        MulOpposite.opAddEquiv_apply, MulOpposite.opAddEquiv_symm_apply,
        MulOpposite.unop_mul (α := AddMonoidAlgebra k G)]
      dsimp
      simp only [mapRange_single, single_mul_single, ← op_mul, add_comm] }
#align add_monoid_algebra.op_ring_equiv AddMonoidAlgebra.opRingEquiv
#align add_monoid_algebra.op_ring_equiv_apply AddMonoidAlgebra.opRingEquiv_apply
#align add_monoid_algebra.op_ring_equiv_symm_apply AddMonoidAlgebra.opRingEquiv_symm_apply

-- @[simp] -- Porting note: simp can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean#L1884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505163d603c369fd89805cdd652c5a9491856b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
