-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasNeverExtractAttribute.Variantd8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasNeverExtractAttribute.Variantd8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/NeverExtractAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasNeverExtractAttribute.Variantd8d3696924e8de7a22bef04fe1bda5d3e31a34e286f3144a500117b45b7034f7

public section

namespace Lean

/--
Instructs the compiler that function applications using the tagged declaration should not be
extracted when they are closed terms, and that common subexpression elimination should not be
performed.

Ordinarily, the Lean compiler identifies closed terms (without free variables) and extracts them
to top-level definitions. This optimization can prevent unnecessary recomputation of values.

Preventing the extraction of closed terms is useful for declarations that have implicit effects
that should be repeated.
-/
@[builtin_doc]
builtin_initialize neverExtractAttr : TagAttribute ←
  registerTagAttribute `never_extract "instruct the compiler that function applications using the tagged declaration should not be extracted when they are closed terms, nor common subexpression should be performed. This is useful for declarations that have implicit effects."

partial def hasNeverExtractAttribute (env : Environment) (n : Name) : Bool :=
  let rec visit (n : Name) : Bool := neverExtractAttr.hasTag env n || (n.isInternal && visit n.getPrefix)
  visit n

end Lean
