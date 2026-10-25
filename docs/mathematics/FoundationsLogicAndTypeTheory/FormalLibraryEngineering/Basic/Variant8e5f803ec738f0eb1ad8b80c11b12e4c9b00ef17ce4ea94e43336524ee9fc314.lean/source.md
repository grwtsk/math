# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant8e5f803ec738f0eb1ad8b80c11b12e4c9b00ef17ce4ea94e43336524ee9fc314

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89d2a1d33332f6affe5ebe0a6dcaa50b15e3df48` · SHA-256 `7bc4f46595b8d239a0415cf61c753a530750d9742c7e2cefb2703c7feb3e23dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArgsPacker.Varianta134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ArgsPacker.Varianta134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/ArgsPacker/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Data.Array.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArgsPacker.Varianta134b9d9710d09c0369da0596cfb952fe9643f1209d82123e13cb2b18c3f9faf

public section

/-!
The basic data type and namespace for the `Lean.Meta.ArgsPacker` modules.

This is separated so that `Lean.Elab.PreDefinition.WF.Eqns` can include the
type in `EqnInfos` without depending on full module with operations.
-/

namespace Lean.Meta

/--
The metadata required for the operation in the `Lean.Meta.ArgsPacker` module; see
the module docs there for an overview.
-/
structure ArgsPacker where
  /--
  Variable names to use when unpacking a packed argument.

  Crucially, the size of this array also indicates the number of functions to pack, and
  the length of each array the arity.
  -/
  varNamess : Array (Array Name)
  deriving Inhabited

end Lean.Meta
```
