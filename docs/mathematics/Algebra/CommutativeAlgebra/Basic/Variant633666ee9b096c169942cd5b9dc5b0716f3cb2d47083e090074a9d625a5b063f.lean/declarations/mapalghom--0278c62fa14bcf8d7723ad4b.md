# mapAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8054192373a0c0e52addc621df7ecb938f89ed5bf839bdbf981fb7ee68fdd179",
  "kind": "def",
  "lexical_name": "mapAlgHom",
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
  "slug": "mapalghom--0278c62fa14bcf8d7723ad4b",
  "source": {
    "blob": "7e1152c3e81aafdb81af54657727e24dd08889ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1427,
    "line": 1415,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant633666ee9b096c169942cd5b9dc5b0716f3cb2d47083e090074a9d625a5b063f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0278c62fa14bcf8d7723ad4baf99992ccb86b3a7b307aeeb293ab61227840684",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant633666ee9b096c169942cd5b9dc5b0716f3cb2d47083e090074a9d625a5b063f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8054192373a0c0e52addc621df7ecb938f89ed5bf839bdbf981fb7ee68fdd179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1415–1427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAlgHom [CommSemiring S₂] [Algebra R S₁] [Algebra R S₂] (f : S₁ →ₐ[R] S₂) :
    MvPolynomial σ S₁ →ₐ[R] MvPolynomial σ S₂ :=
  { map (↑f : S₁ →+* S₂) with
    commutes' := fun r => by
      have h₁ : algebraMap R (MvPolynomial σ S₁) r = C (algebraMap R S₁ r) := rfl
      have h₂ : algebraMap R (MvPolynomial σ S₂) r = C (algebraMap R S₂ r) := rfl
      simp_rw [OneHom.toFun_eq_coe]
      -- porting note: we're missing some `simp` lemmas like `MonoidHom.coe_toOneHom`
      change @FunLike.coe (_ →+* _) _ _ _ _ _ = _
      rw [h₁, h₂, map, eval₂Hom_C, RingHom.comp_apply, AlgHom.coe_toRingHom, AlgHom.commutes] }
#align mv_polynomial.map_alg_hom MvPolynomial.mapAlgHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant633666ee9b096c169942cd5b9dc5b0716f3cb2d47083e090074a9d625a5b063f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant633666ee9b096c169942cd5b9dc5b0716f3cb2d47083e090074a9d625a5b063f.lean#L1415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e1152c3e81aafdb81af54657727e24dd08889ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
