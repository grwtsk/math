import SourceActualAdaptiveSharpHeight

/-! One actual witness for local windows, sixth tails, sharp source tails and
adaptive heights. The independent count witnesses are explicitly enlarged by max.
Direction and conceptual origin: grwtsk contributors.
Source witness composition and formalization: OpenAI Codex graph analyst.
Existing local-count, source endpoint and adaptive-height results are reused. -/
set_option autoImplicit false
noncomputable section
namespace RH16JointActualCountTail
open MeasureTheory Set Zeta23
open FormalResearch.RiemannHypothesis
open SourceActualZeroTailCount SourceActualZeroTailBudget
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open RH16ActualSharpZeroTail RH16ActualAdaptiveSharpHeight

private theorem localCount_mono {L K : ℝ} (hLK : L ≤ K)
    (hlocal : Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) L) :
    Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) K := by
  refine ⟨hlocal.one_le.trans hLK, fun t s hs => ?_⟩
  exact (hlocal.window t s hs).trans
    (mul_le_mul_of_nonneg_right hLK (Real.log_nonneg (by linarith [abs_nonneg t])))

private theorem sharp_tail_of_six (A0 : ℝ)
    (hcount : ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5) :
    ∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5) := by
  intro A R hA hR
  obtain ⟨hsm, hb⟩ := hcount R hR
  let coeff : ℝ := 4500000 * Real.exp A / A ^ 9
  have hc : 0 ≤ coeff := by dsimp [coeff]; positivity
  have hpoint (ρ : (zetaZeros zetaSeam).carrier) :
      ‖if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0‖ ≤
      coeff * (if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) := by
    by_cases hρ : R ≤ |(ρ : ℂ).im|
    · simp only [hρ, if_true, norm_mul, Complex.norm_natCast]
      have hw := actualInitialPrimeMellin_sharp_strip_norm_le A ρ hA
        ((zetaZeros zetaSeam).strip _ ρ.2) (show 4 ≤ |(ρ : ℂ).im| by linarith)
      have hn : ‖actualInitialPrimeMellin A ρ‖ ≤ coeff / |(ρ : ℂ).im| ^ 6 := by
        simpa only [coeff, div_div] using hw
      have hh := mul_le_mul_of_nonneg_left hn
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) by positivity)
      exact hh.trans_eq (by ring)
    · simp only [hρ, if_false, norm_zero, mul_zero, le_refl]
  have ht := tsum_of_norm_bounded (hsm.mul_left coeff).hasSum hpoint
  unfold actualZeroHeightTail
  calc
    _ ≤ coeff * actualZeroSixTail R := by
      simpa only [tsum_mul_left, actualZeroSixTail] using ht
    _ ≤ coeff * (2 * A0 * (Real.log R + 2) / R ^ 5) :=
      mul_le_mul_of_nonneg_left hb hc
    _ = _ := by dsimp [coeff]; ring

private theorem adaptive_tail_of_sharp (A0 : ℝ) (hA0 : 1 ≤ A0)
    (htail : ∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5)) :
    ∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q := by
  intro η Q A hη hQ hQA
  have hA : 91 ≤ A := hQ.trans hQA
  have hApos : 0 < A := by linarith
  have hQpos : 0 < Q := by linarith
  have hηpos : 0 < η := by linarith
  have hR := actualAdaptiveSharpHeight_ge_four hη hA
  have ht := htail A (actualAdaptiveSharpHeight η A) hA hR
  have hp := actualAdaptiveSharpHeight_fifth_power (η := η) hApos
  have hl := actualAdaptiveSharpHeight_log hηpos hApos
  have heq :
      9000000 * A0 * Real.exp A *
          (Real.log (actualAdaptiveSharpHeight η A) + 2) /
          (A ^ 9 * actualAdaptiveSharpHeight η A ^ 5) =
      9000000 * A0 / η ^ 5 *
        (1 / 5 + (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A) := by
    rw [hp, hl]
    field_simp
    ring
  rw [heq] at ht
  apply ht.trans
  unfold actualAdaptiveSharpTailCost
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  have hlogA : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hlogη : 0 ≤ Real.log η := Real.log_nonneg hη
  have hr : (Real.log η + 2) / A ≤ (Real.log η + 2) / Q :=
    div_le_div_of_nonneg_left (by linarith) hQpos hQA
  have hm : (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A ≤
      (Real.log η + 2) / A :=
    div_le_div_of_nonneg_right (by nlinarith) hApos.le
  linarith

/-- A maximum preserves both actual interfaces; it is not an identity of their witnesses. -/
theorem actual_joint_max {A_six A_local : ℝ} (hSix : 1 ≤ A_six)
    (hlocal : Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A_local)
    (hcount : ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A_six * (Real.log R + 2) / R ^ 5) :
    1 ≤ max A_six A_local ∧
    Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) (max A_six A_local) ∧
    (∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * max A_six A_local * (Real.log R + 2) / R ^ 5) ∧
    (∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * max A_six A_local * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5)) ∧
    (∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost (max A_six A_local) η Q) := by
  have hA0 : 1 ≤ max A_six A_local := hSix.trans (le_max_left _ _)
  have hlocalMax := localCount_mono (le_max_right A_six A_local) hlocal
  have hcountMax : ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * max A_six A_local * (Real.log R + 2) / R ^ 5 := by
    intro R hR
    obtain ⟨hsm, hb⟩ := hcount R hR
    have hlog : 0 ≤ Real.log R := Real.log_nonneg (by linarith)
    refine ⟨hsm, hb.trans ?_⟩
    gcongr
    exact le_max_left _ _
  have htailMax := sharp_tail_of_six (max A_six A_local) hcountMax
  exact ⟨hA0, hlocalMax, hcountMax, htailMax,
    adaptive_tail_of_sharp (max A_six A_local) hA0 htailMax⟩

/-- Construct one actual count witness with every exposed comparison contract. -/
theorem actual_joint_local_six_sharp_adaptive_witness :
    ∃ A0 : ℝ, 1 ≤ A0 ∧
    Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A0 ∧
    (∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5) ∧
    (∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5)) ∧
    (∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q) := by
  obtain ⟨A_six, hSix, hcount⟩ := actualZeroSixTail_count_bound
  obtain ⟨A_local, hLocal, hloc0⟩ := RvM.zeta_local_zero_count
  have hlocal := Tail.LocalCount.ofWindowCount (zetaZeros zetaSeam) hLocal
    (fun t => by simpa only [zetaZeros_N] using hloc0 t)
  exact ⟨max A_six A_local, actual_joint_max hSix hlocal hcount⟩

end RH16JointActualCountTail
