-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasPPUsingAnonymousConstructorAttribute.Variant88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasPPUsingAnonymousConstructorAttribute.Variant88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/PrettyPrinter/Delaborator/Attributes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasPPUsingAnonymousConstructorAttribute.Variant88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26

public section

/-!
# Attributes for the pretty printer

This module defines attributes that influence pretty printer output.
-/

namespace Lean

/-- Marks a structure to be pretty printed using the anonymous constructor notation (`⟨a, b, c⟩`). -/
@[builtin_doc]
builtin_initialize ppUsingAnonymousConstructorAttr : TagAttribute ←
  registerTagAttribute `pp_using_anonymous_constructor "mark structure to be pretty printed using `⟨a,b,c⟩` notation"

/-- Marks a declaration to never be pretty printed using field notation. -/
@[builtin_doc]
builtin_initialize ppNoDotAttr : TagAttribute ←
  registerTagAttribute `pp_nodot "mark declaration to never be pretty printed using field notation"

/--
Returns whether or not the given declaration has the `@[pp_using_anonymous_constructor]` attribute.
-/
def hasPPUsingAnonymousConstructorAttribute (env : Environment) (declName : Name) : Bool :=
  ppUsingAnonymousConstructorAttr.hasTag env declName

/--
Returns whether or not the given declaration has the `@[pp_nodot]` attribute.
-/
def hasPPNoDotAttribute (env : Environment) (declName : Name) : Bool :=
  ppNoDotAttr.hasTag env declName

end Lean
