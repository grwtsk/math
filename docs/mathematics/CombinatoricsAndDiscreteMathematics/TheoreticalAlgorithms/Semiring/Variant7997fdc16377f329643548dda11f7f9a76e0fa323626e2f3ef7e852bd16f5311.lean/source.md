# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Semiring.Variant7997fdc16377f329643548dda11f7f9a76e0fa323626e2f3ef7e852bd16f5311

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8982ba4b2f6e1975c66000c47653a0d411d251ca` · SHA-256 `86c5d5b4bba3521ce9949e7a682a3744aba41d8bd74b8ea52fdeb9950a4c9b53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemorySemiring.Varianta9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemorySemiring.Varianta9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8","mathematical_subject":"Computation.DataStructures","original_sha256":"a9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Semiring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Algebra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemorySemiring.Varianta9847467cd17b80eda37e0a2dfa6a67b48355cf276d0a4ad5db7490ed6ee87a8

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

structure MemorySemiring where
  zero : WeightedMemory
  one : WeightedMemory
  add : WeightedMemory -> WeightedMemory -> WeightedMemory
  mul : WeightedMemory -> WeightedMemory -> WeightedMemory
  residueAtoms : List ResidueAtom

def memorySemiring : MemorySemiring :=
  { zero := WeightedMemory.zero
    one := WeightedMemory.one
    add := WeightedMemory.add
    mul := WeightedMemory.mul
    residueAtoms :=
      [ ResidueAtom.weightedMemoryNotProof
      , ResidueAtom.semiringOnlyUntilInverseDefined
      ] }

structure MemorySemiringLaws where
  addZero : ∀ M : WeightedMemory, memorySemiring.add M memorySemiring.zero = M
  zeroAdd : ∀ M : WeightedMemory, memorySemiring.add memorySemiring.zero M = M
  addAssoc :
    ∀ M N K : WeightedMemory,
      memorySemiring.add (memorySemiring.add M N) K =
        memorySemiring.add M (memorySemiring.add N K)
  addComm :
    ∀ M N : WeightedMemory,
      memorySemiring.add M N = memorySemiring.add N M
  mulZero : ∀ M : WeightedMemory, memorySemiring.mul M memorySemiring.zero = memorySemiring.zero
  zeroMul : ∀ M : WeightedMemory, memorySemiring.mul memorySemiring.zero M = memorySemiring.zero

theorem memorySemiring_laws : MemorySemiringLaws where
  addZero := WeightedMemory.add_zero
  zeroAdd := WeightedMemory.zero_add
  addAssoc := WeightedMemory.add_assoc
  addComm := WeightedMemory.add_comm
  mulZero := WeightedMemory.mul_zero
  zeroMul := WeightedMemory.zero_mul

theorem memorySemiring_marks_default :
    ResidueAtom.semiringOnlyUntilInverseDefined ∈ memorySemiring.residueAtoms := by
  simp [memorySemiring]

theorem memorySemiring_one_marks_noop :
    memorySemiring.one.coeff noopVertex = 1 :=
  WeightedMemory.one_noop_coeff

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
```
