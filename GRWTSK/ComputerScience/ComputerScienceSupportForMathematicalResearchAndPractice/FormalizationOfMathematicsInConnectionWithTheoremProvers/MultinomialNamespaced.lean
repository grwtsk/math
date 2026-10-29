-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BraidWeight.Varianta8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BraidWeight.Varianta8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df","mathematical_subject":"Foundations.Unclassified","original_sha256":"a8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f506c6163656d656e742e6c65616e


/- source-tree-label: STL1|L|addr=01110101|role=proof_code_atom|slug=sourcetree-multinomial|owner=canonical_owner|core=SourceTree/Multinomial.lean|leaf=M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BraidWeight.Varianta8a4722a053b4bfd22cde559f77bfaae99f3f406d240dbddc91b45fcc228b4df

set_option autoImplicit false

namespace Think.SourceTree

abbrev BraidWeight := Think.Pipeline.Center.BraidWeight

def multinomialForPlacement (q : PhasePlacement) : Nat :=
  (Think.Pipeline.Center.braidWeight q.phase).multinomial

theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.left *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.center *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.right := by
  exact Think.Pipeline.Center.multinomial_denominator_pos w

end Think.SourceTree
