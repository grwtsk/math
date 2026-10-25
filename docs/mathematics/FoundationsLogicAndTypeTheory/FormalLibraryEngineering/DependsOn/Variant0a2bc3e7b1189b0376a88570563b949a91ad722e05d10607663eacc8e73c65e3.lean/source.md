# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DependsOn.Variant0a2bc3e7b1189b0376a88570563b949a91ad722e05d10607663eacc8e73c65e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27c24c4ec5c5842c387658f8838eb758150ba670` · SHA-256 `712c81c6f893322cd690aa3908b49e4fdaf4e06db57f24c85613086818250824`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M.Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.M.Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/DependsOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M.Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc

public section

namespace Lean.Compiler.LCNF

private abbrev M := ReaderT FVarIdSet Id

private def fvarDepOn (fvarId : FVarId) : M Bool :=
  return (← read).contains fvarId

private def typeDepOn (e : Expr) : M Bool := do
  let s ← read
  return e.hasAnyFVar fun fvarId => s.contains fvarId

private def argDepOn (a : Arg pu) : M Bool := do
  match a with
  | .erased => return false
  | .fvar fvarId => fvarDepOn fvarId
  | .type e _ => typeDepOn e

private def letValueDepOn (e : LetValue pu) : M Bool :=
  match e with
  | .erased | .lit .. => return false
  | .proj _ _ fvarId _ | .oproj _ fvarId _ | .uproj _ fvarId _ | .sproj _ _ fvarId _
  | .reset _ fvarId  _ | .box _ fvarId _ | .unbox fvarId _ | .isShared fvarId _ => fvarDepOn fvarId
  | .fvar fvarId args | .reuse fvarId _ _ args _ => fvarDepOn fvarId <||> args.anyM argDepOn
  | .const _ _ args _ | .ctor _ args _ | .fap _ args _ | .pap _ args _ => args.anyM argDepOn

private def LetDecl.depOn (decl : LetDecl pu) : M Bool :=
  typeDepOn decl.type <||> letValueDepOn decl.value

private partial def depOn (c : Code pu) : M Bool :=
  match c with
  | .let decl k => decl.depOn <||> depOn k
  | .jp decl k | .fun decl k _ => typeDepOn decl.type <||> depOn decl.value <||> depOn k
  | .cases c => typeDepOn c.resultType <||> fvarDepOn c.discr <||> c.alts.anyM fun alt => depOn alt.getCode
  | .jmp fvarId args => fvarDepOn fvarId <||> args.anyM argDepOn
  | .return fvarId => fvarDepOn fvarId
  | .unreach _ => return false
  | .oset fv1 _ fv2 k _ =>
    fvarDepOn fv1 <||> argDepOn fv2 <||> depOn k
  | .sset fv1 _ _ fv2 _ k _ | .uset fv1 _ fv2 k _ =>
    fvarDepOn fv1 <||> fvarDepOn fv2 <||> depOn k
  | .inc (fvarId := fvarId) (k := k) .. | .dec (fvarId := fvarId) (k := k) ..
  | .del (fvarId := fvarId) (k := k) .. | .setTag (fvarId := fvarId) (k := k) .. =>
    fvarDepOn fvarId <||> depOn k

@[inline] def Arg.dependsOn (arg : Arg pu) (s : FVarIdSet) :  Bool :=
  argDepOn arg s

@[inline] def LetValue.dependsOn (value : LetValue pu) (s : FVarIdSet) :  Bool :=
  letValueDepOn value s

@[inline] def LetDecl.dependsOn (decl : LetDecl pu) (s : FVarIdSet) :  Bool :=
  decl.depOn s

@[inline] def FunDecl.dependsOn (decl : FunDecl pu) (s : FVarIdSet) :  Bool :=
  typeDepOn decl.type s || depOn decl.value s

def CodeDecl.dependsOn (decl : CodeDecl pu) (s : FVarIdSet) : Bool :=
  match decl with
  | .let decl => decl.dependsOn s
  | .jp decl | .fun decl _ => decl.dependsOn s
  | .oset (fvarId := fvarId) (y := y) .. =>
    s.contains fvarId || y.dependsOn s
  | .uset (fvarId := fvarId) (y := y) ..
  | .sset (fvarId := fvarId) (y := y) .. =>
    s.contains fvarId || s.contains y
  | .inc (fvarId := fvarId) .. | .dec (fvarId := fvarId) .. | .del (fvarId := fvarId) ..
  | .setTag (fvarId := fvarId) .. =>
    s.contains fvarId

/--
Return `true` is `c` depends on a free variable in `s`.
-/
def Code.dependsOn (c : Code pu) (s : FVarIdSet) : Bool :=
  depOn c s

end Lean.Compiler.LCNF
```
