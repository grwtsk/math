# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.Fixtures.Variantdb34984fa8cd31cc6990a982b576bba6844e3597e8872c8569f13e8f92493e7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ec4a2a75bc593b53c6f374abb60d8cbce6a4066` · SHA-256 `7187b7ec86e4e291c7dc9cedc9dab922cfdade8ab1af14a0edebb9224efd76bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceMangoldtDirichletBound.Variant9ab1a8c608d87fa7af4a894fd1aac4bb1171d66965784d814836f9f5fb029d5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ab1a8c608d87fa7af4a894fd1aac4bb1171d66965784d814836f9f5fb029d5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceMangoldtDirichletBound.Variant9ab1a8c608d87fa7af4a894fd1aac4bb1171d66965784d814836f9f5fb029d5e","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"9ab1a8c608d87fa7af4a894fd1aac4bb1171d66965784d814836f9f5fb029d5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/dirichlet-worker/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceMangoldtDirichletBound.Variant9ab1a8c608d87fa7af4a894fd1aac4bb1171d66965784d814836f9f5fb029d5e

open FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound

example (c : ℝ) : mangoldtDirichletTerm c 0 = 0 := mangoldtDirichletTerm_zero c
example (c : ℝ) : mangoldtDirichletTerm c 1 = 0 := mangoldtDirichletTerm_one c

-- The first cell includes both touching endpoints.
example {c : ℝ} (hc : 1 < c) : mangoldtDirichletTerm c 2 ≤ Real.log 2 := by
  simpa [cellMajorant] using
    mangoldtDirichletTerm_le_cellMajorant hc (n := 2) (by norm_num)
      (x := 1) (by norm_num)

example {c : ℝ} (hc : 1 < c) :
    mangoldtDirichletTerm c 2 ≤ (Real.log 2 + Real.log 2) * (2 : ℝ) ^ (-c) := by
  exact mangoldtDirichletTerm_le_cellMajorant hc (n := 2) (by norm_num)
    (x := 2) (by norm_num)

-- Prime powers are retained with Lambda(p^k)=log p.
example (c : ℝ) : mangoldtDirichletTerm c 4 = Real.log 2 / (4 : ℝ) ^ c := by
  unfold mangoldtDirichletTerm
  rw [show (4 : ℕ) = 2 ^ 2 by norm_num,
    ArithmeticFunction.vonMangoldt_apply_pow (by norm_num),
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  norm_num

example : (∑' n : ℕ, ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (2 : ℝ)) ≤
    1 + Real.log 2 := by
  convert! tsum_vonMangoldt_div_rpow_le (c := 2) (by norm_num) using 1
  norm_num

example : (∑' n : ℕ, mangoldtDirichletTerm (2 : ℝ) n) ≤ 1 + Real.log 2 := by
  convert! mangoldtDirichlet_movingLine_le_quadratic (A := 1) (by norm_num) using 1 <;>
    norm_num

-- Totalization at c=1 is explicitly outside the convergence and bound theorem domain.
example : dirichletBudget 1 = 0 := by norm_num [dirichletBudget]

-- The comparison half-line cannot be extended to the cell preceding n=1.
example : cellMajorant 2 (1 / 4) < mangoldtDirichletTerm 2 1 := by
  rw [mangoldtDirichletTerm_one]
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hquarter : Real.log (1 / 4 : ℝ) = -2 * Real.log 2 := by
    rw [Real.log_div (by norm_num) (by norm_num), Real.log_one]
    have hfour : Real.log (4 : ℝ) = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]
      norm_num
    rw [hfour]
    ring
  unfold cellMajorant
  exact mul_neg_of_neg_of_pos (by rw [hquarter]; linarith)
    (Real.rpow_pos_of_pos (by norm_num) _)
```
