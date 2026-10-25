# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.284.Variant8d774430500b1b5c4977bf1cdc39db5be0724b626645050501ccee293d375641

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c731e92890fbd64ba11ad675b0c3bb58397ab51` · SHA-256 `a574a94308e6cf9803a3c32468ca9947f09bc1b5167f5ab0436b166b4adeb0bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Base.Variant5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Base.Variant5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/284.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Artie Khovanov, Jannis Limperg
-/

-- Test case for #284. Tests the handling of forward rule premises whose only
-- reverse dependencies are instances.
-- Thanks to Artie Khovanov for this test case.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Base.Variant5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

class Base (S : Prop) : Prop where
  is_true : S

theorem foo [inst : Base S] : S :=
  inst.is_true

example [Base S] : S := by
  aesop (add safe forward foo)

class Extend S extends Base S

example [Extend S] : S := by
  aesop (add safe forward foo)
```
