# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.FixturesAttempt02.Variant847849de5cbe1dd94c0ab2ee415468e6d1d0a374ba8769dcef626850c1216c1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75d8373a2b06191fa6c492c88c2b1f191f600155` · SHA-256 `a08e5d07c07b51425c8f613778cc9b323de51fb52d42d10cef81e5b20c4513a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceMangoldtDirichletBound.Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceMangoldtDirichletBound.Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"df72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/dirichlet-worker/Fixtures-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceMangoldtDirichletBound.Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf

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
  convert! tsum_vonMangoldt_div_rpow_le (c := 2) (by norm_num) using 1 <;> norm_num

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
