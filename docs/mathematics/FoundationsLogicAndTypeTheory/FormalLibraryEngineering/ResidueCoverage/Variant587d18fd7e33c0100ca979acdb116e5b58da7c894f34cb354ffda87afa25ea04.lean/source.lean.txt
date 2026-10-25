import Think.Validation.PhaseOrderCorrect
import Think.SourceTree.Legacy.Residues.All

set_option autoImplicit false

namespace Think.Validation

theorem residueCoverageCount :
    Think.Residues.ledger.length = 71 := by
  rfl

end Think.Validation
