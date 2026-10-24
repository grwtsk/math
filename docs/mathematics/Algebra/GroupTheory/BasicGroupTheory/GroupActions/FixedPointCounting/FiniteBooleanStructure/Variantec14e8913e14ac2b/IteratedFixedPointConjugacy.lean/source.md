# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.FiniteBooleanStructure.Variantec14e8913e14ac2b.IteratedFixedPointConjugacy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e543a35033227cee270c617822a2b593affe7b8` · SHA-256 `870c98ec24b4814b68c178d2be42e91905e19cddfdfd64618852247ef313a7c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
IteratedFixedPointConjugacy — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d
Organized SHA-256: 2c83986545ea905b5af2fb1f20f153ca1b09a8214a0cee94703f84f2808d19ee
PMD: 510.1.030.010.050.020 fixed point counting (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Fixed points of arbitrary permutation iterates and their exact conjugacy cardinalities form a separate complete component. Arbitrary conjugacy is not claimed to preserve avalanche; explicit Hamming-isometric conjugacy does. Width zero cases remain unchanged. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Network.Permutation
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FiniteBooleanStructure.Variantec14e8913e14ac2b.HammingConjugacyAndAvalanche

/-!
# Finite symmetries of Boolean state spaces

This module separates the group theory of finite state permutations from the
avalanche statistics defined in `BitMatrix.Dynamics.Avalanche`.  Since `Bits n` has
`2 ^ n` elements, `BitPerm n` is the symmetric group on those Boolean states.
XOR translations embed an elementary abelian `2`-group `C₂^n`, while
coordinate relabelings embed a copy of the coordinate symmetric group `Sₙ`.
Their affine combinations form the explicit family `HammingIso`; no
classification of all Hamming isometries is claimed here.

Conjugation by an arbitrary state permutation preserves iteration and fixed
point counts, and therefore preserves the complete finite cycle structure.
Cycle structure alone implies neither SAC, derivative-bit independence, nor
low differential concentration.  Conjugation by one of the explicit Hamming
isometries additionally preserves SAC, because it only relabels inputs, input
directions, and output coordinates.
-/

namespace BitMatrix.Algebra.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Network.Permutation
open scoped BigOperators

/-! ## Fixed points

Cycle data begins with fixed points of iterates.  Conjugacy transports these
points bijectively, so their counts are invariant even when avalanche data is
not.
-/

/-- States fixed by the `r`-th iterate. -/
def fixedPoints {n : Nat} (H : BitPerm n) (r : Nat) : Finset (Bits n) :=
  Finset.univ.filter fun x => (H ^ r) x = x

/-- Number of states fixed by the `r`-th iterate. -/
def fixedPointCount {n : Nat} (H : BitPerm n) (r : Nat) : Nat :=
  (fixedPoints H r).card

theorem mem_fixedPoints_iff {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    x ∈ fixedPoints H r ↔ (H ^ r) x = x := by
  simp [fixedPoints]

@[simp]
theorem fixedPoints_zero {n : Nat} (H : BitPerm n) :
    fixedPoints H 0 = Finset.univ := by
  ext x
  simp [fixedPoints]

@[simp]
theorem fixedPointCount_zero {n : Nat} (H : BitPerm n) :
    fixedPointCount H 0 = 2 ^ n := by
  simp [fixedPointCount]

/-- An iterate cannot fix more states than the whole Boolean state space. -/
theorem fixedPointCount_le {n : Nat} (H : BitPerm n) (r : Nat) :
    fixedPointCount H r ≤ 2 ^ n := by
  rw [← BitMatrix.Dynamics.Avalanche.card_bits n, ← Finset.card_univ]
  exact Finset.card_le_card (Finset.filter_subset _ _)

/-- Conjugate state permutations have the same fixed-point counts at every time. -/
theorem fixedPointCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    fixedPointCount (conjugate g H) r = fixedPointCount H r := by
  classical
  unfold fixedPointCount
  apply Finset.card_equiv g.symm
  intro x
  simp only [mem_fixedPoints_iff]
  rw [conjugate_pow, conjugate_apply]
  constructor
  · intro hx
    apply g.injective
    simpa using hx
  · intro hx
    simpa using congrArg g hx

@[simp]
theorem fixedPointCount_identity {n : Nat} (r : Nat) :
    fixedPointCount (1 : BitPerm n) r = 2 ^ n := by
  simp [fixedPointCount, fixedPoints]

end BitMatrix.Algebra.Symmetry
```
