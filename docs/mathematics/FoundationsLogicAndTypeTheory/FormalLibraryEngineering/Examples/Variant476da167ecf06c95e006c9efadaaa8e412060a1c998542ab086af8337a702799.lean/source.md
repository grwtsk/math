# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Examples.Variant476da167ecf06c95e006c9efadaaa8e412060a1c998542ab086af8337a702799

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65bc80850fe6182fa871a716055e2df390546459` · SHA-256 `476da167ecf06c95e006c9efadaaa8e412060a1c998542ab086af8337a702799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
