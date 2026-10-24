# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompileExecutionSource.Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffb52cafb77e6bdaa68868553b933d91267f3c12` · SHA-256 `2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceScaledWholePlainConvolution
import SourceDivisorCounterterms

/-!
# Physical quotient rows retain the scaled auxiliary strip

UNCOMPILED source-only preparation. The physical long index is n=d*k>U;
the scaled auxiliary rectangle instead has k>U. Their difference is the
literal strip floor(U/d)<k<=min(U,floor(N_A/d)), not an estimated error.

The accepted divisor classifier owns the multiples reindexing and normalized
profile adapter. Its mean1/d, profile1/sqrt(d), full centered deleted diagonal
and independently defined main term remain unchanged. No new bound or
counterterm is defined from a residual. Generic carrier fixtures below test
endpoint/deletion conventions and are not counterexamples to an RH estimate.

AI attribution: developed with OpenAI Codex. Compilation, full type/axiom
audits, independent review and whole-source acceptance are not claimed.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalQuotientStrip

open ArithmeticFunction SourceScaledWholePlainConvolution
open SourceDivisorClassification SourceDivisorCounterterms SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaSourceRecombination

noncomputable section

/-- The original physical second long axis after n=d*k, retaining both floors. -/
def physicalQuotientRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
    ∑ k ∈ Finset.Ioc (U / d) (sourceKernelCutoff A / d),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ)

/-- The complete missing strip, clipped at the physical quotient upper endpoint. -/
def quotientStripRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
    ∑ k ∈ Finset.Ioc (U / d) (min U (sourceKernelCutoff A / d)),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ)

/-- Physical unequal-index deletion compares m with n=d*k, not with k. -/
def physicalQuotientOffRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
    ∑ k ∈ Finset.Ioc (U / d) (sourceKernelCutoff A / d),
      if d * k ≠ m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0

/-- The restored physical diagonal is m=d*k and keeps its literal source weight. -/
def physicalQuotientDeletedRowsAt (A : ℝ) (d U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
    ∑ k ∈ Finset.Ioc (U / d) (sourceKernelCutoff A / d),
      if d * k = m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0

private theorem sum_quotient_interval_split (L U T : ℕ) (hLU : L ≤ U)
    (f : ℕ → ℝ) :
    (∑ k ∈ Finset.Ioc L T, f k) =
      (∑ k ∈ Finset.Ioc U T, f k) + ∑ k ∈ Finset.Ioc L (min U T), f k := by
  classical
  have hs : Finset.Ioc L T = Finset.Ioc U T ∪ Finset.Ioc L (min U T) := by
    ext k
    simp only [Finset.mem_Ioc, Finset.mem_union, le_min_iff]
    omega
  have hd : Disjoint (Finset.Ioc U T) (Finset.Ioc L (min U T)) := by
    apply Finset.disjoint_left.mpr
    intro k hkU hkL
    have hu := (Finset.mem_Ioc.mp hkU).1
    have hl := (le_min_iff.mp (Finset.mem_Ioc.mp hkL).2).1
    omega
  rw [hs, Finset.sum_union hd]

private theorem auxiliary_inner_eq_quotient_upper (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U m : ℕ) (hm : U < m) :
    (∑ k ∈ Finset.Ioc U (sourceKernelCutoff A),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) =
    ∑ k ∈ Finset.Ioc U (sourceKernelCutoff A / d),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  classical
  symm
  apply Finset.sum_subset
    (by
      intro k hk
      exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hk).1,
        (Finset.mem_Ioc.mp hk).2.trans (Nat.div_le_self _ _)⟩)
  intro k hk hnot
  have hquot : sourceKernelCutoff A / d < k := by
    by_contra h
    apply hnot
    exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hk).1, by omega⟩
  have hdk : sourceKernelCutoff A < d * k := by
    apply lt_of_not_ge
    intro h
    have hle : k ≤ sourceKernelCutoff A / d :=
      (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)
    omega
  have hmpos : 1 ≤ m := by omega
  have hp : sourceKernelCutoff A < d * m * k :=
    hdk.trans_le (by
      simpa only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using
        (Nat.le_mul_of_pos_right (d * k) hmpos))
  exact sourcePlainWeight_zero_of_cutoff_lt A hA (d * m * k) hp

/-- The physical quotient row is the auxiliary strict row plus the entire clipped strip. -/
theorem physicalRowsAt_eq_auxiliary_strict_add_strip (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) :
    physicalQuotientRowsAt A d U =
      strictLongPlainRowsAt A d U + quotientStripRowsAt A d U := by
  unfold physicalQuotientRowsAt strictLongPlainRowsAt quotientStripRowsAt
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← mul_add, auxiliary_inner_eq_quotient_upper A hA d hd U m
    (Finset.mem_Ioc.mp hm).1]
  exact congrArg (fun r : ℝ => vonMangoldt m * r)
    (sum_quotient_interval_split (U / d) U (sourceKernelCutoff A / d)
      (Nat.div_le_self U d)
      (fun k => sourcePlainWeight A ((d * m * k : ℕ) : ℝ)))

/-- If U is below the quotient upper endpoint, the strip ends exactly at U. -/
theorem physicalRowsAt_eq_auxiliary_add_full_strip_of_le (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) (hUT : U ≤ sourceKernelCutoff A / d) :
    physicalQuotientRowsAt A d U = strictLongPlainRowsAt A d U +
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
        ∑ k ∈ Finset.Ioc (U / d) U,
          sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  simpa only [quotientStripRowsAt, min_eq_left hUT] using
    physicalRowsAt_eq_auxiliary_strict_add_strip A hA d hd U

/-- If the quotient endpoint is at most U, the auxiliary row is empty after support. -/
theorem auxiliaryStrictRowsAt_zero_of_quotient_le (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) (hTU : sourceKernelCutoff A / d ≤ U) :
    strictLongPlainRowsAt A d U = 0 := by
  unfold strictLongPlainRowsAt
  apply Finset.sum_eq_zero
  intro m hm
  rw [auxiliary_inner_eq_quotient_upper A hA d hd U m (Finset.mem_Ioc.mp hm).1,
    Finset.Ioc_eq_empty_of_le hTU, Finset.sum_empty, mul_zero]

/-- Above the quotient endpoint, the physical row consists of the clipped strip alone. -/
theorem physicalRowsAt_eq_strip_of_quotient_le (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) (hTU : sourceKernelCutoff A / d ≤ U) :
    physicalQuotientRowsAt A d U = quotientStripRowsAt A d U := by
  rw [physicalRowsAt_eq_auxiliary_strict_add_strip A hA d hd U,
    auxiliaryStrictRowsAt_zero_of_quotient_le A hA d hd U hTU, zero_add]

/-- Specialization keeps the original real-A short cutoff and the original long cutoff. -/
theorem actual_physicalRows_eq_auxiliary_strict_add_strip (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    physicalQuotientRowsAt A d (vaughanCutoff A) =
      strictLongPlainRowsAt A d (vaughanCutoff A) +
        quotientStripRowsAt A d (vaughanCutoff A) :=
  physicalRowsAt_eq_auxiliary_strict_add_strip A hA d hd (vaughanCutoff A)

/-- Restoring the deleted physical diagonal recovers the complete quotient rectangle. -/
theorem physicalRowsAt_eq_off_add_deleted (A : ℝ) (d U : ℕ) :
    physicalQuotientRowsAt A d U =
      physicalQuotientOffRowsAt A d U + physicalQuotientDeletedRowsAt A d U := by
  classical
  unfold physicalQuotientRowsAt physicalQuotientOffRowsAt physicalQuotientDeletedRowsAt
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  rw [← mul_add, ← Finset.sum_add_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro k _
  by_cases h : d * k = m
  · rw [if_neg (not_not.mpr h), if_pos h, zero_add]
  · rw [if_pos h, if_neg h, add_zero]

/-- The owning multiples reindexer retains physical n=d*k unequal-index deletion. -/
theorem divisorMultiplesInteraction_eq_physicalOffRows (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorMultiplesInteraction A d =
      physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  classical
  unfold divisorMultiplesInteraction physicalQuotientOffRowsAt longInventory
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.sum_filter]
  have hs := sum_multiples_eq_quotient_interval (vaughanCutoff A)
    (sourceKernelCutoff A) d hd
    (fun n => if n ≠ m then
      vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
  have hi : Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d) =
      Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_Ioc]
    omega
  calc
    (∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      if n ≠ m then
        (if d ∣ n then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
      else 0) =
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if d ∣ n then
          (if n ≠ m then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
        else 0 := by
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> rfl
    _ = ∑ k ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
        if d * k ≠ m then
          vonMangoldt m * sourcePlainWeight A ((m * (d * k) : ℕ) : ℝ) else 0 := hs
    _ = vonMangoldt m *
        ∑ k ∈ Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d),
          if d * k ≠ m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0 := by
      rw [hi, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      by_cases h : d * k ≠ m
      · rw [if_pos h, if_pos h]
        simp only [Nat.mul_comm, Nat.mul_left_comm]
      · rw [if_neg h, if_neg h, mul_zero]

/-- The accepted beta mean1/d is retained before the exact physical multiples sector. -/
theorem divisorInteraction_eq_mean_sub_physicalOffRows (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 0 < d) :
    divisorInteraction A d = plainTypeTwoOffDiagonal A / (d : ℝ) -
      physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  rw [divisorInteraction_eq_mean_sub_multiples A hA d,
    divisorMultiplesInteraction_eq_physicalOffRows A d hd]

/-- Generic carrier only: k=2 lies in the physical row and in the required strip. -/
theorem generic_missing_strip_atom_fails :
    (∑ k ∈ (Finset.Ioc (3 / 2) (24 / 2) : Finset ℕ),
      if k = 2 then (1 : ℝ) else 0) ≠
    ∑ k ∈ (Finset.Ioc 3 24 : Finset ℕ), if k = 2 then (1 : ℝ) else 0 := by
  norm_num [Finset.sum_ite_eq', Finset.mem_Ioc]

/-- Generic carrier only: when U>N/d, replacing min(U,N/d) by U adds a false endpoint. -/
theorem generic_unclipped_strip_endpoint_fails :
    (∑ k ∈ (Finset.Ioc (5 / 2) (min 5 (8 / 2)) : Finset ℕ),
      if k = 5 then (1 : ℝ) else 0) ≠
    ∑ k ∈ (Finset.Ioc (5 / 2) 5 : Finset ℕ), if k = 5 then (1 : ℝ) else 0 := by
  norm_num [Finset.sum_ite_eq', Finset.mem_Ioc]

/-- Generic carrier only: m=4,k=2,d=2 is deleted physically but retained by m!=k. -/
theorem generic_auxiliary_diagonal_deletion_fails :
    (∑ k ∈ (Finset.Ioc (3 / 2) (24 / 2) : Finset ℕ),
      if 2 * k ≠ 4 then (if k = 2 then (1 : ℝ) else 0) else 0) ≠
    ∑ k ∈ (Finset.Ioc (3 / 2) (24 / 2) : Finset ℕ),
      if k ≠ 4 then (if k = 2 then (1 : ℝ) else 0) else 0 := by
  have hleft :
      (∑ k ∈ (Finset.Ioc (3 / 2) (24 / 2) : Finset ℕ),
        if 2 * k ≠ 4 then (if k = 2 then (1 : ℝ) else 0) else 0) = 0 := by
    apply Finset.sum_eq_zero
    intro k _
    by_cases h : k = 2
    · subst k
      norm_num
    · rw [if_neg h]
      split_ifs <;> rfl
  have hright :
      (∑ k ∈ (Finset.Ioc (3 / 2) (24 / 2) : Finset ℕ),
        if k ≠ 4 then (if k = 2 then (1 : ℝ) else 0) else 0) = 1 := by
    calc
      _ = ∑ k ∈ (Finset.Ioc (3 / 2) (24 / 2) : Finset ℕ),
          if k = 2 then (1 : ℝ) else 0 := by
        apply Finset.sum_congr rfl
        intro k _
        by_cases h : k = 2
        · subst k
          norm_num
        · rw [if_neg h]
          split_ifs <;> rfl
      _ = _ := by norm_num [Finset.sum_ite_eq', Finset.mem_Ioc]
  rw [hleft, hright]
  norm_num

end

end FormalResearch.RiemannHypothesis.SourcePhysicalQuotientStrip
```
