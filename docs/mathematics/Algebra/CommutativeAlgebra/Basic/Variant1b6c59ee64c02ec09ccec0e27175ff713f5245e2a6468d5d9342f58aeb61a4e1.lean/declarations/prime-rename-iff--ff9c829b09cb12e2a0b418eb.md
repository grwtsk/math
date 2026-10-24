# prime_rename_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27adbb59-5467-254e-4a1d-2f9d1f436275",
  "kind": "theorem",
  "lexical_name": "prime_rename_iff",
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
  "slug": "prime-rename-iff--ff9c829b09cb12e2a0b418eb",
  "source": {
    "blob": "51041a110ec6b5e459de21911b0198e43f3b65ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 804,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff9c829b09cb12e2a0b418eb114c319a4edacc85838a994e8919f6dfedf656b3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27adbb59-5467-254e-4a1d-2f9d1f436275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_rename_iff (s : Set σ) {p : MvPolynomial s R} :
    Prime (rename ((↑) : s → σ) p) ↔ Prime (p : MvPolynomial s R) := by
  classical
    symm
    let eqv :=
      (sumAlgEquiv R (↥sᶜ) s).symm.trans
        (renameEquiv R <| (Equiv.sumComm (↥sᶜ) s).trans <| Equiv.Set.sumCompl s)
    have : (rename (↑)).toRingHom = eqv.toAlgHom.toRingHom.comp C := by
      apply ringHom_ext
      · intro
        simp only [eqv, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, rename_C,
          AlgEquiv.toAlgHom_eq_coe, AlgEquiv.toAlgHom_toRingHom, RingHom.coe_comp,
          AlgEquiv.coe_trans, Function.comp_apply, MvPolynomial.sumAlgEquiv_symm_apply,
          iterToSum_C_C, renameEquiv_apply, Equiv.coe_trans, Equiv.sumComm_apply]
      · intro
        simp only [eqv, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, rename_X,
          AlgEquiv.toAlgHom_eq_coe, AlgEquiv.toAlgHom_toRingHom, RingHom.coe_comp,
          AlgEquiv.coe_trans, Function.comp_apply, MvPolynomial.sumAlgEquiv_symm_apply,
          iterToSum_C_X, renameEquiv_apply, Equiv.coe_trans, Equiv.sumComm_apply, Sum.swap_inr,
          Equiv.Set.sumCompl_apply_inl]
    apply_fun (· p) at this
    simp only [AlgHom.toRingHom_eq_coe, RingHom.coe_coe, AlgEquiv.toAlgHom_eq_coe,
      AlgEquiv.toAlgHom_toRingHom, RingHom.coe_comp, Function.comp_apply] at this
    rw [this, MulEquiv.prime_iff, prime_C_iff]

end MvPolynomial

end Prime

/-- **Hilbert basis theorem**: a polynomial ring over a Noetherian ring is a Noetherian ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51041a110ec6b5e459de21911b0198e43f3b65ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
