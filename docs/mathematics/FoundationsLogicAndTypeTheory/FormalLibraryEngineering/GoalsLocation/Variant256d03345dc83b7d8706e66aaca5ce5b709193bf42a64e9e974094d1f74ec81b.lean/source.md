# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocation.Variant256d03345dc83b7d8706e66aaca5ce5b709193bf42a64e9e974094d1f74ec81b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faf0be460ce05f343bf15497f4dfe46c06c46cc0` · SHA-256 `485dfe72e4eb6e2080cad6fe85409b9a6ea386b229eb226567f03d3b79ae34b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootExpr.Variant8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootExpr.Variant8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/GoalsLocation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
import Mathlib.Init
import Lean.Meta.Tactic.Util
import Lean.SubExpr

/-! This file defines some functions for dealing with `SubExpr.GoalsLocation`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootExpr.Variant8b7d3d9e4844054973b13dbeae78476606ab6080f40854ffbeb68061da391086

namespace Lean.SubExpr.GoalsLocation
/-- The root expression of the position specified by the `GoalsLocation`. -/
def rootExpr : GoalsLocation → MetaM Expr
  | ⟨_, .hyp fvarId⟩        => fvarId.getType
  | ⟨_, .hypType fvarId _⟩  => fvarId.getType
  | ⟨_, .hypValue fvarId _⟩ => do return (← fvarId.getDecl).value
  | ⟨mvarId, .target _⟩     => mvarId.getType

/-- The `SubExpr.Pos` specified by the `GoalsLocation`. -/
def pos : GoalsLocation → Pos
  | ⟨_, .hyp _⟩          => .root
  | ⟨_, .hypType _ pos⟩  => pos
  | ⟨_, .hypValue _ pos⟩ => pos
  | ⟨_, .target pos⟩     => pos

/-- The hypothesis specified by the `GoalsLocation`. -/
def location : GoalsLocation → MetaM (Option Name)
  | ⟨_, .hyp fvarId⟩        => some <$> fvarId.getUserName
  | ⟨_, .hypType fvarId _⟩  => some <$> fvarId.getUserName
  | ⟨_, .hypValue fvarId _⟩ => some <$> fvarId.getUserName
  | ⟨_, .target _⟩          => return none

end Lean.SubExpr.GoalsLocation
```
