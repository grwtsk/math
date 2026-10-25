# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesOn.Variant91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b7e47f14924f17e6f6fd3c0779148a7169fe843` · SHA-256 `91750559fcd44effdf35419684873c94a91f43a0463bad9f10c0795acf90ecd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.AddDecl

public section

namespace Lean

@[extern "lean_mk_cases_on"] opaque mkCasesOnImp (env : Kernel.Environment) (declName : @& Name) : Except Kernel.Exception Declaration

open Meta

def mkCasesOn (declName : Name) : MetaM Unit := do
  withTraceNode `Meta.mkCasesOn (fun _ => return m!"{declName}") do
  let name := mkCasesOnName declName
  let decl ← ofExceptKernelException (mkCasesOnImp (← getEnv).toKernelEnv declName)
  addDecl decl
  setReducibleAttribute name
  modifyEnv fun env => markAuxRecursor env name
  enableRealizationsForConst name

builtin_initialize
  registerTraceClass `Meta.mkCasesOn

end Lean
```
