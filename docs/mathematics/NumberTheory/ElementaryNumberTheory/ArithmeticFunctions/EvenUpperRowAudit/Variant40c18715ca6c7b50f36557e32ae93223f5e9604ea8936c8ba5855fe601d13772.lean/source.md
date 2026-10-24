# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EvenUpperRowAudit.Variant40c18715ca6c7b50f36557e32ae93223f5e9604ea8936c8ba5855fe601d13772

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45ad6b1cbd0c0b7b976401ecf17c4dc135b987a0` · SHA-256 `2b749c9dd6f0bd06e360e241c092132d524dd9234a43e02a5269cdb91c3c15cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DoubledIntervalIff.Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.DoubledIntervalIff.Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pnt-next/EvenUpperRowAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DoubledIntervalIff.Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1

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

#print EvenUpperRowScratch.doubled_interval_iff
#print axioms EvenUpperRowScratch.doubled_interval_iff
#print EvenUpperRowScratch.even_interval_reindex
#print axioms EvenUpperRowScratch.even_interval_reindex
#print EvenUpperRowScratch.even_interval_signed
#print axioms EvenUpperRowScratch.even_interval_signed
#print EvenUpperRowScratch.moebius_interval_two_split
#print axioms EvenUpperRowScratch.moebius_interval_two_split
#print EvenUpperRowScratch.source_even_upper_row
#print axioms EvenUpperRowScratch.source_even_upper_row
#print EvenUpperRowScratch.source_full_upper_row
#print axioms EvenUpperRowScratch.source_full_upper_row
```
