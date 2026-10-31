/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete signed cyclic-walk packet: exact zero-frequency accounting

This finite lemma is an arithmetic-independent identity on every finite
additive commutative group, followed by the ACTUAL integer Möbius and Liouville
source labels on ZMod N. It does not suppose that the arithmetic signs are a
random walk, that Chowla holds, or that source correlations are small.

The complete packet over ALL cyclic offsets is the square of the original
signed walk. In particular the diagonal alone gives only the square-free
inventory (Möbius) or the full count (Liouville). Every other offset must
contribute with its sign, without absolute values, to control the walk.

This is a circularity gate for Bernoulli/Chowla arguments: a hypothesis
bounding the complete packet by N^(1+2epsilon) is already an RH-strength
one-point source bound. Fixed-offset limits cannot replace that hypothesis.

The separate original causal response, weighted energy and RH return
are not modified. No RH or uniform growing-shift estimate is proved.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.SignedCyclicWalkPacket

variable {G : Type*} [AddCommGroup G] [Fintype G]

/-- Signed displacement, before a square or any classwise absolute value. -/
def signedWalk (a : G → ℝ) : ℝ := ∑ n : G, a n

/-- Complete ordinary cyclic two-point correlation at the GIVEN shift. -/
def cyclicCorrelation (a : G → ℝ) (h : G) : ℝ :=
  ∑ n : G, a n * a (n + h)

/-- The full packet includes EVERY shift, not just a fixed finite family. -/
def completePacket (a : G → ℝ) : ℝ :=
  ∑ h : G, cyclicCorrelation a h

/-- Translation is a bijection at each root: complete shifts, not fixed shifts. -/
private theorem translated_sum (a : G → ℝ) (n : G) :
    (∑ h : G, a (n + h)) = ∑ h : G, a h := by
  change (∑ h : G, a ((Equiv.addLeft n) h)) = _
  exact Equiv.sum_comp (Equiv.addLeft n) a

/-- The entire signed two-point packet IS the square of the displacement. -/
theorem completePacket_eq_signedWalk_sq (a : G → ℝ) :
    completePacket a = (signedWalk a) ^ 2 := by
  classical
  unfold completePacket cyclicCorrelation signedWalk
  calc
    (∑ h : G, ∑ n : G, a n * a (n + h)) =
        ∑ n : G, ∑ h : G, a n * a (n + h) := Finset.sum_comm
    _ = ∑ n : G, a n * (∑ h : G, a (n + h)) := by
      simp only [Finset.mul_sum]
    _ = ∑ n : G, a n * (∑ h : G, a h) := by
      apply Finset.sum_congr rfl
      intro n _
      rw [translated_sum a n]
    _ = (∑ n : G, a n) ^ 2 := by
      rw [← Finset.sum_mul]
      ring

/-- Zero shift is the complete diagonal; squareful zeros remain. -/
theorem cyclicCorrelation_zero (a : G → ℝ) :
    cyclicCorrelation a 0 = ∑ n : G, (a n) ^ 2 := by
  simp [cyclicCorrelation, pow_two]

/-- Total packet is nonnegative; individual correlations need not be. -/
theorem completePacket_nonneg (a : G → ℝ) :
    0 ≤ completePacket a := by
  rw [completePacket_eq_signedWalk_sq]
  exact sq_nonneg _

/-- An upper bound on the FULL packet exactly controls squared displacement.
The bound itself is NOT supplied here. -/
theorem signedWalk_sq_le_of_completePacket_le
    (a : G → ℝ) (B : ℝ) (h : completePacket a ≤ B) :
    (signedWalk a) ^ 2 ≤ B := by
  rw [← completePacket_eq_signedWalk_sq]
  exact h

/-- Unit-magnitude signs have the full inventory as diagonal;
Möbius is not of unit magnitude at squareful integers. -/
theorem cyclicCorrelation_zero_of_unit
    (a : G → ℝ) (ha : ∀ n : G, (a n) ^ 2 = 1) :
    cyclicCorrelation a 0 = (Fintype.card G : ℝ) := by
  rw [cyclicCorrelation_zero]
  calc
    (∑ n : G, (a n) ^ 2) = ∑ _n : G, (1 : ℝ) := by
      apply Finset.sum_congr rfl
      intro n _
      exact ha n
    _ = _ := by simp

/-!
## Actual positive-index arithmetic sources

The ZMod N labels run through residues 0,...,N-1; adding 1
aligns them with the unchanged integer source 1,...,N. The
Möbius value 0 at a squareful index is NOT removed.
The finite packet uses a cyclic readout of the same prefix,
not a claim that the infinite arithmetic source is periodic.
-/

/-- Actual integer Möbius coefficients as real signs and zeros. -/
def moebiusPrefixOnCycle (N : ℕ) [NeZero N] (n : ZMod N) : ℝ :=
  ((ArithmeticFunction.moebius (n.val + 1) : ℤ) : ℝ)

/-- Actual complete-multiplicative Liouville signs at positive labels. -/
def liouvillePrefixOnCycle (N : ℕ) [NeZero N] (n : ZMod N) : ℝ :=
  ((ArithmeticFunction.liouville (n.val + 1) : ℤ) : ℝ)

/-- The source Möbius walk equals its complete signed cyclic packet. -/
theorem moebius_packet_eq_walk_sq (N : ℕ) [NeZero N] :
    completePacket (moebiusPrefixOnCycle N) =
      (signedWalk (moebiusPrefixOnCycle N)) ^ 2 :=
  completePacket_eq_signedWalk_sq _

/-- The source Liouville walk equals its complete signed cyclic packet. -/
theorem liouville_packet_eq_walk_sq (N : ℕ) [NeZero N] :
    completePacket (liouvillePrefixOnCycle N) =
      (signedWalk (liouvillePrefixOnCycle N)) ^ 2 :=
  completePacket_eq_signedWalk_sq _

end GRWTSK.ProbabilityAndMathematicalStatistics.SignedCyclicWalkPacket
