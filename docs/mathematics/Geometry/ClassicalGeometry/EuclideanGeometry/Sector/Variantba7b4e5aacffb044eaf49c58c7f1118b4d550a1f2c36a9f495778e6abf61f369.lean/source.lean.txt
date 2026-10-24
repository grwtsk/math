import FormalResearch.PositiveAtlas.Grassmannian.QuadraticMinors
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Sector factors and coefficientwise limits

This is the finite-order sector proof, including theta=0 and the sector boundary.
No zeta zeros occur in this generic file. The later actual-source application
must supply its own factorization/convergence theorem rather than assume PF_R.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector

open Filter
open scoped Topology
open Quadratic

noncomputable section

/-- The elementary sine recurrence used by the continuant induction. -/
theorem sine_step (x θ : ℝ) :
    Real.sin (x + 2 * θ) =
      2 * Real.cos θ * Real.sin (x + θ) - Real.sin x := by
  have hp := Real.sin_add (x + θ) θ
  have hm := Real.sin_sub (x + θ) θ
  rw [add_sub_cancel_right] at hm
  rw [show x + 2 * θ = (x + θ) + θ by ring]
  nlinarith only [hp, hm]

/-- The sine identity is proved without dividing by a possibly zero sine. -/
theorem continuant_mul_sine (η θ : ℝ) (n : ℕ) :
    continuant (2 * η * Real.cos θ) (η ^ 2) n * Real.sin θ =
      η ^ n * Real.sin (((n : ℝ) + 1) * θ) := by
  refine Nat.twoStepInduction ?_ ?_ ?_ n
  · simp [continuant]
  · simp only [continuant, pow_one, Nat.cast_one, one_add_one_eq_two]
    rw [Real.sin_two_mul]
    ring
  · intro m hm hm1
    have hs := sine_step (((m : ℝ) + 1) * θ) θ
    have h2 : ((m : ℝ) + 1) * θ + θ = ((m : ℝ) + 2) * θ := by ring
    have h3 : ((m : ℝ) + 1) * θ + 2 * θ = ((m : ℝ) + 3) * θ := by ring
    rw [h2, h3] at hs
    have e2 : ((((m + 1 : ℕ) : ℝ) + 1) * θ) = ((m : ℝ) + 2) * θ := by
      push_cast
      ring
    have e3 : ((((m + 2 : ℕ) : ℝ) + 1) * θ) = ((m : ℝ) + 3) * θ := by
      push_cast
      ring
    have hsNat : Real.sin ((((m + 2 : ℕ) : ℝ) + 1) * θ) =
        2 * Real.cos θ * Real.sin ((((m + 1 : ℕ) : ℝ) + 1) * θ) -
          Real.sin (((m : ℝ) + 1) * θ) := by
      rw [e2, e3]
      exact hs
    simp only [continuant]
    calc
      (2 * η * Real.cos θ * continuant (2 * η * Real.cos θ) (η ^ 2) (m + 1) -
          η ^ 2 * continuant (2 * η * Real.cos θ) (η ^ 2) m) * Real.sin θ =
        2 * η * Real.cos θ *
          (continuant (2 * η * Real.cos θ) (η ^ 2) (m + 1) * Real.sin θ) -
        η ^ 2 * (continuant (2 * η * Real.cos θ) (η ^ 2) m * Real.sin θ) := by ring
      _ = η ^ (m + 2) * Real.sin ((((m + 2 : ℕ) : ℝ) + 1) * θ) := by
        rw [hm, hm1, hsNat]
        simp only [pow_succ]
        ring

/-- In the open angular interval the signed continuant has the exact sine ratio. -/
theorem continuant_eq_sine_ratio (η θ : ℝ) (n : ℕ) (hθ : Real.sin θ ≠ 0) :
    continuant (2 * η * Real.cos θ) (η ^ 2) n =
      η ^ n * Real.sin (((n : ℝ) + 1) * θ) / Real.sin θ := by
  apply (eq_div_iff hθ).mpr
  exact continuant_mul_sine η θ n

/-- At zero angle the separate recurrence is valid, with no division by zero. -/
theorem continuant_zero_angle (η : ℝ) (n : ℕ) :
    continuant (2 * η) (η ^ 2) n = ((n : ℝ) + 1) * η ^ n := by
  refine Nat.twoStepInduction ?_ ?_ ?_ n
  · simp [continuant]
  · norm_num [continuant]
  · intro m hm hm1
    simp only [continuant]
    rw [hm, hm1]
    push_cast
    simp only [pow_succ]
    ring

/-- Sector bounds control every continuant through the stated order. -/
theorem continuant_nonnegative (η θ : ℝ) (R n : ℕ)
    (hη : 0 ≤ η) (hθ : 0 ≤ θ) (hR : 1 ≤ R)
    (hsector : ((R : ℝ) + 1) * θ ≤ Real.pi) (hn : n ≤ R) :
    0 ≤ continuant (2 * η * Real.cos θ) (η ^ 2) n := by
  rcases eq_or_lt_of_le hθ with he | hp
  · have hθ0 : θ = 0 := he.symm
    rw [hθ0, Real.cos_zero, mul_one, continuant_zero_angle]
    positivity
  · have hRreal : (1 : ℝ) ≤ R := by exact_mod_cast hR
    have hπ : θ < Real.pi := by nlinarith
    have hs := Real.sin_pos_of_pos_of_lt_pi hp hπ
    rw [continuant_eq_sine_ratio η θ n (ne_of_gt hs)]
    apply div_nonneg
    · apply mul_nonneg (pow_nonneg hη n)
      apply Real.sin_nonneg_of_nonneg_of_le_pi
      · positivity
      · have hnreal : (n : ℝ) ≤ R := by exact_mod_cast hn
        nlinarith
    · exact hs.le

/-- Every minor, not just each continuant, satisfies the finite-order sector bound. -/
theorem quadratic_pfOrder (η θ : ℝ) (R : ℕ)
    (hη : 0 ≤ η) (hθ : 0 ≤ θ)
    (hsector : ((R : ℝ) + 1) * θ ≤ Real.pi) :
    PFOrder R (Quadratic.coefficient (2 * η * Real.cos θ) (η ^ 2)) := by
  by_cases hR : 1 ≤ R
  · exact Quadratic.pfOrder_of_continuants _ _ R (sq_nonneg η)
      (fun n hn => continuant_nonnegative η θ R n hη hθ hR hsector hn)
  · have : R = 0 := by omega
    subst R
    exact pfOrder_zero _

/-- The elementary off-line angle, retaining the transverse displacement. -/
def transverseAngle (δ γ : ℝ) : ℝ := 2 * Real.arctan (|δ| / |γ|)

/-- Strip width and a finite zero height imply a strict angle bound, not angle zero. -/
theorem transverseAngle_lt (δ γ H : ℝ) (hδ : |δ| < 1 / 2)
    (hH : 0 < H) (hγ : H < |γ|) : transverseAngle δ γ < 1 / H := by
  have hg : 0 < |γ| := hH.trans hγ
  rcases eq_or_lt_of_le (abs_nonneg δ) with hz | hd
  · have hδ0 : |δ| = 0 := hz.symm
    simpa [transverseAngle, hδ0] using hH
  · have ht : Real.arctan (|δ| / |γ|) < |δ| / |γ| := by
      simpa only [Real.tan_arctan] using Real.lt_tan
        (Real.arctan_pos.mpr (div_pos hd hg)) (Real.arctan_lt_pi_div_two _)
    have hs : 2 * (|δ| / |γ|) < 1 / |γ| := by
      rw [← mul_div_assoc]
      exact (div_lt_div_iff_of_pos_right hg).mpr (by linarith)
    have hi : 1 / |γ| < 1 / H := one_div_lt_one_div_of_lt hH hγ
    dsimp [transverseAngle]
    linarith

/-- The arithmetic angle is always nonnegative when used with real absolute values. -/
theorem transverseAngle_nonnegative (δ γ : ℝ) : 0 ≤ transverseAngle δ γ := by
  unfold transverseAngle
  exact mul_nonneg (by norm_num) (Real.arctan_nonneg.mpr (div_nonneg (abs_nonneg _) (abs_nonneg _)))

/-- Finite elementary factors, with repetitions retaining multiplicities. -/
inductive Factor where
  | linear (weight : ℝ)
  | pair (scale angle : ℝ)

/-- Literal ordinary coefficients of an elementary factor. -/
def Factor.coefficient : Factor → ℕ → ℝ
  | .linear α => Quadratic.coefficient α 0
  | .pair η θ => Quadratic.coefficient (2 * η * Real.cos θ) (η ^ 2)

/-- Sector admissibility constrains parameters, not determinant signs. -/
def Factor.Admissible (R : ℕ) : Factor → Prop
  | .linear α => 0 ≤ α
  | .pair η θ => 0 ≤ η ∧ 0 ≤ θ ∧ ((R : ℝ) + 1) * θ ≤ Real.pi

/-- Parameter admissibility has a derived PF consequence. -/
theorem Factor.pfOrder (R : ℕ) (f : Factor) (hf : f.Admissible R) :
    PFOrder R f.coefficient := by
  cases f with
  | linear α => exact (Quadratic.linear_pfInfinity α hf).pfOrder R
  | pair η θ => exact quadratic_pfOrder η θ R hf.1 hf.2.1 hf.2.2

/-- Coefficients of the finite product, with the empty product equal to one. -/
def productCoefficient : List Factor → ℕ → ℝ
  | [] => Quadratic.coefficient 0 0
  | f :: fs => convolution f.coefficient (productCoefficient fs)

/-- Finite products preserve the bound for arbitrary positions. -/
theorem product_pfOrder (R : ℕ) (fs : List Factor)
    (h : ∀ f ∈ fs, f.Admissible R) : PFOrder R (productCoefficient fs) := by
  induction fs with
  | nil => exact (Quadratic.linear_pfInfinity 0 le_rfl).pfOrder R
  | cons f fs ih =>
    exact (f.pfOrder R (h f (by simp))).convolution
      (ih (fun g hg => h g (by simp [hg])))

/-- The limit theorem requires equality with the ACTUAL target coefficient sequence. -/
theorem pfOrder_of_product_limit (R : ℕ) (P : ℕ → List Factor)
    (a : ℕ → ℝ) (amplitude : ℝ) (ha : 0 < amplitude)
    (hP : ∀ j, ∀ f ∈ P j, f.Admissible R)
    (hlim : ∀ n, Tendsto (fun j => amplitude * productCoefficient (P j) n)
      atTop (𝓝 (a n))) : PFOrder R a := by
  apply pfOrder_of_coefficientwise_limit R _ a hlim
  intro j
  exact (pfOrder_amplitude_iff R _ amplitude ha).mpr (product_pfOrder R (P j) (hP j))

/-- A signed regression fixture: order three does not imply order four. -/
theorem fixture_pfThree : PFOrder 3 (Quadratic.coefficient (3 / 2) 1) := by
  apply Quadratic.pfOrder_of_continuants _ _ 3 (by norm_num)
  intro j hj
  interval_cases j <;> norm_num [continuant]

/-- The obstruction is a genuine ordered determinant at the next order. -/
theorem fixture_negative_orderFour :
    minor (Quadratic.coefficient (3 / 2) 1)
      (fun i : Fin 4 => i.val) (fun i : Fin 4 => i.val + 1) = -11 / 16 := by
  unfold minor
  simp_rw [Quadratic.entry_coefficient]
  have he : (fun i j : Fin 4 => band (3 / 2) 1 i.val (j.val + 1)) =
      tridiagonal (3 / 2) 1 4 := by
    ext i j
    simpa [add_comm] using band_consecutive (3 / 2) 1 0 4 i j
  rw [he, det_tridiagonal]
  norm_num [continuant]

/-- The same sequence is not PF_4, despite all-position PF_3. -/
theorem fixture_not_pfFour : ¬ PFOrder 4 (Quadratic.coefficient (3 / 2) 1) := by
  intro h
  let r : Fin 4 ↪o ℕ := OrderEmbedding.ofStrictMono (fun i => i.val) (fun _ _ hij => hij)
  let c : Fin 4 ↪o ℕ := OrderEmbedding.ofStrictMono (fun i => i.val + 1)
    (by intro i j hij; exact Nat.add_lt_add_right hij 1)
  have hn := h 4 le_rfl r c
  change 0 ≤ minor (Quadratic.coefficient (3 / 2) 1)
    (fun i : Fin 4 => i.val) (fun i : Fin 4 => i.val + 1) at hn
  rw [fixture_negative_orderFour] at hn
  norm_num at hn

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector
