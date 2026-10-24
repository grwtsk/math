-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FvarsSubset.Variant1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FvarsSubset.Variant1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/FVarSubset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.CollectFVars
public import Lean.Util.FindExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FvarsSubset.Variant1ece35e73ecc61771089ff0e67135df21c48c1f1eda33c3c06d27283864448e0

public section

namespace Lean.Expr

/-- Returns true if the free variables in `a` are subset of the free variables in `b`. -/
def fvarsSubset (a b : Expr) : Bool :=
  if !a.hasFVar then
    true -- Empty set is subset of anything
  else if !b.hasFVar then
    false -- Empty set is not a superset of a nonempty set.
  else
    let s := collectFVars {} b
    Option.isNone <| a.findExt? fun e =>
      if !e.hasFVar then .done
      else if e.isFVar && !s.fvarSet.contains e.fvarId! then .found
      else .visit

end Lean.Expr
