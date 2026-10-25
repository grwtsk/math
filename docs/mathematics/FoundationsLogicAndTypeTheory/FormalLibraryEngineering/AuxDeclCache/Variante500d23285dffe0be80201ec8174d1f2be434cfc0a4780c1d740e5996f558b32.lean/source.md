# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDeclCache.Variante500d23285dffe0be80201ec8174d1f2be434cfc0a4780c1d740e5996f558b32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ab848fa4170a933bc2571b0a92daba62791ef76` · SHA-256 `2bf07c666c39302c510624534afaf563b55a21c6aff537a94b9c8949d128380c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDeclCacheKey.Varianta00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AuxDeclCacheKey.Varianta00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/AuxDeclCache.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.DeclHash
public import Lean.Compiler.LCNF.Internalize


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDeclCacheKey.Varianta00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314

public section

namespace Lean.Compiler.LCNF

structure  AuxDeclCacheKey where
  pu : Purity
  decl : Decl pu
  deriving BEq, Hashable

builtin_initialize auxDeclCacheExt : CacheExtension AuxDeclCacheKey Name ← CacheExtension.register

inductive CacheAuxDeclResult where
  | new
  | alreadyCached (declName : Name)

def cacheAuxDecl (decl : Decl pu) : CompilerM CacheAuxDeclResult := do
  let key := { decl with name := .anonymous }
  let key ← normalizeFVarIds key
  let key := ⟨pu, key⟩
  match (← auxDeclCacheExt.find? key) with
  | some declName =>
    return .alreadyCached declName
  | none =>
    auxDeclCacheExt.insert key decl.name
    return .new

end Lean.Compiler.LCNF
```
