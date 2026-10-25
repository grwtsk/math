# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerMascheroni.Variantf682e8a2872daa4e43ab3f35f56a3c3a27f267cde0b8a5118710d3b9f30a0d37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7e28704e8803a1a6324dc2776adb858837df041` · SHA-256 `d387378167a450ed58eb1c60c1dc2dfd405f180ce1051c6803e9287684670676`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalAuto.Variant4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f","mathematical_subject":"Foundations.Unclassified","original_sha256":"4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/EulerMascheroni.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto

/-!
# Tests for `Real.eulerMascheroniConstant` support in `interval_decide`

Uses tight bounds: 0.5722 ≤ γ ≤ 0.5823, derived from
`eulerMascheroniSeq 100 < γ < eulerMascheroniSeq' 100`
combined with LeanCert's computable log intervals.
-/

-- The motivating example from the issue

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f

example : (0.5 : ℝ) ≤ Real.eulerMascheroniConstant := by interval_decide

-- Tighter lower bound (impossible with Mathlib's 1/2 alone)
example : (0.572 : ℝ) ≤ Real.eulerMascheroniConstant := by interval_decide

-- Tighter upper bound (impossible with Mathlib's 2/3 alone)
example : Real.eulerMascheroniConstant ≤ 0.583 := by interval_decide
```
