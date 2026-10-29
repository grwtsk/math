-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dvd.Variant7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Dvd.Variant7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Classes/Dvd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dvd.Variant7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5

/-- Notation typeclass for the `∣` operation (typed as `\|`), which represents divisibility. -/
class Dvd (α : Type _) where
  /-- Divisibility. `a ∣ b` (typed as `\|`) means that there is some `c` such that `b = a * c`. -/
  dvd : α → α → Prop

@[inherit_doc] infix:50 " ∣ " => Dvd.dvd
