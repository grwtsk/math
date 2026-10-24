/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.GreenKernel.UnitInterval

/-! # Elementary primitives for the complete unit-interval discrepancy -/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
namespace GRWTSK.Analysis.Integral.UnitIntervalPrimitives
open GRWTSK.Analysis.GreenKernel.UnitInterval

def logarithm (t : ℝ) : ℝ := Real.log (1+t)

def logPrimitive (t : ℝ) : ℝ := (1+t)*Real.log (1+t)-(1+t)

def greenBackground (r : ℝ) : ℝ := 2*r*Real.log 2-(1+r)*Real.log (1+r)

def cellPrimitive (c y : ℝ) : ℝ :=
  y*((c-Real.log y)^2+2*(c-Real.log y)+2)

theorem logarithm_hasDerivAt {t : ℝ} (ht : t ∈ Icc (0:ℝ) 1) :
    HasDerivAt logarithm (1/(1+t)) t := by
  have hp : 0 < 1+t := by linarith [ht.1]
  have ha : HasDerivAt (fun x : ℝ => 1+x) 1 t := by
    simpa only [Pi.add_def, id_eq, zero_add] using
      (hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)
  exact ha.log hp.ne'

theorem logPrimitive_hasDerivAt {t : ℝ} (ht : t ∈ Icc (0:ℝ) 1) :
    HasDerivAt logPrimitive (Real.log (1+t)) t := by
  have ha : HasDerivAt (fun x : ℝ => 1+x) 1 t := by
    simpa only [Pi.add_def, id_eq, zero_add] using
      (hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)
  have hd := (ha.mul (logarithm_hasDerivAt ht)).sub ha
  simp only [Pi.mul_def, Pi.sub_def] at hd
  change HasDerivAt logPrimitive _ t at hd
  apply hd.congr_deriv
  dsimp only [logarithm]
  have hn : 1+t≠0 := by linarith [ht.1]
  field_simp [hn]; ring

theorem inverse_one_add_continuousOn :
    ContinuousOn (fun t : ℝ ↦ 1/(1+t)) (Icc (0:ℝ) 1) := by
  apply continuousOn_const.div (continuous_const.add continuous_id).continuousOn
  intro t ht
  change 1 + t ≠ 0
  linarith [ht.1]

theorem logarithm_continuousOn : ContinuousOn logarithm (Icc (0:ℝ) 1) := by
  intro t ht
  exact (logarithm_hasDerivAt ht).continuousAt.continuousWithinAt

theorem integral_inverse_one_add :
    (∫ t in (0:ℝ)..1, 1/(1+t))=Real.log 2 := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ logarithm_hasDerivAt (by simpa using ht))
    (inverse_one_add_continuousOn.intervalIntegrable_of_Icc (by norm_num))
  calc
    _ = logarithm 1 - logarithm 0 := h
    _ = Real.log 2 := by norm_num [logarithm]

theorem integral_logarithm :
    (∫ t in (0:ℝ)..1, logarithm t)=2*Real.log 2-1 := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ logPrimitive_hasDerivAt (by simpa using ht))
    (logarithm_continuousOn.intervalIntegrable_of_Icc (by norm_num))
  calc
    _ = logPrimitive 1 - logPrimitive 0 := h
    _ = 2*Real.log 2-1 := by norm_num [logPrimitive]; ring

/-- Primitive used by the independent cumulative-cell evaluation. -/
theorem cellPrimitive_hasDerivAt (c : ℝ) {y : ℝ} (hy : 0 < y) :
    HasDerivAt (cellPrimitive c) ((c-Real.log y)^2) y := by
  have hl := Real.hasDerivAt_log hy.ne'
  have hi := (hasDerivAt_const y c).sub hl
  have hd := (hasDerivAt_id y).mul
    (((hi.pow 2).add ((hasDerivAt_const y (2 : ℝ)).mul hi)).add
      (hasDerivAt_const y (2 : ℝ)))
  simp only [Pi.mul_def, Pi.add_def, Pi.sub_def, id_eq] at hd
  change HasDerivAt (cellPrimitive c) _ y at hd
  apply hd.congr_deriv
  dsimp
  field_simp [hy.ne']; ring

/-- The background potential vanishes at both endpoints; this is only one channel. -/
theorem greenBackground_endpoints : greenBackground 0=0 ∧ greenBackground 1=0 := by
  constructor <;> norm_num [greenBackground]

end GRWTSK.Analysis.Integral.UnitIntervalPrimitives
