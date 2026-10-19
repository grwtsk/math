-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingsAndFields
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsSimpleRingExistsAlgEquivMatrixOfIsAlgClosed.Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsSimpleRingExistsAlgEquivMatrixOfIsAlgClosed.Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleModule/IsAlgClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.RingTheory.SimpleModule.WedderburnArtin

/-!
# Wedderburn-Artin Theorem over an algebraically closed field
-/


namespace FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsSimpleRingExistsAlgEquivMatrixOfIsAlgClosed.Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1

theorem IsSimpleRing.exists_algEquiv_matrix_of_isAlgClosed (F R) [Field F] [IsAlgClosed F]
    [Ring R] [IsSimpleRing R] [Algebra F R] [FiniteDimensional F R] :
    ∃ (n : ℕ) (_ : NeZero n), Nonempty (R ≃ₐ[F] Matrix (Fin n) (Fin n) F) :=
  have := IsArtinianRing.of_finite F R
  have ⟨n, hn, D, _, _, _, ⟨e⟩⟩ := exists_algEquiv_matrix_divisionRing_finite F R
  ⟨n, hn, ⟨e.trans <| .mapMatrix <| .symm <| .ofBijective (Algebra.ofId F D)
    IsAlgClosed.algebraMap_bijective_of_isIntegral⟩⟩
