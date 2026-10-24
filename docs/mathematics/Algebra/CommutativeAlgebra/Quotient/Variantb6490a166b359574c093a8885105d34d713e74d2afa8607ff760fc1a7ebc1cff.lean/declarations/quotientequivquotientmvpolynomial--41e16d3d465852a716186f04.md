# quotientEquivQuotientMvPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5846a53f79c0f4d0aea012ef5556c0ad3735a28f5fd04f039440dd4ae04971f9",
  "kind": "def",
  "lexical_name": "quotientEquivQuotientMvPolynomial",
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
  "slug": "quotientequivquotientmvpolynomial--41e16d3d465852a716186f04",
  "source": {
    "blob": "9708074220c3d12f6598f7e6b126fc3d7f2f4d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 270,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41e16d3d465852a716186f04bc12b91bec52c7b47d97e15f947251b75d1b9a6b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5846a53f79c0f4d0aea012ef5556c0ad3735a28f5fd04f039440dd4ae04971f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientEquivQuotientMvPolynomial (I : Ideal R) :
    MvPolynomial σ (R ⧸ I) ≃ₐ[R] MvPolynomial σ R ⧸ (Ideal.map C I : Ideal (MvPolynomial σ R)) :=
  let e : MvPolynomial σ (R ⧸ I) →ₐ[R]
      MvPolynomial σ R ⧸ (Ideal.map C I : Ideal (MvPolynomial σ R)) :=
    { eval₂Hom
      (Ideal.Quotient.lift I ((Ideal.Quotient.mk (Ideal.map C I : Ideal (MvPolynomial σ R))).comp C)
        fun _ hi => quotient_map_C_eq_zero hi)
      fun i => Ideal.Quotient.mk (Ideal.map C I : Ideal (MvPolynomial σ R)) (X i) with
      commutes' := fun r => eval₂Hom_C _ _ (Ideal.Quotient.mk I r) }
  { e with
    invFun := Ideal.Quotient.lift (Ideal.map C I : Ideal (MvPolynomial σ R))
      (eval₂Hom (C.comp (Ideal.Quotient.mk I)) X) fun _ ha => eval₂_C_mk_eq_zero ha
    left_inv := quotientEquivQuotientMvPolynomial_rightInverse I
    right_inv := quotientEquivQuotientMvPolynomial_leftInverse I }

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9708074220c3d12f6598f7e6b126fc3d7f2f4d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
