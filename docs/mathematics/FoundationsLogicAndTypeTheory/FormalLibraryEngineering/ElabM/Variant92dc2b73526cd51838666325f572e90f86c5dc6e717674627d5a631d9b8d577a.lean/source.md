# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabM.Variant92dc2b73526cd51838666325f572e90f86c5dc6e717674627d5a631d9b8d577a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `926b4b450966d6d8c23a2d2c3815cca0f97f6c8a` · SHA-256 `f60262b6b2ef15f0bcec39dd1f74096e10aad4ccbbb953fafd57628408de7316`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Context.Variant1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/ElabM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Elab.Term.TermElabM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant1664355fd7a398234a5fc8e79b20657b57c08e311c68a37c75c0b72af76f52c5

public section

open Lean Meta Elab Term

namespace Aesop.ElabM

structure Context where
  parsePriorities : Bool
  goal : MVarId

namespace Context

def forAdditionalRules (goal : MVarId) : Context where
  parsePriorities := true
  goal := goal

-- HACK: Some of the elaboration functions require that we pass in the current
-- goal. The goal is used exclusively to look up fvars in the lctx, so when
-- we operate outside a goal, we pass in a dummy mvar with empty lctx.
def forAdditionalGlobalRules : MetaM Context := do
  let mvarId := (← mkFreshExprMVarAt {} {} (.const ``True [])).mvarId!
  return .forAdditionalRules mvarId

def forErasing (goal : MVarId) : Context where
  parsePriorities := false
  goal := goal

-- HACK: See `forAdditionalGlobalRules`
def forGlobalErasing : MetaM Context := do
  let mvarId := (← mkFreshExprMVarAt {} {} (.const ``True [])).mvarId!
  return .forErasing mvarId

end ElabM.Context


abbrev ElabM := ReaderT ElabM.Context $ TermElabM

-- Generate specialized pure/bind implementations so we don't need to optimise
-- them on the fly at each use site.
instance : Monad ElabM :=
  { (inferInstance : Monad ElabM) with }

protected def ElabM.run (ctx : Context) (x : ElabM α) : TermElabM α := do
  ReaderT.run x ctx

def shouldParsePriorities : ElabM Bool :=
  return (← read).parsePriorities

def getGoal : ElabM MVarId :=
  return (← read).goal

end Aesop
```
