/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.FinitePoleSubtraction
import GRWTSK.Analysis.Complex.OrientedRectangle

set_option autoImplicit false

/-!
# Exact rectangular contour reduction to a finite Cauchy-kernel sum

The analytic remainder's boundary integral vanishes by the pinned rectangular
Cauchy-Goursat theorem. The original function can have interior poles. No claim
that boundary safety makes it holomorphic on the filled rectangle is used.
The elementary winding normalization of the remaining Cauchy integrals is NOT
proved here; in particular no finite residue-sum equality is assumed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RectangularPoleReduction

open MeasureTheory Set
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.Complex.FinitePoleSubtraction
open GRWTSK.Analysis.Complex.OrientedRectangle

noncomputable section

/-- The full closed rectangle, not only its edges. -/
def closedRectangle (l r T : ℝ) : Set ℂ :=
  {z | l ≤ z.re ∧ z.re ≤ r ∧ |z.im| ≤ T}

/-- Exact simple principal parts at distinct complex points. -/
def principalSum (S : Finset ℂ) (c : ℂ → ℂ) (z : ℂ) : ℂ :=
  ∑ a ∈ S, c a / (z - a)

theorem analyticAt_principalSum (S : Finset ℂ) (c : ℂ → ℂ) (z : ℂ) (hz : z ∉ S) :
    AnalyticAt ℂ (principalSum S c) z := by
  classical
  apply Finset.analyticAt_fun_sum
  intro a ha
  exact analyticAt_const.div (analyticAt_id.sub analyticAt_const)
    (sub_ne_zero.mpr (by intro he; subst z; exact hz ha))

/-- Actual integrability of all four parametrized edges, in their retained orientation. -/
def EdgeIntegrable (f : ℂ → ℂ) (l r T : ℝ) : Prop :=
  IntervalIntegrable (fun u : ℝ => f ((u : ℂ) + ((-T : ℝ) : ℂ) * Complex.I)) volume l r ∧
  IntervalIntegrable (fun u : ℝ => f ((u : ℂ) + (T : ℂ) * Complex.I)) volume l r ∧
  IntervalIntegrable (fun t : ℝ => f ((r : ℂ) + (t : ℂ) * Complex.I)) volume (-T) T ∧
  IntervalIntegrable (fun t : ℝ => f ((l : ℂ) + (t : ℂ) * Complex.I)) volume (-T) T

theorem boundaryIntegral_add (f g : ℂ → ℂ) (l r T : ℝ)
    (hf : EdgeIntegrable f l r T) (hg : EdgeIntegrable g l r T) :
    boundaryIntegral (fun z => f z + g z) l r T =
      boundaryIntegral f l r T + boundaryIntegral g l r T := by
  unfold boundaryIntegral horizontal vertical
  rw [intervalIntegral.integral_add hf.1 hg.1,
    intervalIntegral.integral_add hf.2.1 hg.2.1,
    intervalIntegral.integral_add hf.2.2.1 hg.2.2.1,
    intervalIntegral.integral_add hf.2.2.2 hg.2.2.2]
  ring

/-- Boundary agreement includes the corners. No agreement at the interior poles is required. -/
theorem boundaryIntegral_congr (f g : ℂ → ℂ) (l r T : ℝ) (hT : 0 ≤ T)
    (hh : ∀ y : ℝ, |y| = T → ∀ u ∈ uIcc l r,
      f ((u : ℂ) + (y : ℂ) * Complex.I) = g ((u : ℂ) + (y : ℂ) * Complex.I))
    (hv : ∀ c : ℝ, c = l ∨ c = r → ∀ t ∈ uIcc (-T) T,
      f ((c : ℂ) + (t : ℂ) * Complex.I) = g ((c : ℂ) + (t : ℂ) * Complex.I)) :
    boundaryIntegral f l r T = boundaryIntegral g l r T := by
  have hb : horizontal f l r (-T) = horizontal g l r (-T) :=
    intervalIntegral.integral_congr (hh (-T) (by simp [abs_of_nonneg hT]))
  have hu : horizontal f l r T = horizontal g l r T :=
    intervalIntegral.integral_congr (hh T (abs_of_nonneg hT))
  have hr : vertical f r T = vertical g r T :=
    intervalIntegral.integral_congr (hv r (Or.inr rfl))
  have hl : vertical f l T = vertical g l T :=
    intervalIntegral.integral_congr (hv l (Or.inl rfl))
  simp only [boundaryIntegral, hb, hu, hr, hl]

/-- Cauchy-Goursat is applied to the analytically extended remainder on the filled rectangle. -/
theorem boundaryIntegral_zero_on_rectangle (g : ℂ → ℂ) (l r T : ℝ)
    (hlr : l ≤ r) (hT : 0 ≤ T) (hg : AnalyticOnNhd ℂ g (closedRectangle l r T)) :
    boundaryIntegral g l r T = 0 := by
  have hd : DifferentiableOn ℂ g
      (uIcc l r ×ℂ uIcc (-T) T) := by
    intro z hz
    change z.re ∈ uIcc l r ∧ z.im ∈ uIcc (-T) T at hz
    rw [uIcc_of_le hlr, uIcc_of_le (by linarith)] at hz
    exact (hg z ⟨hz.1.1, hz.1.2, abs_le.mpr hz.2⟩).differentiableAt.differentiableWithinAt
  simpa only [boundaryIntegral, horizontal, vertical, smul_eq_mul] using
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn g
      (⟨l, -T⟩ : ℂ) (⟨r, T⟩ : ℂ) hd

/-- Continuous parametrizations of analytic boundary germs have finite edge integrals. -/
theorem edgeIntegrable_of_analytic_germs (f : ℂ → ℂ) (l r T : ℝ)
    (hlr : l ≤ r) (hT : 0 ≤ T)
    (hh : ∀ y : ℝ, |y| = T → ∀ u ∈ Icc l r,
      AnalyticAt ℂ f ((u : ℂ) + (y : ℂ) * Complex.I))
    (hv : ∀ c : ℝ, c = l ∨ c = r → ∀ t ∈ Icc (-T) T,
      AnalyticAt ℂ f ((c : ℂ) + (t : ℂ) * Complex.I)) :
    EdgeIntegrable f l r T := by
  have hpath (e : ℝ → ℂ) (he : Continuous e) (a b : ℝ) (hab : a ≤ b)
      (ha : ∀ t ∈ Icc a b, AnalyticAt ℂ f (e t)) :
      IntervalIntegrable (fun t => f (e t)) volume a b := by
    apply ContinuousOn.intervalIntegrable_of_Icc hab
    intro t ht
    exact ((ha t ht).continuousAt.comp he.continuousAt).continuousWithinAt
  exact ⟨hpath _ (by fun_prop) l r hlr (hh (-T) (by simp [abs_of_nonneg hT])),
    hpath _ (by fun_prop) l r hlr (hh T (abs_of_nonneg hT)),
    hpath _ (by fun_prop) (-T) T (by linarith) (hv r (Or.inr rfl)),
    hpath _ (by fun_prop) (-T) T (by linarith) (hv l (Or.inl rfl))⟩

/-- Finite meromorphic data reduce the actual closed integral to explicit Cauchy kernels.
No winding-number value, residue integral or analytic remainder is a hypothesis. -/
theorem boundaryIntegral_eq_principalSum (S : Finset ℂ) (f : ℂ → ℂ) (c : ℂ → ℂ)
    (l r T : ℝ) (hlr : l < r) (hT : 0 < T)
    (hS : ∀ a ∈ S, l < a.re ∧ a.re < r ∧ |a.im| < T)
    (hreg : ∀ z ∈ closedRectangle l r T, z ∉ S → AnalyticAt ℂ f z)
    (hparts : ∀ a ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      f =ᶠ[𝓝[≠] a] fun z => c a / (z - a) + A z) :
    boundaryIntegral f l r T = boundaryIntegral (principalSum S c) l r T := by
  obtain ⟨g, hg, heq⟩ := finite_pole_subtraction S f c (closedRectangle l r T) hreg hparts
  have hhsafe (y u : ℝ) (hy : |y| = T) (hu : u ∈ Icc l r) :
      (u : ℂ) + (y : ℂ) * Complex.I ∈ closedRectangle l r T ∧
        (u : ℂ) + (y : ℂ) * Complex.I ∉ S := by
    refine ⟨by simpa [closedRectangle, hy] using hu, ?_⟩
    intro hm
    have hp := (hS _ hm).2.2
    simp [hy] at hp
  have hvsafe (c₀ t : ℝ) (hc : c₀ = l ∨ c₀ = r) (ht : t ∈ Icc (-T) T) :
      (c₀ : ℂ) + (t : ℂ) * Complex.I ∈ closedRectangle l r T ∧
        (c₀ : ℂ) + (t : ℂ) * Complex.I ∉ S := by
    have hbounds : l ≤ c₀ ∧ c₀ ≤ r := by rcases hc with rfl | rfl <;> exact ⟨by linarith, by linarith⟩
    refine ⟨by simpa [closedRectangle] using And.intro hbounds.1 (And.intro hbounds.2 (abs_le.mpr ht)), ?_⟩
    intro hm
    have hp := hS _ hm
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
      Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero] at hp
    rcases hc with rfl | rfl <;> linarith [hp.1, hp.2.1]
  have hgint := edgeIntegrable_of_analytic_germs g l r T hlr.le hT.le
    (fun y hy u hu => hg _ (hhsafe y u hy hu).1)
    (fun c₀ hc t ht => hg _ (hvsafe c₀ t hc ht).1)
  have hpint := edgeIntegrable_of_analytic_germs (principalSum S c) l r T hlr.le hT.le
    (fun y hy u hu => analyticAt_principalSum S c _ (hhsafe y u hy hu).2)
    (fun c₀ hc t ht => analyticAt_principalSum S c _ (hvsafe c₀ t hc ht).2)
  calc
    boundaryIntegral f l r T = boundaryIntegral (fun z => g z + principalSum S c z) l r T := by
      apply boundaryIntegral_congr _ _ l r T hT.le
      · intro y hy u hu
        rw [uIcc_of_le hlr.le] at hu
        exact heq _ (hhsafe y u hy hu).2
      · intro c₀ hc t ht
        rw [uIcc_of_le (by linarith)] at ht
        exact heq _ (hvsafe c₀ t hc ht).2
    _ = boundaryIntegral g l r T + boundaryIntegral (principalSum S c) l r T :=
      boundaryIntegral_add g (principalSum S c) l r T hgint hpint
    _ = boundaryIntegral (principalSum S c) l r T := by
      rw [boundaryIntegral_zero_on_rectangle g l r T hlr.le hT.le hg, zero_add]

end
end GRWTSK.Analysis.Complex.RectangularPoleReduction
