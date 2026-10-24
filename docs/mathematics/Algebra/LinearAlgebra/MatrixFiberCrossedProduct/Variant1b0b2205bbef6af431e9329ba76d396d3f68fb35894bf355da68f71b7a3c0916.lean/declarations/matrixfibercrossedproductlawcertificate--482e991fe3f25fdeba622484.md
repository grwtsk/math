# MatrixFiberCrossedProductLawCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b13de2160d2a9e6e1da45caa7fa20ebd8da57ddca9fc49547f6542409d9e5299",
  "kind": "structure",
  "lexical_name": "MatrixFiberCrossedProductLawCertificate",
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
  "slug": "matrixfibercrossedproductlawcertificate--482e991fe3f25fdeba622484",
  "source": {
    "blob": "680f8bbf6ebe939e47f2950c26f7690e61a82c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:482e991fe3f25fdeba6224847bbdede65173c50d37064c786f12beef6a23233c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b13de2160d2a9e6e1da45caa7fa20ebd8da57ddca9fc49547f6542409d9e5299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatrixFiberCrossedProductLawCertificate
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (fiber : MatrixFiberAction model rank) where
  fiberActionIdentity :
    ∀ observable,
      matrixFiberAct fiber 1 observable =
        observable
  fiberActionCompatible :
    ∀ left right observable,
      matrixFiberAct fiber (left * right)
          observable =
        matrixFiberAct fiber left
          (matrixFiberAct fiber right observable)
  fiberActionStarPreserving :
    ∀ automorphism observable,
      matrixFiberAct fiber automorphism
          (fun state => (observable state)ᴴ) =
        fun state =>
          (matrixFiberAct fiber automorphism
            observable state)ᴴ
  associative :
    ∀ left middle right :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductMultiply
            fiber left middle)
          right =
        matrixFiberCrossedProductMultiply fiber left
          (matrixFiberCrossedProductMultiply
            fiber middle right)
  leftUnit :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductUnit
            model.Automorphism rank)
          element =
        element
  rightUnit :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductMultiply fiber
          element
          (matrixFiberCrossedProductUnit
            model.Automorphism rank) =
        element
  starReverses :
    ∀ left right :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductStar fiber
          (matrixFiberCrossedProductMultiply
            fiber left right) =
        matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductStar fiber right)
          (matrixFiberCrossedProductStar fiber left)
  starInvolutive :
    Function.Involutive
      (matrixFiberCrossedProductStar fiber)
  canonicalTraceNormalized :
    canonicalMatrixFiberCrossedProductTrace
        (matrixFiberCrossedProductUnit
          model.Automorphism rank) =
      1
  canonicalTraceCyclic :
    ∀ left right :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply
            fiber left right) =
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply
            fiber right left)
  canonicalTraceInnerConjugationInvariant :
    ∀ automorphism
        (element :
          MatrixFiberCrossedProductElement
            system model.Automorphism rank),
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply fiber
            (matrixFiberCrossedProductMultiply fiber
              (matrixFiberGroupElement
                model.Automorphism rank automorphism)
              element)
            (matrixFiberGroupElement
              model.Automorphism rank
              automorphism⁻¹)) =
        canonicalMatrixFiberCrossedProductTrace
          element
  canonicalTraceStar :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductStar
            fiber element) =
        star
          (canonicalMatrixFiberCrossedProductTrace
            element)
  canonicalTracePositiveReal :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      0 ≤
        (canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply fiber
            (matrixFiberCrossedProductStar
              fiber element)
            element)).re
  canonicalTracePositiveImaginaryZero :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      (canonicalMatrixFiberCrossedProductTrace
        (matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductStar
            fiber element)
          element)).im = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680f8bbf6ebe939e47f2950c26f7690e61a82c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
