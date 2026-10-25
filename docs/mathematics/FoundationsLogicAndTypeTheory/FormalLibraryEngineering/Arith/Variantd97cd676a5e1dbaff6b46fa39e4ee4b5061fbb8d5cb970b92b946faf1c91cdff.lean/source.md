# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arith.Variantd97cd676a5e1dbaff6b46fa39e4ee4b5061fbb8d5cb970b92b946faf1c91cdff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a82a29d428e5fb06fe5bab59dbb11b437bbd3295` · SHA-256 `7ee6b8aae1aed5576ab29f8aa360d996285cfa6960c24c61355d98a486743aae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParentIsTarget.Variant031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ParentIsTarget.Variant031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/Arith.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Tactic.Simp.Arith.Nat
public import Lean.Meta.Tactic.Simp.Arith.Int


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParentIsTarget.Variant031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b

public section

namespace Lean.Meta.Simp.Arith

def parentIsTarget (parent? : Option Expr) : Bool :=
  match parent? with
  | none => false
  | some parent => isLinearTerm parent || isLinearCnstr parent || isDvdCnstr parent

end Lean.Meta.Simp.Arith
```
