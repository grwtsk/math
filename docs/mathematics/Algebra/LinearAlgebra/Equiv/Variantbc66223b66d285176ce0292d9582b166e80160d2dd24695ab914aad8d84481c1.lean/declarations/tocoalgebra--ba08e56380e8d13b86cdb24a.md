# toCoalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03bab823d3fea8224a33adf17aabe5dded1b4cc5d6703667967c748c774d695b",
  "kind": "def",
  "lexical_name": "toCoalgebra",
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
  "slug": "tocoalgebra--ba08e56380e8d13b86cdb24a",
  "source": {
    "blob": "1fceacb1e3816cbae7ca1ff9a08194f34dc6b1ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 287,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba08e56380e8d13b86cdb24a6bf8f8969cd3bf995ed15c5b21da1b053cf9f6ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03bab823d3fea8224a33adf17aabe5dded1b4cc5d6703667967c748c774d695b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reducible] def toCoalgebra (f : A ≃ₗc[R] B) :
    Coalgebra R B where
  coassoc := by
    simp only [← ((f : A ≃ₗ[R] B).comp_toLinearMap_symm_eq _ _).2 f.map_comp_comul,
      ← LinearMap.comp_assoc]
    congr 1
    ext x
    simpa only [toCoalgHom_eq_coe, CoalgHom.toLinearMap_eq_coe, LinearMap.coe_comp,
      LinearEquiv.coe_coe, Function.comp_apply, ← (ℛ R _).eq, map_sum, TensorProduct.map_tmul,
      LinearMap.coe_coe, CoalgHom.coe_coe, LinearMap.rTensor_tmul, coe_symm_toLinearEquiv,
      symm_apply_apply, LinearMap.lTensor_comp_map, TensorProduct.sum_tmul,
      TensorProduct.assoc_tmul, TensorProduct.tmul_sum] using (sum_map_tmul_tmul_eq f f f x).symm
  rTensor_counit_comp_comul := by
    simp_rw [(f.toLinearEquiv.eq_comp_toLinearMap_symm _ _).2 f.counit_comp,
      ← (f.toLinearEquiv.comp_toLinearMap_symm_eq _ _).2 f.map_comp_comul, ← LinearMap.comp_assoc,
      f.toLinearEquiv.comp_toLinearMap_symm_eq]
    ext x
    simp [← (ℛ R _).eq, coe_symm_toLinearEquiv]
  lTensor_counit_comp_comul := by
    simp_rw [(f.toLinearEquiv.eq_comp_toLinearMap_symm _ _).2 f.counit_comp,
      ← (f.toLinearEquiv.comp_toLinearMap_symm_eq _ _).2 f.map_comp_comul, ← LinearMap.comp_assoc,
      f.toLinearEquiv.comp_toLinearMap_symm_eq]
    ext x
    simp [← (ℛ R _).eq, coe_symm_toLinearEquiv]

end CoalgEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variantbc66223b66d285176ce0292d9582b166e80160d2dd24695ab914aad8d84481c1.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fceacb1e3816cbae7ca1ff9a08194f34dc6b1ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
