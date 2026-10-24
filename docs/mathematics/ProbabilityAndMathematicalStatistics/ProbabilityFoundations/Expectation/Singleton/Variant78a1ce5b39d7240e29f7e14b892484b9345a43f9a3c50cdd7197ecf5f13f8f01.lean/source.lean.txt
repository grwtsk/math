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
