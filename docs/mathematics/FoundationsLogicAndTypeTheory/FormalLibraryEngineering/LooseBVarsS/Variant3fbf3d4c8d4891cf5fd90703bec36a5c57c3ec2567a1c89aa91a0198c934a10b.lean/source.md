# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LooseBVarsS.Variant3fbf3d4c8d4891cf5fd90703bec36a5c57c3ec2567a1c89aa91a0198c934a10b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69b134038d399e1ec55df1091b5427fde6deba30` · SHA-256 `67a039dbb0be3c097386cc2e2deb102534a94ee21da72aecde7dfaa21332c854`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LowerLooseBVarsSPrime.Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LowerLooseBVarsSPrime.Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/LooseBVarsS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.ReplaceS

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LowerLooseBVarsSPrime.Variant7d76c0e4c2235af09852cbc57f63535f5b64d2df1def408521faa2466c36e6f4

public section
namespace Lean.Meta.Sym
open Lean.Meta.Sym.Internal
/--
Lowers the loose bound variables `>= s` in `e` by `d`.
That is, a loose bound variable `bvar i` with `i >= s` is mapped to `bvar (i-d)`.
It assumes the input is maximally shared, and ensures the output is too.
Remark: if `s < d`, then the result is `e`.
-/
def lowerLooseBVarsS' (e : Expr) (s d : Nat) : AlphaShareBuilderM Expr := do
  replaceS' e fun e offset => do
    let s₁ := s + offset
    if s₁ >= e.looseBVarRange then
      return some e -- `e` does not contain bound variables with idx >= s₁
    else match e with
    | .bvar idx =>
      if idx >= s₁ then
        return some (← mkBVarS (idx - d))
      else
        return none
    | _ => return none

@[inherit_doc lowerLooseBVarsS']
def lowerLooseBVarsS (e : Expr) (s d : Nat) : SymM Expr :=
  liftBuilderM <| lowerLooseBVarsS' e s d

/--
Lifts loose bound variables `>= s` in `e` by `d`.
It assumes the input is maximally shared, and ensures the output is too.
-/
def liftLooseBVarsS' (e : Expr) (s d : Nat) : AlphaShareBuilderM Expr := do
  replaceS' e fun e offset => do
    let s₁ := s + offset
    if s₁ >= e.looseBVarRange then
      return some e -- `e` does not contain bound variables with idx >= s₁
    else match e with
    | .bvar idx =>
      if idx >= s₁ then
        return some (← mkBVarS (idx + d))
      else
        return none
    | _ => return none

@[inherit_doc liftLooseBVarsS']
def liftLooseBVarsS (e : Expr) (s d : Nat) : SymM Expr :=
  liftBuilderM <| liftLooseBVarsS' e s d

end Lean.Meta.Sym
```
