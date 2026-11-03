/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Existing rank-32 record coefficients and finite counts retain their original
mathematical attribution in Record4239Curve.lean.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFiniteEulerWindow
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Direct degree-two elliptic local coefficients and exact Euler inversion

The earlier finite source attaches N_q to the reciprocal good-prime factor
  P_q(T) = 1 - a_q T + q T^2,  a_q=q+1-N_q.
This file constructs the coefficients of its *inverse* formal power series
without inventing an arithmetic carrier or confusing these coefficients
with those of the reciprocal polynomial.

For the local L-factor, c_0=1, c_1=a_q, and
  c_(n+2) = a_q c_(n+1) - q c_n.
The coefficient of P_q(T)*(sum c_n T^n) is 1 in degree zero and 0
in every positive degree. These are exact finite integer identities
at every exponent, not asymptotic statements or an assumed analytic limit.

In particular, direct c_2=a_q^2-q differs from reciprocal b_2=q,
while Frobenius trace t_2=a_q^2-2q differs from both.
The three distinct prime-square observations are retained explicitly.

The formal sequence should be compared to Mathlib's actual localPowerSeries
for a selected local minimal Weierstrass model before claiming that a
specific p-adic place's Euler factor has been realized. This module does
not supply such an integral-model comparison, geometric Frobenius, a
global Dirichlet Euler product, a signed cancellation estimate or BSD.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerInversion

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow

/-- The direct L-factor coefficient packet as a two-step state. The first
coordinate is c_n, the second is c_(n+1). It is indexed by the *actual*
finite residue-field size and count, not by arbitrary phase labels. -/
def directPair (q count : ℕ) : ℕ → ℤ × ℤ
  | 0 => (1, frobeniusTrace q count)
  | n + 1 =>
      let prev := directPair q count n
      (prev.2, frobeniusTrace q count * prev.2 - (q : ℤ) * prev.1)

/-- Integer Dirichlet coefficients of the direct (non-reciprocal)
local good-reduction Euler factor. -/
def directCoeff (q count n : ℕ) : ℤ := (directPair q count n).1

theorem directCoeff_zero (q count : ℕ) :
    directCoeff q count 0 = 1 := rfl

theorem directCoeff_one (q count : ℕ) :
    directCoeff q count 1 = frobeniusTrace q count := rfl

/-- The full two-step direct local L-factor recurrence at all exponents. -/
theorem directCoeff_recurrence (q count n : ℕ) :
    directCoeff q count (n + 2) =
      frobeniusTrace q count * directCoeff q count (n + 1) -
        (q : ℤ) * directCoeff q count n := by
  rfl

theorem directCoeff_two (q count : ℕ) :
    directCoeff q count 2 =
      (frobeniusTrace q count) ^ 2 - (q : ℤ) := by
  simp [directCoeff, directPair]
  ring

theorem directCoeff_three (q count : ℕ) :
    directCoeff q count 3 =
      (frobeniusTrace q count) ^ 3 -
        2 * (q : ℤ) * frobeniusTrace q count := by
  rw [show (3 : ℕ) = 1 + 2 by decide, directCoeff_recurrence,
    directCoeff_two, directCoeff_one]
  ring

/-- The actual coefficient of the product
  (1 - a_q*T + q*T^2) * sum_(n>=0) c_n*T^n.
The boundaries n=0 and n=1 do not read negative indices. -/
def localProductCoefficient (q count : ℕ) : ℕ → ℤ
  | 0 => directCoeff q count 0
  | 1 => directCoeff q count 1 -
      frobeniusTrace q count * directCoeff q count 0
  | n + 2 =>
      directCoeff q count (n + 2) -
        frobeniusTrace q count * directCoeff q count (n + 1) +
        (q : ℤ) * directCoeff q count n

/-- The constant coefficient is exactly one. -/
theorem localProductCoefficient_zero (q count : ℕ) :
    localProductCoefficient q count 0 = 1 := rfl

/-- Every positive coefficient vanishes, with the direct and reciprocal
prime-square terms both present. No Euler product limit is assumed. -/
theorem localProductCoefficient_succ (q count n : ℕ) :
    localProductCoefficient q count (n + 1) = 0 := by
  cases n with
  | zero =>
      simp [localProductCoefficient, directCoeff_zero, directCoeff_one]
  | succ n =>
      change directCoeff q count (n + 2) -
        frobeniusTrace q count * directCoeff q count (n + 1) +
        (q : ℤ) * directCoeff q count n = 0
      rw [directCoeff_recurrence]
      ring

/-- Complete local formal Euler inversion at the coefficient level:
the product packet is Kronecker delta, not merely a truncated degree-two
identity. -/
theorem localProductCoefficient_eq_delta (q count n : ℕ) :
    localProductCoefficient q count n = if n = 0 then 1 else 0 := by
  cases n with
  | zero => exact localProductCoefficient_zero q count
  | succ n =>
      simpa using localProductCoefficient_succ q count n

/-- The direct prime-square coefficient is the Frobenius second trace
PLUS q; the reciprocal square coefficient is q. -/
theorem trace_two_add_size_eq_direct_two (q count : ℕ) :
    extensionTrace q count 2 + (q : ℤ) =
      directCoeff q count 2 := by
  rw [extensionTrace_two, directCoeff_two]
  ring

theorem direct_two_sub_reciprocal_two (q count : ℕ) :
    directCoeff q count 2 - reciprocalCoefficient q count 2 =
      extensionTrace q count 2 := by
  rw [directCoeff_two, extensionTrace_two, reciprocal_prime_square]
  ring

/-! The original integer counts are the source, not assigned traces. -/

/-- Good prime p=7: direct local L coefficients at exponents 0,1,2,3. -/
theorem record_direct_seven :
    directCoeff 7 (Record4239.reducedPointCount 7) 0 = 1 ∧
    directCoeff 7 (Record4239.reducedPointCount 7) 1 = -5 ∧
    directCoeff 7 (Record4239.reducedPointCount 7) 2 = 18 ∧
    directCoeff 7 (Record4239.reducedPointCount 7) 3 = -55 := by
  rw [directCoeff_zero, directCoeff_one, directCoeff_two, directCoeff_three,
    record_trace_seven]
  norm_num

/-- Good prime p=19: direct local L coefficients at exponents 0,1,2,3. -/
theorem record_direct_nineteen :
    directCoeff 19 (Record4239.reducedPointCount 19) 0 = 1 ∧
    directCoeff 19 (Record4239.reducedPointCount 19) 1 = -7 ∧
    directCoeff 19 (Record4239.reducedPointCount 19) 2 = 30 ∧
    directCoeff 19 (Record4239.reducedPointCount 19) 3 = -77 := by
  rw [directCoeff_zero, directCoeff_one, directCoeff_two, directCoeff_three,
    record_trace_nineteen]
  norm_num

/-- Finite source-specific check: direct and reciprocal square terms,
and Frobenius trace, are three distinct integers at p=7. -/
theorem record_three_prime_square_seven :
    directCoeff 7 (Record4239.reducedPointCount 7) 2 = 18 ∧
    reciprocalCoefficient 7 (Record4239.reducedPointCount 7) 2 = 7 ∧
    extensionTrace 7 (Record4239.reducedPointCount 7) 2 = 11 := by
  rw [directCoeff_two, reciprocal_prime_square,
    record_second_trace_seven, record_trace_seven]
  norm_num

/-- Source-exact signed p^2 correction: the quadratic trace is
c_2 - b_2, not c_2 itself and not the reciprocal b_2 alone. -/
theorem record_three_prime_square_nineteen :
    directCoeff 19 (Record4239.reducedPointCount 19) 2 = 30 ∧
    reciprocalCoefficient 19 (Record4239.reducedPointCount 19) 2 = 19 ∧
    extensionTrace 19 (Record4239.reducedPointCount 19) 2 = 11 := by
  rw [directCoeff_two, reciprocal_prime_square,
    record_second_trace_nineteen, record_trace_nineteen]
  norm_num

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerInversion
