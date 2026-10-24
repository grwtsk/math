# Complete source: GRWTSK.Topology.GeneralTopology.StablePrimeProbeTarget.Variant751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88d99ca0e90efcaa145152d7a351688c011bd930` · SHA-256 `751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
