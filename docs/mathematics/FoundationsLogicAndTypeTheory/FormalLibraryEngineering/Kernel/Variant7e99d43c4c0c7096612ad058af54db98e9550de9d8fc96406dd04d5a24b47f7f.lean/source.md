# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kernel.Variant7e99d43c4c0c7096612ad058af54db98e9550de9d8fc96406dd04d5a24b47f7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `118b23ea70c1d4d81dcbbb534d1237f3cdc617ff` · SHA-256 `7e99d43c4c0c7096612ad058af54db98e9550de9d8fc96406dd04d5a24b47f7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Heat-flow kernel descriptors

What is formalized:
Typed local descriptors for heat kernels, heat-flow parameters, and transport
certificates used by the canonical `Surface.Flow.Heat` namespace.

What is certificate-gated:
Kernel normalization, positivity preservation, and transport soundness are
Prop-valued certificate fields supplied by callers.

What is not claimed:
This file does not import or prove Extended EML coverage, BinaryLogicMatrix
flow equivalence, analytic heat-kernel theory, spectral correspondence, or
homological stability.

Primary mathematical source:
Internal Surface flow-boundary discipline.
-/

namespace Surface

structure HeatKernelDescriptor where
  name : String
  normalized : Prop
  positivityPreserving : Prop

structure HeatFlowDescriptor where
  kernel : HeatKernelDescriptor
  timeParameter : Nat
  kernelSound : Prop

structure HeatFlowTransportCertificate where
  descriptor : HeatFlowDescriptor
  transportSound : Prop

/--
Accessor for the kernel-soundness hypothesis stored in a heat-flow transport
certificate.

This is not an analytic heat-flow theorem and does not prove transport,
smoothing, spectral convergence, or homological stability.
-/
theorem HeatFlowTransportCertificate.kernelSound_id
    (cert : HeatFlowTransportCertificate) :
    cert.descriptor.kernelSound -> cert.descriptor.kernelSound := by
  intro h
  exact h

end Surface
```
