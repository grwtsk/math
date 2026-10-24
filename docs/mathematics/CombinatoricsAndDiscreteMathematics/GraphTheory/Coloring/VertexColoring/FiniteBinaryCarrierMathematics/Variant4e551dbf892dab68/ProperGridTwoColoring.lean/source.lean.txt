/-
ProperGridTwoColoring — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4e551dbf892dab68afa5319e0a2941705f2a2f99740e0610f7427fe404e7c6ae
Organized SHA-256: 042e6d826fcf8f8546dca6e3f447422c0bfdc349cdd32aacae6a91081ba90378
PMD: 510.7.030.050.010 vertex coloring (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole unit-edge proper-two-coloring predicate, all three unchanged private parity helpers and the full adjacency proof. Arbitrary natural dimensions, including empty carriers, remain exact. Original declaration namespaces and historical imports are retained literally. No geometric, probabilistic, analytic, operational or kernel acceptance is inferred from historical labels. Tactics are preserved text and remain unexecuted. -/

import Folder.Carrier.BinaryMatrix
import Folder.Carrier.Grid

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBinaryCarrierMathematics.Variant4e551dbf892dab68.ParityPatternConstruction

/-!
# Folder.Bitspace.Checkerboard

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.checkerboard
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Bitspace

open Carrier

def IsProper2Coloring (M : BinaryMatrix) : Prop :=
  ∀ a b : Cell ⟨M.m, M.n⟩,
    EdgeAdjacent a b →
      M.get a.1 a.2 ≠ M.get b.1 b.2

private theorem cast_succ_zmod_two_ne
    (x : Nat) :
    ((x : Nat) : Bit) ≠ ((x + 1 : Nat) : Bit) := by
  intro h
  have hflip : Carrier.Bit.flip (((x : Nat) : Bit)) = (((x + 1 : Nat) : Bit)) := by
    unfold Carrier.Bit.flip
    norm_num [Nat.cast_add, add_assoc]
  exact Carrier.Bit.flip_ne_self (((x : Nat) : Bit)) (by simpa [hflip] using h.symm)

private theorem step_ne
    {r c d : Nat}
    (h : c + 1 = d) :
    (((r + c : Nat) : Bit) ≠ ((r + d : Nat) : Bit)) := by
  subst d
  intro heq
  have hstep :
      (((r + (c + 1) : Nat) : Bit) =
        Carrier.Bit.flip (((r + c : Nat) : Bit))) := by
    unfold Carrier.Bit.flip
    norm_num [Nat.cast_add, add_assoc, add_comm, add_left_comm]
  exact Carrier.Bit.flip_ne_self (((r + c : Nat) : Bit)) (by
    rw [← hstep]
    exact heq.symm)

private theorem step_flip
    {r c d : Nat}
    (h : c + 1 = d) :
    (((r + d : Nat) : Bit) =
      Carrier.Bit.flip (((r + c : Nat) : Bit))) := by
  subst d
  unfold Carrier.Bit.flip
  norm_num [Nat.cast_add, add_assoc, add_comm, add_left_comm]

theorem checkerboard_isProper2Coloring
    (m n : Nat) :
    IsProper2Coloring (checkerboard m n) := by
  intro a b hab
  rcases hab with ⟨hrow, hcol⟩ | ⟨hcol, hrow⟩
  · have hrval : a.1.val = b.1.val := congrArg Fin.val hrow
    rcases hcol with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + b.2.val : Nat) : Bit) =
            ((a.1.val + a.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.1.val + a.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((a.1.val + b.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits
      exact Carrier.Bit.flip_ne_self (((a.1.val + b.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
  · have hcval : a.2.val = b.2.val := congrArg Fin.val hcol
    rcases hrow with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + b.1.val : Nat) : Bit) =
            ((a.2.val + a.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.2.val + a.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + a.1.val : Nat) : Bit) =
            ((a.2.val + b.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits
      exact Carrier.Bit.flip_ne_self (((a.2.val + b.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)

end Bitspace
end Folder
