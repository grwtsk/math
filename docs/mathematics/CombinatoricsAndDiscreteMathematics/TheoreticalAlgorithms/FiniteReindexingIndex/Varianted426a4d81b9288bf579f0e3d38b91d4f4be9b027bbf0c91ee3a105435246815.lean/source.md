# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteReindexingIndex.Varianted426a4d81b9288bf579f0e3d38b91d4f4be9b027bbf0c91ee3a105435246815

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `677d9dd13b1e04df1ef49fd4672cb48bec455971` · SHA-256 `578871fda906d307e5d6cf47c7316dd8d7797d851f6a7f4d4d180a989abf893e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExponentVectorInjectivityAnchor.Variant8cac63cba7a690ec6181808fabe64635c34519996edcf5f9b6021478f7ddcefe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cac63cba7a690ec6181808fabe64635c34519996edcf5f9b6021478f7ddcefe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExponentVectorInjectivityAnchor.Variant8cac63cba7a690ec6181808fabe64635c34519996edcf5f9b6021478f7ddcefe","mathematical_subject":"Computation.DataStructures","original_sha256":"8cac63cba7a690ec6181808fabe64635c34519996edcf5f9b6021478f7ddcefe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/FiniteReindexingIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing
import Folder.Rebuild.AnalyticNumberTheory.WeightedCauchyReindexed
import Folder.Rebuild.Exposition.FiniteEulerExpansionIndex

/-!
# Folder.Rebuild.Exposition.FiniteReindexingIndex

Exposition index for checked finite reindexing theorems.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExponentVectorInjectivityAnchor.Variant8cac63cba7a690ec6181808fabe64635c34519996edcf5f9b6021478f7ddcefe

namespace Folder
namespace Rebuild
namespace Exposition

def exponentVectorInjectivityAnchor : ClassicalAnchor where
  shortName := "Exponent-vector injectivity"
  paperOrBook := "Checked finite factorization plumbing"
  theoremLabel := "exponentVectorNat_injective_of_prime_set"
  mathematicalContent :=
    "Prime factorization recovers bounded exponent vectors over a finite prime set."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def smoothNumberReindexingCheckedAnchor : ClassicalAnchor where
  shortName := "Smooth-number reindexing checked"
  paperOrBook := "Checked finite Euler-product reindexing"
  theoremLabel := "finiteEulerProductOf_expands_boundedSmoothNumbers"
  mathematicalContent :=
    "Completely multiplicative finite Euler products reindex over bounded smooth numbers."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def boundedDirichletConvolutionReindexingAnchor : ClassicalAnchor where
  shortName := "Bounded Dirichlet convolution reindexing"
  paperOrBook := "Checked finite divisor-pair reindexing"
  theoremLabel := "pairProductByValue_eq_boundedDirichletConv"
  mathematicalContent :=
    "Pairs with fixed product are reindexed by bounded divisors."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def weightedCauchyBoundedConvAnchor : ClassicalAnchor where
  shortName := "Weighted Cauchy bounded convolution"
  paperOrBook := "Checked finite Dirichlet-polynomial layer"
  theoremLabel := "dirichletPolynomialComplex_mul_boundedConv"
  mathematicalContent :=
    "The weighted finite Cauchy product is reindexed by bounded Dirichlet convolution."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def infiniteDirichletCauchyProductTargetAnchor : ClassicalAnchor where
  shortName := "Infinite Dirichlet Cauchy target"
  paperOrBook := "Classical Dirichlet-series references"
  theoremLabel := "InfiniteDirichletSeriesCauchyProductTarget"
  mathematicalContent :=
    "The infinite Cauchy product for convergent Dirichlet series remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def finiteReindexingAnchors : List ClassicalAnchor :=
  [ exponentVectorInjectivityAnchor
  , smoothNumberReindexingCheckedAnchor
  , boundedDirichletConvolutionReindexingAnchor
  , weightedCauchyBoundedConvAnchor
  , infiniteDirichletCauchyProductTargetAnchor
  , infiniteEulerProductTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```
