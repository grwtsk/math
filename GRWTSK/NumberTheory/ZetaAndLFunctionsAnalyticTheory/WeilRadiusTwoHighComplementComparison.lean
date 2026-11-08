/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleFourierFunctionalReturn
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

/-!
# Radius-two high-complement comparison with the original negative pole

The source `OddLiteralWindow.HighFloor 2 beta (1/5) 64` concerns the
original shifted odd CORE. The full Weil form subtracts twice the square
of the literal sinh pole moment. The high-pole Fourier return does not
prove that core floor, nor control the signed finite-middle prime block.
It can instead pay the entire negative pole on the same high complement.

For the zero-extended odd L2 source on [-2,2], vanishing of the FIRST 64
source sine coordinates gives poleMoment(g)^2 ≤ mass(g)/50. This is a
whole-complement estimate: the return uses the complete squared pole
coefficient tail and the source-normalized bilinear Parseval theorem,
not a finite arithmetic check or an assumed pole budget. The elementary
numeric calculation uses sinh(1) ≤6/5 and pi>=3 in the source price
8*sinh(1)^2/(64*pi^2). Thus the original Weil form lies between its core
minus mass/25 and its core, for every beta.

The final consumer shows what a FUTURE checked 1/5 core floor would buy:
a 4/25 physical-mass floor for the pole-inclusive form on this complement.
Its core HighFloor premise remains explicit. No cofinal StageLower,
low/mixed-block sign, RH, or Dirichlet GRH claim follows.

Boundary probes: N=0 cannot use the 1/N pole estimate; deleting the
first 64-coordinate condition would permit the supported sinh vector,
whose pole coupling cannot be bounded by this high-tail price. Support
and the exact sqrt(T) sine normalization are essential. The negative
rank-one sign remains -2, with physical Lebesgue mass and no character,
periodic or weighted surrogate. At growing radius the pole price itself
grows; this fixed-window comparison is not a vanishing cofinal error.

Mathematical comparison: standard Fourier-tail Cauchy--Schwarz, as
returned by `OddPoleFourierFunctionalReturn.highPoleTailBudget_of_source`.
Primary normalization is Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20), through the unchanged literal sources.
No theorem-level novelty or independent analytical review is asserted.
Formal build, exact-target kernel replay and axiom assurance are recorded
separately in grwtsk/noeaaeue docs/verification.md.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHighComplementComparison

open OddRootProjection OddHighComplement OddSineParseval OddWrapEnergy
open OddLiteralWindow OddLiteralCofinalMassFloor
open OddHighPoleSectorReturn OddPoleFourierFunctionalReturn

/-- Numeric upper bound for the ACTUAL full pole-tail price at T=2,N=64. -/
theorem poleTailPrice_two_sixtyFour_le :
    poleTailPrice 2 64 ≤ (1/50 : ℝ) := by
  have he : Real.exp 1 ≤ (68/25 : ℝ) :=
    Real.exp_one_lt_d9.le.trans (by norm_num)
  have he3 : Real.exp 1 ≤ (3 : ℝ) := he.trans (by norm_num)
  have hen : (1/3 : ℝ) ≤ Real.exp (-1) := by
    rw [Real.exp_neg]
    simpa only [one_div] using one_div_le_one_div_of_le (Real.exp_pos 1) he3
  have hs0 : 0 ≤ Real.sinh 1 := Real.sinh_nonneg_iff.mpr (by norm_num)
  have hs : Real.sinh 1 ≤ (6/5 : ℝ) := by
    rw [Real.sinh_eq]
    linarith
  have hss : (Real.sinh 1)^2 ≤ (36/25 : ℝ) := by nlinarith
  have hp : (3 : ℝ) ≤ Real.pi := by linarith [Real.pi_gt_d2]
  have hpp : (9 : ℝ) ≤ Real.pi^2 := by nlinarith
  unfold poleTailPrice
  norm_num only [show (2 : ℝ)/2 = 1 by norm_num, Nat.cast_ofNat]
  apply (div_le_iff₀ (by positivity)).2
  nlinarith

/-- The entire original pole moment, paid from actual source Fourier
coefficients for all supported odd L2 high-complement tests. -/
theorem poleMoment_sq_le_one_fiftieth
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2) 2 → g t = 0)
    (hhead : ∀ n < 64, sineCoefficient 2 g (n+1) = 0) :
    (oddPoleMoment g)^2 ≤ (1/50 : ℝ) * (∫ t : ℝ, ‖g t‖^2) := by
  have hpole := highPoleTailBudget_of_source 2 (by norm_num)
    (N := 64) (by norm_num) hg hgo hgs hhead
  have hmass : physicalMass g = (∫ t : ℝ, ‖g t‖^2) := by
    simp only [physicalMass, Real.norm_eq_abs, sq_abs]
  change (oddPoleMoment g)^2 ≤ poleTailPrice 2 64 * physicalMass g at hpole
  rw [hmass] at hpole
  exact hpole.trans (mul_le_mul_of_nonneg_right poleTailPrice_two_sixtyFour_le
    (integral_nonneg fun t => sq_nonneg ‖g t‖))

/-- Actual full/core comparison, with the original negative rank-one pole
paid on the whole first 64-vanishing complement. No core floor is assumed. -/
theorem weil_between_core_sub_mass_and_core
    (β : ℝ) {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2) 2 → g t = 0)
    (hhead : ∀ n < 64, sineCoefficient 2 g (n+1) = 0) :
    shiftedOddCoreEnergy 2 β g - (1/25 : ℝ) * (∫ t : ℝ, ‖g t‖^2)
        ≤ shiftedOddWeilEnergy 2 β g ∧
      shiftedOddWeilEnergy 2 β g ≤ shiftedOddCoreEnergy 2 β g := by
  have hpole := poleMoment_sq_le_one_fiftieth hg hgo hgs hhead
  change shiftedOddCoreEnergy 2 β g - (1/25 : ℝ) * (∫ t : ℝ, ‖g t‖^2)
      ≤ shiftedOddCoreEnergy 2 β g - 2 * (oddPoleMoment g)^2 ∧
    shiftedOddCoreEnergy 2 β g - 2 * (oddPoleMoment g)^2
      ≤ shiftedOddCoreEnergy 2 β g
  constructor <;> nlinarith [sq_nonneg (oddPoleMoment g)]

/-- A checked 1/5 CORE floor would imply 4/25 for the original full Weil
form on the SAME high complement. The core HighFloor remains a premise. -/
theorem weil_high_floor_of_core
    (β : ℝ) (hcore : HighFloor 2 β (1/5) 64)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2) 2 → g t = 0)
    (hhead : ∀ n < 64, sineCoefficient 2 g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    (4/25 : ℝ) * (∫ t : ℝ, ‖g t‖^2) ≤ shiftedOddWeilEnergy 2 β g := by
  have hf := hcore hg hgm hgo hgs hhead henergy
  have hc := (weil_between_core_sub_mass_and_core β hg hgo hgs hhead).1
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHighComplementComparison
