# CrossedProductSemisimplicityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f1575885bdf35cb469a304feaef315d9cca1772b0765d70824e20f52c952aee",
  "kind": "structure",
  "lexical_name": "CrossedProductSemisimplicityCertificate",
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
  "slug": "crossedproductsemisimplicitycertificate--2b42d8b24337ef19f7bffd0a",
  "source": {
    "blob": "eae0ded6c6bead1ca67230ab9bfdc18d83b747ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variant2170b8d2a45ff85c0521ad05f134d0c8c524694bb550a95fea406d7278343c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b42d8b24337ef19f7bffd0a30212d52b4a570931f449a0143a6f2e935501f7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CrossedProductOperator/Variant2170b8d2a45ff85c0521ad05f134d0c8c524694bb550a95fea406d7278343c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f1575885bdf35cb469a304feaef315d9cca1772b0765d70824e20f52c952aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrossedProductSemisimplicityCertificate
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (operator :
      SelfAdjointCrossedProductOperator model rank) where
  eigenvalue :
    BitfieldHilbertIndex system rank → ℝ
  diagonalizer :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  diagonalizerUnitary :
    diagonalizerᴴ * diagonalizer = 1
  diagonalizes :
    diagonalizerᴴ * operator.operator *
        diagonalizer =
      Matrix.diagonal
        (fun index => (eigenvalue index : ℂ))
  jordanOrder :
    BitfieldHilbertIndex system rank → Nat
  jordanOrderZero :
    ∀ index,
      jordanOrder index = 0

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossedProductOperator/Variant2170b8d2a45ff85c0521ad05f134d0c8c524694bb550a95fea406d7278343c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variant2170b8d2a45ff85c0521ad05f134d0c8c524694bb550a95fea406d7278343c43.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae0ded6c6bead1ca67230ab9bfdc18d83b747ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
