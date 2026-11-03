/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticRecordSevenPadicChosenMinimal
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Native local polynomial and power series for the record curve at seven

The preceding modules discharge the genuine Mathlib minimal-model good-reduction
and point-count premises.  This file closes the native local polynomial, full
formal inverse power series and every recurrence coefficient at the 7-adic place.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerInversion
open Polynomial

/-- The native local polynomial is the exact source quadratic. -/
theorem recordSevenPadic_localPolynomial_closed :
    recordSevenPadic.localPolynomial SevenR =
      goodPolynomial 7 (Record4239.reducedPointCount 7) := by
  rw [localPolynomial_good SevenR recordSevenPadic
    recordSevenPadic_minimal_hasGoodReduction]
  simp [localSize, localCount, sevenPadic_residue_card,
    recordSevenPadic_minimal_reduction_point_natCard]

/-- Numeric polynomial form: the source trace is `-5`. -/
theorem recordSevenPadic_localPolynomial_thirteen :
    recordSevenPadic.localPolynomial SevenR =
      1 + Polynomial.C 5 * Polynomial.X +
        Polynomial.C 7 * Polynomial.X ^ 2 := by
  rw [recordSevenPadic_localPolynomial_closed, Record4239.pointCount7]
  simp [goodPolynomial, frobeniusTrace]
  ring

/-- The actual Mathlib local power series at seven is the complete direct
recurrence series from the published point count. -/
theorem recordSevenPadic_localPowerSeries_closed :
    recordSevenPadic.localPowerSeries SevenR =
      directSeries 7 (Record4239.reducedPointCount 7) :=
  recordSevenPadic_localPowerSeries_of_count
    recordSevenPadic_minimal_hasGoodReduction
    recordSevenPadic_minimal_reduction_point_natCard

/-- Numeric form using the already published exact count `13`. -/
theorem recordSevenPadic_localPowerSeries_thirteen :
    recordSevenPadic.localPowerSeries SevenR =
      directSeries 7 13 := by
  rw [recordSevenPadic_localPowerSeries_closed, Record4239.pointCount7]

/-- Every native local coefficient is therefore the already formalized
degree-two recurrence coefficient. -/
theorem recordSevenPadic_localPowerSeries_coeff_thirteen (n : ℕ) :
    PowerSeries.coeff n
        (recordSevenPadic.localPowerSeries SevenR) =
      directCoeff 7 13 n := by
  rw [recordSevenPadic_localPowerSeries_thirteen]
  rfl

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge
