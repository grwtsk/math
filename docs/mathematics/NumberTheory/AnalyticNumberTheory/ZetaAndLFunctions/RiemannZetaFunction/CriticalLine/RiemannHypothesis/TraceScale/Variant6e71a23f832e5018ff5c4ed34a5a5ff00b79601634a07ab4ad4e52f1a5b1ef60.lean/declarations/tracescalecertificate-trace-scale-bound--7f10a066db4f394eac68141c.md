# TraceScaleCertificate.trace_scale_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83b38e0dded519c3b3c2d48e0f02ab14cb7223f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de8ec052-a48a-7b1d-cf86-79e874ec0a48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10d974b0-17b3-d46b-1df6-cc6c4b7de51e",
  "kind": "theorem",
  "lexical_name": "TraceScaleCertificate.trace_scale_bound",
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
  "slug": "tracescalecertificate-trace-scale-bound--7f10a066db4f394eac68141c",
  "source": {
    "blob": "83b38e0dded519c3b3c2d48e0f02ab14cb7223f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f10a066db4f394eac68141c16b3871c057746b1dec599bb3b4bc59a5fce6cc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d974b0-17b3-d46b-1df6-cc6c4b7de51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TraceScaleCertificate.trace_scale_bound
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {purity : OperatorPurityCertificate spectral}
    {spectralSize :
      UniformSpectralSizeCertificate
        spectral purity Scale}
    (certificate :
      TraceScaleCertificate
        trace purity spectralSize)
    (scale : Scale)
    (test : TestFunction) :
    ‖trace.traceTerm scale test‖ ≤
      certificate.traceConstant *
          Mathematics.MobiusOntology.squareRootWeight
          (certificate.mass scale)
          certificate.logarithmicOrder *
        certificate.testNorm test := by
  calc
    ‖trace.traceTerm scale test‖ =
        ‖trace.traceScaling scale test‖ *
          ‖trace.rawTraceTerm scale test‖ := by
      simp [ArithmeticBitfieldTraceCertificate.traceTerm]
    _ ≤
        certificate.traceScalingBound scale test *
          certificate.centeredTraceEnvelope scale test :=
      mul_le_mul
        (certificate.traceScalingBoundSound scale test)
        (certificate.finiteSpectralCancellation scale test)
        (norm_nonneg _)
        (certificate.traceScalingBoundNonnegative
          scale test)
    _ ≤
        certificate.traceConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (certificate.mass scale)
              certificate.logarithmicOrder *
          certificate.testNorm test :=
      certificate.centeredEnvelopeToArithmeticScale
        scale test

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceScale/Variant6e71a23f832e5018ff5c4ed34a5a5ff00b79601634a07ab4ad4e52f1a5b1ef60.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b38e0dded519c3b3c2d48e0f02ab14cb7223f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
