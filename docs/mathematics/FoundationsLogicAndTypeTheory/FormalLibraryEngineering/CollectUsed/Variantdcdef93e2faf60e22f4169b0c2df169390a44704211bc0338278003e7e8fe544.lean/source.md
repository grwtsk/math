# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectUsed.Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ddd35b32ad78e5961a50e5c96c1d7482ee47ac0` · SHA-256 `dcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Architect.Basic

/-!
This is similar to Lean's `collectAxioms`, but collects nodes in the blueprint (plus all axioms)
rather than just axioms.
-/

namespace Architect

open Lean

namespace CollectUsed

structure Context where
  env : Environment
  root : Name

structure State where
  visited : NameSet    := {}
  used    : Array Name := #[]

abbrev M := ReaderT Context $ StateM State

partial def collect (c : Name) : M Unit := do
  let collectExpr (e : Expr) : M Unit := e.getUsedConstants.forM collect
  let s ← get
  unless s.visited.contains c do
    modify fun s => { s with visited := s.visited.insert c }
    let { env, root } ← read
    -- When we collect constants used by `a`, we don't just want to return `{a}`.
    if c != root && (blueprintExt.find? env c).isSome then
      modify fun s => { s with used := s.used.push c }
    else
      -- This line is `match env.checked.get.find? c with` in Lean.CollectAxioms
      match env.find? c with
      | some (ConstantInfo.axiomInfo _)  => modify fun s => { s with used := s.used.push c }
      | some (ConstantInfo.defnInfo v)   => collectExpr v.type *> collectExpr v.value
      | some (ConstantInfo.thmInfo v)    => collectExpr v.type *> collectExpr v.value
      | some (ConstantInfo.opaqueInfo v) => collectExpr v.type *> collectExpr v.value
      | some (ConstantInfo.quotInfo _)   => pure ()
      | some (ConstantInfo.ctorInfo v)   => collectExpr v.type
      | some (ConstantInfo.recInfo v)    => collectExpr v.type
      | some (ConstantInfo.inductInfo v) => collectExpr v.type *> v.ctors.forM collect
      | none                             => pure ()

end CollectUsed

/--
Returns the irreflexive transitive set of blueprint nodes that a constant depends on,
as a pair of sets (constants used by type, constants used by value).
They are made disjoint except that possibly both contain `sorryAx`.
-/
def collectUsed [Monad m] [MonadEnv m] [MonadError m] (constName : Name) :
    m (NameSet × NameSet) := do
  let env ← getEnv
  let mut s : CollectUsed.State := {}

  -- Collect constants used by statement
  let info ← getConstInfo constName
  for c in info.type.getUsedConstants do
    (_, s) := ((CollectUsed.collect c).run { env, root := constName }).run s
  let typeUsed := NameSet.ofArray s.used

  -- Collect constants used by proof
  (_, s) := ((CollectUsed.collect constName).run { env, root := constName }).run s
  let valueUsed := NameSet.ofArray s.used

  return (typeUsed, valueUsed \ typeUsed.erase ``sorryAx)

end Architect
```
