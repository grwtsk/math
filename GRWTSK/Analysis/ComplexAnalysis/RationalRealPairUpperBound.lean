/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalRealPairAccumulation
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Direct one-sided upper bounds for real conjugate-pair tent sums

The complete conjugate-pair source has an exact rational real center `c` and a
complete analytic radius `e`. The prime consumer needs only the one-sided fact

  source.re <= upper.

Representing that fact as a down-rounded center plus a separately up-rounded
radius introduces two stored quantities. This module instead rounds the endpoint
`c + e` upward once:

  directUpper = upQ bits (c + e).

The resulting endpoint is sound and has less than one dyadic grid unit of final
rounding slack. All analytic pair errors remain unchanged. This does not construct
rows, a zero packet, a passing evaluation, a prime margin, or an RH result.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalRealPairUpperBound

open scoped BigOperators ComplexConjugate
open RationalRoundedArithmetic
open RationalTentEvaluation
open RationalTentAccumulation
open RationalConjugatePairAccumulation
open RationalRealPairAccumulation
open IntervalMellinKernel TentMellinKernel

noncomputable section

/-- Upward-round the complete real endpoint once. -/
def computeUpper
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) : ℚ :=
  upQ bits
    (RationalRealPairAccumulation.sumRealValue x h rows +
      RationalRealPairAccumulation.sumError x h rows)

/-- Accept only admissible rows, a claimed fixed recomputation, and an explicit
upper limit. The limit is useful because the downstream margin consumes an upper
bound rather than a symmetric error ball. -/
def evaluate
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (limit : ℚ) : Option ℚ :=
  if RationalTentAccumulation.Admissible x h rows then
    let upper := computeUpper x h bits rows
    if upper ≤ limit then some upper else none
  else none

/-- Boolean acceptance retains exact claimed-output equality. -/
def verify
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (limit claimed : ℚ) : Bool :=
  decide (evaluate x h bits rows limit = some claimed)

/-- The unrounded analytic endpoint lies below the directed output. -/
theorem base_le_computeUpper
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) :
    ((RationalRealPairAccumulation.sumRealValue x h rows +
      RationalRealPairAccumulation.sumError x h rows : ℚ) : ℝ) ≤
      (computeUpper x h bits rows : ℝ) := by
  unfold computeUpper
  rw [cast_upQ]
  exact (GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.up_bounds bits _).1

/-- Direct endpoint rounding adds strictly less than one dyadic grid unit. -/
theorem computeUpper_lt_base_add_grid
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput) :
    (computeUpper x h bits rows : ℝ) <
      ((RationalRealPairAccumulation.sumRealValue x h rows +
        RationalRealPairAccumulation.sumError x h rows : ℚ) : ℝ) +
        1 / GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.scale bits := by
  unfold computeUpper
  rw [cast_upQ]
  exact (GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring.up_bounds bits _).2

/-- The analytic conjugate-pair source is bounded above by its exact center plus
its unchanged complete pair error. -/
theorem source_re_le_base
    (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    (∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))).re ≤
      ((RationalRealPairAccumulation.sumRealValue x h rows +
        RationalRealPairAccumulation.sumError x h rows : ℚ) : ℝ) := by
  have hs := RationalRealPairAccumulation.sum_sound
    x h rows hg z hz him hcoord
  have hre := (Complex.abs_re_le_norm
    ((∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      (((RationalRealPairAccumulation.sumRealValue x h rows : ℚ) : ℝ) : ℂ))).trans hs
  have hu := (abs_le.mp hre).2
  simp only [Complex.sub_re, Complex.ofReal_re, Rat.cast_add] at hu ⊢
  linarith

/-- One directly rounded rational endpoint bounds the complete real source. -/
theorem computeUpper_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    (∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))).re ≤
      (computeUpper x h bits rows : ℝ) :=
  (source_re_le_base x h rows hg z hz him hcoord).trans
    (base_le_computeUpper x h bits rows)

/-- Acceptance exposes admissibility, the upper-limit check, and the fixed
recomputation. -/
theorem verify_iff
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (limit claimed : ℚ) :
    verify x h bits rows limit claimed = true ↔
      RationalTentAccumulation.Admissible x h rows ∧
      computeUpper x h bits rows ≤ limit ∧
      computeUpper x h bits rows = claimed := by
  unfold verify evaluate
  split_ifs <;> simp_all

/-- An accepted direct endpoint is a sound source upper bound and is no larger
than the requested limit. -/
theorem verify_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (limit claimed : ℚ)
    (accepted : verify x h bits rows limit claimed = true)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    (∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))).re ≤
        (claimed : ℝ) ∧ claimed ≤ limit := by
  obtain ⟨hg, hlimit, hfixed⟩ :=
    (verify_iff x h bits rows limit claimed).mp accepted
  constructor
  · rw [← hfixed]
    exact computeUpper_sound x h bits rows hg z hz him hcoord
  · rw [← hfixed]
    exact hlimit

/-- The accepted requested limit itself is also a sound real upper bound. -/
theorem verify_limit_sound
    (x h : ℚ) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (limit claimed : ℚ)
    (accepted : verify x h bits rows limit claimed = true)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    (∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))).re ≤
        (limit : ℝ) := by
  have hs := verify_sound x h bits rows limit claimed accepted z hz him hcoord
  exact hs.1.trans (by exact_mod_cast hs.2)

end

end GRWTSK.Analysis.ComplexAnalysis.RationalRealPairUpperBound
