# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant90b746bcd02b48a5296c74eff29ede92e3e0383a76764b814cd3e1c34f922f5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bd28694e7f3be093bd987bcdc5647e04aa46b3e` · SHA-256 `015fdd7139aa4699209c71946bad513b0e8d63a111c456c14b2287ff26f11661`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunForNodeKind.Variantb1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunForNodeKind.Variantb1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/PrettyPrinter/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.KeyedDeclsAttribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunForNodeKind.Variantb1a70f0c928d549cc34bc8483d3c2a7f07fa685bd5c0523e55350a0d19226c2c

public section

namespace Lean
namespace PrettyPrinter

/- Auxiliary internal exception for backtracking the pretty printer.
   See `orelse.parenthesizer` for example -/
builtin_initialize backtrackExceptionId : InternalExceptionId ← registerInternalExceptionId `backtrackFormatter

unsafe def runForNodeKind {α} (attr : KeyedDeclsAttribute α) (k : SyntaxNodeKind) (interp : ParserDescr → CoreM α) : CoreM α := do
  match attr.getValues (← getEnv) k with
  | p::_ => pure p
  | _ =>
    -- assume `k` is from a `ParserDescr`, in which case we assume it's also the declaration name
    let info ← getConstInfo k
    if info.type.isConstOf ``ParserDescr || info.type.isConstOf ``TrailingParserDescr then
      let d ← evalConst ParserDescr k
      interp d
    else
      throwError "no declaration of attribute [{attr.defn.name}] found for `{k}`"

end PrettyPrinter
end Lean
```
