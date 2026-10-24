/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-! # Independent algebraic edge sign
Extracted declaration and proof bytes from math `ddd7520ebc6e66354d7c95e56dd4c9214dbef52e`,
`GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Variant69e4aa944ce34756919424086e6e6907a1cdfceb56d8f32857014d3ac8094034.lean`,
Git blob `b1b87971eaf84be672881f6c77342aa236ebf1a2`, SHA-256 `69e4aa944ce34756919424086e6e6907a1cdfceb56d8f32857014d3ac8094034`.

This is a real polynomial certificate with scale hypothesis 10 ≤ A and
positive-normalization hypothesis 0 < Z. No source-integral identity, actual
state, weighted-work counterexample or RH tail estimate is supplied.
Native compilation, kernel replay and axiom acceptance are NOT_RUN.

Original research context and attribution follow unchanged.
# Algebraic edge certificate for the literal source mixed kernel

UNCOMPILED proof-text preparation. No analytic integral transport is asserted.
Exact coefficient expansion of h(A-y)=A^-4*y^4*(2-y/A)^4 and the two edge
factors of h''-h/4 gives R(A)/A^16 for the unnormalized lag 2A-1 mixed pairing.
The independent Fraction calculation is recorded next to this preparation.
Connecting that coefficient expression to the actual normalized q_A integral
requires a separate source/support/FTC adapter and warning-fatal kernel checks.

This sign certificate rejects universal positive-atom or PSD sum-kernel routes
after transport; it supplies no counterexample to the actual weighted work,
no estimate for independent counterterms, and no RH tail witness.

Research direction and evaluation: grwtsk contributors.
Proof-text preparation: OpenAI Codex; independent verification is pending.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Basic

/-- Independent exact edge-integral coefficient polynomial, before normalization. -/
def edgeNumerator (A : ℝ) : ℝ :=
  -(567547583 / 14002560 : ℝ) + (366914879 / 411840 : ℝ) * A -
    (229060439 / 27720 : ℝ) * A ^ 2 + (137227271 / 3276 : ℝ) * A ^ 3 -
    (22614675119 / 180180 : ℝ) * A ^ 4 + (1554342731 / 6930 : ℝ) * A ^ 5 -
    (794584522 / 3465 : ℝ) * A ^ 6 + (37743836 / 315 : ℝ) * A ^ 7 -
    (7452862 / 315 : ℝ) * A ^ 8

/-- Algebraic edge coefficient. It is not defined as an arithmetic residual. -/
def algebraicEdgeCoefficient (A : ℝ) : ℝ := edgeNumerator A / A ^ 16

/-- All nine shifted coefficients have the same strict negative sign. -/
theorem edgeNumerator_at_ten_add (B : ℝ) :
    edgeNumerator (10 + B) =
      -((134860219395915291461 / 98017920 : ℝ) +
        (1134801394026326989 / 960960 : ℝ) * B +
        (159668232038614207 / 360360 : ℝ) * B ^ 2 +
        (29236826705263 / 308 : ℝ) * B ^ 3 +
        (254274878880091 / 20020 : ℝ) * B ^ 4 +
        (119554866043 / 110 : ℝ) * B ^ 5 +
        (201279980402 / 3465 : ℝ) * B ^ 6 +
        (186161708 / 105 : ℝ) * B ^ 7 + (7452862 / 315 : ℝ) * B ^ 8) := by
  unfold edgeNumerator
  ring

/-- The independent polynomial stays negative at every scale at least ten. -/
theorem edgeNumerator_neg {A : ℝ} (hA : 10 ≤ A) : edgeNumerator A < 0 := by
  have hB : 0 ≤ A - 10 := sub_nonneg.mpr hA
  have hs := edgeNumerator_at_ten_add (A - 10)
  rw [show 10 + (A - 10) = A by ring] at hs
  rw [hs]
  have hp :
      0 < (134860219395915291461 / 98017920 : ℝ) +
        (1134801394026326989 / 960960 : ℝ) * (A - 10) +
        (159668232038614207 / 360360 : ℝ) * (A - 10) ^ 2 +
        (29236826705263 / 308 : ℝ) * (A - 10) ^ 3 +
        (254274878880091 / 20020 : ℝ) * (A - 10) ^ 4 +
        (119554866043 / 110 : ℝ) * (A - 10) ^ 5 +
        (201279980402 / 3465 : ℝ) * (A - 10) ^ 6 +
        (186161708 / 105 : ℝ) * (A - 10) ^ 7 +
        (7452862 / 315 : ℝ) * (A - 10) ^ 8 := by positivity
  linarith

/-- Positive scale division retains the independently computed edge sign. -/
theorem algebraicEdgeCoefficient_neg {A : ℝ} (hA : 10 ≤ A) :
    algebraicEdgeCoefficient A < 0 := by
  have hp : 0 < A := by linarith
  change edgeNumerator A / A ^ 16 < 0
  exact div_neg_of_neg_of_pos (edgeNumerator_neg hA) (pow_pos hp 16)

/-- The fixed-scale rational certificate is exact, rather than floating point. -/
theorem algebraicEdgeCoefficient_ten :
    algebraicEdgeCoefficient 10 =
      -(134860219395915291461 / 980179200000000000000000 : ℝ) := by
  norm_num [algebraicEdgeCoefficient, edgeNumerator]

/-- Positive normalization cannot make this algebraic edge coefficient nonnegative. -/
theorem algebraicEdgeCoefficient_normalized_neg {A Z : ℝ}
    (hA : 10 ≤ A) (hZ : 0 < Z) : algebraicEdgeCoefficient A / (A * Z) < 0 := by
  have hp : 0 < A := by linarith
  exact div_neg_of_neg_of_pos (algebraicEdgeCoefficient_neg hA) (mul_pos hp hZ)

/-- Even eventual positivity of the algebraic edge family contradicts its exact sign. -/
theorem not_eventually_algebraicEdgeCoefficient_nonneg :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 0 ≤ algebraicEdgeCoefficient A := by
  rintro ⟨R, hR⟩
  have hn := algebraicEdgeCoefficient_neg (le_max_right R 10)
  have hp := hR (max R 10) (le_max_left R 10)
  linarith

end GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Basic
end
