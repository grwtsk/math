# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Path.Variant3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2303a18e85f296ebb724ec4e039f40ab8338e58` · SHA-256 `3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Monodromy.Path

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.path
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

universe u

inductive Path {Base : Type u}
    (Step : Base → Base → Prop) :
    Base → Base → Type u where
  | nil : Path Step b b
  | cons : Step a b → Path Step b c → Path Step a c

namespace Path

def append {Base : Type u}
    {Step : Base → Base → Prop}
    {a b c : Base}
    (p : Path Step a b)
    (q : Path Step b c) :
    Path Step a c :=
  match p with
  | nil => q
  | cons e rest => cons e (append rest q)

@[simp]
theorem append_nil {Base : Type u}
    {Step : Base → Base → Prop}
    {a b : Base}
    (p : Path Step a b) :
    p.append Path.nil = p := by
  induction p with
  | nil => rfl
  | cons e rest ih =>
      simp [append, ih]

@[simp]
theorem nil_append {Base : Type u}
    {Step : Base → Base → Prop}
    {a b : Base}
    (p : Path Step a b) :
    (Path.nil : Path Step a a).append p = p :=
  rfl

end Path
end Monodromy
end Folder
```
