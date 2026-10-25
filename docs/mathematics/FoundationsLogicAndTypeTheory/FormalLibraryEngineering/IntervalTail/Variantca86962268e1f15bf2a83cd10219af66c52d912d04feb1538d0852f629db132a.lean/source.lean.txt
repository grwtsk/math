-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalLDLCertificate.Variant33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalLDLCertificate.Variant33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe","mathematical_subject":"Foundations.Unclassified","original_sha256":"33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/IntervalTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.ExactLDL

/-!
# Uniform interval tail certificates

Coefficientwise positivity is not used as a proxy for evaluated matrix
positivity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalLDLCertificate.Variant33516f1ce94cbcef64d3efbb6079ef272f9ec5aafc007b5536447e26c8b29ffe

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalLDLCertificate
    (rank : Nat)
    (interval : QInterval) where
  evaluatedDefect : ℚ → RationalMatrix rank
  truncationOrder : Nat
  lower : ℚ → RationalMatrix rank
  diagonal : ℚ → Fin rank → ℚ
  pivots_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ index,
        0 ≤ diagonal q index
  tailQuadratic :
    ℚ → (Fin rank → ℚ) → ℚ
  tail_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ tailQuadratic q vector
  exactDecomposition : Prop
  exactDecompositionProof :
    exactDecomposition
  evaluated_nonnegative :
    ∀ q,
      interval.lower ≤ q →
      q ≤ interval.upper →
      ∀ vector,
        0 ≤ rationalQuadraticForm
          (evaluatedDefect q) vector

end Mathematics.SemiLocalDefect.QSeries
