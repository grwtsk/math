# CrossedProductSemisimplicityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef35ea784bf846c8846f487a74ebfc5b917ca559e13203765b872e2aee150414",
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
  "slug": "crossedproductsemisimplicitycertificate--325dcaf12ce1d743bc8090eb",
  "source": {
    "blob": "97341f262390172b9c2c13f0ed3989f6180ba484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:325dcaf12ce1d743bc8090eb10f9c6f1c15a8d5085402d342680ca5b6a26e092",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef35ea784bf846c8846f487a74ebfc5b917ca559e13203765b872e2aee150414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–84.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97341f262390172b9c2c13f0ed3989f6180ba484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
