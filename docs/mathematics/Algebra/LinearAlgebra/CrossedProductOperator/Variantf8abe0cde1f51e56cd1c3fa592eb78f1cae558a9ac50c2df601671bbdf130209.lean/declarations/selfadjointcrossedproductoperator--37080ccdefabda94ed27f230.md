# SelfAdjointCrossedProductOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d99e87bf443bc6f38981d6b81f5b245d7b18a8ed19a00681c68186ab8bdc43",
  "kind": "structure",
  "lexical_name": "SelfAdjointCrossedProductOperator",
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
  "slug": "selfadjointcrossedproductoperator--37080ccdefabda94ed27f230",
  "source": {
    "blob": "97341f262390172b9c2c13f0ed3989f6180ba484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 17,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37080ccdefabda94ed27f230709aa63ad2060f1212aa531574c4604fb26498a1",
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

Occurrence: `declaration:94d99e87bf443bc6f38981d6b81f5b245d7b18a8ed19a00681c68186ab8bdc43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SelfAdjointCrossedProductOperator
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (rank : Nat) where
  fiberContribution :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  transportCoefficient :
    model.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  transportAdjointPairing :
    ∀ automorphism,
      transportCoefficient automorphism⁻¹ =
        (transportCoefficient automorphism)ᴴ
  operator :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  assembledFromFiberAndTransport : Prop
  assembledFromFiberAndTransportProof :
    assembledFromFiberAndTransport
  selfAdjoint :
    operator.IsHermitian
  grading :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  gradingUnitary :
    gradingᴴ * grading = 1
  gradingInvolutive :
    grading * grading = 1
  gradingAnticommutes :
    grading * operator * grading = -operator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossedProductOperator/Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97341f262390172b9c2c13f0ed3989f6180ba484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
