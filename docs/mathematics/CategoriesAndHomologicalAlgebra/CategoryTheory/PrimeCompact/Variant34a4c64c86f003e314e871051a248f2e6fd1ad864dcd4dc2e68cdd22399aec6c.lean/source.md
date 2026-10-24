# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeCompact.Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55d3840ec3adce9b770100b3b6ed8c3086cebd8d` · SHA-256 `34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Torsion

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure PrimeCompact where
  primeLabel : Nat
  compact : CompactPatch
  primeCertified : Prop

structure PrimeCompactStage where
  bound : Nat
  compacts : List PrimeCompact
  localMemories : List LocalCompactMemory

structure PNTNormalizer where
  thetaNumerator : Nat
  thetaDenominator : Nat
  normalized : thetaNumerator = thetaDenominator

def PNTNormalizer.residue (N : PNTNormalizer) : Int :=
  Int.ofNat N.thetaNumerator - Int.ofNat N.thetaDenominator

def PrimeCompactStage.resolvedByNormalizer
    (_S : PrimeCompactStage) (N : PNTNormalizer) : Prop :=
  N.residue = 0

structure PrimeCompactAdjunction where
  previous : PrimeCompactStage
  newPrime : PrimeCompact
  next : PrimeCompactStage
  localUpdate : Prop
  torsionCompatible : Prop
  residueStable : Prop
  oldRestrictionsUnchanged : Prop

def PrimeCompactAdjunction.admitted (A : PrimeCompactAdjunction) : Prop :=
  A.localUpdate ∧ A.torsionCompatible ∧ A.residueStable ∧ A.oldRestrictionsUnchanged

theorem pnt_normalizer_residue_zero
    (N : PNTNormalizer) :
    N.residue = 0 := by
  unfold PNTNormalizer.residue
  rw [N.normalized]
  simp

theorem prime_adjunction_admitted_preserves_old_restrictions
    (A : PrimeCompactAdjunction)
    (h : A.admitted) :
    A.oldRestrictionsUnchanged := by
  exact h.2.2.2

end Think.RadoProjectedModularHeatflow.MemoryCore
```
