-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceFamily.Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceFamily.Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b","mathematical_subject":"Computation.DataStructures","original_sha256":"4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit1/Bit1/Bit0/Bit0/Bit0/M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=11111000|role=proof_code_atom|slug=sourcetree-compactcontraction|owner=canonical_owner|core=SourceTree/CompactContraction.lean|leaf=M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceFamily.Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b

set_option autoImplicit false

namespace Think.Compact

inductive SourceFamily where
  | finiteWitnessResidueCore
  | manuscriptWitness
  | pipeline
  | center
  | phases
  | poles
  | residues
  | targets
  | sourceTree
  | radoProjected
  | memory
  | modularWave
  | researchSurvey
  | retiredPath
  | validation
  | tests
deriving DecidableEq, Repr

inductive CompactModule where
  | kernel
  | manuscriptWitness
  | pipelineMachine
  | centerControl
  | phaseLaw
  | poleLaw
  | residueLedger
  | externalTargets
  | sourceTree
  | radoProjected
  | memoryWitness
  | finiteModularWave
  | externalSurvey
  | retiredPathQuarantine
  | validationSuite
  | smokeTests
deriving DecidableEq, Repr

def contractsTo : SourceFamily → CompactModule
  | SourceFamily.finiteWitnessResidueCore => CompactModule.kernel
  | SourceFamily.manuscriptWitness => CompactModule.manuscriptWitness
  | SourceFamily.pipeline => CompactModule.pipelineMachine
  | SourceFamily.center => CompactModule.centerControl
  | SourceFamily.phases => CompactModule.phaseLaw
  | SourceFamily.poles => CompactModule.poleLaw
  | SourceFamily.residues => CompactModule.residueLedger
  | SourceFamily.targets => CompactModule.externalTargets
  | SourceFamily.sourceTree => CompactModule.sourceTree
  | SourceFamily.radoProjected => CompactModule.radoProjected
  | SourceFamily.memory => CompactModule.memoryWitness
  | SourceFamily.modularWave => CompactModule.finiteModularWave
  | SourceFamily.researchSurvey => CompactModule.externalSurvey
  | SourceFamily.retiredPath => CompactModule.retiredPathQuarantine
  | SourceFamily.validation => CompactModule.validationSuite
  | SourceFamily.tests => CompactModule.smokeTests

def allSourceFamilies : List SourceFamily :=
  [ SourceFamily.finiteWitnessResidueCore
  , SourceFamily.manuscriptWitness
  , SourceFamily.pipeline
  , SourceFamily.center
  , SourceFamily.phases
  , SourceFamily.poles
  , SourceFamily.residues
  , SourceFamily.targets
  , SourceFamily.sourceTree
  , SourceFamily.radoProjected
  , SourceFamily.memory
  , SourceFamily.modularWave
  , SourceFamily.researchSurvey
  , SourceFamily.retiredPath
  , SourceFamily.validation
  , SourceFamily.tests
  ]

theorem allSourceFamilies_length :
    allSourceFamilies.length = 16 := by
  rfl

theorem every_source_family_contracts
    (s : SourceFamily) :
    ∃ c : CompactModule, contractsTo s = c := by
  exact ⟨contractsTo s, rfl⟩

end Think.Compact
