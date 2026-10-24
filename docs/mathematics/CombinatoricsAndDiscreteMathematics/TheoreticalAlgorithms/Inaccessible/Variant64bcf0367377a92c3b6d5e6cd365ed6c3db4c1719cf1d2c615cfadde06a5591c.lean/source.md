# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inaccessible.Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab09e8c2633f2b99cbe1f20d78ca6a21fb01d5c1` · SHA-256 `64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Meta

open Lean Lean.Meta

/--
Obtain the inaccessible fvars from the given local context. An fvar is
inaccessible if (a) its user name is inaccessible or (b) it is shadowed by a
later fvar with the same user name.
-/
def Lean.LocalContext.inaccessibleFVars (lctx : LocalContext) :
    Array LocalDecl :=
  let (result, _) :=
    lctx.foldr (β := Array LocalDecl × HashSet Name)
      (init := (Array.mkEmpty lctx.numIndices, {}))
      λ ldecl (result, seen) =>
        if ldecl.isImplementationDetail then
          (result, seen)
        else
          let result :=
            if ldecl.userName.hasMacroScopes || seen.contains ldecl.userName then
              result.push ldecl
            else
              result
          (result, seen.insert ldecl.userName)
  result.reverse

/--
Obtain the inaccessible fvars from the current local context. An fvar is
inaccessible if (a) its user name is inaccessible or (b) it is shadowed by a
later fvar with the same user name.
-/
def Lean.Meta.getInaccessibleFVars [Monad m] [MonadLCtx m] :
    m (Array LocalDecl) :=
  return (← getLCtx).inaccessibleFVars

/--
Rename all inaccessible fvars. An fvar is inaccessible if (a) its user name is
inaccessible or (b) it is shadowed by a later fvar with the same user name. This
function gives all inaccessible fvars a unique, accessible user name. It returns
the new goal and the fvars that were renamed.
-/
def Lean.MVarId.renameInaccessibleFVars (mvarId : MVarId) :
    MetaM (MVarId × Array FVarId) := do
  let mdecl ← mvarId.getDecl
  let mut lctx := mdecl.lctx
  let inaccessibleFVars := lctx.inaccessibleFVars
  if inaccessibleFVars.isEmpty then
    return (mvarId, #[])
  let mut renamedFVars := Array.mkEmpty lctx.decls.size
  for ldecl in inaccessibleFVars do
    let newName := lctx.getUnusedName ldecl.userName
    lctx := lctx.setUserName ldecl.fvarId newName
    renamedFVars := renamedFVars.push ldecl.fvarId
  let newMVar ← mkFreshExprMVarAt lctx mdecl.localInstances mdecl.type
  mvarId.assign newMVar
  return (newMVar.mvarId!, renamedFVars)
```
