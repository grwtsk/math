# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variantf8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3f9803ec31f6d5fb4e7f370cf56f8a7ba5f9f0d` · SHA-256 `f8d18cf6b62dba560989b599e1fa2234bc53b917167264c9d58cc66084381a8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Coordinate-corrected scalar dispersion on open chart domains

The second-order law is derived from first-derivative certificates and product
and chain rules. No correction or positivity assertion is a record field.
The logarithmic fixture is restricted to u > 0; there is no derivative claim
through its missing endpoint. Higher-dimensional and finite non-affine-weight
families remain separate extensions.
-/

namespace FormalResearch.PositiveAtlas.Boundary

open Filter Set
open scoped Topology

noncomputable section

/-- Differentiate the actual composite gradient on an open coordinate domain. -/
theorem hasDerivAt_composite_second
    (f f₁ phi phi₁ : ℝ → ℝ) (U : Set ℝ) (hU : IsOpen U)
    (u f₂ phi₂ : ℝ) (hu : u ∈ U)
    (hf : ∀ y ∈ U, HasDerivAt f (f₁ (phi y)) (phi y))
    (hphi : ∀ y ∈ U, HasDerivAt phi (phi₁ y) y)
    (hf₁ : HasDerivAt f₁ f₂ (phi u))
    (hphi₁ : HasDerivAt phi₁ phi₂ u) :
    HasDerivAt (deriv (fun y => f (phi y)))
      (f₂ * (phi₁ u) ^ 2 + f₁ (phi u) * phi₂) u := by
  have heq : deriv (fun y => f (phi y)) =ᶠ[𝓝 u]
      (fun y => f₁ (phi y) * phi₁ y) := by
    filter_upwards [hU.mem_nhds hu] with y hy
    exact ((hf y hy).comp y (hphi y hy)).deriv
  have hp : HasDerivAt (fun y => f₁ (phi y) * phi₁ y)
      (f₂ * (phi₁ u) ^ 2 + f₁ (phi u) * phi₂) u := by
    apply ((hf₁.comp u (hphi u hu)).mul hphi₁).congr_deriv
    ring
  exact hp.congr_of_eventuallyEq heq

/-- The forced chain-rule subtraction recovers the pullback quadratic coefficient. -/
theorem scalar_hessian_correction
    (f f₁ phi phi₁ : ℝ → ℝ) (U : Set ℝ) (hU : IsOpen U)
    (u f₂ phi₂ : ℝ) (hu : u ∈ U)
    (hf : ∀ y ∈ U, HasDerivAt f (f₁ (phi y)) (phi y))
    (hphi : ∀ y ∈ U, HasDerivAt phi (phi₁ y) y)
    (hf₁ : HasDerivAt f₁ f₂ (phi u))
    (hphi₁ : HasDerivAt phi₁ phi₂ u) :
    deriv (deriv (fun y => f (phi y))) u - f₁ (phi u) * phi₂ =
      f₂ * (phi₁ u) ^ 2 := by
  rw [(hasDerivAt_composite_second f f₁ phi phi₁ U hU
    u f₂ phi₂ hu hf hphi hf₁ hphi₁).deriv]
  ring

/-- A nonnegative original Hessian remains nonnegative after the exact correction. -/
theorem corrected_hessian_nonnegative
    (f f₁ phi phi₁ : ℝ → ℝ) (U : Set ℝ) (hU : IsOpen U)
    (u f₂ phi₂ : ℝ) (hu : u ∈ U)
    (hf : ∀ y ∈ U, HasDerivAt f (f₁ (phi y)) (phi y))
    (hphi : ∀ y ∈ U, HasDerivAt phi (phi₁ y) y)
    (hf₁ : HasDerivAt f₁ f₂ (phi u))
    (hphi₁ : HasDerivAt phi₁ phi₂ u) (hpos : 0 ≤ f₂) :
    0 ≤ deriv (deriv (fun y => f (phi y))) u - f₁ (phi u) * phi₂ := by
  rw [scalar_hessian_correction f f₁ phi phi₁ U hU
    u f₂ phi₂ hu hf hphi hf₁ hphi₁]
  exact mul_nonneg hpos (sq_nonneg _)

/-- The potential of the two-outcome family in positive u-coordinates. -/
def logOnePlus (u : ℝ) : ℝ := Real.log (1 + u)

/-- The actual derivative of the fixture on its positive chart. -/
theorem hasDerivAt_logOnePlus (u : ℝ) (hu : 0 < u) :
    HasDerivAt logOnePlus ((1 + u)⁻¹) u := by
  have h := ((hasDerivAt_id u).const_add 1).log
    (by positivity : (1 + u : ℝ) ≠ 0)
  simpa [logOnePlus, one_div] using h

/-- The slope has a negative derivative in u-coordinates. -/
theorem hasDerivAt_logOnePlusSlope (u : ℝ) (hu : 0 < u) :
    HasDerivAt (fun v : ℝ => (1 + v)⁻¹) (-1 / (1 + u) ^ 2) u := by
  simpa using ((hasDerivAt_id u).const_add 1).inv
    (by positivity : (1 + u : ℝ) ≠ 0)

/-- The literal iterated derivative, with neighborhood equality justified. -/
theorem logOnePlus_second (u : ℝ) (hu : 0 < u) :
    deriv (deriv logOnePlus) u = -1 / (1 + u) ^ 2 := by
  have heq : deriv logOnePlus =ᶠ[𝓝 u] (fun v : ℝ => (1 + v)⁻¹) := by
    filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
    exact (hasDerivAt_logOnePlus v hv).deriv
  rw [heq.deriv_eq]
  exact (hasDerivAt_logOnePlusSlope u hu).deriv

/-- The logarithmic chart has the usual reciprocal derivative. -/
theorem hasDerivAt_logChart (u : ℝ) (hu : 0 < u) :
    HasDerivAt Real.log u⁻¹ u :=
  Real.hasDerivAt_log (ne_of_gt hu)

/-- The derivative of the logarithmic chart slope is negative. -/
theorem hasDerivAt_logChartSlope (u : ℝ) (hu : 0 < u) :
    HasDerivAt (fun v : ℝ => v⁻¹) (-1 / u ^ 2) u := by
  simpa using (hasDerivAt_id u).inv (ne_of_gt hu)

/-- Original log-partition in theta-coordinates. -/
def bernoulliPotential (theta : ℝ) : ℝ := Real.log (1 + Real.exp theta)

/-- Direct first derivative in the original log-affine coordinate. -/
theorem hasDerivAt_bernoulliPotential (theta : ℝ) :
    HasDerivAt bernoulliPotential
      (Real.exp theta / (1 + Real.exp theta)) theta := by
  simpa [bernoulliPotential] using ((Real.hasDerivAt_exp theta).const_add 1).log
    (by positivity : (1 + Real.exp theta : ℝ) ≠ 0)

/-- The u-chart describes the same potential, rather than a replacement model. -/
theorem bernoulli_logChart (u : ℝ) (hu : 0 < u) :
    bernoulliPotential (Real.log u) = logOnePlus u := by
  simp [bernoulliPotential, logOnePlus, Real.exp_log hu]

/-- The actual original slope times the second chart derivative is the correction. -/
theorem bernoulli_chart_term (u : ℝ) (hu : 0 < u) :
    deriv bernoulliPotential (Real.log u) * (-1 / u ^ 2) =
      -1 / (u * (1 + u)) := by
  rw [(hasDerivAt_bernoulliPotential (Real.log u)).deriv, Real.exp_log hu]
  have hu0 : u ≠ 0 := ne_of_gt hu
  have hsum : 1 + u ≠ 0 := by positivity
  field_simp [hu0, hsum] <;> ring

/-- Forced subtraction restores the positive pullback, despite a negative raw Hessian. -/
theorem bernoulli_corrected_second (u : ℝ) (hu : 0 < u) :
    deriv (deriv logOnePlus) u -
      deriv bernoulliPotential (Real.log u) * (-1 / u ^ 2) =
      1 / (u * (1 + u) ^ 2) := by
  rw [logOnePlus_second u hu, bernoulli_chart_term u hu]
  have hu0 : u ≠ 0 := ne_of_gt hu
  have hsum : 1 + u ≠ 0 := by positivity
  field_simp [hu0, hsum] <;> ring

/-- This fixture separates the sign of a raw Hessian from that of its metric pullback. -/
theorem bernoulli_sign_separation (u : ℝ) (hu : 0 < u) :
    deriv (deriv logOnePlus) u < 0 ∧
      0 < deriv (deriv logOnePlus) u -
        deriv bernoulliPotential (Real.log u) * (-1 / u ^ 2) := by
  rw [logOnePlus_second u hu, bernoulli_chart_term u hu]
  constructor
  · apply div_neg_of_neg_of_pos (by norm_num)
    positivity
  · have h := bernoulli_corrected_second u hu
    rw [logOnePlus_second u hu, bernoulli_chart_term u hu] at h
    rw [h]
    positivity

end

end FormalResearch.PositiveAtlas.Boundary
```
