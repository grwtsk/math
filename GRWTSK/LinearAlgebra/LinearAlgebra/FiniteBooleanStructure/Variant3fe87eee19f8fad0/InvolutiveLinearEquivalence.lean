/-
InvolutiveLinearEquivalence — exact individually reviewed source
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

/- Determinant over ZMod2 is not used for integral parity/orientation/move legality; no geometric projection witness or numerical performance is inferred. All original imports remain as historical identities. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Geometry.GlobalProjection
import BitMatrix.FiniteField.Galois
import DAF.FiniteDynamics.Involution
import Mathlib.LinearAlgebra.Matrix.ToLin

import GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.OneHotMatrixAction

/-!
# Binary matrix realization of a certified finite involution

The state action is encoded as a Boolean permutation matrix and separately as
a matrix over `ZMod 2`.  The two representations are connected entrywise.
The resulting `ZMod 2` action squares to the identity, but its determinant is
not used to infer integral permutation parity, orientation, or move legality.
-/

open FinitePermutationDynamics

namespace BitMatrix.Algebra.InvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

variable (P : BitMatrix.Algebra.InvolutionProjection X)

/-- Associated linear map on `GF(2)` vectors. -/
def f2LinearMap :
    (Fin P.width → ZMod 2) →ₗ[ZMod 2] (Fin P.width → ZMod 2) :=
  Matrix.mulVecLin P.f2Matrix

@[simp]
theorem f2LinearMap_apply (v : Fin P.width → ZMod 2) :
    P.f2LinearMap v = P.f2Matrix.mulVec v :=
  rfl

@[simp]
theorem f2LinearMap_involutive (v : Fin P.width → ZMod 2) :
    P.f2LinearMap (P.f2LinearMap v) = v := by
  change P.f2Matrix.mulVec (P.f2Matrix.mulVec v) = v
  rw [Matrix.mulVec_mulVec, P.f2Matrix_mul_self]
  simp

/-- The matrix action as a self-inverse linear equivalence. -/
def f2LinearEquiv :
    (Fin P.width → ZMod 2) ≃ₗ[ZMod 2] (Fin P.width → ZMod 2) where
  toFun := P.f2LinearMap
  invFun := P.f2LinearMap
  map_add' := P.f2LinearMap.map_add
  map_smul' := P.f2LinearMap.map_smul
  left_inv := P.f2LinearMap_involutive
  right_inv := P.f2LinearMap_involutive

theorem f2LinearMap_injective : Function.Injective P.f2LinearMap := by
  intro u v h
  calc
    u = P.f2LinearMap (P.f2LinearMap u) :=
      (P.f2LinearMap_involutive u).symm
    _ = P.f2LinearMap (P.f2LinearMap v) := congrArg P.f2LinearMap h
    _ = v := P.f2LinearMap_involutive v

theorem f2LinearMap_ker : P.f2LinearMap.ker = ⊥ := by
  rw [LinearMap.ker_eq_bot']
  intro v hv
  calc
    v = P.f2LinearMap (P.f2LinearMap v) :=
      (P.f2LinearMap_involutive v).symm
    _ = P.f2LinearMap 0 := by rw [hv]
    _ = 0 := P.f2LinearMap.map_zero

end BitMatrix.Algebra.InvolutionProjection
