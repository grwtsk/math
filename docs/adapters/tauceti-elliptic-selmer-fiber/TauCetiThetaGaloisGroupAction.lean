/- Copyright (c) 2026 grwtsk contributors. MIT.
ORIGINAL_SOURCE_PROOF_CANDIDATE; PARSING_NOT_RUN; COMPILATION_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original sources: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible upstream toolchain Lean v4.36.0-rc1; NOT a grwtsk/math
Lean v4.34.1 root import. Both isolated theta adapters must be
available via the Tau Ceti LEAN_PATH.
-/
import TauCetiOriginalGeometricThetaGalois

set_option autoImplicit false
noncomputable section

/-!
# The genuine Galois action by automorphisms of the actual theta group

Prior source already defines
  * ThetaLift (E/Fsep,n) with its REAL function-field Group law,
  * thetaLiftGalois σ x with original elliptic point and rational
    function Galois actions,
  * W.functionFieldGaloisAction_translation,
  * W.pointGaloisAction and true Galois action on E[n].

This source proves the group-action axioms directly on those exact
objects, with the translated function argument and sign preserved.
No chosen finite Heisenberg group, proxy E[n], Brauer factor or
period-index function is introduced.

This is a SOURCE PROOF CANDIDATE, not a kernel result.
Continuous Galois SMul for the entire (infinite) theta group, the
original raw scalar's finite-level continuity, its H² class and the
geometric commutator = original Weil pairing remain separate.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction

open TauCeti
open WeierstrassCurve WeierstrassCurve.Affine
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev K := SeparableClosure F
private abbrev E := (W⁄(SeparableClosure F)).toAffine
private abbrev G := AbsoluteGaloisGroup F

/-- Source ORIGINAL Galois and theta translation commute,
including the actual minus sign of the theta group law. -/
theorem galois_commutes_thetaTranslate_unit
    (σ : G (F := F)) (T : (E W).Point)
    (f : (E W).FunctionFieldˣ) :
    Units.map
        (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
        (Units.map (thetaTranslate (E W) T :
          (E W).FunctionField →* (E W).FunctionField) f) =
      Units.map
        (thetaTranslate (E W)
          (Multiplicative.toAdd (W.pointGaloisAction σ) T) :
          (E W).FunctionField →* (E W).FunctionField)
        (Units.map
          (MonoidHom.ofClass (W.functionFieldGaloisAction σ)) f) := by
  apply Units.ext
  change W.functionFieldGaloisAction σ
      ((E W).translation
        (Point.equivBaseChangeSelf (E W) (-T)) f) =
    (E W).translation
      (Point.equivBaseChangeSelf (E W)
        (-(Multiplicative.toAdd (W.pointGaloisAction σ) T)))
      (W.functionFieldGaloisAction σ f)
  have h := W.functionFieldGaloisAction_translation σ (-T) (f : (E W).FunctionField)
  have hneg :
      Multiplicative.toAdd (W.pointGaloisAction σ) (-T) =
        -(Multiplicative.toAdd (W.pointGaloisAction σ) T) :=
    map_neg _ T
  simpa only [hneg] using h

/-- The original Galois action preserves the REAL theta
product of rational-function lifts. -/
theorem thetaLiftGalois_mul
    (σ : G (F := F)) (x y : ThetaLift (E W) n) :
    thetaLiftGalois W n σ (x * y) =
      thetaLiftGalois W n σ x *
        thetaLiftGalois W n σ y := by
  apply ThetaLift.ext (E W) n
  · change
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (x.point + y.point) =
      Multiplicative.toAdd (W.pointGaloisAction σ) x.point +
        Multiplicative.toAdd (W.pointGaloisAction σ) y.point
    exact map_add _ _ _
  · change
      Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
        (x.function *
          Units.map (thetaTranslate (E W) x.point :
            (E W).FunctionField →* (E W).FunctionField)
            y.function) =
      Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
          x.function *
        Units.map (thetaTranslate (E W)
          (Multiplicative.toAdd (W.pointGaloisAction σ) x.point) :
            (E W).FunctionField →* (E W).FunctionField)
          (Units.map (MonoidHom.ofClass
            (W.functionFieldGaloisAction σ)) y.function)
    rw [map_mul, galois_commutes_thetaTranslate_unit W n σ x.point y.function]

/-- The identity theta lift is Galois-fixed. -/
theorem thetaLiftGalois_one (σ : G (F := F)) :
    thetaLiftGalois W n σ (1 : ThetaLift (E W) n) = 1 := by
  apply ThetaLift.ext (E W) n
  · change Multiplicative.toAdd (W.pointGaloisAction σ) 0 = 0
    exact map_zero _
  · change Units.map
      (MonoidHom.ofClass (W.functionFieldGaloisAction σ)) 1 = 1
    simp

/-- The Galois group identity acts trivially on the
original elliptic point and function field. -/
theorem thetaLiftGalois_id (x : ThetaLift (E W) n) :
    thetaLiftGalois W n (1 : G (F := F)) x = x := by
  apply ThetaLift.ext (E W) n
  · change Multiplicative.toAdd (W.pointGaloisAction 1) x.point = x.point
    rw [map_one]
    rfl
  · change Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction 1))
      x.function = x.function
    rw [map_one]
    simp

/-- Genuine Galois composition on the source theta lifts;
the action convention is the ORIGINAL Tau Ceti
homomorphism into automorphisms, not its opposite. -/
theorem thetaLiftGalois_comp
    (σ τ : G (F := F)) (x : ThetaLift (E W) n) :
    thetaLiftGalois W n (σ * τ) x =
      thetaLiftGalois W n σ (thetaLiftGalois W n τ x) := by
  apply ThetaLift.ext (E W) n
  · change
      Multiplicative.toAdd (W.pointGaloisAction (σ * τ)) x.point =
        Multiplicative.toAdd (W.pointGaloisAction σ)
          (Multiplicative.toAdd (W.pointGaloisAction τ) x.point)
    rw [map_mul]
    rfl
  · change
      Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction (σ * τ)))
        x.function =
      Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
        (Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction τ))
          x.function)
    rw [map_mul]
    apply Units.ext
    rfl

/-- The genuine original theta group now carries an
explicit multiplicative distributive Galois action,
so the central-extension 2-cocycle group algebra
can be instantiated with the SAME actual theta lifts. -/
noncomputable instance thetaLiftGaloisMulDistribMulAction :
    MulDistribMulAction (G (F := F)) (ThetaLift (E W) n) where
  smul := thetaLiftGalois W n
  one_smul := thetaLiftGalois_id W n
  mul_smul := thetaLiftGalois_comp W n
  smul_one := thetaLiftGalois_one W n
  smul_mul := thetaLiftGalois_mul W n

/-- The scalar kernel, identified with original
`(Fsep)ˣ` by the faithful `scalarLiftHom`,
is genuinely Galois-equivariant. -/
theorem thetaLiftGalois_scalar
    (σ : G (F := F)) (c : (K (F := F))ˣ) :
    thetaLiftGalois W n σ
        (scalarLift (E W) n c) =
      scalarLift (E W) n (σ • c) := by
  apply ThetaLift.ext (E W) n
  · change Multiplicative.toAdd (W.pointGaloisAction σ) 0 = 0
    exact map_zero _
  · apply Units.ext
    change W.functionFieldGaloisAction σ
        (algebraMap (K (F := F)) (E W).FunctionField (c : K (F := F))) =
      algebraMap (K (F := F)) (E W).FunctionField
        ((σ • c : (K (F := F))ˣ) : K (F := F))
    rw [W.functionFieldGaloisAction_algebraMap]
    rfl

/-- The scalar inclusion is a map of the genuine original
Galois multiplicative groups, not just of abstract
constant fields. -/
theorem scalarLiftHom_galois
    (σ : G (F := F)) (c : (K (F := F))ˣ) :
    σ • scalarLiftHom (E W) n c =
      scalarLiftHom (E W) n (σ • c) :=
  thetaLiftGalois_scalar W n σ c

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction
