-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MvPolynomial.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","mathematical_subject":"Algebra.Polynomials","original_sha256":"785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/KrullDimension/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
module

public import Mathlib.Algebra.MvPolynomial.Basic
public import Mathlib.RingTheory.KrullDimension.Basic


namespace GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3

variable {R : Type*} [CommSemiring R]

proof_wanted MvPolynomial.fin_ringKrullDim_eq_add_of_isNoetherianRing
    [IsNoetherianRing R] (n : ℕ) :
    ringKrullDim (MvPolynomial (Fin n) R) = ringKrullDim R + n
