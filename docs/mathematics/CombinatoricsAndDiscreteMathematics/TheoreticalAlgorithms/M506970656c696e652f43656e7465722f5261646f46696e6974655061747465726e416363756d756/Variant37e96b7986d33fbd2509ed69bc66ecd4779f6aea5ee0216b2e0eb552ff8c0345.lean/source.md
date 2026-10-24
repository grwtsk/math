# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756.Variant37e96b7986d33fbd2509ed69bc66ecd4779f6aea5ee0216b2e0eb552ff8c0345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acbeaa16bf147d7ea331b4457adbba7c1952e3f8` · SHA-256 `544e09d0d18a0b0197ea1a25268f763ab22f02c05f86f73fe98036f7ce99e842`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitRadoBuildPatternAccumulatorBySteps.Variantf344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BitRadoBuildPatternAccumulatorBySteps.Variantf344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742","mathematical_subject":"Computation.DataStructures","original_sha256":"f344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit0/Bit0/Bit0/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f724275696c642e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e


/- source-tree-label: STL1|L|addr=1000001|role=proof_code_atom|slug=pipeline-center-radofinitepatternaccumulatorbuild|owner=canonical_owner|core=Pipeline/Center/RadoFinitePatternAccumulatorBuild.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f724275696c642e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitRadoBuildPatternAccumulatorBySteps.Variantf344acc30043d36d296c05c8a6c525d3bac881586375ffcc98c1e7328b572742

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePatternAccumulatorBuild

open Think.Pipeline.Center.RadoFinitePatternAccumulatorStep

/-!
Finite construction of pattern-copy accumulators.

This module iterates the one-step accumulator theorem for a finite `Nat` number
of steps.  It remains a finite list construction and does not assert countable
universality, homogeneity, or any analytic heatflow/spectral result.
-/

theorem bitRado_build_pattern_accumulator_by_steps
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ acc' : List Nat,
      PatternAccumulator x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t := by
  induction t with
  | zero =>
      exact ⟨acc, hacc, (by intro y hy; exact hy), by simp⟩
  | succ t ih =>
      obtain ⟨accMid, hmid, hincl, hlen⟩ := ih
      obtain ⟨y, _hyfresh, hnext⟩ :=
        bitRado_extend_pattern_accumulator_step x xs forbidden accMid hmid
      refine ⟨y :: accMid, hnext, ?_, ?_⟩
      · intro z hz
        exact List.mem_cons.2 (Or.inr (hincl z hz))
      · simp [hlen, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

end Think.Pipeline.Center.RadoFinitePatternAccumulatorBuild
```
