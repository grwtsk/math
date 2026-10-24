# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSupportEdgeBetaInteraction.Variant287bbbcb887e7d0780644bbcc47620985d413cf4a246d2313541f726741df033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e657917e165e46d6bae49dff441138f1ac8a1a19` · SHA-256 `287bbbcb887e7d0780644bbcc47620985d413cf4a246d2313541f726741df033`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualSupportEdgeMangoldtRow
import SourceActualCenteredHalfUpperDecay

/-!
Support-edge decay absorbs the true finite centered-beta cutoff error in the
actual closed Mangoldt half row. Its original terminal prefix stays present.
This supplies no bound for the retained critical arithmetic main interaction.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualSupportEdgeBetaInteraction
open MeasureTheory Set
open ActualSupportEdgeMangoldtRow ActualLowerTraceArithmeticExpansion
open SourceActualAdjointColumnTrace SourceActualCenteredHalfZetaReduction
open SourceActualCenteredHalfUpperDecay SourceActualLogColumnTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The finite beta defect retains the true terminal K-1 prefix over sqrt(K). -/
def actualTerminalCenteredHalfDefect (A : ℝ) : ℝ :=
  actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A -
    actualCenteredHalfZetaMain (vaughanCutoff A)

/-- Literal finite-cutoff error in the actual Mangoldt sector of the lower trace. -/
def actualFiniteBetaMangoldtInteraction (A : ℝ) : ℝ :=
  -2 * actualTerminalCenteredHalfDefect A * actualLowerColumnHalfMangoldtRow A

/-- Combining the closed inventory error and terminal factor costs only 3U. -/
theorem actualTerminalCenteredHalfDefect_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualTerminalCenteredHalfDefect A| ≤
      3 * (vaughanCutoff A : ℝ) /
        Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hK : U + 1 ≤ K := actual_column_window_nonempty hA
  have hL : 0 < ((K - 1 : ℕ) : ℝ) := by exact_mod_cast (show 0 < K - 1 by omega)
  have hs : Real.sqrt ((K - 1 : ℕ) : ℝ) ≤ Real.sqrt (K : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.sub_le K 1)
  have hterm := actualCenteredColumnTerminalTrace_abs_le hA
  have hterm' : |actualCenteredColumnTerminalTrace A| ≤
      ((U : ℝ) - 1) / Real.sqrt ((K - 1 : ℕ) : ℝ) := by
    have hUn : (1 : ℝ) ≤ U := by exact_mod_cast hU
    exact hterm.trans (div_le_div_of_nonneg_left
      (by linarith : 0 ≤ (U : ℝ) - 1) (Real.sqrt_pos.2 hL) hs)
  have hraw := actualCenteredColumnHalfInventory_sub_zetaMain_abs_le hA
  have he : actualTerminalCenteredHalfDefect A =
      (actualCenteredColumnHalfInventory A - actualCenteredHalfZetaMain U) -
        actualCenteredColumnTerminalTrace A := by
    unfold actualTerminalCenteredHalfDefect
    dsimp only [U]
    ring
  rw [he]
  have ht := abs_sub (actualCenteredColumnHalfInventory A - actualCenteredHalfZetaMain U)
    (actualCenteredColumnTerminalTrace A)
  have hh := add_le_add hraw hterm'
  dsimp only [U, K] at hh ht ⊢
  rw [← add_div] at hh
  exact (ht.trans hh).trans_eq (by ring)

/-- The actual exponential support radius and true natural quotient have this ratio bound. -/
theorem actual_support_half_le_two_sqrt_terminal {A : ℝ} (hA : 4 ≤ A) :
    Real.exp ((2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / 2) ≤
      2 * Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  let a := ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let L := ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)
  let E := Real.exp ((2 * A - Real.log a) / 2)
  have ha : 0 < a := by dsimp only [a]; positivity
  have he := actual_half_upper_quotient_exp_lower hA
  have hsq : E ^ 2 * a = Real.exp (2 * A) := by
    dsimp only [E]
    rw [pow_two, ← Real.exp_add,
      show (2 * A - Real.log a) / 2 + (2 * A - Real.log a) / 2 =
        2 * A - Real.log a by ring, Real.exp_sub, Real.exp_log ha]
    field_simp
  have hb : E ^ 2 ≤ 4 * L := by
    have hh : E ^ 2 * a ≤ (4 * L) * a := by
      dsimp only [a, L] at hsq ⊢
      nlinarith
    exact le_of_mul_le_mul_right hh ha
  have hL := Real.sq_sqrt (show 0 ≤ L from Nat.cast_nonneg _)
  have hEn : 0 < E := Real.exp_pos _
  change E ≤ 2 * Real.sqrt L
  nlinarith [Real.sqrt_nonneg L]

/-- The genuine actual finite beta defect times the actual closed row has quadratic decay. -/
theorem actualFiniteBetaMangoldtInteraction_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualFiniteBetaMangoldtInteraction A| ≤ 25728 * (Real.log 4 + 4) / A ^ 2 := by
  let U := (vaughanCutoff A : ℝ)
  let L := ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)
  have hK := actual_column_window_nonempty (by linarith : 1 ≤ A)
  have hU0 := vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hL : 0 < L := by
    dsimp only [L]
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 by omega)
  have hLs : 0 < Real.sqrt L := Real.sqrt_pos.2 hL
  have hu : U ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have he := actual_support_half_le_two_sqrt_terminal (by linarith : 4 ≤ A)
  have hr := actualLowerColumnHalfMangoldtRow_abs_le hA
  have hd := actualTerminalCenteredHalfDefect_abs_le (by linarith : 1 ≤ A)
  have hr' : |actualLowerColumnHalfMangoldtRow A| ≤
      4288 * (Real.log 4 + 4) * Real.sqrt L / A ^ 4 := by
    apply hr.trans
    calc
      _ ≤ 2144 * (Real.log 4 + 4) * (2 * Real.sqrt L) / A ^ 4 := by
        apply div_le_div_of_nonneg_right _ (by positivity)
        exact mul_le_mul_of_nonneg_left he (by positivity)
      _ = _ := by ring
  unfold actualFiniteBetaMangoldtInteraction
  rw [abs_mul, abs_mul]
  norm_num only [abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * (3 * U / Real.sqrt L) *
        (4288 * (Real.log 4 + 4) * Real.sqrt L / A ^ 4) := by
      apply mul_le_mul
      · exact mul_le_mul_of_nonneg_left hd (by norm_num)
      · exact hr'
      · exact abs_nonneg _
      · positivity
    _ = 25728 * (Real.log 4 + 4) * U / A ^ 4 := by field_simp; ring
    _ ≤ 25728 * (Real.log 4 + 4) * A ^ 2 / A ^ 4 := by gcongr
    _ = _ := by field_simp

end
end FormalResearch.RiemannHypothesis.ActualSupportEdgeBetaInteraction
```
