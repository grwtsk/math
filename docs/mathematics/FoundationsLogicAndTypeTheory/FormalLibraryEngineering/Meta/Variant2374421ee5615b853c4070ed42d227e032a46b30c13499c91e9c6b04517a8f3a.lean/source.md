# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant2374421ee5615b853c4070ed42d227e032a46b30c13499c91e9c6b04517a8f3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78baf11edab928a6425bae6458fb1411f742118c` · SHA-256 `2374421ee5615b853c4070ed42d227e032a46b30c13499c91e9c6b04517a8f3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Compiler.IR.CompilerM

public section

namespace Lean.IR

private partial def collectUsedFDecls (decl : IR.Decl) : NameSet :=
  collectDecl decl |>.run {} |>.2
where
  collectDecl : Decl → StateM NameSet Unit
    | .fdecl (body := b) .. => collectFnBody b
    | .extern .. => pure ()
  collectFnBody : FnBody → StateM NameSet Unit
    | .vdecl _ _ v b   =>
      match v with
      | .fap f _ => collect f *> collectFnBody b
      | .pap f _ => collect f *> collectFnBody b
      | _        => collectFnBody b
    | .jdecl _ _ v b   => collectFnBody v *> collectFnBody b
    | .case _ _ _ alts => alts.forM fun alt => collectFnBody alt.body
    | e => unless e.isTerminal do collectFnBody e.body
  collect (f : FunId) : StateM NameSet Unit :=
    modify (·.insert f)

private partial def setClosureMeta (decl : Decl) : CompilerM Unit := do
  for ref in collectUsedFDecls decl do
    if isDeclMeta (← getEnv) ref then
      continue
    let some d ← findLocalDecl ref | continue
    trace[compiler.ir.inferMeta] m!"Marking {ref} as meta because it is in `meta` closure"
    modifyEnv (setDeclMeta · ref)
    setClosureMeta d

partial def inferMeta (decls : Array Decl) : CompilerM Unit := do
  if !(← getEnv).header.isModule then
    return
  for decl in decls do
    if isMarkedMeta (← getEnv) decl.name then
      trace[compiler.ir.inferMeta] m!"Marking {decl.name} as meta because it is tagged with `meta`"
      modifyEnv (setDeclMeta · decl.name)
      setClosureMeta decl

/--
Checks meta availability just before `evalConst`. This is a "last line of defense" as accesses
should have been checked at declaration time in case of attributes. We do not solely want to rely on
errors from the interpreter itself as those depend on whether we are running in the server.
-/
@[export lean_eval_check_meta]
private partial def evalCheckMeta (env : Environment) (declName : Name) : Except String Unit := do
  if getIRPhases env declName == .runtime then
      throw s!"Cannot evaluate constant `{declName}` as it is neither marked nor imported as `meta`"

builtin_initialize
  registerTraceClass `compiler.ir.inferMeta
```
