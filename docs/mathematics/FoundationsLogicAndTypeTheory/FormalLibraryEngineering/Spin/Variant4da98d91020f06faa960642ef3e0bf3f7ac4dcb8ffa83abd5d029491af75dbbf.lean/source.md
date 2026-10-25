# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Spin.Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed54c57d5828bc751b01abd86bbefe9a7a6f790a` · SHA-256 `4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Archive.Spin

Radiation role: archive-symmetry
BinaryMatrix spine: This module names finite matrix spins used by symbolic BinaryMatrix archive references.
Ontology: archive.spin
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

inductive RectSpin where
  | id
  | flipRows
  | flipCols
  | rotate180
deriving DecidableEq, Repr

namespace RectSpin

def render : RectSpin → String
  | id => "id"
  | flipRows => "flipRows"
  | flipCols => "flipCols"
  | rotate180 => "rotate180"

def parse? : String → Option RectSpin
  | "id" => some id
  | "flipRows" => some flipRows
  | "flipCols" => some flipCols
  | "rotate180" => some rotate180
  | _ => none

theorem parse?_render
    (s : RectSpin) :
    parse? (render s) = some s := by
  cases s <;> rfl

theorem render_injective
    {a b : RectSpin}
    (h : render a = render b) :
    a = b := by
  cases a <;> cases b <;> simp [render] at h ⊢

def inverse : RectSpin → RectSpin
  | id => id
  | flipRows => flipRows
  | flipCols => flipCols
  | rotate180 => rotate180

end RectSpin
end Archive
end Folder
```
