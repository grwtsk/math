-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceScatteredPredicate.Variant9c5e8a51820eaccc9d9ab19045aadad0adbc28562d7dccdbe87a9437e39c650e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c5e8a51820eaccc9d9ab19045aadad0adbc28562d7dccdbe87a9437e39c650e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceScatteredPredicate.Variant9c5e8a51820eaccc9d9ab19045aadad0adbc28562d7dccdbe87a9437e39c650e","mathematical_subject":"Foundations.Unclassified","original_sha256":"9c5e8a51820eaccc9d9ab19045aadad0adbc28562d7dccdbe87a9437e39c650e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit1/Bit0/Bit1/M536f75726365547265652f5363617474657265644d616361756c61792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/- source-tree-label: STL1|L|addr=100101|role=proof_code_atom|slug=sourcetree-scatteredmacaulay|owner=canonical_owner|core=SourceTree/ScatteredMacaulay.lean|leaf=M536f75726365547265652f5363617474657265644d616361756c61792e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceScatteredPredicate.Variant9c5e8a51820eaccc9d9ab19045aadad0adbc28562d7dccdbe87a9437e39c650e

namespace Think
namespace SourceTree

structure SourceScatteredPredicate where
  lPartialScattered : Prop
  rPartialScattered : Prop
  sourceScattered : Prop
  exceptionalSourceScattered : Prop

structure PseudoregulusLeafPairPredicate where
  disjointTransversals : Prop
  commonCoverNonOwning : Prop
  transportThroughGlue : Prop
  baseOnlyIntersection : Prop

def PseudoregulusLeafPairPredicate.valid
    (pair : PseudoregulusLeafPairPredicate) : Prop :=
  pair.disjointTransversals
    ∧ pair.commonCoverNonOwning
    ∧ pair.transportThroughGlue
    ∧ pair.baseOnlyIntersection

structure SourceSymbolicPreprocessingPredicate where
  supportClosed : Prop
  deterministicLayout : Prop
  prefixPlanPresent : Prop
  noTruncatedSyzygy : Prop

structure SourceMacaulayPredicate where
  matrixMaterialized : Prop
  kernelSound : Prop
  noUnsoundKernel : Prop
  noRefactorSyzygyResidue : Prop

structure SourceEquivalencePredicate where
  strongSeparated : Prop
  weakSeparated : Prop
  noRStableButLUnstable : Prop
  noClassCollision : Prop

structure EnhancedCarrierBalanceWitness where
  scattered : SourceScatteredPredicate
  symbolic : SourceSymbolicPreprocessingPredicate
  macaulay : SourceMacaulayPredicate
  equivalence : SourceEquivalencePredicate

def EnhancedCarrierBalanceWitness.closed
    (witness : EnhancedCarrierBalanceWitness) : Prop :=
  witness.scattered.lPartialScattered
    ∧ witness.scattered.rPartialScattered
    ∧ witness.scattered.sourceScattered
    ∧ witness.scattered.exceptionalSourceScattered
    ∧ witness.symbolic.supportClosed
    ∧ witness.symbolic.deterministicLayout
    ∧ witness.symbolic.prefixPlanPresent
    ∧ witness.symbolic.noTruncatedSyzygy
    ∧ witness.macaulay.matrixMaterialized
    ∧ witness.macaulay.kernelSound
    ∧ witness.macaulay.noUnsoundKernel
    ∧ witness.macaulay.noRefactorSyzygyResidue
    ∧ witness.equivalence.strongSeparated
    ∧ witness.equivalence.weakSeparated
    ∧ witness.equivalence.noRStableButLUnstable
    ∧ witness.equivalence.noClassCollision

theorem enhancedCarrierBalanceSound
    (witness : EnhancedCarrierBalanceWitness)
    (closed : witness.closed) :
    witness.scattered.sourceScattered
      ∧ witness.symbolic.supportClosed
      ∧ witness.macaulay.kernelSound
      ∧ witness.equivalence.strongSeparated
      ∧ witness.equivalence.weakSeparated := by
  rcases closed with
    ⟨_, _, sourceScattered, _, supportClosed, _, _, _, _, kernelSound,
      _, _, strongSeparated, weakSeparated, _, _⟩
  exact ⟨sourceScattered, supportClosed, kernelSound, strongSeparated, weakSeparated⟩

def enhancedCarrierBalanceNonClaim : String :=
  "Enhanced Carrier balance is finite source-tree witness evidence only."

end SourceTree
end Think
