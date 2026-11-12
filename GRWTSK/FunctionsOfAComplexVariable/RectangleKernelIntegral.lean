/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction and local source attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionsOfAComplexVariable.CenteredSquareKernelIntegral
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Rectangular simple-pole integrals by actual excision

MSC2020: 30E20, 30E10. The integral is Mathlib's four interval integrals,
with both vertical velocities and both reversed edges retained. The comparison
with the centered square is proved by affine changes of variable and four
Cauchy-Goursat identities. No winding/integral comparison is assumed.

Consumer: `WeilRectangleResidues.lean`, using the existing arithmetic remainder.
Evidence: SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom
checking and independent review: NOT_RUN. See the adjacent provenance records.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral

open Complex Set MeasureTheory
open scoped BigOperators
open GRWTSK.Analysis.ComplexAnalysis.CenteredSquareKernelIntegral
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle

noncomputable section

/-- The four interval integrals in Mathlib's rectangular Cauchy-Goursat theorem. -/
def boundaryIntegral (l r b u : ℝ) (F : ℂ → ℂ) : ℂ :=
  (∫ x in l..r, F ((x : ℂ) + (b : ℂ) * I)) -
  (∫ x in l..r, F ((x : ℂ) + (u : ℂ) * I)) +
  I * (∫ y in b..u, F ((r : ℂ) + (y : ℂ) * I)) -
  I * (∫ y in b..u, F ((l : ℂ) + (y : ℂ) * I))

/-- Integrability is required separately on all four actual edges. -/
def EdgeIntegrable (l r b u : ℝ) (F : ℂ → ℂ) : Prop :=
  IntervalIntegrable (fun x : ℝ => F ((x : ℂ) + (b : ℂ) * I)) volume l r ∧
  IntervalIntegrable (fun x : ℝ => F ((x : ℂ) + (u : ℂ) * I)) volume l r ∧
  IntervalIntegrable (fun y : ℝ => F ((r : ℂ) + (y : ℂ) * I)) volume b u ∧
  IntervalIntegrable (fun y : ℝ => F ((l : ℂ) + (y : ℂ) * I)) volume b u

private theorem horizontal_continuous (a : ℂ) (y : ℝ) (hy : y ≠ a.im) :
    Continuous (fun x : ℝ => 1 / ((x : ℂ) + (y : ℂ) * I - a)) := by
  apply continuous_const.div (by fun_prop)
  intro x hz
  have he := congrArg Complex.im (sub_eq_zero.mp hz)
  exact hy (by simpa using he)

private theorem vertical_continuous (a : ℂ) (x : ℝ) (hx : x ≠ a.re) :
    Continuous (fun y : ℝ => 1 / ((x : ℂ) + (y : ℂ) * I - a)) := by
  apply continuous_const.div (by fun_prop)
  intro y hz
  have he := congrArg Complex.re (sub_eq_zero.mp hz)
  exact hx (by simpa using he)

/-- Strict interior membership excludes the pole from every boundary edge. -/
theorem kernel_boundary_ne_zero (l r b u : ℝ) (a : ℂ)
    (hl : l < a.re) (hr : a.re < r) (hb : b < a.im) (hu : a.im < u)
    {z : ℂ} (hz : z.re = l ∨ z.re = r ∨ z.im = b ∨ z.im = u) : z - a ≠ 0 := by
  intro he
  have hza : z = a := sub_eq_zero.mp he
  subst z
  rcases hz with h | h | h | h <;> linarith

/-- No totalized divergent edge integral is used in the kernel evaluation. -/
theorem kernel_edge_integrable (l r b u : ℝ) (a : ℂ)
    (hl : l < a.re) (hr : a.re < r) (hb : b < a.im) (hu : a.im < u) :
    EdgeIntegrable l r b u (fun z => 1 / (z - a)) := by
  exact ⟨(horizontal_continuous a b (ne_of_lt hb)).intervalIntegrable _ _,
    (horizontal_continuous a u (ne_of_gt hu)).intervalIntegrable _ _,
    (vertical_continuous a r (ne_of_gt hr)).intervalIntegrable _ _,
    (vertical_continuous a l (ne_of_lt hl)).intervalIntegrable _ _⟩

private theorem split_x (F : ℂ → ℂ) (l c r b u : ℝ)
    (hb : Continuous (fun x : ℝ => F ((x : ℂ) + (b : ℂ) * I)))
    (hu : Continuous (fun x : ℝ => F ((x : ℂ) + (u : ℂ) * I))) :
    boundaryIntegral l c b u F + boundaryIntegral c r b u F =
      boundaryIntegral l r b u F := by
  have h₀ := intervalIntegral.integral_add_adjacent_intervals
    (hb.intervalIntegrable l c) (hb.intervalIntegrable c r)
  have h₁ := intervalIntegral.integral_add_adjacent_intervals
    (hu.intervalIntegrable l c) (hu.intervalIntegrable c r)
  unfold boundaryIntegral
  linear_combination h₀ - h₁

private theorem split_y (F : ℂ → ℂ) (l r b c u : ℝ)
    (hl : Continuous (fun y : ℝ => F ((l : ℂ) + (y : ℂ) * I)))
    (hr : Continuous (fun y : ℝ => F ((r : ℂ) + (y : ℂ) * I))) :
    boundaryIntegral l r b c F + boundaryIntegral l r c u F =
      boundaryIntegral l r b u F := by
  have h₀ := intervalIntegral.integral_add_adjacent_intervals
    (hr.intervalIntegrable b c) (hr.intervalIntegrable c u)
  have h₁ := intervalIntegral.integral_add_adjacent_intervals
    (hl.intervalIntegrable b c) (hl.intervalIntegrable c u)
  unfold boundaryIntegral
  linear_combination I * h₀ - I * h₁

private theorem kernel_integral_zero (l r b u : ℝ) (a : ℂ)
    (hlr : l ≤ r) (hbu : b ≤ u) (ha : a ∉ Icc l r ×ℂ Icc b u) :
    boundaryIntegral l r b u (fun z => 1 / (z - a)) = 0 := by
  have hd : DifferentiableOn ℂ (fun z : ℂ => 1 / (z - a))
      (uIcc l r ×ℂ uIcc b u) := by
    rw [uIcc_of_le hlr, uIcc_of_le hbu]
    intro z hz
    have hn : z - a ≠ 0 := by
      intro he
      exact ha (sub_eq_zero.mp he ▸ hz)
    simpa only [one_div] using
      ((differentiableAt_id.sub_const a).inv hn).differentiableWithinAt
  simpa only [boundaryIntegral, smul_eq_mul] using
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn
      (fun z : ℂ => 1 / (z - a)) (⟨l, b⟩ : ℂ) (⟨r, u⟩ : ℂ) hd

private theorem real_smul_complex (c : ℝ) (z : ℂ) : c • z = (c : ℂ) * z := by
  apply Complex.ext <;> simp

/-- Change of variables, including its signed velocity; no positive-scale premise. -/
private theorem affine_integral (g : ℝ → ℂ) (c d : ℝ) :
    (∫ t in (-1 : ℝ)..1, (c : ℂ) * g (d + c * t)) =
      ∫ x in (d - c)..(d + c), g x := by
  rw [intervalIntegral.integral_const_mul]
  simpa only [real_smul_complex, mul_neg_one, mul_one, sub_eq_add_neg] using
    (intervalIntegral.smul_integral_comp_add_mul (a := (-1 : ℝ)) (b := 1) g c d)

/-- The explicit edge parametrizations really are the four rectangular integrals. -/
private theorem square_comparison (a : ℂ) (e : ℝ) :
    boundaryIntegral (a.re - e) (a.re + e) (a.im - e) (a.im + e)
      (fun z => 1 / (z - a)) = squareIntegral a e := by
  have p₀ (t : ℝ) : edgePath a e 0 t =
      ((a.re + e : ℝ) : ℂ) + ((a.im + e * t : ℝ) : ℂ) * I := by
    apply Complex.ext <;> simp [edgePath] <;> ring
  have p₁ (t : ℝ) : edgePath a e 1 t =
      ((a.re + (-e) * t : ℝ) : ℂ) + ((a.im + e : ℝ) : ℂ) * I := by
    apply Complex.ext <;> simp [edgePath] <;> ring
  have p₂ (t : ℝ) : edgePath a e 2 t =
      ((a.re - e : ℝ) : ℂ) + ((a.im + (-e) * t : ℝ) : ℂ) * I := by
    apply Complex.ext <;> simp [edgePath, pow_succ] <;> ring
  have p₃ (t : ℝ) : edgePath a e 3 t =
      ((a.re + e * t : ℝ) : ℂ) + ((a.im - e : ℝ) : ℂ) * I := by
    apply Complex.ext <;> simp [edgePath, pow_succ] <;> ring
  have e₀ : edgeIntegral a e 0 =
      I * (∫ y in (a.im - e)..(a.im + e),
        1 / (((a.re + e : ℝ) : ℂ) + (y : ℂ) * I - a)) := by
    calc
      edgeIntegral a e 0 = I * (∫ t in (-1 : ℝ)..1,
          (e : ℂ) * (1 / (((a.re + e : ℝ) : ℂ) +
            ((a.im + e * t : ℝ) : ℂ) * I - a))) := by
        rw [← intervalIntegral.integral_const_mul]
        apply intervalIntegral.integral_congr
        intro t _
        rw [p₀]
        simp [edgeVelocity, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]
      _ = _ := congrArg (fun z : ℂ => I * z)
        (affine_integral (fun y : ℝ =>
          1 / (((a.re + e : ℝ) : ℂ) + (y : ℂ) * I - a)) e a.im)
  have e₁ : edgeIntegral a e 1 =
      -(∫ x in (a.re - e)..(a.re + e),
        1 / ((x : ℂ) + ((a.im + e : ℝ) : ℂ) * I - a)) := by
    calc
      edgeIntegral a e 1 = (∫ t in (-1 : ℝ)..1,
          ((-e : ℝ) : ℂ) * (1 / (((a.re + (-e) * t : ℝ) : ℂ) +
            ((a.im + e : ℝ) : ℂ) * I - a))) := by
        apply intervalIntegral.integral_congr
        intro t _
        rw [p₁]
        simp [edgeVelocity, div_eq_mul_inv, mul_assoc, I_mul_I]
      _ = ∫ x in (a.re + e)..(a.re - e),
          1 / ((x : ℂ) + ((a.im + e : ℝ) : ℂ) * I - a) := by
        simpa only [sub_neg_eq_add, sub_eq_add_neg] using
          affine_integral (fun x : ℝ =>
            1 / ((x : ℂ) + ((a.im + e : ℝ) : ℂ) * I - a)) (-e) a.re
      _ = _ := intervalIntegral.integral_symm _ _
  have e₂ : edgeIntegral a e 2 =
      -I * (∫ y in (a.im - e)..(a.im + e),
        1 / (((a.re - e : ℝ) : ℂ) + (y : ℂ) * I - a)) := by
    calc
      edgeIntegral a e 2 = I * (∫ t in (-1 : ℝ)..1,
          ((-e : ℝ) : ℂ) * (1 / (((a.re - e : ℝ) : ℂ) +
            ((a.im + (-e) * t : ℝ) : ℂ) * I - a))) := by
        rw [← intervalIntegral.integral_const_mul]
        apply intervalIntegral.integral_congr
        intro t _
        rw [p₂]
        simp [edgeVelocity, div_eq_mul_inv, I_sq, mul_comm, mul_left_comm, mul_assoc]
      _ = I * (∫ y in (a.im + e)..(a.im - e),
          1 / (((a.re - e : ℝ) : ℂ) + (y : ℂ) * I - a)) := by
        congr 1
        simpa only [sub_neg_eq_add, sub_eq_add_neg] using
          affine_integral (fun y : ℝ =>
            1 / (((a.re - e : ℝ) : ℂ) + (y : ℂ) * I - a)) (-e) a.im
      _ = _ := by rw [intervalIntegral.integral_symm]; ring
  have e₃ : edgeIntegral a e 3 =
      (∫ x in (a.re - e)..(a.re + e),
        1 / ((x : ℂ) + ((a.im - e : ℝ) : ℂ) * I - a)) := by
    calc
      edgeIntegral a e 3 = (∫ t in (-1 : ℝ)..1,
          (e : ℂ) * (1 / (((a.re + e * t : ℝ) : ℂ) +
            ((a.im - e : ℝ) : ℂ) * I - a))) := by
        apply intervalIntegral.integral_congr
        intro t _
        rw [p₃]
        simp [edgeVelocity, div_eq_mul_inv, pow_succ, I_sq, mul_assoc, I_mul_I]
      _ = _ := affine_integral (fun x : ℝ =>
        1 / ((x : ℂ) + ((a.im - e : ℝ) : ℂ) * I - a)) e a.re
  have hsum : squareIntegral a e =
      edgeIntegral a e 0 + edgeIntegral a e 1 + edgeIntegral a e 2 + edgeIntegral a e 3 := by
    simp [squareIntegral, Fin.sum_univ_succ, add_assoc]
  rw [hsum, e₀, e₁, e₂, e₃]
  unfold boundaryIntegral
  ring

private theorem excision (l r b u : ℝ) (a : ℂ) (e : ℝ) (he : 0 < e)
    (hl : l < a.re - e) (hr : a.re + e < r)
    (hb : b < a.im - e) (hu : a.im + e < u) :
    boundaryIntegral l r b u (fun z => 1 / (z - a)) =
      boundaryIntegral (a.re - e) (a.re + e) (a.im - e) (a.im + e)
        (fun z => 1 / (z - a)) := by
  let F : ℂ → ℂ := fun z => 1 / (z - a)
  have hx₁ := split_x F l (a.re - e) r b u
    (horizontal_continuous a b (by linarith))
    (horizontal_continuous a u (by linarith))
  have hx₂ := split_x F (a.re - e) (a.re + e) r b u
    (horizontal_continuous a b (by linarith))
    (horizontal_continuous a u (by linarith))
  have hy₁ := split_y F (a.re - e) (a.re + e) b (a.im - e) u
    (vertical_continuous a (a.re - e) (by linarith))
    (vertical_continuous a (a.re + e) (by linarith))
  have hy₂ := split_y F (a.re - e) (a.re + e) (a.im - e) (a.im + e) u
    (vertical_continuous a (a.re - e) (by linarith))
    (vertical_continuous a (a.re + e) (by linarith))
  have hL : boundaryIntegral l (a.re - e) b u F = 0 :=
    kernel_integral_zero l (a.re - e) b u a (by linarith) (by linarith)
      (by intro h; change a.re ∈ Icc l (a.re - e) ∧ a.im ∈ Icc b u at h
          linarith [h.1.2])
  have hR : boundaryIntegral (a.re + e) r b u F = 0 :=
    kernel_integral_zero (a.re + e) r b u a (by linarith) (by linarith)
      (by intro h; change a.re ∈ Icc (a.re + e) r ∧ a.im ∈ Icc b u at h
          linarith [h.1.1])
  have hB : boundaryIntegral (a.re - e) (a.re + e) b (a.im - e) F = 0 :=
    kernel_integral_zero (a.re - e) (a.re + e) b (a.im - e) a
      (by linarith) (by linarith)
      (by intro h; change a.re ∈ Icc (a.re - e) (a.re + e) ∧
            a.im ∈ Icc b (a.im - e) at h
          linarith [h.2.2])
  have hU : boundaryIntegral (a.re - e) (a.re + e) (a.im + e) u F = 0 :=
    kernel_integral_zero (a.re - e) (a.re + e) (a.im + e) u a
      (by linarith) (by linarith)
      (by intro h; change a.re ∈ Icc (a.re - e) (a.re + e) ∧
            a.im ∈ Icc (a.im + e) u at h
          linarith [h.2.1])
  change boundaryIntegral l r b u F = _
  rw [← hx₁, ← hx₂, ← hy₁, ← hy₂, hL, hR, hB, hU]
  ring

/-- The actual general rectangular kernel integral, at the original complex pole. -/
theorem boundaryIntegral_kernel (l r b u : ℝ) (a : ℂ)
    (hl : l < a.re) (hr : a.re < r) (hb : b < a.im) (hu : a.im < u) :
    boundaryIntegral l r b u (fun z => 1 / (z - a)) = 2 * (Real.pi : ℂ) * I := by
  let d : ℝ := min (min (a.re - l) (r - a.re)) (min (a.im - b) (u - a.im))
  have hd : 0 < d := lt_min
    (lt_min (sub_pos.mpr hl) (sub_pos.mpr hr))
    (lt_min (sub_pos.mpr hb) (sub_pos.mpr hu))
  have d₁ : d ≤ a.re - l := (min_le_left _ _).trans (min_le_left _ _)
  have d₂ : d ≤ r - a.re := (min_le_left _ _).trans (min_le_right _ _)
  have d₃ : d ≤ a.im - b := (min_le_right _ _).trans (min_le_left _ _)
  have d₄ : d ≤ u - a.im := (min_le_right _ _).trans (min_le_right _ _)
  have he : 0 < d / 2 := by linarith
  rw [excision l r b u a (d / 2) he (by linarith) (by linarith)
      (by linarith) (by linarith), square_comparison,
    squareIntegral_eq_period a (d / 2) (ne_of_gt he)]
  rfl

private theorem edges_add {l r b u : ℝ} {F G : ℂ → ℂ}
    (hF : EdgeIntegrable l r b u F) (hG : EdgeIntegrable l r b u G) :
    EdgeIntegrable l r b u (fun z => F z + G z) :=
  ⟨hF.1.add hG.1, hF.2.1.add hG.2.1,
    hF.2.2.1.add hG.2.2.1, hF.2.2.2.add hG.2.2.2⟩

private theorem edges_const_mul {l r b u : ℝ} {F : ℂ → ℂ}
    (c : ℂ) (hF : EdgeIntegrable l r b u F) :
    EdgeIntegrable l r b u (fun z => c * F z) :=
  ⟨hF.1.const_mul c, hF.2.1.const_mul c,
    hF.2.2.1.const_mul c, hF.2.2.2.const_mul c⟩

private theorem integral_add {l r b u : ℝ} {F G : ℂ → ℂ}
    (hF : EdgeIntegrable l r b u F) (hG : EdgeIntegrable l r b u G) :
    boundaryIntegral l r b u (fun z => F z + G z) =
      boundaryIntegral l r b u F + boundaryIntegral l r b u G := by
  simp only [boundaryIntegral,
    intervalIntegral.integral_add hF.1 hG.1,
    intervalIntegral.integral_add hF.2.1 hG.2.1,
    intervalIntegral.integral_add hF.2.2.1 hG.2.2.1,
    intervalIntegral.integral_add hF.2.2.2 hG.2.2.2]
  ring

private theorem integral_const_mul (l r b u : ℝ) (c : ℂ) (F : ℂ → ℂ) :
    boundaryIntegral l r b u (fun z => c * F z) = c * boundaryIntegral l r b u F := by
  simp only [boundaryIntegral, intervalIntegral.integral_const_mul]
  ring

private theorem principal_parts {ι : Type*} (S : Finset ι) (a c : ι → ℂ)
    (l r b u : ℝ)
    (ha : ∀ j ∈ S, l < (a j).re ∧ (a j).re < r ∧ b < (a j).im ∧ (a j).im < u) :
    EdgeIntegrable l r b u (fun z => ∑ j ∈ S, c j / (z - a j)) ∧
    boundaryIntegral l r b u (fun z => ∑ j ∈ S, c j / (z - a j)) =
      (2 * (Real.pi : ℂ) * I) * ∑ j ∈ S, c j := by
  classical
  revert ha
  induction S using Finset.induction_on with
  | empty => intro ha; simp [EdgeIntegrable, boundaryIntegral]
  | @insert j S hj ih =>
    intro ha
    have hj' := ha j (Finset.mem_insert_self j S)
    obtain ⟨hS, hIS⟩ := ih (fun k hk => ha k (Finset.mem_insert_of_mem hk))
    have hK := kernel_edge_integrable l r b u (a j) hj'.1 hj'.2.1 hj'.2.2.1 hj'.2.2.2
    have hC : EdgeIntegrable l r b u (fun z => c j / (z - a j)) := by
      simpa only [mul_one_div] using edges_const_mul (c j) hK
    have hIC : boundaryIntegral l r b u (fun z => c j / (z - a j)) =
        c j * (2 * (Real.pi : ℂ) * I) := by
      simpa only [mul_one_div] using
        (integral_const_mul l r b u (c j) (fun z => 1 / (z - a j))).trans
          (congrArg (fun z : ℂ => c j * z)
            (boundaryIntegral_kernel l r b u (a j) hj'.1 hj'.2.1 hj'.2.2.1 hj'.2.2.2))
    simp only [Finset.sum_insert hj]
    refine ⟨edges_add hC hS, ?_⟩
    rw [integral_add hC hS, hIC, hIS]
    ring

private theorem edges_of_continuousOn (l r b u : ℝ) (hlr : l ≤ r) (hbu : b ≤ u)
    (G : ℂ → ℂ) (hG : ContinuousOn G (Icc l r ×ℂ Icc b u)) :
    EdgeIntegrable l r b u G := by
  have hB : ContinuousOn (fun x : ℝ => G ((x : ℂ) + (b : ℂ) * I)) (Icc l r) :=
    hG.comp (by fun_prop) (by intro x hx; simpa using And.intro hx ⟨le_rfl, hbu⟩)
  have hU : ContinuousOn (fun x : ℝ => G ((x : ℂ) + (u : ℂ) * I)) (Icc l r) :=
    hG.comp (by fun_prop) (by intro x hx; simpa using And.intro hx ⟨hbu, le_rfl⟩)
  have hR : ContinuousOn (fun y : ℝ => G ((r : ℂ) + (y : ℂ) * I)) (Icc b u) :=
    hG.comp (by fun_prop) (by intro y hy; simpa using And.intro ⟨hlr, le_rfl⟩ hy)
  have hL : ContinuousOn (fun y : ℝ => G ((l : ℂ) + (y : ℂ) * I)) (Icc b u) :=
    hG.comp (by fun_prop) (by intro y hy; simpa using And.intro ⟨le_rfl, hlr⟩ hy)
  exact ⟨hB.intervalIntegrable_of_Icc hlr, hU.intervalIntegrable_of_Icc hlr,
    hR.intervalIntegrable_of_Icc hbu, hL.intervalIntegrable_of_Icc hbu⟩

/-- A finite principal-part identity on the actual boundary, with an already
proved zero remainder integral, implies the finite residue formula. The finite
index type need not be injectively mapped: multiplicities stay in the coefficients. -/
theorem boundaryIntegral_finite_expansion {ι : Type*} (S : Finset ι) (a c : ι → ℂ)
    (l r b u : ℝ) (hlr : l ≤ r) (hbu : b ≤ u) (F G : ℂ → ℂ)
    (hG : ContinuousOn G (Icc l r ×ℂ Icc b u))
    (hG0 : boundaryIntegral l r b u G = 0)
    (ha : ∀ j ∈ S, l < (a j).re ∧ (a j).re < r ∧ b < (a j).im ∧ (a j).im < u)
    (hEq : ∀ z : ℂ, z.re = l ∨ z.re = r ∨ z.im = b ∨ z.im = u →
      F z = G z + ∑ j ∈ S, c j / (z - a j)) :
    boundaryIntegral l r b u F = (2 * (Real.pi : ℂ) * I) * ∑ j ∈ S, c j := by
  obtain ⟨hP, hIP⟩ := principal_parts S a c l r b u ha
  have hGI := edges_of_continuousOn l r b u hlr hbu G hG
  have hB (x : ℝ) := hEq ((x : ℂ) + (b : ℂ) * I) (Or.inr (Or.inr (Or.inl (by simp))))
  have hU (x : ℝ) := hEq ((x : ℂ) + (u : ℂ) * I) (Or.inr (Or.inr (Or.inr (by simp))))
  have hR (y : ℝ) := hEq ((r : ℂ) + (y : ℂ) * I) (Or.inr (Or.inl (by simp)))
  have hL (y : ℝ) := hEq ((l : ℂ) + (y : ℂ) * I) (Or.inl (by simp))
  have he : boundaryIntegral l r b u F =
      boundaryIntegral l r b u (fun z => G z + ∑ j ∈ S, c j / (z - a j)) := by
    unfold boundaryIntegral
    simp_rw [hB, hU, hR, hL]
  rw [he, integral_add hGI hP, hG0, zero_add, hIP]

end
end GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral
