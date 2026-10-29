-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkBorrowed.Varianta19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MarkBorrowed.Varianta19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/BorrowedAnnotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkBorrowed.Varianta19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b

public section
namespace Lean

def markBorrowed (e : Expr) : Expr :=
  mkAnnotation `borrowed e

def isMarkedBorrowed (e : Expr) : Bool :=
  annotation? `borrowed e |>.isSome

end Lean
