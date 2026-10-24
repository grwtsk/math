# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Content.Variant262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20a51ff6045b483c95f70d20299178edc8665384` · SHA-256 `262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Architect.Basic
import Architect.Command


open Lean Elab

namespace Architect

/-! The blueprint content in a module (see `BlueprintContent`) consists of:

- Blueprint nodes extracted  from `@[blueprint]` tags
- All module docstrings defined in `blueprint_comment /-- ... -/`

These contents are sorted by declaration range (similar to the sort in doc-gen4).
-/

deriving instance Repr for ModuleDoc in
/-- The export blueprint LaTeX from a module is determined by the list of `BlueprintContent`
in the module. This is analogous to doc-gen4's `ModuleMember`. -/
inductive BlueprintContent where
  | node : NodeWithPos → BlueprintContent
  | modDoc : ModuleDoc → BlueprintContent
deriving Inhabited, Repr

def BlueprintContent.declarationRange : BlueprintContent → Option DeclarationRange
  | .node n => n.location.map (·.range)
  | .modDoc doc => some doc.declarationRange

/-- An order for blueprint contents, based on their declaration range. -/
def BlueprintContent.order (l r : BlueprintContent) : Bool :=
  match l.declarationRange, r.declarationRange with
  | some l, some r => Position.lt l.pos r.pos
  | some _, none => true
  | _, _ => false

/-- Get blueprint contents of the current module. -/
def getMainModuleBlueprintContents : CoreM (Array BlueprintContent) := do
  let env ← getEnv
  let nodes ← (blueprintExt.getEntries env).toArray.mapM fun (_, node) => BlueprintContent.node <$> node.toNodeWithPos
  let modDocs := (getMainModuleBlueprintDoc env).toArray.map BlueprintContent.modDoc
  return (nodes ++ modDocs).qsort BlueprintContent.order

/-- Get blueprint contents of an imported module. -/
def getBlueprintContents (module : Name) : CoreM (Array BlueprintContent) := do
  let env ← getEnv
  let some modIdx := env.getModuleIdx? module | return #[]
  let nodes ← (blueprintExt.getModuleEntries env modIdx).mapM fun (_, node) => BlueprintContent.node <$> node.toNodeWithPos
  let modDocs := (getModuleBlueprintDoc? env module).getD #[] |>.map BlueprintContent.modDoc
  return (nodes ++ modDocs).qsort BlueprintContent.order

end Architect
```
