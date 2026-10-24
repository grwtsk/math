/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Farey.CyclicResidueHodge
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar
import Mathlib.Tactic

/-!
# Ramanujan primitive frequencies and cyclic Hodge eigenmodes

The classical Ramanujan sum c_q(n) retains precisely primitive additive
frequencies k mod q. The full additive projector uses ALL frequencies.
We split the latter into primitive and nonprimitive parts without
pretending these two functions are equal. The zero-frequency Fourier
normalization remains exactly 1/q.

The canonical additive modes are eigenvectors of the cyclic difference
Laplacian D*D, in the explicit coordinate model. No bound on the
frequency support, no large-value theorem, and no source identification
with an infinite-volume zeta spectral operator is proved. This finite
Fourier model is distinct from algebraic-geometric CM Hodge classes.

The deeper divisor identity sum_{d | q} c_d(n) = q 1_{q | n} requires a
separate divisor-reindexing proof and is NOT silently claimed here.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Farey.RamanujanFourierHodge

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector

/-- Complex additive character mode on the finite cyclic residue graph. -/
def additiveMode (q : ℕ) [NeZero q]
    (k x : ZMod q) : ℂ :=
  ZMod.stdAddChar (k * x)

/-- A one-edge cyclic shift multiplies each Fourier mode by its character. -/
theorem additiveMode_shift (q : ℕ) [NeZero q]
    (k x : ZMod q) :
    additiveMode q k (x + 1) =
      ZMod.stdAddChar k * additiveMode q k x := by
  unfold additiveMode
  rw [mul_add, mul_one, AddChar.map_add_eq_mul]
  ring

/-- Backward shift formula, retaining the orientation of the cyclic graph. -/
theorem additiveMode_shift_back (q : ℕ) [NeZero q]
    (k x : ZMod q) :
    additiveMode q k (x - 1) =
      ZMod.stdAddChar (-k) * additiveMode q k x := by
  unfold additiveMode
  rw [mul_sub, mul_one, sub_eq_add_neg, AddChar.map_add_eq_mul]
  ring

/-- Complex forward difference for the cyclic graph. -/
def cyclicDifference (q : ℕ) [NeZero q]
    (f : ZMod q → ℂ) (x : ZMod q) : ℂ :=
  f (x + 1) - f x

/-- Backward-difference formal adjoint for the ordinary counting form. -/
def cyclicDifferenceStar (q : ℕ) [NeZero q]
    (g : ZMod q → ℂ) (x : ZMod q) : ℂ :=
  g (x - 1) - g x

/-- Coordinate realization of the cycle Laplacian. -/
def cyclicComplexLaplacian (q : ℕ) [NeZero q]
    (f : ZMod q → ℂ) (x : ZMod q) : ℂ :=
  2 * f x - f (x + 1) - f (x - 1)

/-- D*D is exactly the cyclic second difference. -/
theorem cyclicDifferenceStar_difference_eq_laplacian
    (q : ℕ) [NeZero q] (f : ZMod q → ℂ) (x : ZMod q) :
    cyclicDifferenceStar q (cyclicDifference q f) x =
      cyclicComplexLaplacian q f x := by
  simp only [cyclicDifferenceStar, cyclicDifference, cyclicComplexLaplacian]
  have hback : (x - 1 : ZMod q) + 1 = x := by ring
  rw [hback]
  ring

/-- Every additive character is an EXACT eigenmode of the cyclic Laplacian.
No spectral estimate follows from the finite eigenvalue identity. -/
theorem additiveMode_laplacian_eigen (q : ℕ) [NeZero q]
    (k x : ZMod q) :
    cyclicComplexLaplacian q (additiveMode q k) x =
      (2 - ZMod.stdAddChar k - ZMod.stdAddChar (-k)) *
        additiveMode q k x := by
  unfold cyclicComplexLaplacian
  rw [additiveMode_shift, additiveMode_shift_back]
  ring

/-- Classical primitive-frequency Ramanujan sum at modulus q. -/
def primitiveRamanujanSum (q : ℕ) [NeZero q]
    (x : ZMod q) : ℂ := by
  classical
  exact ∑ k : ZMod q,
    if IsUnit k then ZMod.stdAddChar (k * x) else 0

/-- Nonprimitive frequencies omitted from the Ramanujan sum. -/
def nonprimitiveFrequencySum (q : ℕ) [NeZero q]
    (x : ZMod q) : ℂ := by
  classical
  exact ∑ k : ZMod q,
    if IsUnit k then 0 else ZMod.stdAddChar (k * x)

/-- All-frequency orthogonality contains both primitive and nonprimitive
frequency components. This is the exact finite correction. -/
theorem fullFrequency_eq_primitive_add_nonprimitive
    (q : ℕ) [NeZero q] (x : ZMod q) :
    (∑ k : ZMod q, ZMod.stdAddChar (k * x)) =
      primitiveRamanujanSum q x + nonprimitiveFrequencySum q x := by
  classical
  unfold primitiveRamanujanSum nonprimitiveFrequencySum
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  by_cases hk : IsUnit k <;> simp [hk]

/-- Normalized complete additive projector reconstructed from the two
frequency pieces, without discarding nonunits or q normalization. -/
theorem characterAverage_primitive_nonprimitive
    (q : ℕ) [NeZero q] (x : ZMod q) :
    characterAverage q x =
      (q : ℂ)⁻¹ *
        (primitiveRamanujanSum q x + nonprimitiveFrequencySum q x) := by
  calc
    characterAverage q x =
        (q : ℂ)⁻¹ * ∑ k : ZMod q, ZMod.stdAddChar (k * x) := rfl
    _ = (q : ℂ)⁻¹ *
        (primitiveRamanujanSum q x + nonprimitiveFrequencySum q x) := by
      rw [fullFrequency_eq_primitive_add_nonprimitive q x]

end GRWTSK.NumberTheory.Farey.RamanujanFourierHodge
