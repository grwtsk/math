import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.NumberTheory.LSeries.HurwitzZetaEven

/-!
# Differential theta source bridge

This module formalizes the differential identity isolated by the theta-positive-lift
continuation. It does not prove the completed-xi Mellin representation or the
coefficient formula.

For

`psi(x) = sum_{n >= 1} exp (-pi * n^2 * x)`

and

`A(t) = exp(t) * psi(exp(4*t))`,

the proved targets are

`A''(t) - A(t) = 8 * Phi(t)` and `A'(0) = -1/2`.

The first statement is obtained by twice differentiating the literal Gaussian
series under locally summable derivative bounds. The endpoint derivative uses
the actual `HurwitzZeta.cosKernel` functional equation; no source transform is
assumed.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open scoped BigOperators
open Set

noncomputable section

/-- One positive Gaussian mode in the classical theta tail `psi`. -/
def thetaPsiTerm (m : ℕ) (x : ℝ) : ℝ :=
  Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * x)

/-- The literal one-sided theta series `sum_{n >= 1} exp (-pi n^2 x)`. -/
def thetaPsi (x : ℝ) : ℝ :=
  ∑' m : ℕ, thetaPsiTerm m x

/-- One summand of `A(t) = exp(t) * psi(exp(4*t))`. -/
def thetaAMode (m : ℕ) (t : ℝ) : ℝ :=
  Real.exp t * thetaPsiTerm m (Real.exp (4 * t))

/-- The explicit first derivative of one `thetaAMode`. -/
def thetaAModeDeriv (m : ℕ) (t : ℝ) : ℝ :=
  thetaAMode m t *
    (1 - 4 * Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t))

/-- The explicit second derivative of one `thetaAMode`. -/
def thetaAModeSecond (m : ℕ) (t : ℝ) : ℝ :=
  thetaAMode m t *
    (1 - 24 * Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t) +
      16 * Real.pi ^ 2 * ((m : ℝ) + 1) ^ 4 * Real.exp (8 * t))

/-- The source-side function used in the xi/Phi integration-by-parts bridge. -/
def thetaA (t : ℝ) : ℝ :=
  Real.exp t * thetaPsi (Real.exp (4 * t))

/-- The first-derivative theta series. -/
def thetaADerivSeries (t : ℝ) : ℝ :=
  ∑' m : ℕ, thetaAModeDeriv m t

/-- The second-derivative theta series. -/
def thetaASecondSeries (t : ℝ) : ℝ :=
  ∑' m : ℕ, thetaAModeSecond m t

theorem thetaAMode_eq_gaussian (m : ℕ) (t : ℝ) :
    thetaAMode m t =
      Real.exp t * HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * t)) m := by
  simp only [thetaAMode, thetaPsiTerm, HurwitzKernelBounds.f_nat, pow_zero, one_mul]

theorem thetaAModeDeriv_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaAModeDeriv m t =
      Real.exp t * HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * t)) m -
      (4 * Real.pi * Real.exp (5 * t)) *
        HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
  have he : Real.exp (5 * t) = Real.exp t * Real.exp (4 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simp only [thetaAModeDeriv, thetaAMode, thetaPsiTerm, HurwitzKernelBounds.f_nat,
    pow_zero, one_mul, he]
  ring

theorem thetaAModeSecond_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaAModeSecond m t =
      Real.exp t * HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * t)) m -
      (24 * Real.pi * Real.exp (5 * t)) *
        HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m +
      (16 * Real.pi ^ 2 * Real.exp (9 * t)) *
        HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
  have he5 : Real.exp (5 * t) = Real.exp t * Real.exp (4 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have he9 : Real.exp (9 * t) = Real.exp t * Real.exp (8 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simp only [thetaAModeSecond, thetaAMode, thetaPsiTerm, HurwitzKernelBounds.f_nat,
    pow_zero, one_mul, he5, he9]
  ring

/-- Modewise form of `A'' - A = 8 Phi`. -/
theorem thetaAModeSecond_sub_mode (m : ℕ) (t : ℝ) :
    thetaAModeSecond m t - thetaAMode m t = 8 * thetaPhiTerm m t := by
  rw [thetaAModeSecond_eq_gaussians, thetaAMode_eq_gaussian,
    thetaPhiTerm_eq_gaussians]
  ring

theorem thetaAMode_summable (t : ℝ) : Summable (fun m => thetaAMode m t) := by
  refine ((HurwitzKernelBounds.summable_f_nat 0 1 (Real.exp_pos (4 * t))).mul_left
    (Real.exp t)).congr ?_
  intro m
  exact (thetaAMode_eq_gaussian m t).symm

theorem thetaAModeDeriv_summable (t : ℝ) :
    Summable (fun m => thetaAModeDeriv m t) := by
  have h0 := (HurwitzKernelBounds.summable_f_nat 0 1 (Real.exp_pos (4 * t))).mul_left
    (Real.exp t)
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (4 * Real.pi * Real.exp (5 * t))
  refine (h0.sub h2).congr ?_
  intro m
  exact (thetaAModeDeriv_eq_gaussians m t).symm

theorem thetaAModeSecond_summable (t : ℝ) :
    Summable (fun m => thetaAModeSecond m t) := by
  have h0 := (HurwitzKernelBounds.summable_f_nat 0 1 (Real.exp_pos (4 * t))).mul_left
    (Real.exp t)
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (24 * Real.pi * Real.exp (5 * t))
  have h4 := (HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * t))).mul_left
    (16 * Real.pi ^ 2 * Real.exp (9 * t))
  refine ((h0.sub h2).add h4).congr ?_
  intro m
  exact (thetaAModeSecond_eq_gaussians m t).symm

theorem thetaA_eq_tsum_modes (t : ℝ) :
    thetaA t = ∑' m : ℕ, thetaAMode m t := by
  unfold thetaA thetaPsi thetaAMode
  rw [tsum_mul_left]

theorem thetaAMode_hasDerivAt (m : ℕ) (t : ℝ) :
    HasDerivAt (thetaAMode m) (thetaAModeDeriv m t) t := by
  let n : ℝ := (m : ℝ) + 1
  have h4 : HasDerivAt (fun x : ℝ => 4 * x) 4 t := by
    simpa using (hasDerivAt_id t).const_mul (4 : ℝ)
  have hexp4 : HasDerivAt (fun x : ℝ => Real.exp (4 * x)) (4 * Real.exp (4 * t)) t := by
    convert! (Real.hasDerivAt_exp (4 * t)).comp t h4 using 1
    ring
  have hinner :
      HasDerivAt (fun x : ℝ => -Real.pi * n ^ 2 * Real.exp (4 * x))
        (-4 * Real.pi * n ^ 2 * Real.exp (4 * t)) t := by
    convert! hexp4.const_mul (-Real.pi * n ^ 2) using 1
    ring
  have hgauss :
      HasDerivAt
        (fun x : ℝ => Real.exp (-Real.pi * n ^ 2 * Real.exp (4 * x)))
        ((-4 * Real.pi * n ^ 2 * Real.exp (4 * t)) *
          Real.exp (-Real.pi * n ^ 2 * Real.exp (4 * t))) t := by
    convert! (Real.hasDerivAt_exp _).comp t hinner using 1
    ring
  have hprod := (Real.hasDerivAt_exp t).mul hgauss
  convert! hprod using 1
  simp only [thetaAMode, thetaPsiTerm, thetaAModeDeriv, n]
  ring

theorem thetaAModeDeriv_hasDerivAt (m : ℕ) (t : ℝ) :
    HasDerivAt (thetaAModeDeriv m) (thetaAModeSecond m t) t := by
  let n : ℝ := (m : ℝ) + 1
  have h4 : HasDerivAt (fun x : ℝ => 4 * x) 4 t := by
    simpa using (hasDerivAt_id t).const_mul (4 : ℝ)
  have hexp4 : HasDerivAt (fun x : ℝ => Real.exp (4 * x)) (4 * Real.exp (4 * t)) t := by
    convert! (Real.hasDerivAt_exp (4 * t)).comp t h4 using 1
    ring
  have hc :
      HasDerivAt
        (fun x : ℝ => 1 - 4 * Real.pi * n ^ 2 * Real.exp (4 * x))
        (-16 * Real.pi * n ^ 2 * Real.exp (4 * t)) t := by
    convert! (hexp4.const_mul (4 * Real.pi * n ^ 2)).const_sub 1 using 1
    ring
  have hprod := (thetaAMode_hasDerivAt m t).mul hc
  have he8 : Real.exp (8 * t) = Real.exp (4 * t) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  convert! hprod using 1
  simp only [thetaAModeDeriv, thetaAModeSecond, n, he8]
  ring

/-- Summable domination of the first theta-mode derivatives on a compact interval. -/
def thetaADerivCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  Real.exp b * HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * a)) m +
    (4 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m

/-- Summable domination of the second theta-mode derivatives on a compact interval. -/
def thetaASecondCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  Real.exp b * HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * a)) m +
    (24 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m +
    (16 * Real.pi ^ 2 * Real.exp (9 * b)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * a)) m

theorem thetaADerivCompactBound_summable (a b : ℝ) :
    Summable (thetaADerivCompactBound a b) := by
  exact ((HurwitzKernelBounds.summable_f_nat 0 1 (Real.exp_pos (4 * a))).mul_left
    (Real.exp b)).add
    ((HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * a))).mul_left
      (4 * Real.pi * Real.exp (5 * b)))

theorem thetaASecondCompactBound_summable (a b : ℝ) :
    Summable (thetaASecondCompactBound a b) := by
  exact (((HurwitzKernelBounds.summable_f_nat 0 1 (Real.exp_pos (4 * a))).mul_left
    (Real.exp b)).add
    ((HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * a))).mul_left
      (24 * Real.pi * Real.exp (5 * b)))).add
    ((HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * a))).mul_left
      (16 * Real.pi ^ 2 * Real.exp (9 * b)))

private theorem f_nat_exp_four_mono {a t : ℝ} (hat : a ≤ t) (k m : ℕ) :
    HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * a)) m := by
  rw [HurwitzKernelBounds.f_nat, HurwitzKernelBounds.f_nat]
  have hG : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * a)) := by
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonpos_left (Real.exp_le_exp.mpr (by linarith))
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr Real.pi_pos.le) (sq_nonneg _)
  exact mul_le_mul_of_nonneg_left hG (by positivity)

theorem thetaAModeDeriv_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaAModeDeriv m t‖ ≤ thetaADerivCompactBound a b m := by
  rw [thetaAModeDeriv_eq_gaussians]
  refine (norm_sub_le _ _).trans ?_
  have h0 : 0 ≤ HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h2 : 0 ≤ HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  rw [Real.norm_of_nonneg (by positivity), Real.norm_of_nonneg (by positivity)]
  unfold thetaADerivCompactBound
  apply add_le_add
  · exact mul_le_mul (by gcongr; exact ht.2) (f_nat_exp_four_mono ht.1 0 m) h0 (by positivity)
  · exact mul_le_mul (by gcongr; exact ht.2) (f_nat_exp_four_mono ht.1 2 m) h2 (by positivity)

theorem thetaAModeSecond_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaAModeSecond m t‖ ≤ thetaASecondCompactBound a b m := by
  rw [thetaAModeSecond_eq_gaussians]
  refine (norm_add_le _ _).trans ?_
  refine (add_le_add (norm_sub_le
    (Real.exp t * HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * t)) m)
    ((24 * Real.pi * Real.exp (5 * t)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m)) le_rfl).trans ?_
  have h0 : 0 ≤ HurwitzKernelBounds.f_nat 0 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h2 : 0 ≤ HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h4 : 0 ≤ HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  rw [Real.norm_of_nonneg (by positivity), Real.norm_of_nonneg (by positivity),
    Real.norm_of_nonneg (by positivity)]
  unfold thetaASecondCompactBound
  apply add_le_add
  · apply add_le_add
    · exact mul_le_mul (by gcongr; exact ht.2) (f_nat_exp_four_mono ht.1 0 m) h0
        (by positivity)
    · exact mul_le_mul (by gcongr; exact ht.2) (f_nat_exp_four_mono ht.1 2 m) h2
        (by positivity)
  · exact mul_le_mul (by gcongr; exact ht.2) (f_nat_exp_four_mono ht.1 4 m) h4
      (by positivity)

theorem hasDerivAt_thetaA (t : ℝ) : HasDerivAt thetaA (thetaADerivSeries t) t := by
  let a := t - 1
  let b := t + 1
  have ht : t ∈ Ioo a b := by
    constructor <;> dsimp [a, b] <;> linarith
  have hseries := hasDerivAt_tsum_of_isPreconnected
    (thetaADerivCompactBound_summable a b) isOpen_Ioo ordConnected_Ioo.isPreconnected
    (fun m y _ => thetaAMode_hasDerivAt m y)
    (fun m y hy => thetaAModeDeriv_norm_le_compactBound ⟨hy.1.le, hy.2.le⟩ m)
    ht (thetaAMode_summable t) ht
  have hf : (fun z => ∑' m : ℕ, thetaAMode m z) = thetaA := by
    funext z
    exact (thetaA_eq_tsum_modes z).symm
  rw [hf] at hseries
  exact hseries

theorem hasDerivAt_thetaADerivSeries (t : ℝ) :
    HasDerivAt thetaADerivSeries (thetaASecondSeries t) t := by
  let a := t - 1
  let b := t + 1
  have ht : t ∈ Ioo a b := by
    constructor <;> dsimp [a, b] <;> linarith
  have hseries := hasDerivAt_tsum_of_isPreconnected
    (thetaASecondCompactBound_summable a b) isOpen_Ioo ordConnected_Ioo.isPreconnected
    (fun m y _ => thetaAModeDeriv_hasDerivAt m y)
    (fun m y hy => thetaAModeSecond_norm_le_compactBound ⟨hy.1.le, hy.2.le⟩ m)
    ht (thetaAModeDeriv_summable t) ht
  simpa only [thetaADerivSeries, thetaASecondSeries] using! hseries

/-- The literal theta source satisfies the exact differential bridge `A'' - A = 8 Phi`. -/
theorem thetaA_second_deriv_sub (t : ℝ) :
    deriv (deriv thetaA) t - thetaA t = 8 * thetaPhi t := by
  have hfirst : deriv thetaA = thetaADerivSeries := by
    funext x
    exact (hasDerivAt_thetaA x).deriv
  rw [hfirst, (hasDerivAt_thetaADerivSeries t).deriv, thetaA_eq_tsum_modes]
  unfold thetaASecondSeries thetaPhi
  calc
    (∑' m : ℕ, thetaAModeSecond m t) - ∑' m : ℕ, thetaAMode m t =
        ∑' m : ℕ, (thetaAModeSecond m t - thetaAMode m t) := by
          rw [(thetaAModeSecond_summable t).tsum_sub (thetaAMode_summable t)]
    _ = ∑' m : ℕ, 8 * thetaPhiTerm m t := by
          apply tsum_congr
          intro m
          exact thetaAModeSecond_sub_mode m t
    _ = 8 * ∑' m : ℕ, thetaPhiTerm m t := by rw [tsum_mul_left]

/-- On the positive half-line, `psi` is half of the zero-frequency cosine kernel minus one. -/
theorem thetaPsi_eq_cosKernel {x : ℝ} (hx : 0 < x) :
    thetaPsi x = (HurwitzZeta.cosKernel 0 x - 1) / 2 := by
  have h := HurwitzZeta.hasSum_nat_cosKernel₀ 0 hx
  have h' : HasSum (fun m : ℕ => thetaPsiTerm m x)
      ((HurwitzZeta.cosKernel 0 x - 1) / 2) := by
    convert! h.div_const 2 using 1
    simp [thetaPsiTerm]
  exact h'.tsum_eq

private theorem exp_four_rpow_half (t : ℝ) :
    Real.exp (4 * t) ^ (1 / 2 : ℝ) = Real.exp (2 * t) := by
  rw [Real.rpow_def_of_pos (Real.exp_pos _), Real.log_exp]
  congr 1
  ring

private theorem one_div_exp_four (t : ℝ) :
    1 / Real.exp (4 * t) = Real.exp (-4 * t) := by
  rw [one_div, ← Real.exp_neg]
  congr 1
  ring

/-- Jacobi self-duality in the normalization used by `thetaA`. -/
theorem thetaA_reflection (t : ℝ) :
    thetaA t - thetaA (-t) = (Real.exp (-t) - Real.exp t) / 2 := by
  have hpos : 0 < Real.exp (4 * t) := Real.exp_pos _
  have hposneg : 0 < Real.exp (-4 * t) := Real.exp_pos _
  have hfe := HurwitzZeta.evenKernel_functional_equation (0 : UnitAddCircle)
    (Real.exp (4 * t))
  rw [HurwitzZeta.evenKernel_eq_cosKernel_of_zero] at hfe
  rw [thetaA, thetaA, show 4 * -t = -4 * t by ring,
    thetaPsi_eq_cosKernel hpos, thetaPsi_eq_cosKernel hposneg]
  rw [exp_four_rpow_half, one_div_exp_four] at hfe
  have he : Real.exp t * (1 / Real.exp (2 * t)) = Real.exp (-t) := by
    rw [one_div, ← div_eq_mul_inv, ← Real.exp_sub]
    congr 1
    ring
  rw [hfe, ← he]
  ring

/-- The source boundary debt is exactly `A'(0) = -1/2`. -/
theorem thetaA_deriv_zero : deriv thetaA 0 = -(1 / 2 : ℝ) := by
  have hA : HasDerivAt thetaA (thetaADerivSeries 0) 0 := hasDerivAt_thetaA 0
  have hneg :
      HasDerivAt (fun t : ℝ => thetaA (-t)) (-thetaADerivSeries 0) 0 := by
    simpa only [neg_zero, mul_neg_one] using!
      (hasDerivAt_thetaA (-0)).comp 0 (hasDerivAt_neg (0 : ℝ))
  have hleft :
      HasDerivAt (fun t : ℝ => thetaA t - thetaA (-t))
        (2 * thetaADerivSeries 0) 0 := by
    convert! hA.sub hneg using 1
    ring
  have hright :
      HasDerivAt (fun t : ℝ => (Real.exp (-t) - Real.exp t) / 2) (-1 : ℝ) 0 := by
    have h1 : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-1 : ℝ) 0 := by
      simpa using! (Real.hasDerivAt_exp (-0)).comp 0 (hasDerivAt_neg (0 : ℝ))
    have h2 : HasDerivAt (fun t : ℝ => Real.exp t) (1 : ℝ) 0 := by
      simpa using Real.hasDerivAt_exp 0
    convert! (h1.sub h2).div_const 2 using 1
    norm_num
  have hEq :
      (fun t : ℝ => thetaA t - thetaA (-t)) =
        fun t : ℝ => (Real.exp (-t) - Real.exp t) / 2 := by
    funext t
    exact thetaA_reflection t
  have hright' : HasDerivAt (fun t : ℝ => thetaA t - thetaA (-t)) (-1 : ℝ) 0 := by
    rw [hEq]
    exact hright
  have hd : 2 * thetaADerivSeries 0 = (-1 : ℝ) :=
    hleft.unique hright'
  rw [hA.deriv]
  linarith

/-- Packaged form of the differential theta bridge proved in this module. -/
theorem theta_differential_bridge :
    (∀ t : ℝ, deriv (deriv thetaA) t - thetaA t = 8 * thetaPhi t) ∧
      deriv thetaA 0 = -(1 / 2 : ℝ) :=
  ⟨thetaA_second_deriv_sub, thetaA_deriv_zero⟩

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
