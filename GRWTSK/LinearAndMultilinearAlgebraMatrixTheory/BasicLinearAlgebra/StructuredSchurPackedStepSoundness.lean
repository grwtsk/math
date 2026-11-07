/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedStep
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedScalarRoundSoundness

/-!
# Packed rounded steps returned to the original row traversal

The scalar packet theorem identifies all four decoded generator
quotients with the existing nearest-even rule. The checked column
identity and unchanged diagonal formula therefore identify the entire
five-coordinate transition. Substitution in the original magnitude
predicate returns the exact original `FiveIntSchur.cell` result.

Induction over every successive cell preserves the accumulated Boolean
and the full row state. For a surviving row, the supplied trace endpoint
then gives the original checkpoint predicate. The existing five-integer
comparison transports this result to the geometric Schur checker.
Concrete trace source comparisons are necessary at both ends and at
its pivot anchors; one batch or a missing intermediate pivot does not
supply the other cells. The concrete two-pivot source fixture retains
all five coordinates, the original bounds and both pivot anchors.

Bit mutation, zero magnitude bounds and an omitted second pivot give
hostile finite checks of the corresponding acceptance conditions.
These comparisons share the original rounding definitions. Independent
mathematical review and prior-art novelty assessment are pending.
The complete rounded chain, literal initial seed, paid source return
and high-complement floor remain separate obligations.
-/

set_option autoImplicit false
namespace GRWTSK.Algebra.LinearAlgebra.PackedSchurStep
open FiveIntSchur PackedScalarRound

theorem packet_sound (b : Batch) (p : Packet) (a d : ℤ)
    (hShared : checkShared b d = true) (hPacket : checkPacket b p a d = true)
    (i : Fin b.count) :
    FiveIntSchur.nearestEven (a*column b i.val) d = quotient b p i.val := by
  have hs : 0 < d ∧ b.cLow ≤ b.width ∧ 0 < b.cLow ∧
      b.rawC < 1 <<< (b.width*b.count) ∧ checkMask b.cLow b.width b.count b.rawC = true :=
    of_decide_eq_true hShared
  have hp : p.low ≤ b.width ∧ 0 < p.low ∧
      p.rawQ < 1 <<< (b.width*b.count) ∧ p.rawE < 1 <<< (b.width*b.count) ∧
      a.natAbs*2^(b.cLow-1)+d.natAbs*2^(p.low-1)+d.natAbs < 2^b.width ∧
      checkMask p.low b.width b.count p.rawQ = true ∧
      checkPacked b.width b.count b.rawC p.rawQ p.rawE
        (2^(b.cLow-1) : ℕ) (2^(p.low-1) : ℕ) p.biasE a d = true ∧
      checkRemainder b.width b.count p.rawQ p.rawE (2^(p.low-1) : ℕ) p.biasE d = true :=
    of_decide_eq_true hPacket
  rcases hs with ⟨hd,hCL,hCP,hC,hMaskC⟩
  rcases hp with ⟨hQL,hQP,hQ,hE,hSep,hMaskQ,hEq,hRem⟩
  exact nearestEven_mask_sound b.width b.count b.cLow p.low b.rawC p.rawQ p.rawE p.biasE a d
    hd hCL hQL hCP hQP hC hQ hE hSep hMaskC hMaskQ hEq hRem i

theorem transition_sound (b : Batch) (delta : Fin b.count → ℤ) (pivot : Row)
    (old : Fin b.count → Row)
    (hG : checkGenerators b pivot = true) (hColumns : checkColumns b delta pivot old = true)
    (i : Fin b.count) :
    FiveIntSchur.transition (delta i) pivot (old i) =
      (column b i.val, proposedNext b pivot (old i) i.val) := by
  simp only [checkGenerators,Bool.and_eq_true] at hG
  rcases hG with ⟨⟨⟨⟨hShared,h0⟩,h1⟩,h2⟩,h3⟩
  have hCol : column b i.val = FiveIntSchur.nearestEven
      (((old i).v0*pivot.u0-(old i).u0*pivot.v0)+((old i).v1*pivot.u1-(old i).u1*pivot.v1))
      (delta i * FiveIntSchur.displacementFactor) := (of_decide_eq_true hColumns) i
  have hq0 := packet_sound b b.q0 pivot.v0 _ hShared h0 i
  have hq1 := packet_sound b b.q1 pivot.u0 _ hShared h1 i
  have hq2 := packet_sound b b.q2 pivot.v1 _ hShared h2 i
  have hq3 := packet_sound b b.q3 pivot.u1 _ hShared h3 i
  unfold FiveIntSchur.transition
  rw [←hCol]
  dsimp only
  simp only [proposedNext,mul_comm (column b i.val),hq0,hq1,hq2,hq3]

theorem cell_sound (b : Batch) (node : ℕ → ℤ) (pivot : ℕ → Row) (bounds : ℕ → Caps)
    (p : ℕ) (index : Fin b.count → ℕ) (old : Fin b.count → Row)
    (hIndex : ∀ i, p < index i)
    (hG : checkGenerators b (pivot p) = true)
    (hColumns : checkColumns b (fun i => node (index i)-node p) (pivot p) old = true)
    (hCaps : checkCaps b (pivot p) old (bounds p) = true) (i : Fin b.count) :
    FiveIntSchur.cell node pivot bounds p (index i) (old i) =
      (true,proposedNext b (pivot p) (old i) i.val) := by
  unfold FiveIntSchur.cell
  rw [ite_eq_left (hIndex i)]
  dsimp only
  rw [transition_sound b _ _ _ hG hColumns i]
  have hM : Magnitudes (column b i.val) (proposedNext b (pivot p) (old i) i.val) (bounds p) :=
    (of_decide_eq_true hCaps) i
  simp only [decide_eq_true hM]

/-- Exact cell returns compose into the original row traversal. -/
theorem run_eq_of_trace (node : ℕ → ℤ) (pivot : ℕ → Row) (bounds : ℕ → Caps)
    (start i length : ℕ) (trace : ℕ → Row)
    (hCells : ∀ k < length, FiveIntSchur.cell node pivot bounds (start+k) i (trace k) =
      (true,trace (k+1))) :
    FiveIntSchur.run node pivot bounds start i (trace 0) length = (true,trace length) := by
  induction length with
  | zero => rfl
  | succ k ih =>
    rw [FiveIntSchur.run,ih (fun j hj => hCells j (by omega)),hCells k (by omega)]
    rfl

/-- A surviving endpoint supplied by packed steps gives the original checkpoint check. -/
theorem checkpoint_of_trace (node : ℕ → ℤ) (pivot : ℕ → Row) (bounds : ℕ → Caps)
    (start i length : ℕ) (trace : ℕ → Row) (hSurvive : start+length ≤ i)
    (hCells : ∀ k < length, FiveIntSchur.cell node pivot bounds (start+k) i (trace k) =
      (true,trace (k+1))) :
    FiveIntSchur.checkCheckpoint node pivot bounds start i length (trace 0) (trace length) = true := by
  have hMin : min length (i+1-start) = length := by omega
  unfold FiveIntSchur.checkCheckpoint
  rw [hMin,run_eq_of_trace node pivot bounds start i length trace hCells]
  simp only [hSurvive,ite_true,decide_true,Bool.and_self]

end GRWTSK.Algebra.LinearAlgebra.PackedSchurStep
