-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryLogicTreeStreamPlan.Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BinaryLogicTreeStreamPlan.Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1","mathematical_subject":"Computation.DataStructures","original_sha256":"ea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/StreamEncoding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.Modularity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryLogicTreeStreamPlan.Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def matrixAtoms : BinaryLogicTree → List SomeBinaryLogicMatrix
  | BinaryLogicTree.leaf (BinaryLogicAtom.matrix M) => [M]
  | BinaryLogicTree.leaf _ => []
  | BinaryLogicTree.node l r => matrixAtoms l ++ matrixAtoms r

def primeFactorsCore : OrderedPrimeCore → List PrimeLabel
  | OrderedPrimeCore.irreducible p => [p]
  | OrderedPrimeCore.composite l r => primeFactorsCore l ++ primeFactorsCore r

structure BinaryLogicTreeStreamPlan where
  tree : BinaryLogicTree
  normalForm : OrderedPrimeNormalForm
  matrixFrames : List SomeBinaryLogicMatrix
  irreduciblePrimeFactors : List PrimeLabel
  topologyPrime : PrimeLabel
  arithmeticShadow : ArithmeticShadow
  claimBoundary : List String

def streamPlan
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    BinaryLogicTreeStreamPlan where
  tree := T
  normalForm := normalize R T
  matrixFrames := matrixAtoms T
  irreduciblePrimeFactors := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  arithmeticShadow := arithmeticShadow R T
  claimBoundary := [
    "BinaryLogicTreeStreamPlan is planning metadata.",
    "Streams and model proposals are not theorem authority.",
    "Invertibility requires BinaryLogicMatrixFlow certificates."
  ]

theorem streamPlan_preserves_matrix_atoms
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).matrixFrames = matrixAtoms T := rfl

theorem streamPlan_primeFactors_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).irreduciblePrimeFactors =
      primeFactorsCore (normalizeCore R T) := rfl

theorem streamPlan_topologyPrime_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).topologyPrime = topologyPrimeIdentity R T := rfl

end Tree
end BinaryLogicMatrix
end Surface.Legacy
