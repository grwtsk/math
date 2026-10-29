-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extra.Variantfd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Extra.Variantfd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Parser/Level.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Parser.Extra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extra.Variantfd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102

public section

namespace Lean
namespace Parser

builtin_initialize
  registerBuiltinParserAttribute `builtin_level_parser ``Category.level

@[inline] def levelParser (rbp : Nat := 0) : Parser :=
  categoryParser `level rbp

namespace Level

@[builtin_level_parser] def paren  := leading_parser
  "(" >> withoutPosition levelParser >> ")"
@[builtin_level_parser] def max    := leading_parser
  nonReservedSymbol "max" true  >> many1 (ppSpace >> levelParser maxPrec)
@[builtin_level_parser] def imax   := leading_parser
  nonReservedSymbol "imax" true >> many1 (ppSpace >> levelParser maxPrec)
@[builtin_level_parser] def hole   := leading_parser
  "_"
@[builtin_level_parser] def num    :=
  checkPrec maxPrec >> numLit
@[builtin_level_parser] def ident  :=
  checkPrec maxPrec >> Parser.ident
@[builtin_level_parser] def addLit := trailing_parser:65
  " + " >> numLit

end Level

end Parser
end Lean
