/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFiniteParseval

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact full-residue normalization and squared error preservation.
These are finite Fourier errors, not analytic observation or cyclic
Hamiltonian eigen-residual estimates. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletNormalizedFourierError
open ZMod DirichletFiniteParseval
variable (N : ℕ) [NeZero N]

def normalizedTransform (x : ZMod N → ℂ) (k : ZMod N) : ℂ :=
  (Real.sqrt (N : ℝ) : ℂ)⁻¹ * transform N x k

def primitivePhase (χ : DirichletCharacter ℂ N) : ℂ :=
  gaussSum χ stdAddChar / (Real.sqrt (N : ℝ) : ℂ)

lemma sqrt_level_pos : 0 < Real.sqrt (N : ℝ) := by
  apply Real.sqrt_pos.mpr
  exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)

theorem normalized_full_mass (x : ZMod N → ℂ) :
    (∑ k, ‖normalizedTransform N x k‖ ^ 2) = ∑ j, ‖x j‖ ^ 2 := by
  have hn : (N : ℝ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hs : Real.sqrt (N : ℝ) ≠ 0 := ne_of_gt (sqrt_level_pos N)
  unfold normalizedTransform
  simp only [norm_mul, mul_pow, norm_inv, Complex.norm_real,
    Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg (N : ℝ))]
  rw [← Finset.mul_sum, finite_parseval N, inv_pow, Real.sq_sqrt (Nat.cast_nonneg N)]
  field_simp [hn]
  <;> ring

theorem normalized_transform_sub (x y : ZMod N → ℂ) :
    normalizedTransform N (x - y) = normalizedTransform N x - normalizedTransform N y := by
  funext k
  simp [normalizedTransform, transform, sub_mul, Finset.sum_sub_distrib, mul_sub]

theorem normalized_full_error (x y : ZMod N → ℂ) :
    (∑ k, ‖normalizedTransform N x k - normalizedTransform N y k‖ ^ 2) =
      ∑ j, ‖x j - y j‖ ^ 2 := by
  have h := normalized_full_mass N (x - y)
  rw [normalized_transform_sub] at h
  exact h

theorem primitive_phase_norm_one (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive) :
    ‖primitivePhase N χ‖ = 1 := by
  unfold primitivePhase
  rw [norm_div, primitive_gauss_norm N χ hχ]
  simp only [Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Real.sqrt_nonneg (N : ℝ))]
  exact div_self (ne_of_gt (sqrt_level_pos N))

theorem normalized_primitive_transform (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive) :
    normalizedTransform N χ = fun k => primitivePhase N χ * χ⁻¹ k := by
  funext k
  unfold normalizedTransform primitivePhase
  rw [primitive_transform N χ hχ]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletNormalizedFourierError
