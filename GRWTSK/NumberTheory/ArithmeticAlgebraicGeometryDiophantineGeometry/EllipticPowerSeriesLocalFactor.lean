/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The record elliptic curve and integer point counts retain their original
mathematical attribution in the imported Record4239Curve source.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticLocalEulerCoefficientInversion
import Mathlib.AlgebraicGeometry.EllipticCurve.LFunction
import Mathlib.NumberTheory.Padics.RingHoms
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Degree-two local Euler inversion in the actual Mathlib PowerSeries

There are three independent source levels:
1. the existing integer recurrence c(n+2) = a*c(n+1) - q*c(n);
2. the real Mathlib PowerSeries inverse of the polynomial
   1 - a*X + q*X^2, with NO analytic convergence premise;
3. Mathlib's actual localPolynomial and localPowerSeries of a
   Weierstrass curve over a fraction field of a discrete valuation ring.

The first comparison is an equality in PowerSeries ℤ. The second
specializes it to the ACTUAL good-reduction branch of Mathlib's
localPolynomial for a specified ring, fraction field, and curve.
At the rational 7-adic source we separately expose the remaining
minimal-model count and good-reduction identification obligations.
The residue-field numeral 7 is not silently equated with the
rank-32 record's finite count 13, since Mathlib's localPolynomial
uses the chosen minimal model of the local curve.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerInversion
open Polynomial

/-- Actual polynomial in Mathlib, using the original point-count trace. -/
def goodPolynomial (q count : ℕ) : ℤ[X] :=
  1 - Polynomial.C (frobeniusTrace q count) * Polynomial.X +
    Polynomial.C (q : ℤ) * Polynomial.X ^ 2

/-- The integer local factor, in Mathlib's ACTUAL power series ring. -/
def goodSeries (q count : ℕ) : PowerSeries ℤ :=
  (goodPolynomial q count : PowerSeries ℤ)

/-- The complete previously constructed recurrence encoded using the
ACTUAL Mathlib power-series constructor. -/
def directSeries (q count : ℕ) : PowerSeries ℤ :=
  PowerSeries.mk (directCoeff q count)

/-- The polynomial inclusion commutes with each exact coefficient. -/
theorem goodSeries_eq_quadratic (q count : ℕ) :
    goodSeries q count =
      1 - PowerSeries.C (frobeniusTrace q count) * PowerSeries.X +
        PowerSeries.C (q : ℤ) * PowerSeries.X ^ 2 := by
  simp [goodSeries, goodPolynomial]

/-- The coefficient of the actual PowerSeries product is exactly the
previous all-degree source packet, not an independently chosen sequence. -/
theorem goodSeries_mul_directSeries_coeff (q count n : ℕ) :
    PowerSeries.coeff n (goodSeries q count * directSeries q count) =
      localProductCoefficient q count n := by
  let f : PowerSeries ℤ := directSeries q count
  have hrewrite :
      goodSeries q count * f =
        f - PowerSeries.C (frobeniusTrace q count) *
            (PowerSeries.X ^ 1 * f) +
          PowerSeries.C (q : ℤ) *
            (PowerSeries.X ^ 2 * f) := by
    rw [goodSeries_eq_quadratic]
    ring
  change PowerSeries.coeff n (goodSeries q count * f) =
    localProductCoefficient q count n
  rw [hrewrite]
  cases n with
  | zero =>
      simp [localProductCoefficient, f, directSeries,
        PowerSeries.coeff_X_pow_mul']
  | succ n =>
      cases n with
      | zero =>
          simp [localProductCoefficient, f, directSeries,
            PowerSeries.coeff_X_pow_mul',
            directCoeff_zero, directCoeff_one]
      | succ n =>
          simp [localProductCoefficient, f, directSeries,
            PowerSeries.coeff_X_pow_mul', Nat.add_assoc] <;> ring

/-- The entire coefficient recurrence equals the actual formal inverse,
not just the first two coefficients. All n >= 0 are covered. -/
theorem goodSeries_mul_directSeries (q count : ℕ) :
    goodSeries q count * directSeries q count = 1 := by
  apply PowerSeries.ext
  intro n
  rw [goodSeries_mul_directSeries_coeff,
    localProductCoefficient_eq_delta]
  exact (PowerSeries.coeff_one n).symm

theorem goodSeries_constantCoeff (q count : ℕ) :
    PowerSeries.constantCoeff (goodSeries q count) = (1 : ℤˣ) := by
  simp [goodSeries_eq_quadratic, PowerSeries.constantCoeff_mul]

/-- The actual inverse constructor of pinned Mathlib is the recurrence
series. Uses both multiplication directions and source constant 1. -/
theorem directSeries_eq_invOfUnit (q count : ℕ) :
    directSeries q count =
      PowerSeries.invOfUnit (goodSeries q count) (1 : ℤˣ) := by
  have hleft :
      PowerSeries.invOfUnit (goodSeries q count) (1 : ℤˣ) *
          goodSeries q count = 1 :=
    PowerSeries.invOfUnit_mul _ _ (goodSeries_constantCoeff q count)
  calc
    directSeries q count = 1 * directSeries q count := (one_mul _).symm
    _ = (PowerSeries.invOfUnit (goodSeries q count) (1 : ℤˣ) *
          goodSeries q count) * directSeries q count := by rw [hleft]
    _ = PowerSeries.invOfUnit (goodSeries q count) (1 : ℤˣ) *
          (goodSeries q count * directSeries q count) := by rw [mul_assoc]
    _ = PowerSeries.invOfUnit (goodSeries q count) (1 : ℤˣ) := by
      rw [goodSeries_mul_directSeries, mul_one]

/-! ## Native local good reduction: genuine minimal-model data -/

section Local

variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]
variable (W : WeierstrassCurve K)

/-- The actual cardinality of Mathlib's residue field (not a guessed prime). -/
def localSize : ℕ := Nat.card (IsLocalRing.ResidueField R)

/-- The actual number of affine-or-infinity points on the minimal
model's reduction; this is not the singular whole-fiber count. -/
def localCount : ℕ :=
  Nat.card ((W.minimal R).reduction R).toAffine.Point

/-- Source-exact identification with Mathlib's real localPolynomial.
The one supplied hypothesis is precisely genuine good reduction of the
MINIMAL local model, already present in Mathlib's local factor definition. -/
theorem localPolynomial_good
    (hgood : (W.minimal R).HasGoodReduction R) :
    W.localPolynomial R = goodPolynomial (localSize R) (localCount R W) := by
  simp [WeierstrassCurve.localPolynomial, goodPolynomial,
    localSize, localCount, frobeniusTrace, hgood]

/-- Actual localPowerSeries, at ANY specified good-reduction place, equals
the complete direct recurrence series with the same exact local model/count.
No artificial Euler factor, finite truncation or analytic limit. -/
theorem localPowerSeries_good
    (hgood : (W.minimal R).HasGoodReduction R) :
    W.localPowerSeries R =
      directSeries (localSize R) (localCount R W) := by
  unfold WeierstrassCurve.localPowerSeries
  rw [localPolynomial_good R W hgood]
  change PowerSeries.invOfUnit
    (goodSeries (localSize R) (localCount R W)) (1 : ℤˣ) =
      directSeries (localSize R) (localCount R W)
  exact (directSeries_eq_invOfUnit _ _).symm

/-- Coefficientwise identification with the actual number-field local
Euler producer. Keeps the place's native residue cardinality and
its chosen minimal reduction in the theorem's quantifiers. -/
theorem localPowerSeries_coeff_good
    (hgood : (W.minimal R).HasGoodReduction R) (n : ℕ) :
    PowerSeries.coeff n (W.localPowerSeries R) =
      directCoeff (localSize R) (localCount R W) n := by
  rw [localPowerSeries_good R W hgood]
  rfl

end Local

/-! ## The concrete p=7 padic place; no unproved minimal model transport -/

private instance : Fact (Nat.Prime (7 : ℕ)) := ⟨by norm_num⟩

/-- The ACTUAL 7-adic base field and exact original five-coefficient curve. -/
def recordSevenPadic : WeierstrassCurve (Padic 7) where
  a₁ := 1
  a₂ := 0
  a₃ := 0
  a₄ := -(Record4239.A : Padic 7)
  a₆ := (Record4239.B : Padic 7)

/-- Actual cardinality of the seven-adic residue field, proved from
Mathlib's ring equivalence with ZMod 7 rather than stipulated. -/
theorem sevenPadic_residue_card :
    Nat.card (IsLocalRing.ResidueField (PadicInt 7)) = 7 := by
  calc
    Nat.card (IsLocalRing.ResidueField (PadicInt 7)) =
      Nat.card (ZMod 7) :=
        Nat.card_congr (PadicInt.residueField (p := 7)).toEquiv
    _ = 7 := by simp

/-- The exact native good-reduction specialization for the specified
record-curve 7-adic place. Here hgood refers to the ACTUAL minimal model;
its proof from Record4239.goodAt7 remains a separate model comparison. -/
theorem recordSevenPadic_localPowerSeries
    (hgood : (recordSevenPadic.minimal (PadicInt 7)).HasGoodReduction (PadicInt 7)) :
    recordSevenPadic.localPowerSeries (PadicInt 7) =
      directSeries
        (Nat.card (IsLocalRing.ResidueField (PadicInt 7)))
        (Nat.card
          ((recordSevenPadic.minimal (PadicInt 7)).reduction (PadicInt 7)).toAffine.Point) := by
  exact localPowerSeries_good (PadicInt 7) recordSevenPadic hgood

/-- Exact 7-adic numeric source specialization: unlike a mere local
polynomial lookalike, this conclusion uses the *genuine* minimal-model
point-count equality. That equality is explicitly NOT established here
by the old plane-model enumeration and remains the arithmetic port. -/
theorem recordSevenPadic_localPowerSeries_of_count
    (hgood : (recordSevenPadic.minimal (PadicInt 7)).HasGoodReduction (PadicInt 7))
    (hcount :
        Nat.card
          ((recordSevenPadic.minimal (PadicInt 7)).reduction (PadicInt 7)).toAffine.Point =
            Record4239.reducedPointCount 7) :
    recordSevenPadic.localPowerSeries (PadicInt 7) =
      directSeries 7 (Record4239.reducedPointCount 7) := by
  rw [recordSevenPadic_localPowerSeries hgood, sevenPadic_residue_card, hcount]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries
