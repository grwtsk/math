/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source, NOT elaborated in the pinned environment.
-/
import Mathlib.Analysis.Analytic.Order
import Mathlib.Tactic

/-! # A nonzero analytic solution of a scalar homogeneous ODE has no zeros

The proof is by vanishing order, not by dividing at a possible zero. It applies
only to analytic functions and retains a nonzero anchor on a preconnected open
domain. A constant zero function is explicitly not admitted by the anchor.
-/
set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology
namespace GRWTSK.Analysis.ComplexAnalysis.AnalyticLinearODE.Variants.Variant83c6f9c035e0d5c9

/-- A zero of finite positive order cannot satisfy f' = h*f near that zero.
Differentiation lowers its order by one; multiplication by analytic h cannot. -/
theorem no_finite_order_zero {f h : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z) (hh : AnalyticAt ℂ h z)
    (hfinite : analyticOrderAt f z ≠ ⊤)
    (hode : deriv f =ᶠ[𝓝 z] fun w => h w * f w) : f z ≠ 0 := by
  intro hz
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hfinite
  have hn' : analyticOrderAt f z = (n : ℕ∞) := hn.symm
  have hn0 : n ≠ 0 := by
    intro hn0
    have ho : analyticOrderAt f z = 0 := by simpa [hn0] using hn'
    exact ((hf.analyticOrderAt_eq_zero).mp ho) hz
  obtain ⟨k, hk⟩ := Nat.exists_add_one_eq.mpr (Nat.pos_of_ne_zero hn0)
  have ho : analyticOrderAt f z = (k : ℕ∞) + 1 := by
    rw [hn', ← hk]
    simp only [Nat.cast_add, Nat.cast_one]
  have hd : analyticOrderAt (deriv f) z = (k : ℕ∞) :=
    analyticOrderAt_deriv_of_pos hf ho
  have he := analyticOrderAt_congr hode
  have hm : analyticOrderAt (fun w => h w * f w) z =
      analyticOrderAt h z + analyticOrderAt f z := by
    simpa only [Pi.mul_def] using analyticOrderAt_mul hh hf
  have hbad : (k : ℕ∞) = analyticOrderAt h z + ((k : ℕ∞) + 1) := by
    simpa only [hd, hm, ho] using he
  have hle : (k : ℕ∞) + 1 ≤ (k : ℕ∞) := by
    calc
      (k : ℕ∞) + 1 = 0 + ((k : ℕ∞) + 1) := (zero_add _).symm
      _ ≤ analyticOrderAt h z + ((k : ℕ∞) + 1) :=
        add_le_add zero_le le_rfl
      _ = (k : ℕ∞) := hbad.symm
  have : k + 1 ≤ k := by exact_mod_cast hle
  omega

/-- A nonzero value prevents infinite vanishing order throughout the domain. -/
theorem finite_order_on_connected {f : ℂ → ℂ} {U : Set ℂ} {anchor : ℂ}
    (hf : AnalyticOnNhd ℂ f U) (hU : IsPreconnected U)
    (ha : anchor ∈ U) (hfa : f anchor ≠ 0) :
    ∀ z ∈ U, analyticOrderAt f z ≠ ⊤ := by
  have ho : analyticOrderAt f anchor = 0 :=
    (hf anchor ha).analyticOrderAt_eq_zero.mpr hfa
  intro z hz
  exact hf.analyticOrderAt_ne_top_of_isPreconnected hU ha hz
    (by rw [ho]; exact ENat.zero_ne_top)

/-- No local or global quotient at a zero appears in this nonvanishing theorem. -/
theorem nonvanishing {f h : ℂ → ℂ} {U : Set ℂ} {anchor : ℂ}
    (hopen : IsOpen U) (hconn : IsPreconnected U)
    (hf : AnalyticOnNhd ℂ f U) (hh : AnalyticOnNhd ℂ h U)
    (ha : anchor ∈ U) (hfa : f anchor ≠ 0)
    (hode : ∀ z ∈ U, deriv f z = h z * f z) :
    ∀ z ∈ U, f z ≠ 0 := by
  have hfinite := finite_order_on_connected hf hconn ha hfa
  intro z hz
  apply no_finite_order_zero (hf z hz) (hh z hz) (hfinite z hz)
  filter_upwards [hopen.mem_nhds hz] with w hw
  exact hode w hw

end GRWTSK.Analysis.ComplexAnalysis.AnalyticLinearODE.Variants.Variant83c6f9c035e0d5c9
