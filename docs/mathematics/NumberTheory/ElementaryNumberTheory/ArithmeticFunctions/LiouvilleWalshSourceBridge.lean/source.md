# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleWalshSourceBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b11fea87045fe6833a20d9201c0917ff636886f9` · SHA-256 `21092e0bce4d6cb4e0341ac600fc578311548a15db8a11ccf2eb682a210726b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Finite arithmetic-to-Walsh bridge drafting assistance: OpenAI.
Mathlib Liouville work is credited to Thomas Browning / Mathlib contributors. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicAffineBridge
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteChowlaUniformEnvelope
import Mathlib.Tactic

set_option autoImplicit false

/-!
# An actual Liouville source for the finite Chowla--sofic Walsh interfaces

Issues: grwtsk/math#630 and #441. Draft PR #638, direct parent head
72c6d2d9d72c20daa0145ad6bf10e50d1bc7f9a7.

Prior generic finite results accept arbitrary Boolean labels, whereas the
analytic task concerns the actual arithmetic Liouville function. This
module constructs the exact, positive-index sign encoding and identifies
EVERY nonempty (and empty) source Walsh correlation with an ordinary
integer-Liouville correlation at the SAME finite sample and shifts.

For every root n in 0,...,N-1 and selected nonnegative offset h,
the source is lambda(n+h+1), NOT lambda(n+h). The +1 ensures no
invalid use of lambda(0)^2=1: Mathlib has lambda(0)=0.

The source energy and conditional finite cyclic TV conclusion are
transported through exact equalities only. No new analytic cancellation,
fixed-to-growing shift uniformity, arithmetic progression estimate,
GUE statistic, or RH conclusion is asserted.

All inherited finite proof declarations are still SOURCE_DRAFT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open scoped BigOperators
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
open GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge

/-- Every positive-index Liouville value is exactly +1 or -1.
This is a genuine property of Mathlib's arithmetic function, not
an assumption about an arbitrary sign sequence. -/
theorem liouville_positive_pm_one (n : ℕ) (hn : 0 < n) :
    ArithmeticFunction.liouville n = (1 : ℤ) ∨
      ArithmeticFunction.liouville n = (-1 : ℤ) := by
  have hs := liouville_positive_square n hn
  have hfactor :
      (ArithmeticFunction.liouville n - 1) *
        (ArithmeticFunction.liouville n + 1) = (0 : ℤ) := by
    calc
      _ = ArithmeticFunction.liouville n *
            ArithmeticFunction.liouville n - 1 := by ring
      _ = 0 := by rw [hs]; ring
  rcases mul_eq_zero.mp hfactor with h | h
  · left
    omega
  · right
    omega

/-- Encode lambda(n+1) by a Boolean, with true representing +1 and
false representing -1. The shift by one is MATHEMATICALLY NECESSARY
to exclude lambda(0)=0. -/
def liouvillePositiveBool (n : ℕ) : Bool :=
  if ArithmeticFunction.liouville (n + 1) = (1 : ℤ) then true else false

/-- No sign information is lost by the finite Boolean encoding. -/
theorem liouvillePositiveBool_sign (n : ℕ) :
    boolSign (liouvillePositiveBool n) =
      ((ArithmeticFunction.liouville (n + 1) : ℤ) : ℚ) := by
  rcases liouville_positive_pm_one (n + 1) (Nat.succ_pos n) with h | h
  · simp [liouvillePositiveBool, boolSign, h]
  · simp [liouvillePositiveBool, boolSign, h]

/-- Every selected coordinate of the actual ordinary word gives the
EXACT arithmetic sign lambda(n+h+1), with its shift identity retained. -/
theorem ordinaryLiouvilleWord_sign (H : Finset ℕ)
    (n : ℕ) (h : {t : ℕ // t ∈ H}) :
    boolSign (ordinaryShiftWord H liouvillePositiveBool n h) =
      ((ArithmeticFunction.liouville (n + h.val + 1) : ℤ) : ℚ) := by
  exact liouvillePositiveBool_sign (n + h.val)

/-- The actual, ordinary UNLOGARITHMIC, finite, all-order Liouville
product mean. The coordinates are precisely selected distinct shifts
of H, via their subtype; an empty S gives coefficient 1 for N>0. -/
def liouvilleSubsetMean (N : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) : ℚ :=
  (∑ n ∈ Finset.range N,
    ∏ h ∈ S, ((ArithmeticFunction.liouville (n + h.val + 1) : ℤ) : ℚ)) /
      (N : ℚ)

/-- Exact arithmetic identification of EVERY finite Walsh coefficient.
No cancellation bound is assumed or inferred. -/
theorem liouvilleSubsetMean_eq_sourceCorrelation
    (N : ℕ) (H : Finset ℕ) (S : Finset {h : ℕ // h ∈ H}) :
    liouvilleSubsetMean N H S =
      sourceCorrelation (Finset.range N) S
        (ordinaryShiftWord H liouvillePositiveBool) := by
  unfold liouvilleSubsetMean sourceCorrelation plainMomentOn ordinaryShiftWord
  simp only [Finset.card_range]
  congr 1
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.prod_congr rfl
  intro h _
  exact (liouvillePositiveBool_sign (n + h.val)).symm

/-- The empty-character normalization is valid only for a nonempty
sample N>0. It does NOT use the false identity lambda(0)^2=1. -/
theorem liouvilleSubsetMean_empty (N : ℕ) (H : Finset ℕ)
    (hN : 0 < N) :
    liouvilleSubsetMean N H (∅ : Finset {h : ℕ // h ∈ H}) = 1 := by
  rw [liouvilleSubsetMean_eq_sourceCorrelation]
  exact sourceCorrelation_empty (Finset.range N)
    (ordinaryShiftWord H liouvillePositiveBool) (by simpa using hN)

/-- An empty root sample returns the rational zero convention; it is
NOT an empirical probability distribution. -/
theorem liouvilleSubsetMean_zero_sample (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    liouvilleSubsetMean 0 H S = 0 := by
  simp [liouvilleSubsetMean]

/-- Arithmetic full higher-order energy: ALL nonempty subsets of the
actual selected finite shift set, with each subset counted exactly once. -/
def liouvilleAllOrderEnergy (N : ℕ) (H : Finset ℕ) : ℚ :=
  ∑ S ∈ (Finset.univ : Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
    (liouvilleSubsetMean N H S) ^ 2

/-- The actual arithmetic all-order energy is EXACTLY the generic
nonempty Walsh energy of the Boolean encoded Liouville windows. -/
theorem liouvilleAllOrderEnergy_eq_sourceEnergy (N : ℕ)
    (H : Finset ℕ) :
    liouvilleAllOrderEnergy N H =
      nonemptyCorrelationEnergy (Finset.range N)
        (ordinaryShiftWord H liouvillePositiveBool) := by
  unfold liouvilleAllOrderEnergy nonemptyCorrelationEnergy
  apply Finset.sum_congr rfl
  intro S _
  rw [liouvilleSubsetMean_eq_sourceCorrelation]

/-- The complete, source-specific higher-order ordinary Chowla
premise at the exact scale N and set H, with one epsilon common to
every nonempty subset. This is a DECLARED HYPOTHESIS only. -/
def LiouvilleAllOrderOrdinaryEnvelope
    (N : ℕ) (H : Finset ℕ) (epsilon : ℚ) : Prop :=
  0 ≤ epsilon ∧
    ∀ S : Finset {h : ℕ // h ∈ H}, S ≠ ∅ →
      |liouvilleSubsetMean N H S| ≤ epsilon

/-- A proof-relevant exact adapter from an ARITHMETIC all-order
premise to the existing generic finite Walsh theorem interface.
The function is an equivalence of propositions, not a proof of
either arithmetic cancellation hypothesis. -/
theorem liouvilleEnvelope_iff_generic (N : ℕ) (H : Finset ℕ)
    (epsilon : ℚ) :
    LiouvilleAllOrderOrdinaryEnvelope N H epsilon ↔
      OrdinaryAllOrderChowlaAtScale N H liouvillePositiveBool epsilon := by
  unfold LiouvilleAllOrderOrdinaryEnvelope
    OrdinaryAllOrderChowlaAtScale AllOrderCorrelationEnvelope
  constructor
  · rintro ⟨hepsilon, hS⟩
    refine ⟨hepsilon, ?_⟩
    intro S hnonempty
    rw [← liouvilleSubsetMean_eq_sourceCorrelation]
    exact hS S hnonempty
  · rintro ⟨hepsilon, hS⟩
    refine ⟨hepsilon, ?_⟩
    intro S hnonempty
    rw [liouvilleSubsetMean_eq_sourceCorrelation]
    exact hS S hnonempty

/-- Exact finite cyclic sofic-boundary comparison now concerning
ACTUAL Liouville signs, with no invented arithmetic rate. -/
theorem liouvilleCyclicTV_le_energy (N : ℕ) (H : Finset ℕ)
    (hr : cyclicMaxOffset H < N) :
    (totalVariationFromUniform (Finset.range N)
      (cyclicShiftWord N H liouvillePositiveBool) : ℝ) ≤
      ((cyclicMaxOffset H : ℚ) / (N : ℚ) : ℝ) +
        Real.sqrt (liouvilleAllOrderEnergy N H : ℝ) / 2 := by
  have hb := cyclicWalshTV_bound N H liouvillePositiveBool hr
  rw [liouvilleAllOrderEnergy_eq_sourceEnergy] at *
  exact hb

/-- Conditional all-subset ARITHMETIC hypothesis gives an explicit
cyclic Bernoulli TV bound with the same 2^|H|-1 character cost.
No published two-point theorem fills this all-order premise. -/
theorem liouvilleCyclicTV_of_allOrderEnvelope
    (N : ℕ) (H : Finset ℕ) (epsilon : ℚ)
    (hr : cyclicMaxOffset H < N)
    (henvelope : LiouvilleAllOrderOrdinaryEnvelope N H epsilon) :
    (totalVariationFromUniform (Finset.range N)
      (cyclicShiftWord N H liouvillePositiveBool) : ℝ) ≤
      ((cyclicMaxOffset H : ℚ) / (N : ℚ) : ℝ) +
        Real.sqrt
          ((((2 : ℚ) ^ H.card - 1) * epsilon ^ 2 : ℚ) : ℝ) / 2 := by
  apply cyclicTV_le_allOrderEnvelope N H liouvillePositiveBool epsilon hr
  exact (liouvilleEnvelope_iff_generic N H epsilon).mp henvelope

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
```
