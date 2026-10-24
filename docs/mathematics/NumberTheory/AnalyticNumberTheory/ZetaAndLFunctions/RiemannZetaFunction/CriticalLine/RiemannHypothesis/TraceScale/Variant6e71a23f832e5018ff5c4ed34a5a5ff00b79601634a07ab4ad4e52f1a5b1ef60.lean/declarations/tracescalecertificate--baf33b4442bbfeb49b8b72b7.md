# TraceScaleCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7aca939b1a9e7f075704fe7553dff6f5bb89eb5b54c9f46b7067c56b34051ac",
  "kind": "structure",
  "lexical_name": "TraceScaleCertificate",
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
  "slug": "tracescalecertificate--baf33b4442bbfeb49b8b72b7",
  "source": {
    "blob": "83b38e0dded519c3b3c2d48e0f02ab14cb7223f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baf33b4442bbfeb49b8b72b7c448405ee7fc01a5ea801bc4b6e3bf07b5c45580",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7aca939b1a9e7f075704fe7553dff6f5bb89eb5b54c9f46b7067c56b34051ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TraceScaleCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction)
    (purity :
      OperatorPurityCertificate spectral)
    (spectralSize :
      UniformSpectralSizeCertificate
        spectral purity Scale) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  logarithmicOrder : Nat
  traceScalingBound :
    Scale → TestFunction → ℝ
  traceScalingBoundNonnegative :
    ∀ scale test,
      0 ≤ traceScalingBound scale test
  traceScalingBoundSound :
    ∀ scale test,
      ‖trace.traceScaling scale test‖ ≤
        traceScalingBound scale test
  hilbertDimension : Scale → Nat
  hilbertDimensionMatches :
    ∀ scale,
      hilbertDimension scale = spectral.dim
  spectralSizeMassMatches :
    mass = spectralSize.mass
  purityTransformControl :
    purity.testTransformUniformlyControlled
  spectralSizeTransformControl :
    spectralSize.traceTransformUniformlyBounded
  operatorNormBound : Scale → ℝ
  operatorBoundNonnegative :
    ∀ scale, 0 ≤ operatorNormBound scale
  operatorBound :
    ∀ scale state,
      trace.spectralTransform.operatorSize
          (spectral.operator state) ≤
        operatorNormBound scale
  transformOperatorBound :
    Scale → TestFunction → ℝ
  transformOperatorBoundNonnegative :
    ∀ scale test,
      0 ≤ transformOperatorBound scale test
  transformBound :
    ∀ scale test state,
      trace.spectralTransform.operatorSize
          (trace.spectralTransform.transform
            scale test (spectral.operator state)) ≤
        transformOperatorBound scale test
  centeredTraceEnvelope :
    Scale → TestFunction → ℝ
  centeredTraceEnvelopeNonnegative :
    ∀ scale test,
      0 ≤ centeredTraceEnvelope scale test
  finiteSpectralCancellation :
    ∀ scale test,
      ‖trace.rawTraceTerm scale test‖ ≤
        centeredTraceEnvelope scale test
  traceConstant : ℝ
  traceConstantNonnegative :
    0 ≤ traceConstant
  centeredEnvelopeToArithmeticScale :
    ∀ scale test,
      traceScalingBound scale test *
          centeredTraceEnvelope scale test ≤
        traceConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (mass scale)
            logarithmicOrder *
          testNorm test
  normalizationMatchesReducedTrace : Prop
  uniformInScale : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b38e0dded519c3b3c2d48e0f02ab14cb7223f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
