# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant471c52b83305ee16.FixedShapeFiniteMatrixWords

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff` · SHA-256 `3cd026276cbff5389b94afc14e23594b4bf73fd006443eddfa70b64eaa5eda90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FixedShapeFiniteMatrixWords — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86
Organized SHA-256: 1a5e1838d7e63111d0c54c4c25fd90269f20bdf63ff13b8bacfa93338ec5bfaa
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole fixed-shape predicate and all actual proofs, including complete shape-preservation hypothesis on the map. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.BinaryMatrix
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.SourceComponents.Variant471c52b83305ee16.FiniteMatrixWords

/-!
# Folder.Carrier.BinaryMatrixStream

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.binary_matrix_stream
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
namespace BinaryMatrixStream
/-- Temporal length of a finite stream window. Same data as `length`. -/
def timeLength (s : BinaryMatrixStream) : Nat :=
  s.k

/-- Frame at finite time index. Same data as `get`. -/
def frameAt (s : BinaryMatrixStream) (t : Fin s.k) : BinaryMatrix :=
  get s t

theorem timeLength_eq_length (s : BinaryMatrixStream) :
    timeLength s = length s := by
  rfl

theorem frameAt_eq_get (s : BinaryMatrixStream) (t : Fin s.k) :
    frameAt s t = get s t := by
  rfl

/--
Finite-width condition for a temporal BinaryMatrixStream.

All frames have the same matrix shape. This is the correct meaning of
"finite width": the spatial word-size is fixed while time advances.
-/
def HasFixedWidth (s : BinaryMatrixStream) : Prop :=
  ∃ m n : Nat, ∀ t : Fin s.k,
    (frameAt s t).m = m ∧ (frameAt s t).n = n

/-- A finite stream with zero time-length is vacuously fixed-width. -/
theorem empty_hasFixedWidth :
    HasFixedWidth empty := by
  refine ⟨0, 0, ?_⟩
  intro t
  exact Fin.elim0 t

/--
If every frame has shape `(m,n)`, then the stream has fixed width.
-/
theorem hasFixedWidth_of_shape
    (s : BinaryMatrixStream)
    (m n : Nat)
    (h : ∀ t : Fin s.k,
      (frameAt s t).m = m ∧ (frameAt s t).n = n) :
    HasFixedWidth s := by
  exact ⟨m, n, h⟩

/--
Mapping a shape-preserving matrix operation over time preserves fixed width.
-/
theorem mapMatrix_hasFixedWidth
    (f : BinaryMatrix → BinaryMatrix)
    (hf : ∀ M : BinaryMatrix, (f M).m = M.m ∧ (f M).n = M.n)
    (s : BinaryMatrixStream)
    (h : HasFixedWidth s) :
    HasFixedWidth (mapMatrix f s) := by
  rcases h with ⟨m, n, hs⟩
  refine ⟨m, n, ?_⟩
  intro t
  have hst := hs t
  have hft := hf (get s t)
  constructor
  · calc
      (frameAt (mapMatrix f s) t).m
          = (f (get s t)).m := by
              rw [frameAt_eq_get, get_mapMatrix]
      _ = (get s t).m := hft.1
      _ = m := hst.1
  · calc
      (frameAt (mapMatrix f s) t).n
          = (f (get s t)).n := by
              rw [frameAt_eq_get, get_mapMatrix]
      _ = (get s t).n := hft.2
      _ = n := hst.2

end BinaryMatrixStream
end Carrier
end Folder
```
