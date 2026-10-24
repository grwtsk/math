# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexEulerProductIndex.Variant17f0bf3ba2854109376d2a75b913acae5e88ab3b3caa7a249ea3d12fc531d86c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6eb0c3e311d051cb0c5c3772f30a83ba199df79` · SHA-256 `f7da80289bd29da86017e61812c98e9cd2f05121fadce9ebb9563eda612c1239`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexWeightNormAnchor.Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ComplexWeightNormAnchor.Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a","mathematical_subject":"Computation.DataStructures","original_sha256":"7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/ComplexEulerProductIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductConvergence
import Folder.Rebuild.Exposition.RealEulerProductIndex

/-!
# Folder.Rebuild.Exposition.ComplexEulerProductIndex

Exposition anchors for the checked complex half-plane Euler-product layer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexWeightNormAnchor.Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a

namespace Folder
namespace Rebuild
namespace Exposition

def complexWeightNormAnchor : ClassicalAnchor where
  shortName := "Complex weight norm"
  paperOrBook := "Checked rebuild complex half-plane layer"
  theoremLabel := "norm_complexWeight_le_posWeightReal_re"
  mathematicalContent :=
    "The norm of the complex Dirichlet weight is bounded by the real positive weight at the real part."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexZetaHalfPlaneConvergenceAnchor : ClassicalAnchor where
  shortName := "Complex zeta half-plane convergence"
  paperOrBook := "Checked rebuild complex half-plane layer"
  theoremLabel := "tendsto_zetaPartialComplex"
  mathematicalContent :=
    "The ordinary complex zeta Dirichlet partial sums converge when Re(s) is greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexEulerProductConvergenceAnchor : ClassicalAnchor where
  shortName := "Complex Euler-product convergence"
  paperOrBook := "Checked rebuild complex half-plane layer"
  theoremLabel := "tendsto_zetaEulerApproxComplex"
  mathematicalContent :=
    "Diagonal finite complex Euler products over primes up to N with cutoff N converge to the complex zeta series when Re(s) is greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexZetaNonzeroHalfPlaneTargetAnchor : ClassicalAnchor where
  shortName := "Complex zeta nonzero half-plane target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "zetaComplexHalfPlane_nonzero_target"
  mathematicalContent :=
    "Nonvanishing in the complex half-plane remains target-only until the inverse-product argument is formalized."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaAnalyticContinuationStillTargetAnchor : ClassicalAnchor where
  shortName := "Zeta analytic continuation still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation of zeta is outside this checked half-plane layer."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntRouteStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT route still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The route from zeta analytic information to prime asymptotics remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def complexEulerProductAnchors : List ClassicalAnchor :=
  [ complexWeightNormAnchor
  , complexZetaHalfPlaneConvergenceAnchor
  , complexEulerProductConvergenceAnchor
  , complexZetaNonzeroHalfPlaneTargetAnchor
  , zetaAnalyticContinuationStillTargetAnchor
  , pntRouteStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```
