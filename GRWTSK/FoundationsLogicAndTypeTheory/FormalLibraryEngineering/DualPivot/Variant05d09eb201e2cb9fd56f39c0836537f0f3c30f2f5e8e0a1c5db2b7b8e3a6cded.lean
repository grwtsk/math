import Folder.Core.DualPivot

/-!
# Folder.Theorem.Core.DualPivot

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes dual-pivot facts for BinaryMatrix-adjacent architecture consumers.
Ontology: proof.core.dual_pivot
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem arithmeticPivot_val_eq_one :
    Folder.Core.arithmeticPivot.val = 1 :=
  Folder.Core.arithmeticPivot_val_eq_one

theorem spectralPivot_eq_half :
    Folder.Core.spectralPivot = (1 / 2 : ℝ) :=
  Folder.Core.spectralPivot_eq_half

end Core
end Theorem
end Folder
