/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionsOfAComplexVariable.FinitePrincipalPartCircle
import GRWTSK.FunctionsOfAComplexVariable.FinitePoleSubtraction

set_option autoImplicit false

/-!
# From actual local orders to finite weighted logarithmic-derivative integrals

This is a composition of existing source-level mathematics, not an independent
zero-location estimate. The maps are explicit:

* a punctured factorization by an analytic unit gives a signed local order;
* LogarithmicPrincipalPart gives the genuine local logarithmic derivative;
* FinitePoleSubtraction.principal_part_mul retains the analytic test function;
* finite_pole_subtraction constructs a global regular remainder;
* FinitePrincipalPartCircle evaluates the resulting finite contour integral.

AnalyticOrderAt supplies a second, more specialized input route. Derivative
nonvanishing is needed only for the simple-zero adapter, not for the finite-order
route. An order-two fixture records the difference between distinct points and
multiplicity. No zero inventory, isolation, or RH/GRH estimate is manufactured.

Base: grwtsk/math@7d33cee521e3f1c27ffce510a6894bf15b42c89b.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612; Lean v4.34.1.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.FiniteLogDerivativeCircle

open Set Metric Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
open GRWTSK.Analysis.ComplexAnalysis.FinitePoleSubtraction
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle

noncomputable section

/-- A finite source-bound divisor, allowing zeros, poles, and order-zero units.
The integer order is justified by a punctured factorization of the actual f. -/
structure FactorData (f : ℂ → ℂ) (c : ℂ) (r : ℝ) where
  singular : Finset ℂ
  signedOrder : ℂ → ℤ
  positive_radius : 0 < r
  inside : ∀ a ∈ singular, a ∈ ball c r
  analytic_away : ∀ z ∈ closedBall c r, z ∉ singular → AnalyticAt ℂ f z
  nonzero_away : ∀ z ∈ closedBall c r, z ∉ singular → f z ≠ 0
  factor_at : ∀ a ∈ singular, ∃ g : ℂ → ℂ,
    AnalyticAt ℂ g a ∧ g a ≠ 0 ∧
      f =ᶠ[𝓝[≠] a] fun z => (z - a) ^ signedOrder a * g z

namespace FactorData

variable {f : ℂ → ℂ} {c : ℂ} {r : ℝ}

/-- The multiplier is evaluated at each genuine divisor point, not at a proxy. -/
def weightedFamily (data : FactorData f c r) (w : ℂ → ℂ) : Family ℂ :=
  Family.simple data.singular (fun a => (data.signedOrder a : ℂ) * w a)

/-- The target contour data is constructed from local factorization; its finite
integral equality is not a field or an assumption of FactorData. -/
theorem exists_weightedContourData (data : FactorData f c r)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    ∃ out : Data ℂ (fun z => logDeriv f z * w z) c r,
      out.parts = data.weightedFamily w := by
  have hreg : ∀ z ∈ closedBall c r, z ∉ data.singular →
      AnalyticAt ℂ (fun z => logDeriv f z * w z) z := by
    intro z hz hn
    have hf := data.analytic_away z hz hn
    have hlog : AnalyticAt ℂ (logDeriv f) z :=
      hf.deriv.div hf (data.nonzero_away z hz hn)
    exact hlog.mul (hw z hz)
  have hparts : ∀ a ∈ data.singular, ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      (fun z => logDeriv f z * w z) =ᶠ[𝓝[≠] a]
        fun z => ((data.signedOrder a : ℂ) * w a) / (z - a) + A z := by
    intro a ha
    obtain ⟨g, hg, hg0, hfactor⟩ := data.factor_at a ha
    have hp := logDeriv_principal_part f g a (data.signedOrder a) hg hg0 hfactor
    exact principal_part_mul (logDeriv f) (logDeriv g) w a (data.signedOrder a : ℂ)
      hp.1 (hw a (ball_subset_closedBall (data.inside a ha))) hp.2
  obtain ⟨g, hg, he⟩ := finite_pole_subtraction data.singular
    (fun z => logDeriv f z * w z) (fun a => (data.signedOrder a : ℂ) * w a)
    (closedBall c r) hreg hparts
  have hins : ∀ a ∈ (data.weightedFamily w).support,
      (data.weightedFamily w).center a ∈ ball c r := data.inside
  have hagree : ∀ z, z ∉ (data.weightedFamily w).centers →
      logDeriv f z * w z = g z + (data.weightedFamily w).value z := by
    intro z hz
    have hnot : z ∉ data.singular := by
      simpa only [weightedFamily, Family.simple_centers] using hz
    simpa only [weightedFamily, Family.simple_value] using he z hnot
  exact ⟨Data.ofRegularDecomposition (data.weightedFamily w)
    data.positive_radius hins g hg hagree, rfl⟩

/-- Finite weighted argument principle for the supplied genuine local divisor.
Zero orders and negative pole orders are retained with their signs. -/
theorem weighted_circleIntegral (data : FactorData f c r)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    CircleIntegrable (fun z => logDeriv f z * w z) c r ∧
      (∮ z in C(c, r), logDeriv f z * w z) =
        (∑ a ∈ data.singular, (data.signedOrder a : ℂ) * w a) * period := by
  obtain ⟨out, hout⟩ := data.exists_weightedContourData w hw
  refine ⟨out.circleIntegrable, ?_⟩
  rw [out.integral_eq, hout]
  simp only [weightedFamily, Family.simple_residueSum]

theorem normalized_weighted_circleIntegral (data : FactorData f c r)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    (∮ z in C(c, r), logDeriv f z * w z) / period =
      ∑ a ∈ data.singular, (data.signedOrder a : ℂ) * w a := by
  rw [(data.weighted_circleIntegral w hw).2,
    mul_div_cancel_right₀ _ period_ne_zero]

theorem circleIntegral (data : FactorData f c r) :
    CircleIntegrable (logDeriv f) c r ∧
      (∮ z in C(c, r), logDeriv f z) =
        (∑ a ∈ data.singular, (data.signedOrder a : ℂ)) * period := by
  simpa only [mul_one] using
    data.weighted_circleIntegral (fun _ => 1) (fun _ _ => analyticAt_const)

/-- A meromorphic pole fixture uses signed order minus one. The source is
analytic and nonzero away from its true pole, but need not be analytic there. -/
def reciprocalLinear (root c : ℂ) (r : ℝ) (hr : 0 < r)
    (inside : root ∈ ball c r) : FactorData (fun z => (z - root)⁻¹) c r where
  singular := {root}
  signedOrder := fun _ => -1
  positive_radius := hr
  inside := by
    intro a ha
    have he : a = root := Finset.mem_singleton.mp ha
    subst a
    exact inside
  analytic_away := by
    intro z _ hz
    have hn : z ≠ root := by simpa only [Finset.mem_singleton] using hz
    have h : AnalyticAt ℂ (fun w : ℂ => 1 / (w - root)) z :=
      analyticAt_const.div (analyticAt_id.sub analyticAt_const) (sub_ne_zero.mpr hn)
    simpa only [one_div] using h
  nonzero_away := by
    intro z _ hz
    have hn : z ≠ root := by simpa only [Finset.mem_singleton] using hz
    exact inv_ne_zero (sub_ne_zero.mpr hn)
  factor_at := by
    intro a ha
    have he : a = root := Finset.mem_singleton.mp ha
    subst a
    refine ⟨fun _ => 1, analyticAt_const, one_ne_zero, Eventually.of_forall ?_⟩
    intro z
    simp only [zpow_neg_one, mul_one]

end FactorData

/-- A finite analytic zero inventory with actual Mathlib analytic orders.
Order-zero listed points are harmless; zeros outside the inventory are excluded
by a separate hypothesis on the whole closed disk. -/
structure AnalyticZeroData (f : ℂ → ℂ) (c : ℂ) (r : ℝ) where
  zeros : Finset ℂ
  multiplicity : ℂ → ℕ
  positive_radius : 0 < r
  inside : ∀ a ∈ zeros, a ∈ ball c r
  analytic : AnalyticOnNhd ℂ f (closedBall c r)
  actual_order : ∀ a ∈ zeros, analyticOrderAt f a = (multiplicity a : ℕ∞)
  nonzero_away : ∀ z ∈ closedBall c r, z ∉ zeros → f z ≠ 0

namespace AnalyticZeroData

variable {f : ℂ → ℂ} {c : ℂ} {r : ℝ}

/-- Refinement from actual analytic order to the signed factorization interface. -/
def toFactors (data : AnalyticZeroData f c r) : FactorData f c r where
  singular := data.zeros
  signedOrder := fun a => (data.multiplicity a : ℤ)
  positive_radius := data.positive_radius
  inside := data.inside
  analytic_away := fun z hz _ => data.analytic z hz
  nonzero_away := data.nonzero_away
  factor_at := by
    intro a ha
    obtain ⟨g, hg, hg0, hfactor⟩ :=
      (data.analytic a (ball_subset_closedBall (data.inside a ha))).
        analyticOrderAt_eq_natCast.mp (data.actual_order a ha)
    refine ⟨g, hg, hg0, ?_⟩
    filter_upwards [hfactor.filter_mono nhdsWithin_le_nhds] with z hz
    simpa only [zpow_natCast, smul_eq_mul] using hz

theorem weighted_circleIntegral (data : AnalyticZeroData f c r)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    CircleIntegrable (fun z => logDeriv f z * w z) c r ∧
      (∮ z in C(c, r), logDeriv f z * w z) =
        (∑ a ∈ data.zeros, (data.multiplicity a : ℂ) * w a) * period := by
  simpa only [toFactors, Int.cast_natCast] using
    data.toFactors.weighted_circleIntegral w hw

/-- The simple-zero route reuses the existing dslope factorization instead of
assuming that distinct roots have multiplicity one. -/
def ofSimpleZeros (S : Finset ℂ) (hr : 0 < r)
    (inside : ∀ a ∈ S, a ∈ ball c r)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (zero : ∀ a ∈ S, f a = 0) (derivative : ∀ a ∈ S, deriv f a ≠ 0)
    (nonzero : ∀ z ∈ closedBall c r, z ∉ S → f z ≠ 0) :
    AnalyticZeroData f c r where
  zeros := S
  multiplicity := fun _ => 1
  positive_radius := hr
  inside := inside
  analytic := analytic
  actual_order := by
    intro a ha
    have hf := analytic a (ball_subset_closedBall (inside a ha))
    obtain ⟨hg, hg0, he⟩ := simple_zero_factorization f a hf (zero a ha) (derivative a ha)
    apply hf.analyticOrderAt_eq_natCast.mpr
    refine ⟨dslope f a, hg, hg0, Eventually.of_forall ?_⟩
    intro z
    simpa only [pow_one, smul_eq_mul] using he z
  nonzero_away := nonzero

/-- A genuine finite-order polynomial fixture; no derivative-nonvanishing
hypothesis is needed, including for order two and for order-zero units. -/
def power (root c : ℂ) (r : ℝ) (m : ℕ) (hr : 0 < r)
    (inside : root ∈ ball c r) : AnalyticZeroData (fun z => (z - root) ^ m) c r where
  zeros := {root}
  multiplicity := fun _ => m
  positive_radius := hr
  inside := by
    intro a ha
    have he : a = root := Finset.mem_singleton.mp ha
    subst a
    exact inside
  analytic := fun z _ => (analyticAt_id.sub analyticAt_const).pow m
  actual_order := by
    intro a ha
    have he : a = root := Finset.mem_singleton.mp ha
    subst a
    have hf : AnalyticAt ℂ (fun z : ℂ => (z - root) ^ m) root :=
      (analyticAt_id.sub analyticAt_const).pow m
    apply hf.analyticOrderAt_eq_natCast.mpr
    exact ⟨fun _ => 1, analyticAt_const, one_ne_zero,
      Eventually.of_forall (fun z => by simp only [smul_eq_mul, mul_one])⟩
  nonzero_away := by
    intro z _ hz
    have hn : z ≠ root := by simpa only [Finset.mem_singleton] using hz
    exact pow_ne_zero m (sub_ne_zero.mpr hn)

end AnalyticZeroData

/-- Concrete downstream use of the whole type chain with an analytic test weight. -/
theorem weighted_power_circleIntegral (root c : ℂ) (r : ℝ) (m : ℕ)
    (hr : 0 < r) (inside : root ∈ ball c r)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    (∮ z in C(c, r), logDeriv (fun z => (z - root) ^ m) z * w z) =
      ((m : ℂ) * w root) * period := by
  simpa only [AnalyticZeroData.power, Finset.sum_singleton] using
    ((AnalyticZeroData.power root c r m hr inside).weighted_circleIntegral w hw).2

/-- Negative signed order is preserved by the same multiplier and contour maps. -/
theorem weighted_reciprocalLinear_circleIntegral (root c : ℂ) (r : ℝ)
    (hr : 0 < r) (inside : root ∈ ball c r)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    (∮ z in C(c, r), logDeriv (fun z => (z - root)⁻¹) z * w z) =
      (-w root) * period := by
  simpa only [FactorData.reciprocalLinear, Finset.sum_singleton,
    Int.cast_neg, Int.cast_one, neg_one_mul] using
    ((FactorData.reciprocalLinear root c r hr inside).weighted_circleIntegral w hw).2

/-- A distinct root of order two is not a unit-residue root. -/
theorem double_zero_not_unit_residue (root c : ℂ) (r : ℝ)
    (hr : 0 < r) (inside : root ∈ ball c r) :
    (∮ z in C(c, r), logDeriv (fun z => (z - root) ^ 2) z) ≠ period := by
  have h := weighted_power_circleIntegral root c r 2 hr inside
    (fun _ => 1) (fun _ _ => analyticAt_const)
  simp only [mul_one, Nat.cast_ofNat] at h
  rw [h]
  intro he
  apply period_ne_zero
  linear_combination he

end
end GRWTSK.Analysis.ComplexAnalysis.FiniteLogDerivativeCircle
