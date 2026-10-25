# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocation.Varianta15aefb8066737a6c7dd93cc41516b9b1a1c529edd7ddf85f1157e3411185461

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0946b812b9b51235993609d05901eb27e8d54bd` · SHA-256 `84e8a9e58c5e6726d0d4a0f27e6e9987a03e303f2b52ad40854702f388b31383`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootExpr.Variant18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootExpr.Variant18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Lean/GoalsLocation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

public import Mathlib.Init
public import Lean.Meta.Tactic.Util
public import Lean.SubExpr

/-!
# Utilities for `SubExpr.GoalsLocation`

This file defines some functions for dealing with `SubExpr.GoalsLocation`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootExpr.Variant18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0

@[expose] public section

namespace Lean.SubExpr.GoalsLocation
/-- The root expression of the position specified by the `GoalsLocation`. -/
def rootExpr : GoalsLocation → MetaM Expr
  | ⟨_, .hyp fvarId⟩        => do instantiateMVars (← fvarId.getType)
  | ⟨_, .hypType fvarId _⟩  => do instantiateMVars (← fvarId.getType)
  | ⟨_, .hypValue fvarId _⟩ => do instantiateMVars (← fvarId.getDecl).value
  | ⟨mvarId, .target _⟩     => do instantiateMVars (← mvarId.getType)

/-- The `SubExpr.Pos` specified by the `GoalsLocation`. -/
def pos : GoalsLocation → Pos
  | ⟨_, .hyp _⟩          => .root
  | ⟨_, .hypType _ pos⟩  => pos
  | ⟨_, .hypValue _ pos⟩ => pos
  | ⟨_, .target pos⟩     => pos

/-- The hypothesis specified by the `GoalsLocation`. -/
def fvarId? : GoalsLocation → Option FVarId
  | ⟨_, .hyp fvarId⟩        => fvarId
  | ⟨_, .hypType fvarId _⟩  => fvarId
  | ⟨_, .hypValue fvarId _⟩ => fvarId
  | ⟨_, .target _⟩          => none

end Lean.SubExpr.GoalsLocation
```
