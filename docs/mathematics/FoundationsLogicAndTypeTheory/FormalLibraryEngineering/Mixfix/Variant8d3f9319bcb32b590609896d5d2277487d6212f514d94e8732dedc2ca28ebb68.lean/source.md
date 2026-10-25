# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mixfix.Variant8d3f9319bcb32b590609896d5d2277487d6212f514d94e8732dedc2ca28ebb68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1269f0323d20050241a425b426b3d939eed5966f` · SHA-256 `e62a54e188614d114a4227cc6fe7f0f3c3749ece770d3deceb8b7556daffff09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variante05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attributes.Variante05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Mixfix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Attributes
import Init.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variante05debcf4b236906d8fc05ed4944a0208c8c9c9722147fb8529e908b4780bb06

public section

namespace Lean.Elab.Command

@[builtin_macro Lean.Parser.Command.mixfix] def expandMixfix : Macro := fun stx =>
  withAttrKindGlobal stx fun stx => do
    match stx with
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? infixl:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      let prec1 := quote <| (← evalPrec prec) + 1
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? lhs:$prec $op rhs:$prec1 => $f lhs rhs)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? infix:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      let prec1 := quote <| (← evalPrec prec) + 1
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? lhs:$prec1 $op rhs:$prec1 => $f lhs rhs)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? infixr:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      let prec1 := quote <| (← evalPrec prec) + 1
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? lhs:$prec1 $op rhs:$prec => $f lhs rhs)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? prefix:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? $op arg:$prec => $f arg)
    | `($[$doc?:docComment]? $[@[$attrs?,*]]? postfix:$prec $[(name := $name)]? $[(priority := $prio)]? $op => $f) =>
      `($[$doc?:docComment]? $[@[$attrs?,*]]? notation:$prec $[(name := $name)]? $[(priority := $prio)]? arg:$prec $op => $f arg)
    | _ => Macro.throwUnsupported
where
  -- set "global" `attrKind`, apply `f`, and restore `attrKind` to result
  withAttrKindGlobal stx f := do
    let attrKind := stx[2]
    let stx  := stx.setArg 2 mkAttrKindGlobal
    let stx ← f stx
    return stx.raw.setArg 2 attrKind

end Lean.Elab.Command
```
