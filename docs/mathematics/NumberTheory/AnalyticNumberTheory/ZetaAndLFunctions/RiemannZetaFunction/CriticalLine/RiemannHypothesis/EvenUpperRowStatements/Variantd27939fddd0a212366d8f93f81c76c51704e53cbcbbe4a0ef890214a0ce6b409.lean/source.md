# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EvenUpperRowStatements.Variantd27939fddd0a212366d8f93f81c76c51704e53cbcbbe4a0ef890214a0ce6b409

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1563f65ee41abc2fa0525d38ceccebeada4b845` · SHA-256 `bf066e2c1d058f07971ed314047dc645056b2b3b7aae5b559daceb64e2759877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DoubledIntervalIff.Variantbe7bac516dc67b2dd710a33e2f1b6a584ff24d81b4eb1c5428b3a65f78d6f281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be7bac516dc67b2dd710a33e2f1b6a584ff24d81b4eb1c5428b3a65f78d6f281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DoubledIntervalIff.Variantbe7bac516dc67b2dd710a33e2f1b6a584ff24d81b4eb1c5428b3a65f78d6f281","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"be7bac516dc67b2dd710a33e2f1b6a584ff24d81b4eb1c5428b3a65f78d6f281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pnt-next/EvenUpperRowStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DoubledIntervalIff.Variantbe7bac516dc67b2dd710a33e2f1b6a584ff24d81b4eb1c5428b3a65f78d6f281

set_option autoImplicit false
namespace EvenUpperRowScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

/-- The exact strict lower and closed upper cutoffs under multiplication by two. -/
theorem doubled_interval_iff (L U r : ℕ) :
    (L < 2 * r ∧ 2 * r ≤ U) ↔ (L / 2 < r ∧ r ≤ U / 2) := by omega

/-- Every even column is reindexed, retaining squareful zeros before evaluating Möbius. -/
theorem even_interval_reindex (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) * F j) =
      ∑ r ∈ Ioc (L / 2) (U / 2),
        (ArithmeticFunction.moebius (2 * r) : ℝ) * F (2 * r) := by
  have hdiv (j : ℕ) (hj : ¬Nat.Coprime j 2) : 2 ∣ j :=
    Nat.prime_two.dvd_iff_not_coprime.mpr (fun h ↦ hj h.symm)
  refine sum_bij' (fun j _ ↦ j / 2) (fun r _ ↦ 2 * r) ?_ ?_ ?_ ?_ ?_
  · intro j hj
    obtain ⟨hjI, hjc⟩ := mem_filter.mp hj
    have hi := mem_Ioc.mp hjI
    have he := Nat.mul_div_cancel' (hdiv j hjc)
    apply mem_Ioc.mpr
    omega
  · intro r hr
    have hi := (doubled_interval_iff L U r).mpr (mem_Ioc.mp hr)
    refine mem_filter.mpr ⟨mem_Ioc.mpr hi, ?_⟩
    intro h
    exact (Nat.prime_two.coprime_iff_not_dvd.mp h.symm) (dvd_mul_right 2 r)
  · intro j hj
    exact Nat.mul_div_cancel' (hdiv j (mem_filter.mp hj).2)
  · intro r _
    omega
  · intro j hj
    rw [Nat.mul_div_cancel' (hdiv j (mem_filter.mp hj).2)]

/-- Odd half-indices reverse the sign; the discarded even half-indices have zero Möbius value. -/
theorem even_interval_signed (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) * F j) =
      -(∑ r ∈ (Ioc (L / 2) (U / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) * F (2 * r)) := by
  rw [even_interval_reindex, sum_filter, ← sum_neg_distrib]
  apply sum_congr rfl
  intro r _
  rw [TwoInsertionBoundary.moebius_two_mul]
  split_ifs <;> ring

/-- The complete interval retains two distinct finite odd cutoffs and its doubled argument. -/
theorem moebius_interval_two_split (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ Ioc L U, (ArithmeticFunction.moebius j : ℝ) * F j) =
      (∑ j ∈ (Ioc L U).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ) * F j) -
      ∑ r ∈ (Ioc (L / 2) (U / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) * F (2 * r) := by
  have h := sum_filter_add_sum_filter_not (Ioc L U) (fun j ↦ Nat.Coprime j 2)
    (fun j ↦ (ArithmeticFunction.moebius j : ℝ) * F j)
  rw [even_interval_signed] at h
  exact h.symm.trans (by ring)

/-- The actual strictly upper row preserves its full even contribution at the correct half-cutoff. -/
theorem source_even_upper_row (A : ℝ) (i : ℕ) :
    (∑ j ∈ (Ioc i ⌊Real.exp A⌋₊).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) *
        SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) =
      -(∑ r ∈ (Ioc (i / 2) (⌊Real.exp A⌋₊ / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) *
          SourceSampling.sourceSamplingKernel A ((2 * i * r : ℕ) : ℝ)) := by
  have h := even_interval_signed i ⌊Real.exp A⌋₊
    (fun j ↦ SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ))
  have ha (r : ℕ) : i * (2 * r) = 2 * i * r := by ring
  simpa only [ha] using h

/-- The actual upper hyperbola row contains its odd upper row and the entire doubled lower row. -/
theorem source_full_upper_row (A : ℝ) (i : ℕ) :
    (∑ j ∈ Ioc i ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) =
      (∑ j ∈ (Ioc i ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ) *
          SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) -
      ∑ r ∈ (Ioc (i / 2) (⌊Real.exp A⌋₊ / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) *
          SourceSampling.sourceSamplingKernel A ((2 * i * r : ℕ) : ℝ) := by
  have h := moebius_interval_two_split i ⌊Real.exp A⌋₊
    (fun j ↦ SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ))
  have ha (r : ℕ) : i * (2 * r) = 2 * i * r := by ring
  simpa only [ha] using h

end
end EvenUpperRowScratch

open EvenUpperRowScratch Finset
open FormalResearch.RiemannHypothesis.SourceComparison

example (L U r : ℕ) :
    (L < 2 * r ∧ 2 * r ≤ U) ↔ (L / 2 < r ∧ r ≤ U / 2) :=
  doubled_interval_iff L U r

example (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) * F j) =
      ∑ r ∈ Ioc (L / 2) (U / 2),
        (ArithmeticFunction.moebius (2 * r) : ℝ) * F (2 * r) :=
  even_interval_reindex L U F

example (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) * F j) =
      -(∑ r ∈ (Ioc (L / 2) (U / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) * F (2 * r)) :=
  even_interval_signed L U F

example (L U : ℕ) (F : ℕ → ℝ) :
    (∑ j ∈ Ioc L U, (ArithmeticFunction.moebius j : ℝ) * F j) =
      (∑ j ∈ (Ioc L U).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ) * F j) -
      ∑ r ∈ (Ioc (L / 2) (U / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) * F (2 * r) :=
  moebius_interval_two_split L U F

example (A : ℝ) (i : ℕ) :
    (∑ j ∈ (Ioc i ⌊Real.exp A⌋₊).filter (fun j ↦ ¬Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ) *
        SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) =
      -(∑ r ∈ (Ioc (i / 2) (⌊Real.exp A⌋₊ / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) *
          SourceSampling.sourceSamplingKernel A ((2 * i * r : ℕ) : ℝ)) :=
  source_even_upper_row A i

example (A : ℝ) (i : ℕ) :
    (∑ j ∈ Ioc i ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) =
      (∑ j ∈ (Ioc i ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ) *
          SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) -
      ∑ r ∈ (Ioc (i / 2) (⌊Real.exp A⌋₊ / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) *
          SourceSampling.sourceSamplingKernel A ((2 * i * r : ℕ) : ℝ) :=
  source_full_upper_row A i

```
