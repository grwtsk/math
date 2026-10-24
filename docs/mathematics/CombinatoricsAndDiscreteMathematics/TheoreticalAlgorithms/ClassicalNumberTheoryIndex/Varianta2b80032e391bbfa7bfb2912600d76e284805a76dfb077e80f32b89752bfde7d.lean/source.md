# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClassicalNumberTheoryIndex.Varianta2b80032e391bbfa7bfb2912600d76e284805a76dfb077e80f32b89752bfde7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aff62a7e48348634ea66795b2ca1933b3ded0b48` · SHA-256 `a61d88bd7fa0398278d3bcb5f76cef2d16b339c67650e1136b752257dea7fe12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusInversionAnchor.Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MobiusInversionAnchor.Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285","mathematical_subject":"Computation.DataStructures","original_sha256":"d757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/ClassicalNumberTheoryIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.Mobius
import Folder.Rebuild.NumberTheory.EulerPhi
import Folder.Rebuild.NumberTheory.SigmaTau
import Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative
import Folder.Rebuild.Exposition.AnchorIndex

/-!
# Folder.Rebuild.Exposition.ClassicalNumberTheoryIndex

Exposition index for the checked finite multiplicative-number-theory layer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusInversionAnchor.Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285

namespace Folder
namespace Rebuild
namespace Exposition

def mobiusInversionAnchor : ClassicalAnchor where
  shortName := "Moebius inversion"
  paperOrBook := "Classical finite divisor-sum theory"
  theoremLabel := "mobius_inversion"
  mathematicalContent :=
    "Finite divisor-sum inversion is checked locally for positive natural inputs."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def eulerPhiAnchor : ClassicalAnchor where
  shortName := "Euler phi"
  paperOrBook := "Classical elementary number theory"
  theoremLabel := "eulerPhi_prime_power"
  mathematicalContent :=
    "Prime and prime-power formulas for Euler phi are repackaged as checked rebuild theorems."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.mathlibInternal

def divisorProblemAnchor : ClassicalAnchor where
  shortName := "Divisor functions"
  paperOrBook := "Classical divisor-sum theory"
  theoremLabel := "tau_prime / sigma_prime"
  mathematicalContent :=
    "The finite tau and sigma functions have checked prime and prime-power identities."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteEulerProductAnchor : ClassicalAnchor where
  shortName := "Finite Euler product"
  paperOrBook := "Finite algebraic Euler-product scaffold"
  theoremLabel := "finite_geometric_euler_factor_mul"
  mathematicalContent :=
    "Finite Euler factors satisfy checked truncated geometric identities."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def analyticEulerProductAnchor : ClassicalAnchor where
  shortName := "Analytic Euler product"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "Infinite Euler-product convergence remains a theorem target, not a proof input."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical prime asymptotic route"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The analytic route through continuation, boundary nonvanishing, and Tauberian input remains a target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def classicalNumberTheoryAnchors : List ClassicalAnchor :=
  [ mobiusInversionAnchor
  , eulerPhiAnchor
  , divisorProblemAnchor
  , finiteEulerProductAnchor
  , analyticEulerProductAnchor
  , pntClassicalRouteAnchor
  ]

end Exposition
end Rebuild
end Folder
```
