/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Determinant-controlled complementary-sector coercivity

The comparison form is a*x^2+b*y^2-2*c*x*y. Its exact trace identity yields
the explicit lower coefficient (a*b-c^2)/(a+b) whenever the trace is positive.
The coefficient is positive when the determinant is positive. This can retain
a positive bound even when the coarser min(a,b)-c bound is nonpositive.

The operator application uses the actual signed arithmetic cyclic Hamiltonian,
both mixed terms, and the norm identity of the same full-vector decomposition.
All sector and cross-term bounds remain explicit hypotheses. The model's
nonpositive-determinant obstruction concerns that real comparison form; it
does not refute a gap for an operator known only to lie above that form.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No physical Yang-Mills Hamiltonian, vacuum identification, regulator-uniform
bound or continuum reconstruction is supplied.
-/

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity

def comparisonForm (a b c x y : ℝ) : ℝ := a * x ^ 2 + b * y ^ 2 - 2 * c * x * y
def determinantGap (a b c : ℝ) : ℝ := (a * b - c ^ 2) / (a + b)

theorem trace_identity (a b c x y : ℝ) :
    (a + b) * comparisonForm a b c x y -
      (a * b - c ^ 2) * (x ^ 2 + y ^ 2) =
        (a * x - c * y) ^ 2 + (c * x - b * y) ^ 2 := by
  unfold comparisonForm
  ring

theorem determinantGap_pos (a b c : ℝ)
    (htrace : 0 < a + b) (hdet : 0 < a * b - c ^ 2) :
    0 < determinantGap a b c := div_pos hdet htrace

theorem comparison_lower_bound (a b c x y : ℝ) (htrace : 0 < a + b) :
    determinantGap a b c * (x ^ 2 + y ^ 2) ≤ comparisonForm a b c x y := by
  unfold determinantGap
  rw [div_mul_eq_mul_div]
  apply (div_le_iff₀ htrace).mpr
  have hn : 0 ≤ (a + b) * comparisonForm a b c x y -
      (a * b - c ^ 2) * (x ^ 2 + y ^ 2) := by
    rw [trace_identity]
    exact add_nonneg (sq_nonneg _) (sq_nonneg _)
  have h := sub_nonneg.mp hn
  simpa only [mul_comm] using h

/-- Failure of the determinant condition obstructs the comparison matrix itself. -/
theorem no_positive_comparison_gap (a b c : ℝ)
    (ha : 0 < a) (hdet : a * b - c ^ 2 ≤ 0) :
    ¬ ∃ κ : ℝ, 0 < κ ∧ ∀ x y : ℝ,
      κ * (x ^ 2 + y ^ 2) ≤ comparisonForm a b c x y := by
  rintro ⟨κ, hκ, hbound⟩
  have hw := hbound c a
  have heq : comparisonForm a b c c a = a * (a * b - c ^ 2) := by
    unfold comparisonForm
    ring
  have hnonpos : comparisonForm a b c c a ≤ 0 := by
    rw [heq]
    exact mul_nonpos_of_nonneg_of_nonpos ha.le hdet
  have ha2 : 0 < a ^ 2 := pow_pos ha 2
  have hm : 0 < c ^ 2 + a ^ 2 := by nlinarith [sq_nonneg c, ha2]
  have hp := mul_pos hκ hm
  linarith

/-- An asymmetric example retained by the determinant bound. -/
theorem asymmetric_positive_example :
    determinantGap 1 9 2 = 1 / 2 ∧ min (1 : ℝ) 9 - 2 < 0 := by
  norm_num [determinantGap]

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [hN : NeZero N]
include hN

def hamiltonianEnergy (t : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) : ℝ :=
  (inner ℂ x (hamiltonianOperator N t q x)).re

def mixedEnergy (t : ℝ) (q : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N)) : ℝ :=
  (inner ℂ u (hamiltonianOperator N t q v)).re +
    (inner ℂ v (hamiltonianOperator N t q u)).re

/-- Both ordered mixed terms are retained before any estimate or symmetry reduction. -/
theorem energy_add (t : ℝ) (q : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N)) :
    hamiltonianEnergy N t q (u + v) =
      hamiltonianEnergy N t q u + hamiltonianEnergy N t q v + mixedEnergy N t q u v := by
  simp only [hamiltonianEnergy, mixedEnergy, map_add, inner_add_left, inner_add_right,
    Complex.add_re]
  ring

/-- A positive full-vector coefficient requires both sectors and the actual mixed estimate. -/
theorem positive_coercivity_of_two_sectors
    (t : ℝ) (q : ZMod N → ℝ) (u v : EuclideanSpace ℂ (ZMod N))
    (a b c : ℝ) (htrace : 0 < a + b) (hdet : 0 < a * b - c ^ 2)
    (hnorm : ‖u + v‖ ^ 2 = ‖u‖ ^ 2 + ‖v‖ ^ 2)
    (hu : a * ‖u‖ ^ 2 ≤ hamiltonianEnergy N t q u)
    (hv : b * ‖v‖ ^ 2 ≤ hamiltonianEnergy N t q v)
    (hcross : -2 * c * ‖u‖ * ‖v‖ ≤ mixedEnergy N t q u v) :
    0 < determinantGap a b c ∧
      determinantGap a b c * ‖u + v‖ ^ 2 ≤ hamiltonianEnergy N t q (u + v) := by
  refine ⟨determinantGap_pos a b c htrace hdet, ?_⟩
  have hsource : comparisonForm a b c ‖u‖ ‖v‖ ≤ hamiltonianEnergy N t q (u + v) := by
    rw [energy_add]
    unfold comparisonForm
    linarith
  calc
    determinantGap a b c * ‖u + v‖ ^ 2 =
        determinantGap a b c * (‖u‖ ^ 2 + ‖v‖ ^ 2) := by rw [hnorm]
    _ ≤ comparisonForm a b c ‖u‖ ‖v‖ := comparison_lower_bound a b c ‖u‖ ‖v‖ htrace
    _ ≤ hamiltonianEnergy N t q (u + v) := hsource

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
