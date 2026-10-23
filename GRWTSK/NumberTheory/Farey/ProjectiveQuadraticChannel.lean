/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI. Imported work retains its attribution.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This independent finite algebraic supplier is not imported by GRWTSK.lean
pending pinned Lean elaboration, fresh kernel replay and transitive axiom audit.
-/
import GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction
import Mathlib.Tactic

/-!
# An actual projectively descended (-1) Farey return eigenchannel

For the source Farey return H = L*R = [[1,1],[1,2]] over ZMod 3,
H^2 = -I. The existing oriented-vector quarter-turn phi has
eigenvalue i but does not descend under the antipodal sign.

This module constructs a DIFFERENT, globally defined readout:
  Q(x,y) = x * (x+y) in ZMod 3,
  chi(0)=0, chi(1)=1, chi(2)=-1 in Complex,
  f(v)=chi(Q(v)).

The crucial identities are Q(-v)=Q(v), Q(Hv)=-Q(v),
f(-v)=f(v), and f(Hv)=-f(v) for EVERY vector (including zero).
The construction has a nonzero value at (1,0); it descends through
the literal sign-orbit setoid, and the induced quotient endomorphism
retains the -1 Koopman eigenrelation.

This is a nontrivial projective eigensignal on the finite sign quotient,
not a full SL2(Z) character, irrational Sturmian spectrum or RH claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel

open Matrix
open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.GroupSuperwalk

abbrev Vec3 := Fin 2 → ZMod 3

/-- The selected quadratic over F_3; unlike the oriented i-channel,
this is invariant under the central sign gauge on vectors. -/
def quadraticSignal (v : Vec3) : ZMod 3 :=
  v 0 * (v 0 + v 1)

theorem quadraticSignal_neg (v : Vec3) :
    quadraticSignal (-v) = quadraticSignal v := by
  change -(v 0) * (-(v 0) + -(v 1)) =
    v 0 * (v 0 + v 1)
  ring

/-- Literal endpoint coordinates of the SAME source Farey LR matrix modulo 3. -/
theorem modThreeReturn_mulVec_zero (v : Vec3) :
    (modThreeReturn.mulVec v) 0 = v 0 + v 1 := by
  simp +decide [modThreeReturn, leftShear, rightShear,
    Matrix.mulVec, dotProduct, Matrix.mul_apply, Fin.sum_univ_two]

theorem modThreeReturn_mulVec_one (v : Vec3) :
    (modThreeReturn.mulVec v) 1 = v 0 + 2 * v 1 := by
  simp +decide [modThreeReturn, leftShear, rightShear,
    Matrix.mulVec, dotProduct, Matrix.mul_apply, Fin.sum_univ_two]

/-- Global quadratic Koopman eigenrelation, proved using characteristic 3,
not extrapolated from the four sampled orbit states. -/
theorem quadraticSignal_return (v : Vec3) :
    quadraticSignal (modThreeReturn.mulVec v) = -quadraticSignal v := by
  change (modThreeReturn.mulVec v) 0 *
    ((modThreeReturn.mulVec v) 0 + (modThreeReturn.mulVec v) 1) =
    -(v 0 * (v 0 + v 1))
  rw [modThreeReturn_mulVec_zero, modThreeReturn_mulVec_one]
  calc
    (v 0 + v 1) * ((v 0 + v 1) + (v 0 + 2 * v 1)) =
        -(v 0 * (v 0 + v 1)) +
          (3 : ZMod 3) * (v 0 + v 1) ^ 2 := by ring
    _ = -(v 0 * (v 0 + v 1)) := by
      rw [show (3 : ZMod 3) = 0 by decide]
      ring

/-- Complex lift of the signed three-element residual signal.
It is NOT a ring homomorphism from characteristic three to zero. -/
def ternaryComplexSign (a : ZMod 3) : ℂ :=
  if a = 0 then 0 else if a = 1 then 1 else -1

theorem ternaryComplexSign_neg (a : ZMod 3) :
    ternaryComplexSign (-a) = -ternaryComplexSign a := by
  have h0 : ternaryComplexSign (0 : ZMod 3) = 0 := by
    rw [ternaryComplexSign, if_pos rfl]
  have h1 : ternaryComplexSign (1 : ZMod 3) = 1 := by
    rw [ternaryComplexSign, if_neg (by decide), if_pos rfl]
  have h2 : ternaryComplexSign (2 : ZMod 3) = -1 := by
    rw [ternaryComplexSign, if_neg (by decide), if_neg (by decide)]
  fin_cases a
  · change ternaryComplexSign (-(0 : ZMod 3)) = -ternaryComplexSign 0
    rw [neg_zero, h0, neg_zero]
  · change ternaryComplexSign (-(1 : ZMod 3)) = -ternaryComplexSign 1
    rw [show -(1 : ZMod 3) = 2 by decide, h2, h1]
  · change ternaryComplexSign (-(2 : ZMod 3)) = -ternaryComplexSign 2
    rw [show -(2 : ZMod 3) = 1 by decide, h1, h2, neg_neg]

/-- The actual global complex readout, including the zero vector. -/
def projectiveQuadraticReadout (v : Vec3) : ℂ :=
  ternaryComplexSign (quadraticSignal v)

theorem projectiveQuadraticReadout_sign_invariant (v : Vec3) :
    projectiveQuadraticReadout (-v) = projectiveQuadraticReadout v := by
  simp [projectiveQuadraticReadout, quadraticSignal_neg]

/-- This eigenrelation holds on ALL nine F_3^2 vectors, not only the
earlier four-vector selected orbit. -/
theorem projectiveQuadraticReadout_return (v : Vec3) :
    projectiveQuadraticReadout (modThreeReturn.mulVec v) =
      (-1 : ℂ) * projectiveQuadraticReadout v := by
  change ternaryComplexSign (quadraticSignal (modThreeReturn.mulVec v)) =
    (-1 : ℂ) * ternaryComplexSign (quadraticSignal v)
  rw [quadraticSignal_return, ternaryComplexSign_neg]
  ring

/-- The signal genuinely survives the projective quotient. -/
theorem projectiveQuadraticReadout_nonzero :
    projectiveQuadraticReadout (residueOrbit (0 : Fin 4)) = 1 := by
  norm_num [projectiveQuadraticReadout, ternaryComplexSign,
    quadraticSignal, residueOrbit]

/-- On the earlier selected four-vector orbit it agrees with the
SQUARE of the oriented complex i-phase. It vanishes on the
other two projective points; no nonzero-everywhere claim. -/
theorem projectiveQuadraticReadout_on_orbit (j : Fin 4) :
    projectiveQuadraticReadout (residueOrbit j) = (orbitPhase j) ^ 2 := by
  fin_cases j <;>
    norm_num [projectiveQuadraticReadout, ternaryComplexSign,
      quadraticSignal, residueOrbit, orbitPhase, pow_two, Complex.I_mul_I]
  all_goals simp +decide

/-- Every antipodal sign orbit, including the zero vector, forms a
single equivalence class. This is a concrete Setoid, not an implicit
identification with a geometric projective space over another field. -/
def signOrbitSetoid : Setoid Vec3 where
  r a b := b = a ∨ b = -a
  iseqv := by
    refine ⟨?_, ?_, ?_⟩
    · intro a
      exact Or.inl rfl
    · intro a b hab
      rcases hab with hab | hab
      · exact Or.inl hab.symm
      · right
        calc
          a = -(-a) := (neg_neg a).symm
          _ = -b := (congrArg Neg.neg hab).symm
    · intro a b c hab hbc
      rcases hab with hab | hab
      · subst b
        exact hbc
      · rcases hbc with hbc | hbc
        · exact Or.inr (hbc.trans hab)
        · left
          calc
            c = -b := hbc
            _ = -(-a) := congrArg Neg.neg hab
            _ = a := neg_neg a

/-- The quotient by the actual sign gauge. Over F_3 every nonzero
scalar is either 1 or -1, so its four nonzero classes agree with P^1(F_3).
The zero class is retained separately. -/
abbrev SignOrbitQuotient := Quotient signOrbitSetoid

def signOrbitClass (v : Vec3) : SignOrbitQuotient :=
  Quotient.mk signOrbitSetoid v

/-- The source Farey return commutes with the sign operation on vectors. -/
theorem modThreeReturn_mulVec_neg (v : Vec3) :
    modThreeReturn.mulVec (-v) = -(modThreeReturn.mulVec v) := by
  funext i
  fin_cases i <;>
    simp +decide [modThreeReturn, leftShear, rightShear,
      Matrix.mulVec, dotProduct, Matrix.mul_apply, Fin.sum_univ_two]

/-- Genuine induced return on the sign quotient, rather than a
permutation assumed to exist on quotient labels. -/
def returnOnSignQuotient : SignOrbitQuotient → SignOrbitQuotient :=
  Quotient.map (fun v : Vec3 => modThreeReturn.mulVec v) (by
    intro a b hab
    change modThreeReturn.mulVec b = modThreeReturn.mulVec a ∨
      modThreeReturn.mulVec b = -(modThreeReturn.mulVec a)
    rcases hab with hab | hab
    · exact Or.inl (by rw [hab])
    · exact Or.inr (by rw [hab, modThreeReturn_mulVec_neg]))

/-- The sign-invariant readout descends as an ACTUAL function on
the quotient: no choice of oriented representative is needed. -/
def descendedQuadraticReadout : SignOrbitQuotient → ℂ :=
  Quotient.lift projectiveQuadraticReadout (by
    intro a b hab
    rcases hab with hab | hab
    · exact (congrArg projectiveQuadraticReadout hab).symm
    · calc
        projectiveQuadraticReadout a =
            projectiveQuadraticReadout (-a) :=
          (projectiveQuadraticReadout_sign_invariant a).symm
        _ = projectiveQuadraticReadout b := by rw [hab])

/-- The source return has a global -1 eigenfunction on the finite
sign quotient; the earlier i-channel no-go is not contradicted. -/
theorem descendedQuadraticReadout_eigen (q : SignOrbitQuotient) :
    descendedQuadraticReadout (returnOnSignQuotient q) =
      (-1 : ℂ) * descendedQuadraticReadout q := by
  refine Quotient.inductionOn q (fun v => ?_)
  change projectiveQuadraticReadout (modThreeReturn.mulVec v) =
    (-1 : ℂ) * projectiveQuadraticReadout v
  exact projectiveQuadraticReadout_return v

/-- Nonzero certificate for the actual descended eigenchannel. -/
theorem descendedQuadraticReadout_nonzero :
    descendedQuadraticReadout
      (signOrbitClass (residueOrbit (0 : Fin 4))) ≠ 0 := by
  change projectiveQuadraticReadout (residueOrbit (0 : Fin 4)) ≠ 0
  rw [projectiveQuadraticReadout_nonzero]
  norm_num

end GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel
