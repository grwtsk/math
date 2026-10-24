# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RealEulerProductIndex.Variantdec59939d74eb9005c61b504f8d54750ab300b36e8ef6c665b2d85f26fb470c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c890818cb9dabd289292a1f07a1a10a024c9091b` · SHA-256 `c2d4cedc6bac29111265693e0c44691f046f974169d3a612f3c1c7863e21fd06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZetaPartialSumsConvergenceAnchor.Variant88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ZetaPartialSumsConvergenceAnchor.Variant88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382","mathematical_subject":"Computation.DataStructures","original_sha256":"88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/RealEulerProductIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence
import Folder.Rebuild.Exposition.FiniteReindexingIndex

/-!
# Folder.Rebuild.Exposition.RealEulerProductIndex

Exposition anchors for the checked real Euler-product convergence theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZetaPartialSumsConvergenceAnchor.Variant88095b20b46b3075c531b657bbc7591f43eb521a32d1e47804d3d117cb96c382

namespace Folder
namespace Rebuild
namespace Exposition

def zetaPartialSumsConvergenceAnchor : ClassicalAnchor where
  shortName := "Real zeta partial sums"
  paperOrBook := "Checked rebuild real half-plane layer"
  theoremLabel := "tendsto_zetaPartialReal"
  mathematicalContent :=
    "Positive real zeta partial sums converge for sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def realEulerProductConvergenceAnchor : ClassicalAnchor where
  shortName := "Real Euler-product convergence"
  paperOrBook := "Checked rebuild real half-plane layer"
  theoremLabel := "tendsto_zetaEulerApproxReal"
  mathematicalContent :=
    "Diagonal finite Euler products over primes up to N with cutoff N converge to the real zeta series for sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexEulerProductHalfPlaneTargetAnchor : ClassicalAnchor where
  shortName := "Complex Euler product half-plane"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ComplexEulerProductHalfPlaneTarget"
  mathematicalContent :=
    "The complex half-plane Euler product remains a theorem target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaAnalyticContinuationTargetAnchor : ClassicalAnchor where
  shortName := "Zeta analytic continuation"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation of zeta is target-only in this rebuild branch."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntAnalyticRouteStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT analytic route still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The analytic route to prime asymptotics remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def realEulerProductAnchors : List ClassicalAnchor :=
  [ zetaPartialSumsConvergenceAnchor
  , realEulerProductConvergenceAnchor
  , complexEulerProductHalfPlaneTargetAnchor
  , zetaAnalyticContinuationTargetAnchor
  , pntAnalyticRouteStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```
