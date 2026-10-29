import Mathematics.MobiusOntology.StructuralCoupling
import Mathematics.Prismatic.ConstructionProvenance

/-!
# Arithmetic erasure and nonfactorization
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev ArithmeticEssentialityCertificate :=
  Mathematics.Prismatic.ArithmeticEssentialityCertificate

abbrev ArithmeticErasureCertificate :=
  Mathematics.Prismatic.ArithmeticEssentialityCertificate

abbrev NonfactorizationCertificate :=
  Mathematics.Prismatic.NonfactorizationWitness

theorem arithmetic_source_changes_isomorphism_invariant
    {Realization : Type u} {Invariant : Type v}
    [DecidableEq Invariant]
    (certificate :
      ArithmeticEssentialityCertificate Realization Invariant) :
    certificate.detector certificate.full ≠
      certificate.detector certificate.arithmeticErased :=
  certificate.changes_invariant

theorem realization_does_not_factor_through_erasure
    {Source : Type u} {Erased : Type v}
    {Realization : Type w} {Invariant : Type x}
    (certificate :
      NonfactorizationCertificate
        Source Erased Realization Invariant) :
    ¬ ∃ factor : Erased → Realization,
        ∀ source,
          certificate.realize source =
            factor (certificate.erase source) :=
  certificate.no_erased_factorization

end Mathematics.MobiusOntology
