# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Renaming.Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2782f94335656bf1b90f1da8efd92e76be8409b` · SHA-256 `5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM

public section

namespace Lean.Compiler.LCNF
/--
A mapping from free variable id to binder name.
-/
abbrev Renaming := FVarIdMap Name

def Param.applyRenaming (param : Param pu) (r : Renaming) : CompilerM (Param pu) := do
  if let some binderName := r.get? param.fvarId then
    let param := { param with binderName }
    modifyLCtx fun lctx => lctx.addParam param
    return param
  else
    return param

def LetDecl.applyRenaming (decl : LetDecl pu) (r : Renaming) : CompilerM (LetDecl pu) := do
  if let some binderName := r.get? decl.fvarId then
    let decl := { decl with binderName }
    modifyLCtx fun lctx => lctx.addLetDecl decl
    return decl
  else
    return decl

mutual
partial def FunDecl.applyRenaming (decl : (FunDecl pu)) (r : Renaming) : CompilerM (FunDecl pu) := do
  if let some binderName := r.get? decl.fvarId then
    let decl := decl.updateBinderName binderName
    modifyLCtx fun lctx => lctx.addFunDecl decl
    decl.updateValue (← decl.value.applyRenaming r)
  else
    decl.updateValue (← decl.value.applyRenaming r)

partial def Code.applyRenaming (code : Code pu) (r : Renaming) : CompilerM (Code pu) := do
  match code with
  | .let decl k => return code.updateLet! (← decl.applyRenaming r) (← k.applyRenaming r)
  | .fun decl k _ | .jp decl k => return code.updateFun! (← decl.applyRenaming r) (← k.applyRenaming r)
  | .cases c =>
    let alts ← c.alts.mapMonoM fun alt =>
      match alt with
      | .default k => return alt.updateCode (← k.applyRenaming r)
      | .alt _ ps k _ => return alt.updateAlt! (← ps.mapMonoM (·.applyRenaming r)) (← k.applyRenaming r)
      | .ctorAlt _ k _ => return alt.updateCode (← k.applyRenaming r)
    return code.updateAlts! alts
  | .jmp .. | .unreach .. | .return .. => return code
  | .oset (k := k) .. | .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) ..
  | .del (k := k) .. | .setTag (k := k) .. =>
    return code.updateCont! (← k.applyRenaming r)
end

def Decl.applyRenaming (decl : Decl pu) (r : Renaming) : CompilerM (Decl pu) := do
  if r.isEmpty then
    return decl
  else
    let params ← decl.params.mapMonoM (·.applyRenaming r)
    let value ← decl.value.mapCodeM (·.applyRenaming r)
    return { decl with params, value }

end Lean.Compiler.LCNF
```
