# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalExpr.Variantfe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bce5272ad526d94af06439a44e15703c840c35d5` · SHA-256 `fe987dd16a1310a6abac643d3c5d903cfe9dc551ed16f5fc8beb38d17c757658`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

namespace Noeoueue.Export

partial def canonicalExpr : Lean.Expr -> String
  | .bvar i => "b:" ++ toString i
  | .fvar id => "f:" ++ toString id.name
  | .mvar id => "m:" ++ toString id.name
  | .sort u => "sort:" ++ toString u
  | .const n us => "const:" ++ n.toString ++ ":" ++ String.intercalate "," (us.map toString)
  | .app f a => "app(" ++ canonicalExpr f ++ "," ++ canonicalExpr a ++ ")"
  | .lam _ t b _ => "lam(" ++ canonicalExpr t ++ "," ++ canonicalExpr b ++ ")"
  | .forallE _ t b _ => "forall(" ++ canonicalExpr t ++ "," ++ canonicalExpr b ++ ")"
  | .letE _ t v b _ => "let(" ++ canonicalExpr t ++ "," ++ canonicalExpr v ++ "," ++ canonicalExpr b ++ ")"
  | .lit (.natVal n) => "nat:" ++ toString n
  | .lit (.strVal s) => "str:" ++ s
  | .mdata _ e => canonicalExpr e
  | .proj n i e => "proj:" ++ n.toString ++ ":" ++ toString i ++ "(" ++ canonicalExpr e ++ ")"

end Noeoueue.Export
```
