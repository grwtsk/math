# homotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:708866b1681c098fc30f8ebe1da8f088c07c40d78fc76ee4f188bd5ca9fa1984",
  "kind": "def",
  "lexical_name": "homotopyEquiv",
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
  "slug": "homotopyequiv--b7e4fc870c3c7e5b1e80bd53",
  "source": {
    "blob": "0eecf0332cf438167c7fb1a696a5f923dc843e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 388,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e4fc870c3c7e5b1e80bd53d8ad62e6c28065115f45f3fd2c2cf7be5a0c7dcd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:708866b1681c098fc30f8ebe1da8f088c07c40d78fc76ee4f188bd5ca9fa1984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homotopyEquiv {C : Type*} [Category C] [Preadditive C] [HasZeroObject C]
    {X : SimplicialObject.Augmented C} (ed : ExtraDegeneracy X) :
    HomotopyEquiv (AlgebraicTopology.AlternatingFaceMapComplex.obj (drop.obj X))
      ((ChainComplex.single₀ C).obj (point.obj X)) where
  hom := AlternatingFaceMapComplex.ε.app X
  inv := (ChainComplex.fromSingle₀Equiv _ _).invFun ed.s'
  homotopyInvHomId := Homotopy.ofEq (ChainComplex.to_single₀_ext _ _ (ed.s'_comp_ε))
  homotopyHomInvId :=
    { hom := fun i j => by
        by_cases i + 1 = j
        · exact (-ed.s i) ≫ eqToHom (by congr)
        · exact 0
      zero := fun i j hij => by
        dsimp
        split_ifs with h
        · exfalso
          exact hij h
        · simp only [eq_self_iff_true]
      comm := fun i => by
        rcases i with _|i
        · rw [Homotopy.prevD_chainComplex, Homotopy.dNext_zero_chainComplex, zero_add]
          dsimp [ChainComplex.fromSingle₀Equiv, ChainComplex.toSingle₀Equiv]
          simp only [comp_id, ite_true, zero_add, ComplexShape.down_Rel, not_true,
            AlternatingFaceMapComplex.obj_d_eq, Preadditive.neg_comp]
          erw [Fin.sum_univ_two]
          simp only [Fin.val_zero, pow_zero, one_smul, Fin.val_one, pow_one, neg_smul,
            Preadditive.comp_add, s_comp_δ₀, drop_obj, Preadditive.comp_neg, neg_add_rev,
            neg_neg, neg_add_cancel_right, s₀_comp_δ₁]
          rfl
        · rw [Homotopy.prevD_chainComplex, Homotopy.dNext_succ_chainComplex]
          dsimp [ChainComplex.toSingle₀Equiv, ChainComplex.fromSingle₀Equiv]
          simp only [comp_zero, ComplexShape.down_Rel, not_true, Preadditive.neg_comp,
            AlternatingFaceMapComplex.obj_d_eq, comp_id, ite_true, Preadditive.comp_neg,
            @Fin.sum_univ_succ _ _ (i + 2), Fin.val_zero, pow_zero, one_smul, Fin.val_succ,
            Preadditive.comp_add, drop_obj, s_comp_δ₀, Preadditive.sum_comp,
            Preadditive.zsmul_comp, Preadditive.comp_sum, Preadditive.comp_zsmul,
            zsmul_neg, ed.s_comp_δ, pow_add, pow_one, mul_neg, mul_one, neg_zsmul, neg_neg,
            neg_add_cancel_comm_assoc, add_left_neg] }
#align simplicial_object.augmented.extra_degeneracy.homotopy_equiv SimplicialObject.Augmented.ExtraDegeneracy.homotopyEquiv

end ExtraDegeneracy

end Augmented

end SimplicialObject
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eecf0332cf438167c7fb1a696a5f923dc843e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
