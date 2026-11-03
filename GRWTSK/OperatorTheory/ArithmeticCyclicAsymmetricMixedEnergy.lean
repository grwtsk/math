/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicReflectionGeometry

set_option autoImplicit false
noncomputable section

/-!
# Actual asymmetric-potential control of both ordered mixed energies

Reflection orthogonality removes the same-parity part of each actual output.
The retained opposite-parity output equals multiplication by (q-q_ref)/2.
Both ordered inner products are estimated before summation. The potential
uses its real finite sup norm; vectors retain their full complex L2 norm.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Sector lower bounds, determinant positivity, physical vacuum identification,
regulator-uniform estimates and a continuum construction remain unsupplied.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicAsymmetricMixedEnergy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicReflection ArithmeticCyclicSectorLeakage
open ArithmeticCyclicOperatorStability ArithmeticCyclicEuclideanLeakage
open ArithmeticCyclicReflectionGeometry DeterminantSectorCoercivity

variable (N : ℕ) [NeZero N]

theorem evenOutput_eq_half_sum (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (v : EuclideanSpace ℂ (ZMod N)) :
    evenOutput N a t q v = (2 : ℂ)⁻¹ •
      (hamiltonianOperator N t q v + reflectionVector N a (hamiltonianOperator N t q v)) := by
  apply WithLp.ofLp_injective 2
  funext i
  change ((hamiltonianOperator N t q v) i +
      (hamiltonianOperator N t q v) (a - i)) / 2 =
    (2 : ℂ)⁻¹ * ((hamiltonianOperator N t q v) i +
      (hamiltonianOperator N t q v) (a - i))
  ring

theorem oddOutput_eq_half_difference (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (u : EuclideanSpace ℂ (ZMod N)) :
    oddOutput N a t q u = (2 : ℂ)⁻¹ •
      (hamiltonianOperator N t q u - reflectionVector N a (hamiltonianOperator N t q u)) := by
  apply WithLp.ofLp_injective 2
  funext i
  change ((hamiltonianOperator N t q u) i -
      (hamiltonianOperator N t q u) (a - i)) / 2 =
    (2 : ℂ)⁻¹ * ((hamiltonianOperator N t q u) i -
      (hamiltonianOperator N t q u) (a - i))
  ring

theorem inner_evenOutput_of_even (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N)) (hu : reflectionVector N a u = u) :
    inner ℂ u (evenOutput N a t q v) = inner ℂ u (hamiltonianOperator N t q v) := by
  rw [evenOutput_eq_half_sum, inner_smul_right, inner_add_right,
    ← inner_reflectionVector, hu]
  ring

theorem inner_oddOutput_of_odd (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (v u : EuclideanSpace ℂ (ZMod N)) (hv : reflectionVector N a v = -v) :
    inner ℂ v (oddOutput N a t q u) = inner ℂ v (hamiltonianOperator N t q u) := by
  rw [oddOutput_eq_half_difference, inner_smul_right, inner_sub_right,
    ← inner_reflectionVector, hv, inner_neg_left]
  ring

theorem diagonal_inner_abs_re_le (d : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N)) :
    |(inner ℂ u (diagonalOperator N d v)).re| ≤ ‖d‖ * ‖u‖ * ‖v‖ := by
  have hd := (diagonalOperator N d).le_opNorm v
  rw [diagonalOperator_norm] at hd
  calc
    _ ≤ ‖inner ℂ u (diagonalOperator N d v)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖u‖ * ‖diagonalOperator N d v‖ := norm_inner_le_norm _ _
    _ ≤ ‖u‖ * (‖d‖ * ‖v‖) := mul_le_mul_of_nonneg_left hd (norm_nonneg u)
    _ = _ := by ring

/-- The first ordered coupling equals its actual diagonal leakage pairing. -/
theorem even_odd_inner_eq_diagonal (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N))
    (hu : reflectionVector N a u = u) (hv : reflectionVector N a v = -v) :
    inner ℂ u (hamiltonianOperator N t q v) =
      inner ℂ u (diagonalOperator N (asymmetricPotential N a q) v) := by
  have hvr : reflection N a (WithLp.ofLp v) = -WithLp.ofLp v :=
    congrArg WithLp.ofLp hv
  rw [← inner_evenOutput_of_even N a t q u v hu,
    evenOutput_eq_diagonal_of_odd N a t q v hvr]

/-- The second ordered coupling is retained independently. -/
theorem odd_even_inner_eq_diagonal (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N))
    (hu : reflectionVector N a u = u) (hv : reflectionVector N a v = -v) :
    inner ℂ v (hamiltonianOperator N t q u) =
      inner ℂ v (diagonalOperator N (asymmetricPotential N a q) u) := by
  have hur : reflection N a (WithLp.ofLp u) = WithLp.ofLp u :=
    congrArg WithLp.ofLp hu
  rw [← inner_oddOutput_of_odd N a t q v u hv,
    oddOutput_eq_diagonal_of_even N a t q u hur]

theorem mixedEnergy_abs_le_asymmetry (a : ZMod N) (t : ℝ) (q : ZMod N → ℝ)
    (u v : EuclideanSpace ℂ (ZMod N))
    (hu : reflectionVector N a u = u) (hv : reflectionVector N a v = -v) :
    |mixedEnergy N t q u v| ≤ 2 * ‖asymmetricPotential N a q‖ * ‖u‖ * ‖v‖ := by
  unfold mixedEnergy
  rw [even_odd_inner_eq_diagonal N a t q u v hu hv,
    odd_even_inner_eq_diagonal N a t q u v hu hv]
  calc
    _ ≤ |(inner ℂ u (diagonalOperator N (asymmetricPotential N a q) v)).re| +
        |(inner ℂ v (diagonalOperator N (asymmetricPotential N a q) u)).re| := abs_add _ _
    _ ≤ ‖asymmetricPotential N a q‖ * ‖u‖ * ‖v‖ +
        ‖asymmetricPotential N a q‖ * ‖v‖ * ‖u‖ :=
      add_le_add (diagonal_inner_abs_re_le N _ u v) (diagonal_inner_abs_re_le N _ v u)
    _ = _ := by ring

/-- Geometry and coupling are derived; only the actual energy gaps remain inputs. -/
theorem coercivity_of_sector_bounds_and_asymmetry (a : ZMod N) (t : ℝ)
    (q : ZMod N → ℝ) (u v : EuclideanSpace ℂ (ZMod N))
    (huParity : reflectionVector N a u = u) (hvParity : reflectionVector N a v = -v)
    (α β : ℝ) (htrace : 0 < α + β)
    (hdet : 0 < α * β - ‖asymmetricPotential N a q‖ ^ 2)
    (hu : α * ‖u‖ ^ 2 ≤ hamiltonianEnergy N t q u)
    (hv : β * ‖v‖ ^ 2 ≤ hamiltonianEnergy N t q v) :
    0 < determinantGap α β ‖asymmetricPotential N a q‖ ∧
      determinantGap α β ‖asymmetricPotential N a q‖ * ‖u + v‖ ^ 2 ≤
        hamiltonianEnergy N t q (u + v) := by
  apply coercivity_of_actual_opposite_sectors N a t q u v huParity hvParity
    α β ‖asymmetricPotential N a q‖ htrace hdet hu hv
  have h := (abs_le.mp (mixedEnergy_abs_le_asymmetry N a t q u v huParity hvParity)).1
  simpa only [neg_mul] using h

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicAsymmetricMixedEnergy
