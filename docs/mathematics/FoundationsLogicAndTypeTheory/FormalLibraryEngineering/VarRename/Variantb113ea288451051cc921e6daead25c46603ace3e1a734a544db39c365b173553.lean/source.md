# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variantb113ea288451051cc921e6daead25c46603ace3e1a734a544db39c365b173553

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6568a0dc4222d2d4cb5afe01c3d3b8989dfbc2a` · SHA-256 `c02fe9f6d2dddf54d794d3d4cdc8fa1b6c1cdef61f6fb5b4c0c238ad3693d703`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.VarRename.Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/VarRename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Array.QSort
public import Std.Data.HashSet
public import Init.Data.Hashable


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40

public section
namespace Lean.Meta.Grind

abbrev Var : Type := Nat
abbrev FoundVars := Std.HashSet Nat

abbrev VarCollector := FoundVars → FoundVars

def collectVar (x : Var) : VarCollector := (·.insert x)

instance : AndThen VarCollector where
  andThen c₁ c₂ := fun s => c₂ () (c₁ s)

def collectMapVars {_ : BEq α} {_ : Hashable α} (m : Std.HashMap α Expr) (k : α → VarCollector) : VarCollector := fun s => Id.run do
  let mut s := s
  for (a, _) in m do
    s := k a s
  return s

def FoundVars.toArray (s : FoundVars) : Array Var :=
  Std.HashSet.toArray s |>.qsort

structure VarRename where
  map : Std.HashMap Var Var

instance : CoeFun VarRename (fun _ => Var → Var) where
  coe := fun s x => s.map[x]?.getD 0

def mkVarRename (new2old : Array Var) : VarRename := Id.run do
  let mut old2new : Std.HashMap Var Var := {}
  let mut new := 0
  for old in new2old do
    old2new := old2new.insert old new
    new := new + 1
  { map := old2new }

end Lean.Meta.Grind
```
