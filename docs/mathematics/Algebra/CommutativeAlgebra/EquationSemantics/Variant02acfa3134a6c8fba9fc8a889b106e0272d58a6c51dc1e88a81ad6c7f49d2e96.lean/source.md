# Complete source: GRWTSK.Algebra.CommutativeAlgebra.EquationSemantics.Variant02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de3e212e2eca8febb509babe24cd1a2111972611` · SHA-256 `02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Polynomial.RadicalCertificate

/-!
# Polynomial equations and certified geometric consequences

The exact radical identity is the authority.  It proves set-theoretic
vanishing on the certified solution space; no scheme-theoretic equality is
silently inferred.
-/

namespace Mathematics.MobiusOntology

universe u v

abbrev PolynomialSystem
    (Variable : Type u) (K : Type v) [CommSemiring K] :=
  Mathematics.Polynomial.EquationSystem Variable K

abbrev NullstellensatzCertificate
    {Variable : Type u} {K : Type v} [CommSemiring K]
    (system : PolynomialSystem Variable K)
    (claim : MvPolynomial Variable K) :=
  Mathematics.Polynomial.RadicalCertificate system claim

theorem nullstellensatz_geometric_consequence
    {Variable : Type u} {K : Type v} [Field K]
    {system : PolynomialSystem Variable K}
    {claim : MvPolynomial Variable K}
    (certificate : NullstellensatzCertificate system claim)
    (solution : system.SolutionSpace) :
    MvPolynomial.eval solution.coordinates claim = 0 :=
  certificate.geometricConsequence solution

/--
Scheme-theoretic authority is separate and must carry the stronger declared
ideal statement.
-/
structure SchemeSemanticCertificate
    (Statement : Prop) : Prop where
  proof : Statement

end Mathematics.MobiusOntology
```
