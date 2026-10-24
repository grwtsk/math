-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Operations.Variant288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Operations.Variant288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/Quotient/Noetherian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.Noetherian.Basic

/-!
# Noetherian quotient rings and quotient modules
-/


namespace GRWTSK.Algebra.Operations.Variant288257784b10921cc606a1e42d874e528e4ea56535201399aff00a508369d7c2

instance Ideal.Quotient.isNoetherianRing {R : Type*} [CommRing R] [IsNoetherianRing R]
    (I : Ideal R) : IsNoetherianRing (R ⧸ I) :=
  isNoetherianRing_iff.mpr <| isNoetherian_of_tower R <| inferInstance
