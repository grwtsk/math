# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e.Variantffc9bd0891c69af772ac4a7b2231a36f3f33fe306f3f3a75b56789041134fddf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0f0bf08b1dae46332ce65348ef3dc66b1adf40f` · SHA-256 `ba68fdc6fe6b374faeeb5d22330f7b1401321d1faff748cc470956cbece78443`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrunedWitness.Variant6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrunedWitness.Variant6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37","mathematical_subject":"Foundations.Unclassified","original_sha256":"6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit1/Bit1/Bit1/Bit0/M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f5068617365732f506861736553796d6d657472792e6c65616e


/- source-tree-label: STL1|L|addr=01011110|role=proof_code_atom|slug=pipeline-phases-phaseresidue|owner=canonical_owner|core=Pipeline/Phases/PhaseResidue.lean|leaf=M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrunedWitness.Variant6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37

set_option autoImplicit false

namespace Think.Pipeline.Phases

structure PrunedWitness where
  oldPath : String
  newPath : String
  oldWeight : Nat
  newWeight : Nat
  sameWeight : oldWeight = newWeight
  residueClass : String
  reason : String

def phase37Witness : PrunedWitness :=
  { oldPath := "binomial-retired:Pipeline/Phases/Phase37_WeightScoring.lean"
    newPath := "formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "phase-table contraction preserving mirror Phase23" }

theorem phase37Witness_preservesWeight :
    phase37Witness.oldWeight = phase37Witness.newWeight :=
  phase37Witness.sameWeight

end Think.Pipeline.Phases
```
