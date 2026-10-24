# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Divisibility.PrimeFactorization.CellularCochainsAndArithmeticData.Variant10b48324e57283bb.WholeCanonicalFactorMapRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `583a7242234dfa9c063bdcf0c96c842ae6912f45` · SHA-256 `d00f3dc79a06baf10702cb1b68d85a1f4ea6249be33f2b8fe1bfd81422a03a15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeCanonicalFactorMapRepresentation - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34
Organized SHA-256: b5bc84df0f99c85c5494308ca5839852577cbb26fb438a127e4cece475b60f5e
PMD: 510.2.010.010.060 prime factorization (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Retain the complete five-field canonical factor-map representation, wrapper and exact number/decode/canonical views, both full constructors, SameDecoded relation and two actual theorem bodies. The wrapper canonical predicate is literally True. The uniqueness proof assumes equality of underlying positive numbers, not merely a relation to any cube or matrix. Separately preserve the unproved canonical prime-power-list uniqueness target as a Prop definition, with no supplied proof or inferred theorem. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import Folder.CellularArithmetic.ArithmeticTree
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.CellularArithmetic.CellularRepresentation

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.cellular_arithmetic_representation
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure FactorMapRepresentation where
  number : NumberTheory.PositiveNat
  factorMap : Nat →₀ Nat
  canonical : ∀ p ∈ factorMap.support, Nat.Prime p
  factorMap_eq : factorMap = NumberTheory.FactorizationMap number
  decodes : NumberTheory.factorProduct factorMap = number.val

def FactorMapRepresentation.decode
    (R : FactorMapRepresentation) : Nat :=
  NumberTheory.factorProduct R.factorMap

structure CellularArithmeticRepresentation where
  factorMapRep : FactorMapRepresentation

namespace CellularArithmeticRepresentation

def number (R : CellularArithmeticRepresentation) :
    NumberTheory.PositiveNat :=
  R.factorMapRep.number

def decode (R : CellularArithmeticRepresentation) : Nat :=
  R.factorMapRep.decode

def canonical (_R : CellularArithmeticRepresentation) : Prop :=
  True

end CellularArithmeticRepresentation

noncomputable def encodeFactorMap
    (n : NumberTheory.PositiveNat) :
    FactorMapRepresentation where
  number := n
  factorMap := NumberTheory.FactorizationMap n
  canonical := by
    intro p hp
    exact NumberTheory.factorization_support_prime n
      (Finsupp.mem_support_iff.mp hp)
  factorMap_eq := rfl
  decodes := NumberTheory.factorProduct_factorization n

noncomputable def encodePositiveNat
    (n : NumberTheory.PositiveNat) :
    CellularArithmeticRepresentation where
  factorMapRep := encodeFactorMap n

theorem decode_encode_positiveNat
    (n : NumberTheory.PositiveNat) :
    (encodePositiveNat n).decode = n.val :=
  NumberTheory.factorProduct_factorization n

def SameDecoded
    (A B : CellularArithmeticRepresentation) : Prop :=
  A.decode = B.decode

theorem factorMap_unique_of_same_number
    (A B : CellularArithmeticRepresentation)
    (h : A.number.val = B.number.val) :
    A.factorMapRep.factorMap = B.factorMapRep.factorMap := by
  have hn : A.factorMapRep.number = B.factorMapRep.number :=
    NumberTheory.PositiveNat.ext h
  rw [A.factorMapRep.factorMap_eq, B.factorMapRep.factorMap_eq, hn]

end CellularArithmetic
end Folder
```
