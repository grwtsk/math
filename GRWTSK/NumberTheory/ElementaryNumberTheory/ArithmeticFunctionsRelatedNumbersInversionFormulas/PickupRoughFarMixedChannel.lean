/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarDivisorMaskReduction

/-!
# Mixed-Gram form of the divisor-channel mismatch

The reduced divisor-mask obstruction contains the difference

  gram P T m (p*n) - gram P T (p*m) (p*n).

This is not treated as an arbitrary error.  It is the exact mixed Gram between
the next-stage block in the smaller variable and the old-stage block in the moved
larger variable.

The second channel mismatch is likewise not a new selector: it is exactly the
already formalized left-dilation indicator difference evaluated at the moved
larger coordinate p*n.

Thus the complete reduced divisor-mask atom is rewritten into three source-exact
objects:

* a mixed Gram;
* a moved left-selector change;
* the atomic 1/omega(P,N,p*n) Gram term.

This is the local formal content behind the shifted-convolution, Chowla,
localization and entropic analogies. No theorem from those literatures is imported.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No quantitative gain or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannel

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskReduction

/-- The exact one-sided mixed Gram exposed by divisor-weight telescoping. -/
def mixedGram (P : List ℕ) (p : ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  gram P T m (p*n) - gram P T (p*m) (p*n)

/-- The mixed Gram is literally the next-stage block in the first channel paired
with the old-stage moved block in the second channel. -/
theorem mixedGram_eq_intervalIntegral
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (T : ℝ)
    (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) :
    mixedGram P p T m n =
      ∫ u in (0 : ℝ)..T,
        block (p::P) ⌊Real.exp T⌋₊ m u *
          block P ⌊Real.exp T⌋₊ (p*n) u := by
  have hpm : 1 ≤ p*m := by nlinarith [hp.two_le]
  have hpn : 1 ≤ p*n := by nlinarith [hp.two_le]
  have hmC := block_continuous P hP ⌊Real.exp T⌋₊ m hm
  have hpmC := block_continuous P hP ⌊Real.exp T⌋₊ (p*m) hpm
  have hpnC := block_continuous P hP ⌊Real.exp T⌋₊ (p*n) hpn
  unfold mixedGram gram
  rw [← intervalIntegral.integral_sub
      ((hmC.mul hpnC).intervalIntegrable _ _)
      ((hpmC.mul hpnC).intervalIntegrable _ _)]
  apply intervalIntegral.integral_congr
  intro u hu
  rw [block_cons]
  ring

/-- The selector mismatch in the reduced divisor atom is exactly the same
left-dilation selector change already isolated in the geometric analysis, now at
the moved larger coordinate p*n. -/
theorem moved_indicator_mismatch_eq_signedChange
    (N L H p m n : ℕ) :
    farIndicator N L H m (p*n) - farIndicator N L H (p*m) (p*n) =
      signedChange
        (leftLost N L H p m (p*n))
        (leftGained N L H p m (p*n)) := by
  exact indicator_sub_left_eq_signedChange N L H p m (p*n)

/-- The three exact channels after the divisor-weight algebra has telescoped. -/
def mixedChannelAtom
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  transportedOuter P p m n *
    (farIndicator N L H (p*m) (p*n) *
        rightWeightDelta P N Z p m n * mixedGram P p T m n +
     signedChange
        (leftLost N L H p m (p*n))
        (leftGained N L H p m (p*n)) *
        rightWeightDelta P N Z p m n * gram P T m (p*n) -
     farIndicator N L H (p*m) (p*n) *
        (omega P N (p*n) : ℝ)⁻¹ * gram P T (p*m) (p*n))

/-- Pointwise source return from the previous reduced atom to the named mixed
channel, moved selector change, and atomic divisor-count term. -/
theorem reducedDivisorMaskAtom_eq_mixedChannel
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) (m n : ℕ) :
    reducedDivisorMaskAtom P N L Z H p (gram P T) m n =
      mixedChannelAtom P N L Z H p T m n := by
  unfold reducedDivisorMaskAtom mixedChannelAtom mixedGram
  rw [moved_indicator_mismatch_eq_signedChange]
  ring

/-- Complete consumer return in mixed-channel form. -/
theorem transportedDivisorMask_eq_mixedChannel
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    transportedDivisorMask P N L Z H p T =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        mixedChannelAtom P N L Z H p T m n := by
  rw [transportedDivisorMask_eq_reduced P N L Z H p T hpFresh hZp]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  exact reducedDivisorMaskAtom_eq_mixedChannel P N L Z H p T m n

end GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannel
