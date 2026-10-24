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
