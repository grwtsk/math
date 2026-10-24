# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TraceClass.Variantc9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `889c069ea0af81ae745597f175326c761c9208b5` · SHA-256 `c9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Hilbert.SelfAdjoint

namespace Surface

universe u v

/-!
What is formalized:
Trace-class and trace-evaluation certificate interfaces for Hilbert operators.

What is certificate-gated:
Trace-class membership and trace existence are explicit proposition fields.

What is not claimed:
No Connes trace formula or Hilbert--Pólya theorem follows from this interface.

Primary mathematical source:
Internal Surface Hilbert trace-boundary discipline.
-/

structure Hilbert.TraceClassCertificate
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  traceClass : Prop
  traceClassCertified : traceClass
  traceValueLabel : String
  boundary : List String

theorem Hilbert.traceClass_operator_is_traceClass
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.TraceClassCertificate T) :
    C.traceClass :=
  C.traceClassCertified

end Surface
```
