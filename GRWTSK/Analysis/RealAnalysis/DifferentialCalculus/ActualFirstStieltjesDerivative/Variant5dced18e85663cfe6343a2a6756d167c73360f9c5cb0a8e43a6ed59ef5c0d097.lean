-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstStieltjesDeriv.Variant33060a09d140232c6a44c8e3112222faa6c720286122e5b671c64bf829f26624","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33060a09d140232c6a44c8e3112222faa6c720286122e5b671c64bf829f26624","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualFirstStieltjesDeriv.Variant33060a09d140232c6a44c8e3112222faa6c720286122e5b671c64bf829f26624","mathematical_subject":"Analysis.Calculus","original_sha256":"33060a09d140232c6a44c8e3112222faa6c720286122e5b671c64bf829f26624","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass21/stieltjes_derivative/ActualFirstStieltjesDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualStieltjesParameter
import ActualStieltjesBoundary

/-! Unconditional identification of the actual P17 first Stieltjes sequence limit
with the derivative of Mathlib's actual entire zeta regularization.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
No RH, PNT, Ramaré estimate, signed bound, or target derivative premise. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstStieltjesDeriv.Variant33060a09d140232c6a44c8e3112222faa6c720286122e5b671c64bf829f26624

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFirstStieltjesDerivative
open ContinuousResearch.ActualFirstStieltjes

/-- The exact child #328 proposition, with its independent sequence constant. -/
theorem actual_firstStieltjes_deriv :
    deriv riemannZeta₀ (1 : ℂ) = -(firstStieltjesConstant : ℂ) :=
  ActualStieltjesBoundary.actual_regular_zeta_derivative_of_termTSum
    ActualStieltjesParameter.termTSum_hasDerivAt_one

/-- Genuine complex derivative, stronger than a totalized `deriv` equality. -/
theorem actual_firstStieltjes_hasDerivAt :
    HasDerivAt riemannZeta₀ (-(firstStieltjesConstant : ℂ)) (1 : ℂ) :=
  ActualStieltjesBoundary.actual_regular_zeta_hasDerivAt_of_termTSum
    ActualStieltjesParameter.termTSum_hasDerivAt_one

end ContinuousResearch.ActualFirstStieltjesDerivative

#print ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_deriv
#print axioms ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_deriv
#print ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_hasDerivAt
#print axioms ContinuousResearch.ActualFirstStieltjesDerivative.actual_firstStieltjes_hasDerivAt
