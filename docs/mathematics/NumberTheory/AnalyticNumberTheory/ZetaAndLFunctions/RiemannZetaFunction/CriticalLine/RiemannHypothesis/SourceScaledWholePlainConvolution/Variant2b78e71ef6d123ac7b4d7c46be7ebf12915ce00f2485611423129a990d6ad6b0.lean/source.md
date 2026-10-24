# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceScaledWholePlainConvolution.Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e49994dd93f40f78b209fa9b7df309939833d7d` · SHA-256 `9e446dce36a11282c40bdbd9e4eb54a7b80ffc3fff359ee22f33fd5fcd983f03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompleteMangoldtPlainRowsAt.Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CompleteMangoldtPlainRowsAt.Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle28/principal-scaled-whole-row-v1/SourceScaledWholePlainConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import SourceShortSamplingPointwise
import SourceCutoffFlux

/-!
# Whole coefficient-one convolution at every positive natural scale

UNCOMPILED source preparation. The whole Mangoldt/plain row is first
recombined by the actual finite convolution identity. Its logarithmic main
term is the existing independent sampling main term, never a row-defined
counterterm. Strict long rows, strict long columns and the deleted diagonal
are recorded separately. None of their signed remainders is assumed bounded.

AI attribution: developed with OpenAI Codex. Actual expanded statement/axiom
audits, independent review and unchanged complete verification remain open.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompleteMangoldtPlainRowsAt.Variant962f5d0ecdc90b2bf5b4b80e11b03612a96e14f3538ad4c4421dcf3f2ebb8475

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceScaledWholePlainConvolution

open ArithmeticFunction SourceShortSamplingPointwise SourceSamplingPointwise
open SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimatePlainKernel
open EstimateSourceMobiusKernel EstimatePrimeSmoothDefect
open EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- Both positive inventories are completed before the Mangoldt cancellation. -/
def completeMangoldtPlainRowsAt (A : ℝ) (d : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A),
    vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ)

/-- The first closed short inventory, with the second axis still complete. -/
def shortMangoldtPlainRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 U,
    vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ)

/-- The strict first-axis complement, with the second axis still complete. -/
def longMangoldtPlainRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
    vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ)

/-- The second closed short inventory surviving inside the first strict axis. -/
def shortColumnPlainRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
    vonMangoldt m * ∑ n ∈ Finset.Icc 1 U,
      sourcePlainWeight A ((d * m * n : ℕ) : ℝ)

/-- Both strict long axes, before equality-of-indices deletion or centering. -/
def strictLongPlainRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
    vonMangoldt m * ∑ n ∈ Finset.Ioc U (sourceKernelCutoff A),
      sourcePlainWeight A ((d * m * n : ℕ) : ℝ)

/-- The inherited support survives multiplication by a positive natural scale. -/
theorem sourcePlainWeight_scaled_zero_of_cutoff_lt (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (n : ℕ) (hn : sourceKernelCutoff A < n) :
    sourcePlainWeight A ((d * n : ℕ) : ℝ) = 0 := by
  exact sourcePlainWeight_zero_of_cutoff_lt A hA (d * n)
    (hn.trans_le (Nat.le_mul_of_pos_left n hd))

/-- No positive column survives when its first source argument exceeds the cutoff. -/
theorem sourcePlainKernel_nat_zero_of_cutoff_lt (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : sourceKernelCutoff A < k) : sourcePlainKernel A k = 0 := by
  unfold sourcePlainKernel
  apply Finset.sum_eq_zero
  intro n hn
  have hp : sourceKernelCutoff A < k * n :=
    hk.trans_le (Nat.le_mul_of_pos_right k (Finset.mem_Icc.mp hn).1)
  simpa only [Nat.cast_mul] using sourcePlainWeight_zero_of_cutoff_lt A hA (k * n) hp

/-- Exact whole-row cancellation at every positive scale, before taking absolute values. -/
theorem completeRowsAt_eq_sourceMobiusKernel (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    completeMangoldtPlainRowsAt A d = sourceMobiusKernel A d := by
  have hf := finite_convolution_sum (sourceKernelCutoff A) vonMangoldt
    (zeta : ArithmeticFunction ℝ) (fun n ↦ sourcePlainWeight A ((d * n : ℕ) : ℝ))
    (sourcePlainWeight_scaled_zero_of_cutoff_lt A hA d hd)
  rw [vonMangoldt_mul_zeta] at hf
  simp only [ArithmeticFunction.log_apply] at hf
  have hz (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff A)) :
      (zeta : ArithmeticFunction ℝ) n = 1 := by
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hn).1; omega),
      Nat.cast_one]
  have hr :
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A),
        ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
          vonMangoldt m * (zeta : ArithmeticFunction ℝ) n *
            sourcePlainWeight A ((d * (m * n) : ℕ) : ℝ)) =
        completeMangoldtPlainRowsAt A d := by
    unfold completeMangoldtPlainRowsAt sourcePlainKernel
    apply Finset.sum_congr rfl
    intro m _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [hz n hn]
    simp only [mul_one, Nat.cast_mul, mul_assoc]
  rw [hr] at hf
  exact hf.symm.trans (sourceMobiusKernel_eq_plainWeight A d hd).symm

/-- The existing independent logarithmic main term controls the recombined row error. -/
theorem completeRowsAt_sub_mainTerm_abs_le (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    |completeMangoldtPlainRowsAt A d - sourceLogSamplingMainTerm A d| ≤
      96 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt (d : ℝ)) := by
  rw [completeRowsAt_eq_sourceMobiusKernel A hA d hd]
  exact sourceMobiusKernel_sub_mainTerm_abs_le hA (by exact_mod_cast hd)

/-- The whole first axis can be cut at the exact natural quotient, including equality. -/
theorem completeRowsAt_eq_quotient_sum (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    completeMangoldtPlainRowsAt A d =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A / d),
        vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ) := by
  classical
  unfold completeMangoldtPlainRowsAt
  symm
  apply Finset.sum_subset
    (by intro m hm; exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hm).1,
        (Finset.mem_Icc.mp hm).2.trans (Nat.div_le_self _ _)⟩)
  intro m hm hnot
  have hp : sourceKernelCutoff A < d * m := by
    apply lt_of_not_ge
    intro h
    apply hnot
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1,
      (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)⟩
  rw [sourcePlainKernel_nat_zero_of_cutoff_lt A hA (d * m) hp, mul_zero]

private theorem sum_closed_split (N U : ℕ) (hU : U ≤ N) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∑ n ∈ Finset.Icc 1 U, f n) + ∑ n ∈ Finset.Ioc U N, f n := by
  classical
  have hs : Finset.Icc 1 N = Finset.Icc 1 U ∪ Finset.Ioc U N := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 U) (Finset.Ioc U N) := by
    apply Finset.disjoint_left.mpr
    intro n hn hm
    have := (Finset.mem_Icc.mp hn).2
    have := (Finset.mem_Ioc.mp hm).1
    omega
  rw [hs, Finset.sum_union hd]

/-- Cutting the first axis retains its closed short row exactly. -/
theorem completeRowsAt_eq_short_add_long (A : ℝ) (d U : ℕ)
    (hU : U ≤ sourceKernelCutoff A) :
    completeMangoldtPlainRowsAt A d =
      shortMangoldtPlainRowsAt A d U + longMangoldtPlainRowsAt A d U := by
  exact sum_closed_split (sourceKernelCutoff A) U hU
    (fun m ↦ vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ))

/-- The strict first-axis row has a signed short-row subtraction, without an estimate. -/
theorem longRowsAt_eq_logKernel_sub_short (A : ℝ) (hA : 1 ≤ A)
    (d U : ℕ) (hd : 1 ≤ d) (hU : U ≤ sourceKernelCutoff A) :
    longMangoldtPlainRowsAt A d U =
      sourceMobiusKernel A d - shortMangoldtPlainRowsAt A d U := by
  have hc := completeRowsAt_eq_sourceMobiusKernel A hA d hd
  have hs := completeRowsAt_eq_short_add_long A d U hU
  linarith

/-- Cutting the second axis retains the entire mixed long/short column sector. -/
theorem longRowsAt_eq_strict_add_shortColumn (A : ℝ) (d U : ℕ)
    (hU : U ≤ sourceKernelCutoff A) :
    longMangoldtPlainRowsAt A d U =
      strictLongPlainRowsAt A d U + shortColumnPlainRowsAt A d U := by
  calc
    longMangoldtPlainRowsAt A d U =
        ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
          ((∑ n ∈ Finset.Icc 1 U, sourcePlainWeight A ((d * m * n : ℕ) : ℝ)) +
            ∑ n ∈ Finset.Ioc U (sourceKernelCutoff A),
              sourcePlainWeight A ((d * m * n : ℕ) : ℝ)) := by
      unfold longMangoldtPlainRowsAt sourcePlainKernel
      apply Finset.sum_congr rfl
      intro m _
      simpa only [Nat.cast_mul] using congrArg (fun r : ℝ ↦ vonMangoldt m * r)
        (sum_closed_split (sourceKernelCutoff A) U hU
          (fun n ↦ sourcePlainWeight A ((d * m * n : ℕ) : ℝ)))
    _ = shortColumnPlainRowsAt A d U + strictLongPlainRowsAt A d U := by
      simp only [mul_add, Finset.sum_add_distrib,
        shortColumnPlainRowsAt, strictLongPlainRowsAt]
    _ = _ := add_comm _ _

/-- Two strict axes require both signed subtractions from the completed logarithmic row. -/
theorem strictRowsAt_eq_logKernel_sub_short_sub_column (A : ℝ) (hA : 1 ≤ A)
    (d U : ℕ) (hd : 1 ≤ d) (hU : U ≤ sourceKernelCutoff A) :
    strictLongPlainRowsAt A d U = sourceMobiusKernel A d -
      shortMangoldtPlainRowsAt A d U - shortColumnPlainRowsAt A d U := by
  have hl := longRowsAt_eq_logKernel_sub_short A hA d U hd hU
  have hc := longRowsAt_eq_strict_add_shortColumn A d U hU
  linarith

/-- The actual short logarithmic and doubly short Vaughan sectors cancel before bounding. -/
theorem shortLog_sub_shortPlain_eq_signed_long_rows (A : ℝ) (hA : 1 ≤ A) :
    shortLogSource A - shortPlainSource A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * longMangoldtPlainRowsAt A d (vaughanCutoff A) := by
  unfold shortLogSource shortPlainSource
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hp := (Finset.mem_Icc.mp hd).1
  have hs :
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ)) =
      realMoebius d * shortMangoldtPlainRowsAt A d (vaughanCutoff A) := by
    unfold shortMangoldtPlainRowsAt
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    ring
  rw [hs, ← completeRowsAt_eq_sourceMobiusKernel A hA d hp,
    completeRowsAt_eq_short_add_long A d (vaughanCutoff A)
      (vaughanCutoff_le_sourceKernelCutoff A hA)]
  ring

/-- The original Vaughan residual keeps the mixed columns and the original Type-II term. -/
theorem mertensResidual_eq_scaled_strict_rows_and_columns (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * shortColumnPlainRowsAt A d (vaughanCutoff A)) +
      typeTwoSource A := by
  have hv := mertensResidual_eq_vaughan A hA
  have hs := shortLog_sub_shortPlain_eq_signed_long_rows A hA
  have hl :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * longMangoldtPlainRowsAt A d (vaughanCutoff A)) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * shortColumnPlainRowsAt A d (vaughanCutoff A) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d _
    rw [longRowsAt_eq_strict_add_shortColumn A d (vaughanCutoff A)
      (vaughanCutoff_le_sourceKernelCutoff A hA), mul_add]
  linarith

/-- At scale one the strict coefficient-one rectangle still contains its raw diagonal. -/
theorem strictRowsAt_one_eq_plainOff_add_rawDiagonal (A : ℝ) (U : ℕ) :
    strictLongPlainRowsAt A 1 U = plainOffAt A U (sourceKernelCutoff A) +
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) := by
  simp only [strictLongPlainRowsAt, plainOffAt, offDiagonal, rectangle, diagonal,
    sourceKernel, Nat.one_mul, mul_one, Finset.mul_sum]
  ring

end FormalResearch.RiemannHypothesis.SourceScaledWholePlainConvolution
```
