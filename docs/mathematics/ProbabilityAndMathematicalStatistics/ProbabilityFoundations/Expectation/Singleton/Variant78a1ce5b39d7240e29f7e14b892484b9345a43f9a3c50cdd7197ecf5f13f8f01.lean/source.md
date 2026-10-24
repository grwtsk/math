# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Singleton.Variant78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c01b59fc0d15fd3fdf35202f6455a720a13269d` · SHA-256 `78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Operational.Evolution

/-!
# Certified invariant singleton beacons

A singleton intrinsic stratum that is preserved by a flow or surgery is a
fixed point.  The structural-orbit premise is retained in the certificate even
though the fixed-point proof itself needs only stratum singletonness and
invariance.
-/

namespace Mathematics.Operational

universe u v w

variable {State : Type u}

/-- The equivalence stratum of `beacon`. -/
def intrinsicStratum
    (intrinsic : Setoid State)
    (beacon : State) :
    Set State :=
  {state | intrinsic.r state beacon}

/-- The orbit under the complete declared automorphism action. -/
def structuralOrbit
    (action : Automorphism → State → State)
    (beacon : State) :
    Set State :=
  {state | ∃ automorphism, action automorphism beacon = state}

/--
Certificate that a state is a singleton intrinsic stratum, has singleton
structural orbit, and is preserved at the stratum level by every intrinsic
flow.
-/
structure CertifiedInvariantSingleton
    (intrinsic : Setoid State)
    (action : Automorphism → State → State)
    (flow : Time → State → State)
    (beacon : State) : Prop where
  stratum_singleton :
    intrinsicStratum intrinsic beacon = {beacon}
  structuralOrbit_singleton :
    structuralOrbit action beacon = {beacon}
  flow_preserves_stratum :
    ∀ time,
      Set.MapsTo (flow time)
        (intrinsicStratum intrinsic beacon)
        (intrinsicStratum intrinsic beacon)

/-- Every certified invariant singleton is fixed by every admissible flow. -/
theorem CertifiedInvariantSingleton.flow_fixed
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    {beacon : State}
    (certificate :
      CertifiedInvariantSingleton intrinsic action flow beacon)
    (time : Time) :
    flow time beacon = beacon := by
  have beaconMember :
      beacon ∈ intrinsicStratum intrinsic beacon :=
    intrinsic.refl beacon
  have imageMember :=
    certificate.flow_preserves_stratum time beaconMember
  rw [certificate.stratum_singleton] at imageMember
  simpa using imageMember

/-- Any surgery mapping a certified singleton into its stratum fixes it. -/
theorem CertifiedInvariantSingleton.surgery_fixed
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    {beacon : State}
    (certificate :
      CertifiedInvariantSingleton intrinsic action flow beacon)
    (surgery : State → State)
    (preserves :
      surgery beacon ∈ intrinsicStratum intrinsic beacon) :
    surgery beacon = beacon := by
  rw [certificate.stratum_singleton] at preserves
  simpa using preserves

end Mathematics.Operational
```
