-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Checked.Variant16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Checked.Variant16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5","mathematical_subject":"Computation.DataStructures","original_sha256":"16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit0/Bit0/Bit0/Bit0/Bit0/Bit0/M4b65726e656c2f436865636b65642e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=010000000|role=proof_code_atom|slug=kernel-checked|owner=canonical_owner|core=Kernel/Checked.lean|leaf=M4b65726e656c2f436865636b65642e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Checked.Variant16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5

set_option autoImplicit false

namespace FWR

inductive Checked (P : Prop) where
  | proved : P -> Checked P
  | residue : List Residue -> Checked P

namespace Checked

def residues {P : Prop} : Checked P -> List Residue
  | proved _ => []
  | residue rs => rs

def hasResidue {P : Prop} : Checked P -> Bool
  | proved _ => false
  | residue rs => !rs.isEmpty

def isProved {P : Prop} : Checked P -> Bool
  | proved _ => true
  | residue _ => false

end Checked

end FWR
