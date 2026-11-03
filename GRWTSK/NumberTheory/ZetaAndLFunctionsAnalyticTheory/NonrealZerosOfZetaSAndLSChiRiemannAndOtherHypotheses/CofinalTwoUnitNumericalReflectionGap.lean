/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.AnthropicMontgomeryTaylorNumericalGate
import Mathlib

/-!
# Cofinal two-unit count-gap certificates and optimized multiplicity limits

The original Riemann-zeta zero subtype, analytic multiplicity,
positive-height count and functional-equation reflection are unchanged.
A genuine strict count gap at arbitrarily large heights implies RH;
the converse has a noncomputable ideal witness under RH. NO such
numerical family is constructed here.

The optimized 269/400 and 669/800 ratio statements below remain
CONDITIONAL at each specific dyadic window. They do not follow
pointwise from an asymptotic external two-thirds result.
All candidate proofs require full Lean acceptance before promotion.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CofinalTwoUnitNumericalReflectionGap

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open TwoThirdsCanonicalMultiplicityBridge
open TwoThirdsPrismaticOrientationGate
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open GRWTSK.RiemannHypothesis.AnthropicMontgomeryTaylorNumericalGate
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget

/-- A strict upper-minus-certified-on-line count gap on a cofinal family
of exact positive-height zeta-zero inventories. This is a target Prop,
not an assertion of an actual numerical certificate sequence. -/
def CofinalCertifiedTwoUnitGap : Prop :=
  ∀ B : ℕ, ∃ H : ℕ, B ≤ H ∧
    ∃ (known : Finset ZeroPoint) (credit upper : ℕ),
      known ⊆ positiveHeightHead (H : ℝ) ∧
      (∀ z ∈ known, z.1.re = 1 / 2) ∧
      credit ≤ mass known multiplicity ∧
      positiveHeightCount (H : ℝ) ≤ upper ∧
      upper < credit + 2

/-- Every source zero is eventually covered by a later finite
strict-gap certificate; this uses the existing monotone RHThrough. -/
theorem riemannHypothesis_of_cofinal_two_unit_gap
    (h : CofinalCertifiedTwoUnitGap) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_all_heights.mpr
  intro B
  obtain ⟨H, hBH, known, credit, upper, hsubset, honline,
    hcredit, hupper, hstrict⟩ := h B
  have hH : RHThrough H :=
    rhThrough_of_positive_credit H known credit upper
      hsubset honline hcredit hupper hstrict
  exact RHThrough.mono hH hBH

/-- Logical converse: under RH the noncomputable complete positive
head is an ideal known inventory. NOT a numerical enumerator. -/
theorem cofinal_two_unit_gap_of_riemannHypothesis
    (h : _root_.RiemannHypothesis) : CofinalCertifiedTwoUnitGap := by
  intro B
  refine ⟨B, le_rfl, positiveHeightHead (B : ℝ),
    positiveHeightCount (B : ℝ), positiveHeightCount (B : ℝ),
    Finset.Subset.rfl, ?_, le_rfl, le_rfl, by omega⟩
  intro z hz
  exact h z.1 z.2.1 z.2.2.1 z.2.2.2

/-- The cofinal certified arithmetic target is RH-equivalent.
No constructor for its forward hypothesis is supplied. -/
theorem cofinal_two_unit_gap_iff_riemannHypothesis :
    CofinalCertifiedTwoUnitGap ↔ _root_.RiemannHypothesis :=
  ⟨riemannHypothesis_of_cofinal_two_unit_gap,
   cofinal_two_unit_gap_of_riemannHypothesis⟩

/-- An off-line actual zero and its reflected mate must be paid in
BOTH optimized count budgets, with their source analytic orders. -/
theorem offLine_reflected_pair_optimized_counts (T : ℝ)
    (hRatio : RationalMontgomeryTaylorAt T)
    (z : ZeroPoint) (hz : z ∈ dyadicHead T)
    (hoff : z.1.re ≠ 1 / 2) :
    400 * (multiplicity z + multiplicity (reflected z)) ≤
        131 * dyadicCount T ∧
    800 * ((multiplicity z - 1) + (multiplicity (reflected z) - 1)) ≤
        131 * dyadicCount T := by
  classical
  have href : reflected z ∈ dyadicHead T :=
    reflected_mem_dyadicHead T z hz
  have hdistinct : z ≠ reflected z := distinct_of_off_line z hoff
  have hzres : z ∈ dyadicResidualHead T :=
    Finset.mem_filter.mpr ⟨hz, fun hs => hoff hs.1⟩
  have hrefres : reflected z ∈ dyadicResidualHead T :=
    Finset.mem_filter.mpr
      ⟨href, fun hs => reflected_offLine z hoff hs.1⟩
  have hpairRes :
      multiplicity z + multiplicity (reflected z) ≤
        dyadicResidualMass T := by
    simpa only [dyadicResidualMass, mass] using
      (pair_le_mass (dyadicResidualHead T) multiplicity
        z (reflected z) hzres hrefres hdistinct)
  have hpairEx :
      (multiplicity z - 1) + (multiplicity (reflected z) - 1) ≤
        dyadicMultiplicityExcess T := by
    simpa only [dyadicMultiplicityExcess, mass] using
      (pair_le_mass (dyadicHead T)
        (fun w : ZeroPoint => multiplicity w - 1)
        z (reflected z) hz href hdistinct)
  have hres := residual_fourhundred_le_onehundredthirtyone T hRatio.1
  have hex := excess_eighthundred_le_onehundredthirtyone T hRatio.2
  constructor <;> omega

/-- Equal reflected analytic orders are a visible EXTRA premise. -/
theorem equal_multiplicity_reflected_pair_requirements (T : ℝ)
    (hRatio : RationalMontgomeryTaylorAt T)
    (z : ZeroPoint) (hz : z ∈ dyadicHead T)
    (hoff : z.1.re ≠ 1 / 2)
    (hmult : multiplicity (reflected z) = multiplicity z) :
    800 * multiplicity z ≤ 131 * dyadicCount T ∧
    1600 * (multiplicity z - 1) ≤ 131 * dyadicCount T := by
  obtain ⟨hres, hex⟩ :=
    offLine_reflected_pair_optimized_counts T hRatio z hz hoff
  have hpos := multiplicity_pos z
  rw [hmult] at hres hex
  constructor <;> omega

/-- Synthetic natural-number count model, NOT actual zeta zeros:
two exceptional simple labels are compatible with both ratios for
EVERY total count N >= 7. This demonstrates an arithmetic nonimplication. -/
theorem arbitrary_large_abstract_pair_satisfies_optimized_ratios
    (N : ℕ) (hN : 7 ≤ N) :
    269 * N ≤ 400 * (N - 2) ∧
    669 * N ≤ 800 * N ∧
    (N - 2) + 2 = N := by
  omega

/-- The strict two-unit exclusion is sharp. -/
theorem equality_two_unit_gap_is_not_strict (credit : ℕ) :
    ¬ credit + 2 < credit + 2 := by
  omega

end GRWTSK.RiemannHypothesis.CofinalTwoUnitNumericalReflectionGap
