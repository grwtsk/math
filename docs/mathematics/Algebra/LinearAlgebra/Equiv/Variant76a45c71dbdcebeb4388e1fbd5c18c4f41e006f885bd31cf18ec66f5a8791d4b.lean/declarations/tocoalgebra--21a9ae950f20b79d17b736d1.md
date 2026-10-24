# toCoalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd053bed724346d5637aef37748112febcbd76e59717f7b4437465416a977379",
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
  "slug": "tocoalgebra--21a9ae950f20b79d17b736d1",
  "source": {
    "blob": "262b49f80f9922e41fe3b52ec89c1e17be4cef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21a9ae950f20b79d17b736d142422a20f3bb6ff8434183440d3a4713bfecc84e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd053bed724346d5637aef37748112febcbd76e59717f7b4437465416a977379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reducible] def toCoalgebra (f : A ≃ₗc[R] B) :
    Coalgebra R B where
  coassoc := by
    simp only [← ((f : A ≃ₗ[R] B).comp_toLinearMap_symm_eq _ _).2 f.map_comp_comul,
      ← LinearMap.comp_assoc]
    congr 1
    ext x
    simpa only [toCoalgHom_eq_ofClass, CoalgHom.toLinearMap_eq_ofClass, LinearMap.coe_comp,
      LinearEquiv.coe_coe, Function.comp_apply, ← (ℛ R _).eq, map_sum, TensorProduct.map_tmul,
      LinearMap.coe_ofClass, CoalgHom.coe_ofClass, LinearMap.rTensor_tmul, coe_symm_toLinearEquiv,
      symm_apply_apply, LinearMap.lTensor_comp_map, TensorProduct.sum_tmul,
      TensorProduct.assoc_tmul, TensorProduct.tmul_sum] using (sum_map_tmul_tmul_eq f f f x).symm
  rTensor_counit_comp_comul := by
    simp_rw [(f.toLinearEquiv.eq_comp_toLinearMap_symm _ _).2 f.counit_comp,
      ← (f.toLinearEquiv.comp_toLinearMap_symm_eq _ _).2 f.map_comp_comul, ← LinearMap.comp_assoc,
      f.toLinearEquiv.comp_toLinearMap_symm_eq]
    ext x
    simp [← (ℛ R _).eq]
  lTensor_counit_comp_comul := by
    simp_rw [(f.toLinearEquiv.eq_comp_toLinearMap_symm _ _).2 f.counit_comp,
      ← (f.toLinearEquiv.comp_toLinearMap_symm_eq _ _).2 f.map_comp_comul, ← LinearMap.comp_assoc,
      f.toLinearEquiv.comp_toLinearMap_symm_eq]
    ext x
    simp [← (ℛ R _).eq]

end CoalgEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `262b49f80f9922e41fe3b52ec89c1e17be4cef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
