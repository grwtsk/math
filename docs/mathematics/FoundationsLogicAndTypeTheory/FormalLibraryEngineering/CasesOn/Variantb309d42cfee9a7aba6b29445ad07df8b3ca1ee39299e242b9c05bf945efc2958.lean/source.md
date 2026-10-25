# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesOn.Variantb309d42cfee9a7aba6b29445ad07df8b3ca1ee39299e242b9c05bf945efc2958

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a351bb8929f9a8e8d3c3740d75e368c99a2bbc4` · SHA-256 `f0ef4b36eb72d054149362fdc59008716bbc676309c00109b07e1d20f336d5e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCasesOn.Variant91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkCasesOn.Variant91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Constructions/CasesOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.AddDecl


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCasesOn.Variant91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7

public section

namespace Lean

@[extern "lean_mk_cases_on"] opaque mkCasesOnImp (env : Kernel.Environment) (declName : @& Name) : Except Kernel.Exception Declaration

open Meta

def mkCasesOn (declName : Name) : MetaM Unit := do
  withTraceNode `Meta.mkCasesOn (fun _ => return m!"{declName}") do
  let name := mkCasesOnName declName
  let decl ← ofExceptKernelException (mkCasesOnImp (← getEnv).toKernelEnv declName)
  addDecl decl
  setReducibleAttribute name
  modifyEnv fun env => markAuxRecursor env name
  enableRealizationsForConst name

builtin_initialize
  registerTraceClass `Meta.mkCasesOn

end Lean
```
