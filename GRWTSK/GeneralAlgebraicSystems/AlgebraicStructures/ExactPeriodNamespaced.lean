-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ExactPeriodOfHasOrderAndFaithful.Variant1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ExactPeriodOfHasOrderAndFaithful.Variant1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/ExactPeriod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.ExactPeriod

/-!
# Folder.Theorem.Research.ExactPeriod

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.exact_period
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.ExactPeriodOfHasOrderAndFaithful.Variant1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc

namespace Folder
namespace Theorem
namespace Research
namespace ExactPeriod

theorem exact_period_of_hasOrder_and_faithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hOrder : Arithmetic.HasOrder G P n)
    (hFaithful : Folder.Research.ExactPeriod.ActionFaithful A) :
    Folder.Research.ExactPeriod.HasExactPeriod A P n :=
  Folder.Research.ExactPeriod.exact_period_of_hasOrder_and_faithful
    A P hOrder hFaithful

end ExactPeriod
end Research
end Theorem
end Folder
