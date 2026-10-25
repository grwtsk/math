# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Observers.LeanExpressionDag

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `965e212fb593e6d26a18d4e8741667c2d5404b7f` · SHA-256 `45fb100ed2ee1884a0b6d9f823cac6ec807ad43427963a46e904694952c301d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-! A separate bounded observation codec for shared expressions.

The payload renderer is pinned by the host to the existing local expression
observer. Children are explicit backward references in postorder. This avoids
expanding sharing and keeps old depth-256 expression receipts unchanged.
The codec records expression structure; it is not kernel admission.
-/
namespace LeanExpressionDag
open Lean

def maximumNodes : Nat := 1000000
def maximumDepth : Nat := 4096
def maximumRowBytes : Nat := 4194304
def maximumArtifactBytes : Nat := 1073741824

def children : Expr → Array (String × Expr)
  | .app f a => #[("function", f), ("argument", a)]
  | .lam _ t b _ | .forallE _ t b _ => #[("type", t), ("body", b)]
  | .letE _ t v b _ => #[("type", t), ("value", v), ("body", b)]
  | .mdata _ e | .proj _ _ e => #[("expression", e)]
  | _ => #[]

def shallow (e : Expr) (ids : Array Nat) : Expr :=
  match e with
  | .app _ _ => .app (.bvar ids[0]!) (.bvar ids[1]!)
  | .lam n _ _ bi => .lam n (.bvar ids[0]!) (.bvar ids[1]!) bi
  | .forallE n _ _ bi => .forallE n (.bvar ids[0]!) (.bvar ids[1]!) bi
  | .letE n _ _ _ nd => .letE n (.bvar ids[0]!) (.bvar ids[1]!) (.bvar ids[2]!) nd
  | .mdata m _ => .mdata m (.bvar ids[0]!)
  | .proj n i _ => .proj n i (.bvar ids[0]!)
  | other => other

structure Node where
  id : Nat
  depth : Nat

structure Result where
  root : Nat
  nodes : Nat
  depth : Nat
  bytes : Nat
  deriving Repr

def writeDag (render : Expr → Json) (e : Expr) (path : System.FilePath) : IO Result := do
  let handle ← IO.FS.Handle.mk path .write
  let mut table : ExprStructMap Node := {}
  let mut stack : Array (Expr × Bool × Nat) := #[(e, false, 0)]
  let mut totalBytes := 0
  while !stack.isEmpty do
    let (current, ready, callDepth) := stack.back!
    stack := stack.pop
    if table.contains (⟨current⟩ : ExprStructEq) then continue
    if callDepth > maximumDepth then
      throw <| IO.userError "DAG_DEPTH_4096"
    if table.size + stack.size ≥ maximumNodes then
      throw <| IO.userError "DAG_NODE_OR_PENDING_ENVELOPE_1000000"
    let cs := children current
    if !ready && !cs.isEmpty then
      stack := stack.push (current, true, callDepth)
      for (_, child) in cs.reverse do
        if !table.contains (⟨child⟩ : ExprStructEq) then
          stack := stack.push (child, false, callDepth + 1)
      continue
    let mut ids : Array Nat := #[]
    let mut refs : List (String × Json) := []
    let mut depth := 0
    for (field, child) in cs do
      let some node := table[(⟨child⟩ : ExprStructEq)]? | throw <| IO.userError "DAG_CHILD_NOT_READY"
      ids := ids.push node.id
      refs := refs ++ [(field, toJson node.id)]
      depth := max depth (node.depth + 1)
    if depth > maximumDepth then throw <| IO.userError "DAG_DEPTH_4096"
    let id := table.size
    let row := Json.mkObj [("id", toJson id), ("payload", render (shallow current ids)),
      ("children", Json.mkObj refs)]
    let text := row.compress ++ "\n"
    if text.utf8ByteSize > maximumRowBytes then throw <| IO.userError "DAG_ROW_BYTES_4_MIB"
    totalBytes := totalBytes + text.utf8ByteSize
    if totalBytes > maximumArtifactBytes then throw <| IO.userError "DAG_ARTIFACT_BYTES_1_GIB"
    handle.putStr text
    table := table.insert (⟨current⟩ : ExprStructEq) { id, depth }
  handle.flush
  let some root := table[(⟨e⟩ : ExprStructEq)]? | throw <| IO.userError "DAG_ROOT_UNAVAILABLE"
  return { root := root.id, nodes := table.size, depth := root.depth, bytes := totalBytes }

end LeanExpressionDag
```
