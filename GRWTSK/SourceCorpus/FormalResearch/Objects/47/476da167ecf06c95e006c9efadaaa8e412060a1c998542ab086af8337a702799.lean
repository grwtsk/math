import Surface.Arithmetic.EllipticCurve.BSD
import Surface.Arithmetic.EllipticCurve.RankLoop

namespace Surface.Arithmetic
namespace EllipticCurve

/-!
# Small arithmetic examples

These examples are finite and computational.  They demonstrate point counting
and L-function descriptors; they do not certify BSD or rank-loop equivalence.
-/

/-- Good-reduction certificate for the finite F5 example. -/
def exampleF5GoodReduction :
    GoodReductionCertificate F5 exampleCurveF5 where
  primeLabel := 5
  reductionGood := True
  reductionGoodCertified := trivial
  boundary := [
    "Finite example certificate only.",
    "No global minimal model or conductor theorem is asserted."
  ]

/-- Local Euler factor from the checked F5 point count. -/
def exampleF5LocalEulerFactor : LocalEulerFactor :=
  goodFactor 5 (PointCounting.ap F5 exampleCurveF5)

/-- A symbolic Hasse-Weil L-function package for the F5 example curve. -/
def exampleHasseWeilLFunction :
    HasseWeilLFunction F5.field exampleCurveF5 where
  curveLabel := "y^2 = x^3 + x + 1 over F5"
  localFactors := [exampleF5LocalEulerFactor]
  conductorStatus := .finiteExamplePlaceholder
  gammaFactorStatus := .finiteExamplePlaceholder
  completedShape := .hasseWeilCompletedSymbol
  boundary := [
    "This is L-function metadata for an example.",
    "Analytic continuation and functional equation require explicit certificates."
  ]

/-- An order-of-vanishing certificate supplied as data for examples. -/
def exampleOrderCertificate :
    OrderOfVanishingCertificate exampleHasseWeilLFunction where
  point := SymbolicComplexVariable.sEqOne
  order := 0
  certifiedByStatus := .exampleDataOnly
  boundary := [
    "This certificate is a supplied interface value.",
    "It is not derived from analytic continuation in this module."
  ]

theorem exampleF5_ap_eq_neg_three :
    PointCounting.ap F5 exampleCurveF5 = -3 := by
  native_decide

end EllipticCurve
end Surface.Arithmetic
