# opRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca08a1a170da83b15b9d14f57eb8801243661c62152e09ea4692b1684c69be1c",
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
  "slug": "opringequiv--7c3aea1db27cc195a3b2a075",
  "source": {
    "blob": "830345ad09252f2061e2457c2c26d77c91d4277d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1141,
    "line": 1119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c3aea1db27cc195a3b2a075822be4d2eec713eaab1bc541b757cef942823df2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca08a1a170da83b15b9d14f57eb8801243661c62152e09ea4692b1684c69be1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1119–1141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def opRingEquiv [Monoid G] :
    (MonoidAlgebra k G)ᵐᵒᵖ ≃+* MonoidAlgebra kᵐᵒᵖ Gᵐᵒᵖ :=
  { opAddEquiv.symm.trans <|
      (Finsupp.mapRange.addEquiv (opAddEquiv : k ≃+ kᵐᵒᵖ)).trans <| Finsupp.domCongr opEquiv with
    map_mul' := by
      rw [Equiv.toFun_as_coe, AddEquiv.toEquiv_eq_coe, AddEquiv.coe_toEquiv,
        ← AddEquiv.coe_toAddMonoidHom]
      refine Iff.mpr (AddMonoidHom.map_mul_iff (R := (MonoidAlgebra k G)ᵐᵒᵖ)
        (S := MonoidAlgebra kᵐᵒᵖ Gᵐᵒᵖ) _) ?_
      -- Porting note: Was `ext`.
      refine AddMonoidHom.mul_op_ext _ _ <| addHom_ext' fun i₁ => AddMonoidHom.ext fun r₁ =>
        AddMonoidHom.mul_op_ext _ _ <| addHom_ext' fun i₂ => AddMonoidHom.ext fun r₂ => ?_
      -- Porting note: `reducible` cannot be `local` so proof gets long.
      simp
      rw [AddEquiv.trans_apply, AddEquiv.trans_apply, AddEquiv.trans_apply, AddEquiv.trans_apply,
        AddEquiv.trans_apply, AddEquiv.trans_apply, MulOpposite.opAddEquiv_apply,
        MulOpposite.opAddEquiv_symm_apply, MulOpposite.unop_mul (α := MonoidAlgebra k G)]
      simp }
#align monoid_algebra.op_ring_equiv MonoidAlgebra.opRingEquiv
#align monoid_algebra.op_ring_equiv_apply MonoidAlgebra.opRingEquiv_apply
#align monoid_algebra.op_ring_equiv_symm_apply MonoidAlgebra.opRingEquiv_symm_apply

-- @[simp] -- Porting note: simp can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean#L1119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830345ad09252f2061e2457c2c26d77c91d4277d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
