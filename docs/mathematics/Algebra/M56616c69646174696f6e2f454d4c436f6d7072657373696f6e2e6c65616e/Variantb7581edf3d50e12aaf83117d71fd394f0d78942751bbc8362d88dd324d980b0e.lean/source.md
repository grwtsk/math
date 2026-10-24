# Complete source: GRWTSK.Algebra.M56616c69646174696f6e2f454d4c436f6d7072657373696f6e2e6c65616e.Variantb7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41dff092008d582e7841995c8774e681d1699cf7` · SHA-256 `b7581edf3d50e12aaf83117d71fd394f0d78942751bbc8362d88dd324d980b0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=01101000|role=proof_code_atom|slug=validation-emlcompression|owner=canonical_owner|core=Validation/EMLCompression.lean|leaf=M56616c69646174696f6e2f454d4c436f6d7072657373696f6e2e6c65616e.lean -/

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
