-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ext.Variant32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Control/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
import Std.Tactic.Ext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4

namespace ReaderT

attribute [ext] ReaderT.ext

@[simp] theorem run_failure [Monad m] [Alternative m] (ctx : ρ) :
    (failure : ReaderT ρ m α).run ctx = failure := rfl

@[simp] theorem run_orElse [Monad m] [Alternative m] (x y : ReaderT ρ m α) (ctx : ρ) :
    (x <|> y).run ctx = (x.run ctx <|> y.run ctx) := rfl

end ReaderT

namespace StateT

attribute [ext] StateT.ext

@[simp] theorem run_failure {α σ} [Monad m] [Alternative m] (s : σ) :
    (failure : StateT σ m α).run s = failure := rfl

@[simp] theorem run_orElse {α σ} [Monad m] [Alternative m] (x y : StateT σ m α) (s : σ) :
    (x <|> y).run s = (x.run s <|> y.run s) := rfl

end StateT
