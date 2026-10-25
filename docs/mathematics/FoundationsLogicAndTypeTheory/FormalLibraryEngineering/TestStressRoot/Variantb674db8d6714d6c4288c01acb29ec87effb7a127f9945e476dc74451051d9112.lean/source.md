# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressRoot.Variantb674db8d6714d6c4288c01acb29ec87effb7a127f9945e476dc74451051d9112

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9829b6b6175b1f5f068146ebb66b2c5676c30f2e` · SHA-256 `43176db90e66a4b59aba22421af4ef129f9d8f01c6e9bc4804e43510ca6df7ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I01.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_stress_root.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93

open LeanCert.Core

def I01 : IntervalRat := ⟨0, 1, by norm_num⟩
def I23 : IntervalRat := ⟨2, 3, by norm_num⟩

-- Root-finding stress tests (prove no roots in a box).
example : ∀ x ∈ I01, Expr.eval (fun _ => x) (Expr.exp (Expr.var 0)) ≠ (0 : ℝ) := by
  root_bound 15

example : ∀ x ∈ I23,
    Expr.eval (fun _ => x)
      (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))) ≠ (0 : ℝ) := by
  root_bound
```
