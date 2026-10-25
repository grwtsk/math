# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantbb9809600043f2bfe35917caf5ff67f121079c0c0bc639d4ebf03612ad069b3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2fc16aadb0b4b5280d36d053c79898eae300b1c` · SHA-256 `90b47dd868a2d2a220f9ffe9058b1f9252d7c46382969bda45b084698ede6c81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compile.Variante0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Compile.Variante0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF
import Lean.Compiler.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compile.Variante0fa0702ac051782323c4fda93e025d378da03b26b4e411569ba4189492c6511

public section

namespace Lean.Compiler
/--
Run the code generation pipeline for all declarations in `declNames`
that fulfill the requirements of `shouldGenerateCode`.
-/
def compile (declNames : Array Name) : CoreM Unit := do profileitM Exception "compiler new" (← getOptions) do
  withOptions (compiler.postponeCompile.set · false) do
  withTraceNode `Compiler (fun _ => return m!"compiling: {declNames}") do
    LCNF.main declNames {}

builtin_initialize
  registerTraceClass `Compiler
  registerTraceClass `Compiler.stat

end Lean.Compiler
```
