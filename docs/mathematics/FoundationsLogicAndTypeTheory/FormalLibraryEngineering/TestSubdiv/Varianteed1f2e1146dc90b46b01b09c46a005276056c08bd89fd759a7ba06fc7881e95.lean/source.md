# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSubdiv.Varianteed1f2e1146dc90b46b01b09c46a005276056c08bd89fd759a7ba06fc7881e95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc5caeb34baf622f12fc0ee58841c58c97789152` · SHA-256 `f5495ae4c2c2abee84f0d9e8aa7a8a3bbf817307ad65b76c527e5355f456490f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalAuto.Variant0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079","mathematical_subject":"Foundations.Unclassified","original_sha256":"0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_subdiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  Test interval_bound_subdiv tactic
-/
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079

open LeanCert.Core
open Set

-- Simple test - should work without subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_bound_subdiv

-- This should also work with subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x + x ≤ 2 := by
  interval_bound_subdiv

-- Test with transcendental - should work
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x ≤ 1 := by
  interval_bound_subdiv

-- Test on larger interval
example : ∀ x ∈ Icc (0 : ℝ) 2, x * x ≤ 4 := by
  interval_bound_subdiv

-- Test with exp (needs Taylor depth)
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound_subdiv 15

-- Note: Lower bounds not yet implemented for interval_bound_subdiv
-- The x*x - x case would need lower bound support
```
