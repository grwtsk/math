# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellFiltration.Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0426a6f8dfdd3c8bcc022ea369bf7ed8cb2f6816` · SHA-256 `1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.Cube

/-!
# Folder.Cellular.ShellFiltration

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: cellular.shell_filtration
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def IsBoundaryCell
    {d k : Nat}
    (x : CubeAddress d k) : Prop :=
  ∃ i : Fin d,
    (x i).val = 0 ∨ (x i).val + 1 = cubeSide k

def IsInteriorCell
    {d k : Nat}
    (x : CubeAddress d k) : Prop :=
  ∀ i : Fin d,
    0 < (x i).val ∧ (x i).val + 1 < cubeSide k

abbrev BoundaryShell (d k : Nat) :=
  {x : CubeAddress d k // IsBoundaryCell x}

def IsNewChildCell
    {d k : Nat}
    (y : CubeAddress d (k + 1)) : Prop :=
  ¬ ∃ x : CubeAddress d k, y = embedLow x

theorem boundary_or_not_boundary
    {d k : Nat}
    (x : CubeAddress d k) :
    IsBoundaryCell x ∨ ¬ IsBoundaryCell x := by
  classical
  exact em _

theorem not_interior_of_boundary
    {d k : Nat}
    {x : CubeAddress d k} :
    IsBoundaryCell x → ¬ IsInteriorCell x := by
  intro hb hi
  rcases hb with ⟨i, h0 | hmax⟩
  · have hpos := (hi i).1
    omega
  · have hlt := (hi i).2
    omega

theorem all_boundary_level_zero
    {d : Nat}
    (hd : 0 < d)
    (x : CubeAddress d 0) :
    IsBoundaryCell x := by
  refine ⟨⟨0, hd⟩, Or.inl ?_⟩
  have h : (x ⟨0, hd⟩).val < 1 := by
    simp [cubeSide] at *
  omega

end Cellular
end Folder
```
