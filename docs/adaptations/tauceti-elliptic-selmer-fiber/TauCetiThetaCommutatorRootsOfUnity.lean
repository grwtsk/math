/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original mathematical API: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compile with Tau Ceti Lean v4.36.0-rc1 only; the grwtsk/math
Lean v4.34.1 root must not import this adapter.
-/
import TauCetiOriginalGeometricTheta
import TauCeti.GroupTheory.Commutator
import TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.MulByInt.WeilPairing.Basic

set_option autoImplicit false
noncomputable section

/-!
# Original geometric theta commutator is a true n-th root of unity

In Tau Ceti's ACTUAL rational-function theta group the projection to
E[n] is additive, the scalar kernel is CENTRAL, and every lift of
an original n-torsion point has central n-th power. The source
commutator-power theorem therefore gives

    [x,y]^n = [x^n,y] = 1.

The ORIGINAL theta commutator is not assigned an abstract Heisenberg
scalar. Its rational-function numerator/denominator was independently
defined as

    f_x tau_{-x.point}(f_y)/(f_y tau_{-y.point}(f_x)),

and the source zero-principal-divisor theorem had already extracted
the UNIQUE original nonzero constant from this function.
The lemmas below compare that actual constant with the group
commutator and prove it lies in the genuine rootsOfUnity n F.

This is a real arithmetic/structural bridge to the *coefficient*
of Tau Ceti's Isogeny.weilPairing; it is NOT YET an equality
with the specific original Weil pairing. Establishing that requires
the explicit source [n]-pullback/divisor comparison and its sign.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorRootsOfUnity

open TauCeti
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve.Affine F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

/-- Raising an ACTUAL elliptic theta lift to its m-th power
projects to the original m-fold additive point law. -/
theorem thetaLift_pow_point (x : ThetaLift W n) (m : ℕ) :
    (x ^ m).point = m • x.point := by
  induction m with
  | zero => simp
  | succ m ih =>
      rw [pow_succ, ThetaLift.mul_point, ih]
      simp only [succ_nsmul]

/-- Since x.point is REAL n-torsion, its actual theta
n-th power is a nonzero constant rational function. -/
theorem exists_scalarLift_pow_n (x : ThetaLift W n) :
    ∃ c : Fˣ, x ^ n = scalarLift W n c := by
  have hp : (x ^ n).point = 0 := by
    rw [thetaLift_pow_point]
    simpa only [natCast_zsmul] using x.point_torsion
  exact exists_scalarLift_of_point_eq_zero W n (x ^ n) hp

/-- The group commutator of ORIGINAL theta lifts is a
central group element, and the n-th power of the first
theta lift commutes with the second. Thus the TRUE
commutator has exponent dividing n. -/
theorem thetaGroupCommutator_pow_n_eq_one
    (x y : ThetaLift W n) :
    ⁅x,y⁆ ^ n = 1 := by
  have hc : ∀ z : ThetaLift W n, Commute ⁅x,y⁆ z := by
    intro z
    refine ⟨?_⟩
    change (x * y * x⁻¹ * y⁻¹) * z =
      z * (x * y * x⁻¹ * y⁻¹)
    exact thetaGroupCommutator_central W n x y z
  obtain ⟨c,hcscalar⟩ := exists_scalarLift_pow_n W n x
  have hxn : Commute (x ^ n) y := by
    refine ⟨?_⟩
    rw [hcscalar]
    exact scalarLift_central W n c y
  have hcomm : Commute y ⁅x,y⁆ := (hc y).symm
  have hpow : ⁅x ^ n,y⁆ = ⁅x,y⁆ ^ n :=
    hcomm.commutatorElement_pow_left n
  have hz : ⁅x ^ n,y⁆ = 1 :=
    commutatorElement_eq_one_iff_commute.mpr hxn
  exact hpow.symm.trans hz

/-- The literal function of the genuine theta GROUP
commutator is the exact original rational-function
commutator: this checks translation signs and the
numerator/denominator order BEFORE comparing to e_n. -/
theorem groupCommutator_function_eq
    (x y : ThetaLift W n) :
    ((⁅x,y⁆).function : W.FunctionField) =
      (commutatorFunction W n x y : W.FunctionField) := by
  have hxy : (x * y).point = (y * x).point := by
    simp only [ThetaLift.mul_point]
    exact add_comm _ _
  have hgroup : ⁅x,y⁆ = (x * y) * (y * x)⁻¹ := by
    rw [commutatorElement_def]
    group
  rw [hgroup]
  have hfield :=
    ThetaLift.mul_inv_function_of_point_eq W n (x * y) (y * x) hxy
  change
    (((x * y) * (y * x)⁻¹).function : W.FunctionField) =
      (commutatorFunction W n x y : W.FunctionField)
  rw [hfield]
  rfl

/-- The original scalar chosen from the actual commutator
ratio is equal to the genuine group-theoretic scalar
commutator, because the scalar algebraMap is injective. -/
theorem thetaCommutatorScalar_eq_groupScalar
    (x y : ThetaLift W n)
    {c : Fˣ}
    (hc : ⁅x,y⁆ = scalarLift W n c) :
    thetaCommutatorScalar W n x y = c := by
  apply Units.ext
  apply (algebraMap F W.FunctionField).injective
  calc
    algebraMap F W.FunctionField
        (thetaCommutatorScalar W n x y : F) =
      (commutatorFunction W n x y : W.FunctionField) :=
        (thetaCommutatorScalar_spec W n x y).symm
    _ = ((⁅x,y⁆).function : W.FunctionField) :=
      (groupCommutator_function_eq W n x y).symm
    _ = ((scalarLift W n c).function : W.FunctionField) := by
      rw [hc]
    _ = algebraMap F W.FunctionField (c : F) := rfl

/-- The ORIGINAL constant extracted from the actual
elliptic rational-function commutator has n-th power 1.
This is not inferred from an abstract rank-two pairing. -/
theorem thetaCommutatorScalar_pow_n_eq_one
    (x y : ThetaLift W n) :
    (thetaCommutatorScalar W n x y) ^ n = 1 := by
  obtain ⟨c,hc⟩ :=
    exists_scalarLift_thetaGroupCommutator W n x y
  have heq : thetaCommutatorScalar W n x y = c :=
    thetaCommutatorScalar_eq_groupScalar W n x y hc
  rw [heq]
  apply scalarLiftHom_injective W n
  change scalarLiftHom W n (c ^ n) =
    scalarLiftHom W n 1
  rw [map_pow, map_one]
  rw [← hc]
  exact thetaGroupCommutator_pow_n_eq_one W n x y

/-- The REAL theta commutator now lands in the ORIGINAL
roots-of-unity coefficient group, of EXACT order dividing
n, before source Weil-pairing comparison. -/
noncomputable def thetaCommutatorInMuN
    (x y : ThetaLift W n) : rootsOfUnity n F :=
  ⟨thetaCommutatorScalar W n x y,
    thetaCommutatorScalar_pow_n_eq_one W n x y⟩

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorRootsOfUnity
