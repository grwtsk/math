# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e.Variant2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3013fef042f71ca7155044c6f3a9b0aee9dcea8` · SHA-256 `2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e


/- source-tree-label: STL1|L|addr=0111100|role=proof_code_atom|slug=sourcetree-poleassignment|owner=canonical_owner|core=SourceTree/PoleAssignment.lean|leaf=M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

def placementsForPole (p : Pole) : List PhasePlacement :=
  allPhasePlacements.filter (fun q => q.pole = p)

theorem requestPole_count :
    (placementsForPole Pole.request).length = 4 := by
  rfl

theorem carrierPole_count :
    (placementsForPole Pole.carrier).length = 4 := by
  rfl

theorem loweringPole_count :
    (placementsForPole Pole.lowering).length = 4 := by
  rfl

theorem tracePole_count :
    (placementsForPole Pole.trace).length = 14 := by
  rfl

theorem compactPole_count :
    (placementsForPole Pole.compact).length = 8 := by
  rfl

theorem classifierPole_count :
    (placementsForPole Pole.classifier).length = 7 := by
  rfl

theorem schedulerPole_count :
    (placementsForPole Pole.scheduler).length = 7 := by
  rfl

theorem clusterPole_count :
    (placementsForPole Pole.cluster).length = 5 := by
  rfl

theorem boundaryPole_count :
    (placementsForPole Pole.boundary).length = 8 := by
  rfl

end Think.SourceTree
```
