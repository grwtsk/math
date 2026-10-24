/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: proof source; not elaborated in the pinned environment.
-/
import Mathlib
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.MellinBlockHolomorphy
import GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

/-! # The actual energy condition gives normally convergent Mellin blocks

The sole unresolved arithmetic input to this module is AllDyadicEnergyBound.
The finite prefix is absorbed explicitly into a constant. Complex readout,
scaling and holomorphy are supplied by their source modules, not hypotheses.
The Euler-product and zero/reflection suffixes are NOT claimed here.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter Metric
open scoped Topology BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.PositiveCoordinates
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.DyadicBounds
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.MellinReadout
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.MellinBlockHolomorphy
open GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

theorem dyadicScale_pos (j : ℕ) : 0 < dyadicScale j := by
  unfold dyadicScale
  positivity

theorem log_dyadicScale (j : ℕ) :
    Real.log (dyadicScale j : ℝ) = ((j:ℝ)+1)*Real.log 2 := by
  simp [dyadicScale, Nat.cast_pow, Real.log_pow]

/-- Extend an eventual positive-weight bound to every index, retaining an
explicit finite-prefix sum rather than deleting early source intervals. -/
theorem extend_eventual_bound (e w : ℕ → ℝ)
    (he : ∀ j, 0 ≤ e j) (hw : ∀ j, 0 < w j)
    {C : ℝ} (hC : 0 ≤ C) (j₀ : ℕ) (h : ∀ j ≥ j₀, e j ≤ C*w j) :
    ∃ C' : ℝ, 0 ≤ C' ∧ ∀ j, e j ≤ C'*w j := by
  let P : ℝ := ∑ j ∈ Finset.range j₀, e j/w j
  have hP : 0 ≤ P := Finset.sum_nonneg (fun j _ => div_nonneg (he j) (hw j).le)
  refine ⟨C+P, add_nonneg hC hP, ?_⟩
  intro j
  by_cases hj : j < j₀
  · have hmem : j ∈ Finset.range j₀ := Finset.mem_range.mpr hj
    have hsum : e j/w j ≤ P :=
      Finset.single_le_sum (fun k _ => div_nonneg (he k) (hw k).le) hmem
    exact (div_le_iff₀ (hw j)).mp (hsum.trans (by linarith))
  · exact (h j (by omega)).trans (mul_le_mul_of_nonneg_right (by linarith) (hw j).le)

/-- This is an application of the actual hypothesis, not a new arithmetic supplier. -/
theorem uniform_energy_constant (hE : AllDyadicEnergyBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j,
      augmentedEnergy (dyadicScale j) ≤
        C*Real.exp ((-1+η)*Real.log (dyadicScale j : ℝ)) := by
  obtain ⟨C,hC,j₀,hbound⟩ := hE η hη
  apply extend_eventual_bound
    (fun j => augmentedEnergy (dyadicScale j))
    (fun j => Real.exp ((-1+η)*Real.log (dyadicScale j : ℝ)))
    (fun j => augmentedEnergy_nonneg _) (fun j => Real.exp_pos _) hC j₀
  intro j hj
  have hx : (0:ℝ) < dyadicScale j := by exact_mod_cast dyadicScale_pos j
  have hb := hbound j hj
  convert! hb using 1
  rw [Real.rpow_eq_pow, Real.rpow_def_of_pos hx]
  congr 2
  ring

/-- The exact exponent left after multiplying the Mellin dilation and root energy. -/
theorem energy_to_geometric_bound {X : ℕ} (hX : 0 < X)
    {s : ℂ} {σ η C M : ℝ} (hC : 0 ≤ C) (hM : 0 ≤ M)
    (hs : ‖s‖ ≤ M) (hσ : σ ≤ s.re)
    (hE : augmentedEnergy X ≤ C*Real.exp ((-1+η)*Real.log X)) :
    ‖dirichletBlock X s‖ ≤
      (Real.sqrt C*Real.sqrt (radiusBudget M))*
        Real.exp (-(σ-1/2-η/2)*Real.log X) := by
  have hlog : 0 ≤ Real.log (X:ℝ) := Real.log_nonneg (by exact_mod_cast hX)
  let q : ℝ := ((-1+η)/2)*Real.log X
  have hexpsq : (Real.exp q)^2 = Real.exp ((-1+η)*Real.log X) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    dsimp [q]
    ring
  have hrootsq : (Real.sqrt C*Real.exp q)^2 =
      C*Real.exp ((-1+η)*Real.log X) := by
    rw [mul_pow, Real.sq_sqrt hC, hexpsq]
  have hsqrt : Real.sqrt (augmentedEnergy X) ≤ Real.sqrt C*Real.exp q := by
    have hsq := Real.sq_sqrt (augmentedEnergy_nonneg X)
    have hp : 0 ≤ Real.sqrt C*Real.exp q := by positivity
    nlinarith [Real.sqrt_nonneg (augmentedEnergy X)]
  have hexp : Real.exp ((1-s.re)*Real.log X) ≤
      Real.exp ((1-σ)*Real.log X) := by
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) hlog
  calc
    ‖dirichletBlock X s‖ ≤ Real.exp ((1-s.re)*Real.log X)*
        (Real.sqrt (augmentedEnergy X)*Real.sqrt (radiusBudget M)) :=
      dirichletBlock_norm_bound hX hM hs
    _ ≤ Real.exp ((1-σ)*Real.log X)*
        ((Real.sqrt C*Real.exp q)*Real.sqrt (radiusBudget M)) := by
      exact mul_le_mul hexp
        (mul_le_mul_of_nonneg_right hsqrt (Real.sqrt_nonneg _))
        (by positivity) (Real.exp_pos _).le
    _ = _ := by
      calc
        _ = (Real.sqrt C*Real.sqrt (radiusBudget M))*
            (Real.exp ((1-σ)*Real.log X)*Real.exp q) := by ring
        _ = _ := by
          rw [← Real.exp_add]
          congr 2
          dsimp [q]
          ring

/-- A summable uniform majorant for the literal source blocks on a bounded
right-half-plane region. It includes the finite early prefix. -/
theorem uniform_majorant (hE : AllDyadicEnergyBound)
    {σ M : ℝ} (hσ : 1/2 < σ) (hM : 0 ≤ M) :
    ∃ u : ℕ → ℝ, Summable u ∧ (∀ j, 0 ≤ u j) ∧
      ∀ (j : ℕ) (s : ℂ), σ ≤ s.re → ‖s‖ ≤ M → ‖dirichletBlock (dyadicScale j) s‖ ≤ u j := by
  let η : ℝ := σ-1/2
  let a : ℝ := σ-1/2-η/2
  have hη : 0 < η := by dsimp [η]; linarith
  have ha : 0 < a := by dsimp [a,η]; linarith
  obtain ⟨C,hC,hbound⟩ := uniform_energy_constant hE hη
  let K : ℝ := Real.sqrt C*Real.sqrt (radiusBudget M)
  refine ⟨fun j => K*dyadicWeight a j,
    (summable_dyadicWeight a ha).mul_left K, ?_, ?_⟩
  · intro j
    unfold K dyadicWeight
    positivity
  · intro j s hσs hs
    have h := energy_to_geometric_bound (dyadicScale_pos j) hC hM hs hσs (hbound j)
    simpa [K, a, dyadicWeight, log_dyadicScale, mul_assoc] using h

theorem absolute_summability (hE : AllDyadicEnergyBound)
    {s : ℂ} (hs : 1/2 < s.re) :
    Summable (fun j => ‖dirichletBlock (dyadicScale j) s‖) := by
  obtain ⟨u,hu,hu0,hbound⟩ := uniform_majorant hE hs (norm_nonneg s)
  exact Summable.of_nonneg_of_le (fun j => norm_nonneg _)
    (fun j => hbound j s le_rfl le_rfl) hu

/-- Normally convergent block sum on the actual open half-plane. -/
theorem blockSeries_differentiableOn (hE : AllDyadicEnergyBound) :
    DifferentiableOn ℂ blockSeries {s : ℂ | 1/2 < s.re} := by
  intro s hs
  change (1 : ℝ)/2 < s.re at hs
  let σ : ℝ := (s.re+1/2)/2
  let M : ℝ := ‖s‖+1
  let U : Set ℂ := {z : ℂ | σ < z.re ∧ ‖z‖ < M}
  have hσ : 1/2 < σ := by dsimp [σ]; linarith [hs]
  have hM : 0 ≤ M := by dsimp [M]; positivity
  have hsU : s ∈ U := by
    constructor
    · dsimp [σ]; linarith [hs]
    · dsimp [M]; linarith
  have hU : IsOpen U :=
    (isOpen_lt continuous_const Complex.continuous_re).inter
      (isOpen_lt continuous_norm continuous_const)
  obtain ⟨u,hu,hu0,hbound⟩ := uniform_majorant hE hσ hM
  have hsum : DifferentiableOn ℂ
      (fun z => ∑' j, dirichletBlock (dyadicScale j) z) U := by
    apply Complex.differentiableOn_tsum_of_summable_norm hu
      (fun j => (dirichletBlock_differentiable (dyadicScale_pos j)).differentiableOn) hU
    intro j z hz
    exact hbound j z hz.1.le hz.2.le
  have hfinite := dirichletBlock_differentiable (X := 1) (by omega) s
  have htail := hsum.differentiableAt (hU.mem_nhds hsU)
  exact (hfinite.add htail).differentiableWithinAt

/-- Supplies the formerly unproved Mellin identity proposition, in proof source. -/
theorem mellinBlockIdentity : MellinBlockIdentityGoal := by
  intro X hX s
  exact dirichletBlock_eq_scaled_action hX s

/-- Supplies normal convergence conditional only on the original energy bound.
No Euler identification, zero exclusion, or arithmetic bound is assumed here. -/
theorem normalConvergence : NormalConvergenceGoal := by
  intro hE
  exact ⟨fun s hs => absolute_summability hE hs, blockSeries_differentiableOn hE⟩

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence
