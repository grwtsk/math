# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt2.Variantc70923655500b6ee9700a840d8fbeabc949df9558702ffbf21b62e402f9fe56b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48753e7c13f88067db9541fd988c8d1c81557e07` · SHA-256 `603776356f492cc918712b0cbc57248cb23a72d700f2b0a897e99eb4fc0a06af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I12.Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I12.Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/examples/Sqrt2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert

/-!
# Problem 1: The Classic - Prove √2 Exists and is Unique

Domain: Real analysis / Number theory
Why it matters: Foundation of irrational numbers, historical significance
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I12.Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c

open LeanCert.Core LeanCert.Validity

def I12 : IntervalRat := ⟨1, 2, by norm_num⟩

/-! ## Part A: Existence via Sign Change (IVT) -/

-- f(x) = x² - 2 changes sign on [1, 2]: f(1) = -1 < 0, f(2) = 2 > 0
-- Therefore by IVT, ∃ x ∈ [1, 2] with x² = 2

theorem sqrt2_exists : ∃ x ∈ I12,
    Expr.eval (fun _ => x) (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                                     (Expr.neg (Expr.const 2))) = 0 := by
  interval_roots

-- Native syntax version (using certify approach)
theorem sqrt2_exists_native : ∃ x ∈ Set.Icc (1:ℝ) 2, x * x - 2 = 0 := by
  interval_roots

/-! ## Part B: Uniqueness via Newton Contraction -/

-- f'(x) = 2x ≠ 0 on [1, 2] (since x ≥ 1 > 0)
-- Newton iteration contracts, so the root is unique

theorem sqrt2_unique : ∃! x, x ∈ I12 ∧
    Expr.eval (fun _ => x) (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                                     (Expr.neg (Expr.const 2))) = 0 := by
  interval_unique_root

-- Native syntax version
theorem sqrt2_unique_native : ∃! x, x ∈ Set.Icc (1:ℝ) 2 ∧ x * x - 2 = 0 := by
  interval_unique_root

/-! ## Part C: Precise Bounds -/

-- We can show √2 ∈ [1.41, 1.42] by showing:
-- 1. f(1.41) = 1.41² - 2 ≈ -0.0119 < 0
-- 2. f(1.42) = 1.42² - 2 ≈ 0.0164 > 0

def I_sqrt2_tight : IntervalRat := ⟨141/100, 142/100, by norm_num⟩

-- Sign change on tighter interval proves √2 ∈ [1.41, 1.42]
theorem sqrt2_in_tight_interval : ∃ x ∈ I_sqrt2_tight,
    Expr.eval (fun _ => x) (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                                     (Expr.neg (Expr.const 2))) = 0 := by
  interval_roots

-- Even tighter: √2 ∈ [1.414, 1.415]
def I_sqrt2_tighter : IntervalRat := ⟨1414/1000, 1415/1000, by norm_num⟩

theorem sqrt2_in_tighter_interval : ∃ x ∈ I_sqrt2_tighter,
    Expr.eval (fun _ => x) (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                                     (Expr.neg (Expr.const 2))) = 0 := by
  interval_roots

-- 9 decimal places: √2 ∈ [1.414213562, 1.414213563]
def I_sqrt2_9decimals : IntervalRat := ⟨1414213562/1000000000, 1414213563/1000000000, by norm_num⟩

theorem sqrt2_9_decimals : ∃ x ∈ I_sqrt2_9decimals,
    Expr.eval (fun _ => x) (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                                     (Expr.neg (Expr.const 2))) = 0 := by
  interval_roots

/-! ## Part D: Discovery Commands -/

-- Check bounds interactively
#bounds (fun x => x * x - 2) on [1, 2]

-- Find minimum and maximum
#find_min (fun x => x * x - 2) on [1, 2]
#find_max (fun x => x * x - 2) on [1, 2]

/-! ## Summary: √2 Problem Solved ✓

All three parts work:
- Part A (Existence): interval_roots via IVT
- Part B (Uniqueness): interval_unique_root via Newton contraction
- Part C (Bounds): Arbitrarily tight via smaller intervals
-/
```
