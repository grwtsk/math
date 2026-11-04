/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.CategoryTheoryHomologicalAlgebra.TypedFunctionChains
import GRWTSK.FunctionsOfAComplexVariable.FiniteLogDerivativeCircle

set_option autoImplicit false

/-!
# Typed connections between actual analytic proof stages

Reuse the repository's Quiver.Path interpreter; do not build a parallel graph of
suggested implications. The vertices carry genuine source-indexed Lean types:
actual analytic orders, local signed factorizations, removable principal parts,
and an evaluated integral with its equality proof.

The analytic multiplier is a joint premise of the interpretation. No edge turns
an unproved estimate into a theorem. Classical selection of the constructed
regular remainder is permitted; only its source-bound observable is claimed
independent of that selection. Equality of output VALUES does not identify the
underlying proof data or supply an inverse to any edge.

TypedFunctionChains inspected at grwtsk/math@78d3de57395378dfc4164a75af7a844ea2806efc.
The analytic suppliers retain their own source and verification boundaries.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No extraction, scheduling, or RH claim.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PrincipalPartTypeChains

open scoped BigOperators
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle
open GRWTSK.Analysis.ComplexAnalysis.FiniteLogDerivativeCircle
open GRWTSK.CategoryTheory.TypedChain

noncomputable section

/-- An evaluated value is linked to the original integrand and contour, not just
an identifier or an integer claimed to be a residue count. -/
structure IntegralValue (source : ℂ → ℂ) (c : ℂ) (r : ℝ) where
  value : ℂ
  integrable : CircleIntegrable source c r
  exact_value : (∮ z in C(c, r), source z) / period = value

theorem IntegralValue.value_unique {source : ℂ → ℂ} {c : ℂ} {r : ℝ}
    (first second : IntegralValue source c r) : first.value = second.value :=
  first.exact_value.symm.trans second.exact_value

inductive Stage
  | analyticOrder
  | localFactors
  | principalParts
  | integralValue

/-- These are only the constructed mathematical maps, not similarity edges. -/
inductive Step : Stage → Stage → Type
  | factor : Step .analyticOrder .localFactors
  | remove : Step .localFactors .principalParts
  | integrate : Step .principalParts .integralValue

instance : Quiver Stage where
  Hom := Step

/-- The source f, weight w, center c and radius r are shared by every vertex. -/
def Carrier (f w : ℂ → ℂ) (c : ℂ) (r : ℝ) : Stage → Type
  | .analyticOrder => AnalyticZeroData f c r
  | .localFactors => FactorData f c r
  | .principalParts => Data ℂ (fun z => logDeriv f z * w z) c r
  | .integralValue => IntegralValue (fun z => logDeriv f z * w z) c r

/-- The middle map uses the existing existence theorem for a CONSTRUCTED
analytic remainder. It does not choose or assume an arithmetic cancellation bound. -/
def interpret (f w : ℂ → ℂ) (c : ℂ) (r : ℝ)
    (hw : AnalyticOnNhd ℂ w (Metric.closedBall c r)) :
    {a b : Stage} → Step a b → Carrier f w c r a → Carrier f w c r b
  | _, _, .factor, data => data.toFactors
  | _, _, .remove, data => Classical.choose (data.exists_weightedContourData w hw)
  | _, _, .integrate, data =>
      { value := data.parts.residueSum
        integrable := data.circleIntegrable
        exact_value := data.normalized_integral_eq }

def factorPath : Quiver.Path Stage.localFactors Stage.integralValue :=
  (Quiver.Path.nil.cons Step.remove).cons Step.integrate

def orderPath : Quiver.Path Stage.analyticOrder Stage.integralValue :=
  (Quiver.Path.nil.cons Step.factor).comp factorPath

/-- Existing generic composition specializes to the analytic-to-contour chain. -/
theorem evaluate_orderPath (f w : ℂ → ℂ) (c : ℂ) (r : ℝ)
    (hw : AnalyticOnNhd ℂ w (Metric.closedBall c r)) (data : AnalyticZeroData f c r) :
    evaluate (Carrier f w c r) (interpret f w c r hw) orderPath data =
      evaluate (Carrier f w c r) (interpret f w c r hw) factorPath data.toFactors := by
  rw [orderPath, evaluate_comp]
  rfl

/-- The output of the composed path is the actual multiplicity-weighted sum. -/
theorem evaluate_orderPath_value (f w : ℂ → ℂ) (c : ℂ) (r : ℝ)
    (hw : AnalyticOnNhd ℂ w (Metric.closedBall c r)) (data : AnalyticZeroData f c r) :
    (evaluate (Carrier f w c r) (interpret f w c r hw) orderPath data).value =
      ∑ a ∈ data.zeros, (data.multiplicity a : ℂ) * w a := by
  have hsource : (∮ z in C(c, r), logDeriv f z * w z) / period =
      ∑ a ∈ data.zeros, (data.multiplicity a : ℂ) * w a := by
    rw [(data.weighted_circleIntegral w hw).2, mul_div_cancel_right₀ _ period_ne_zero]
  exact (evaluate (Carrier f w c r) (interpret f w c r hw) orderPath data).
    exact_value.symm.trans hsource

/-- The more general signed-factor route retains negative pole orders. -/
theorem evaluate_factorPath_value (f w : ℂ → ℂ) (c : ℂ) (r : ℝ)
    (hw : AnalyticOnNhd ℂ w (Metric.closedBall c r)) (data : FactorData f c r) :
    (evaluate (Carrier f w c r) (interpret f w c r hw) factorPath data).value =
      ∑ a ∈ data.singular, (data.signedOrder a : ℂ) * w a :=
  (evaluate (Carrier f w c r) (interpret f w c r hw) factorPath data).
    exact_value.symm.trans (data.normalized_weighted_circleIntegral w hw)

/-- Independent justified starting data with the SAME integrand and contour
produce the same observable. No equivalence of their representations is assumed. -/
theorem source_exact_path_comparison (f w : ℂ → ℂ) (c : ℂ) (r : ℝ)
    (hw : AnalyticOnNhd ℂ w (Metric.closedBall c r)) {a b : Stage}
    (p : Quiver.Path a Stage.integralValue) (q : Quiver.Path b Stage.integralValue)
    (x : Carrier f w c r a) (y : Carrier f w c r b) :
    (evaluate (Carrier f w c r) (interpret f w c r hw) p x).value =
      (evaluate (Carrier f w c r) (interpret f w c r hw) q y).value :=
  IntegralValue.value_unique _ _

/-- Backward obligations are the existing typed predicate pullback. This is an
exact equivalence of queries, not a claim that the queried property holds. -/
theorem orderPath_query_transport (f w : ℂ → ℂ) (c : ℂ) (r : ℝ)
    (hw : AnalyticOnNhd ℂ w (Metric.closedBall c r))
    (post : IntegralValue (fun z => logDeriv f z * w z) c r → Prop)
    (data : AnalyticZeroData f c r) :
    pull (fun a => Carrier f w c r a → Prop)
      (fun e predicate source => predicate (interpret f w c r hw e source))
      orderPath post data ↔
      post (evaluate (Carrier f w c r) (interpret f w c r hw) orderPath data) :=
  pullback_apply (Carrier f w c r) (interpret f w c r hw) orderPath post data

end
end GRWTSK.Analysis.ComplexAnalysis.PrincipalPartTypeChains
