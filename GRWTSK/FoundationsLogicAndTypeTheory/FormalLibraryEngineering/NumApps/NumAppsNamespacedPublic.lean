-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantbe2d61cc78483003e1cdf0c9953c49303a839087ef5b408a162083e5a44f1a58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be2d61cc78483003e1cdf0c9953c49303a839087ef5b408a162083e5a44f1a58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantbe2d61cc78483003e1cdf0c9953c49303a839087ef5b408a162083e5a44f1a58","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"be2d61cc78483003e1cdf0c9953c49303a839087ef5b408a162083e5a44f1a58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/NumApps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Lean.Util.PtrSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantbe2d61cc78483003e1cdf0c9953c49303a839087ef5b408a162083e5a44f1a58

public section

namespace Lean.Expr
namespace NumApps

unsafe structure State where
 visited  : PtrSet Expr := mkPtrSet
 counters : NameMap Nat := {}

unsafe abbrev M := StateM State

unsafe def visit (e : Expr) : M Unit :=
  unless (← get).visited.contains e do
    modify fun s => { s with visited := s.visited.insert e }
    match e with
      | .forallE _ d b _ => visit d; visit b
      | .lam _ d b _     => visit d; visit b
      | .mdata _ b       => visit b
      | .letE _ t v b _  => visit t; visit v; visit b
      | .app ..          => e.withApp fun f args => do
        if let .const declName _ := f then
          let c := (← get).counters.find? declName |>.getD 0
          modify fun s => { s with counters := s.counters.insert declName (c+1) }
        visit f
        args.forM visit
      | .proj _ _ b      => visit b
      | _                => return ()

unsafe def main (e : Expr) : NameMap Nat :=
  let (_, s) := NumApps.visit e |>.run {}
  s.counters

end NumApps

/--
Returns the number of applications for each declaration used in `e`.

This operation is performed in `IO` because the result depends on the memory representation of the object.

Note: Use this function primarily for diagnosing performance issues.
-/
def numApps (e : Expr) (threshold : Nat := 0) : IO (Array (Name × Nat)) := do
  let counters := unsafe NumApps.main e
  let mut result := #[]
  for (declName, num) in counters do
    if num > threshold then
      result := result.push (declName, num)
  return result.qsort fun a b => a.2 > b.2

end Lean.Expr
