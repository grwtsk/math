/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
Uses the pinned Mathlib library, whose upstream license is Apache-2.0.

Conditional comparison in a common coordinate line. The numerical premises
are pointwise comparison and explicit scale/error bounds; no arithmetic
construction is asserted to supply them.
-/
import GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

namespace GRWTSK.LinearAlgebra.OrientedRealLine

universe u

open scoped BigOperators

/-- Common comparison data, retaining the maps, points, and pointwise indeterminacies. -/
structure FiniteComparisonRepair (ι : Type*) where
  comparison : Line.{u}
  thetaObject : ι → Line.{u}
  qObject : Line.{u}
  theta : ∀ i, (thetaObject i).Carrier
  q : qObject.Carrier
  thetaMap : ∀ i, PositiveScaleEquiv (thetaObject i) comparison
  qMap : PositiveScaleEquiv qObject comparison
  coefficient : ι → ℝ
  error : ι → ℝ
  pointwise : ∀ i, comparison.coordinate ((thetaMap i).linearEquiv (theta i)) ≤
    coefficient i * comparison.coordinate (qMap.linearEquiv q) + error i

namespace FiniteComparisonRepair

/--
The common-line inequalities imply a finite weighted bound once distortion,
coefficient mass, and indeterminacies are bounded. Every weight is retained.
-/
theorem weighted_bound {ι : Type*} [Fintype ι] (R : FiniteComparisonRepair ι)
    (weight : ι → ℝ) (α β A E : ℝ)
    (hweight : ∀ i, 0 ≤ weight i)
    (htheta : ∀ i, 0 ≤ (R.thetaObject i).coordinate (R.theta i))
    (hq : 0 ≤ R.qObject.coordinate R.q)
    (hcoefficient : ∀ i, 0 ≤ R.coefficient i)
    (hscaleLower : ∀ i, α ≤ (R.thetaMap i).scale)
    (hscaleUpper : R.qMap.scale ≤ β)
    (hmass : (∑ i, weight i * R.coefficient i) ≤ A)
    (herror : (∑ i, weight i * R.error i) ≤ E) :
    α * (∑ i, weight i * (R.thetaObject i).coordinate (R.theta i)) ≤
      A * β * R.qObject.coordinate R.q + E := by
  have hβ : 0 ≤ β := le_trans (le_of_lt R.qMap.scale_pos) hscaleUpper
  have hpoint : ∀ i,
      α * (R.thetaObject i).coordinate (R.theta i) ≤
      R.coefficient i * (β * R.qObject.coordinate R.q) + R.error i := by
    intro i
    calc
      α * (R.thetaObject i).coordinate (R.theta i) ≤
          (R.thetaMap i).scale * (R.thetaObject i).coordinate (R.theta i) :=
        mul_le_mul_of_nonneg_right (hscaleLower i) (htheta i)
      _ ≤ R.coefficient i * (R.qMap.scale * R.qObject.coordinate R.q) + R.error i := by
        simpa only [(R.thetaMap i).realizes_scale, R.qMap.realizes_scale] using R.pointwise i
      _ ≤ R.coefficient i * (β * R.qObject.coordinate R.q) + R.error i := by
        exact add_le_add
          (mul_le_mul_of_nonneg_left
            (mul_le_mul_of_nonneg_right hscaleUpper hq) (hcoefficient i)) le_rfl
  calc
    α * (∑ i, weight i * (R.thetaObject i).coordinate (R.theta i)) =
        ∑ i, weight i * (α * (R.thetaObject i).coordinate (R.theta i)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ ≤ ∑ i, weight i *
        (R.coefficient i * (β * R.qObject.coordinate R.q) + R.error i) := by
      apply Finset.sum_le_sum
      intro i _
      exact mul_le_mul_of_nonneg_left (hpoint i) (hweight i)
    _ = (∑ i, weight i * R.coefficient i) * (β * R.qObject.coordinate R.q) +
        ∑ i, weight i * R.error i := by
      simp only [mul_add, Finset.sum_add_distrib, ← mul_assoc, Finset.sum_mul]
    _ ≤ A * (β * R.qObject.coordinate R.q) + E :=
      add_le_add (mul_le_mul_of_nonneg_right hmass (mul_nonneg hβ hq)) herror
    _ = A * β * R.qObject.coordinate R.q + E := by ring

/-- Positive lower calibration converts the retained weighted degree into an upper bound. -/
theorem weighted_degree_le {ι : Type*} [Fintype ι] (R : FiniteComparisonRepair ι)
    (weight : ι → ℝ) (α β A E : ℝ) (hα : 0 < α)
    (hweight : ∀ i, 0 ≤ weight i)
    (htheta : ∀ i, 0 ≤ (R.thetaObject i).coordinate (R.theta i))
    (hq : 0 ≤ R.qObject.coordinate R.q)
    (hcoefficient : ∀ i, 0 ≤ R.coefficient i)
    (hscaleLower : ∀ i, α ≤ (R.thetaMap i).scale)
    (hscaleUpper : R.qMap.scale ≤ β)
    (hmass : (∑ i, weight i * R.coefficient i) ≤ A)
    (herror : (∑ i, weight i * R.error i) ≤ E) :
    (∑ i, weight i * (R.thetaObject i).coordinate (R.theta i)) ≤
      (A * β * R.qObject.coordinate R.q + E) / α := by
  apply (le_div_iff₀ hα).mpr
  simpa only [mul_comm] using
    R.weighted_bound weight α β A E hweight htheta hq hcoefficient
      hscaleLower hscaleUpper hmass herror

end FiniteComparisonRepair

end GRWTSK.LinearAlgebra.OrientedRealLine
