# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f436f7665726167652e6c65616e.Variantc30ddaf58d62d560f40a64587925c3863963786dd407846bf7eb426edf2ebdfd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `004236bc6844921c158950acbe198d9adcf72adf` · SHA-256 `a5311c0caa87299bbf74c254e32941f393a7faec33412f75521e0b1534f252ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoveredPhases.Variantb8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CoveredPhases.Variantb8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60","mathematical_subject":"Computation.DataStructures","original_sha256":"b8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit1/Bit1/Bit1/Bit1/M536f75726365547265652f436f7665726167652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e


/- source-tree-label: STL1|L|addr=0001111|role=proof_code_atom|slug=sourcetree-coverage|owner=canonical_owner|core=SourceTree/Coverage.lean|leaf=M536f75726365547265652f436f7665726167652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoveredPhases.Variantb8e003dc227fdfbd13f34a2659d23c04f5f2d7faecb321fd26ea8cf2d4815b60

set_option autoImplicit false

namespace Think.SourceTree

def coveredPhases : List Think.PhaseId :=
  allPhasePlacements.map (fun q => q.phase)

theorem coveredPhases_eq_centerSpine :
    coveredPhases = Think.centerSpine := by
  rfl

theorem every_center_phase_covered (p : Think.PhaseId) :
    p ∈ coveredPhases := by
  rw [coveredPhases_eq_centerSpine]
  exact Think.centerSpine_complete p

end Think.SourceTree
```
