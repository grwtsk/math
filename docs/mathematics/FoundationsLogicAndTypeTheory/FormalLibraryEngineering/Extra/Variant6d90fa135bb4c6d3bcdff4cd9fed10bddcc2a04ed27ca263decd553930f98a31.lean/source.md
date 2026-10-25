# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extra.Variant6d90fa135bb4c6d3bcdff4cd9fed10bddcc2a04ed27ca263decd553930f98a31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30df72f2f35a800ee057ab457c1d0fbb7e56f43c` · SHA-256 `8cacb23519345ae0b1d7cdba40749a1a637ae2cc429f134678ed98cf98de7d80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalConfigItemEvalSetOptions.Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalConfigItemEvalSetOptions.Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/ConfigEval/Extra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.ConfigEval.Instances


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalConfigItemEvalSetOptions.Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495

public section

namespace Lean.Elab.ConfigEval

open Meta Term

/--
Uses global option declarations with the prefix `optionPrefix` when setting `Options`.
Assumes that `item` is shifted, with the rest of the item being the option name suffix to use.
-/
def EvalConfigItem.evalSetOptions (optionPrefix : Name) (opts : Options) (item : ConfigItem) : TermElabM Options := do
  let optName := optionPrefix ++ item.getCurrOptionName
  -- TODO(kmill): record `optionPrefix` so that LSP can make correct suggestions
  addCompletionInfo <| CompletionInfo.option (mkNullNode #[item.prevRoot, mkNullNode item.optionComps.toArray])
  let decl ← getOptionDecl optName
  pushInfoLeaf <| .ofOptionInfo { stx := item.option, optionName := optName, declName := decl.declName }
  let set (α : Type) [EvalTerm α] [EvalExpr α] [KVMap.Value α] : TermElabM Options := do
    let value : α ← evalTermOrExprWithElab ⟨item.value⟩
    return opts.set optName value
  match decl.defValue with
  | .ofBool _   => set Bool
  | .ofNat _    => item.checkNotBool; set Nat
  | .ofInt _    => item.checkNotBool; set Int
  | .ofString _ => item.checkNotBool; set String
  | .ofName _   => item.checkNotBool; set Name
  | .ofSyntax _ => throwErrorAt item.option "Cannot set `Syntax` option `{optName}`"

end Lean.Elab.ConfigEval
```
