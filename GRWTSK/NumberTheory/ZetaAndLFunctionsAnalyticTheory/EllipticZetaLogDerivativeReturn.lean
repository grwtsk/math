/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
AI-assisted source proof candidate / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticConnesLogDerivative
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticFiniteFieldTorsionRHReturn
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExtensionCountDivisibility
import Mathlib.RingTheory.PowerSeries.WellKnown
import Mathlib.Tactic

/-!
# Exact extension-count zeta logarithmic derivative (integral formal series)

## Source identity and consumer

Retain the ORIGINAL source `FiniteEulerWindow.frobeniusTrace q N = q+1-N`,
`extensionTrace q N k`, and the original `FiniteFieldTorsionRH.ExtensionCountSource`.
The prior `ConnesLogDerivative.goodSeries_mul_logTraceSeries` gives, with
`P(T) = 1-aT+qT²` and `F(T) = sum_{k>=1} t_k T^k`,

    P(T) F(T) = aT - 2qT².

The two honest geometric series of 1 and q^k give

    (1-T)(1-qT) sum_{k>=1} (1+q^k)T^k
         = T(1-qT) + qT(1-T).

When a genuinely justified `ExtensionCountSource q N counts` identifies
`counts k = q^k + 1 - t_k` for every k>0, their difference returns

    (1-T)(1-qT)P(T) * sum_{k>=1} counts(k) T^k
       = N T (1-qT²).                                   (*)

This is a complete *integral* formal power-series identity, not a
truncation or numerical certificate. It proves the rational formula for
the logarithmic derivative of the genus-one zeta function (the zeta
function itself would be defined by exp(sum counts(k) T^k/k)):

   T Z'(T)/Z(T) = N T(1-qT²)/[(1-T)(1-qT)P(T)],
   Z(T) = P(T)/[(1-T)(1-qT)].

The second line is the classical formal-exponential integration over Q;
this file formalizes the integral cleared identity (*), NOT an equality
of formal exponentials nor an analytic continuation theorem. There is
no Hasse assumption in (*). The source comparison of actual geometric
counts with the original trace recurrence remains the independent
elliptic-isogeny degree obligation. In particular, a positive spin
kernel does not supply `ExtensionCountSource`.

A hostile check: divisibility N | counts(k), even for every k, is not
sufficient for (*). If q=5, N=9, the source counts begin 9,27,108;
replacing the degree-two count 27 by 9 still preserves divisibility but
violates the T² coefficient of (*).

Closest existing mathematics: the standard genus-one Hasse--Weil zeta
rationality identity (Weil 1948; Silverman, Arithmetic of Elliptic
Curves, 2nd ed. 2009, V.2, Theorem 2.4). The formal-series computation
is elementary, not claimed novel. The earlier local good-series and
signed Frobenius trace results are reused verbatim; this file does not
assert a new proof of geometric RH, classical RH, or Dirichlet GRH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ZetaLogDerivativeReturn

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExtensionCountDivisibility
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ConnesLogDerivative
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries

/-- The *original signed* q^k+1-extensionTrace source, unconditionally
encoded in the integer power-series ring for every q and N. A signed
term is NOT an actual curve count without the geometric count return. -/
def sourceSignedPointSeries (q N : ℕ) : PowerSeries ℤ :=
  PowerSeries.mk fun n => if n = 0 then 0 else signedExtensionCount q N n

/-- Original extension point-count inventory as an integral formal power
series, with its zero constant term. No claimed equality to a zeta
function unless the count source below is supplied. -/
def positiveExtensionCountSeries (counts : ℕ → ℕ) : PowerSeries ℤ :=
  PowerSeries.mk fun n => if n = 0 then 0 else (counts n : ℤ)

/-- The honest formal geometric series with all coefficients equal to 1. -/
def geometricOne : PowerSeries ℤ := PowerSeries.mk fun _ => 1

/-- The honest formal geometric series with k-th coefficient q^k. -/
def geometricQ (q : ℕ) : PowerSeries ℤ :=
  PowerSeries.rescale (q : ℤ) geometricOne

/-- Sum_{k>=1} T^k, including the exact zero constant coefficient. -/
def oneOrbitLogSeries : PowerSeries ℤ := PowerSeries.X * geometricOne

/-- Sum_{k>=1} q^k T^k, including the exact zero constant coefficient. -/
def qOrbitLogSeries (q : ℕ) : PowerSeries ℤ :=
  PowerSeries.C (q : ℤ) * (PowerSeries.X * geometricQ q)

/-- The two geometric-series denominators of the actual finite-field
zeta function, with the correct size q rather than a prime label. -/
def ambientDenominator (q : ℕ) : PowerSeries ℤ :=
  (1 - PowerSeries.X) * (1 - PowerSeries.C (q : ℤ) * PowerSeries.X)

@[simp] theorem coeff_geometricOne (n : ℕ) :
    PowerSeries.coeff n geometricOne = 1 := by
  simp [geometricOne]

@[simp] theorem coeff_geometricQ (q n : ℕ) :
    PowerSeries.coeff n (geometricQ q) = (q : ℤ) ^ n := by
  simp [geometricQ, PowerSeries.rescale_mk, geometricOne]

@[simp] theorem coeff_oneOrbit_zero :
    PowerSeries.coeff 0 oneOrbitLogSeries = 0 := by
  simp [oneOrbitLogSeries]

@[simp] theorem coeff_qOrbit_zero (q : ℕ) :
    PowerSeries.coeff 0 (qOrbitLogSeries q) = 0 := by
  simp [qOrbitLogSeries]

@[simp] theorem coeff_oneOrbit_succ (n : ℕ) :
    PowerSeries.coeff (n + 1) oneOrbitLogSeries = 1 := by
  simp [oneOrbitLogSeries]

@[simp] theorem coeff_qOrbit_succ (q n : ℕ) :
    PowerSeries.coeff (n + 1) (qOrbitLogSeries q) = (q : ℤ) ^ (n + 1) := by
  simp only [qOrbitLogSeries, PowerSeries.coeff_C_mul,
    PowerSeries.coeff_succ_X_mul, coeff_geometricQ]
  rw [pow_succ, mul_comm]

/-- UNCONDITIONAL identity for the original signed source recurrence,
without Hasse, elliptic isogeny degree, finite extension counts, or any
`ExtensionCountSource` premise. This is the algebraic core of the zeta
logarithmic derivative. -/
theorem sourceSignedPointSeries_eq_orbits_sub_trace (q N : ℕ) :
    sourceSignedPointSeries q N =
      oneOrbitLogSeries + qOrbitLogSeries q - logTraceSeries q N := by
  apply PowerSeries.ext
  intro n
  cases n with
  | zero =>
      simp [sourceSignedPointSeries, logTraceSeries, logTraceCoeff]
  | succ n =>
      have hleft : PowerSeries.coeff (n + 1) (sourceSignedPointSeries q N) =
          (q : ℤ) ^ (n + 1) + 1 - extensionTrace q N (n + 1) := by
        simp [sourceSignedPointSeries, signedExtensionCount]
      have hright :
          PowerSeries.coeff (n + 1)
            (oneOrbitLogSeries + qOrbitLogSeries q - logTraceSeries q N) =
              (q : ℤ) ^ (n + 1) + 1 - extensionTrace q N (n + 1) := by
        simp only [map_sub, map_add, coeff_oneOrbit_succ,
          coeff_qOrbit_succ, logTraceSeries, logTraceCoeff, PowerSeries.coeff_mk]
        ring
      rw [hleft, hright]

/-- The UNCHANGED actual extension-count specification is the only
additional input needed to identify the genuine count series with the
already-proved signed count recurrence. -/
theorem positiveExtensionCountSeries_eq_source
    (q N : ℕ) (counts : ℕ → ℕ)
    (hcounts : ExtensionCountSource q N counts) :
    positiveExtensionCountSeries counts = sourceSignedPointSeries q N := by
  apply PowerSeries.ext
  intro n
  cases n with
  | zero =>
      simp [positiveExtensionCountSeries, sourceSignedPointSeries]
  | succ n =>
      have h := hcounts (n + 1) (Nat.succ_pos n)
      simpa [positiveExtensionCountSeries, sourceSignedPointSeries,
        signedExtensionCount] using h

/-- The original geometric count series, when justified, is transported
onto the unconditional source trace identity without weakening the count
comparison to an order/divisibility condition. -/
theorem positiveExtensionCountSeries_eq_orbits_sub_trace
    (q N : ℕ) (counts : ℕ → ℕ)
    (hcounts : ExtensionCountSource q N counts) :
    positiveExtensionCountSeries counts =
      oneOrbitLogSeries + qOrbitLogSeries q - logTraceSeries q N := by
  rw [positiveExtensionCountSeries_eq_source q N counts hcounts,
    sourceSignedPointSeries_eq_orbits_sub_trace]

/-- The all-one geometric series is the actual inverse of 1-X. -/
theorem geometricOne_mul_factor :
    geometricOne * (1 - PowerSeries.X) = 1 :=
  PowerSeries.mk_one_mul_one_sub_eq_one ℤ

/-- q^k has the *actual* q-weighted geometric-series denominator.
Obtained by rescaling Mathlib's all-one geometric-series identity,
not by postulating an inverse formal power series. -/
theorem geometricQ_mul_factor (q : ℕ) :
    geometricQ q * (1 - PowerSeries.C (q : ℤ) * PowerSeries.X) = 1 := by
  have h := congrArg (PowerSeries.rescale (q : ℤ)) geometricOne_mul_factor
  simpa only [geometricQ, map_mul, map_sub, map_one,
    PowerSeries.rescale_X] using h

/-- The ambient denominator clears the 1-orbit generating series. -/
theorem ambientDenominator_mul_oneOrbit (q : ℕ) :
    ambientDenominator q * oneOrbitLogSeries =
      PowerSeries.X * (1 - PowerSeries.C (q : ℤ) * PowerSeries.X) := by
  have h : (1 - PowerSeries.X) * geometricOne = (1 : PowerSeries ℤ) := by
    simpa only [mul_comm] using geometricOne_mul_factor
  calc
    ambientDenominator q * oneOrbitLogSeries =
        ((1 - PowerSeries.X) * geometricOne) *
          (PowerSeries.X * (1 - PowerSeries.C (q : ℤ) * PowerSeries.X)) := by
            unfold ambientDenominator oneOrbitLogSeries
            ring
    _ = _ := by rw [h, one_mul]

/-- The ambient denominator clears the q^k-orbit generating series. -/
theorem ambientDenominator_mul_qOrbit (q : ℕ) :
    ambientDenominator q * qOrbitLogSeries q =
      (PowerSeries.C (q : ℤ) * PowerSeries.X) *
        (1 - PowerSeries.X) := by
  have h : (1 - PowerSeries.C (q : ℤ) * PowerSeries.X) * geometricQ q =
      (1 : PowerSeries ℤ) := by
    simpa only [mul_comm] using geometricQ_mul_factor q
  calc
    ambientDenominator q * qOrbitLogSeries q =
        ((1 - PowerSeries.C (q : ℤ) * PowerSeries.X) * geometricQ q) *
          ((PowerSeries.C (q : ℤ) * PowerSeries.X) * (1 - PowerSeries.X)) := by
            unfold ambientDenominator qOrbitLogSeries
            ring
    _ = _ := by rw [h, one_mul]

/-- UNCONDITIONAL full formal logarithmic-derivative identity for
EVERY q,N, in the actual Mathlib `PowerSeries ℤ`. This theorem is about
the unchanged source `extensionTrace`, not about an arbitrary curve count.
It has NO `ExtensionCountSource` or Hasse premise. -/
theorem cleared_source_zeta_log_derivative (q N : ℕ) :
    ambientDenominator q * goodSeries q N * sourceSignedPointSeries q N =
      PowerSeries.C (N : ℤ) * PowerSeries.X *
        (1 - PowerSeries.C (q : ℤ) * PowerSeries.X ^ 2) := by
  let D := ambientDenominator q
  let P := goodSeries q N
  let F := logTraceSeries q N
  have ht : P * F = logTraceNumerator q N := goodSeries_mul_logTraceSeries q N
  have hcounts := sourceSignedPointSeries_eq_orbits_sub_trace q N
  calc
    D * P * sourceSignedPointSeries q N =
        D * P * (oneOrbitLogSeries + qOrbitLogSeries q - F) := by rw [hcounts]
    _ = P * (D * oneOrbitLogSeries + D * qOrbitLogSeries q) - D * (P * F) := by
        ring
    _ = P * (PowerSeries.X * (1 - PowerSeries.C (q : ℤ) * PowerSeries.X) +
          (PowerSeries.C (q : ℤ) * PowerSeries.X) * (1 - PowerSeries.X)) -
          D * logTraceNumerator q N := by
        rw [ambientDenominator_mul_oneOrbit, ambientDenominator_mul_qOrbit, ht]
    _ = PowerSeries.C (N : ℤ) * PowerSeries.X *
          (1 - PowerSeries.C (q : ℤ) * PowerSeries.X ^ 2) := by
        dsimp [P, D]
        rw [goodSeries_eq_quadratic]
        unfold ambientDenominator logTraceNumerator
        simp only [frobeniusTrace, map_add, map_sub, map_mul, map_one]
        ring

/-- Full actual count-to-zeta logarithmic-derivative numerator. Every
coefficient is justified by the ORIGINAL count source; the prior source
identity is unconditional, so no new analytic/sign assumption enters. -/
theorem cleared_point_count_zeta_log_derivative
    (q N : ℕ) (counts : ℕ → ℕ)
    (hcounts : ExtensionCountSource q N counts) :
    ambientDenominator q * goodSeries q N * positiveExtensionCountSeries counts =
      PowerSeries.C (N : ℤ) * PowerSeries.X *
        (1 - PowerSeries.C (q : ℤ) * PowerSeries.X ^ 2) := by
  rw [positiveExtensionCountSeries_eq_source q N counts hcounts]
  exact cleared_source_zeta_log_derivative q N

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ZetaLogDerivativeReturn
