# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldConsts.Variant774190cea08a030f48448faf39748d5817bd69e8f3fc7abfaf80867dbc5d46f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a76391b76d99ad3e4a7e1508f4de369358f013da` · SHA-256 `83b66463ab52bd274b63245879adf8b1f014fa650126676ee29be8c5d4c64817`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/FoldConsts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.PtrSet
public import Lean.Declaration


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant8d0129eab48b7abe62ea62cbaa6e04f3076f797ffd6bf4f089621de853af72be

public section

namespace Lean
namespace Expr
namespace FoldConstsImpl

unsafe structure State where
 visited       : PtrSet Expr := mkPtrSet
 visitedConsts : NameHashSet := {}

unsafe abbrev FoldM := StateM State

unsafe def fold {α : Type} (f : Name → α → α) (e : Expr) (acc : α) : FoldM α :=
  let rec visit (e : Expr) (acc : α) : FoldM α := do
    if (← get).visited.contains e then
      return acc
    modify fun s => { s with visited := s.visited.insert e }
    match e with
    | .forallE _ d b _   => visit b (← visit d acc)
    | .lam _ d b _       => visit b (← visit d acc)
    | .mdata _ b         => visit b acc
    | .letE _ t v b _    => visit b (← visit v (← visit t acc))
    | .app f a           => visit a (← visit f acc)
    | .proj _ _ b        => visit b acc
    | .const c _         =>
      if (← get).visitedConsts.contains c then
        return acc
      else
        modify fun s => { s with visitedConsts := s.visitedConsts.insert c };
        return f c acc
    | _ => return acc
  visit e acc

@[inline] unsafe def foldUnsafe {α : Type} (e : Expr) (init : α) (f : Name → α → α) : α :=
  (fold f e init).run' {}

end FoldConstsImpl

/-- Apply `f` to every constant occurring in `e` once. -/
@[implemented_by FoldConstsImpl.foldUnsafe]
opaque foldConsts {α : Type} (e : Expr) (init : α) (f : Name → α → α) : α := init

def getUsedConstants (e : Expr) : Array Name :=
  e.foldConsts #[] fun c cs => cs.push c

/-- Like `Expr.getUsedConstants`, but produce a `NameSet`. -/
def getUsedConstantsAsSet (e : Expr) : NameSet :=
  e.foldConsts {} fun c cs => cs.insert c

end Expr

namespace ConstantInfo

/-- Return all names appearing in the type or value of a `ConstantInfo`. -/
def getUsedConstantsAsSet (c : ConstantInfo) : NameSet :=
  c.type.getUsedConstantsAsSet ++ match c.value? (allowOpaque := true) with
  | some v => v.getUsedConstantsAsSet
  | none => match c with
    | .inductInfo val => .ofList val.ctors
    | .ctorInfo val => ({} : NameSet).insert val.name
    | .recInfo val => .ofList val.all
    | _ => {}

end ConstantInfo
end Lean
```
