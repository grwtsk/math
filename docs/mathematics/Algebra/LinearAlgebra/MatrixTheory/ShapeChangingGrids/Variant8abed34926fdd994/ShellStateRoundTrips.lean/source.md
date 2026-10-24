# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.ShellStateRoundTrips

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8dff9b513b848a1d098024e3791426c492665a7` · SHA-256 `48be8807f2c6817005cf4cf96c6a308b607c6c14f778af08fa1f7f77de4c9240`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ShellStateRoundTrips — individually reviewed exact mathematical source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7
Organized SHA-256: e3dd6955a78259da5793842acc4d975f397afc624c4b5d55da85dd4bc107b0eb
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete original finite real cell/channel state and shell payload with exact expansion/contraction and three inverse proofs. All base/k/n/P/X/Y parameters stay unchanged, including zero dimensions and k=0. No analytic spectral, heat-invertibility or geometric bundle assertion is added. -/

import Folder.Catalan.Tree
import Folder.Expansion.Shell
import Folder.Spectral.Expansion
import Folder.Spectral.Fiber
import Folder.Spectral.Tensor

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.LevelShapes

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


namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994

open Folder
open Folder.Research

open Carrier

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


end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994
```
