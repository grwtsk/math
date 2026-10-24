# Complete source: GRWTSK.Topology.GeneralTopology.FractalSpace.Variant343192bd71fd5287ea5aff7a18715814a0756dc24c0cb1e514fe11dc7d62e08f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9832a43b445fb1805f1634c77276996b3a1abd3e` · SHA-256 `343192bd71fd5287ea5aff7a18715814a0756dc24c0cb1e514fe11dc7d62e08f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Measurable

namespace Surface.Legacy

abbrev Real := Rat

structure TopologicalSpace (α : Type) where
  isOpen : MeasurableSet α -> Prop

def DifferentiableAt (_K : Type) {α β : Type} (_f : α -> β) (_x : α) : Prop :=
  False

structure FractalDomain where
  Carrier : Type
  topologicalSpace : TopologicalSpace Carrier
  measurableSpace : MeasurableSpace Carrier

namespace FractalDomain

def toCertifiedMeasurableSpace (Ω : FractalDomain) : CertifiedMeasurableSpace where
  Carrier := Ω.Carrier
  measurableSpace := Ω.measurableSpace

end FractalDomain

structure NowhereDifferentiableCertificate
    (Ω : FractalDomain) (f : Ω.Carrier -> Real) where
  domainSet : MeasurableSet Ω.Carrier
  noDerivative : ∀ x, domainSet x -> ¬ DifferentiableAt Real f x

inductive FractalScaleLaw where
  | arbitraryCertified
  | zetaWeighted : Rat -> FractalScaleLaw
  | mobiusWeighted : Rat -> FractalScaleLaw
  | eulerPrimeProduct : Rat -> FractalScaleLaw
  | zetaMobiusHybrid : Rat -> Bool -> FractalScaleLaw
deriving DecidableEq, Repr

structure FractalDescriptor where
  name : String
  scaleLaw : FractalScaleLaw
  dimensionClaim : ClaimStatus
  roughnessClaim : ClaimStatus
  selfSimilarityClaim : ClaimStatus
deriving Repr

structure CertifiedNowhereDifferentiableFractalFunction where
  Ω : FractalDomain
  value : Ω.Carrier -> Real
  measurable : Measurable value
  nowhereDifferentiable : NowhereDifferentiableCertificate Ω value
  descriptor : FractalDescriptor
  approximation? : Option (CertifiedSimpleApproximation Ω.toCertifiedMeasurableSpace)

theorem nowhereDifferentiableFractal_is_certifiedMeasurable :
    ∀ f : CertifiedNowhereDifferentiableFractalFunction,
      ∃ m : CertifiedMeasurableFunction,
        HEq m.value f.value := by
  intro f
  let m : CertifiedMeasurableFunction := {
    Ω := f.Ω.toCertifiedMeasurableSpace
    codomain := Real
    codomainMeasurable := { isMeasurableSet := fun _ => True }
    value := f.value
    measurable := f.measurable
    approximation? := f.approximation?
  }
  exact ⟨m, HEq.rfl⟩

end Surface.Legacy
```
