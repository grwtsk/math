# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ShapeChangingBundle.Variant8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f4546ac4d33bbc4b7551d40378219850d93965a` · SHA-256 `8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.Tree
import Folder.Expansion.Shell
import Folder.Spectral.Expansion
import Folder.Spectral.Fiber
import Folder.Spectral.Tensor

/-!
# Folder.Research.ShapeChangingBundle

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.shape_changing_bundle
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace Folder
namespace Research
namespace ShapeChangingBundle

open Carrier

def levelShape (base : GridShape) : Nat → GridShape
  | 0 => base
  | n + 1 => Expansion.expandedShape (levelShape base n)

theorem levelShape_rows_succ
    (base : GridShape)
    (n : Nat) :
    (levelShape base (n + 1)).rows =
      (levelShape base n).rows + 2 :=
  rfl

theorem levelShape_cols_succ
    (base : GridShape)
    (n : Nat) :
    (levelShape base (n + 1)).cols =
      (levelShape base n).cols + 2 :=
  rfl

structure ShapeChangingState
    (base : GridShape)
    (k : Nat)
    (n : Nat) where
  visible : Spectral.SpectralTensor (levelShape base n) k

structure ShapeStepPayload
    (base : GridShape)
    (k : Nat)
    (n : Nat) where
  shell : Spectral.SpectralShellFiber (levelShape base n) k

noncomputable def expandWithShell
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : ShapeStepPayload base k n)
    (X : ShapeChangingState base k n) :
    ShapeChangingState base k (n + 1) where
  visible :=
    Spectral.decodeShell
      ({ center := X.visible, shell := P.shell } :
        Spectral.SpectralShellEncoded (levelShape base n) k)

noncomputable def contractOneStep
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (Y : ShapeChangingState base k (n + 1)) :
    ShapeChangingState base k n ×
      Spectral.SpectralShellFiber (levelShape base n) k :=
  let E := Spectral.encodeShell Y.visible
  ({ visible := E.center }, E.shell)

theorem contract_expandWithShell_center
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : ShapeStepPayload base k n)
    (X : ShapeChangingState base k n) :
    (contractOneStep base k (expandWithShell base k P X)).1 = X := by
  unfold contractOneStep expandWithShell
  change
    ({ visible :=
        (Spectral.encodeShell
          (Spectral.decodeShell
            ({ center := X.visible, shell := P.shell } :
              Spectral.SpectralShellEncoded (levelShape base n) k))).center } :
      ShapeChangingState base k n) = X
  rw [Spectral.encode_decode_shell]

theorem contract_expandWithShell_shell
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : ShapeStepPayload base k n)
    (X : ShapeChangingState base k n) :
    (contractOneStep base k (expandWithShell base k P X)).2 = P.shell := by
  unfold contractOneStep expandWithShell
  change
    (Spectral.encodeShell
      (Spectral.decodeShell
        ({ center := X.visible, shell := P.shell } :
          Spectral.SpectralShellEncoded (levelShape base n) k))).shell =
      P.shell
  rw [Spectral.encode_decode_shell]

theorem expand_contractOneStep
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (Y : ShapeChangingState base k (n + 1)) :
    expandWithShell base k
      ({ shell := (contractOneStep base k Y).2 } :
        ShapeStepPayload base k n)
      (contractOneStep base k Y).1
    = Y := by
  unfold expandWithShell contractOneStep
  change
    ({ visible := Spectral.decodeShell (Spectral.encodeShell Y.visible) } :
      ShapeChangingState base k (n + 1)) = Y
  rw [Spectral.decode_encode_shell]

theorem shape_changes_of_step
    (base : GridShape)
    (n : Nat) :
    (levelShape base (n + 1)).rows =
        (levelShape base n).rows + 2 ∧
    (levelShape base (n + 1)).cols =
        (levelShape base n).cols + 2 :=
  ⟨levelShape_rows_succ base n, levelShape_cols_succ base n⟩

def catalanShape
    (base : GridShape)
    (T : Catalan.CTree) : GridShape :=
  levelShape base T.internal

theorem catalanShape_rows_of_internal_succ
    (base : GridShape)
    {T U : Catalan.CTree}
    (h : U.internal = T.internal + 1) :
    (catalanShape base U).rows =
      (catalanShape base T).rows + 2 := by
  unfold catalanShape
  rw [h]
  exact levelShape_rows_succ base T.internal

theorem catalanShape_cols_of_internal_succ
    (base : GridShape)
    {T U : Catalan.CTree}
    (h : U.internal = T.internal + 1) :
    (catalanShape base U).cols =
      (catalanShape base T).cols + 2 := by
  unfold catalanShape
  rw [h]
  exact levelShape_cols_succ base T.internal

end ShapeChangingBundle
end Research
end Folder
```
