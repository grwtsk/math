# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant471c52b83305ee16.InfiniteMatrixStreamsAndPrefixes

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2e29355af37be02250480f7130879d97eff0c5d` · SHA-256 `6fd7c694992c5fb6ead0993b43b15869eb4ad5b9a8a51ada29484c349da2b50e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
InfiniteMatrixStreamsAndPrefixes — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86
Organized SHA-256: 1a5e1838d7e63111d0c54c4c25fd90269f20bdf63ff13b8bacfa93338ec5bfaa
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole Nat-indexed matrix function and exact finite-prefix/fixed-width implications; no topology, convergence or semantic time law. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.BinaryMatrix
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant471c52b83305ee16.FixedShapeFiniteMatrixWords

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
/--
An infinite temporal BinaryMatrix stream.

This is the true "marches over time" object: time is `Nat`, and every
time-slice is a BinaryMatrix word/state.
-/
structure InfiniteBinaryMatrixStream where
  frame : Nat → BinaryMatrix

namespace InfiniteBinaryMatrixStream
/-- Frame at natural time. -/
def frameAt (S : InfiniteBinaryMatrixStream) (t : Nat) : BinaryMatrix :=
  S.frame t

/--
Finite-width condition for an infinite temporal stream.

There is one spatial matrix shape `(m,n)` used at every time.
-/
def HasFixedWidth (S : InfiniteBinaryMatrixStream) : Prop :=
  ∃ m n : Nat, ∀ t : Nat,
    (S.frameAt t).m = m ∧ (S.frameAt t).n = n

/--
The first `k` time-slices of an infinite stream form the existing finite
`BinaryMatrixStream`.
-/
def «prefix» (S : InfiniteBinaryMatrixStream) (k : Nat) :
    BinaryMatrixStream where
  k := k
  layer := fun t => S.frameAt t.val

theorem prefix_timeLength
    (S : InfiniteBinaryMatrixStream) (k : Nat) :
    BinaryMatrixStream.timeLength (S.prefix k) = k := by
  rfl

theorem prefix_frameAt
    (S : InfiniteBinaryMatrixStream) (k : Nat) (t : Fin k) :
    BinaryMatrixStream.frameAt (S.prefix k) t = S.frameAt t.val := by
  rfl

/--
Finite width descends from an infinite temporal stream to every finite
time-window.
-/
theorem prefix_hasFixedWidth
    (S : InfiniteBinaryMatrixStream)
    (hS : HasFixedWidth S)
    (k : Nat) :
    BinaryMatrixStream.HasFixedWidth (S.prefix k) := by
  rcases hS with ⟨m, n, h⟩
  refine ⟨m, n, ?_⟩
  intro t
  exact h t.val

end InfiniteBinaryMatrixStream
end Carrier
end Folder
```
