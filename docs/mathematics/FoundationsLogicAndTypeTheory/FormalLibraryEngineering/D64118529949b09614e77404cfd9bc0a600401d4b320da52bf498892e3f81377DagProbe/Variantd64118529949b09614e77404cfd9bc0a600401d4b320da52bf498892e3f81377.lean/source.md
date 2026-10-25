# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe.Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `601248d91e368e43baec5a7440c301aba66765c1` · SHA-256 `d64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
open Lean
private structure ExprDag where
  seen : Std.HashMap Expr Nat := {}
  canonical : Std.HashMap String Nat := {}
  nodes : Array Json := #[]
private partial def encodeExpr (e : Expr) : StateM ExprDag Nat := do
  if let some n := (← get).seen[e]? then return n
  if let .mdata _ b := e then return ← encodeExpr b
  let data : Json ← match e with
    | .bvar n => pure <| toJson [toJson "bvar", toJson n]
    | .fvar n => pure <| toJson [toJson "fvar", toJson (reprStr n)]
    | .mvar n => pure <| toJson [toJson "mvar", toJson (reprStr n)]
    | .sort l => pure <| toJson [toJson "sort", toJson (reprStr l)]
    | .const n ls => pure <| toJson [toJson "const", toJson (reprStr n), toJson (ls.map reprStr)]
    | .lit v => pure <| toJson [toJson "lit", toJson (reprStr v)]
    | .app f a => do pure <| toJson [toJson "app", toJson (← encodeExpr f), toJson (← encodeExpr a)]
    | .lam _ t b i => do pure <| toJson [toJson "lam", toJson (← encodeExpr t), toJson (← encodeExpr b), toJson (reprStr i)]
    | .forallE _ t b i => do pure <| toJson [toJson "forall", toJson (← encodeExpr t), toJson (← encodeExpr b), toJson (reprStr i)]
    | .letE _ t v b n => do pure <| toJson [toJson "let", toJson (← encodeExpr t), toJson (← encodeExpr v), toJson (← encodeExpr b), toJson n]
    | .proj t i b => do pure <| toJson [toJson "proj", toJson (reprStr t), toJson i, toJson (← encodeExpr b)]
    | .mdata _ b => do pure <| toJson [toJson "unreachable", toJson (← encodeExpr b)]
  let s ← get
  if let some n := s.canonical[data.compress]? then
    modify fun s => {s with seen := s.seen.insert e n}
    return n
  let n := s.nodes.size
  set ({seen := s.seen.insert e n, canonical := s.canonical.insert data.compress n, nodes := s.nodes.push data} : ExprDag)
  return n
private def serialize (e : Expr) : String :=
  let (root, s) := (encodeExpr e).run {}
  (Json.mkObj [("root", toJson root), ("nodes", toJson s.nodes)]).compress
#eval serialize (mkApp (mkConst `Nat.succ) (mkNatLit 1))
```
