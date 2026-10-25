# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EmitUtil.Varianta940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1283439481c82fe7835b7b2d743e5e57bfd1111` · SHA-256 `a940bfa697130609453846c9af49f426cb644a03f3fa4974f3ca947c3798436e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
import Lean.Compiler.LCNF.PhaseExt
import Lean.Compiler.InitAttr

namespace Lean.Compiler.LCNF

structure CollectUsedDeclsState where
  visited : NameSet := {}
  localDecls : Array (Decl .impure) := #[]
  extSigs : Array (Signature .impure) := #[]

/--
Find all declarations that the declarations in `decls` transitively depend on. They are returned
partitioned into the declarations from the current module and declarations from other modules.
-/
public partial def collectUsedDecls (decls : Array Name) :
    CoreM (Array (Decl .impure) × Array (Signature .impure)) := do
  let (_, state) ← go decls |>.run {}
  return (state.localDecls, state.extSigs)
where
  go (names : Array Name) : StateRefT CollectUsedDeclsState CoreM Unit :=
    names.forM fun name => do
      if (← get).visited.contains name then return
      modify fun s => { s with visited := s.visited.insert name }
      if let some decl ← getLocalImpureDecl? name then
        modify fun s => { s with localDecls := s.localDecls.push decl }
        decl.value.forCodeM (·.forM visitCode)
        let env ← getEnv
        if let some initializer := getBuiltinInitFnNameFor? env decl.name <|> getInitFnNameFor? env decl.name then
          go #[initializer]
      else if let some sig ← getImpureSignature? name then
        modify fun s => { s with extSigs := s.extSigs.push sig }
      else
        panic! s!"collectUsedDecls: could not find declaration or signature for '{name}'"

  visitCode (code : Code .impure) : StateRefT CollectUsedDeclsState CoreM Unit := do
    match code with
    | .let decl _ =>
      match decl.value with
      | .const declName .. | .fap declName .. | .pap declName .. =>
        go #[declName]
      | _ => return ()
    | _ => return ()

public def usesModuleFrom (env : Environment) (modulePrefix : Name) : Bool :=
  env.header.modules.any fun mod => mod.irPhases != .comptime && modulePrefix.isPrefixOf mod.module

end Lean.Compiler.LCNF
```
