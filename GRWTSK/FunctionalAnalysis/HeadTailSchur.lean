/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib contributions retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Scalar head-tail Schur budgets

Consumer: `PrimitiveWeilNeumannSchur.md`, Theorem 1, in the canonical
NumberTheory/ZetaAndLFunctionsAnalyticTheory RH/GRH subject directory.
Coordination: grwtsk/math#1801, scope comment 6814361620.

These declarations encode only real square completion and its shifted lower-bound
consumer. They do not construct a decomposition of the arithmetic Weil operator,
a finite matrix enclosure, a bound for its infinite complement, or a source-return
identity. Those are separate analytical obligations in the companion exposition.

The method is classical. Primary comparator: Hongmin Li, *Cutoff-free positivity
of localized Weil forms through the (log 11)/2 threshold*, rStation paper 45 v2
(2026-11-09), equation (4.9). The scalar identity is proved directly by ring
arithmetic, not imported from that paper. Individual declaration provenance is
in `HeadTailSchur.provenance/`. No novelty or universal positivity is claimed.

Evidence status: SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. No research axiom,
`sorry`, or omitted analytic supplier is introduced as an assumption-free theorem.
-/

set_option autoImplicit false

namespace GRWTSK.FunctionalAnalysis.HeadTailSchur

/-- Exact scalar square completion, without division or sign hypotheses. -/
theorem schur_square_identity (a b c x y : ℝ) :
    c * (a * x ^ 2 - 2 * b * x * y + c * y ^ 2) =
      (a * c - b ^ 2) * x ^ 2 + (b * x - c * y) ^ 2 := by
  ring

/-- A positive tail and the Schur determinant budget control the entire quadratic
expression. There is no assumption that its cross term vanishes. -/
theorem schur_quadratic_nonneg (a b c x y : ℝ)
    (hc : 0 < c) (hdet : b ^ 2 ≤ a * c) :
    0 ≤ a * x ^ 2 - 2 * b * x * y + c * y ^ 2 := by
  have hproduct : 0 ≤ (a * c - b ^ 2) * x ^ 2 :=
    mul_nonneg (sub_nonneg.mpr hdet) (sq_nonneg x)
  have hscaled : 0 ≤ c * (a * x ^ 2 - 2 * b * x * y + c * y ^ 2) := by
    rw [schur_square_identity]
    exact add_nonneg hproduct (sq_nonneg (b * x - c * y))
  by_contra h
  have hnegative : c * (a * x ^ 2 - 2 * b * x * y + c * y ^ 2) < 0 :=
    mul_neg_of_pos_of_neg hc (lt_of_not_ge h)
  exact (not_lt_of_ge hscaled) hnegative

/-- Shifted lower-bound consumer. In the operator application `x,y` are the two
component norms and `value` is the full form value. The actual lower budget,
positive shifted tail and determinant inequality remain explicit hypotheses. -/
theorem lower_bound_of_head_tail_budget (value a b c s x y : ℝ)
    (hbudget : a * x ^ 2 - 2 * b * x * y + c * y ^ 2 ≤ value)
    (htail : s < c) (hdet : b ^ 2 ≤ (a - s) * (c - s)) :
    s * (x ^ 2 + y ^ 2) ≤ value := by
  have hshift := schur_quadratic_nonneg (a - s) b (c - s) x y
    (sub_pos.mpr htail) hdet
  calc
    s * (x ^ 2 + y ^ 2) ≤ a * x ^ 2 - 2 * b * x * y + c * y ^ 2 := by
      nlinarith [hshift]
    _ ≤ value := hbudget

end GRWTSK.FunctionalAnalysis.HeadTailSchur
