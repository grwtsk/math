# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZetaNonvanishingIndex.Variante82aec7169680a793f2bf873f5c0e596bca68ebf6296c082482df163d35a6252

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae312d4cc6b98e792e3f15d2d6e2d67789098246` · SHA-256 `dd2fc393e91a940b35b22365f79906688cb9271bd156de816128186556d288a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusDirichletSeriesConvergenceAnchor.Variant92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MobiusDirichletSeriesConvergenceAnchor.Variant92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5","mathematical_subject":"Computation.DataStructures","original_sha256":"92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/ZetaNonvanishingIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ZetaNonvanishingHalfPlane
import Folder.Rebuild.Exposition.ComplexEulerProductIndex

/-!
# Folder.Rebuild.Exposition.ZetaNonvanishingIndex

Exposition anchors for the checked Möbius-inverse nonvanishing theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusDirichletSeriesConvergenceAnchor.Variant92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5

namespace Folder
namespace Rebuild
namespace Exposition

def mobiusDirichletSeriesConvergenceAnchor : ClassicalAnchor where
  shortName := "Moebius Dirichlet convergence"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "mobiusDirichlet_absSummable"
  mathematicalContent :=
    "The Moebius Dirichlet series is absolutely summable for Re(s) greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def dirichletCauchyProductAnchor : ClassicalAnchor where
  shortName := "Generic Dirichlet Cauchy product"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "complexDirichletSeries_mul_of_absSummable"
  mathematicalContent :=
    "The checked generic Cauchy product multiplies absolutely summable Dirichlet series by Dirichlet convolution."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaNonvanishingHalfPlaneAnchor : ClassicalAnchor where
  shortName := "Zeta nonvanishing half-plane"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "zetaComplexHalfPlane_ne_zero"
  mathematicalContent :=
    "The ordinary complex zeta Dirichlet series is nonzero for Re(s) greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaZeroFreeLineOneTargetAnchor : ClassicalAnchor where
  shortName := "Zeta zero-free line target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaZeroFreeLineReOneTarget"
  mathematicalContent :=
    "The boundary-line zero-free theorem remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The prime-counting asymptotic route remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def analyticContinuationStillTargetAnchor : ClassicalAnchor where
  shortName := "Analytic continuation still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation remains outside the checked half-plane Dirichlet-series theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaNonvanishingAnchors : List ClassicalAnchor :=
  [ mobiusDirichletSeriesConvergenceAnchor
  , dirichletCauchyProductAnchor
  , zetaNonvanishingHalfPlaneAnchor
  , zetaZeroFreeLineOneTargetAnchor
  , pntStillTargetAnchor
  , analyticContinuationStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```
