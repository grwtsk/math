# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compat.Variante22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b92fd58b692aaf2ac139163bf22ba452dc6e83b` · SHA-256 `e22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Lean.Elab.InfoTree.Main

public meta section

namespace ProofWidgets
open Lean Server Elab

/-- See `RpcEncodable`. -/
abbrev LazyEncodable α := StateM RpcObjectStore α

-- back from exile
structure ExprWithCtx where
  ci : Elab.ContextInfo
  lctx : LocalContext
  linsts : LocalInstances
  expr : Expr
  deriving TypeName

def ExprWithCtx.runMetaM (e : ExprWithCtx) (x : Expr → MetaM α) : IO α :=
  e.ci.runMetaM {} $
    Meta.withLCtx e.lctx e.linsts (x e.expr)

def ExprWithCtx.save (e : Expr) : MetaM ExprWithCtx :=
  return {
    ci := { ← CommandContextInfo.save with }
    lctx := ← getLCtx
    linsts := ← Meta.getLocalInstances
    expr := e
  }

end ProofWidgets
```
