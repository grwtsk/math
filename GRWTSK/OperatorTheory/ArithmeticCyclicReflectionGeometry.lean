/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicEuclideanLeakage
import GRWTSK.OperatorTheory.DeterminantSectorCoercivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Full complex reflection-sector geometry

The reflection acts on every cyclic coordinate. Opposite actual parity
sectors are orthogonal, hence their squared Euclidean norms add exactly.
This discharges a geometric input of the finite determinant comparison.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Actual mixed-energy estimates and both sector coercivity bounds remain
inputs. No physical vacuum, continuum limit or Yang–Mills mass gap is supplied.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicReflectionGeometry
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicReflection ArithmeticCyclicOperatorStability
open DeterminantSectorCoercivity

variable (N : ℕ) [NeZero N]

def reflectionVector (a : ZMod N) (x : EuclideanSpace ℂ (ZMod N)) :
    EuclideanSpace ℂ (ZMod N) := WithLp.toLp 2 (reflection N a (WithLp.ofLp x))

theorem reflectionVector_involutive (a : ZMod N) (x : EuclideanSpace ℂ (ZMod N)) :
    reflectionVector N a (reflectionVector N a x) = x := by
  apply WithLp.ofLp_injective 2
  exact reflection_involutive N a (WithLp.ofLp x)

theorem inner_reflectionVector (a : ZMod N) (x y : EuclideanSpace ℂ (ZMod N)) :
    inner ℂ (reflectionVector N a x) y = inner ℂ x (reflectionVector N a y) := by
  let e : Equiv.Perm (ZMod N) :=
    { toFun := fun i => a - i
      invFun := fun i => a - i
      left_inv := by intro i; abel
      right_inv := by intro i; abel }
  simp only [PiLp.inner_apply]
  change (∑ i, inner ℂ (x (a - i)) (y i)) =
    ∑ i, inner ℂ (x i) (y (a - i))
  apply Fintype.sum_equiv e
  intro i
  change inner ℂ (x (a - i)) (y i) = inner ℂ (x (a - i)) (y (a - (a - i)))
  have h : a - (a - i) = i := by abel
  rw [h]

theorem opposite_sectors_orthogonal (a : ZMod N)
    (u v : EuclideanSpace ℂ (ZMod N))
    (hu : reflectionVector N a u = u) (hv : reflectionVector N a v = -v) :
    inner ℂ u v = 0 := by
  have h := inner_reflectionVector N a u v
  rw [hu, hv, inner_neg_right] at h
  linear_combination h / 2

theorem opposite_sectors_norm_add (a : ZMod N)
    (u v : EuclideanSpace ℂ (ZMod N))
    (hu : reflectionVector N a u = u) (hv : reflectionVector N a v = -v) :
    ‖u + v‖ ^ 2 = ‖u‖ ^ 2 + ‖v‖ ^ 2 := by
  exact norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero u v
    (opposite_sectors_orthogonal N a u v hu hv)

/-- Parity replaces only the geometric norm premise; source energies remain explicit. -/
theorem coercivity_of_actual_opposite_sectors (a : ZMod N) (t : ℝ)
    (q : ZMod N → ℝ) (u v : EuclideanSpace ℂ (ZMod N))
    (huParity : reflectionVector N a u = u) (hvParity : reflectionVector N a v = -v)
    (α β c : ℝ) (htrace : 0 < α + β) (hdet : 0 < α * β - c ^ 2)
    (hu : α * ‖u‖ ^ 2 ≤ hamiltonianEnergy N t q u)
    (hv : β * ‖v‖ ^ 2 ≤ hamiltonianEnergy N t q v)
    (hcross : -2 * c * ‖u‖ * ‖v‖ ≤ mixedEnergy N t q u v) :
    0 < determinantGap α β c ∧
      determinantGap α β c * ‖u + v‖ ^ 2 ≤ hamiltonianEnergy N t q (u + v) := by
  exact positive_coercivity_of_two_sectors N t q u v α β c htrace hdet
    (opposite_sectors_norm_add N a u v huParity hvParity) hu hv hcross

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicReflectionGeometry
