# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e.Variantdab29c1faebce80bb06091be2df44f70baefaf7e59d1d549c25afa689c9faa96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f057b2cf364d743c212e3d418afe3a0e8f191f9e` · SHA-256 `dde25e54ee33a81ef5ca9952433c0ad6b8f3d6619cf4ebb93545325d522ac7be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PlacementsForPole.Variant2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PlacementsForPole.Variant2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681","mathematical_subject":"Computation.DataStructures","original_sha256":"2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit1/Bit1/Bit0/Bit0/M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e


/- source-tree-label: STL1|L|addr=0111100|role=proof_code_atom|slug=sourcetree-poleassignment|owner=canonical_owner|core=SourceTree/PoleAssignment.lean|leaf=M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PlacementsForPole.Variant2161d9606ec2894c47ac33d8fe9d78a50bfbe84556d6f82fd6779c7353a8c681

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
