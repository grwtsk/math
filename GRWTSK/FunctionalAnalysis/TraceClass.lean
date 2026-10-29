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
