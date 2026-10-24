# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChebyshevIndex.Variant0803c156005637f4537c823209d19d8c2b25f58c65171c0dac17e88c774023c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `785f21cebfab610ce3c937ab1dd5a0f9717ed4d9` · SHA-256 `ddc76ecbd6a1c9c182b721f5b2c79f4ec6020fccb8c880bdc1fe7b475bc5d3f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChebyshevThetaDefinitionAnchor.Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ChebyshevThetaDefinitionAnchor.Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb","mathematical_subject":"Computation.DataStructures","original_sha256":"72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/ChebyshevIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds
import Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex

/-!
# Folder.Rebuild.Exposition.ChebyshevIndex

Exposition anchors for the finite Chebyshev-function layer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChebyshevThetaDefinitionAnchor.Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb

namespace Folder
namespace Rebuild
namespace Exposition

def chebyshevThetaDefinitionAnchor : ClassicalAnchor where
  shortName := "Chebyshev theta"
  paperOrBook := "Checked rebuild Chebyshev-function layer"
  theoremLabel := "chebyshevTheta"
  mathematicalContent :=
    "The finite function theta(N) is the sum of log p over primes p <= N, with nonnegativity and monotonicity checked."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def chebyshevPsiDefinitionAnchor : ClassicalAnchor where
  shortName := "Chebyshev psi"
  paperOrBook := "Checked rebuild Chebyshev-function layer"
  theoremLabel := "chebyshevPsi"
  mathematicalContent :=
    "The finite function psi(N) is represented as a logarithmic sum over prime powers p^k <= N."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def lcmPsiIdentityAnchor : ClassicalAnchor where
  shortName := "LCM-psi identity"
  paperOrBook := "Finite factorization bridge"
  theoremLabel := "log_intervalLcm_eq_chebyshevPsi"
  mathematicalContent :=
    "The logarithm of the lcm of the interval 1..N is exactly the checked finite psi function."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def centralBinomialChebyshevAnchor : ClassicalAnchor where
  shortName := "Central binomial Chebyshev bridge"
  paperOrBook := "Classical central-binomial estimates"
  theoremLabel := "log_centralBinomial_le_n_log_four"
  mathematicalContent :=
    "The checked central-binomial estimate log C(2n,n) <= n log 4 is available; the full theta-difference bound is retained as a theorem target."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def chebyshevPrimeCountingBoundsTargetAnchor : ClassicalAnchor where
  shortName := "Chebyshev prime-counting bounds"
  paperOrBook := "Classical pre-PNT Chebyshev bounds"
  theoremLabel := "ChebyshevPrimeCountingBoundsTarget"
  mathematicalContent :=
    "Two-sided prime-counting bounds of order N/log N are recorded only as a theorem target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetAfterChebyshevAnchor : ClassicalAnchor where
  shortName := "Prime-counting theorem still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The Chebyshev layer supports exposition toward prime-counting asymptotics, but does not prove them."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def chebyshevAnchors : List ClassicalAnchor :=
  [ chebyshevThetaDefinitionAnchor
  , chebyshevPsiDefinitionAnchor
  , lcmPsiIdentityAnchor
  , centralBinomialChebyshevAnchor
  , chebyshevPrimeCountingBoundsTargetAnchor
  , pntStillTargetAfterChebyshevAnchor
  ]

end Exposition
end Rebuild
end Folder
```
