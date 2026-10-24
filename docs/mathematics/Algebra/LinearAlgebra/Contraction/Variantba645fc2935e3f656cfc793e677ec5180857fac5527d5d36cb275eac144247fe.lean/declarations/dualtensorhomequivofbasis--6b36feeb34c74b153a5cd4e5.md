# dualTensorHomEquivOfBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6b613aec442b33b6a66692d2054008a44391529c0d7464778e019caed69e22c",
  "kind": "def",
  "lexical_name": "dualTensorHomEquivOfBasis",
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
  "slug": "dualtensorhomequivofbasis--6b36feeb34c74b153a5cd4e5",
  "source": {
    "blob": "4bb163548c37f9186ce5655076c7a20d9ca3be09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b36feeb34c74b153a5cd4e5f55cff9044f9a3b06e5ab5ef01df6cba7095b752",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6b613aec442b33b6a66692d2054008a44391529c0d7464778e019caed69e22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dualTensorHomEquivOfBasis : Module.Dual R M ⊗[R] N ≃ₗ[R] M →ₗ[R] N :=
  LinearEquiv.ofLinear (dualTensorHom R M N)
    (∑ i, TensorProduct.mk R _ N (b.dualBasis i) ∘ₗ (LinearMap.applyₗ (R := R) (b i)))
    (by
      ext f m
      simp only [applyₗ_apply_apply, coeFn_sum, dualTensorHom_apply, mk_apply, id_coe, id.def,
        Fintype.sum_apply, Function.comp_apply, Basis.coe_dualBasis, coe_comp, Basis.coord_apply, ←
        f.map_smul, (dualTensorHom R M N).map_sum, ← f.map_sum, b.sum_repr])
    (by
      ext f m
      simp only [applyₗ_apply_apply, coeFn_sum, dualTensorHom_apply, mk_apply, id_coe, id.def,
        Fintype.sum_apply, Function.comp_apply, Basis.coe_dualBasis, coe_comp, compr₂_apply,
        tmul_smul, smul_tmul', ← sum_tmul, Basis.sum_dual_apply_smul_coord])
#align dual_tensor_hom_equiv_of_basis dualTensorHomEquivOfBasis

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb163548c37f9186ce5655076c7a20d9ca3be09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
