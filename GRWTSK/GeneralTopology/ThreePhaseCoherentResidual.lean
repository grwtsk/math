/- Copyright (c) 2026 grwtsk contributors. MIT.

Exact complex three-coordinate splitting for the selected real three-phase
coefficient heat source.  Source proof candidates; compilation, fresh kernel
checking and transitive axiom audit are NOT_RUN.

This is a finite coefficient model, not a geometric Yang--Mills connection,
a QCD representation, or a proof of Navier--Stokes regularity.
-/
import GRWTSK.GeneralTopology.ThreePhaseCoefficientHeat
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoherentResidual

open scoped BigOperators

/-- The complex three-coordinate observation fiber, with no preferred
special-unitary group supplied. -/
abbrev Phase3 := Fin 3 → ℂ

def mean (z : Phase3) : ℂ :=
  (z 0 + z 1 + z 2) / 3

def coherent (z : Phase3) : Phase3 :=
  fun _ => mean z

def residual (z : Phase3) : Phase3 :=
  fun j => z j - mean z

/-- Exact source reconstruction into a coherent line and a residual plane. -/
theorem coherent_add_residual (z : Phase3) :
    coherent z + residual z = z := by
  funext j
  simp [coherent, residual]

theorem mean_coherent (z : Phase3) :
    mean (coherent z) = mean z := by
  simp only [mean, coherent]
  ring

theorem mean_residual (z : Phase3) :
    mean (residual z) = 0 := by
  simp only [mean, residual]
  ring

theorem residual_coherent (z : Phase3) :
    residual (coherent z) = 0 := by
  funext j
  simp [residual, coherent, mean_coherent]

theorem coherent_residual (z : Phase3) :
    coherent (residual z) = 0 := by
  funext j
  simp [coherent, mean_residual]

theorem residual_residual (z : Phase3) :
    residual (residual z) = residual z := by
  funext j
  simp [residual, mean_residual]

/-- The residual plane is the literal zero-sum plane in complex coordinates. -/
theorem residual_sum_zero (z : Phase3) :
    residual z 0 + residual z 1 + residual z 2 = 0 := by
  simp only [residual, mean]
  ring


/-- The coordinate mean is additive. -/
theorem mean_add (z w : Phase3) :
    mean (z + w) = mean z + mean w := by
  simp only [mean, Pi.add_apply]
  ring

/-- The coherent-plus-zero-mean representation is unique.  This provides the
direct-sum witness without assuming a particular basis of the residual plane. -/
theorem coherent_residual_unique
    (z a b : Phase3)
    (ha : ∀ j, a j = mean a)
    (hb : mean b = 0)
    (hs : a + b = z) :
    a = coherent z ∧ b = residual z := by
  have hm : mean a = mean z := by
    rw [← hs, mean_add, hb, add_zero]
  have hae : a = coherent z := by
    funext j
    calc
      a j = mean a := ha j
      _ = mean z := hm
      _ = coherent z j := rfl
  refine ⟨hae, ?_⟩
  funext j
  have hj : a j + b j = z j := by
    have h := congrArg (fun v : Phase3 => v j) hs
    simpa only [Pi.add_apply] using h
  calc
    b j = z j - a j := by
      calc
        b j = a j + b j - a j := by ring
        _ = z j - a j := by rw [hj]
    _ = z j - mean z := by rw [hae]; rfl
    _ = residual z j := rfl

/-- Complex extension of the selected real heat flow: coherent coordinate
fixed, residual coordinates multiplied by the original real heat factor. -/
def heat (t : ℝ) (z : Phase3) : Phase3 :=
  fun j => mean z +
    ((GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t : ℝ) : ℂ) * (z j - mean z)

theorem mean_heat (t : ℝ) (z : Phase3) :
    mean (heat t z) = mean z := by
  simp only [mean, heat]
  ring

theorem residual_heat (t : ℝ) (z : Phase3) (j : Fin 3) :
    residual (heat t z) j =
      ((GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t : ℝ) : ℂ) * residual z j := by
  simp [residual, heat, mean_heat]
  ring

theorem heat_coherent (t : ℝ) (z : Phase3) :
    heat t (coherent z) = coherent z := by
  funext j
  simp [heat, coherent, mean_coherent]

/-- The real three-phase source injects coordinatewise into the complex fiber. -/
def ofReal (z : GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.Triple) : Phase3 :=
  fun j => (z j : ℂ)

theorem mean_ofReal (z : GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.Triple) :
    mean (ofReal z) = (GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.mean z : ℂ) := by
  simp only [mean, ofReal, GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.mean]
  push_cast
  ring

/-- The complex heat definition is source-exact on real coefficient data. -/
theorem heat_ofReal (t : ℝ) (z : GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.Triple) :
    heat t (ofReal z) = ofReal (GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.flow t z) := by
  funext j
  change mean (ofReal z) +
      (GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t : ℂ) * ((z j : ℂ) - mean (ofReal z)) =
    ((GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.mean z + GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t * (z j - GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.mean z) : ℝ) : ℂ)
  rw [mean_ofReal]
  push_cast
  ring

/-- The positive residual-shell observation; it does not discard the
coherent coordinate or identify distinct source frequencies. -/
def residualEnergy (z : Phase3) : ℝ :=
  ∑ j : Fin 3, ‖residual z j‖ ^ 2

theorem residualEnergy_nonnegative (z : Phase3) :
    0 ≤ residualEnergy z :=
  Finset.sum_nonneg (fun j _ => sq_nonneg _)

/-- Exact residual-energy attenuation for the complex extension, not a
unitary action on the full fiber. -/
theorem residualEnergy_heat (t : ℝ) (z : Phase3) :
    residualEnergy (heat t z) =
      Real.exp (-6 * t) * residualEnergy z := by
  have hp : 0 < GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t := GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay_pos t
  have hfactor : ‖((GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t : ℝ) : ℂ)‖ = GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t := by
    simpa [Complex.norm_real, Real.norm_eq_abs, abs_of_pos hp]
  calc
    residualEnergy (heat t z) =
        (GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay t) ^ 2 * residualEnergy z := by
      simp only [residualEnergy, Fin.sum_univ_three, residual_heat,
        norm_mul, hfactor]
      ring
    _ = Real.exp (-6 * t) * residualEnergy z := by
      rw [GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat.decay_square]

/-- The cyclic permutation gives a concrete nontrivial torsion/phase
transport candidate.  No SU(3) or continuous rotation group is inferred. -/
def cyclic (z : Phase3) : Phase3 :=
  fun j => z (j + 1)

private theorem cyclic_index_zero : (0 : Fin 3) + 1 = 1 := by decide
private theorem cyclic_index_one : (1 : Fin 3) + 1 = 2 := by decide
private theorem cyclic_index_two : (2 : Fin 3) + 1 = 0 := by decide

theorem mean_cyclic (z : Phase3) :
    mean (cyclic z) = mean z := by
  simp only [mean, cyclic, cyclic_index_zero, cyclic_index_one,
    cyclic_index_two]
  ring

theorem residual_cyclic (z : Phase3) :
    residual (cyclic z) = cyclic (residual z) := by
  funext j
  simp [residual, cyclic, mean_cyclic]

theorem cyclic_three (z : Phase3) :
    cyclic (cyclic (cyclic z)) = z := by
  funext j
  change z (((j + 1) + 1) + 1) = z j
  have h : ((j + 1) + 1) + 1 = j := by
    fin_cases j <;> decide
  rw [h]

/-- Cyclic torsion preserves the exact positive residual-shell energy. -/
theorem residualEnergy_cyclic (z : Phase3) :
    residualEnergy (cyclic z) = residualEnergy z := by
  simp only [residualEnergy, residual_cyclic, Fin.sum_univ_three,
    cyclic, cyclic_index_zero, cyclic_index_one, cyclic_index_two]
  ring

/-- This concrete torsion symmetry commutes with the selected heat:
angular transport and radial dissipation are distinguished explicitly. -/
theorem heat_cyclic (t : ℝ) (z : Phase3) :
    heat t (cyclic z) = cyclic (heat t z) := by
  funext j
  simp only [heat, cyclic, mean_cyclic]

end GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoherentResidual
