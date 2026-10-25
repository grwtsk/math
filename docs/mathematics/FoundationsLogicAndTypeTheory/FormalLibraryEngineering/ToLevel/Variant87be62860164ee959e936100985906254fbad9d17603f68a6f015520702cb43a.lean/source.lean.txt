-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLevel.Variant72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToLevel.Variant72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/ToLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller, Alex Keizer
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLevel.Variant72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77

public section

/-!
# `ToLevel` class
This module defines `Lean.ToLevel`, which is the `Lean.Level` analogue to `Lean.ToExpr`.
-/

namespace Lean

/-- A class to create `Level` expressions that denote particular universe levels in Lean.
`Lean.ToLevel.toLevel.{u}` evaluates to a `Lean.Level` term representing `u` -/
class ToLevel.{u} : Type where
  /-- A `Level` that represents the universe level `u`. -/
  toLevel : Level
  /-- A hack to avoid the "unused universe parameter" error.
    We can remove this field pending issue https://github.com/leanprover/lean4/issues/2116 -/
  univ : ∀ (_ : Sort u), True := fun _ => trivial
export ToLevel (toLevel)

instance : ToLevel.{0} where
  toLevel := .zero

instance [ToLevel.{u}] : ToLevel.{u+1} where
  toLevel := .succ toLevel.{u}

/-- `ToLevel` for `max u v`. This is not an instance since it causes divergence. -/
@[instance_reducible]
def ToLevel.max [ToLevel.{u}] [ToLevel.{v}] : ToLevel.{max u v} where
  toLevel := .max toLevel.{u} toLevel.{v}

/-- `ToLevel` for `imax u v`. This is not an instance since it causes divergence. -/
@[instance_reducible]
def ToLevel.imax [ToLevel.{u}] [ToLevel.{v}] : ToLevel.{imax u v} where
  toLevel := .imax toLevel.{u} toLevel.{v}

end Lean
