-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantfb8966a1cddaef4bb63da9b8e558d7f6691327be5de29ecf53c0468d85b50f0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb8966a1cddaef4bb63da9b8e558d7f6691327be5de29ecf53c0468d85b50f0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantfb8966a1cddaef4bb63da9b8e558d7f6691327be5de29ecf53c0468d85b50f0d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb8966a1cddaef4bb63da9b8e558d7f6691327be5de29ecf53c0468d85b50f0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/CollectLooseBVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantfb8966a1cddaef4bb63da9b8e558d7f6691327be5de29ecf53c0468d85b50f0d

public section

/-!
# Collecting set of loose bound variables

This module provides a function for collecting the set of loose bvars in an expression.
This means finding the set of `i` for which `e.hasLooseBVar i` is true.
-/

namespace Lean.Expr

namespace CollectLooseBVars

structure State where
  visited : Std.HashSet (Nat × Expr) := {}
  bvars : Std.HashSet Nat := {}

abbrev M := StateM State

partial def main (e : Expr) (offset : Nat) : M Unit := do
  if offset < e.looseBVarRange then
    unless (← get).visited.contains (offset, e) do
      modify fun s => { s with visited := s.visited.insert (offset, e) }
      match e with
      | .bvar idx =>
        -- `idx ≥ offset` is true if `looseBVarRange` has not overflowed. It currently has the range [0,2^20).
        modify fun s => { s with bvars := s.bvars.insert (idx - offset) }
      | .fvar .. | .mvar .. | .sort .. | .const .. | .lit .. => pure ()
      | .app f a => main f offset; main a offset
      | .lam _ t b _ | .forallE _ t b _ => main t offset; main b (offset + 1)
      | .letE _ t v b _ => main t offset; main v offset; main b (offset + 1)
      | .mdata _ e' => main e' offset
      | .proj _ _ e' => main e' offset

end CollectLooseBVars

/--
Collects the loose bound variables in `e` with indices at least `offset`.
Returns a set of indices relative to `offset`.

Specification: `i ∈ e.collectLooseBVars offset ↔ e.hasLooseBVar (i + offset)`.
-/
def collectLooseBVars (e : Expr) (offset : Nat := 0) : Std.HashSet Nat :=
  if e.hasLooseBVars then
    let (_, s) := CollectLooseBVars.main e offset |>.run {}
    s.bvars
  else
    {}

end Lean.Expr
