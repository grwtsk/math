# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SortLocalDecls.Variant479654f1b026d2d406f942f74298cca13c61be069e534a9a2a2457cbdbd0c4b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e139a29d6e68f7d6c7541feada582f3306c6eca` · SHA-256 `6b707822d25084be214d0d78f8f318712c8c01ebca0014d5e5f43622b0420930`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variantb73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Context.Variantb73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/SortLocalDecls.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variantb73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268

public section

open Lean Meta

namespace Qq

namespace SortLocalDecls

structure Context where
  localDecls : NameMap LocalDecl := {}

structure State where
  visited : NameSet := {}
  result  : Array LocalDecl := #[]

abbrev M := ReaderT Context $ StateRefT State MetaM

mutual
  partial def visitExpr (e : Expr) : M Unit := do
    match e with
    | .proj _ _ e    => visitExpr e
    | .forallE _ d b _ => visitExpr d; visitExpr b
    | .lam _ d b _     => visitExpr d; visitExpr b
    | .letE _ t v b _  => visitExpr t; visitExpr v; visitExpr b
    | .app f a       => visitExpr f; visitExpr a
    | .mdata _ b     => visitExpr b
    | .mvar _        => let v ← instantiateMVars e; unless v.isMVar do visitExpr v
    | .fvar fvarId   => if let some localDecl := (← read).localDecls.find? fvarId.name then visitLocalDecl localDecl
    | _              => return ()

  partial def visitLocalDecl (localDecl : LocalDecl) : M Unit := do
    unless (← get).visited.contains localDecl.fvarId.name do
      modify fun s => { s with visited := s.visited.insert localDecl.fvarId.name }
      visitExpr localDecl.type
      if let some val := localDecl.value? then
        visitExpr val
      modify fun s => { s with result := s.result.push localDecl }
end

end SortLocalDecls

open SortLocalDecls in
def sortLocalDecls (localDecls : Array LocalDecl) : MetaM (Array LocalDecl) :=
  let aux : M (Array LocalDecl) := do localDecls.forM visitLocalDecl; return (← get).result
  aux.run { localDecls := localDecls.foldl (init := {}) fun s d => s.insert d.fvarId.name d } |>.run' {}
```
