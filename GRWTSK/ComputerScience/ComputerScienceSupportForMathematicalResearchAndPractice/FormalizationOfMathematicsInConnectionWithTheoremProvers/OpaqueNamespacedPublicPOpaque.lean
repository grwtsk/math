-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"c1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Opaque.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
import Init.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd

namespace Lake

opaque POpaque.nonemptyType.{u} : NonemptyType.{u}

/-- An value of unknown type in a specific universe. -/
public def POpaque : Type u := POpaque.nonemptyType.type

/-- An value of unknown type. -/
public abbrev Opaque : Type := POpaque

namespace POpaque

public instance instNonempty : Nonempty POpaque := by
  exact POpaque.nonemptyType.property

/-- Cast away a value's type and universe. -/
public opaque mk.{v,u} {α : Type u} (a : α) : POpaque.{v} :=
  unsafe unsafeCast a

/-- Cast away a value's type and universe. -/
public abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.POpaqueNonemptyType.Variantc1f705fef9d3077c5561baaa2cbf22fda53b92286354d1433180f3eb924eb4fd.Lake.Opaque.mk {α : Type u} (a : α) : Opaque := POpaque.mk a

/--
Cast an opaque value to a specific type.

This operation is unsafe because there is no guarantee that the opaque
value is of type `α` or that its real value can soundly fit inside the
opaque value's universe.
-/
public unsafe def cast {α : Type u} (self : POpaque.{v}) : α :=
  unsafeCast self

/-- Like `cast`, but with an explicit type. -/
public unsafe abbrev castTo (α : Type u) (self : POpaque.{v}) : α :=
  self.cast
