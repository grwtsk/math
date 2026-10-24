# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e.Variant4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29f4fc32e1bbda1c030132fef3b1303b778b0473` · SHA-256 `4bbb32c8b14899e08d82c6f55b345cfa0dd4683b73a21db4b7017532420c5c9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=11111000|role=proof_code_atom|slug=sourcetree-compactcontraction|owner=canonical_owner|core=SourceTree/CompactContraction.lean|leaf=M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e.lean -/

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
```
