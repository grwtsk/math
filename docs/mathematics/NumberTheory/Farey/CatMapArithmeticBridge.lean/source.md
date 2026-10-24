# Complete source: GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05bbe17dc2eda31fe8e4b7ad2b044ccafc996a8d` · SHA-256 `b92764f71a4baec9348b786538a6a718a493c3b0e3b1908326ba2ab7ecdbe5d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI. Mathlib and external research keep their own attribution.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Not part of the public GRWTSK root pending pinned elaboration,
fresh kernel checking and the full transitive axiom audit.
-/
import GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# The Farey RL word IS the Arnold cat matrix; finite three-torsion transport

The genuine positive Farey shears in GroupSuperwalk are
L=[[1,0],[1,1]] and R=[[1,1],[0,1]]. The actual other
chronological word [right,left] has the integer matrix
M=RL=[[2,1],[1,1]]. With coordinate swap P=[[0,1],[1,0]],
M=P(LR)P and P²=I. Thus the same positive Farey source supplies
the standard Arnold cat matrix, but not a conjugacy of the
positive Farey CELL dynamical system with a torus automorphism.

The Mathlib-native additive torus is UnitAddTorus (Fin 2)=(R/Z)^2.
We define the actual matrix map x↦(2x0+x1,x0+x1) and use the
existing injective group hom ZMod.toAddCircle to embed ALL nine
F3² points as genuine torus points of order dividing three.
The source matrix map intertwines with that embedding, and
the exact selected projective -1 channel transports under P.

The finite eigensignal is an observation on a nine-point torsion
subsystem only. Continuous extension to all of the torus requires
a separate dynamical theorem and is NOT asserted in this module.
External Lean file ErgodicTheory/Examples/CatMapToral.lean
(Marcel Morgenstern, 2026) defines the same integer matrix.
That external code is NOT imported across its distinct toolchain.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge

open Matrix
open GRWTSK.NumberTheory.Farey.GroupSuperwalk
open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
open GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel

/-- The actual RIGHT-THEN-LEFT chronological Farey word, not an
independently assigned matrix with matching characteristic polynomial. -/
def catInteger : MatZ := (rightShear : MatZ) * leftShear

theorem catInteger_eq : catInteger = !![2, 1; 1, 1] := by
  simpa only [catInteger] using right_left_product

/-- Literal integer coordinate swap, including its signed orientation. -/
def swapInteger : MatZ := !![0, 1; 1, 0]

theorem swapInteger_sq : swapInteger * swapInteger = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [swapInteger, Matrix.mul_apply, Fin.sum_univ_two]

/-- The exact integer matrix conjugacy between Farey LR and RL.
The conjugator has determinant -1, so this is a GL2(Z) comparison,
not a claimed conjugacy by an element of SL2(Z). -/
theorem catInteger_conjugate :
    catInteger =
      swapInteger * ((leftShear : MatZ) * rightShear) * swapInteger := by
  rw [catInteger_eq, left_right_product]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [swapInteger, Matrix.mul_apply, Fin.sum_univ_two]

/-- The two matrices have exactly the same expanding real root
(3+sqrt(5))/2, but NO entropy statement follows from equality of
matrices unless an actual measure-preserving toral system is supplied. -/
def catReal : MatR := (rightShear : MatR) * leftShear

theorem catReal_eq : catReal = !![2, 1; 1, 1] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [catReal, rightShear, leftShear,
      Matrix.mul_apply, Fin.sum_univ_two]

def swapReal : MatR := !![0, 1; 1, 0]

theorem catReal_conjugate :
    catReal = swapReal * returnMatrix * swapReal := by
  rw [catReal_eq, returnMatrix_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [swapReal, Matrix.mul_apply, Fin.sum_univ_two]

/-- Exactly the opposite Farey chronological word modulo three. -/
def catFiniteMatrix : Mat3 := (rightShear : Mat3) * leftShear

theorem catFiniteMatrix_eq : catFiniteMatrix = !![2, 1; 1, 1] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    decide

/-- Explicit F3 coordinates of the source cat matrix action. -/
def catFinite (v : Vec3) : Vec3 :=
  ![v 0 + v 0 + v 1, v 0 + v 1]

theorem catFinite_matrix (v : Vec3) :
    catFinite v = catFiniteMatrix.mulVec v := by
  funext i
  fin_cases i <;>
    simp +decide [catFinite, catFiniteMatrix,
      rightShear, leftShear,
      Matrix.mulVec, dotProduct,
      Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- Swapping an actual finite column switches RL to LR. -/
def swapFinite (v : Vec3) : Vec3 := ![v 1, v 0]

theorem swapFinite_involutive (v : Vec3) :
    swapFinite (swapFinite v) = v := by
  funext i
  fin_cases i <;> rfl

theorem swapFinite_catFinite (v : Vec3) :
    swapFinite (catFinite v) =
      modThreeReturn.mulVec (swapFinite v) := by
  funext i
  fin_cases i
  · change v 0 + v 1 = (modThreeReturn.mulVec (swapFinite v)) 0
    rw [modThreeReturn_mulVec_zero]
    simp [swapFinite, add_comm]
  · change v 0 + v 0 + v 1 =
      (modThreeReturn.mulVec (swapFinite v)) 1
    rw [modThreeReturn_mulVec_one]
    simp [swapFinite]
    ring

/-- An exact sign-invariant -1 channel for the ACTUAL cat matrix
on all nine finite F3² vectors, not a global torus eigenfunction. -/
def finiteCatReadout (v : Vec3) : ℂ :=
  projectiveQuadraticReadout (swapFinite v)

theorem finiteCatReadout_eigen (v : Vec3) :
    finiteCatReadout (catFinite v) =
      (-1 : ℂ) * finiteCatReadout v := by
  change projectiveQuadraticReadout (swapFinite (catFinite v)) =
    (-1 : ℂ) * projectiveQuadraticReadout (swapFinite v)
  rw [swapFinite_catFinite, projectiveQuadraticReadout_return]

/-- The witness corresponding to the original Farey vector (1,0)
is now (0,1) in the actual RL-cat coordinates. -/
def finiteWitness : Vec3 := ![0, 1]

theorem finiteCatReadout_witness :
    finiteCatReadout finiteWitness = 1 := by
  simp +decide [finiteCatReadout, finiteWitness, swapFinite,
    projectiveQuadraticReadout, ternaryComplexSign, quadraticSignal]

/-- Actual torus (R/Z)^2, rather than an abstract "torus" label. -/
abbrev Torus2 := UnitAddTorus (Fin 2)

/-- The genuine Arnold cat-map coordinate action M=[[2,1],[1,1]]
on the torus's additive group. -/
def catTorus (x : Torus2) : Torus2 :=
  ![x 0 + x 0 + x 1, x 0 + x 1]

/-- Actual 3-torsion map from Mathlib's injective finite cyclic
additive-group hom into the real unit additive circle. -/
def torsionEmbedding (v : Vec3) : Torus2 :=
  fun i => ZMod.toAddCircle (v i)

theorem torsionEmbedding_injective :
    Function.Injective torsionEmbedding := by
  intro v w h
  funext i
  apply (ZMod.toAddCircle_injective 3)
  exact congrFun h i

/-- Every embedded point is killed by three, and the zero vector
is retained; no projective or sign quotient is silently taken. -/
theorem torsionEmbedding_three_nsmul (v : Vec3) :
    (3 : ℕ) • torsionEmbedding v = 0 := by
  funext i
  change (3 : ℕ) • ZMod.toAddCircle (v i) = 0
  have hz : (3 : ℕ) • (v i) = (0 : ZMod 3) := by
    fin_cases (v i) <;> decide
  calc
    (3 : ℕ) • ZMod.toAddCircle (v i) =
        ZMod.toAddCircle ((3 : ℕ) • (v i)) := by simp
    _ = 0 := by rw [hz]; simp

/-- The ACTUAL torus cat map agrees with the reduced matrix
on every embedded three-torsion point, by additivity of
ZMod.toAddCircle. This is a proved-in-source geometric bridge,
not a mere comparison of eigenvalues. -/
theorem catTorus_torsion_intertwines (v : Vec3) :
    catTorus (torsionEmbedding v) =
      torsionEmbedding (catFinite v) := by
  funext i
  fin_cases i <;>
    simp [catTorus, catFinite, torsionEmbedding,
      map_add, add_assoc]

/-- The transported finite phase is an exact -1 eigenreadout
on the embedded torsion subgroup, without any continuity
assumption or extension to the ambient real torus. -/
theorem torsion_phase_eigen (F : Torus2 → ℂ)
    (hAgree : ∀ v : Vec3,
      F (torsionEmbedding v) = finiteCatReadout v)
    (v : Vec3) :
    F (catTorus (torsionEmbedding v)) =
      (-1 : ℂ) * F (torsionEmbedding v) := by
  rw [catTorus_torsion_intertwines, hAgree,
    finiteCatReadout_eigen, hAgree]

end GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge
```
