/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream attribution and license. -/
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.LinearAlgebra.Matrix.Diagonal
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

/-!
# Finite label-phase group and diagonal double-commutator diffusion

This file proves the literal entrywise semigroup, derivative, diagonal and
symmetry identities. Gaussian probability representation and preservation of
positive semidefiniteness are not asserted here merely from these identities.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.OperatorTheory.FinitePhaseDiffusion

variable {ι : Type*}

def twist (d : ι → ℝ) (τ : ℝ) (a : ι → ℂ) (i : ι) : ℂ :=
  a i * Complex.exp (Complex.I * ((τ * d i : ℝ) : ℂ))

theorem twist_zero (d : ι → ℝ) (a : ι → ℂ) : twist d 0 a = a := by
  funext i
  simp [twist]

theorem twist_add (d : ι → ℝ) (τ σ : ℝ) (a : ι → ℂ) :
    twist d τ (twist d σ a) = twist d (τ + σ) a := by
  funext i
  unfold twist
  rw [mul_assoc, ← Complex.exp_add]
  congr 2
  push_cast
  ring

theorem twist_inverse (d : ι → ℝ) (τ : ℝ) (a : ι → ℂ) :
    twist d (-τ) (twist d τ a) = a := by
  rw [twist_add]
  simpa using twist_zero d a

theorem twist_norm (d : ι → ℝ) (τ : ℝ) (a : ι → ℂ) (i : ι) :
    ‖twist d τ a i‖ = ‖a i‖ := by
  simp [twist, norm_mul, Complex.norm_exp, Complex.mul_re]

/-- This is the entrywise form of the commutator with the real label diagonal. -/
def labelCommutator (d : ι → ℝ) (K : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  fun i j => (d i - d j) * K i j

theorem labelCommutator_eq_matrix [Fintype ι] [DecidableEq ι]
    (d : ι → ℝ) (K : Matrix ι ι ℝ) :
    labelCommutator d K = Matrix.diagonal d * K - K * Matrix.diagonal d := by
  ext i j
  simp [labelCommutator, Matrix.mul_apply, Matrix.diagonal, sub_mul] <;> ring

/-- Gaussian damping in squared label separation; source K is unchanged at s=0. -/
def heat (d : ι → ℝ) (s : ℝ) (K : Matrix ι ι ℝ) : Matrix ι ι ℝ :=
  fun i j => K i j * Real.exp (-s * (d i - d j) ^ 2)

@[simp] theorem heat_zero (d : ι → ℝ) (K : Matrix ι ι ℝ) : heat d 0 K = K := by
  ext i j
  simp [heat]

theorem heat_add (d : ι → ℝ) (s t : ℝ) (K : Matrix ι ι ℝ) :
    heat d s (heat d t K) = heat d (s + t) K := by
  ext i j
  unfold heat
  rw [mul_assoc, ← Real.exp_add]
  congr 2
  ring

@[simp] theorem heat_diagonal (d : ι → ℝ) (s : ℝ) (K : Matrix ι ι ℝ) (i : ι) :
    heat d s K i i = K i i := by simp [heat]

theorem heat_symmetric (d : ι → ℝ) (s : ℝ) (K : Matrix ι ι ℝ)
    (hK : ∀ i j, K i j = K j i) : ∀ i j, heat d s K i j = heat d s K j i := by
  intro i j
  unfold heat
  rw [hK i j]
  have he : (d i - d j) ^ 2 = (d j - d i) ^ 2 := by ring
  rw [he]

theorem heat_derivative (d : ι → ℝ) (K : Matrix ι ι ℝ) (s : ℝ) (i j : ι) :
    HasDerivAt (fun t => heat d t K i j)
      (-labelCommutator d (labelCommutator d (heat d s K)) i j) s := by
  have hd := ((((hasDerivAt_id s).neg).mul_const ((d i - d j) ^ 2)).exp).const_mul (K i j)
  convert hd using 1 <;> simp only [heat, labelCommutator, id_eq] <;> ring

/-- The finite trace is invariant. No monotonicity of a signed source readout is inferred. -/
theorem heat_trace [Fintype ι] [DecidableEq ι]
    (d : ι → ℝ) (s : ℝ) (K : Matrix ι ι ℝ) :
    Matrix.trace (heat d s K) = Matrix.trace K := by
  simp [Matrix.trace]

end GRWTSK.Analysis.OperatorTheory.FinitePhaseDiffusion
