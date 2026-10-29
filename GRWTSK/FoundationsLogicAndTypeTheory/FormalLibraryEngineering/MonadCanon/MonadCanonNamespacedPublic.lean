-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCanon.Variant2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadCanon.Variant2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/MonadCanon.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCanon.Variant2c2002ef04f6070cd4404191ebbff330fd63b840f22e3585e23027a736bb0cce

public section
namespace Lean.Meta.Sym.Arith

class MonadCanon (m : Type → Type) where
  /--
  Canonicalize an expression (types, instances, support arguments).
  In `SymM`, this is `Sym.canon`. In `PP.M` (diagnostics), this is the identity.
  -/
  canonExpr : Expr → m Expr
  /--
  Synthesize an instance, returning `none` on failure.
  In `SymM`, this is `Sym.synthInstance?`. In `PP.M`, this is `Meta.synthInstance?`.
  -/
  synthInstance? : Expr → m (Option Expr)

export MonadCanon (canonExpr)

@[always_inline]
instance (m n) [MonadLift m n] [MonadCanon m] : MonadCanon n where
  canonExpr e := liftM (canonExpr e : m Expr)
  synthInstance? e := liftM (MonadCanon.synthInstance? e : m (Option Expr))

def MonadCanon.synthInstance [Monad m] [MonadError m] [MonadCanon m] (type : Expr) : m Expr := do
  let some inst ← synthInstance? type
    | throwError "failed to find instance{indentExpr type}"
  return inst

end Lean.Meta.Sym.Arith
