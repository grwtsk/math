import LogarithmicTail
import Mathlib.Tactic

/-!
Scratch #326: actual normalized source, full analytic-multiplicity occurrences,
strict spectral tails, and ordinary complex squares. The sharper actual positive
count is an explicit hypothesis until its separate dictionary/count adapter is
proved. grwtsk contributors's source/problem direction; OpenAI Codex derivation.
-/
set_option autoImplicit false

namespace ContinuousResearch.SourceLogarithmicTail

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSummability ZeroSideTargets
open ContinuousResearch.ScaleAwareZeroDecay ContinuousResearch.SourceZeroTail
open ContinuousResearch.LogarithmicTail

noncomputable section

def logarithmicConstant (C : ℝ) : ℝ := 9*C*(408576:ℝ)^2/Z0

theorem logarithmicConstant_pos {C : ℝ} (hc : PositiveCountBound C) :
    0 < logarithmicConstant C := by
  have hC := hc.1
  have hZ := Z0_pos
  unfold logarithmicConstant
  positivity

/-- The source pointwise estimate is transferred to the actual ordinate. -/
theorem normalized_sixth_majorant (A T : ℝ) (hA : 1 ≤ A) (hT : 2 ≤ T)
    (o : HeightTail T) :
    ‖normalizedTransform A (shiftedValue o.val)^2‖ ≤
      (decayConstant A^2/Z0)*sixthWeight o.val := by
  have hZ := Z0_pos
  have ho : T < |(shiftedValue o.val).im| := o.property
  have hi : 0 < |(shiftedValue o.val).im| := by linarith
  have hn : 1 ≤ ‖shiftedValue o.val‖ :=
    (show 1 ≤ |(shiftedValue o.val).im| by linarith).trans
      (Complex.abs_im_le_norm _)
  have hz : -(1/2:ℝ) ≤ (shiftedValue o.val).re ∧ (shiftedValue o.val).re ≤ 1/2 :=
    ⟨(shiftedValue_strip o.val).1.le, (shiftedValue_strip o.val).2.le⟩
  calc
    _ ≤ (decayConstant A^2/Z0)/‖shiftedValue o.val‖^6 :=
      normalized_square_norm_le A hA _ hz hn
    _ ≤ (decayConstant A^2/Z0)/|(shiftedValue o.val).im|^6 :=
      div_le_div_of_nonneg_left (by positivity)
        (by positivity) (pow_le_pow_left₀ (abs_nonneg _) (Complex.abs_im_le_norm _) 6)
    _ = _ := by unfold sixthWeight; ring

/-- Genuine norm-square tail with its sharper logarithmic error budget. -/
theorem actual_norm_square_tail_bound {C A T : ℝ} (hc : PositiveCountBound C)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val)^2‖) ≤
      logarithmicConstant C*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 := by
  have hZ := Z0_pos
  have hs := (normalized_square_norms_summable A hA).subtype
    {o : ZeroOccurrence | T < |(shiftedValue o).im|}
  have hm := (sixthWeight_tail_summable T hT).mul_left (decayConstant A^2/Z0)
  calc
    _ ≤ ∑' o : HeightTail T, (decayConstant A^2/Z0)*sixthWeight o.val :=
      Summable.tsum_le_tsum (normalized_sixth_majorant A T hA hT) hs hm
    _ = (decayConstant A^2/Z0)*(∑' o : HeightTail T, sixthWeight o.val) := tsum_mul_left
    _ ≤ (decayConstant A^2/Z0)*(9*C*Real.log T/T^5) :=
      mul_le_mul_of_nonneg_left (actual_sixth_tail_bound_coarse hc hT) (by positivity)
    _ = _ := by
      rw [decayConstant_sq_eq A (by linarith)]
      unfold logarithmicConstant
      ring

/-- Only the omitted ordinary-square readout is norm-majorized. -/
theorem actual_tail_error_bound {C A T : ℝ} (hc : PositiveCountBound C)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    tailError A T ≤ logarithmicConstant C*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 := by
  exact (norm_tsum_le_tsum_norm
    ((normalized_square_norms_summable A hA).subtype _)).trans
      (actual_norm_square_tail_bound hc hA hT)

/-- Actual imaginary-square tail, with its own genuine summability. -/
theorem actual_im_square_tail_bound {C A T : ℝ} (hc : PositiveCountBound C)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    Summable (fun o : HeightTail T => (normalizedTransform A (shiftedValue o.val)).im^2) ∧
    (∑' o : HeightTail T, (normalizedTransform A (shiftedValue o.val)).im^2) ≤
      logarithmicConstant C*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 := by
  have hs : Summable (fun o : HeightTail T => ‖normalizedTransform A (shiftedValue o.val)^2‖) :=
    (normalized_square_norms_summable A hA).subtype _
  have hb (o : HeightTail T) :
      (normalizedTransform A (shiftedValue o.val)).im^2 ≤
      ‖normalizedTransform A (shiftedValue o.val)^2‖ := by
    rw [norm_pow]
    have h := Complex.abs_im_le_norm (normalizedTransform A (shiftedValue o.val))
    simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) h 2
  have hi := Summable.of_nonneg_of_le (fun o => sq_nonneg _) hb hs
  exact ⟨hi, (Summable.tsum_le_tsum hb hi hs).trans
    (actual_norm_square_tail_bound hc hA hT)⟩

/-- One sufficient spectral height, independent of the arithmetic cutoff. -/
def fifthHeight (A : ℝ) : ℝ := Real.exp (A/5)

def baseRadius : ℝ := max 1 (5*Real.log 2)

theorem fifthHeight_admissible {A : ℝ} (hA : baseRadius ≤ A) :
    1 ≤ A ∧ 2 ≤ fifthHeight A := by
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  have h2 : 5*Real.log 2 ≤ A := (le_max_right _ _).trans hA
  refine ⟨h1, ?_⟩
  unfold fifthHeight
  rw [← Real.exp_log (by norm_num : (0:ℝ)<2)]
  exact Real.exp_le_exp.mpr (by linarith)

/-- The complete radius/height budget simplifies exactly along exp(A/5). -/
theorem fifthHeight_budget {C A : ℝ} (hA : 0 < A) :
    logarithmicConstant C*A^(-9:ℝ)*Real.exp A*Real.log (fifthHeight A)/(fifthHeight A)^5 =
      (logarithmicConstant C/5)*A^(-8:ℝ) := by
  have he : (fifthHeight A)^5 = Real.exp A := by
    unfold fifthHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have h9 : A^(-9:ℝ) = 1/A^9 := by rw [Real.rpow_neg hA.le, Real.rpow_ofNat]; simp only [one_div]
  have h8 : A^(-8:ℝ) = 1/A^8 := by rw [Real.rpow_neg hA.le, Real.rpow_ofNat]; simp only [one_div]
  rw [he, fifthHeight, Real.log_exp, h9, h8]
  field_simp

/-- Every real admissible radius has the smaller-height error budget. -/
theorem fifthHeight_error_bound {C A : ℝ} (hc : PositiveCountBound C)
    (hA : baseRadius ≤ A) :
    tailError A (fifthHeight A) ≤ (logarithmicConstant C/5)*A^(-8:ℝ) := by
  have ha := fifthHeight_admissible hA
  have hb := actual_tail_error_bound hc ha.1 ha.2
  rw [fifthHeight_budget (by linarith : 0<A)] at hb
  exact hb

/-- Uniform on the complete real tail of radii, with no sampled-scale guard. -/
theorem fifthHeight_uniform {C R A : ℝ} (hc : PositiveCountBound C)
    (hR : baseRadius ≤ R) (hRA : R ≤ A) :
    tailError A (fifthHeight A) ≤ (logarithmicConstant C/5)*R^(-8:ℝ) :=
  (fifthHeight_error_bound hc (hR.trans hRA)).trans
    (mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow_of_nonpos (by linarith [(fifthHeight_admissible hR).1]) hRA
        (by norm_num)) (by have hK := logarithmicConstant_pos hc; positivity))

/-- Convergence is over every real radius, with a fixed count constant. -/
theorem fifthHeight_tendsto_zero {C : ℝ} (hc : PositiveCountBound C) :
    Tendsto (fun A : ℝ => tailError A (fifthHeight A)) atTop (𝓝 0) := by
  apply squeeze_zero' (Eventually.of_forall (fun A => norm_nonneg (tailReadout A (fifthHeight A))))
    (eventually_ge_atTop baseRadius |>.mono (fun A hA => fifthHeight_error_bound hc hA))
  simpa only [mul_zero] using
    (tendsto_rpow_neg_atTop (by norm_num : (0:ℝ)<8)).const_mul (logarithmicConstant C/5)

/-- The actual supremum over all A≥R satisfies the same envelope. -/
theorem fifthHeight_sup_bound {C R : ℝ} (hc : PositiveCountBound C)
    (hR : baseRadius ≤ R) :
    sSup (Set.range (fun A : {A:ℝ // R≤A} => tailError A.val (fifthHeight A.val))) ≤
      (logarithmicConstant C/5)*R^(-8:ℝ) := by
  apply csSup_le
  · exact ⟨tailError R (fifthHeight R), ⟨⟨R, le_rfl⟩, rfl⟩⟩
  · intro x hx
    obtain ⟨A, rfl⟩ := hx
    exact fifthHeight_uniform hc hR A.property

private theorem coordinate_squares_summable {ι : Type*} (f : ι → ℂ)
    (hn : Summable (fun i => ‖f i^2‖)) :
    Summable (fun i => (f i).im^2) ∧ Summable (fun i => (f i).re^2) := by
  constructor
  · apply Summable.of_nonneg_of_le (fun i => sq_nonneg _) (fun i => ?_) hn
    rw [norm_pow]
    simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) (Complex.abs_im_le_norm (f i)) 2
  · apply Summable.of_nonneg_of_le (fun i => sq_nonneg _) (fun i => ?_) hn
    rw [norm_pow]
    simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) (Complex.abs_re_le_norm (f i)) 2

private theorem signed_square_tsum {ι : Type*} (f : ι → ℂ)
    (hn : Summable (fun i => ‖f i^2‖)) :
    (∑' i, ((f i).im^2-(f i).re^2)) = -(∑' i, f i^2).re := by
  have hs : Summable (fun i => f i^2) := Summable.of_norm hn
  have hr : (∑' i, f i^2).re = ∑' i, (f i^2).re := by
    simpa only [Complex.reCLM_apply] using Complex.reCLM.map_tsum hs
  calc
    _ = ∑' i, -(f i^2).re := tsum_congr (fun i => by simp only [pow_two, Complex.mul_re]; ring)
    _ = _ := by rw [tsum_neg, ← hr]

/-- The actual positive coordinate mass; this is a spectral, not prime-work, mass. -/
def realSquareMass (A : ℝ) : ℝ :=
  ∑' o : ZeroOccurrence, (normalizedTransform A (shiftedValue o)).re^2

/-- The actual negative coordinate mass of the ordinary-square readout. -/
def imaginarySquareMass (A : ℝ) : ℝ :=
  ∑' o : ZeroOccurrence, (normalizedTransform A (shiftedValue o)).im^2

def signedFull (A : ℝ) : ℝ := imaginarySquareMass A-realSquareMass A

/-- Literal finite retained signed head, including all endpoint occurrences. -/
def signedHead (A T : ℝ) : ℝ := ∑' o : HeightRetained T,
  ((normalizedTransform A (shiftedValue o.val)).im^2-
    (normalizedTransform A (shiftedValue o.val)).re^2)

theorem coordinate_masses_summable {A : ℝ} (hA : 1≤A) :
    Summable (fun o : ZeroOccurrence => (normalizedTransform A (shiftedValue o)).im^2) ∧
    Summable (fun o : ZeroOccurrence => (normalizedTransform A (shiftedValue o)).re^2) :=
  coordinate_squares_summable _ (normalized_square_norms_summable A hA)

theorem signedFull_eq_negative_re {A : ℝ} (hA : 1≤A) :
    signedFull A = -(∑' o : ZeroOccurrence, normalizedTransform A (shiftedValue o)^2).re := by
  have hc := coordinate_masses_summable hA
  unfold signedFull imaginarySquareMass realSquareMass
  rw [← hc.1.tsum_sub hc.2]
  exact signed_square_tsum _ (normalized_square_norms_summable A hA)

theorem signedHead_eq_negative_re {A T : ℝ} (hA : 1≤A) :
    signedHead A T = -(retainedReadout A T).re :=
  signed_square_tsum (fun o : HeightRetained T => normalizedTransform A (shiftedValue o.val))
    ((normalized_square_norms_summable A hA).subtype _)

/-- Signs are inherited from the ordinary complex-square partition. -/
theorem signed_partition {A T : ℝ} (hA : 1≤A) :
    signedFull A = signedHead A T-(tailReadout A T).re := by
  rw [signedFull_eq_negative_re hA, readout_partition A T hA, Complex.add_re,
    signedHead_eq_negative_re hA]
  ring

theorem signed_truncation_error {A T : ℝ} (hA : 1≤A) :
    |signedFull A-signedHead A T| ≤ tailError A T := by
  rw [signed_partition hA, sub_sub_cancel_left, abs_neg]
  exact Complex.abs_re_le_norm _

/-- Exact signed full/head discrepancy along the smaller resolving height. -/
theorem fifthHeight_signed_error {C A : ℝ} (hc : PositiveCountBound C)
    (hA : baseRadius≤A) :
    |signedFull A-signedHead A (fifthHeight A)| ≤ (logarithmicConstant C/5)*A^(-8:ℝ) :=
  (signed_truncation_error (fifthHeight_admissible hA).1).trans (fifthHeight_error_bound hc hA)

/-- An independent eventual head upper witness transfers with the uniform loss. -/
theorem head_upper_transfers {C R D : ℝ} (hc : PositiveCountBound C)
    (hR : baseRadius≤R)
    (hhead : ∀ A : ℝ, R≤A → signedHead A (fifthHeight A)≤D) :
    ∀ A : ℝ, R≤A → signedFull A≤D+(logarithmicConstant C/5)*R^(-8:ℝ) := by
  intro A hRA
  have he := (signed_truncation_error (fifthHeight_admissible (hR.trans hRA)).1).trans
    (fifthHeight_uniform hc hR hRA)
  have h := hhead A hRA
  linarith [le_abs_self (signedFull A-signedHead A (fifthHeight A))]

/-- The converse transfer has the same fixed loss and retains its witness premise. -/
theorem full_upper_transfers {C R D : ℝ} (hc : PositiveCountBound C)
    (hR : baseRadius≤R)
    (hfull : ∀ A : ℝ, R≤A → signedFull A≤D) :
    ∀ A : ℝ, R≤A → signedHead A (fifthHeight A)≤D+(logarithmicConstant C/5)*R^(-8:ℝ) := by
  intro A hRA
  have he := (signed_truncation_error (fifthHeight_admissible (hR.trans hRA)).1).trans
    (fifthHeight_uniform hc hR hRA)
  have h := hfull A hRA
  linarith [neg_le_abs (signedFull A-signedHead A (fifthHeight A))]

#print axioms realSquareMass
#print axioms imaginarySquareMass
#print axioms signedFull
#print axioms signedHead
#print axioms coordinate_masses_summable
#print axioms signedFull_eq_negative_re
#print axioms signedHead_eq_negative_re
#print axioms signed_partition
#print axioms signed_truncation_error
#print axioms fifthHeight_signed_error
#print axioms head_upper_transfers
#print axioms full_upper_transfers
#print axioms fifthHeight
#print axioms baseRadius
#print axioms fifthHeight_admissible
#print axioms fifthHeight_budget
#print axioms fifthHeight_error_bound
#print axioms fifthHeight_uniform
#print axioms fifthHeight_tendsto_zero
#print axioms fifthHeight_sup_bound
#print axioms logarithmicConstant
#print axioms logarithmicConstant_pos
#print axioms normalized_sixth_majorant
#print axioms actual_norm_square_tail_bound
#print axioms actual_tail_error_bound
#print axioms actual_im_square_tail_bound

end
end ContinuousResearch.SourceLogarithmicTail
