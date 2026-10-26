/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib/GRWTSK work retains original authorship and licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge

set_option autoImplicit false
noncomputable section

/-!
# Exact heat flow for the finite one-edge Hodge Laplacian

The two-site Laplacian has a harmonic constant mode and one difference
mode of eigenvalue 2. This file constructs its *exact* finite heat
operator in the original endpoint coordinates, not an approximate
numerical time-stepper.

The positive squared gradient energy decays as exp(-4t), but no
strict contraction is claimed on the full space because the constant
zero mode remains fixed. No indefinite signed consumer is used.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge

/-- Exact finite heat from mean and contrast, with a specified orientation.
The mean is fixed; the difference is multiplied by exp(-2t). -/
def heat (t : ℝ) : Cochain0 →ₗ[ℝ] Cochain0 where
  toFun f i :=
    (f 0 + f 1) / 2 +
      Real.exp (-2 * t) * (f i - (f 0 + f 1) / 2)
  map_add' f g := by
    funext i
    simp only [Pi.add_apply]
    dsimp
    ring
  map_smul' a f := by
    funext i
    simp only [Pi.smul_apply, smul_eq_mul]
    dsimp
    ring

theorem heat_apply (t : ℝ) (f : Cochain0) (i : Fin 2) :
    heat t f i =
      (f 0 + f 1) / 2 +
        Real.exp (-2 * t) * (f i - (f 0 + f 1) / 2) := rfl

/-- Heat preserves the sum of the two endpoint values. -/
theorem heat_preserves_sum (t : ℝ) (f : Cochain0) :
    heat t f 0 + heat t f 1 = f 0 + f 1 := by
  rw [heat_apply, heat_apply]
  ring

theorem heat_zero : heat 0 = LinearMap.id := by
  ext f i
  rw [heat_apply]
  simp
  ring

/-- The exact time-addition law with no time-discretization error. -/
theorem heat_add (s t : ℝ) :
    heat (s + t) = (heat s).comp (heat t) := by
  have hexp :
      Real.exp (-2 * (s + t)) =
        Real.exp (-2 * s) * Real.exp (-2 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  ext f i
  change heat (s + t) f i = heat s (heat t f) i
  rw [heat_apply, heat_apply, heat_preserves_sum]
  rw [heat_apply, hexp]
  ring

/-- The oriented edge difference is exactly the eigenmode of eigenvalue
2; in heat time it has factor exp(-2t). -/
theorem coboundary_heat (t : ℝ) (f : Cochain0) :
    coboundary (heat t f) =
      Real.exp (-2 * t) * coboundary f := by
  rw [coboundary_apply, coboundary_apply,
    heat_apply, heat_apply]
  ring

/-- The actual contact Laplacian commutes with heat, at the explicit
finite diagonal eigenmode level. -/
theorem laplacian_heat (t : ℝ) (f : Cochain0) :
    laplacian (heat t f) = Real.exp (-2 * t) • laplacian f := by
  change adjoint (coboundary (heat t f)) =
    Real.exp (-2 * t) • adjoint (coboundary f)
  rw [coboundary_heat]
  exact (map_smul adjoint (Real.exp (-2 * t)) (coboundary f))

/-- Constant sections are fixed: the kernel is not contracted strictly. -/
theorem heat_fixed_of_harmonic (t : ℝ) (f : Cochain0)
    (h : laplacian f = 0) :
    heat t f = f := by
  have heq : f 0 = f 1 := (harmonic_iff_equal_values f).mp h
  funext i
  fin_cases i <;> simp [heat_apply, heq] <;> ring

/-- Exactly quantified energy decay on the nonharmonic edge difference. -/
theorem heat_energy_exact (t : ℝ) (f : Cochain0) :
    pairing (heat t f) (laplacian (heat t f)) =
      (Real.exp (-2 * t)) ^ 2 * pairing f (laplacian f) := by
  rw [laplacian_energy, laplacian_energy]
  have h := coboundary_heat t f
  rw [coboundary_apply, coboundary_apply] at h
  rw [h]
  ring

/-- Positive heat time gives contraction of the positive Hodge energy,
not an assertion about a signed or indefinite terminal readout. -/
theorem heat_energy_contracts (t : ℝ) (f : Cochain0) (ht : 0 ≤ t) :
    pairing (heat t f) (laplacian (heat t f)) ≤
      pairing f (laplacian f) := by
  rw [heat_energy_exact]
  have hp : 0 ≤ pairing f (laplacian f) := laplacian_positive f
  have hexp_nonneg : 0 ≤ Real.exp (-2 * t) :=
    (Real.exp_pos _).le
  have hexp_le : Real.exp (-2 * t) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    nlinarith
  have hsq : (Real.exp (-2 * t)) ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hexp_le)
      (add_nonneg hexp_nonneg (show (0 : ℝ) ≤ 1 by norm_num))]
  calc
    (Real.exp (-2 * t)) ^ 2 * pairing f (laplacian f) ≤
        1 * pairing f (laplacian f) :=
      mul_le_mul_of_nonneg_right hsq hp
    _ = pairing f (laplacian f) := one_mul _

end GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge
