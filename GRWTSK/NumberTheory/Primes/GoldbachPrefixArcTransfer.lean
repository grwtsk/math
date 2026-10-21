/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
import GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Prefix estimates transferred to the existing Goldbach arc budget

Reduced residues use a supplied bound on every untwisted prefix. Non-reduced
residues retain their exact prime-log mass. Period lifts are removed before
the small-angle bound is applied. No prime-distribution estimate is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer

open scoped BigOperators Real
open Set
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy

noncomputable section

/-- The exact small-angle loss at the declared radius, retaining `N/(N+1)`. -/
def goldbachPrefixArcLoss (Q N q : ℕ) : ℝ :=
  1 + 2 * Real.pi * (N : ℝ) * goldbachRationalArcRadius Q N q

theorem goldbachPrefixArcLoss_nonneg (Q N q : ℕ) :
    0 ≤ goldbachPrefixArcLoss Q N q := by
  have hr := goldbachRationalArcRadius_nonneg Q N q
  unfold goldbachPrefixArcLoss
  positivity

/-- Reduced prefix bounds and non-reduced exact correction, charged once. -/
def goldbachPrefixResidueBudget (Q N : ℕ) (B : ℕ → ℕ → ℝ)
    (aq : ℕ × ℕ) (r : ℕ) : ℝ :=
  if aq.2.Coprime r then
    B aq.2 r * goldbachPrefixArcLoss Q N aq.2
  else
    goldbachResiduePrimeLogTotal N aq.2 r

/-- The required distribution supplier has universal target, modulus, residue,
and prefix quantifiers. This definition does not assert existence of a bound. -/
def GoldbachReducedPrefixSupplier (N₀ : ℕ) (Q : ℕ → ℕ)
    (B : ℕ → ℕ → ℕ → ℝ) : Prop :=
  ∀ N, N₀ ≤ N → 2 < N → Even N →
    ∀ q, 0 < q → q ≤ Q N →
      ∀ r, r < q → q.Coprime r →
        0 ≤ B N q r ∧
          ∀ k, k ≤ N → ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B N q r

/-- Clipped three-lift geometry supplies a genuinely small offset and an
integer period. The central offset itself need not be small. -/
theorem exists_small_goldbachArcOffset
    {Q N a q : ℕ} {x : ℝ}
    (hx : x ∈ goldbachClippedRationalArc Q N (a, q)) :
    ∃ β : ℝ, ∃ j : ℤ,
      |β| ≤ goldbachRationalArcRadius Q N q ∧
        goldbachRationalArcOffset a q x = β + (j : ℝ) := by
  have hx' : x ∈ goldbachPeriodizedRationalArc Q N a q := hx.2
  unfold goldbachPeriodizedRationalArc at hx'
  rcases hx' with h | h | h
  · refine ⟨x - goldbachRationalArcCenter a q, 0, ?_, ?_⟩
    · rw [abs_le]
      constructor <;> linarith [h.1, h.2]
    · simp [goldbachRationalArcOffset]
  · refine ⟨x - goldbachRationalArcCenter a q - 1, 1, ?_, ?_⟩
    · rw [abs_le]
      constructor <;> linarith [h.1, h.2]
    · simp only [Int.cast_one, goldbachRationalArcOffset]
      ring
  · refine ⟨x - goldbachRationalArcCenter a q + 1, -1, ?_, ?_⟩
    · rw [abs_le]
      constructor <;> linarith [h.1, h.2]
    · simp only [Int.cast_neg, Int.cast_one, goldbachRationalArcOffset]
      ring

/-- A reduced-residue prefix bound gives the required bound everywhere on a
clipped arc, including its wrapped component. -/
theorem norm_goldbachResidueProgressionDiscrepancy_on_arc_of_prefix
    {Q N a q r : ℕ} {B : ℝ} (hB : 0 ≤ B)
    (hprefix : ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B)
    {x : ℝ} (hx : x ∈ goldbachClippedRationalArc Q N (a, q)) :
    ‖goldbachResidueProgressionDiscrepancy N q r
      (goldbachRationalArcOffset a q x)‖ ≤ B * goldbachPrefixArcLoss Q N q := by
  obtain ⟨β, j, hβ, hoff⟩ := exists_small_goldbachArcOffset hx
  rw [hoff, goldbachResidueProgressionDiscrepancy_add_int]
  exact norm_goldbachResidueProgressionDiscrepancy_le_of_prefix_radius hB hprefix hβ

/-- The supplied prefix family satisfies the existing residue hypotheses;
non-reduced residues are bounded directly by their actual finite prime mass. -/
theorem goldbachPrefixResidueBudget_bounds
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    {aq : ℕ × ℕ} (haq : aq ∈ goldbachRationalArcIndices Q)
    {r : ℕ} (hr : r ∈ Finset.range aq.2) :
    0 ≤ goldbachPrefixResidueBudget Q N B aq r ∧
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ‖goldbachResidueProgressionDiscrepancy N aq.2 r
          (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            goldbachPrefixResidueBudget Q N B aq r := by
  have hmem := mem_goldbachRationalArcIndices.mp haq
  by_cases hc : aq.2.Coprime r
  · obtain ⟨hB, hprefix⟩ := hp aq.2 hmem.2.2.1 hmem.2.1 r
      (Finset.mem_range.mp hr) hc
    simp only [goldbachPrefixResidueBudget, if_pos hc]
    refine ⟨mul_nonneg hB (goldbachPrefixArcLoss_nonneg Q N aq.2), ?_⟩
    intro x hx
    exact norm_goldbachResidueProgressionDiscrepancy_on_arc_of_prefix hB hprefix hx
  · simp only [goldbachPrefixResidueBudget, if_neg hc]
    refine ⟨goldbachResiduePrimeLogTotal_nonneg N aq.2 r, ?_⟩
    intro x hx
    exact norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime N aq.2 r hc _

/-- Integrated major-error budget in the unchanged PR #379 interface. -/
def goldbachPrefixMajorErrorBudget (Q N : ℕ) (B : ℕ → ℕ → ℝ) : ℝ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArcErrorBudget Q N aq (goldbachPrefixResidueBudget Q N B)

/-- The terminal consumer now asks for untwisted prefix bounds; the model,
complete signed minor bound, and strict margin are still separate premises. -/
theorem goldbachCount_pos_of_prefix_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin : goldbachPrefixMajorErrorBudget Q N B + minorError < modelLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_progression_residue_bounds hscale
    (goldbachPrefixResidueBudget Q N B) modelLower minorError hmodel
  · intro aq haq r hr
    exact (goldbachPrefixResidueBudget_bounds B hp haq hr).1
  · intro aq haq x hx r hr
    exact (goldbachPrefixResidueBudget_bounds B hp haq hr).2 x hx
  · exact hminor
  · exact hmargin

/-- Universal tail packaging preserves every even target. It supplies neither
the prefix distribution theorem nor the model/minor estimates. -/
theorem goldbachCount_pos_above_of_prefix_supplier
    {N₀ : ℕ} (Q : ℕ → ℕ) (B : ℕ → ℕ → ℕ → ℝ)
    (hprefix : GoldbachReducedPrefixSupplier N₀ Q B)
    (L T : ℕ → ℝ)
    (hscale : ∀ N, N₀ ≤ N → 2 < N → Even N → 2 * (Q N) ^ 2 < N + 1)
    (hmodel : ∀ N, N₀ ≤ N → 2 < N → Even N →
      L N ≤ (goldbachProgressionArcModelMajorSum (Q N) N).re)
    (hminor : ∀ N, N₀ ≤ N → 2 < N → Even N →
      ‖goldbachRationalMinorContribution (Q N) N‖ ≤ T N)
    (hmargin : ∀ N, N₀ ≤ N → 2 < N → Even N →
      goldbachPrefixMajorErrorBudget (Q N) N (B N) + T N < L N) :
    ∀ N, N₀ ≤ N → 2 < N → Even N → 0 < goldbachCount N := by
  intro N hN htwo heven
  exact goldbachCount_pos_of_prefix_bounds (hscale N hN htwo heven) (B N)
    (hprefix N hN htwo heven) (L N) (T N)
    (hmodel N hN htwo heven) (hminor N hN htwo heven) (hmargin N hN htwo heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
