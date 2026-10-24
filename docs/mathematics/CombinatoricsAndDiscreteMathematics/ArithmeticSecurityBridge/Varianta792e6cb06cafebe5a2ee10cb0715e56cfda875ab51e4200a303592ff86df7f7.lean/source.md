# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityBridge.Varianta792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d81de309672f17af91b202022eb9f0b4b83d667` · SHA-256 `a792e6cb06cafebe5a2ee10cb0715e56cfda875ab51e4200a303592ff86df7f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.AnalyticComplexityBoundary
import Mathematics.Resolution.ArithmeticSecurityMacro

/-!
# Terminal arithmetic-security bridge

The terminal unknown is the exact ordered three-macro state.  Certification
requires the separately typed bridge certificate.
-/

namespace Mathematics.MobiusOntology

open Mathematics.Resolution

inductive ArithmeticSecurityBridgeStatus
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim)
  | certified
      (certificate :
        ArithmeticSecurityBridgeCertificate
          analyticClaim complexityClaim)
  | unknownFunctor
  | unknownTraceKernel
  | unknownPurityHardness
  | unknownAll

namespace ArithmeticSecurityBridgeStatus

def unknowns
    {analyticClaim : AnalyticClaim}
    {complexityClaim : ComplexityClaim} :
    ArithmeticSecurityBridgeStatus analyticClaim complexityClaim →
      Finset ArithmeticSecurityMacroObligation
  | .certified _ => ∅
  | .unknownFunctor => {.arithmeticSecurityFunctor}
  | .unknownTraceKernel => {.traceToAdversaryBridge}
  | .unknownPurityHardness => {.purityToHardnessBridge}
  | .unknownAll => terminalArithmeticSecurityMacros

end ArithmeticSecurityBridgeStatus

def terminalArithmeticSecurityBridgeStatus
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim) :
    ArithmeticSecurityBridgeStatus analyticClaim complexityClaim :=
  .unknownAll

@[simp]
theorem terminalArithmeticSecurityBridgeStatus_unknowns
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim) :
    (terminalArithmeticSecurityBridgeStatus
      analyticClaim complexityClaim).unknowns =
        terminalArithmeticSecurityMacros :=
  rfl

end Mathematics.MobiusOntology
```
