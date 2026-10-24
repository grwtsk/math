-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadGetVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadGetVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/MonadVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadGetVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e

public section
namespace Lean.Meta.Sym.Arith

/-- Read a variable's Lean expression by index. Used by `DenoteExpr` and diagnostics (PP). -/
class MonadGetVar (m : Type → Type) where
  getVar : Var → m Expr

export MonadGetVar (getVar)

@[always_inline]
instance (m n) [MonadLift m n] [MonadGetVar m] : MonadGetVar n where
  getVar x := liftM (getVar x : m Expr)

/-- Create or lookup a variable for a Lean expression. Used by reification. -/
class MonadMkVar (m : Type → Type) where
  mkVar : Expr → m Var

export MonadMkVar (mkVar)

@[always_inline]
instance (m n) [MonadLift m n] [MonadMkVar m] : MonadMkVar n where
  mkVar e := liftM (mkVar e : m Var)

end Lean.Meta.Sym.Arith
