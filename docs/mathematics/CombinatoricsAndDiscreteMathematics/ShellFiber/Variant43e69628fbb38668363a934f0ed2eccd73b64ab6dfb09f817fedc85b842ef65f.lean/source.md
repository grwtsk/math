# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShellFiber.Variant43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96d5b64d9de0cd8754340b0da29e70555168ee88` · SHA-256 `43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
