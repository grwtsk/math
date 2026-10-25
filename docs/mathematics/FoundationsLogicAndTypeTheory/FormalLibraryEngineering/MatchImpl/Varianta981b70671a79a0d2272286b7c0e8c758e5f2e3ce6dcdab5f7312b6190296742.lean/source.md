# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchImpl.Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98a9e9a19a9524cfaa8133728e0f37ab0d83052d` · SHA-256 `a981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Qq.MetaM

public section

open Lean in
partial def Lean.Syntax.stripPos : Syntax → Syntax
  | atom _ a => atom .none a
  | ident _ r v p => ident .none r v p
  | node _ kind args => node .none kind (args.map stripPos)
  | missing => missing

open Lean Elab Term Meta
open Parser.Term

namespace Qq

namespace Impl

structure PatVarDecl where
  ty : Option Q(Expr)
  fvarId : FVarId
  userName : Name

@[expose] def PatVarDecl.fvarTy : PatVarDecl → Q(Type)
  | { ty := none, .. } => q(Level)
  | { ty := some _, .. } => q(Expr)

def PatVarDecl.fvar (decl : PatVarDecl) : Q($((decl.fvarTy))) :=
  Expr.fvar decl.fvarId

@[expose] def mkIsDefEqType : List PatVarDecl → Q(Type)
  | [] => q(Bool)
  | decl :: decls => q($(decl.fvarTy) × $(mkIsDefEqType decls))

@[expose] def mkIsDefEqResult (val : Bool) : (decls : List PatVarDecl) → Q($(mkIsDefEqType decls))
  | [] => show Q(Bool) from q($val)
  | decl :: decls => q(($(decl.fvar), $(mkIsDefEqResult val decls)))

@[expose] def mkIsDefEqResultVal : (decls : List PatVarDecl) → Q($(mkIsDefEqType decls)) → Q(Bool)
  | [], val => q($val)
  | _ :: decls, val => mkIsDefEqResultVal decls q($val.2)

def mkLambda' (n : Name) (fvar : Expr) (ty : Expr) (body : Expr) : MetaM Expr :=
  return mkLambda n BinderInfo.default ty (← body.abstractM #[fvar])

def mkLet' (n : Name) (fvar : Expr) (ty : Expr) (val : Expr) (body : Expr) : MetaM Expr :=
  return mkLet n ty val (← body.abstractM #[fvar])

def mkLambdaQ (n : Name) (fvar : Quoted α) (body : Quoted β) : MetaM (Quoted (.forallE n α β .default)) :=
  return mkLambda n BinderInfo.default α (← body.abstractM #[fvar])
```
