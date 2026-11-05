/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib declarations retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.FilteredPrismaticWalk

/-!
# Complex modes and complete two-port polarization

Reuse the existing rational `equalizeModes` and `modeEnergy` through exact cast
comparisons; do not change their callers or the structural walk validator.
Use Mathlib complex numbers, `normSq`, matrices and linear maps. No parallel
complex-number, path, energy-certificate or filter-validation framework is added.

The actual two-port construction is P_(c,s), P_(-s,c), with c^2+s^2=1.
Expansion proves reconstruction and the sum of both output energies. Dropping
the second port has an explicit nonzero kernel, so no positive whole-space
lower frame is inferred from transmission on a prepared line. The real and
imaginary quadratures are coupled by complex multiplication, not two physical
polarization axes. The energy is Euclidean; no arbitrary Gram metric is assumed.

Primary argument: complex linear algebra and the real identity c^2+s^2=1.
Hostile checks: the perpendicular input, zero gains, global sign ambiguity.
Consumer: HarmonicPolarization, finite L-series routing and existing framed ports.
Local source baseline: grwtsk/math 67144c4b923ace618dbdb9c80e24f951a8981cac.
AI-assisted manual source drafting. Novelty and independent review: UNASSESSED.
Elaboration, fresh kernel checking and transitive axiom audit: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.LinearAlgebra.PolarizedModes

namespace Legacy
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics
abbrev equalizeModes := @PoeticSoficLanguage.equalizeModes
abbrev modeEnergy := @PoeticSoficLanguage.modeEnergy
end Legacy

universe u v
variable {Mode : Type u} {Out : Type v}

/-- Complete complex mode energy, including both real quadratures. -/
def energy [Fintype Mode] (z : Mode → ℂ) : ℝ := ∑ i, Complex.normSq (z i)

theorem energy_nonneg [Fintype Mode] (z : Mode → ℂ) : 0 ≤ energy z :=
  Finset.sum_nonneg fun i _ => Complex.normSq_nonneg (z i)

@[simp] theorem energy_zero [Fintype Mode] : energy (0 : Mode → ℂ) = 0 := by
  simp [energy]

theorem energy_quadratures [Fintype Mode] (z : Mode → ℂ) :
    energy z = (∑ i, (z i).re ^ 2) + ∑ i, (z i).im ^ 2 := by
  simp [energy, Complex.normSq_apply, pow_two, Finset.sum_add_distrib]

theorem energy_smul [Fintype Mode] (a : ℂ) (z : Mode → ℂ) :
    energy (a • z) = Complex.normSq a * energy z := by
  simp [energy, Pi.smul_apply, smul_eq_mul, Complex.normSq_mul, Finset.mul_sum]

@[simp] theorem energy_neg [Fintype Mode] (z : Mode → ℂ) :
    energy (-z) = energy z := by simp [energy]

/-- Complex diagonal action is an existing linear-map object. -/
def diagonal (gain : Mode → ℂ) : (Mode → ℂ) →ₗ[ℂ] (Mode → ℂ) where
  toFun z i := gain i * z i
  map_add' x y := by ext i; simp [mul_add]
  map_smul' a z := by
    ext i
    simp [Pi.smul_apply, smul_eq_mul, mul_assoc, mul_comm, mul_left_comm]

/-- The old rational equalizer is recovered exactly, not approximated. -/
theorem diagonal_rational (gain z : Mode → ℚ) :
    diagonal (fun i => (gain i : ℂ)) (fun i => (z i : ℂ)) =
      fun i => (Legacy.equalizeModes gain z i : ℂ) := by
  funext i
  simp [diagonal, Legacy.equalizeModes,
    GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage.equalizeModes]

theorem energy_rational [Fintype Mode] (z : Mode → ℚ) :
    energy (fun i => (z i : ℂ)) = (Legacy.modeEnergy z : ℝ) := by
  simp [energy, Legacy.modeEnergy,
    GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage.modeEnergy,
    pow_two]

/-- Realification retains the off-diagonal quadrature coupling. -/
theorem matrix_realification_re [Fintype Mode]
    (M : Matrix Out Mode ℂ) (z : Mode → ℂ) (i : Out) :
    (M.mulVec z i).re =
      ∑ j, ((M i j).re * (z j).re - (M i j).im * (z j).im) := by
  simp [Matrix.mulVec, dotProduct, Complex.mul_re]

theorem matrix_realification_im [Fintype Mode]
    (M : Matrix Out Mode ℂ) (z : Mode → ℂ) (i : Out) :
    (M.mulVec z i).im =
      ∑ j, ((M i j).re * (z j).im + (M i j).im * (z j).re) := by
  simp [Matrix.mulVec, dotProduct, Complex.mul_im]

abbrev Jones := Fin 2 → ℂ

def axis (c s : ℝ) : Jones := ![(c : ℂ), (s : ℂ)]
def amplitude (c s : ℝ) (z : Jones) : ℂ := (c : ℂ) * z 0 + (s : ℂ) * z 1

/-- For a unit real pair this is the orthogonal linear-polarization projector. -/
def project (c s : ℝ) : Jones →ₗ[ℂ] Jones where
  toFun z := amplitude c s z • axis c s
  map_add' x y := by
    ext i
    simp [amplitude, Pi.smul_apply, smul_eq_mul, mul_add, add_mul]
  map_smul' a z := by
    ext i
    simp [amplitude, Pi.smul_apply, smul_eq_mul] <;> ring

@[simp] theorem project_apply (c s : ℝ) (z : Jones) :
    project c s z = amplitude c s z • axis c s := rfl

@[simp] theorem energy_axis (c s : ℝ) : energy (axis c s) = c ^ 2 + s ^ 2 := by
  simp [energy, axis, Fin.sum_univ_two, pow_two]

theorem amplitude_axis (c s d e : ℝ) (a : ℂ) :
    amplitude c s (a • axis d e) = a * ((c : ℂ) * d + (s : ℂ) * e) := by
  simp [amplitude, axis, Pi.smul_apply, smul_eq_mul] <;> ring

theorem amplitude_self (c s : ℝ) (a : ℂ) (h : c ^ 2 + s ^ 2 = 1) :
    amplitude c s (a • axis c s) = a := by
  have hc : (c : ℂ) * c + (s : ℂ) * s = 1 := by
    exact_mod_cast (show c * c + s * s = 1 by nlinarith [h])
  rw [amplitude_axis, hc, mul_one]

theorem project_idempotent (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (z : Jones) :
    project c s (project c s z) = project c s z := by
  change amplitude c s (amplitude c s z • axis c s) • axis c s =
    amplitude c s z • axis c s
  rw [amplitude_self c s _ h]

/-- Both outputs are retained; their sum reconstructs the original amplitude. -/
theorem reconstruct (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (z : Jones) :
    project c s z + project (-s) c z = z := by
  have hc : (c : ℂ) ^ 2 + (s : ℂ) ^ 2 = 1 := by exact_mod_cast h
  ext i
  fin_cases i
  · simp [project, amplitude, axis, Pi.smul_apply, smul_eq_mul]
    linear_combination (z 0) * hc
  · simp [project, amplitude, axis, Pi.smul_apply, smul_eq_mul]
    linear_combination (z 1) * hc

/-- This identity is independent of the unit-axis hypothesis. -/
theorem amplitude_energy (c s : ℝ) (z : Jones) :
    Complex.normSq (amplitude c s z) + Complex.normSq (amplitude (-s) c z) =
      (c ^ 2 + s ^ 2) * energy z := by
  simp [amplitude, energy, Fin.sum_univ_two, Complex.normSq_apply,
    Complex.mul_re, Complex.mul_im] <;> ring

theorem complete_energy (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (z : Jones) :
    energy (project c s z) + energy (project (-s) c z) = energy z := by
  have hp : (-s) ^ 2 + c ^ 2 = 1 := by nlinarith [h]
  rw [project_apply, project_apply, energy_smul, energy_smul, energy_axis, energy_axis,
    h, hp, mul_one, mul_one, amplitude_energy, h, one_mul]

theorem project_energy_le (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (z : Jones) :
    energy (project c s z) ≤ energy z := by
  have hs := complete_energy c s h z
  have hn := energy_nonneg (project (-s) c z)
  linarith

/-- Actual containment of Euclidean-energy sublevel sets. -/
theorem project_sublevel (c s R : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    Set.MapsTo (project c s) {z | energy z ≤ R} {z | energy z ≤ R} := by
  intro z hz
  exact (project_energy_le c s h z).trans hz

@[simp] theorem project_perpendicular (c s : ℝ) :
    project c s (axis (-s) c) = 0 := by
  ext i
  simp [project, amplitude, axis, Pi.smul_apply, smul_eq_mul] <;> ring

theorem axis_ne_zero (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) : axis c s ≠ 0 := by
  intro hz
  have he := energy_axis c s
  rw [hz, energy_zero] at he
  linarith

theorem project_not_injective (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    ¬ Function.Injective (project c s) := by
  intro hi
  have hp : (-s) ^ 2 + c ^ 2 = 1 := by nlinarith [h]
  apply axis_ne_zero (-s) c hp
  apply hi
  simp only [project_perpendicular, map_zero]

/-- Positive transmission on a prepared ray is not a whole-space lower frame. -/
theorem no_positive_lower_frame (c s b : ℝ) (h : c ^ 2 + s ^ 2 = 1) (hb : 0 < b) :
    ¬ (∀ z : Jones, b * energy z ≤ energy (project c s z)) := by
  intro hf
  have hs := hf (axis (-s) c)
  simp only [project_perpendicular, energy_zero, energy_axis] at hs
  have hp : (-s) ^ 2 + c ^ 2 = 1 := by nlinarith [h]
  rw [hp, mul_one] at hs
  linarith

theorem trigonometric_unit (θ : ℝ) : Real.cos θ ^ 2 + Real.sin θ ^ 2 = 1 := by
  nlinarith [Real.sin_sq_add_cos_sq θ]

/-- Exact phase-sensitive effect on a prepared complex ray. -/
theorem project_prepared (θ φ : ℝ) (a : ℂ) :
    project (Real.cos θ) (Real.sin θ) (a • axis (Real.cos φ) (Real.sin φ)) =
      (a * (Real.cos (θ - φ) : ℂ)) • axis (Real.cos θ) (Real.sin θ) := by
  rw [project_apply, amplitude_axis]
  congr 2
  simp only [Real.cos_sub, Complex.ofReal_add, Complex.ofReal_mul]

end GRWTSK.LinearAlgebra.PolarizedModes
