/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib mathematics retain upstream authorship/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupSparseExceptionalCovariance

/-!
# RH-facing sparse exceptional families at arbitrary dyadic scales

One fixed set A is not required. Let A(T) be any *source-selected* finite
translation set. If its cardinality is subexponential on the established
covering dyadic grid and the remaining ACTUAL signed regular covariance has
a one-sided subexponential upper bound there, then the original `pickupCross`
has the bound and the existing analytic implication proves canonical RH.

The finite loss is `4*T*(1+T)*(2*card(A(T))+5)`, and the exponent is split
between the polynomial and cardinality factors. No unspecified remainder,
analytic RH premise, PNT-to-Mobius inference or assumed global estimate enters.
An actual exceptional arithmetic set still needs source inclusion in A(T)'s
explicit pair mask before assigning it to the paid sector.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalRHGrowing

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalCovariance
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Two one-sided all-positive-rate bounds add without any sign assumption. -/
theorem on_add {f g : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) (hg : SubexponentialOn g G) :
    SubexponentialOn (fun T => f T + g T) G := by
  intro ε hε
  obtain ⟨C, T₁, hC, hT₁, hb₁⟩ := hf ε hε
  obtain ⟨D, T₂, hD, hT₂, hb₂⟩ := hg ε hε
  refine ⟨C + D, max T₁ T₂, add_nonneg hC hD,
    hT₁.trans (le_max_left _ _), ?_⟩
  intro T hG hT
  have h₁ := hb₁ T hG ((le_max_left _ _).trans hT)
  have h₂ := hb₂ T hG ((le_max_right _ _).trans hT)
  simpa only [add_mul] using add_le_add h₁ h₂

/-- The product of nonnegative on-scale functions splits the requested rate
in half. The common starting time is the maximum, not a new assumption. -/
theorem on_mul_nonneg {f g : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) (hg : SubexponentialOn g G)
    (hf0 : ∀ T ∈ G, 0 ≤ T → 0 ≤ f T)
    (hg0 : ∀ T ∈ G, 0 ≤ T → 0 ≤ g T) :
    SubexponentialOn (fun T => f T * g T) G := by
  intro ε hε
  have hhalf : (0 : ℝ) < ε / 2 := by positivity
  obtain ⟨C, T₁, hC, hT₁, hb₁⟩ := hf (ε / 2) hhalf
  obtain ⟨D, T₂, hD, hT₂, hb₂⟩ := hg (ε / 2) hhalf
  refine ⟨C * D, max T₁ T₂, mul_nonneg hC hD,
    hT₁.trans (le_max_left _ _), ?_⟩
  intro T hG hT
  have hT0 : 0 ≤ T := hT₁.trans ((le_max_left _ _).trans hT)
  have h₁ := hb₁ T hG ((le_max_left _ _).trans hT)
  have h₂ := hb₂ T hG ((le_max_right _ _).trans hT)
  have hprod : f T * g T ≤
      (C * Real.exp ((ε / 2) * T)) *
        (D * Real.exp ((ε / 2) * T)) := by
    exact mul_le_mul h₁ h₂ (hg0 T hG hT0) (by positivity)
  calc
    f T * g T ≤
        (C * Real.exp ((ε / 2) * T)) *
          (D * Real.exp ((ε / 2) * T)) := hprod
    _ = C * D * Real.exp (((ε / 2) * T) + ((ε / 2) * T)) := by
          rw [Real.exp_add]
          ring
    _ = C * D * Real.exp (ε * T) := by
          have heq : (ε / 2) * T + (ε / 2) * T = ε * T := by ring
          rw [heq]

/-- The exact polynomial time factor is itself globally subexponential. -/
theorem time_factor_subexponential :
    SubexponentialUpper (fun T : ℝ => 4 * T * (1 + T)) := by
  apply subexponentialUpper_of_polynomial (C := 4) (q := 2) (by norm_num)
  intro T hT
  rw [Real.rpow_two]
  nlinarith

/-- A source-selected family of finite index sets has an all-rate cardinality
budget exactly when that budget is supplied; one-point PNT does not give it. -/
def SparseFamilyOn (A : ℝ → Finset ℕ) (G : Set ℝ) : Prop :=
  SubexponentialOn (fun T => ((A T).card : ℝ)) G

/-- The two translates and five neighbors preserve sparse-family status.
The +5 uses exp(εT)≥1 only for T≥0. -/
theorem two_card_plus_five_on {A : ℝ → Finset ℕ} {G : Set ℝ}
    (hA : SparseFamilyOn A G) :
    SubexponentialOn (fun T => ((2 * (A T).card + 5 : ℕ) : ℝ)) G := by
  intro ε hε
  obtain ⟨D, T₁, hD, hT₁, hb⟩ := hA ε hε
  refine ⟨2 * D + 5, T₁, by positivity, hT₁, ?_⟩
  intro T hG hT
  have hT0 : 0 ≤ T := hT₁.trans hT
  have hx : 0 ≤ ε * T := mul_nonneg hε.le hT0
  have he : (1 : ℝ) ≤ Real.exp (ε * T) := by
    have hy : 1 + ε * T ≤ Real.exp (ε * T) := by
      simpa only [add_comm] using Real.add_one_le_exp (ε * T)
    exact (le_add_of_nonneg_right hx).trans hy
  have hbound := hb T hG hT
  have hcast : ((2 * (A T).card + 5 : ℕ) : ℝ) =
      2 * ((A T).card : ℝ) + 5 := by push_cast; ring
  rw [hcast]
  have hfirst : 2 * ((A T).card : ℝ) ≤
      2 * D * Real.exp (ε * T) := by nlinarith [hbound]
  have hsecond : (5 : ℝ) ≤ 5 * Real.exp (ε * T) := by nlinarith [he]
  calc
    2 * ((A T).card : ℝ) + 5 ≤
        2 * D * Real.exp (ε * T) + 5 * Real.exp (ε * T) :=
          add_le_add hfirst hsecond
    _ = (2 * D + 5) * Real.exp (ε * T) := by ring

/-- Any subexponential sparse family pays its entire excluded original-source
covariance, with all growing-cardinality dependence explicit. -/
theorem excludedCovariance_on_of_sparseFamily
    (A : ℝ → Finset ℕ) (hA : SparseFamilyOn A dyadicScales) :
    SubexponentialOn (fun T => excludedCovariance (A T) T) dyadicScales := by
  have hpoly := on_of_global time_factor_subexponential dyadicScales
  have hcard := two_card_plus_five_on hA
  have hprod : SubexponentialOn
      (fun T => (4 * T * (1 + T)) *
        (((2 * (A T).card + 5 : ℕ) : ℝ))) dyadicScales :=
    on_mul_nonneg hpoly hcard
      (by intro T hG hT; positivity)
      (by intro T hG hT; positivity)
  apply subexponentialOn_mono hprod
  intro T hG hT
  exact (le_abs_self _).trans (excludedCovariance_abs_le_polynomial (A T) hT)

/-- Source-exact RH-facing bridge for a growing sparse family. The regular
sector is the actual signed pair sum, NOT an arbitrary external model. -/
theorem riemannHypothesis_of_sparse_family_regular_on
    (A : ℝ → Finset ℕ)
    (hSparse : SparseFamilyOn A dyadicScales)
    (hRegular : SubexponentialOn
      (fun T => regularCovariance (A T) T) dyadicScales) :
    _root_.RiemannHypothesis := by
  have hExc := excludedCovariance_on_of_sparseFamily A hSparse
  have hCross : SubexponentialOn pickupCross dyadicScales := by
    apply subexponentialOn_mono (on_add hRegular hExc)
    intro T hG hT
    rw [pickupCross_eq_regular_add_excluded (A T) T]
  exact riemannHypothesis_of_cross_good_scales dyadic_coverage hCross

end GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalRHGrowing
