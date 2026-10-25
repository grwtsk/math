# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IR.Variant40e7b50e26e1f52c051cce9ddeb1fe248e257929dd93f39f5ac4cdb6e0d7b92a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a7c2fa7abda22de2f446af1aae10e159147a404` · SHA-256 `28ef24c859a2aefadbd311058a14ab96084d9eaf5c3beadc89db25477d69c5a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compile.Variantc3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Compile.Variantc3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/IR.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.Format
public import Lean.Compiler.IR.CompilerM
public import Lean.Compiler.IR.NormIds
public import Lean.Compiler.IR.Checker
public import Lean.Compiler.IR.UnboxResult
public import Lean.Compiler.IR.Sorry
public import Lean.Compiler.IR.ToIR
public import Lean.Compiler.IR.ToIRType
public import Lean.Compiler.IR.Meta

-- The following imports are not required by the compiler. They are here to ensure that there
-- are no orphaned modules.
public import Lean.Compiler.IR.LLVMBindings
public import Lean.Compiler.IR.EmitLLVM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compile.Variantc3a73c794441b0554be859196e71eb46966234a5c937c8824e3176bf1d151fc4

public section

namespace Lean.IR

def compile (decls : Array Decl) : CompilerM (Array Decl) := do
  logDecls `init decls
  checkDecls decls
  let mut decls := decls
  decls ← updateSorryDep decls
  logDecls `result decls
  addDecls decls
  inferMeta decls
  return decls

builtin_initialize
  registerTraceClass `compiler.ir
  registerTraceClass `compiler.ir.init (inherited := true)
  registerTraceClass `compiler.ir.result (inherited := true)

end Lean.IR
```
