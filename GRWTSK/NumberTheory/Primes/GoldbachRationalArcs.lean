/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Concrete finite rational arcs for the Goldbach circle method

For a denominator cutoff `Q`, the index set consists of reduced fractions
`a / q` with `0 ≤ a < q ≤ Q`. For target `N`, the radius is fixed as

`Q / (q * (N + 1))`.

Each rational neighborhood is periodized by the three adjacent lifts with
centers `a/q`, `a/q + 1`, and `a/q - 1`. This is sufficient before clipping
to the unit interval because every reduced center lies in `[0,1)`.

The family is finite and measurable. No disjointness, approximation theorem,
minor-arc estimate, singular-series convergence, or Goldbach theorem is
asserted.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachRationalArcs

open scoped BigOperators Real
open Set

noncomputable section

/-- Reduced rational indices `(a,q)` with `0 ≤ a < q ≤ Q`. -/
def goldbachRationalArcIndices (Q : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.range (Q + 1)).product (Finset.range (Q + 1))).filter
    (fun aq => 0 < aq.2 ∧ aq.1 < aq.2 ∧ Nat.Coprime aq.1 aq.2)

/-- Exact membership conditions for the finite rational index family. -/
theorem mem_goldbachRationalArcIndices {Q a q : ℕ} :
    (a, q) ∈ goldbachRationalArcIndices Q ↔
      a ≤ Q ∧ q ≤ Q ∧ 0 < q ∧ a < q ∧ Nat.Coprime a q := by
  simp only [goldbachRationalArcIndices, Finset.mem_filter,
    Finset.product_eq_sprod, Finset.mem_product, Finset.mem_range, Nat.lt_succ_iff,
    Prod.fst, Prod.snd]
  tauto

/-- The zero denominator cutoff contains no rational indices. -/
theorem goldbachRationalArcIndices_zero :
    goldbachRationalArcIndices 0 = ∅ := by
  ext aq
  rcases aq with ⟨a, q⟩
  simp [mem_goldbachRationalArcIndices]
  omega

/-- The reduced zero class at denominator one is present once `Q ≥ 1`. -/
theorem zero_one_mem_goldbachRationalArcIndices {Q : ℕ} (hQ : 1 ≤ Q) :
    (0, 1) ∈ goldbachRationalArcIndices Q := by
  rw [mem_goldbachRationalArcIndices]
  exact ⟨Nat.zero_le _, hQ, by omega, by omega, by norm_num⟩

/-- The reduced one-half class is present once `Q ≥ 2`. -/
theorem one_two_mem_goldbachRationalArcIndices {Q : ℕ} (hQ : 2 ≤ Q) :
    (1, 2) ∈ goldbachRationalArcIndices Q := by
  rw [mem_goldbachRationalArcIndices]
  exact ⟨by omega, hQ, by omega, by omega, by norm_num⟩

/-- The real center represented by a natural reduced fraction. -/
def goldbachRationalArcCenter (a q : ℕ) : ℝ :=
  (a : ℝ) / (q : ℝ)

/-- The fixed radius used by the finite rational-arc family. The target is
shifted to `N + 1` so the expression remains defined at every natural target. -/
def goldbachRationalArcRadius (Q N q : ℕ) : ℝ :=
  (Q : ℝ) / ((q : ℝ) * ((N + 1 : ℕ) : ℝ))

/-- Every declared radius is nonnegative. -/
theorem goldbachRationalArcRadius_nonneg (Q N q : ℕ) :
    0 ≤ goldbachRationalArcRadius Q N q := by
  unfold goldbachRationalArcRadius
  exact div_nonneg (by positivity) (mul_nonneg (by positivity) (by positivity))

/-- Positive cutoff and denominator give a strictly positive radius. -/
theorem goldbachRationalArcRadius_pos {Q N q : ℕ}
    (hQ : 0 < Q) (hq : 0 < q) :
    0 < goldbachRationalArcRadius Q N q := by
  unfold goldbachRationalArcRadius
  have hQ' : (0 : ℝ) < (Q : ℝ) := by exact_mod_cast hQ
  have hq' : (0 : ℝ) < (q : ℝ) := by exact_mod_cast hq
  have hN' : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  exact div_pos hQ' (mul_pos hq' hN')

/-- A rational neighborhood together with the two adjacent period lifts.
The finite three-lift form is used only before clipping to `(0,1]`. -/
def goldbachPeriodizedRationalArc
    (Q N a q : ℕ) : Set ℝ :=
  let c := goldbachRationalArcCenter a q
  let r := goldbachRationalArcRadius Q N q
  Set.Icc (c - r) (c + r) ∪
    (Set.Icc (c + 1 - r) (c + 1 + r) ∪
      Set.Icc (c - 1 - r) (c - 1 + r))

/-- Every raw periodized rational arc is measurable. -/
theorem measurable_goldbachPeriodizedRationalArc
    (Q N a q : ℕ) :
    MeasurableSet (goldbachPeriodizedRationalArc Q N a q) := by
  unfold goldbachPeriodizedRationalArc
  exact measurableSet_Icc.union
    (measurableSet_Icc.union measurableSet_Icc)

/-- The central lift belongs to its own raw arc. -/
theorem goldbachRationalArcCenter_mem
    (Q N a q : ℕ) :
    goldbachRationalArcCenter a q ∈
      goldbachPeriodizedRationalArc Q N a q := by
  unfold goldbachPeriodizedRationalArc
  refine Or.inl ?_
  constructor <;>
    linarith [goldbachRationalArcRadius_nonneg Q N q]

/-- The `+1` lift of the center belongs to the periodized raw arc. -/
theorem goldbachRationalArcCenter_add_one_mem
    (Q N a q : ℕ) :
    goldbachRationalArcCenter a q + 1 ∈
      goldbachPeriodizedRationalArc Q N a q := by
  unfold goldbachPeriodizedRationalArc
  refine Or.inr (Or.inl ?_)
  constructor <;>
    linarith [goldbachRationalArcRadius_nonneg Q N q]

/-- The `-1` lift of the center belongs to the periodized raw arc. -/
theorem goldbachRationalArcCenter_sub_one_mem
    (Q N a q : ℕ) :
    goldbachRationalArcCenter a q - 1 ∈
      goldbachPeriodizedRationalArc Q N a q := by
  unfold goldbachPeriodizedRationalArc
  refine Or.inr (Or.inr ?_)
  constructor <;>
    linarith [goldbachRationalArcRadius_nonneg Q N q]

/-- The finite union of all periodized reduced rational arcs. -/
def goldbachRationalMajorRegion (Q N : ℕ) : Set ℝ :=
  ⋃ aq ∈ goldbachRationalArcIndices Q,
    goldbachPeriodizedRationalArc Q N aq.1 aq.2

/-- Membership in the raw major region has one exact reduced-fraction witness. -/
theorem mem_goldbachRationalMajorRegion {Q N : ℕ} {x : ℝ} :
    x ∈ goldbachRationalMajorRegion Q N ↔
      ∃ aq ∈ goldbachRationalArcIndices Q,
        x ∈ goldbachPeriodizedRationalArc Q N aq.1 aq.2 := by
  simp [goldbachRationalMajorRegion]

/-- The raw rational major region is measurable because its index family is finite. -/
theorem measurable_goldbachRationalMajorRegion (Q N : ℕ) :
    MeasurableSet (goldbachRationalMajorRegion Q N) := by
  unfold goldbachRationalMajorRegion
  apply Finset.measurableSet_biUnion
  intro aq haq
  exact measurable_goldbachPeriodizedRationalArc Q N aq.1 aq.2

/-- Every indexed raw arc is contained in the raw major region. -/
theorem goldbachPeriodizedRationalArc_subset_majorRegion
    {Q N a q : ℕ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q) :
    goldbachPeriodizedRationalArc Q N a q ⊆
      goldbachRationalMajorRegion Q N := by
  intro x hx
  exact (mem_goldbachRationalMajorRegion).2
    ⟨(a, q), hindex, hx⟩

/-- At cutoff zero, the raw rational major region is empty. -/
theorem goldbachRationalMajorRegion_zero_cutoff (N : ℕ) :
    goldbachRationalMajorRegion 0 N = ∅ := by
  simp [goldbachRationalMajorRegion, goldbachRationalArcIndices_zero]

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
