-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdMkEta.Variantf8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ProdMkEta.Variantf8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Data/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad
-/
import Mathlib.Init.Logic
import Mathlib.Util.CompileInductive

/-! ### alignments from lean 3 `init.data.prod` -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdMkEta.Variantf8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31

set_option autoImplicit true

compile_inductive% Prod

@[simp]
theorem Prod.mk.eta : ∀ {p : α × β}, (p.1, p.2) = p
  | (_, _) => rfl
