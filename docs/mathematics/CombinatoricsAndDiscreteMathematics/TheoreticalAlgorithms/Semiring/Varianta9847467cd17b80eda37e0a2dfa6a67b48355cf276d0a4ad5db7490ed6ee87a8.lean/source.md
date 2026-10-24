# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Semiring.Varianta9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `186ec65444688735026c202e0638443cf135428e` · SHA-256 `a9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Algebra

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

structure MemorySemiring where
  zero : WeightedMemory
  one : WeightedMemory
  add : WeightedMemory -> WeightedMemory -> WeightedMemory
  mul : WeightedMemory -> WeightedMemory -> WeightedMemory
  residueAtoms : List ResidueAtom

def memorySemiring : MemorySemiring :=
  { zero := WeightedMemory.zero
    one := WeightedMemory.one
    add := WeightedMemory.add
    mul := WeightedMemory.mul
    residueAtoms :=
      [ ResidueAtom.weightedMemoryNotProof
      , ResidueAtom.semiringOnlyUntilInverseDefined
      ] }

structure MemorySemiringLaws where
  addZero : ∀ M : WeightedMemory, memorySemiring.add M memorySemiring.zero = M
  zeroAdd : ∀ M : WeightedMemory, memorySemiring.add memorySemiring.zero M = M
  addAssoc :
    ∀ M N K : WeightedMemory,
      memorySemiring.add (memorySemiring.add M N) K =
        memorySemiring.add M (memorySemiring.add N K)
  addComm :
    ∀ M N : WeightedMemory,
      memorySemiring.add M N = memorySemiring.add N M
  mulZero : ∀ M : WeightedMemory, memorySemiring.mul M memorySemiring.zero = memorySemiring.zero
  zeroMul : ∀ M : WeightedMemory, memorySemiring.mul memorySemiring.zero M = memorySemiring.zero

theorem memorySemiring_laws : MemorySemiringLaws where
  addZero := WeightedMemory.add_zero
  zeroAdd := WeightedMemory.zero_add
  addAssoc := WeightedMemory.add_assoc
  addComm := WeightedMemory.add_comm
  mulZero := WeightedMemory.mul_zero
  zeroMul := WeightedMemory.zero_mul

theorem memorySemiring_marks_default :
    ResidueAtom.semiringOnlyUntilInverseDefined ∈ memorySemiring.residueAtoms := by
  simp [memorySemiring]

theorem memorySemiring_one_marks_noop :
    memorySemiring.one.coeff noopVertex = 1 :=
  WeightedMemory.one_noop_coeff

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```
