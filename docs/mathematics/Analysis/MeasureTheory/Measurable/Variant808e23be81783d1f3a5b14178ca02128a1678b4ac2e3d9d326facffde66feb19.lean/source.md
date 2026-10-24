# Complete source: GRWTSK.Analysis.MeasureTheory.Measurable.Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce599640dbf7f98561b3699840c2d022efeed0e9` · SHA-256 `808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Gamma

namespace Surface.Legacy

abbrev MeasurableSet (α : Type) := α -> Prop

structure MeasurableSpace (α : Type) where
  isMeasurableSet : MeasurableSet α -> Prop

def Measurable {α β : Type} (_f : α -> β) : Prop := True

structure CertifiedMeasurableSpace where
  Carrier : Type
  measurableSpace : MeasurableSpace Carrier

inductive MeasurableConvergenceMode where
  | pointwise
  | almostEverywhere
  | inMeasure
  | Lp
  | uniform
deriving DecidableEq, Repr

structure CertifiedSimpleApproximation (Ω : CertifiedMeasurableSpace) where
  codomain : Type
  codomainMeasurable : MeasurableSpace codomain
  approximants : Nat -> Ω.Carrier -> codomain
  approximantsMeasurable : ∀ n, Measurable (approximants n)
  convergenceMode : MeasurableConvergenceMode
  convergenceCertificate : Prop

structure CertifiedMeasurableFunction where
  Ω : CertifiedMeasurableSpace
  codomain : Type
  codomainMeasurable : MeasurableSpace codomain
  value : Ω.Carrier -> codomain
  measurable : Measurable value
  approximation? : Option (CertifiedSimpleApproximation Ω)

structure CertifiedSimpleApproximationRef where
  id : String
  mode : MeasurableConvergenceMode

structure CertifiedMeasurableLimitRef where
  id : String
  mode : MeasurableConvergenceMode

theorem certifiedMeasurable_has_measurability (f : CertifiedMeasurableFunction) :
    Measurable f.value := by
  exact f.measurable

end Surface.Legacy
```
