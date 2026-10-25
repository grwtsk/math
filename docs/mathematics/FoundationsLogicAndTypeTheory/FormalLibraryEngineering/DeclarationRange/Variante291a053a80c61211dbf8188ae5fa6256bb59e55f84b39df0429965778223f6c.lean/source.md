# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationRange.Variante291a053a80c61211dbf8188ae5fa6256bb59e55f84b39df0429965778223f6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `687aed14d6b3e272b91a8a172321be3644a2f8a6` · SHA-256 `794625f693d2787d4f0afd907f81619b2f24e0a8d6c16ae2d1c5611f174a379e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddBuiltinDeclarationRanges.Variantfe0dc9deb0a0793cb847341ad2d883784227fb2fc19afc14f765c20a940fd262","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe0dc9deb0a0793cb847341ad2d883784227fb2fc19afc14f765c20a940fd262","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddBuiltinDeclarationRanges.Variantfe0dc9deb0a0793cb847341ad2d883784227fb2fc19afc14f765c20a940fd262","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fe0dc9deb0a0793cb847341ad2d883784227fb2fc19afc14f765c20a940fd262","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/DeclarationRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.MonadEnv


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddBuiltinDeclarationRanges.Variantfe0dc9deb0a0793cb847341ad2d883784227fb2fc19afc14f765c20a940fd262

public section

/-!
# Environment extension for declaration ranges
-/

namespace Lean

builtin_initialize builtinDeclRanges : IO.Ref (NameMap DeclarationRanges) ← IO.mkRef {}
builtin_initialize declRangeExt : MapDeclarationExtension DeclarationRanges ←
  mkMapDeclarationExtension (exportEntriesFn := fun _ s =>
    let ents := s.toArray
    { exported := #[], server := ents, «private» := ents })

def addBuiltinDeclarationRanges (declName : Name) (declRanges : DeclarationRanges) : IO Unit :=
  builtinDeclRanges.modify (·.insert declName declRanges)

def addDeclarationRanges [Monad m] [MonadEnv m] (declName : Name) (declRanges : DeclarationRanges) : m Unit := do
  if declName.isAnonymous then
    -- This can happen on elaboration of partial syntax and would panic in `modifyState` otherwise
    return
  modifyEnv fun env => declRangeExt.insert env declName declRanges

def findDeclarationRangesCore? [Monad m] [MonadEnv m] (declName : Name) : m (Option DeclarationRanges) :=
  -- In the case of private definitions imported via `import all`, looking in `.olean.server` is not
  -- sufficient, so we look in the actual environment as well via `exported` (TODO: rethink
  -- parameter naming).
  return declRangeExt.find? (level := .exported) (← getEnv) declName <|>
    declRangeExt.find? (level := .server) (← getEnv) declName

def findDeclarationRanges? [Monad m] [MonadEnv m] [MonadLiftT BaseIO m] (declName : Name) : m (Option DeclarationRanges) := do
  let env ← getEnv
  let ranges ← if isAuxRecursor env declName || isNoConfusion env declName || (← isRec declName)  then
    findDeclarationRangesCore? declName.getPrefix
  else
    findDeclarationRangesCore? declName
  match ranges with
  | none => return (← builtinDeclRanges.get (m := BaseIO)).find? declName
  | some _ => return ranges

end Lean
```
