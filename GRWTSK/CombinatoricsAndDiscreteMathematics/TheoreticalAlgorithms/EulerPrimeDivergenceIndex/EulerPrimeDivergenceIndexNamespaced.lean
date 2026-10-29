-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HarmonicSeriesDivergenceAnchor.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HarmonicSeriesDivergenceAnchor.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","mathematical_subject":"Computation.DataStructures","original_sha256":"906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/EulerPrimeDivergenceIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.EulerPrimeReciprocalDivergence
import Folder.Rebuild.Exposition.RealEulerProductIndex

/-!
# Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex

Exposition anchors for Euler's divergence of reciprocal primes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HarmonicSeriesDivergenceAnchor.Variant906effc6806579cc0e63fc12f2948098715ac39a0e3d0068268a1c9694e39128

namespace Folder
namespace Rebuild
namespace Exposition

def harmonicSeriesDivergenceAnchor : ClassicalAnchor where
  shortName := "Harmonic divergence"
  paperOrBook := "Checked rebuild analytic number theory layer"
  theoremLabel := "harmonicPartial_unbounded"
  mathematicalContent :=
    "The harmonic partial sums are unbounded."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteEulerProductAtOneAnchor : ClassicalAnchor where
  shortName := "Finite Euler product at one"
  paperOrBook := "Checked rebuild finite Euler-product layer"
  theoremLabel := "harmonicPartial_le_finiteHarmonicEulerProduct"
  mathematicalContent :=
    "Harmonic partial sums are bounded above by finite Euler products over primes up to N with cutoff N."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def eulerPrimeReciprocalDivergenceAnchor : ClassicalAnchor where
  shortName := "Euler reciprocal-prime divergence"
  paperOrBook := "Euler's finite-product argument"
  theoremLabel := "primeReciprocalPartial_unbounded"
  mathematicalContent :=
    "The partial sums of reciprocal primes are unbounded."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def pntStrongerAsymptoticStillTargetAnchor : ClassicalAnchor where
  shortName := "Prime asymptotic still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Prime-counting asymptotics remain target-only and are not used by Euler's divergence theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zeroFreeLineStillTargetAnchor : ClassicalAnchor where
  shortName := "Boundary zero-free line still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZeroFreeLineTarget"
  mathematicalContent :=
    "The boundary zero-free theorem remains target-only and is not used by Euler's divergence theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def eulerPrimeDivergenceAnchors : List ClassicalAnchor :=
  [ harmonicSeriesDivergenceAnchor
  , finiteEulerProductAtOneAnchor
  , eulerPrimeReciprocalDivergenceAnchor
  , pntStrongerAsymptoticStillTargetAnchor
  , zeroFreeLineStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
