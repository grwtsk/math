# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt02Source.Varianta0e07a5da2b54ae5f2dc5dce24b9003a40768c5f9669d5d670895fe7ed02528e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `160385ef5a18a7e891dc7f1bd817dcd0d4b154a1` · SHA-256 `a0e07a5da2b54ae5f2dc5dce24b9003a40768c5f9669d5d670895fe7ed02528e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCenteredHalfZetaReduction

/-!
The original exponential natural upper cutoff makes the actual finite beta
harmonic error vanish. Its critical Moebius main and the complete terminal
prefix remain in the genuine lower adjoint column trace.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredHalfUpperDecay
open Filter
open scoped Topology
open SourceActualCenteredHalfZetaReduction SourceActualAdjointColumnTrace
open SourceActualLogColumnTransport SourceActualAdjointAbelPrimitives
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The finite upper defect uses the original centered beta inventory and critical main. -/
def actualCenteredHalfUpperDefect (A : ℝ) : ℝ :=
  actualCenteredColumnHalfInventory A - actualCenteredHalfZetaMain (vaughanCutoff A)

/-- The retained critical arithmetic main of the lower adjoint column trace. -/
def actualCriticalColumnTraceMain (A : ℝ) : ℝ :=
  -2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
    actualCenteredHalfZetaMain (vaughanCutoff A)

private theorem exp_lower_cutoff {A : ℝ} (hA : 4 ≤ A) :
    6 * ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have h2 : 16 ≤ A ^ 2 := by nlinarith
  have h4 : 16 * A ^ 2 ≤ A ^ 4 := by
    nlinarith [mul_nonneg (sq_nonneg A) (sub_nonneg.mpr h2)]
  have he := Real.pow_div_factorial_le_exp (2 * A) (by linarith : 0 ≤ 2 * A) 4
  norm_num at he
  simp only [Nat.cast_add, Nat.cast_one]
  nlinarith

/-- Both floor and natural quotient displacements remain in the true upper gap. -/
theorem actual_half_upper_quotient_exp_lower {A : ℝ} (hA : 4 ≤ A) :
    Real.exp (2 * A) ≤ 4 * ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  let L := K - 1
  have ha0 : 0 < a := by dsimp [a]; omega
  have ha1 : (1 : ℝ) ≤ (a : ℝ) := by exact_mod_cast (show 1 ≤ a by omega)
  have hK : a ≤ K := actual_column_window_nonempty (by linarith)
  have hK0 : 1 ≤ K := by omega
  have hKL : K = L + 1 := by omega
  have he := Nat.mod_add_div N a
  have hm := Nat.mod_lt N ha0
  have heR : ((N % a : ℕ) : ℝ) + (a : ℝ) * (K : ℝ) = (N : ℝ) := by
    exact_mod_cast he
  have hmR : ((N % a : ℕ) : ℝ) < (a : ℝ) := by exact_mod_cast hm
  have hNR : (N : ℝ) < (a : ℝ) * ((L : ℝ) + 2) := by
    have hKLR : (K : ℝ) = (L : ℝ) + 1 := by exact_mod_cast hKL
    nlinarith
  have hfloor : Real.exp (2 * A) < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  have hg : 6 * (a : ℝ) ≤ Real.exp (2 * A) := exp_lower_cutoff hA
  change Real.exp (2 * A) ≤ 4 * (a : ℝ) * (L : ℝ)
  nlinarith

private theorem sqrt_upper_gap {A : ℝ} (hA : 4 ≤ A) :
    Real.exp A ≤ 2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  have he := actual_half_upper_quotient_exp_lower hA
  have hx : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [show 2 * A = A + A by ring, Real.exp_add, pow_two]
  have ha := Real.sq_sqrt (show (0 : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) from
    Nat.cast_nonneg _)
  have hL := Real.sq_sqrt (show (0 : ℝ) ≤
    ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) from Nat.cast_nonneg _)
  have hp : 0 ≤ 2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by positivity
  have hsq : (2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)) ^ 2 =
        4 * ((vaughanCutoff A + 1 : ℕ) : ℝ) *
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
    rw [mul_pow, mul_pow, ha, hL]
    ring
  nlinarith [Real.exp_pos A]

private theorem sqrt_cutoff_le_scale {A : ℝ} (hA : 1 ≤ A) :
    Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A := by
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs := Real.sq_sqrt (show (0 : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) from
    Nat.cast_nonneg _)
  simp only [Nat.cast_add, Nat.cast_one] at hs
  simp only [Nat.cast_add, Nat.cast_one]
  nlinarith [Real.sqrt_nonneg ((vaughanCutoff A + 1 : ℕ) : ℝ)]

private theorem inv_sqrt_upper_le {A : ℝ} (hA : 4 ≤ A) :
    1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) ≤
      2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) * Real.exp (-A) := by
  have hK := actual_column_window_nonempty (by linarith : 1 ≤ A)
  have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hL : 0 < ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 by omega)
  rw [Real.exp_neg, div_le_iff₀ (Real.sqrt_pos.2 hL)]
  have he := sqrt_upper_gap hA
  have hx : (1 : ℝ) ≤ (2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)) /
        Real.exp A := (le_div_iff₀ (Real.exp_pos A)).2 (by simpa using he)
  convert hx using 1 <;> ring

/-- The complete actual finite upper harmonic error has an explicit real-scale decay budget. -/
theorem actualCenteredHalfUpperDefect_abs_le {A : ℝ} (hA : 4 ≤ A) :
    |actualCenteredHalfUpperDefect A| ≤ 12 * A ^ 3 * Real.exp (-A) := by
  have hA1 : 1 ≤ A := by linarith
  have he := actualCenteredColumnHalfInventory_sub_zetaMain_abs_le hA1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hu : 2 * (vaughanCutoff A : ℝ) + 1 ≤ 3 * A ^ 2 := by nlinarith
  change |actualCenteredHalfUpperDefect A| ≤ _ at he
  calc
    _ ≤ (2 * (vaughanCutoff A : ℝ) + 1) *
        (1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)) :=
      by simpa only [div_eq_mul_inv, one_div, one_mul] using he
    _ ≤ (3 * A ^ 2) *
        (2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) * Real.exp (-A)) :=
      mul_le_mul hu (inv_sqrt_upper_le hA) (by positivity) (by positivity)
    _ ≤ (3 * A ^ 2) * (2 * (2 * A) * Real.exp (-A)) := by
      gcongr
      exact sqrt_cutoff_le_scale hA1
    _ = _ := by ring

/-- The finite upper error tends to zero through all real floor and quotient jumps. -/
theorem actualCenteredHalfUpperDefect_tendsto_zero :
    Tendsto actualCenteredHalfUpperDefect atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    (by simpa only [mul_zero] using
      (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 3).const_mul 12)
  filter_upwards [eventually_ge_atTop (4 : ℝ)] with A hA
  simpa only [mul_assoc] using actualCenteredHalfUpperDefect_abs_le hA

/-- Exact lower Q trace leaves the critical main, actual upper error and terminal together. -/
theorem actualAdjointColumnPrimitive_sub_criticalMain_eq {A : ℝ} (hA : 1 ≤ A) :
    actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) -
      actualCriticalColumnTraceMain A =
        -2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
          (actualCenteredHalfUpperDefect A - actualCenteredColumnTerminalTrace A) := by
  rw [actualAdjointColumnPrimitive_at_lower_closed_inventory hA]
  unfold actualCriticalColumnTraceMain actualCenteredHalfUpperDefect
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualCenteredHalfUpperDecay
```
