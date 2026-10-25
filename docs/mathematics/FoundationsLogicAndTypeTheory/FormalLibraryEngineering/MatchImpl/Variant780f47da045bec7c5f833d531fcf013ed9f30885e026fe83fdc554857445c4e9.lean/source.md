# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchImpl.Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5313916b22dfc762b85dcc3773f6812e3ae6afdd` · SHA-256 `b83e8654b7aa01c309468f3e6a73edc8543d269108e594d740dea06a1e68b7c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PatVarDecl.Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PatVarDecl.Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/MatchImpl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Qq.MetaM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PatVarDecl.Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742

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
