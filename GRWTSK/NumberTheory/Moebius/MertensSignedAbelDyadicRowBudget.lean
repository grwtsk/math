/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicReadout

/-!
# A row-only sufficient budget for omitted dyadic features

One-bounded input pays at most Y for its entire pointwise square energy.
Consequently Y times the omitted COEFFICIENT energy bounds the squared
omitted readout uniformly in every such input. This is a deterministic
approximation estimate, not arithmetic cancellation. The selected model,
including its actual root mean and signed head, still needs its own estimate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicRowBudget
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicReadout

/-- A source-window bound is enough; no condition outside 1,...,Y is imposed. -/
theorem dyadicRemainder_sq_le_length_rowEnergy
    (select : ℕ → ℕ → Prop) (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n : ℕ, 1 ≤ n → n ≤ 2 ^ (j + 1) → |f n| ≤ 1) :
    dyadicRemainder select width j f ^ 2 ≤ (((2 ^ (j + 1) : ℕ) : ℝ)) *
      detailPairing (fun r o => ¬ select r o) (j + 1) 0 (dyadicRow width j) (dyadicRow width j) := by
  have htotal : blockSum (j + 1) 0 (fun n => positiveInput f n ^ 2) ≤
      (((2 ^ (j + 1) : ℕ) : ℝ)) := by
    rw [blockSum_offset_zero]
    unfold finitePrefixSum
    calc
      _ ≤ ∑ _n ∈ Finset.range (2 ^ (j + 1)), (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro n hn
        have h := hf (n + 1) (by omega) (by have := Finset.mem_range.mp hn; omega)
        have hs := (sq_le_sq₀ (abs_nonneg (f (n + 1))) zero_le_one).mpr h
        simpa only [positiveInput, sq_abs, one_pow] using hs
      _ = _ := by simp
  have htail := (omitted_energy_le_total select (j + 1) 0 (positiveInput f)).trans htotal
  have hrow := detailPairing_self_nonneg (fun r o => ¬ select r o) (j + 1) 0 (dyadicRow width j)
  apply (dyadicRemainder_sq_le select width j f).trans
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left htail hrow

/-- This supplier is solely a bound on the ACTUAL combined row's omitted energy.
It pays only modeling error, not a bound on the resulting signed model. -/
theorem full_packet_row_energy_comparison (select : ℕ → ℕ → Prop) (j : ℕ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (hrow : (((2 ^ (j + 1) : ℕ) : ℝ)) *
      detailPairing (fun r o => ¬ select r o) (j + 1) 0
        (dyadicRow sqrtWidth j) (dyadicRow sqrtWidth j) ≤ ε ^ 2) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤ 2 + ε / 6 := by
  apply full_packet_dyadic_comparison
  have he := (dyadicRemainder_sq_le_length_rowEnergy select sqrtWidth j moebiusReal
    (fun n _ _ => moebiusReal_abs_le_one n)).trans hrow
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp (by simpa only [sq_abs] using he)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicRowBudget
