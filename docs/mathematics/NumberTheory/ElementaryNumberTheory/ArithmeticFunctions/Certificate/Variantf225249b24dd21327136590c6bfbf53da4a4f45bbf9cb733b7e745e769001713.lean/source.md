# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Certificate.Variantf225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00a8f69a601fc9390d2c19cf9b0aeba39accc851` · SHA-256 `f225249b24dd21327136590c6bfbf53da4a4f45bbf9cb733b7e745e769001713`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Authority certificates

This namespace contains the generic certificate vocabulary used by the
three-layer architecture

  Boolean → Number → AnalyticNumber

The purpose of this file is architectural rather than analytic: a certificate is
an explicit authority token.  Finite computation may carry, hash, route, or
check such a token, but the presence of a finite payload is not treated as a
construction of the analytic object certified by the token.

The expository framework supported by this file is:

* Boolean owns finite syntax, finite matrices, finite witnesses, and finite
  verifier payloads.
* Number owns discrete arithmetic semantics: arithmetic functions, finite Euler
  windows, finite Möbius windows, valuation support, and finite divisor data.
* AnalyticNumber owns certificate-gated analytic interfaces: convergence,
  continuation, functional equations, infinite Euler products, zero-location
  authority, spectral or trace authority, and completion authority.
-/

namespace Authority

/-- Kinds of authority boundary that may be crossed only by certificate. -/
inductive BoundaryKind where
  | finiteArithmetic
  | absoluteConvergence
  | analyticContinuation
  | functionalEquation
  | infiniteEulerProduct
  | zetaZeroLocation
  | fredholmDeterminant
  | connesTrace
  | prismaticComparison
  | spectralConvergence
  | completion
  | zeroFreeRegion
  | explicitFormula
  | centralValueIdentity
  | automorphy
  | cuspidality
  | unitarity
  | temperedness
  | langlandsFunctorialTransfer
  | traceFormulaComparison
  | determinantLine
  | determinantLineFunctoriality
  | zetaRegularizedDeterminant
  | fredholmDeterminantConvergence
  | traceLogExpansion
  | anomalyFormula
  | traceFormula
  | traceFormulaConvergence
  | spectralSideInterpretation
  | geometricSideInterpretation
  | positivityConsequence
  | zeroLocationConsequence
  | cohomologicalComparison
  | comparisonIsomorphism
  | crystallineComparison
  | deRhamComparison
  | etaleComparison
  | hodgeTateComparison
  | bettiComparison
  | motivicComparison
  | intervalArithmetic
  | tailBound
  | contourIntegral
  | argumentPrincipleCount
  | validatedIntegration
  | spectralEnclosure
  | operatorNormBound
  | rigorousQuadrature
  | theoremLevelInterpretation
  | custom : String → BoundaryKind
deriving Repr, DecidableEq

/--
A generic authority certificate.

The `publicHash` field is deliberately finite metadata.  The semantic payload is
the proposition `sound`, and the only way to use it is through `soundProof`.
-/
structure Certificate where
  kind : BoundaryKind
  label : String
  publicHash : Nat
  sound : Prop
  soundProof : sound

/-- A certificate exposes exactly its certified proposition. -/
theorem certificate_sound
    (C : Certificate) :
    C.sound :=
  C.soundProof

/--
A finite certificate record is not, by itself, the analytic or arithmetic object
whose existence it certifies.
-/
def CertificateIsUnderlyingObject
    (_C : Certificate) : Prop :=
  False

/-- Certificates are authority tokens, not underlying objects. -/
theorem certificate_not_underlying_object
    (C : Certificate) :
    ¬ CertificateIsUnderlyingObject C := by
  intro h
  exact h

end Authority
```
