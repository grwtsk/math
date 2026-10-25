# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticEnhancement.Variant6dac5b3a644912825046e95d8f2061277bd69363d72c46b0fd21a15c587c634a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f716299289dfe6bca3373bd37d6a3eb3c5c76b3` · SHA-256 `6dac5b3a644912825046e95d8f2061277bd69363d72c46b0fd21a15c587c634a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
