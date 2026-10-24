# directSumLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f002d4375e8b38dd6aea58de8dc81dcb3110d830a1aca0ca81307ee6b24d9cec",
  "kind": "def",
  "lexical_name": "directSumLeft",
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
  "slug": "directsumleft--e4c120d8289f407081035d6e",
  "source": {
    "blob": "de36658a717ebaae9eb935367e13fe69b0cdc743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4c120d8289f407081035d6e6f9b18ff12bfc4cd15150feddb140fb7b47d23ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f002d4375e8b38dd6aea58de8dc81dcb3110d830a1aca0ca81307ee6b24d9cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directSumLeft : (⨁ i₁, M₁ i₁) ⊗[R] M₂' ≃ₗ[R] ⨁ i, M₁ i ⊗[R] M₂' :=
  LinearEquiv.ofLinear
    (lift <|
      DirectSum.toModule R _ _ fun _ =>
        (mk R _ _).compr₂ <| DirectSum.lof R ι₁ (fun i => M₁ i ⊗[R] M₂') _)
    (DirectSum.toModule R _ _ fun _ => rTensor _ (DirectSum.lof R ι₁ _ _))
    (DirectSum.linearMap_ext R fun i =>
      TensorProduct.ext <|
        LinearMap.ext₂ fun m₁ m₂ => by
          dsimp only [comp_apply, compr₂_apply, id_apply, mk_apply]
          simp_rw [DirectSum.toModule_lof, rTensor_tmul, lift.tmul, DirectSum.toModule_lof,
            compr₂_apply, mk_apply])
    (TensorProduct.ext <|
      DirectSum.linearMap_ext R fun i =>
        LinearMap.ext₂ fun m₁ m₂ => by
          dsimp only [comp_apply, compr₂_apply, id_apply, mk_apply]
          simp_rw [lift.tmul, DirectSum.toModule_lof, compr₂_apply,
            mk_apply, DirectSum.toModule_lof, rTensor_tmul])

/-- Tensor products distribute over a direct sum on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de36658a717ebaae9eb935367e13fe69b0cdc743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
