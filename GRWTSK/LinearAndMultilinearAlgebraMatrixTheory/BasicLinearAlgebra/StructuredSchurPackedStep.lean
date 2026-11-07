/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurFiveInt
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedScalarRound

/-!
# Packed generator corrections in a complete rounded Schur step

A batch stores one signed column packet and four quotient/remainder
packets. Every quotient in a packet shares its pivot generator and
positive pivot denominator. The shared and packet checks retain the
width bounds, carry separation, masked magnitudes and exact even ties.

`proposedNext` uses those four quotients for the generator corrections.
Its diagonal uses the original squared-column nearest-even formula.
`checkColumns` compares every supplied column with the original
variable-node formula, and `checkCaps` checks all original magnitude
bounds on the resulting row. Each finite batch position is checked.
Source indices, full batch coverage, pivot-anchor consistency and
checkpoint links remain distinct data and proof obligations.
-/

set_option autoImplicit false
namespace GRWTSK.Algebra.LinearAlgebra.PackedSchurStep
open FiveIntSchur PackedScalarRound

structure Packet where
  low : ℕ
  rawQ : ℕ
  rawE : ℕ
  biasE : ℤ

structure Batch where
  width : ℕ
  count : ℕ
  cLow : ℕ
  rawC : ℕ
  q0 : Packet
  q1 : Packet
  q2 : Packet
  q3 : Packet

def column (b : Batch) (i : ℕ) : ℤ := digit b.width b.rawC (2^(b.cLow-1) : ℕ) i

def quotient (b : Batch) (p : Packet) (i : ℕ) : ℤ :=
  digit b.width p.rawQ (2^(p.low-1) : ℕ) i

def checkShared (b : Batch) (d : ℤ) : Bool := decide (
  0 < d ∧ b.cLow ≤ b.width ∧ 0 < b.cLow ∧
  b.rawC < 1 <<< (b.width*b.count) ∧ checkMask b.cLow b.width b.count b.rawC = true)

def checkPacket (b : Batch) (p : Packet) (a d : ℤ) : Bool := decide (
  p.low ≤ b.width ∧ 0 < p.low ∧
  p.rawQ < 1 <<< (b.width*b.count) ∧ p.rawE < 1 <<< (b.width*b.count) ∧
  a.natAbs*2^(b.cLow-1)+d.natAbs*2^(p.low-1)+d.natAbs < 2^b.width ∧
  checkMask p.low b.width b.count p.rawQ = true ∧
  checkPacked b.width b.count b.rawC p.rawQ p.rawE
    (2^(b.cLow-1) : ℕ) (2^(p.low-1) : ℕ) p.biasE a d = true ∧
  checkRemainder b.width b.count p.rawQ p.rawE (2^(p.low-1) : ℕ) p.biasE d = true)

def checkGenerators (b : Batch) (pivot : Row) : Bool :=
  let d := pivot.diag * FiveIntSchur.columnFactor
  checkShared b d && checkPacket b b.q0 pivot.v0 d && checkPacket b b.q1 pivot.u0 d &&
    checkPacket b b.q2 pivot.v1 d && checkPacket b b.q3 pivot.u1 d

def proposedNext (b : Batch) (pivot old : Row) (i : ℕ) : Row :=
  let c := column b i
  {diag := old.diag - FiveIntSchur.nearestEven (c*c)
    (pivot.diag * (FiveIntSchur.columnFactor*FiveIntSchur.columnFactor))
   v0 := old.v0 - quotient b b.q0 i
   u0 := old.u0 - quotient b b.q1 i
   v1 := old.v1 - quotient b b.q2 i
   u1 := old.u1 - quotient b b.q3 i}

def checkColumns (b : Batch) (delta : Fin b.count → ℤ) (pivot : Row)
    (old : Fin b.count → Row) : Bool := decide (∀ i : Fin b.count,
  column b i.val = FiveIntSchur.nearestEven
    (((old i).v0*pivot.u0-(old i).u0*pivot.v0)+((old i).v1*pivot.u1-(old i).u1*pivot.v1))
    (delta i * FiveIntSchur.displacementFactor))

def checkCaps (b : Batch) (pivot : Row) (old : Fin b.count → Row) (bounds : Caps) : Bool :=
  decide (∀ i : Fin b.count, Magnitudes (column b i.val) (proposedNext b pivot (old i) i.val) bounds)

end GRWTSK.Algebra.LinearAlgebra.PackedSchurStep
