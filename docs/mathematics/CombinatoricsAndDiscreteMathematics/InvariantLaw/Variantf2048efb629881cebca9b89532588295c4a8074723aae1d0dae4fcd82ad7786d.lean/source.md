# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLaw.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `121692b29e8a9d964e3a4ecc403e7191d3e6ad34` · SHA-256 `f2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
