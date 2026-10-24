# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inaccessible.Variant7857310990d63fac824c07b91c3d110d81703e47fdf04b0e85443ea28962f9f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad18009b1dd78319ce2f5486a9b8df67c727242f` · SHA-256 `20f55ac814ae2ab1c9c13a079a1991c01380ec0a831ed37b77cd83c9fcf08d1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanLocalContextInaccessibleFVars.Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LeanLocalContextInaccessibleFVars.Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c","mathematical_subject":"Computation.DataStructures","original_sha256":"64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/Inaccessible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Meta


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanLocalContextInaccessibleFVars.Variant64bcf0367377a92c3b6d5e6cd365ed6c3db4c1719cf1d2c615cfadde06a5591c

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
