# MatrixFiberHilbertTransportCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80fd8d28dbb3fd6e7d19b5cd6ae0696c034cea7b43ed85be98b5094e2c770d91",
  "kind": "structure",
  "lexical_name": "MatrixFiberHilbertTransportCertificate",
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
  "slug": "matrixfiberhilberttransportcertificate--0f53602577384b7895405e61",
  "source": {
    "blob": "9eed5a73fccf375d376ecb55eefaaec95576a055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 24,
    "path": "GRWTSK/Algebra/LinearAlgebra/HilbertTransport/Variant4234449f59601bde4b43e4c00679f90dedda3fc75a8f87d18e74b754446d7f63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f53602577384b7895405e61554c2d6a5e95f5af816d586a43db44abfaa2c3f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HilbertTransport/Variant4234449f59601bde4b43e4c00679f90dedda3fc75a8f87d18e74b754446d7f63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80fd8d28dbb3fd6e7d19b5cd6ae0696c034cea7b43ed85be98b5094e2c770d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatrixFiberHilbertTransportCertificate
    {system : RandomBitfieldSystem}
    {base : FiniteCrossedProductModel system}
    {rank : Nat}
    {model :
      MatrixFiberCrossedProductModel base rank}
    (representation :
      MatrixFiberCrossedProductRepresentation model) where
  transportOperator :
    base.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  representsGroupElement :
    ∀ automorphism,
      transportOperator automorphism =
        representation.represent
          (matrixFiberGroupElement
            base.Automorphism rank automorphism)
  transportFormula :
    ∀ automorphism
        (vector : BitfieldHilbertVector system rank)
        (state : SupportedBitfield system)
        (targetIndex : Fin rank),
      Matrix.mulVec
          (transportOperator automorphism)
          vector
          (state, targetIndex) =
        ∑ sourceIndex : Fin rank,
          model.fiberAction.transport
              automorphism targetIndex sourceIndex *
            vector
              (supportedBitfieldAct
                base automorphism⁻¹ state,
                sourceIndex)
  transportIdentity :
    transportOperator 1 = 1
  transportMultiplicative :
    ∀ left right,
      transportOperator (left * right) =
        transportOperator left *
          transportOperator right
  transportUnitaryLeft :
    ∀ automorphism,
      (transportOperator automorphism)ᴴ *
          transportOperator automorphism =
        1
  transportUnitaryRight :
    ∀ automorphism,
      transportOperator automorphism *
          (transportOperator automorphism)ᴴ =
        1

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HilbertTransport/Variant4234449f59601bde4b43e4c00679f90dedda3fc75a8f87d18e74b754446d7f63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HilbertTransport/Variant4234449f59601bde4b43e4c00679f90dedda3fc75a8f87d18e74b754446d7f63.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eed5a73fccf375d376ecb55eefaaec95576a055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
