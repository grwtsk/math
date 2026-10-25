# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cache.Variantcdc1deab592b8808bf3106f36c5a00189e1aeada8e552890d1dcdb0cffa868a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e0975774eeb0aa2ba74590379de19fa5ebbba19` · SHA-256 `361277cb592a4d42f32f0d2db07084add7344311b8c5cfc65f13f655207efc24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePatternCache.Variant72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RulePatternCache.Variant72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RulePattern/Cache.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.Substitution
public import Aesop.Rule.Name


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePatternCache.Variant72de9f4d8b65463f066839ddade22d845cabee125f31dfbd167251459e1551fe

public section

open Lean

set_option linter.missingDocs true

namespace Aesop

/-- Entry of the rule pattern cache. -/
@[expose] def RulePatternCache.Entry := Array (RuleName × Substitution)

set_option linter.missingDocs false in
/-- A cache for the rule pattern index. -/
structure RulePatternCache where
  map : Std.HashMap Expr RulePatternCache.Entry
  deriving Inhabited

instance : EmptyCollection RulePatternCache :=
  ⟨⟨∅⟩⟩

end Aesop
```
