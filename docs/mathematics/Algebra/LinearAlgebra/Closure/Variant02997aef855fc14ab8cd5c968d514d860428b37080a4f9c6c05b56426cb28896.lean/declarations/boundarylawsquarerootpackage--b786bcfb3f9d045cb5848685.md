# BoundaryLawSquareRootPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ae4be0c7f31cd10e219fd86da174cab77a0aec00da4e2724764c9551efb8bce",
  "kind": "structure",
  "lexical_name": "BoundaryLawSquareRootPackage",
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
  "slug": "boundarylawsquarerootpackage--b786bcfb3f9d045cb5848685",
  "source": {
    "blob": "cf9b9c73f18687d5ad977dc3c6571b86f4547c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b786bcfb3f9d045cb5848685f00090a139e7002ce704983f486ff9d468873468",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ae4be0c7f31cd10e219fd86da174cab77a0aec00da4e2724764c9551efb8bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundaryLawSquareRootPackage
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule) where
  cut : SpectralClosureCut
  system : RandomBitfieldSystem
  crossedProduct :
    FiniteCrossedProductModel system
  lawCarrier : WassersteinLawCarrier system
  dynamics :
    ScheduleKernelFamily system lawCarrier Schedule
  equivariance :
    EquivariantScheduleKernelCertificate
      crossedProduct dynamics
  orbitReynolds :
    OrbitReynoldsCertificate crossedProduct
  invariantLawRealizesSystemLaw :
    lawCarrier.realize dynamics.invariantLaw =
      system.law
  spectral :
    BitfieldSpectralOperator system
  matrixFiberCrossedProduct :
    MatrixFiberCrossedProductModel
      crossedProduct spectral.dim
  matrixFiberCrossedProductRepresentation :
    MatrixFiberCrossedProductRepresentation
      matrixFiberCrossedProduct
  matrixFiberHilbertTransport :
    MatrixFiberHilbertTransportCertificate
      matrixFiberCrossedProductRepresentation
  crossedProductOperator :
    SelfAdjointCrossedProductOperator
      crossedProduct spectral.dim
  crossedProductOperatorElement :
    MatrixFiberCrossedProductElement
      system crossedProduct.Automorphism
        spectral.dim
  crossedProductOperatorRepresentation :
    matrixFiberCrossedProductRepresentation.represent
        crossedProductOperatorElement =
      crossedProductOperator.operator
  fiberCompression :
    Matrix
        (BitfieldHilbertIndex
          system spectral.dim)
        (BitfieldHilbertIndex
          system spectral.dim)
        ℂ →
      Bitfield system.bits →
        Matrix
          (Fin spectral.dim)
          (Fin spectral.dim)
          ℂ
  crossedProductOperatorFibers :
    ∀ state,
      fiberCompression
          crossedProductOperator.operator state =
        spectral.operator state
  crossedProductSemisimplicity :
    CrossedProductSemisimplicityCertificate
      crossedProductOperator
  operatorRealization :
    BitfieldOperatorRealization spectral
  operatorPurity :
    OperatorPurityCertificate spectral
  trace :
    ArithmeticBitfieldTraceCertificate
      spectral Scale TestFunction
  invariantProjectionTransportInvariant :
    ∀ automorphism,
      matrixFiberCrossedProduct.fiberAction.transport
          automorphism *
          trace.invariantProjection.projection *
          (matrixFiberCrossedProduct.fiberAction.transport
            automorphism)ᴴ =
        trace.invariantProjection.projection
  traceBoundToCut : Prop
  traceBoundToCutProof : traceBoundToCut
  traceCrossedProductElement :
    Scale → TestFunction →
      MatrixFiberCrossedProductElement
        system crossedProduct.Automorphism
          spectral.dim
  reducedTraceIsCanonicalCrossedProductTrace :
    ∀ scale test,
      trace.rawTraceTerm scale test =
        canonicalMatrixFiberCrossedProductTrace
          (traceCrossedProductElement scale test)
  spectralSize :
    UniformSpectralSizeCertificate
      spectral operatorPurity Scale
  traceScale :
    TraceScaleCertificate
      trace operatorPurity spectralSize
  traceBounds :
    TraceSquareRootBounds trace
  assembly :
    SquareRootAssemblyCertificate Scale TestFunction
  discrepancyMatchesTrace :
    assembly.discrepancy =
      trace.discrepancy
  massMatchesTraceScale :
    assembly.mass = traceScale.mass
  massMatchesTraceBounds :
    assembly.mass = traceBounds.mass
  massMatchesSpectralSize :
    assembly.mass = spectralSize.mass
  testNormMatchesTraceScale :
    assembly.testNorm = traceScale.testNorm
  testNormMatchesTraceBounds :
    assembly.testNorm = traceBounds.testNorm
  logarithmicOrderMatchesTraceScale :
    assembly.logarithmicOrder =
      traceScale.logarithmicOrder
  logarithmicOrderMatchesTraceBounds :
    assembly.logarithmicOrder =
      traceBounds.logarithmicOrder
  mainBiasConstantMatches :
    assembly.mainBiasConstant =
      traceBounds.mainBiasConstant
  traceConstantMatches :
    assembly.traceConstant =
      traceScale.traceConstant
  regularizationConstantMatches :
    assembly.regularizationConstant =
      traceBounds.regularizationConstant
  bitfieldConstantMatches :
    assembly.bitfieldConstant =
      traceBounds.bitfieldConstant

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Closure/Variant02997aef855fc14ab8cd5c968d514d860428b37080a4f9c6c05b56426cb28896.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9b9c73f18687d5ad977dc3c6571b86f4547c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
