import Mathematics.Discovery.OpenElement
import Mathematics.Prismatic.StablePointEmbedding

/-!
# Parameterized target: joint rigidity of a stable-prime probe product

Prime-local stability alone is not enough. The conjecture for a supplied
family is exactly joint separation plus recovery of the original topology.
Because this declaration still takes an arbitrary family, it is a target
schema rather than a closed open-conjecture element.
-/

namespace Mathematics.Prismatic

universe u v

/-- Exact completion target for one concrete certified probe family. -/
def StablePrimeProbeTarget
    {State : Type u} {Probe : Type v}
    [TopologicalSpace State]
    (family : StableProbeFamily State Probe) : Prop :=
  family.Rigid

end Mathematics.Prismatic
