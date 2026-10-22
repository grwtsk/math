/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Cyclic-window proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBoundaryTriangle
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact cyclic-window collar for finite Boolean sign patterns

Owner: grwtsk/math#630; prior draft PR #638 head
bc40a07d5a15e904e7226694749a60f3622c2d71.

This is an entirely finite statement over the additive cycle Z/NZ
represented by Nat.mod. A finite SET of nonnegative offsets is used as a
finite coordinate type. Its maximum is the finite supremum, including
the value zero on the empty set.

The ordinary arithmetic word and the wrapped word have the SAME roots
0,...,N-1 and complete coordinate labels. If the maximum offset r is
strictly below N, all roots n < N-r have identical complete words;
the exceptional collar [N-r,N) contains exactly r roots. Reusing the
finite Walsh/TV boundary return yields r/N plus the source correlation
energy. No arithmetic cancellation or genuine sofic-limit theorem is
asserted.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

/-- Maximum offset of a finite SET of shifts, with the empty-set
convention max(empty)=0. Duplicate offsets are not distinct coordinates. -/
def cyclicMaxOffset (offsets : Finset ℕ) : ℕ :=
  offsets.sup id

/-- Every selected shift is at most the declared maximum. -/
theorem offset_le_cyclicMaxOffset (offsets : Finset ℕ) (h : ℕ)
    (hh : h ∈ offsets) : h ≤ cyclicMaxOffset offsets := by
  exact Finset.le_sup (f := id) hh

/-- The finite ordinary pattern sampled at arithmetic root n.
Offsets are the complete subtype of the selected finite set. -/
def ordinaryShiftWord (offsets : Finset ℕ) (z : ℕ → Bool)
    (n : ℕ) : {h : ℕ // h ∈ offsets} → Bool :=
  fun h => z (n + h.val)

/-- The same finite word, sampled on the N-cycle with explicit modular
reduction. N>0 is NOT embedded in the definition: it is imposed by the
finite comparison theorem, preventing a hidden divisor-zero assumption. -/
def cyclicShiftWord (N : ℕ) (offsets : Finset ℕ)
    (z : ℕ → Bool) (n : ℕ) : {h : ℕ // h ∈ offsets} → Bool :=
  fun h => z ((n + h.val) % N)

/-- The final r roots that may wrap when the longest shift is r.
This is an actual finite set with exact source-root identities. -/
def cyclicWrapCollar (N : ℕ) (offsets : Finset ℕ) : Finset ℕ :=
  Finset.Ico (N - cyclicMaxOffset offsets) N

/-- An exceptional root belongs to the same 0,...,N-1 sample as
the ordinary and cyclic observations, even before imposing r<N. -/
theorem cyclicWrapCollar_subset_range (N : ℕ) (offsets : Finset ℕ) :
    cyclicWrapCollar N offsets ⊆ Finset.range N := by
  intro n hn
  change n ∈ Finset.Ico (N - cyclicMaxOffset offsets) N at hn
  exact Finset.mem_range.mpr (Finset.mem_Ico.mp hn).2

/-- Exact collar cardinality, not merely an asymptotic estimate:
when the maximum shift does not exceed N, the collar has r roots. -/
theorem cyclicWrapCollar_card (N : ℕ) (offsets : Finset ℕ)
    (hr : cyclicMaxOffset offsets ≤ N) :
    (cyclicWrapCollar N offsets).card = cyclicMaxOffset offsets := by
  unfold cyclicWrapCollar
  rw [Nat.card_Ico]
  omega

/-- Every selected coordinate in every root strictly before the
collar has the identical ordinary and cyclic Boolean label. The
agreement is at complete-word level, not just after unlabelled
graph comparison or averaging. -/
theorem ordinary_eq_cyclic_off_collar
    (N : ℕ) (offsets : Finset ℕ) (z : ℕ → Bool)
    (hr : cyclicMaxOffset offsets < N)
    (n : ℕ) (hn : n ∈ Finset.range N)
    (hgood : n ∉ cyclicWrapCollar N offsets) :
    ordinaryShiftWord offsets z n = cyclicShiftWord N offsets z n := by
  have hnN : n < N := Finset.mem_range.mp hn
  have hfirst : n < N - cyclicMaxOffset offsets := by
    by_contra hnot
    apply hgood
    change n ∈ Finset.Ico (N - cyclicMaxOffset offsets) N
    exact Finset.mem_Ico.mpr ⟨by omega, hnN⟩
  funext h
  have hh : h.val ≤ cyclicMaxOffset offsets :=
    offset_le_cyclicMaxOffset offsets h.val h.property
  have hnowrap : n + h.val < N := by omega
  change z (n + h.val) = z ((n + h.val) % N)
  rw [Nat.mod_eq_of_lt hnowrap]

/-- Empty shifts produce an empty exceptional collar. In particular,
the zero-coordinate Boolean word has no wrap defect. -/
theorem empty_offsets_zero_collar (N : ℕ) :
    cyclicMaxOffset (∅ : Finset ℕ) = 0 ∧
      cyclicWrapCollar N (∅ : Finset ℕ) = ∅ := by
  constructor
  · simp [cyclicMaxOffset]
  · simp [cyclicWrapCollar, cyclicMaxOffset]

/-- The intended exact finite scale transition on a cycle. This
consumes the already source-drafted typed finite Walsh/boundary
triangle and CHARGES precisely the r/N exceptional-root fraction.

The energy remains that of the ordinary source windows, includes all
nonempty subsets of the shift-coordinate type, and has no assumed
cancellation estimate. If r grows proportionally to N, the error
need not vanish. This is not a GUE or RH implication. -/
theorem cyclicWalshTV_bound (N : ℕ) (offsets : Finset ℕ)
    (z : ℕ → Bool) (hr : cyclicMaxOffset offsets < N) :
    (totalVariationFromUniform (Finset.range N)
       (cyclicShiftWord N offsets z) : ℝ) ≤
      ((cyclicMaxOffset offsets : ℚ) / (N : ℚ) : ℝ) +
        Real.sqrt
          (nonemptyCorrelationEnergy (Finset.range N)
             (ordinaryShiftWord offsets z) : ℝ) / 2 := by
  classical
  have hN : 0 < N := by omega
  have hroots : 0 < (Finset.range N).card := by
    simpa only [Finset.card_range] using hN
  have hsub : cyclicWrapCollar N offsets ⊆ Finset.range N :=
    cyclicWrapCollar_subset_range N offsets
  have hmatch :
      ∀ n ∈ Finset.range N, n ∉ cyclicWrapCollar N offsets →
        ordinaryShiftWord offsets z n = cyclicShiftWord N offsets z n := by
    intro n hn hgood
    exact ordinary_eq_cyclic_off_collar N offsets z hr n hn hgood
  have hreturn :=
    finiteWalshBoundary_return
      (ι := {h : ℕ // h ∈ offsets})
      (Finset.range N) (cyclicWrapCollar N offsets)
      (ordinaryShiftWord offsets z) (cyclicShiftWord N offsets z)
      hroots hsub hmatch
  have hcard :
      (cyclicWrapCollar N offsets).card = cyclicMaxOffset offsets :=
    cyclicWrapCollar_card N offsets (Nat.le_of_lt hr)
  simpa only [Finset.card_range, hcard] using hreturn

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
