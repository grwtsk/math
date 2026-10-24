# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoryAlgebra.Variantf3eb21136d834c602ee3cae87251de0d5867594943fdaf2506437fbbb3e9e462

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b982becdc1ba1b770c67cb272613a47490cd4ed1` · SHA-256 `9f037824c9d19e79b26bd699a96afd3dc30a7da312714815ceb443cc25dc69f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectedSupport.Variant6ed8acc56ec0bfa642992d6b9acf31689345ded9a0ece02530226f913b6b1eb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ed8acc56ec0bfa642992d6b9acf31689345ded9a0ece02530226f913b6b1eb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectedSupport.Variant6ed8acc56ec0bfa642992d6b9acf31689345ded9a0ece02530226f913b6b1eb9","mathematical_subject":"Computation.DataStructures","original_sha256":"6ed8acc56ec0bfa642992d6b9acf31689345ded9a0ece02530226f913b6b1eb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Algebra
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectedSupport.Variant6ed8acc56ec0bfa642992d6b9acf31689345ded9a0ece02530226f913b6b1eb9

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryAlgebra

abbrev MemoryVertex := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom
abbrev ResidueLedger := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueLedger
abbrev FiniteRunBounds := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.FiniteRunBounds

structure ProjectedSupport where
  support : List MemoryVertex
  projection : MemoryVertex -> Nat
  bounds : FiniteRunBounds
  supportBounded : support.length ≤ bounds.vertexBound

def projectionResidues : List ResidueAtom :=
  [ Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ]

structure RadoWitnessCandidate where
  witness : MemoryVertex
  unresolvedResidue : Nat
  connectsTo : List MemoryVertex
  avoids : List MemoryVertex
  coefficient : Nat
  bridgeSide :
    witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge
  witnessKind :
    witness.kind = Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryKind.residueWitness

def witnessBoundAvailable
    (existingWitnesses : List RadoWitnessCandidate)
    (bounds : FiniteRunBounds) : Prop :=
  existingWitnesses.length < bounds.witnessBound

structure WitnessInsertionResult where
  beforeResidue : Nat
  afterResidue : Nat
  ledger : ResidueLedger
  inserted : Bool

def WitnessInsertionResult.acceptable (r : WitnessInsertionResult) : Prop :=
  r.afterResidue < r.beforeResidue ∨
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.boundaryResidueUnclosed ∈
      r.ledger.atoms

theorem projectionResidues_contains_erasure :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ∈
      projectionResidues := by
  simp [projectionResidues]

theorem reduced_witness_acceptable
    (before after : Nat)
    (h : after < before) :
    ({ beforeResidue := before
       afterResidue := after
       ledger := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueLedger.empty
       inserted := true } : WitnessInsertionResult).acceptable := by
  exact Or.inl h

theorem ledgered_witness_acceptable
    (before after : Nat)
    (ledger : ResidueLedger)
    (h :
      Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.boundaryResidueUnclosed ∈
        ledger.atoms) :
    ({ beforeResidue := before
       afterResidue := after
       ledger := ledger
       inserted := false } : WitnessInsertionResult).acceptable := by
  exact Or.inr h

end Think.RadoProjectedModularHeatflow.MemoryAlgebra
```
