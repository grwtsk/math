# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe.Variant49d89ebdb67cde50266efbbf309d7df7d1809b4d389cbe01d5cbc8a180311c5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80198ec7e6f2d077c3398994334e49a5530d30e0` · SHA-256 `558f3b7822b469cb3c08ddfb7636902ca69dda2aa2565ae5fbb6db4f26b2d37c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprDag.Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprDag.Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/d6/d64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377--dag-probe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprDag.Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377

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
