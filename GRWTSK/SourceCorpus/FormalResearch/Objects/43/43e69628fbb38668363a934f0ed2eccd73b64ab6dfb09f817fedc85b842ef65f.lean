import Folder.Expansion.Shell
import Folder.Carrier.Bit

/-!
# Folder.Expansion.ShellFiber

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: expansion.shell_fiber
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Expansion

open Carrier

structure ShellFiber (s : GridShape) where
  value : {c : Cell (expandedShape s) // IsShellCell c} → Bit

namespace ShellFiber

def zero (s : GridShape) : ShellFiber s where
  value := fun _ => 0

noncomputable def countOnes {s : GridShape} (F : ShellFiber s) : Nat :=
  Fintype.card {c : {c : Cell (expandedShape s) // IsShellCell c} //
    F.value c = 1}

@[ext]
theorem ext {s : GridShape} {F G : ShellFiber s}
    (h : ∀ c, F.value c = G.value c) :
    F = G := by
  cases F with
  | mk Fvalue =>
    cases G with
    | mk Gvalue =>
      have hv : Fvalue = Gvalue := funext h
      cases hv
      rfl

end ShellFiber
end Expansion
end Folder
