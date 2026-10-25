-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SectorProducts.Variantfa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SectorProducts.Variantfa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87","mathematical_subject":"Foundations.Unclassified","original_sha256":"fa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/fa/fa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87--SectorRegression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.SectorProducts

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SectorProducts.Variantfa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87

open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector

#check @PFOrder
#print PFOrder
#print fixture_pfThree
#print axioms fixture_pfThree
#print fixture_negative_orderFour
#print axioms fixture_negative_orderFour
#print fixture_not_pfFour
#print axioms fixture_not_pfFour

example (a : ℕ → ℝ) : PFOrder 0 a := pfOrder_zero a
example (η : ℝ) (hη : 0 ≤ η) (R : ℕ) :
    PFOrder R (Quadratic.coefficient (2 * η * Real.cos 0) (η ^ 2)) :=
  quadratic_pfOrder η 0 R hη le_rfl (by simpa using Real.pi_pos.le)
example : PFOrder 3 (Quadratic.coefficient (2 * Real.cos (Real.pi / 4)) 1) := by
  simpa using quadratic_pfOrder 1 (Real.pi / 4) 3 (by norm_num)
    (by positivity) (by norm_num; linarith)
example (r c : Fin 3 ↪o ℕ) : 0 ≤ minor (Quadratic.coefficient (3 / 2) 1) r c :=
  fixture_pfThree 3 le_rfl r c
