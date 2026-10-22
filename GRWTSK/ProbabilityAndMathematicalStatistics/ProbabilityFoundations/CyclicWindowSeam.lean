/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Upstream Mathlib declarations retain their original attribution/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#658; stacked parent #654 / draft PR #655.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternBoundaryTV
import Mathlib

/-!
# Exact finite cyclic-window seam and labeled pattern comparison

For a binary sequence a, the ordinary root-n window at offset h reads
a (n + h). The cyclic window on N roots reads a ((n + h) % N) and is
labeled by the same ORIGINAL sequence a, not a random or unrelated
periodic source.

If all selected offsets are bounded by r <= N, the only possible
disagreement roots belong to the explicit last-r-root seam
Finset.Ico (N - r) N. The seam has exact size r. On all other roots
the addition stays below N, so modulo reduction changes no label.

Combining this exact source-local fact with the inherited full-event
finite total-variation theorem yields TV <= r/N for N > 0.

No vanishing-boundary limit, Liouville or Mobius arithmetic estimate,
Chowla conjecture, ergodicity, Bernoulli measure, GUE, or RH theorem
is claimed. The source remains unelaborated and not kernel audited.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicSeam

open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BoundaryTV

/-- Precisely the final r roots of the length-N range, when r <= N.
For r > N the saturated definition is still a subset of the range;
the exact cardinality theorem below explicitly requires r <= N. -/
def cyclicSeam (N r : ℕ) : Finset ℕ :=
  Finset.Ico (N - r) N

/-- Every seam element is an original root, with no extra virtual roots. -/
theorem cyclicSeam_subset_range (N r : ℕ) :
    cyclicSeam N r ⊆ Finset.range N := by
  intro n hn
  change n ∈ Finset.Ico (N - r) N at hn
  exact Finset.mem_range.mpr (Finset.mem_Ico.mp hn).2

/-- The exceptional seam has cardinality exactly r, including r=0 and r=N,
but ONLY under the explicit bound r <= N. -/
theorem cyclicSeam_card (N r : ℕ) (hr : r ≤ N) :
    (cyclicSeam N r).card = r := by
  simp only [cyclicSeam, Nat.card_Ico]
  omega

/-- No roots are marked exceptional when the maximum selected offset is 0. -/
@[simp] theorem cyclicSeam_zero (N : ℕ) :
    cyclicSeam N 0 = ∅ := by
  simp [cyclicSeam]

/-- Root n in the original range but outside the seam precedes the cutoff
N-r. This preserves the exact strict endpoint n < N-r. -/
theorem root_lt_cutoff_of_not_mem_seam
    {N r n : ℕ}
    (hn : n ∈ Finset.range N)
    (hgood : n ∉ cyclicSeam N r) :
    n < N - r := by
  have hnN : n < N := Finset.mem_range.mp hn
  by_contra hbad
  apply hgood
  change n ∈ Finset.Ico (N - r) N
  exact Finset.mem_Ico.mpr ⟨by omega, hnN⟩

/-- The ordinary source-root label at an exact selected nonnegative offset. -/
def ordinaryWindow (a : ℕ → Bool) (n h : ℕ) : Bool :=
  a (n + h)

/-- The cyclic source-root label at the SAME original offset, read modulo N.
The probability theorem below separately guards N > 0. -/
def cyclicWindow (a : ℕ → Bool) (N n h : ℕ) : Bool :=
  a ((n + h) % N)

/-- At a good root every selected shift stays strictly inside the window.
In particular, n=N-r-1 can be good, but n=N-r belongs to the seam. -/
theorem ordinaryWindow_eq_cyclic_off
    (a : ℕ → Bool) (shifts : Finset ℕ) (N r : ℕ)
    (hshifts : ∀ h ∈ shifts, h ≤ r) :
    ∀ n ∈ Finset.range N, n ∉ cyclicSeam N r →
      ∀ h ∈ shifts, ordinaryWindow a n h = cyclicWindow a N n h := by
  intro n hn hgood h hh
  have hleft : n < N - r := root_lt_cutoff_of_not_mem_seam hn hgood
  have hshift : h ≤ r := hshifts h hh
  have hnowrap : n + h < N := by omega
  unfold ordinaryWindow cyclicWindow
  rw [Nat.mod_eq_of_lt hnowrap]

/-- **Exact cyclic-sofic finite boundary comparison.**
For a positive horizon and a finite family of shifts bounded by r <= N,
the complete selected Boolean pattern marginal differs in event-total-
variation by at most r / N. No independence or arithmetic cancellation
is assumed. A limiting conclusion additionally needs r/N -> 0 and
separately supplied arithmetic correlation cancellation. -/
theorem finiteTV_ordinary_cyclicWindow_le
    (a : ℕ → Bool) (shifts : Finset ℕ) (N r : ℕ)
    (hN : 0 < N) (hr : r ≤ N)
    (hshifts : ∀ h ∈ shifts, h ≤ r) :
    finiteEventTV (Finset.range N)
        (selectedPattern shifts (ordinaryWindow a))
        (selectedPattern shifts (cyclicWindow a N)) ≤
      (r : ℝ) / (N : ℝ) := by
  classical
  have hroots : 0 < (Finset.range N).card := by
    simpa only [Finset.card_range] using hN
  have hbound :=
    selectedPattern_finiteTV_le_exception_fraction
      (Finset.range N) (cyclicSeam N r) shifts
      (ordinaryWindow a) (cyclicWindow a N)
      (cyclicSeam_subset_range N r) hroots
      (ordinaryWindow_eq_cyclic_off a shifts N r hshifts)
  simpa only [Finset.card_range, cyclicSeam_card N r hr] using hbound

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicSeam
