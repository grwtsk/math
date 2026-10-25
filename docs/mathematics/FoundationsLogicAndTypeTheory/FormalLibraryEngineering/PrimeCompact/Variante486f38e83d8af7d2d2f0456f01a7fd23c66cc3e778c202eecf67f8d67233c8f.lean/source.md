# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCompact.Variante486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d32b18fa0c829218667d1f7af73a77ada8153db2` · SHA-256 `e486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Compact

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.PrimeCompact

structure PrimeCompactAdjunctionPlan where
  newPrimeLabel : Nat
  attachLocally : Prop
  torsionCompatible : Prop
  residueStable : Prop
  oldSourceTreeRestrictionPreserved : Prop

def PrimeCompactAdjunctionPlan.admitted
    (P : PrimeCompactAdjunctionPlan) : Prop :=
  P.attachLocally ∧
    P.torsionCompatible ∧
    P.residueStable ∧
    P.oldSourceTreeRestrictionPreserved

structure PrimeCompactCanonicalPass where
  plan : PrimeCompactAdjunctionPlan
  pntNormalizer : Think.RadoProjectedModularHeatflow.MemoryCore.PNTNormalizer
  pairCorrelationBelowTolerance : Prop

def PrimeCompactCanonicalPass.admitted
    (P : PrimeCompactCanonicalPass) : Prop :=
  P.plan.admitted ∧
    P.pntNormalizer.residue = 0 ∧
    P.pairCorrelationBelowTolerance

theorem admitted_prime_compact_pass_has_pnt_residue_zero
    (P : PrimeCompactCanonicalPass)
    (h : P.admitted) :
    P.pntNormalizer.residue = 0 := by
  exact h.2.1

end Think.RadoProjectedModularHeatflow.PrimeCompact
```
