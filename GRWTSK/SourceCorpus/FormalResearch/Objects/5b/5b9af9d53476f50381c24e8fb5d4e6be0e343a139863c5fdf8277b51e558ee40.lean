import Think.SourceTree.Legacy.Residues.Basic

set_option autoImplicit false

namespace Think.Residues

def ledger : List Think.Residue :=
  allPipelineResidues

theorem ledger_count :
    ledger.length = 71 := by
  rfl

end Think.Residues
