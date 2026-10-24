/-
FaithfulActionsAndCoordinateCycle — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83
Organized SHA-256: dea4d7e33731fd5d52a8420650805e9d79e780ada5b5d87e0aad745d159eba26
PMD: 510.1.030.010.050 group actions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Only the two width-three faithful-action examples and the chosen three-cycle/state-permutation definition/equality are retained; no action classification or cryptographic law. -/

import BitMatrix.Algebra.Symmetry
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete tests for finite bit-state symmetries

These width-three checks exercise the faithful translation and coordinate
actions, a translated coordinate Hamming isometry, and the general SAC-score
invariance theorems for Hamming-isometric conjugacy.
-/

namespace BitMatrix.Tests.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Algebra.Symmetry
open BitMatrix.Network.Permutation

/-! ## Faithful width-three actions -/

example :
    Function.Injective (translationHom (n := 3)) :=
  translationHom_injective

example :
    Function.Injective (coordinatePermutationHom (n := 3)) :=
  coordinatePermutationHom_injective

/-! ## The three-coordinate cycle -/

/-- The coordinate cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def symmetryRotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- The state permutation induced by `symmetryRotate3Indices`. -/
def symmetryRotate3 : BitPerm 3 :=
  coordinatePermutation symmetryRotate3Indices

example :
    coordinatePermutationHom symmetryRotate3Indices = symmetryRotate3 := by
  ext x i
  rfl

/-! ## A nontrivially translated coordinate isometry -/

end BitMatrix.Tests.Symmetry
