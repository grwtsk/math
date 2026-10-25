/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source comparison: Levent Alpöge and Ralph Furman (2026),
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637, Theorems B and C and Section 1 counting conventions.
Independent formal source: Claude (Anthropic), Apache-2.0,
anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011,
zeta23/Zeta23/Statement.lean and zeta23/Zeta23/FinalMult.lean.
This local file proves only a statement-alignment and an exact finite
multiplicity-defect criterion using GRWTSK's canonical zeta divisor.
It imports no Anthropic formalization and no global density result.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit
import Mathlib.Tactic

/-!
# Actual zeta-multiplicity bridge for the two-thirds/five-sixths results

The Alpöge–Furman/Claude development defines N(T,2T) as the sum of
`analyticOrderAt riemannZeta` over the actual zeros satisfying
T < Im rho <= 2T; N_d counts distinct points, and N_0^s counts
multiplicity-one critical-line points.

GRWTSK already has a source-complete `ZeroPoint` type, a finite
`positiveHeightHead`, and the actual `multiplicity` of every
nontrivial Riemann zeta zero. This file reuses those types: it does
not invent finite zeros or substitute sample weights for zeta orders.

The exact multiplicity excess

  E(T) := sum_{T < Im rho <= 2T} (multiplicity rho - 1)

satisfies N(T,2T) = N_d(T,2T) + E(T). Thus the finite
five-sixths bound is equivalent to 6 E(T) <= N(T,2T).

A separate finite positive-weight counterexample demonstrates that
a two-thirds *simple-zero* count alone does not imply five-sixths
distinctness: the two paper theorems require separate analytic
information. There is no claim of any zero-density estimate here.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.TwoThirdsCanonicalMultiplicityBridge

open CanonicalZeroDivisor PositiveHeightCountDeficit
open scoped BigOperators

noncomputable section

/-- The paper's open-strip zero predicate, expressed using Mathlib's
actual `riemannZeta`. This is distinct from GRWTSK's RH-style
trivial-zero exclusion until the comparison theorem below. -/
def PaperStripZero (z : ℂ) : Prop :=
  riemannZeta z = 0 ∧ 0 < z.re ∧ z.re < 1

/-- Exact logical alignment of the paper's strip-zero predicate with
GRWTSK's original nontrivial-zero predicate, using actual zeta zero
reflection for the reverse direction. -/
theorem paperStripZero_iff_nontrivial (z : ℂ) :
    PaperStripZero z ↔ NontrivialZetaZero z := by
  constructor
  · rintro ⟨hz, hleft, hright⟩
    refine ⟨hz, ?_, ?_⟩
    · rintro ⟨n, hn⟩
      have hre := congrArg Complex.re hn
      have hnnonneg : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
      simp [Complex.mul_re] at hre
      linarith
    · intro hone
      have hre := congrArg Complex.re hone
      simp at hre
      linarith
  · intro h
    have hs := h.mem_critical_strip
    exact ⟨h.1, hs.1, hs.2⟩

/-- Strict lower and closed upper height, exactly as in the paper's
dyadic N(T,2T), using the repository's complete positive-height head.
The source proves the head finite; no finite-support assumption is
introduced by the consumer. -/
def dyadicHead (T : ℝ) : Finset ZeroPoint := by
  classical
  exact (positiveHeightHead (2 * T)).filter (fun z => T < z.1.im)

/-- Exact boundaries, including T itself being EXCLUDED. -/
@[simp]
theorem mem_dyadicHead (T : ℝ) (z : ZeroPoint) :
    z ∈ dyadicHead T ↔
      0 < z.1.im ∧ z.1.im ≤ 2 * T ∧ T < z.1.im := by
  classical
  simp only [dyadicHead, Finset.mem_filter, mem_positiveHeightHead]
  tauto

/-- The analytic paper's definition of a dyadic zero window. -/
def paperDyadicWindow (T : ℝ) : Set ℂ :=
  {z | PaperStripZero z ∧ T < z.im ∧ z.im ≤ 2 * T}

/-- Direct source-to-paper window alignment. The theorem does not
assert equality of the two repository's named count constants without
an external toolchain-compatible import/comparison. -/
theorem dyadicHead_iff_paperDyadicWindow
    (T : ℝ) (hT : 0 ≤ T) (z : ZeroPoint) :
    z ∈ dyadicHead T ↔ z.1 ∈ paperDyadicWindow T := by
  constructor
  · intro hz
    obtain ⟨_, hupper, hlower⟩ := (mem_dyadicHead T z).mp hz
    exact ⟨(paperStripZero_iff_nontrivial z.1).mpr z.2, hlower, hupper⟩
  · rintro ⟨_, hlower, hupper⟩
    exact (mem_dyadicHead T z).mpr
      ⟨lt_of_le_of_lt hT hlower, hupper, hlower⟩

/-- The exact multiplicity-weighted count of actual positive-height
nontrivial zeta zeros in the paper's dyadic window. -/
def dyadicCount (T : ℝ) : ℕ :=
  ∑ z ∈ dyadicHead T, multiplicity z

/-- The same actual finite set, with each distinct zero counted once. -/
def dyadicDistinctCount (T : ℝ) : ℕ :=
  (dyadicHead T).card

/-- Every actual zeta-zero order is positive, so the subtraction of
one counts precisely its extra multiplicity rather than truncating
an unsupported or possibly zero annotation. -/
def dyadicMultiplicityExcess (T : ℝ) : ℕ :=
  ∑ z ∈ dyadicHead T, (multiplicity z - 1)

/-- Multiplicity-one critical-line atoms from that same dyadic head.
This does not count higher-multiplicity critical-line zeros as simple. -/
def dyadicSimpleLineCount (T : ℝ) : ℕ := by
  classical
  exact ((dyadicHead T).filter (fun z =>
    z.1.re = 1 / 2 ∧ multiplicity z = 1)).card

/-- Source-exact count identity, not a comparison of invented
finite zero weights. -/
theorem dyadicCount_eq_distinct_add_excess (T : ℝ) :
    dyadicCount T = dyadicDistinctCount T + dyadicMultiplicityExcess T := by
  classical
  have hterm : ∀ z ∈ dyadicHead T,
      multiplicity z = 1 + (multiplicity z - 1) := by
    intro z _
    have hpositive := multiplicity_pos z
    omega
  unfold dyadicCount dyadicDistinctCount dyadicMultiplicityExcess
  calc
    (∑ z ∈ dyadicHead T, multiplicity z) =
        ∑ z ∈ dyadicHead T, (1 + (multiplicity z - 1)) := by
          apply Finset.sum_congr rfl
          intro z hz
          exact hterm z hz
    _ = (dyadicHead T).card +
          ∑ z ∈ dyadicHead T, (multiplicity z - 1) := by
          rw [Finset.sum_add_distrib]
          simp

/-- The paper's finite 5/6 distinct inequality is EQUIVALENT to
the concrete one-sixth upper budget on actual multiplicity excess.

This is a missing-supplier criterion, not the proof of the bound. -/
theorem fiveSixths_distinct_iff_excess_budget (T : ℝ) :
    5 * dyadicCount T ≤ 6 * dyadicDistinctCount T ↔
      6 * dyadicMultiplicityExcess T ≤ dyadicCount T := by
  rw [dyadicCount_eq_distinct_add_excess]
  omega

/-- An independent multiplicity-excess supplier would yield the
non-asymptotic 5/6 inequality at precisely the same source T.
No claim is made that such a supplier exists for all dyadic windows. -/
theorem fiveSixths_distinct_of_excess_budget (T : ℝ)
    (hExcess : 6 * dyadicMultiplicityExcess T ≤ dyadicCount T) :
    5 * dyadicCount T ≤ 6 * dyadicDistinctCount T :=
  (fiveSixths_distinct_iff_excess_budget T).mpr hExcess

/-- The simple-on-line count is a subset of the distinct count,
with no presumption about higher multiplicities or off-line zeros. -/
theorem simpleLineCount_le_distinctCount (T : ℝ) :
    dyadicSimpleLineCount T ≤ dyadicDistinctCount T := by
  classical
  unfold dyadicSimpleLineCount dyadicDistinctCount
  apply Finset.card_le_card
  intro z hz
  exact (Finset.mem_filter.mp hz).1

/-- What follows purely combinatorially from a finite 2/3 simple-line
bound: at least 2/3 are distinct, not automatically 5/6. -/
theorem twoThirds_simple_implies_twoThirds_distinct (T : ℝ)
    (hSimple : 2 * dyadicCount T ≤ 3 * dyadicSimpleLineCount T) :
    2 * dyadicCount T ≤ 3 * dyadicDistinctCount T := by
  have hsubset := simpleLineCount_le_distinctCount T
  omega

/-- Hostile *abstract finite-weight* control (NOT claimed to be zeta
zeros): six weight-one labels and one weight-three label give
N=9, simple=6, distinct=7. The two-thirds bound holds, but
the five-sixths distinct bound fails. A separate multiplicity-defect
supplier is mathematically necessary for the stronger implication. -/
theorem abstract_simple_twoThirds_not_force_fiveSixths :
    ∃ w : Fin 7 → ℕ,
      (∀ i, 0 < w i) ∧
      2 * (∑ i, w i) ≤
        3 * (Finset.univ.filter (fun i : Fin 7 => w i = 1)).card ∧
      ¬ (5 * (∑ i, w i) ≤ 6 * Fintype.card (Fin 7)) := by
  refine ⟨fun i => if i = 0 then 3 else 1, ?_⟩
  decide

end

end GRWTSK.RiemannHypothesis.TwoThirdsCanonicalMultiplicityBridge
