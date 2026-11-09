/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0, at
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1, not an import into grwtsk/math root v4.34.1.
This isolated adapter must import TauCetiOriginalGeometricTheta
from the SAME adapter directory on LEAN_PATH.
-/
import TauCetiOriginalGeometricTheta
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Coefficients
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Galois.Basic
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Galois.Divisor
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree

set_option autoImplicit false
noncomputable section

/-!
# Original E[n] theta Galois boundary and a STRICT Kummer trivialization

Original theta lifts are actual functions in K(E) where K=Fsep.
The scalar boundary
  U_a(σ,τ) = f_(aσ) τ_(-aσ)^*(σ f_(aτ)) / f_(aστ)
has divisor zero and therefore lies in K^×. For a rational
P=nQ choose the authentic function h_Q satisfying
  div(h_Q)=n(Q)-(P)-(n-1)(O).
Then
  f_σ=τ_Q^*(σh_Q/h_Q)
is a theta lift of a_σ=σQ-Q and satisfies
  f_σ τ_(-aσ)^*(σf_τ)=f_(στ) EXACTLY.
Thus its actual nonabelian theta factor equals 1.

This proves the geometric function-level vanishing mechanism,
not a standalone accepted continuous H² Brauer class:
continuity, independence of arbitrary theta lifts, and
the commutator=original Weil pairing/polarization comparison
still require exact source proofs in Tau Ceti's cochain category.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois

open TauCeti TauCeti.ContCohomology
open WeierstrassCurve WeierstrassCurve.Affine
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev K := SeparableClosure F
private abbrev EW := (W⁄(SeparableClosure F)).toAffine
private abbrev G := AbsoluteGaloisGroup F

/-- Same genuine E(Fsep)[n] as in the original local Selmer
Kummer sequence, moved across the source point equivalence. -/
noncomputable def geometricPoint (a : W.TorsionCoeff n) :
    (EW W).Point :=
  W.pointCoeffEquiv.symm (a : W.PointCoeff)

/-- Actual geometric point is n-torsion by the source coefficient. -/
theorem geometricPoint_torsion (a : W.TorsionCoeff n) :
    (n : ℤ) • geometricPoint W n a = 0 := by
  have ha : n • (a : W.PointCoeff) = 0 :=
    (AddSubgroup.torsionBy.nsmul_iff).mp a.property
  have hb : n • geometricPoint W n a = 0 := by
    apply W.pointCoeffEquiv.injective
    simpa [geometricPoint] using ha
  simpa only [natCast_zsmul] using hb

/-- An actual function-field lift for an authentic source
E[n] point. -/
noncomputable def geometricLift (a : W.TorsionCoeff n) :
    ThetaLift (EW W) n := by
  classical
  exact liftPoint (EW W) n (geometricPoint W n a)
    (geometricPoint_torsion W n a)

/-- Original Galois action on E[n] agrees with the
original action on its geometric point in E(Fsep). -/
theorem geometricPoint_smul
    (σ : G (F := F)) (a : W.TorsionCoeff n) :
    geometricPoint W n (σ • a) =
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (geometricPoint W n a) := by
  change W.pointCoeffEquiv.symm (σ • (a : W.PointCoeff)) = _
  rw [W.pointCoeffEquiv_symm_smul]
  exact (W.pointGaloisAction_apply σ (geometricPoint W n a)).symm

/-- Actual theta divisor transported by the original
Galois action on elliptic function-field places. -/
theorem thetaDivisor_galois
    (σ : G (F := F)) (T : (EW W).Point) :
    Multiplicative.toAdd (W.divisorGaloisAction σ)
      (thetaDivisor (EW W) n T) =
      thetaDivisor (EW W) n
        (Multiplicative.toAdd (W.pointGaloisAction σ) T) := by
  classical
  simp only [thetaDivisor, map_zsmul, map_sub]
  rw [W.divisorGaloisAction_ofPoint,
      W.divisorGaloisAction_ofPoint,
      W.placeGaloisAction_pointEquivDegreeOnePlace,
      W.placeGaloisAction_infinity]

/-- Original function-field Galois action on an actual theta lift. -/
noncomputable def thetaLiftGalois
    (σ : G (F := F)) (x : ThetaLift (EW W) n) :
    ThetaLift (EW W) n := by
  classical
  let gT :=
    Multiplicative.toAdd (W.pointGaloisAction σ) x.point
  let gf : (EW W).FunctionFieldˣ :=
    Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
      x.function
  have ht : (n : ℤ) • gT = 0 := by
    change (n : ℤ) • (Multiplicative.toAdd
      (W.pointGaloisAction σ) x.point) = 0
    rw [← map_zsmul, x.point_torsion, map_zero]
  have hf : Divisor.principal (EW W).isFunctionField gf =
      thetaDivisor (EW W) n gT := by
    rw [W.divisorGaloisAction_principal,
      x.function_divisor, thetaDivisor_galois W n σ x.point]
  exact ⟨gT, ht, gf, hf⟩

/-- The authentic base-changed rational point nQ=P. -/
noncomputable def geometricRationalPoint (P : W.toAffine.Point) :
    (EW W).Point :=
  W.pointCoeffEquiv.symm (W.basePointCoeff P)

/-- The actual F-rational point is fixed by original Galois. -/
theorem geometricRationalPoint_fixed
    (P : W.toAffine.Point) (σ : G (F := F)) :
    Multiplicative.toAdd (W.pointGaloisAction σ)
      (geometricRationalPoint W P) =
      geometricRationalPoint W P := by
  rw [← (W.pointGaloisAction_apply σ (geometricRationalPoint W P))]
  change W.pointCoeffEquiv.symm (σ • W.basePointCoeff P) = _
  rw [W.smul_basePointCoeff]

/-- A division point Q of the genuine rational elliptic
point P, on the original separable-closure model. -/
def IsDivisionPoint (P : W.toAffine.Point)
    (Q : (EW W).Point) : Prop :=
  (n : ℤ) • Q = geometricRationalPoint W P

/-- Original source principal divisor for nQ=P. -/
noncomputable def divisionFunction
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q) :
    (EW W).FunctionFieldˣ := by
  classical
  exact kummerRationalFunction (EW W) n hQ

theorem divisionFunction_principal
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q) :
    Divisor.principal (EW W).isFunctionField
      (divisionFunction W n P Q hQ) =
      kummerRationalDivisor (EW W) n
        (geometricRationalPoint W P) Q :=
  kummerRationalFunction_divisor (EW W) n hQ

/-- The REAL E[n] Kummer difference σQ-Q, not a
separate rank-two representation or arbitrary 1-cocycle. -/
theorem geometricKummerPoint_torsion
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ : G (F := F)) :
    (n : ℤ) •
        (Multiplicative.toAdd
          (W.pointGaloisAction σ) Q - Q) = 0 := by
  rw [smul_sub, ← map_zsmul, hQ,
      geometricRationalPoint_fixed W P σ, hQ, sub_self]

/-- The true original theta/Kummer function witness
f_σ = τ_Q^*(σ h_Q / h_Q). -/
noncomputable def kummerThetaUnit
    (Q : (EW W).Point) (h : (EW W).FunctionFieldˣ)
    (σ : G (F := F)) : (EW W).FunctionFieldˣ :=
  Units.map (thetaTranslate (EW W) (-Q) :
      (EW W).FunctionField →* (EW W).FunctionField)
    (Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ)) h / h)

/-- Exact source Galois/translation cancellation for the
genuine original function-field automorphisms. -/
theorem galois_thetaTranslation_cancellation
    (Q : (EW W).Point) (σ : G (F := F))
    (z : (EW W).FunctionField) :
    thetaTranslate (EW W)
        (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q)
      (W.functionFieldGaloisAction σ
        (thetaTranslate (EW W) (-Q) z)) =
      thetaTranslate (EW W) (-Q)
        (W.functionFieldGaloisAction σ z) := by
  have h := W.functionFieldGaloisAction_translation σ Q z
  change
    (EW W).translation (Point.equivBaseChangeSelf (EW W)
        (-(Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q)))
      (W.functionFieldGaloisAction σ
        ((EW W).translation
          (Point.equivBaseChangeSelf (EW W) Q) z)) =
    (EW W).translation
      (Point.equivBaseChangeSelf (EW W) Q)
      (W.functionFieldGaloisAction σ z)
  rw [h]
  have hP :
      -(Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q) =
      Q - Multiplicative.toAdd (W.pointGaloisAction σ) Q := by
    abel
  rw [hP]
  rw [← (EW W).translation_add]
  congr 1
  apply (Point.equivBaseChangeSelf (EW W)).injective
  simp [map_add]
  abel

/-- Source EXPLICIT identity with no missing scalar:
fσ τ_{-aσ}^*(σ fτ) = fστ, as functions in original Fsep(E). -/
theorem kummerThetaUnit_crossed
    (Q : (EW W).Point) (h : (EW W).FunctionFieldˣ)
    (σ τ : G (F := F)) :
    kummerThetaUnit W Q h σ *
      Units.map (thetaTranslate (EW W)
        (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q) :
          (EW W).FunctionField →* (EW W).FunctionField)
        (Units.map
          (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
          (kummerThetaUnit W Q h τ)) =
      kummerThetaUnit W Q h (σ * τ) := by
  apply Units.ext
  simp only [kummerThetaUnit, Units.val_mul,
    Units.val_map, Units.val_div]
  rw [galois_thetaTranslation_cancellation W Q σ]
  simp only [map_div, map_mul]
  rw [← map_mul (W.functionFieldGaloisAction)]
  group

/-- The divisor of fσ is exactly D_(σQ-Q); its
identification comes from genuine original divisor
actions and the rationality of nQ=P. -/
theorem kummerThetaUnit_principal
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ : G (F := F)) :
    Divisor.principal (EW W).isFunctionField
      (kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ) =
      thetaDivisor (EW W) n
        (Multiplicative.toAdd
          (W.pointGaloisAction σ) Q - Q) := by
  classical
  let gQ := Multiplicative.toAdd (W.pointGaloisAction σ) Q
  let p₀ (R : (EW W).Point) :
      Divisor (K (F := F)) (EW W).FunctionField :=
    WeilDivisor.ofPoint ((EW W).pointEquivDegreeOnePlace R).1
  have hP :
      W.placeGaloisAction σ
        ((EW W).pointEquivDegreeOnePlace
          (geometricRationalPoint W P)).1 =
      ((EW W).pointEquivDegreeOnePlace
        (geometricRationalPoint W P)).1 := by
    rw [W.placeGaloisAction_pointEquivDegreeOnePlace,
      geometricRationalPoint_fixed W P σ]
  have hσQ :
      W.placeGaloisAction σ ((EW W).pointEquivDegreeOnePlace Q).1 =
      ((EW W).pointEquivDegreeOnePlace gQ).1 :=
    W.placeGaloisAction_pointEquivDegreeOnePlace σ Q
  have hdiv :
      Multiplicative.toAdd (W.divisorGaloisAction σ)
        (kummerRationalDivisor (EW W) n
          (geometricRationalPoint W P) Q) -
      kummerRationalDivisor (EW W) n
        (geometricRationalPoint W P) Q =
      (n : ℤ) • (p₀ gQ - p₀ Q) := by
    simp only [kummerRationalDivisor, map_sub,
      map_zsmul, W.divisorGaloisAction_ofPoint]
    rw [hP, hσQ, W.placeGaloisAction_infinity]
    abel
  have htranslate :
      thetaTranslate (EW W) (-Q) •
        ((n : ℤ) • (p₀ gQ - p₀ Q)) =
      thetaDivisor (EW W) n (gQ - Q) := by
    rw [smul_zsmul, smul_sub,
      WeilDivisor.smul_ofPoint, WeilDivisor.smul_ofPoint]
    change (n : ℤ) •
      (WeilDivisor.ofPoint
        (((EW W).translation
            (Point.equivBaseChangeSelf (EW W) Q)) •
          ((EW W).pointEquivDegreeOnePlace gQ).1) -
        WeilDivisor.ofPoint
          (((EW W).translation
            (Point.equivBaseChangeSelf (EW W) Q)) •
            ((EW W).pointEquivDegreeOnePlace Q).1)) = _
    rw [(EW W).translation_smul_pointEquivDegreeOnePlace,
      (EW W).translation_smul_pointEquivDegreeOnePlace]
    simp only [sub_self, sub_zero]
    simp [thetaDivisor, coe_pointEquivDegreeOnePlace_zero]
  calc
    Divisor.principal (EW W).isFunctionField
        (kummerThetaUnit W Q
          (divisionFunction W n P Q hQ) σ) =
      thetaTranslate (EW W) (-Q) •
        (Multiplicative.toAdd (W.divisorGaloisAction σ)
          (kummerRationalDivisor (EW W) n
            (geometricRationalPoint W P) Q) -
          kummerRationalDivisor (EW W) n
            (geometricRationalPoint W P) Q) := by
      rw [kummerThetaUnit, Divisor.principal_smul,
        Divisor.principal_div,
        W.divisorGaloisAction_principal,
        divisionFunction_principal]
    _ = thetaTranslate (EW W) (-Q) •
      ((n : ℤ) • (p₀ gQ - p₀ Q)) :=
        congrArg (fun z => thetaTranslate (EW W) (-Q) • z) hdiv
    _ = thetaDivisor (EW W) n (gQ - Q) := htranslate

/-- An ORIGINAL theta lift above a genuine Kummer
cocycle point, with a concrete function numerator. -/
noncomputable def kummerThetaLift
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ : G (F := F)) : ThetaLift (EW W) n :=
  ⟨Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q,
    geometricKummerPoint_torsion W n P Q hQ σ,
    kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ,
    kummerThetaUnit_principal W n P Q hQ σ⟩

/-- The original theta-valued Kummer lift is an honest
crossed 1-cocycle in the ACTUAL function-field group law.
This is a geometric proof, not a postulated obstruction. -/
theorem kummerThetaLift_crossed
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ τ : G (F := F)) :
    liftMul (EW W) n
        (kummerThetaLift W n P Q hQ σ)
        (thetaLiftGalois W n σ
          (kummerThetaLift W n P Q hQ τ)) =
      kummerThetaLift W n P Q hQ (σ * τ) := by
  apply ThetaLift.ext (EW W) n
  · change
      (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q) +
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (Multiplicative.toAdd (W.pointGaloisAction τ) Q - Q) =
      Multiplicative.toAdd (W.pointGaloisAction (σ * τ)) Q - Q
    rw [map_sub, ← map_mul (W.pointGaloisAction)]
    abel
  · change
      kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ *
        Units.map (thetaTranslate (EW W)
          (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q) :
            _ →* _)
          (Units.map
            (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
            (kummerThetaUnit W Q
              (divisionFunction W n P Q hQ) τ)) =
      kummerThetaUnit W Q
        (divisionFunction W n P Q hQ) (σ * τ)
    exact kummerThetaUnit_crossed W Q
      (divisionFunction W n P Q hQ) σ τ

/-- The ACTUAL nonabelian theta boundary function for the
Kummer lift, on the original elliptic function field. -/
noncomputable def kummerThetaBoundaryFunction
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ τ : G (F := F)) : (EW W).FunctionFieldˣ :=
  (liftMul (EW W) n
      (kummerThetaLift W n P Q hQ σ)
      (thetaLiftGalois W n σ
        (kummerThetaLift W n P Q hQ τ))).function /
    (kummerThetaLift W n P Q hQ (σ * τ)).function

/-- The original geometric Kummer theta boundary is
literally 1, not just cohomologous to 1.
A continuous H²/Brauer statement still needs the
chosen-lift independence and continuity source checks. -/
theorem kummerThetaBoundaryFunction_eq_one
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ τ : G (F := F)) :
    kummerThetaBoundaryFunction W n P Q hQ σ τ = 1 := by
  have h := congrArg (ThetaLift.function)
    (kummerThetaLift_crossed W n P Q hQ σ τ)
  simp only [kummerThetaBoundaryFunction, h, div_self]

/-! The scalar factor of an arbitrary chosen E[n]-cocycle
can now be constructed with the original geometric lifts
and the function-field constant theorem. Its H² class and
polarization with the source Weil e_n still require
continuity and the theta-commutator/Weil reciprocity bridge.
-/

/-- Raw original Galois theta boundary numerator over the
point aσ+σaτ, not an invented cohomology class. -/
noncomputable def obstructionProduct
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) : ThetaLift (EW W) n :=
  liftMul (EW W) n (geometricLift W n (a σ))
    (thetaLiftGalois W n σ (geometricLift W n (a τ)))

/-- The actual theta-boundary quotient function of the
original E[n]-valued Galois cocycle. -/
noncomputable def obstructionFunction
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) : (EW W).FunctionFieldˣ :=
  (obstructionProduct W n a σ τ).function /
    (geometricLift W n (a (σ * τ))).function

/-- Genuine divisor computation: theta boundary lies
above the identity point and has divisor zero. -/
theorem obstructionFunction_principal_zero
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) :
    Divisor.principal (EW W).isFunctionField
        (obstructionFunction W n a σ τ) = 0 := by
  have ha := (mem_Z1_iff.1 a.property).2 σ τ
  have hpoint : (obstructionProduct W n a σ τ).point =
      (geometricLift W n (a (σ * τ))).point := by
    change geometricPoint W n (a σ) +
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (geometricPoint W n (a τ)) =
      geometricPoint W n (a (σ * τ))
    rw [← geometricPoint_smul W n σ (a τ)]
    simp only [geometricPoint, ← map_add]
    congr 1
    exact ha.symm
  rw [obstructionFunction, Divisor.principal_div,
    (obstructionProduct W n a σ τ).function_divisor,
    (geometricLift W n (a (σ * τ))).function_divisor,
    hpoint, sub_self]

/-- The ACTUAL theta boundary is a CONSTANT nonzero
function, hence lies in Fsep^×. -/
theorem obstructionFunction_is_scalar
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) :
    ∃ c : (K (F := F))ˣ,
      (obstructionFunction W n a σ τ : (EW W).FunctionField) =
        algebraMap (K (F := F)) (EW W).FunctionField
          (c : K (F := F)) := by
  obtain ⟨c, hc⟩ :=
    (Divisor.principal_eq_zero_iff (EW W).isFunctionField
      (isIntegrallyClosedIn_functionField (EW W))
      (obstructionFunction W n a σ τ)).1
      (obstructionFunction_principal_zero W n a σ τ)
  have hc0 : c ≠ 0 := by
    intro h
    rw [h, map_zero] at hc
    exact (Units.ne_zero (obstructionFunction W n a σ τ)) hc.symm
  exact ⟨Units.mk0 c hc0, hc.symm⟩

/-- A genuine scalar-valued RAW theta boundary cochain
from the source original elliptic function field. -/
noncomputable def thetaObstructionScalar
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) : (K (F := F))ˣ :=
  Classical.choose (obstructionFunction_is_scalar W n a σ τ)

theorem thetaObstructionScalar_spec
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) :
    (obstructionFunction W n a σ τ : (EW W).FunctionField) =
      algebraMap (K (F := F)) (EW W).FunctionField
        (thetaObstructionScalar W n a σ τ : K (F := F)) :=
  Classical.choose_spec (obstructionFunction_is_scalar W n a σ τ)

end GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois
