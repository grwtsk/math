# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalContext.Variantfa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06c3dac3dd2eea0edae06a75323496be283ee66d` · SHA-256 `fa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Jannis Limperg
-/
import Lean.LocalContext

namespace Lean

/--
Set the kind of a `LocalDecl`.
-/
def LocalDecl.setKind : LocalDecl → LocalDeclKind → LocalDecl
  | cdecl index fvarId userName type bi _, kind =>
      cdecl index fvarId userName type bi kind
  | ldecl index fvarId userName type value nonDep _, kind =>
      ldecl index fvarId userName type value nonDep kind

namespace LocalContext

/--
Given an `FVarId`, this function returns the corresponding user name,
but only if the name can be used to recover the original FVarId.
-/
def getRoundtrippingUserName? (lctx : LocalContext) (fvarId : FVarId) : Option Name := do
  let ldecl₁ ← lctx.find? fvarId
  let ldecl₂ ← lctx.findFromUserName? ldecl₁.userName
  guard <| ldecl₁.fvarId == ldecl₂.fvarId
  some ldecl₁.userName

/--
Set the kind of the given fvar.
-/
def setKind (lctx : LocalContext) (fvarId : FVarId)
    (kind : LocalDeclKind) : LocalContext :=
  lctx.modifyLocalDecl fvarId (·.setKind kind)

/--
Sort the given `FVarId`s by the order in which they appear in `lctx`. If any of
the `FVarId`s do not appear in `lctx`, the result is unspecified.
-/
def sortFVarsByContextOrder (lctx : LocalContext) (hyps : Array FVarId) : Array FVarId :=
  let hyps := hyps.map λ fvarId =>
    match lctx.fvarIdToDecl.find? fvarId with
    | none => (0, fvarId)
    | some ldecl => (ldecl.index, fvarId)
  hyps.qsort (λ h i => h.fst < i.fst) |>.map (·.snd)

end LocalContext
```
