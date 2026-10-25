# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant0954615b661ca124fc80078ed46524c7c38875be3ffab0329f713c3317d275e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ba18407ba5ce97abac6be95e6e9a9df20dddd07` · SHA-256 `02ff0754c932754c20b97b3f65e25909c28137d3c10f8c39120e250ef0692319`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Unfold.Variant4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Util/Tactic/Unfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022--2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Util.Unfold
public meta import Lean.Elab.Tactic.Basic
import Lean.Message


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7

public section

open Lean Lean.Meta Lean.Elab.Tactic

namespace Aesop

private meta def mkToUnfold (ids : Array Ident) :
    MetaM (Std.HashMap Name (Option Name)) := do
  let mut toUnfold : Std.HashMap Name (Option Name) := {}
  for id in (ids : Array Ident) do
    let decl ← resolveGlobalConstNoOverload id
    toUnfold := toUnfold.insert decl (← getUnfoldEqnFor? decl)
  return toUnfold

elab "aesop_unfold " ids:ident+ : tactic => do
  let toUnfold ← mkToUnfold ids
  liftMetaTactic λ goal => do
    match ← unfoldManyTarget (toUnfold[·]?) goal with
    | none => throwTacticEx `aesop_unfold goal "could not unfold any of the given constants"
    | some (goal, _) => return [goal]

elab "aesop_unfold " ids:ident+ " at " hyps:ident+ : tactic => do
  let toUnfold ← mkToUnfold ids
  liftMetaTactic λ goal => do
    let mut goal := goal
    for hypId in hyps do
      let fvarId := (← getLocalDeclFromUserName hypId.getId).fvarId
      match ← unfoldManyAt (toUnfold[·]?) goal fvarId with
      | none => throwTacticEx `aesop_unfold goal m!"could not unfold any of the given constants at hypothesis '{hypId}'"
      | some (goal', _) => goal := goal'
    return [goal]

end Aesop
```
