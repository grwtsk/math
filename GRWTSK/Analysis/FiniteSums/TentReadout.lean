/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source; NOT compiled.
-/
import GRWTSK.Analysis.FiniteSums.DyadicVariance

/-! # Exact finite triangular tests for a binary source split
The step-cell formula and its continuum interpretation are treated separately.
This file proves the finite readout identities with arbitrary signed atoms and
with both supplied background means retained, not set to zero.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.TentReadout
open GRWTSK.Analysis.FiniteSums.DyadicVariance

open scoped Classical in
def stepCellMean (a b r : ℝ) : ℝ :=
  if r≤a then 1 else if r≤b then (b-r)/(b-a) else 0

open scoped Classical in
def tent (a h r : ℝ) : ℝ :=
  if r≤a then 0 else if r≤a+h/2 then 2*(r-a)/h
  else if r≤a+h then 2*(a+h-r)/h else 0

theorem child_step_difference (a h r : ℝ) (hh : 0<h) :
    stepCellMean a (a+h/2) r-stepCellMean (a+h/2) (a+h) r = -tent a h r := by
  classical
  have hn : h≠0 := ne_of_gt hh
  have hd : h/2≠0 := by positivity
  have hw0 : a+h/2-a=h/2 := by ring
  have hw1 : a+h-(a+h/2)=h/2 := by ring
  by_cases h0 : r≤a
  · have h1 : r≤a+h/2 := by linarith
    simp [stepCellMean,tent,h0,h1]
  · by_cases h1 : r≤a+h/2
    · simp [stepCellMean,tent,h0,h1,hw0,hw1]
      field_simp [hn,hd]
      <;> ring
    · by_cases h2 : r≤a+h
      · simp [stepCellMean,tent,h0,h1,h2,hw0,hw1]
        field_simp [hn,hd]
        <;> ring
      · simp [stepCellMean,tent,h0,h1,h2]

theorem tent_left (a h : ℝ) : tent a h a=0 := by simp [tent]

theorem tent_right (a h : ℝ) (hh : 0<h) : tent a h (a+h)=0 := by
  have h0 : ¬a+h≤a := by linarith
  have h1 : ¬a+h≤a+h/2 := by linarith
  simp [tent,h0,h1]

theorem tent_middle (a h : ℝ) (hh : 0<h) : tent a h (a+h/2)=1 := by
  have h0 : ¬a+h/2≤a := by linarith
  simp [tent,h0]
  field_simp [ne_of_gt hh]
  <;> ring

theorem tent_nonneg (a h r : ℝ) (hh : 0<h) : 0≤tent a h r := by
  classical
  unfold tent
  split_ifs with h0 h1 h2
  · exact le_rfl
  · apply div_nonneg _ hh.le
    linarith
  · apply div_nonneg _ hh.le
    linarith
  · exact le_rfl

theorem tent_le_one (a h r : ℝ) (hh : 0<h) : tent a h r≤1 := by
  classical
  unfold tent
  split_ifs with h0 h1 h2
  · norm_num
  · apply (div_le_iff₀ hh).2
    linarith
  · apply (div_le_iff₀ hh).2
    linarith
  · norm_num

def signedReadout {ι : Type*} (s : Finset ι) (w r : ι → ℝ)
    (a h backgroundLeft backgroundRight : ℝ) : ℝ :=
  (∑ i∈s, w i*tent a h (r i))+backgroundLeft-backgroundRight

/-- Difference of the full child means equals the negative triangular reading. -/
theorem signed_child_difference {ι : Type*} (s : Finset ι) (w r : ι → ℝ)
    (a h backgroundLeft backgroundRight : ℝ) (hh : 0<h) :
    ((∑ i∈s, w i*stepCellMean a (a+h/2) (r i))-backgroundLeft)-
      ((∑ i∈s, w i*stepCellMean (a+h/2) (a+h) (r i))-backgroundRight)
      = -signedReadout s w r a h backgroundLeft backgroundRight := by
  have he : (∑ i∈s, w i*stepCellMean a (a+h/2) (r i))-
      (∑ i∈s, w i*stepCellMean (a+h/2) (a+h) (r i))=
      -(∑ i∈s, w i*tent a h (r i)) := by
    rw [← Finset.sum_sub_distrib]
    simp_rw [← mul_sub,child_step_difference a h _ hh,mul_neg,Finset.sum_neg_distrib]
  unfold signedReadout
  linarith

/-- One split, with the original center retained and no factor-two loss. -/
theorem tent_energy_split (a b center width z : ℝ) (hz : a-b = -z) :
    width/2*((a-center)^2+(b-center)^2)=
      width*(pairMean a b-center)^2+width/4*z^2 := by
  rw [pair_centered_split,hz]
  ring

theorem constant_prefix_cancels (a h r : ℝ) (hh : 0<h) (hr : r≤a) :
    stepCellMean a (a+h/2) r-stepCellMean (a+h/2) (a+h) r=0 := by
  rw [child_step_difference a h r hh]
  simp [tent,hr]

/-- Uniform cellwise errors are charged in the weighted squared reading. -/
theorem squared_readout_error (z e ε : ℝ) (he : |e|≤ε) :
    (z+e)^2≤2*z^2+2*ε^2 := by
  have hε : 0≤ε := (abs_nonneg e).trans he
  have hs : |e|^2≤ε^2 := (sq_le_sq₀ (abs_nonneg e) hε).2 he
  have heq : |e|^2=e^2 := sq_abs e
  rw [heq] at hs
  nlinarith [sq_nonneg (z-e)]

/-- Bounded tent factors price the diagonal before any signed cross term. -/
theorem diagonal_le_self_energy {ι : Type*} (s : Finset ι) (a t : ι → ℝ)
    (ht : ∀ i∈s, 0≤t i ∧ t i≤1) :
    (∑ i∈s, (a i*t i)^2)≤∑ i∈s, (a i)^2 := by
  apply Finset.sum_le_sum
  intro i hi
  have hsq : (t i)^2≤1 := by nlinarith [(ht i hi).1,(ht i hi).2]
  calc
    (a i*t i)^2=(a i)^2*(t i)^2 := by ring
    _ ≤ (a i)^2*1 := mul_le_mul_of_nonneg_left hsq (sq_nonneg _)
    _ = (a i)^2 := mul_one _

/-- The off-diagonal residual is kept signed, not replaced by its absolute value. -/
theorem signed_square_split (atomic background diagonal : ℝ) :
    (atomic-background)^2=diagonal+
      (atomic^2-diagonal-2*background*atomic+background^2) := by ring

/-- Exact diagonal of the projected centered step, with the cell fraction retained. -/
theorem projected_step_diagonal_identity (M k r θ : ℝ) (hM : M≠0)
    (hr : M*r=k+θ) :
    (k/M)*(1-r)^2+(1/M)*(r-θ)^2+((M-k-1)/M)*r^2 =
      r*(1-r)-θ*(1-θ)/M := by
  have hk : k=M*r-θ := by linarith
  rw [hk]
  field_simp [hM]
  <;> ring

/-- The full projected diagonal is bounded by one quarter, not by one per scale. -/
theorem projected_step_diagonal_le_quarter (M r θ : ℝ) (hM : 0<M)
    (hθ : 0≤θ ∧ θ≤1) :
    r*(1-r)-θ*(1-θ)/M≤1/4 := by
  have hnonneg : 0≤θ*(1-θ)/M :=
    div_nonneg (mul_nonneg hθ.1 (sub_nonneg.mpr hθ.2)) hM.le
  nlinarith [sq_nonneg (r-1/2)]

/-- Complete one-sided arithmetic return after the three separately priced errors. -/
theorem complete_pair_residual_budget (E P C D R V m q : ℝ)
    (hE : E≤2*P+4*m^2) (hP : P=C+V) (hC : C=D+R)
    (hD : D≤q/4) (hV : V≤q/4) (hm : m^2≤2*q) :
    E≤2*R+9*q := by
  linarith

end GRWTSK.Analysis.FiniteSums.TentReadout
