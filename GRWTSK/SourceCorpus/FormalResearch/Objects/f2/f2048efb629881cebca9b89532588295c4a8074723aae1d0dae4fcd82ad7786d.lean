import Mathematics.SpectralClosure.Contraction

/-!
# Invariant-law certificates and honest existence boundary
-/

namespace Mathematics.SpectralClosure

structure InvariantLawCertificate
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X) where
  law : FiniteLaw X
  invariant : IsInvariantLaw kernel law
  proofRef : SpectralId

structure FiniteInvariantLawExistenceObligation
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X) where
  existenceStatement : ∃ law, IsInvariantLaw kernel law
  status : ProofDisposition

inductive BoundaryTailClassification
  | exactBoundaryLaw
  | residualBoundaryLaw
  | unboundedBoundaryDefect
  | unknownBoundaryTail
  deriving DecidableEq, Repr

structure BoundaryTailCertificate where
  classification : BoundaryTailClassification
  residualRadius : Option ℝ
  classificationStatement : Prop
  status : ProofDisposition

theorem certified_invariant_laws_coincide
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (contraction : ContractionCertificate kernel metric)
    (left right : InvariantLawCertificate kernel) :
    left.law = right.law :=
  invariantLaw_unique_under_strict_contraction
    kernel metric contraction left.law right.law
    left.invariant right.invariant

end Mathematics.SpectralClosure
