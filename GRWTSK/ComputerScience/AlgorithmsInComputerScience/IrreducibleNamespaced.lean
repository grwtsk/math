-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modularity.Variant6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Modularity.Variant6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9","mathematical_subject":"Computation.DataStructures","original_sha256":"6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/Irreducible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.EuclidInfinitude


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modularity.Variant6d5b0e52d5bad8d8e457613f6e485db1ee86d8554da70bf8dfc1153ae7fd5dc9

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure Modularity where
  name : String
  carrier : BinaryLogicTree
  claimBoundary : List String
deriving Repr

structure ReducibleBy where
  source : Modularity
  left : Modularity
  right : Modularity
  witness :
    source.carrier =
      BinaryLogicTree.node left.carrier right.carrier

def Irreducible (M : Modularity) : Prop :=
  ¬ ∃ L R : Modularity,
      M.carrier =
        BinaryLogicTree.node L.carrier R.carrier

structure IrreducibleFactor where
  modularity : Modularity
  prime : PrimeLabel
  irreducible : Irreducible modularity
  claimBoundary : List String

structure IrreducibleFactorRegistry where
  factors : List IrreducibleFactor
  primeInjective :
    ∀ A B,
      A ∈ factors →
      B ∈ factors →
      A.prime.value = B.prime.value →
        A.modularity = B.modularity
  allIrreducible :
    ∀ A, A ∈ factors → Irreducible A.modularity
  claimBoundary : List String

theorem irreducible_modularity_has_prime_label
    (F : IrreducibleFactor) :
    Nat.Prime F.prime.value :=
  F.prime.isPrime

theorem primeLabels_distinguish_irreducibles
    (R : IrreducibleFactorRegistry)
    {A B : IrreducibleFactor}
    (hA : A ∈ R.factors)
    (hB : B ∈ R.factors)
    (h : A.prime.value = B.prime.value) :
    A.modularity = B.modularity :=
  R.primeInjective A B hA hB h

theorem primeLabeling_injective_on_irreducibles
    (R : IrreducibleFactorRegistry)
    {A B : IrreducibleFactor}
    (hA : A ∈ R.factors)
    (hB : B ∈ R.factors)
    (h : A.prime.value = B.prime.value) :
    A.modularity = B.modularity :=
  primeLabels_distinguish_irreducibles R hA hB h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
