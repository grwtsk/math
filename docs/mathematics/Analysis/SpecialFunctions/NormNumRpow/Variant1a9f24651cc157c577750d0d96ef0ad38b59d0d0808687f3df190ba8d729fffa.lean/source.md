# Complete source: GRWTSK.Analysis.SpecialFunctions.NormNumRpow.Variant1a9f24651cc157c577750d0d96ef0ad38b59d0d0808687f3df190ba8d729fffa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3ed24c9b94bf88887e009bce6e891b3c20847c4` · SHA-256 `748eb57c0910969cac16ffd4659de811e3a617a0b7f9f3a5510bf99d742f7dc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.Real.Variant5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.Real.Variant5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/norm_num_rpow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, David Renshaw
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Real


namespace GRWTSK.Analysis.SpecialFunctions.Real.Variant5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333

example : (2 : ℝ) ^ (3 : ℝ) = 8 := by norm_num1
example : (1 : ℝ) ^ (20 : ℝ) = 1 := by norm_num1
example : (-2 : ℝ) ^ (3 : ℝ) = -8 := by norm_num1
example : (1/5 : ℝ) ^ (2 : ℝ) = 1/25 := by norm_num1
example : (-1/3 : ℝ) ^ (-3 : ℝ) = -27 := by norm_num1
example : (1/2 : ℝ) ^ (-3 : ℝ) = 8 := by norm_num1
example : (2 : ℝ) ^ (-3 : ℝ) = 1/8 := by norm_num1
example : (-2 : ℝ) ^ (-3 : ℝ) = -1/8 := by norm_num1
```
