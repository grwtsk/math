# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Orbit.Variantfff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34ecf9c162a7799c9e9e9eca0e21ecb223d8a75b` · SHA-256 `fff87e793c40992425955fd1dad93fa4e5b5d3b157b1faa1f2f0573b92b94aad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive OrbitGenerator where
  | typedWreath
  | phaseReflection
  | orbitQuotient
deriving DecidableEq, Repr

structure OrbitPolicy where
  generators : List OrbitGenerator
  exactWeightSymmetry : Prop
  modularLabelsMayBeNonfaithful : Prop
deriving Repr

def sourceTreeOrbitPolicy : OrbitPolicy :=
  { generators := [ .typedWreath, .phaseReflection, .orbitQuotient ]
    exactWeightSymmetry := True
    modularLabelsMayBeNonfaithful := True }

theorem sourceTreeOrbitPolicy_hasReflection :
    OrbitGenerator.phaseReflection ∈ sourceTreeOrbitPolicy.generators := by
  decide

end Think.RadoProjectedModularHeatflow
```
