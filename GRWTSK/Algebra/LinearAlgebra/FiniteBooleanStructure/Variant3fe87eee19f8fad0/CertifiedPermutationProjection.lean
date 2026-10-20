/-
CertifiedPermutationProjection — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6
Organized SHA-256: 415fc08d98a2c5427ffc04ab3d5352766a3af4b951e6dc87ccdb79b32a53ee56
PMD: 510.1.070 linear algebra (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete seven-field projection preserves arbitrary finite X, its decidable equality, width, full encoding equivalence, whole CertifiedInvolution (including exact support), Boolean action-spec and separate ZMod2 matrix-entry-spec. No chosen carrier or premise is narrowed. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Geometry.GlobalProjection
import BitMatrix.FiniteField.Galois
import DAF.FiniteDynamics.Involution
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Binary matrix realization of a certified finite involution

The state action is encoded as a Boolean permutation matrix and separately as
a matrix over `ZMod 2`.  The two representations are connected entrywise.
The resulting `ZMod 2` action squares to the identity, but its determinant is
not used to infer integral permutation parity, orientation, or move legality.
-/

open FinitePermutationDynamics

/-- Exact Boolean and `GF(2)` realization of a finite certified involution. -/
structure BitMatrix.Algebra.InvolutionProjection
    (X : Type*) [Fintype X] [DecidableEq X] where
  width : Nat
  encode : X ≃ Fin width
  source : CertifiedInvolution X
  actionMatrix : BitMatrix width width
  action_spec :
    ∀ i j, actionMatrix i j = true ↔
      encode (source.act (encode.symm j)) = i
  f2Matrix : Matrix (Fin width) (Fin width) (ZMod 2)
  f2_spec :
    ∀ i j, f2Matrix i j = if actionMatrix i j then 1 else 0

namespace BitMatrix.Algebra.InvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

/-- Canonical realization generated directly from the certified action. -/
def ofCertified
    (width : Nat) (encode : X ≃ Fin width)
    (source : CertifiedInvolution X) : BitMatrix.Algebra.InvolutionProjection X where
  width := width
  encode := encode
  source := source
  actionMatrix i j := decide (encode (source.act (encode.symm j)) = i)
  action_spec i j := by simp
  f2Matrix i j := if decide (encode (source.act (encode.symm j)) = i) then 1 else 0
  f2_spec _ _ := rfl

variable (P : BitMatrix.Algebra.InvolutionProjection X)

theorem actionMatrix_eq_iff (i j : Fin P.width) :
    P.actionMatrix i j = true ↔
      P.encode (P.source.act (P.encode.symm j)) = i :=
  P.action_spec i j

/-- Exactly one matrix row is selected in each column. -/
theorem existsUnique_true_in_column (j : Fin P.width) :
    ∃! i, P.actionMatrix i j = true := by
  let i := P.encode (P.source.act (P.encode.symm j))
  refine ⟨i, (P.action_spec i j).mpr rfl, ?_⟩
  intro k hk
  exact ((P.action_spec k j).mp hk).symm

/-- Involutivity supplies the unique preimage selected in every row. -/
theorem existsUnique_true_in_row (i : Fin P.width) :
    ∃! j, P.actionMatrix i j = true := by
  let j := P.encode (P.source.act (P.encode.symm i))
  refine ⟨j, ?_, ?_⟩
  · apply (P.action_spec i j).mpr
    simp [j]
  · intro k hk
    have hstate : P.source.act (P.encode.symm k) = P.encode.symm i := by
      apply P.encode.injective
      simpa using (P.action_spec i k).mp hk
    have hkstate :
        P.encode.symm k = P.source.act (P.encode.symm i) := by
      have hact := congrArg P.source.act hstate
      simpa using hact
    apply P.encode.symm.injective
    simpa [j] using hkstate

theorem actionMatrix_column (i j : Fin P.width) :
    P.actionMatrix i j = true ↔
      i = P.encode (P.source.act (P.encode.symm j)) := by
  rw [P.action_spec]
  exact eq_comm

/-- Entry formula independent of the intermediate Boolean representation. -/
theorem f2Matrix_eq_ite (i j : Fin P.width) :
    P.f2Matrix i j =
      if P.encode (P.source.act (P.encode.symm j)) = i then 1 else 0 := by
  rw [P.f2_spec]
  by_cases h : P.encode (P.source.act (P.encode.symm j)) = i
  · have hb : P.actionMatrix i j = true := (P.action_spec i j).mpr h
    simp [hb, h]
  · have hb : P.actionMatrix i j = false := by
      cases hvalue : P.actionMatrix i j
      · rfl
      · exact False.elim (h ((P.action_spec i j).mp hvalue))
    simp [hb, h]

end BitMatrix.Algebra.InvolutionProjection
