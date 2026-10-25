# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Opaque.Variantc0f540373531b8a2aa47ad39f3985bdc01af1e8c83405b02daaf0595d5e2071a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5ce0d1c4588972a67d3b0874086953d1de7a50d` · SHA-256 `d1bb01621152ad338856aec87da9b277b2538e027818069b1ff0782a30d8c613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvOpaqueExtension.Varianta6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CbvOpaqueExtension.Varianta6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cbv/Opaque.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.ScopedEnvExtension
public import Lean.ReducibilityAttrs

/-!
# `@[cbv_opaque]` Attribute and Extension

Scoped set of declaration names that `cbv` should not unfold.
Supports `erase` to remove a declaration from the set within a scope.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvOpaqueExtension.Varianta6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9

public section

namespace Lean.Meta.Tactic.Cbv

abbrev CbvOpaqueExtension := SimpleScopedEnvExtension Name (Std.HashSet Name)

builtin_initialize cbvOpaqueExt : CbvOpaqueExtension ←
  registerSimpleScopedEnvExtension {
    name     := `cbvOpaqueExt
    initial  := {}
    addEntry := fun s n => s.insert n
  }

builtin_initialize
  registerBuiltinAttribute {
    ref   := `cbvOpaqueAttr
    name  := `cbv_opaque
    descr := "Mark declarations that should not be unfolded by the `cbv` tactic"
    applicationTime := AttributeApplicationTime.afterCompilation
    add   := fun declName _ kind => do
      if (← isReducible declName) then
        throwError "`@[cbv_opaque]` cannot be applied to a `@[reducible]` declaration: \
          `{.ofConstName declName}` is reducible, so it is unfolded before `cbv` runs"
      cbvOpaqueExt.add declName kind
    erase := fun declName => do
      let s := cbvOpaqueExt.getState (← getEnv)
      modifyEnv fun env => cbvOpaqueExt.modifyState env fun _ => s.erase declName
  }

def cbvOpaque : CoreM (Std.HashSet Name) := do
  return cbvOpaqueExt.getState (← getEnv)

def isCbvOpaque (name : Name) : CoreM Bool := do
  return cbvOpaqueExt.getState (← getEnv) |>.contains name

end Lean.Meta.Tactic.Cbv
```
