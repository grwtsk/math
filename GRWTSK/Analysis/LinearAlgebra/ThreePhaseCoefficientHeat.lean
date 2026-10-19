/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib real exponential, finite sums and differentiation (Apache-2.0).
Formalization assistance: OpenAI.

Selected unit-weight three-phase coefficient heat with one independent
closure channel. This is NOT the geometric Dolbeault/Hodge heat operator.
The entire phase-diagonal section is fixed. Rate 3 and squared-energy rate 6
are retained separately. Real time does not act by lattice automorphisms.
Source proof scripts only; no elaboration or kernel acceptance is asserted.
-/
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FinCases

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat

open scoped BigOperators

abbrev Triple := Fin 3 → ℝ

def mean (z : Triple) : ℝ := (z 0 + z 1 + z 2) / 3

def relax (d : ℝ) (z : Triple) : Triple := fun j => mean z + d * (z j - mean z)

/-- The selected finite positive-mode rate, not an inferred geometric gap. -/
def decay (t : ℝ) : ℝ := Real.exp (-3 * t)

def flow (t : ℝ) (z : Triple) : Triple := relax (decay t) z

@[simp] theorem mean_relax (d : ℝ) (z : Triple) : mean (relax d z) = mean z := by
  simp only [mean, relax]
  ring

@[simp] theorem relax_one (z : Triple) : relax 1 z = z := by
  funext j
  dsimp [relax]
  ring

/-- Algebraic attenuation has a multiplicative parameter. -/
theorem relax_comp (d e : ℝ) (z : Triple) : relax d (relax e z) = relax (d * e) z := by
  funext j
  simp only [relax, mean_relax]
  ring

@[simp] theorem decay_zero : decay 0 = 1 := by simp [decay]

theorem decay_add (s t : ℝ) : decay (s + t) = decay s * decay t := by
  simp only [decay, mul_add, Real.exp_add]

theorem decay_pos (t : ℝ) : 0 < decay t := Real.exp_pos _

/-- State damping and squared-energy damping have different exponents. -/
theorem decay_square (t : ℝ) : decay t ^ 2 = Real.exp (-6 * t) := by
  rw [pow_two, decay, ← Real.exp_add]
  congr 1
  ring

@[simp] theorem flow_zero (z : Triple) : flow 0 z = z := by simp [flow]

theorem flow_add (s t : ℝ) (z : Triple) : flow (s + t) z = flow s (flow t z) := by
  simp only [flow, decay_add, relax_comp]

@[simp] theorem mean_flow (t : ℝ) (z : Triple) : mean (flow t z) = mean z := mean_relax _ _

/-- Ordinary real coefficient topology, not discrete finite-jet observations. -/
theorem flow_continuous (z : Triple) : Continuous (fun t : ℝ => flow t z) := by
  apply continuous_pi
  intro j
  exact continuous_const.add
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul continuous_const)

def generator (z : Triple) : Triple := fun j => 3 * (z j - mean z)

/-- The derivative is bound to the explicitly declared generator at the current state. -/
theorem flow_derivative (z : Triple) (j : Fin 3) (t : ℝ) :
    HasDerivAt (fun s => flow s z j) (-(generator (flow t z) j)) t := by
  have h := (((hasDerivAt_id t).const_mul (-3 : ℝ)).exp.mul_const
    (z j - mean z)).const_add (mean z)
  convert h using 1 <;> simp only [generator, mean_flow, flow, relax, decay] <;> ring

def phaseEnergy (z : Triple) : ℝ := ∑ j, z j ^ 2

def residualEnergy (z : Triple) : ℝ := ∑ j, (z j - mean z) ^ 2

/-- The full selected metric includes one closure coordinate, not a fourth phase port. -/
def totalEnergy (lam : ℝ) (z : Triple) (c : ℝ) : ℝ := phaseEnergy z + lam * c ^ 2

def defectEnergy (lam : ℝ) (z : Triple) (c : ℝ) : ℝ := residualEnergy z + lam * c ^ 2

theorem energy_decomposition (lam : ℝ) (z : Triple) (c : ℝ) :
    totalEnergy lam z c = 3 * mean z ^ 2 + defectEnergy lam z c := by
  simp only [totalEnergy, defectEnergy, phaseEnergy, residualEnergy, Fin.sum_univ_three, mean]
  ring

/-- Standard triangle edge energy has gap 3 on the mean-zero phase plane. -/
theorem edge_energy (z : Triple) :
    (z 1 - z 0) ^ 2 + (z 2 - z 1) ^ 2 + (z 0 - z 2) ^ 2 = 3 * residualEnergy z := by
  simp only [residualEnergy, Fin.sum_univ_three, mean]
  ring

/-- Adding the declared closure rate retains the exact finite-cell coercivity identity. -/
theorem filled_cell_gap (lam : ℝ) (z : Triple) (c : ℝ) :
    (z 1 - z 0) ^ 2 + (z 2 - z 1) ^ 2 + (z 0 - z 2) ^ 2 + 3 * lam * c ^ 2 =
      3 * defectEnergy lam z c := by
  rw [edge_energy]
  unfold defectEnergy
  ring

theorem defect_nonneg (lam : ℝ) (hlam : 0 ≤ lam) (z : Triple) (c : ℝ) :
    0 ≤ defectEnergy lam z c :=
  add_nonneg (Finset.sum_nonneg (fun j _ => sq_nonneg (z j - mean z)))
    (mul_nonneg hlam (sq_nonneg c))

/-- Positivity of the closure weight is necessary for detecting that channel. -/
theorem defect_zero_iff (lam : ℝ) (hlam : 0 < lam) (z : Triple) (c : ℝ) :
    defectEnergy lam z c = 0 ↔ (∀ j, z j = mean z) ∧ c = 0 := by
  constructor
  · intro h
    have hr : 0 ≤ residualEnergy z := Finset.sum_nonneg (fun j _ => sq_nonneg _)
    have hc : 0 ≤ lam * c ^ 2 := mul_nonneg hlam.le (sq_nonneg c)
    change residualEnergy z + lam * c ^ 2 = 0 at h
    have hz : residualEnergy z = 0 := by linarith
    have hcz : c = 0 := by nlinarith [sq_nonneg c]
    refine ⟨?_, hcz⟩
    intro j
    have hj : (z j - mean z) ^ 2 ≤ residualEnergy z :=
      Finset.single_le_sum (fun i _ => sq_nonneg _) (Finset.mem_univ j)
    rw [hz] at hj
    nlinarith [sq_nonneg (z j - mean z)]
  · rintro ⟨hz, rfl⟩
    simp [defectEnergy, residualEnergy, hz]

/-- Exact attenuation at arbitrary scalar d; no exponential arithmetic is needed here. -/
theorem defect_relax (lam d : ℝ) (z : Triple) (c : ℝ) :
    defectEnergy lam (relax d z) (d * c) = d ^ 2 * defectEnergy lam z c := by
  simp only [defectEnergy, residualEnergy, mean_relax, Fin.sum_univ_three, relax]
  ring

theorem defect_flow (lam t : ℝ) (z : Triple) (c : ℝ) :
    defectEnergy lam (flow t z) (decay t * c) =
      Real.exp (-6 * t) * defectEnergy lam z c := by
  rw [flow, defect_relax, decay_square]

/-- The coherent section is retained rather than spuriously damped. -/
theorem total_flow (lam t : ℝ) (z : Triple) (c : ℝ) :
    totalEnergy lam (flow t z) (decay t * c) =
      3 * mean z ^ 2 + Real.exp (-6 * t) * defectEnergy lam z c := by
  rw [energy_decomposition, mean_flow, defect_flow]

/-- Positive time contracts defects; negative time is deliberately not covered. -/
theorem defect_contraction (lam : ℝ) (hlam : 0 ≤ lam) (t : ℝ) (ht : 0 ≤ t)
    (z : Triple) (c : ℝ) :
    defectEnergy lam (flow t z) (decay t * c) ≤ defectEnergy lam z c := by
  rw [defect_flow]
  have he : Real.exp (-6 * t) ≤ 1 := by
    calc
      Real.exp (-6 * t) ≤ Real.exp 0 := Real.exp_le_exp.mpr (by linarith)
      _ = 1 := Real.exp_zero
  exact mul_le_of_le_one_left (defect_nonneg lam hlam z c) he

/-- No finite heat time turns a nonzero exact defect into zero. -/
theorem finite_time_zero_iff (lam t : ℝ) (z : Triple) (c : ℝ) :
    defectEnergy lam (flow t z) (decay t * c) = 0 ↔ defectEnergy lam z c = 0 := by
  rw [defect_flow, mul_eq_zero]
  simp only [ne_of_gt (Real.exp_pos (-6 * t)), false_or]

/-- A concrete nonstationary real-time path; no periodic-return claim is attached. -/
theorem nonconstant_fixture : flow 1 ![1, -1, 0] ≠ flow 0 ![1, -1, 0] := by
  intro h
  have h0 := congrFun h 0
  have he : Real.exp (-3 : ℝ) < 1 := by
    calc
      Real.exp (-3 : ℝ) < Real.exp 0 := Real.exp_lt_exp.mpr (by norm_num)
      _ = 1 := Real.exp_zero
  norm_num [flow, relax, mean, decay] at h0
  linarith

end GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat
