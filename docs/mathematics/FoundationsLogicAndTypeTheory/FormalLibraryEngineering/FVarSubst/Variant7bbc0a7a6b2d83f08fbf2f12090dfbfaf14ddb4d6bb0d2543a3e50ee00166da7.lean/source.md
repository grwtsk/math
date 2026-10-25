# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarSubst.Variant7bbc0a7a6b2d83f08fbf2f12090dfbfaf14ddb4d6bb0d2543a3e50ee00166da7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f183a9edccd5d80d1df1d84c7b4ab0fc6284684e` · SHA-256 `cc3b1065f9c41088b74348ca763b6247e05c01efdb07ed14e3de2ff81e41b572`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarSubst.Variant246e92b89b2c550d98178de7ff7aad2041a2ef5203bd628bde5793f9f1913875","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"246e92b89b2c550d98178de7ff7aad2041a2ef5203bd628bde5793f9f1913875","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FVarSubst.Variant246e92b89b2c550d98178de7ff7aad2041a2ef5203bd628bde5793f9f1913875","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"246e92b89b2c550d98178de7ff7aad2041a2ef5203bd628bde5793f9f1913875","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/FVarSubst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

prelude
public import Lean.Data.AssocList
public import Lean.LocalContext
public import Lean.Util.ReplaceExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarSubst.Variant246e92b89b2c550d98178de7ff7aad2041a2ef5203bd628bde5793f9f1913875

public section

namespace Lean.Meta
/--
  Some tactics substitute hypotheses with expressions.
  We track these substitutions using `FVarSubst`.
  It is just a mapping from the original FVarId (internal) name
  to an expression. The free variables occurring in the expression must
  be defined in the new goal. -/
structure FVarSubst where
  map : AssocList FVarId Expr := {}
  deriving Inhabited

namespace FVarSubst

def empty : FVarSubst := {}

def isEmpty (s : FVarSubst) : Bool :=
  s.map.isEmpty

def contains (s : FVarSubst) (fvarId : FVarId) : Bool :=
  s.map.contains fvarId

/-- Add entry `fvarId |-> v` to `s` if `s` does not contain an entry for `fvarId`. -/
def insert (s : FVarSubst) (fvarId : FVarId) (v : Expr) : FVarSubst :=
  if s.contains fvarId then s
  else
    let map := s.map.mapVal fun e => e.replaceFVarId fvarId v;
    { map := map.insertNew fvarId v }

def erase (s : FVarSubst) (fvarId : FVarId) : FVarSubst :=
  { map := s.map.erase fvarId }

def find? (s : FVarSubst) (fvarId : FVarId) : Option Expr :=
  s.map.find? fvarId

def get (s : FVarSubst) (fvarId : FVarId) : Expr :=
  match s.map.find? fvarId with
  | none   => mkFVar fvarId -- it has not been replaced
  | some v => v

/-- Given `e`, for each `(x => v)` in `s` replace `x` with `v` in `e` -/
def apply (s : FVarSubst) (e : Expr) : Expr :=
  if s.map.isEmpty then e
  else if !e.hasFVar then e
  else e.replace fun e => match e with
    | Expr.fvar fvarId => match s.map.find? fvarId with
      | none   => e
      | some v => v
    | _ => none

def domain (s : FVarSubst) : List FVarId :=
  s.map.foldl (init := []) fun r k _ => k :: r

def any (p : FVarId → Expr → Bool) (s : FVarSubst) : Bool :=
  s.map.any p

/--
Constructs a substitution consisting of `s` followed by `t`.
This satisfies `(s.append t).apply e = t.apply (s.apply e)`
-/
def append (s t : FVarSubst) : FVarSubst :=
  s.1.foldl (fun s' k v => s'.insert k (t.apply v)) t

end FVarSubst
end Meta

def LocalDecl.applyFVarSubst (s : Meta.FVarSubst) : LocalDecl → LocalDecl
  | LocalDecl.cdecl i id n t bi k   => LocalDecl.cdecl i id n (s.apply t) bi k
  | LocalDecl.ldecl i id n t v nd k => LocalDecl.ldecl i id n (s.apply t) (s.apply v) nd k

abbrev Expr.applyFVarSubst (s : Meta.FVarSubst) (e : Expr) : Expr :=
  s.apply e

end Lean
```
