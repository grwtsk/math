# Complete source: GRWTSK.Algebra.M56616c69646174696f6e2f454d4c436f6d7072657373696f6e2e6c65616e.Variant37c4ddb8f3ea1bcc05b238227ddf0a4b0dc715b61c948e5f5979543b6453d0fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `054584e7db7d924d13765e2854314d162c42274c` · SHA-256 `6452de5baeebf13e044e0eb682b38f7394cd271fb0b14c3fffc75c362bf3bb99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SampleSeedRoutesToResidue.Variantb7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SampleSeedRoutesToResidue.Variantb7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit0/Bit0/M56616c69646174696f6e2f454d4c436f6d7072657373696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=01101000|role=proof_code_atom|slug=validation-emlcompression|owner=canonical_owner|core=Validation/EMLCompression.lean|leaf=M56616c69646174696f6e2f454d4c436f6d7072657373696f6e2e6c65616e.lean -/


namespace GRWTSK.Algebra.SampleSeedRoutesToResidue.Variantb7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e

set_option autoImplicit false

namespace Think.Validation.EMLCompression

open Think.Pipeline.Center.EMLCompression

theorem sample_seed_routes_to_residue :
    (checkedConjectureSeed sampleSeed).hasResidue = true := by
  rfl

theorem sample_seed_residue_target :
    sampleSeed.toResidue.target = FWR.Target.EMLCompressionInterface := by
  rfl

theorem quotient_move_is_not_group_lane :
    MoveKind.quotient.invertible = false := by
  rfl

theorem canonicalize_move_is_reducing_lane :
    MoveKind.canonicalize.reducing = true := by
  rfl

theorem sample_seed_move_lanes_well_formed :
    sampleSeed.moveLanesWellFormed = true := by
  rfl

theorem sample_seed_accepted_for_jepa :
    sampleSeed.acceptedForJepa = true := by
  rfl

theorem sample_seed_status_residue_consistent :
    sampleSeed.statusResidueConsistent :=
  sampleSeed_statusResidueConsistent

theorem malformed_move_lane_seed_rejected :
    malformedMoveLaneSeed.acceptedForJepa = false := by
  rfl

theorem malformed_move_lane_seed_has_admission_residue :
    malformedMoveLaneSeed.residues.length = 2 := by
  rfl

theorem positive_residue_zero_has_no_support :
    ResidueExpr.zero.support = [] := by
  rfl

theorem sample_state_semiring_not_completion :
    sampleStableState.algebraMode = ResidueAlgebraMode.positiveSemiring := by
  rfl

end Think.Validation.EMLCompression
```
