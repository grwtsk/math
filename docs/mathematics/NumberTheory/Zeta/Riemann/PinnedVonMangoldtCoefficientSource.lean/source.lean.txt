/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCoefficientRecovery
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Pinned von Mangoldt prime-power coefficient source

This module closes only the arithmetic prime-power coefficient channel needed by
the packing coordinate.

At the pinned Mathlib revision, the von Mangoldt function is exactly log p on
p^k for k>0, and its L-series equals -zeta'/zeta on Re(s)>1. This is an exact
zeta arithmetic source, but it is not the full Weil/Guinand explicit formula:
gamma, pole, trivial-zero, nontrivial-zero, endpoint and tail channels remain
owned by issue #189.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_POWER_COEFFICIENT_CHANNEL_BOUND / EXPLICIT_FORMULA_COMPLETION_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- Immutable source metadata for the pinned Mathlib von Mangoldt channel. -/
structure PinnedVonMangoldtSourceRecord where
  repository : String
  revision : String
  vonMangoldtPath : String
  vonMangoldtBlob : String
  dirichletPath : String
  dirichletBlob : String
  coefficientDeclaration : String
  lseriesDeclaration : String
  deriving Repr

def pinnedVonMangoldtSource : PinnedVonMangoldtSourceRecord where
  repository := "leanprover-community/mathlib4"
  revision := "db584cd6d46c92f209a44c0f1c829460d327499d"
  vonMangoldtPath := "Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean"
  vonMangoldtBlob := "4cc8c9d13c1e3b7ae4568f9399e0a68f8e3d5176"
  dirichletPath := "Mathlib/NumberTheory/LSeries/Dirichlet.lean"
  dirichletBlob := "f718ca1edc35ffa92b318b2f74ddcef0e2e754a3"
  coefficientDeclaration := "ArithmeticFunction.vonMangoldt"
  lseriesDeclaration :=
    "ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div"

/-- Exact pinned arithmetic coefficient: Lambda(p^k). -/
def mathlibVonMangoldtCoefficient :
    ExplicitFormulaPrimePowerCoefficient where
  sourceId := "Mathlib.ArithmeticFunction.vonMangoldt"
  revision := pinnedVonMangoldtSource.revision
  normalization := "raw von Mangoldt coefficient Lambda(q)"
  coefficient := fun event =>
    ArithmeticFunction.vonMangoldt event.natValue

/-- On an actual prime-power event p^k, the pinned coefficient is exactly log p. -/
theorem mathlibVonMangoldtCoefficient_eq_mangoldtScale
    (event : PrimePowerEvent) :
    mathlibVonMangoldtCoefficient.coefficient event =
      event.mangoldtScale := by
  change
    ArithmeticFunction.vonMangoldt
        (event.prime.1 ^ event.exponent) =
      Real.log (event.prime.1 : ℝ)
  rw [ArithmeticFunction.vonMangoldt_apply_pow
      (Nat.ne_of_gt event.exponent_pos),
    ArithmeticFunction.vonMangoldt_apply_prime event.prime.property]

/-- The recovered packing test weight for the raw von Mangoldt source is one. -/
theorem mathlibVonMangoldt_testWeight_eq_one
    (event : PrimePowerEvent) :
    mathlibVonMangoldtCoefficient.toWeight.testWeight event = 1 := by
  change
    mathlibVonMangoldtCoefficient.coefficient event /
        event.mangoldtScale = 1
  rw [mathlibVonMangoldtCoefficient_eq_mangoldtScale]
  exact div_self event.mangoldtScale_ne_zero

/-- Hence the pinned weighted point is exactly the raw arithmetic point. -/
theorem mathlibVonMangoldt_packingPoint_eq_raw
    (event : PrimePowerEvent) :
    mathlibVonMangoldtCoefficient.toWeight.packingPoint event =
      event.packingPoint := by
  apply PackingPoint.ext
  · rfl
  · change
      mathlibVonMangoldtCoefficient.toWeight.testWeight event *
          event.mangoldtScale =
        event.mangoldtScale
    rw [mathlibVonMangoldt_testWeight_eq_one, one_mul]

/-- Exact analytic anchor available in pinned Mathlib: the von Mangoldt
Dirichlet series is the negative logarithmic derivative of zeta for Re(s)>1.
This does not continue the identity through the critical strip. -/
theorem pinned_vonMangoldt_lseries_eq_neg_logDeriv
    {s : ℂ} (hs : 1 < s.re) :
    LSeries (fun n : ℕ =>
      (ArithmeticFunction.vonMangoldt n : ℂ)) s =
      - deriv riemannZeta s / riemannZeta s := by
  simpa using
    ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs

end GRWTSK.RiemannHypothesis
