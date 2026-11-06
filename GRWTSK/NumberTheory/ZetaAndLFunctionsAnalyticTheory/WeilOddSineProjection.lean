/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.MeasureTheory.Integral.Bochner.Basic

/-!
# Literal odd Weil sine projections

These definitions and the shift symmetry proof come from
`WeilOddRootProjection.lean` at grwtsk/math 4aa07b984bed972317719629c0a59359cd2cdabf.
The original module imports them. Finite Schur accounting can use the same
integral-defined source directly. The comparison of these finite integrals
with the completed L-function and the operator-domain realization remain
separate analytical obligations.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

variable {q : ℕ} [NeZero q]

def pairedPrimeWeight (χ : DirichletCharacter ℂ q) (n : ℕ) : ℝ :=
  primeWeight n * (χ (n : ZMod q)).re

/-! Literal finite projections. These definitions keep the source integrals;
no diagonalization or undocumented Fourier correspondence is used to define them.
Their integrability and equality to the canonical form are explained above.
The odd basis starts at n=1 and includes EVERY sine mode through M. -/

def zeroExtendedSine (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  if t ∈ Set.Icc (-T) T then Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T
  else 0

def sineCorrelation (T : ℝ) (m n : ℕ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, zeroExtendedSine T m t * zeroExtendedSine T n (t + r)

def sineShiftEntry (T : ℝ) (m n : ℕ) (r : ℝ) : ℝ :=
  sineCorrelation T m n r + sineCorrelation T n m r

theorem sineShiftEntry_symmetric (T : ℝ) (m n : ℕ) (r : ℝ) :
    sineShiftEntry T m n r = sineShiftEntry T n m r := by
  unfold sineShiftEntry
  ring

def sineArchimedeanEntry (T c : ℝ) (a m n : ℕ) : ℝ :=
  c * (∫ t : ℝ, zeroExtendedSine T m t * zeroExtendedSine T n t) +
    ∫ r in Set.Ioi (0 : ℝ), parityKernel a r *
      (∫ t : ℝ, (zeroExtendedSine T m (t + r) - zeroExtendedSine T m t) *
        (zeroExtendedSine T n (t + r) - zeroExtendedSine T n t))

def sinePoleMoment (T u : ℝ) (n : ℕ) : ℝ :=
  ∫ t : ℝ, zeroExtendedSine T n t * Real.exp (u * t)

/-- Both source pole orientations, NOT a pair of positive squares. -/
def sinePoleEntry (T : ℝ) (m n : ℕ) : ℝ :=
  sinePoleMoment T (1 / 2) m * sinePoleMoment T (-1 / 2) n +
    sinePoleMoment T (-1 / 2) m * sinePoleMoment T (1 / 2) n

/-- Literal full zeta sine compression, independent of any numerical observer. -/
def zetaSineMatrix (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  fun i j =>
    sineArchimedeanEntry T (gammaConstant 1 0) 0 (i.val + 1) (j.val + 1) +
    sinePoleEntry T (i.val + 1) (j.val + 1) -
    ∑ n ∈ activePrimePowers T,
      primeWeight n * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))

/-- A primitive NONPRINCIPAL pair has its own conductor and gamma kernel and
NO pole term. These proof arguments enforce the source scope at construction. -/
def primitivePairSineMatrix (χ : DirichletCharacter ℂ q)
    (_hprimitive : χ.IsPrimitive) (_hnonprincipal : χ ≠ 1)
    (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  fun i j =>
    sineArchimedeanEntry T (gammaConstant q (gammaParity χ)) (gammaParity χ)
      (i.val + 1) (j.val + 1) -
    ∑ n ∈ activePrimePowers T, pairedPrimeWeight χ n *
      sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))

/-- Actual projection coordinates of a supplied real function, not labels or
adjacency traces. Negative witnesses require the analytical form return. -/
def sineCoordinates (T : ℝ) (M : ℕ) (f : ℝ → ℝ) : Fin M → ℝ :=
  fun i => ∫ t : ℝ, zeroExtendedSine T (i.val + 1) t * f t

end GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
