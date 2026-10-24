-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/LOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd

public section
universe u

open Lean

namespace Lean

inductive LOption (α : Type u) where
  | none  : LOption α
  | some  : α → LOption α
  | undef : LOption α
  deriving Inhabited, BEq

instance [ToString α] : ToString (LOption α) where
  toString
    | .none   => "none"
    | .undef  => "undef"
    | .some a => "(some " ++ toString a ++ ")"

def LOption.toOption : LOption α → Option α
  | .some a => .some a
  | _ => .none

def Option.toLOption {α : Type u} : Option α → LOption α
  | none   => .none
  | some a => .some a

@[inline] def toLOptionM {α} {m : Type → Type} [Monad m] (x : m (Option α)) : m (LOption α) := do
  let b ← x
  return b.toLOption

end Lean
