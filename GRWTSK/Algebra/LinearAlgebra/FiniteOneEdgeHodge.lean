/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib work retains upstream authorship and licenses. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Finite one-edge Hodge complex with positive pairing

The oriented one-edge incidence 0 → 1 has cochains
C⁰ = (Fin 2 → ℝ), C¹ = ℝ, and the actual differential
  δ f = f(1) - f(0).
Its adjoint and Laplacian are derived from the standard positive dot
pairing. No signed Hermite/screw form is used as an inner product.

The Laplacian is not gapped on the whole space: constant sections are
harmonic. Heat estimates must account for that zero mode.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge

/-- Zero-cochains at the two oriented endpoints. -/
abbrev Cochain0 := Fin 2 → ℝ

/-- One edge-cochain is a real scalar. -/
abbrev Cochain1 := ℝ

/-- The exact orientation-sensitive edge coboundary. -/
def coboundary : Cochain0 →ₗ[ℝ] Cochain1 where
  toFun f := f 1 - f 0
  map_add' f g := by
    change (f 1 + g 1) - (f 0 + g 0) =
      (f 1 - f 0) + (g 1 - g 0)
    ring
  map_smul' a f := by
    change (a * f 1) - (a * f 0) = a * (f 1 - f 0)
    ring

@[simp] theorem coboundary_apply (f : Cochain0) :
    coboundary f = f 1 - f 0 := rfl

/-- The algebraic adjoint with respect to the positive coordinate dot
pairing on C⁰ and ordinary multiplication on C¹. -/
def adjoint : Cochain1 →ₗ[ℝ] Cochain0 where
  toFun a i := if i = 0 then -a else a
  map_add' a b := by
    funext i
    fin_cases i <;>
      simp [Pi.add_apply] <;> ring
  map_smul' a b := by
    funext i
    fin_cases i <;>
      simp [Pi.smul_apply, smul_eq_mul] <;> ring

@[simp] theorem adjoint_zero_apply (a : ℝ) :
    adjoint a 0 = -a := rfl

@[simp] theorem adjoint_one_apply (a : ℝ) :
    adjoint a 1 = a := rfl

/-- Positive zero-cochain pairing. -/
def pairing (f g : Cochain0) : ℝ := ∑ i, f i * g i

theorem coboundary_adjoint (f : Cochain0) (a : ℝ) :
    coboundary f * a = pairing f (adjoint a) := by
  simp [pairing, coboundary, adjoint, Fin.sum_univ_two]
  ring

/-- Actual non-diagonal graph Laplacian δ*δ. -/
def laplacian : Cochain0 →ₗ[ℝ] Cochain0 :=
  adjoint.comp coboundary

theorem laplacian_apply_zero (f : Cochain0) :
    laplacian f 0 = f 0 - f 1 := by
  simp [laplacian]
  ring

theorem laplacian_apply_one (f : Cochain0) :
    laplacian f 1 = f 1 - f 0 := by
  simp [laplacian]

/-- The actual positive quadratic-form identity, with no signed consumer. -/
theorem laplacian_energy (f : Cochain0) :
    pairing f (laplacian f) = (f 1 - f 0) ^ 2 := by
  simp [pairing, laplacian, coboundary, adjoint, Fin.sum_univ_two]
  ring

theorem laplacian_positive (f : Cochain0) :
    0 ≤ pairing f (laplacian f) := by
  rw [laplacian_energy]
  exact sq_nonneg _

/-- The positive cochain metric makes the Laplacian genuinely symmetric. -/
theorem laplacian_symmetric (f g : Cochain0) :
    pairing f (laplacian g) = pairing (laplacian f) g := by
  simp [pairing, laplacian, coboundary, adjoint, Fin.sum_univ_two]
  ring

/-- Harmonic means exactly that the values agree across this one edge. -/
theorem harmonic_iff_equal_values (f : Cochain0) :
    laplacian f = 0 ↔ f 0 = f 1 := by
  constructor
  · intro h
    have h0 := congrFun h 0
    have hscalar : f 0 - f 1 = 0 := by
      simpa only [laplacian_apply_zero, Pi.zero_apply] using h0
    exact sub_eq_zero.mp hscalar
  · intro h
    have hc : coboundary f = 0 := by
      simp [coboundary, h]
    change adjoint (coboundary f) = 0
    rw [hc]
    exact map_zero adjoint

theorem harmonic_iff_coboundary_zero (f : Cochain0) :
    laplacian f = 0 ↔ coboundary f = 0 := by
  rw [harmonic_iff_equal_values]
  simp [coboundary, eq_comm]

end GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge
