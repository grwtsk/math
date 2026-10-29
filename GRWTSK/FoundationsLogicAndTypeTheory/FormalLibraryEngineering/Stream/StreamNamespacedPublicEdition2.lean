-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variant439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Stream.Variant439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Stream
public import Init.Data.Iterators.Consumers.Monadic.Access


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variant439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6

set_option linter.missingDocs true

public section

namespace Std
open Std.Iterators

instance {α β} [Iterator α Id β] [Productive α Id] [IteratorAccess α Id] :
    Stream (Iter (α := α) β) β where
  next? it := match (it.toIterM.nextAtIdx? 0).run with
    | .yield it' out _ => some (out, it'.toIter)
    | .skip _ h => False.elim ?noskip
    | .done _ => none
  where finally
    case noskip =>
      revert h
      exact IterM.not_isPlausibleNthOutputStep_yield

end Std
