# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsS.Variantc4e0377a5a0e4a69228153ab17a2b5b75ff3f70399f158fc9da735fc88b2594b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cbd03caeee53f040712fe0222419d5eaba5c8b1` · SHA-256 `7796d966c36a080c37580374076b9ea129bd5b67fef038894fa6bebeda214737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsS.Variant45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InstantiateMVarsS.Variant45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/InstantiateMVarsS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsS.Variant45d9aa9b8c9a1e001c73ba784446d3cb30e9b60bcd325e2545ed99cc9f997aaa

namespace Lean.Meta.Sym

/--
Instantiates metavariables occurring in `e`, and returns a maximally shared term.
-/
public def instantiateMVarsS (e : Expr) : SymM Expr := do
  if e.hasMVar then
    -- **Note**: If this is a bottleneck, write a new function that combines both steps.
    shareCommon (← instantiateMVars e)
  else
    return e

/--
Head-only variant of `instantiateMVarsS`: instantiates and reshares only when the head of `e` is a
metavariable, otherwise returns `e` unchanged.
-/
public def instantiateMVarsIfMVarAppS (e : Expr) : SymM Expr := do
  if e.getAppFn.isMVar then
    instantiateMVarsS e
  else
    return e

end Lean.Meta.Sym
```
