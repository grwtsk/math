/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/
import Mathlib.Tactic

/-!
# Dwork coefficient ledger for the two actual height-two B4 coboundaries

The adjacent AlpogeThetaDworkB4.md records the exact B4 source from
Alpoge's formal ProductZerothFirstParts.lean, including BOTH cobX
and cobY and the original height-two jetLogG substitution.
The mathematical equivalence between B4 and the all-degree
Dieudonne-Dwork Frobenius congruences is classical and written in
the adjacent note. This Lean file proves ONLY elementary finite
coefficient facts and the first genuine elliptic-sigma jet algebra.

No actual infinite theta-kernel B4, arithmetic inequality (M),
RH, Xi Newton positivity or Hilbert-Polya selfadjointness is
asserted or imported. These remain independently OPEN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeThetaDworkB4

/-- A full multivariate Dwork residual at one exponent:
p*g_n minus Frobenius(g_(n/p)) when EVERY exponent is divisible
by p, with the coefficient Frobenius lift passed explicitly. -/
def dworkCoefficient {d : ℕ} (p : ℕ)
    (sigma : ℂ → ℂ) (g : (Fin d → ℕ) → ℂ)
    (nu : Fin d → ℕ) : ℂ := by
  classical
  exact (p : ℂ) * g nu -
    if ∀ j : Fin d, p ∣ nu j then
      sigma (g (fun j => nu j / p))
    else 0

/-- A non-divisible multi-index has no Frobenius predecessor.
This is a local source algebra step, not proof of B4 integrality. -/
theorem dwork_nonmultiple {d : ℕ} (p : ℕ)
    (sigma : ℂ → ℂ) (g : (Fin d → ℕ) → ℂ)
    (nu : Fin d → ℕ)
    (h : ¬ ∀ j : Fin d, p ∣ nu j) :
    dworkCoefficient p sigma g nu = (p : ℂ) * g nu := by
  simp [dworkCoefficient, h]

/-- For a divisible multi-index, retain the full coefficient
Frobenius term; it is NOT silently replaced by zero. -/
theorem dwork_multiple {d : ℕ} (p : ℕ)
    (sigma : ℂ → ℂ) (g : (Fin d → ℕ) → ℂ)
    (nu : Fin d → ℕ)
    (h : ∀ j : Fin d, p ∣ nu j) :
    dworkCoefficient p sigma g nu =
      (p : ℂ) * g nu - sigma (g (fun j => nu j / p)) := by
  simp [dworkCoefficient, h]

/-- Actual sigma example: the leading torus-projected beta at p=3
is (5i/3)(X^3 Y + X Y^3). Its FIRST coboundary has the
integral coefficient 5i, even though 5i/3 itself is nonintegral.
The opposite coboundary follows by exchanging X and Y. -/
theorem genuine_sigma_three_first_coboundary
    (x y z : ℂ) :
    (5 * Complex.I / 3) *
      (((x + y) ^ 3 - x ^ 3 - y ^ 3) * z) =
      5 * Complex.I * ((x ^ 2 * y + x * y ^ 2) * z) := by
  ring

/-- Hostile B1/B2/B3 torus invariant beta=(1/9)X^3 Y:
its first coboundary contains coefficient 1/3 and hence
is not 3-adically integral. -/
theorem hostile_three_invariant_first_coboundary :
    (1 / 9 : ℚ) * 3 = 1 / 3 := by
  norm_num

/-- The Dwork residual of that hostile coefficient 1/3 is
the non-divisible exponent coefficient 1, not a multiple of 3. -/
theorem hostile_three_dwork_residual :
    (3 : ℚ) * (1 / 3) = 1 := by
  norm_num

/-- General exact first-Frobenius coefficient regrouping.
The multivariable source extraction leading to this expression is
proved analytically in the adjacent mathematical note, NOT here. -/
theorem first_frobenius_ray_regroup (b31 b39 : ℂ) :
    (3 : ℂ) * (b31 / 3 + b39) = b31 + 3 * b39 := by
  ring

/-- The actual elliptic-sigma model's degree-4 and degree-12
source terms cancel the height-two L(T) denominator at degree12:
3 * ((5i/3)/3 - 26i/9) = -7i.
This checks only the scalar rational coefficient, NOT B4 globally. -/
theorem first_sigma_frobenius_cancellation :
    (3 : ℚ) * (((5 : ℚ) / 3) / 3 - (26 : ℚ) / 9) = -7 := by
  norm_num

/-- Exact unit test on the independently evaluated degree-84
Frobenius-ray rational source coefficient. The equality of this
fraction with the TRUE sigma formal-series coefficient was
checked by the byte-pinned Python script, not in this Lean theorem. -/
theorem second_sigma_frobenius_3adic_unit :
    (7109870427383233146882397592536214309 : ℕ) % 3 = 2 ∧
    (9225341050208863777507671356201171875 : ℕ) % 3 = 1 := by
  norm_num

end GRWTSK.NumberTheory.AlpogeThetaDworkB4
