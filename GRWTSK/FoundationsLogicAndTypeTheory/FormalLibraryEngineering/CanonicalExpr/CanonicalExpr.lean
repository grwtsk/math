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
