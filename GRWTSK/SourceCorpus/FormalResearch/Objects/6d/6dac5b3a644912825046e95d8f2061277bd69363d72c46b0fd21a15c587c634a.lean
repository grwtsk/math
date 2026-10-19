/-!
# Arithmetic quotients, Hecke data, and essential arithmetic source

Automorphic authority is gated by an explicit arithmetic quotient, level,
Hecke action, eigensystem, and local--global compatibility proof.  The module
also records a genuinely isomorphism-invariant erasure test: if deleting the
arithmetic source changes such an invariant, the two realizations cannot be
isomorphic.
-/

namespace Mathematics.Prismatic

universe u v w

/-- The global field, reductive group, arithmetic quotient, and level data. -/
structure ArithmeticQuotientData where
  GlobalField : Type u
  ReductiveGroup : Type u
  Quotient : Type u
  Level : Type u
  globalField : GlobalField
  reductiveGroup : ReductiveGroup
  quotient : Quotient
  level : Level
  constructionLaw : Prop
  constructionLaw_proved : constructionLaw

/-- A Hecke action together with an exact eigenvector relation. -/
structure HeckeEigenstructure where
  Operator : Type u
  Scalar : Type u
  Realization : Type u
  action : Operator → Realization → Realization
  scale : Scalar → Realization → Realization
  eigenvalue : Operator → Scalar
  eigenvector : Realization
  eigenrelation :
    ∀ operator,
      action operator eigenvector =
        scale (eigenvalue operator) eigenvector
  algebraLaw : Prop
  algebraLaw_proved : algebraLaw

/--
The complete arithmetic source required before an automorphic certificate may
be formed.
-/
structure ArithmeticEnhancement where
  quotient : ArithmeticQuotientData.{u}
  hecke : HeckeEigenstructure.{u}
  localGlobalCompatibility : Prop
  localGlobalCompatibility_proved : localGlobalCompatibility

/-- An automorphic claim is proof-bearing and indexed by its arithmetic data. -/
structure AutomorphicCertificate
    (enhancement : ArithmeticEnhancement.{u}) (claim : Prop) where
  proof : claim

/--
An invariant detector is certified to respect the selected isomorphism
relation, and arithmetic erasure changes its output.
-/
structure ArithmeticEssentialityCertificate
    (Realization : Type u) (Invariant : Type v) [DecidableEq Invariant] where
  isomorphic : Realization → Realization → Prop
  detector : Realization → Invariant
  full : Realization
  arithmeticErased : Realization
  detector_isomorphismInvariant :
    ∀ {left right}, isomorphic left right →
      detector left = detector right
  arithmetic_changes_detector :
    detector full ≠ detector arithmeticErased

/-- Arithmetic erasure changes an isomorphism-invariant realization. -/
theorem ArithmeticEssentialityCertificate.not_isomorphic
    {Realization : Type u} {Invariant : Type v} [DecidableEq Invariant]
    (certificate :
      ArithmeticEssentialityCertificate Realization Invariant) :
    ¬ certificate.isomorphic
        certificate.full certificate.arithmeticErased := by
  intro isomorphic
  exact certificate.arithmetic_changes_detector
    (certificate.detector_isomorphismInvariant isomorphic)

/-- The exact invariant inequality exposed by the essentiality certificate. -/
theorem ArithmeticEssentialityCertificate.changes_invariant
    {Realization : Type u} {Invariant : Type v} [DecidableEq Invariant]
    (certificate :
      ArithmeticEssentialityCertificate Realization Invariant) :
    certificate.detector certificate.full ≠
      certificate.detector certificate.arithmeticErased :=
  certificate.arithmetic_changes_detector

end Mathematics.Prismatic
