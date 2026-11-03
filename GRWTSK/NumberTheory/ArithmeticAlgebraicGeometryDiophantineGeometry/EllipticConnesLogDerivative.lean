/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The elliptic record and finite counts retain their original upstream
mathematical attribution in Record4239Curve.lean.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticConnesLocalTrace
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPowerSeriesLocalFactor
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Signed elliptic local logarithmic-derivative input to an adelic trace formula

For q and the original reduction count N_q, a_q=q+1-N_q and
P_q(T)=1-a_q*T+q*T^2. Its actual reciprocal formal series is
the Mathlib goodSeries from EllipticPowerSeriesLocalFactor.

Define t_0=2, t_1=a_q, t_(n+2)=a_q*t_(n+1)-q*t_n using the
existing source extensionTrace, and define F_q(T)=sum_(n>=1)t_n*T^n.

The all-degree source identity is
   P_q(T)*F_q(T) = a_q*T-2*q*T^2 = -T*P_q'(T).
It is a signed formal power-series identity; it never substitutes
a positive Gram for trace data. Combined with the ACTUAL Mathlib
localPowerSeries at a good place, it is the local algebraic input
for -L'/L and an explicit formula.

This is NOT a global Connes trace formula, an automorphic comparison,
a proof of Frobenius action on etale cohomology, an archimedean
analytic continuation, a center-jet pairing or BSD.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ConnesLogDerivative

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ConnesLocalTrace
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries

/-- Signed power trace series with zero constant term.
The genuine source is extensionTrace from the original count. -/
def logTraceCoeff (q count : ℕ) : ℕ → ℤ
  | 0 => 0
  | n + 1 => extensionTrace q count (n + 1)

def logTraceSeries (q count : ℕ) : PowerSeries ℤ :=
  PowerSeries.mk (logTraceCoeff q count)

/-- The exact quadratic logarithmic-derivative numerator, -T P'(T).
No logarithm or analytic convergence is used. -/
def logTraceNumerator (q count : ℕ) : PowerSeries ℤ :=
  PowerSeries.C (frobeniusTrace q count) * PowerSeries.X -
    PowerSeries.C (2 * (q : ℤ)) * PowerSeries.X ^ 2

/-- The coefficient packet of P_q(T) F_q(T), with boundaries at 0 and 1. -/
def traceProductCoeff (q count : ℕ) : ℕ → ℤ
  | 0 => logTraceCoeff q count 0
  | 1 => logTraceCoeff q count 1 -
      frobeniusTrace q count * logTraceCoeff q count 0
  | n + 2 => logTraceCoeff q count (n + 2) -
      frobeniusTrace q count * logTraceCoeff q count (n + 1) +
        (q : ℤ) * logTraceCoeff q count n

theorem traceProductCoeff_zero (q count : ℕ) :
    traceProductCoeff q count 0 = 0 := rfl

theorem traceProductCoeff_one (q count : ℕ) :
    traceProductCoeff q count 1 = frobeniusTrace q count := by
  simp [traceProductCoeff, logTraceCoeff, extensionTrace_one]

theorem traceProductCoeff_two (q count : ℕ) :
    traceProductCoeff q count 2 = -(2 * (q : ℤ)) := by
  simp [traceProductCoeff, logTraceCoeff,
    extensionTrace_two, extensionTrace_one]
  ring

/-- Every higher coefficient vanishes by the ACTUAL source recurrence. -/
theorem traceProductCoeff_high (q count n : ℕ) :
    traceProductCoeff q count (n + 3) = 0 := by
  change extensionTrace q count (n + 3) -
    frobeniusTrace q count * extensionTrace q count (n + 2) +
      (q : ℤ) * extensionTrace q count (n + 1) = 0
  rw [show n + 3 = (n + 1) + 2 by omega,
    extensionTrace_recurrence]
  ring

/-- All-degree identity for actual Mathlib PowerSeries coefficients;
the input coefficients are the signed trace recurrence, not L coefficients. -/
theorem goodSeries_mul_logTraceSeries_coeff (q count n : ℕ) :
    PowerSeries.coeff n (goodSeries q count * logTraceSeries q count) =
      traceProductCoeff q count n := by
  let f : PowerSeries ℤ := logTraceSeries q count
  have hrewrite :
      goodSeries q count * f =
        f - PowerSeries.C (frobeniusTrace q count) *
            (PowerSeries.X ^ 1 * f) +
          PowerSeries.C (q : ℤ) *
            (PowerSeries.X ^ 2 * f) := by
    rw [goodSeries_eq_quadratic]
    ring
  change PowerSeries.coeff n (goodSeries q count * f) =
    traceProductCoeff q count n
  rw [hrewrite]
  cases n with
  | zero =>
      simp [traceProductCoeff, f, logTraceSeries, logTraceCoeff,
        PowerSeries.coeff_X_pow_mul']
  | succ n =>
      cases n with
      | zero =>
          simp [traceProductCoeff, f, logTraceSeries, logTraceCoeff,
            PowerSeries.coeff_X_pow_mul']
      | succ n =>
          simp [traceProductCoeff, f, logTraceSeries, logTraceCoeff,
            PowerSeries.coeff_X_pow_mul', Nat.add_assoc] <;> ring

/-- Complete local logarithmic-derivative identity in ACTUAL power series.
This is a mathematical full-coefficient equality, not a finite truncation. -/
theorem goodSeries_mul_logTraceSeries (q count : ℕ) :
    goodSeries q count * logTraceSeries q count =
      logTraceNumerator q count := by
  apply PowerSeries.ext
  intro n
  rw [goodSeries_mul_logTraceSeries_coeff]
  cases n with
  | zero =>
      simp [traceProductCoeff_zero, logTraceNumerator,
        PowerSeries.coeff_X_pow_mul']
  | succ n =>
      cases n with
      | zero =>
          simp [traceProductCoeff_one, logTraceNumerator,
            PowerSeries.coeff_X_pow_mul']
      | succ n =>
          cases n with
          | zero =>
              simp [traceProductCoeff_two, logTraceNumerator,
                PowerSeries.coeff_X_pow_mul'] <;> ring
          | succ n =>
              change traceProductCoeff q count (n + 3) =
                PowerSeries.coeff (n + 3) (logTraceNumerator q count)
              rw [traceProductCoeff_high]
              simp [logTraceNumerator, PowerSeries.coeff_X_pow_mul']

/-- Formal signed trace equals the genuine inverse Euler series multiplied
by -T P'(T). This uses the actual prior all-degree inversion theorem. -/
theorem logTraceSeries_eq_inverse_times_numerator (q count : ℕ) :
    logTraceSeries q count =
      directSeries q count * logTraceNumerator q count := by
  calc
    logTraceSeries q count =
        (1 : PowerSeries ℤ) * logTraceSeries q count := by ring
    _ = (goodSeries q count * directSeries q count) *
        logTraceSeries q count := by rw [goodSeries_mul_directSeries]
    _ = directSeries q count *
        (goodSeries q count * logTraceSeries q count) := by ring
    _ = directSeries q count * logTraceNumerator q count := by
      rw [goodSeries_mul_logTraceSeries]

/-- This comparison uses the ACTUAL chosen local minimal model in Mathlib.
The hypothesis is the place's genuine good reduction, not a numerical
label or an invented rank / analytic theorem. -/
theorem native_good_local_log_trace
    (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]
    (W : WeierstrassCurve K)
    (hgood : (W.minimal R).HasGoodReduction R) :
    W.localPowerSeries R *
        logTraceNumerator (localSize R) (localCount R W) =
      logTraceSeries (localSize R) (localCount R W) := by
  rw [localPowerSeries_good R W hgood]
  exact (logTraceSeries_eq_inverse_times_numerator _ _).symm

/-- A finite positive-count Euler factor is NOT a central zero.
Thus finite signed trace windows alone do not detect central vanishing. -/
theorem finite_good_center_nonzero
    (q count : ℕ) (hq : 0 < q) (hcount : 0 < count) :
    goodReciprocal q count ((q : ℚ)⁻¹) ≠ 0 := by
  rw [goodReciprocal_at_inverse q count hq]
  have hq' : (0 : ℚ) < q := by exact_mod_cast hq
  have hc' : (0 : ℚ) < count := by exact_mod_cast hcount
  exact ne_of_gt (div_pos hc' hq')

/-- The original two-prime count is finite and strictly positive at s=1;
the infinite-product / analytic-continuation step remains indispensable. -/
theorem record_seven_nineteen_center_positive :
    0 <
      goodReciprocal 7 (Record4239.reducedPointCount 7) (1 / 7) *
        goodReciprocal 19 (Record4239.reducedPointCount 19) (1 / 19) := by
  rw [record_window_seven_nineteen]
  norm_num

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ConnesLogDerivative
