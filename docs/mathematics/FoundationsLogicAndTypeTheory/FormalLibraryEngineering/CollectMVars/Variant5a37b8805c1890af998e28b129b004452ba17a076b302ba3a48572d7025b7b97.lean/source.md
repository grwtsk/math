# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectMVars.Variant5a37b8805c1890af998e28b129b004452ba17a076b302ba3a48572d7025b7b97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af58f0343e0ecbcc582eaf7866e7538912a47e8` · SHA-256 `5687f684777605d4be25385ead283442ef0355c4add31fb55176a6af16aea5c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantbac04ff0a38648d7b202ae7c67e29e3683c991af74a4ae8f311440ab97bf8cb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bac04ff0a38648d7b202ae7c67e29e3683c991af74a4ae8f311440ab97bf8cb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantbac04ff0a38648d7b202ae7c67e29e3683c991af74a4ae8f311440ab97bf8cb2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bac04ff0a38648d7b202ae7c67e29e3683c991af74a4ae8f311440ab97bf8cb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/CollectMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantbac04ff0a38648d7b202ae7c67e29e3683c991af74a4ae8f311440ab97bf8cb2

public section

namespace Lean

namespace CollectMVars

structure State where
  visitedExpr  : ExprSet      := {}
  result       : Array MVarId := #[]

instance : Inhabited State := ⟨{}⟩

abbrev Visitor := State → State

mutual
  partial def visit (e : Expr) : Visitor := fun s =>
    if !e.hasExprMVar || s.visitedExpr.contains e then s
    else main e { s with visitedExpr := s.visitedExpr.insert e }

  partial def main : Expr → Visitor
    | Expr.proj _ _ e      => visit e
    | Expr.forallE _ d b _ => visit b ∘ visit d
    | Expr.lam _ d b _     => visit b ∘ visit d
    | Expr.letE _ t v b _  => visit b ∘ visit v ∘ visit t
    | Expr.app f a         => visit a ∘ visit f
    | Expr.mdata _ b       => visit b
    | Expr.mvar mvarId     => fun s => { s with result := s.result.push mvarId }
    | _                    => id
end

end CollectMVars

def Expr.collectMVars (s : CollectMVars.State) (e : Expr) : CollectMVars.State :=
  CollectMVars.visit e s

end Lean
```
