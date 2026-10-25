# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicDeclsExt.Variant881f67de6d0f9bcc22c42f04b141f0ac6d909d1d017fd40234ae16a222a4649c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38d2be93b8cb371fe1aa4a4b7fee904dfa0331f6` · SHA-256 `2b61c8bc460c7d2d700fb33ca75056191f18854c0c1711bb3423f14f92d8c031`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkOrderedDeclSetExt.Varianta14c4910c46390da327ddba389cb0531e18d8a4271fe46108244f41acafd0e0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a14c4910c46390da327ddba389cb0531e18d8a4271fe46108244f41acafd0e0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkOrderedDeclSetExt.Varianta14c4910c46390da327ddba389cb0531e18d8a4271fe46108244f41acafd0e0a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a14c4910c46390da327ddba389cb0531e18d8a4271fe46108244f41acafd0e0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/PublicDeclsExt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkOrderedDeclSetExt.Varianta14c4910c46390da327ddba389cb0531e18d8a4271fe46108244f41acafd0e0a

namespace Lean.Compiler.LCNF

/--
Creates a replayable local environment extension holding a name set and the list of names in the
order they were added to the set.
-/
public def mkOrderedDeclSetExt : IO (EnvExtension (List Name × NameSet)) :=
  registerEnvExtension
    (mkInitial := pure ([], {}))
    (asyncMode := .sync)
    (replay? := some <| fun oldState newState _ s =>
      let newEntries := newState.1.take (newState.1.length - oldState.1.length)
      newEntries.reverse.foldl (init := s) fun s n =>
        if s.2.contains n then
          s
        else
          (n :: s.1, if newState.2.contains n then s.2.insert n else s.2))

/--
Set of declarations to be exported to other modules; visibility shared by base/mono/IR phases.
-/
builtin_initialize publicDeclsExt : EnvExtension (List Name × NameSet) ← mkOrderedDeclSetExt

public def isDeclPublic (env : Environment) (declName : Name) : Bool := Id.run do
  if !env.header.isModule then
    return true
  -- The IR compiler may call the boxed variant it introduces after we do visibility inference, so
  -- use same visibility as base decl.
  let inferFor := match declName with
    | .str n "_boxed" => n
    | n               => n
  let (_, map) := publicDeclsExt.getState env
  map.contains inferFor

public def setDeclPublic (env : Environment) (declName : Name) : Environment :=
  if isDeclPublic env declName then
    env
  else
    publicDeclsExt.modifyState env fun s =>
      (declName :: s.1, s.2.insert declName)

end Lean.Compiler.LCNF
```
