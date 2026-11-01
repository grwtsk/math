/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueIntegralVariableChangePort
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Residue-field fiber transport for arbitrary DVR variable changes

The preceding integral source proves affine-fiber transport for every
`WeierstrassCurve.VariableChange ℤ`.  A local minimal-model comparison over a
DVR is broader: the scaling parameter is an arbitrary unit of the DVR.

This file proves the geometric part at the correct generality.

* Over any field, every genuine Mathlib variable change induces an explicit
  equivalence of affine equation fibers.
* For elliptic curves this lifts to an equivalence of Mathlib's actual affine
  point types, including the point at infinity.
* Mapping a variable change over a DVR to its residue field therefore preserves
  the full special-fiber point count.
* If a fraction-field change has scaling coefficient descending to a DVR unit,
  Mathlib's `variableChange_integral_of_u_integral` supplies an integral change;
  the special fibers of the two integral models are then equivalent.

The remaining record-curve seam is now the source-specific proof that the
fraction-field change to Mathlib's chosen minimal model has unit scaling, plus
the exact identification of the explicit integral reduction with the published
mod-7 count.  No global L-function, BSD, RH, native compilation, kernel replay,
or axiom audit is claimed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ResidueFieldVariableChangePort

open WeierstrassCurve

universe u v

section FieldFiber

variable {F : Type u} [Field F]

/-- The exact affine Weierstrass residual.  This is only a polynomial
presentation of Mathlib's `Affine.Equation`, not a replacement equation. -/
def affineResidual (W : WeierstrassCurve F) (x y : F) : F :=
  y ^ 2 + W.a₁ * x * y + W.a₃ * y -
    (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆)

/-- The actual Mathlib affine equation fiber over a field. -/
def AffineEquationFiber (W : WeierstrassCurve F) : Type u :=
  {xy : F × F // W.toAffine.Equation xy.1 xy.2}

/-- New coordinates obtained from old coordinates under the inverse of the
admissible matrix `(X,Y) = (u²x+r,u³y+u²sx+t)`. -/
def forwardX (C : WeierstrassCurve.VariableChange F) (x : F) : F :=
  (C.u⁻¹ : F) ^ 2 * (x - C.r)

def forwardY (C : WeierstrassCurve.VariableChange F) (x y : F) : F :=
  (C.u⁻¹ : F) ^ 3 * (y - C.s * (x - C.r) - C.t)

/-- Original coordinates recovered from the changed coordinates. -/
def backwardX (C : WeierstrassCurve.VariableChange F) (x : F) : F :=
  (C.u : F) ^ 2 * x + C.r

def backwardY (C : WeierstrassCurve.VariableChange F) (x y : F) : F :=
  (C.u : F) ^ 3 * y + (C.u : F) ^ 2 * C.s * x + C.t

/-- Exact degree-six covariance of the affine equation residual.  The proof is
a polynomial identity after unfolding Mathlib's five transformed
coefficients. -/
theorem affineResidual_variableChange
    (C : WeierstrassCurve.VariableChange F)
    (W : WeierstrassCurve F) (x y : F) :
    affineResidual (C • W) (forwardX C x) (forwardY C x y) =
      (C.u⁻¹ : F) ^ 6 * affineResidual W x y := by
  unfold affineResidual forwardX forwardY
  simp only [WeierstrassCurve.variableChange_a₁,
    WeierstrassCurve.variableChange_a₂,
    WeierstrassCurve.variableChange_a₃,
    WeierstrassCurve.variableChange_a₄,
    WeierstrassCurve.variableChange_a₆]
  ring

theorem affineEquation_iff_residual_zero
    (W : WeierstrassCurve F) (x y : F) :
    W.toAffine.Equation x y ↔ affineResidual W x y = 0 := by
  simpa [affineResidual] using
    (WeierstrassCurve.Affine.equation_iff' (W := W.toAffine) x y)

/-- A point satisfies the original equation exactly when its transformed
coordinates satisfy the changed equation. -/
theorem affineEquation_variableChange_iff
    (C : WeierstrassCurve.VariableChange F)
    (W : WeierstrassCurve F) (x y : F) :
    W.toAffine.Equation x y ↔
      (C • W).toAffine.Equation (forwardX C x) (forwardY C x y) := by
  rw [affineEquation_iff_residual_zero,
    affineEquation_iff_residual_zero,
    affineResidual_variableChange]
  constructor
  · intro h
    rw [h, mul_zero]
  · intro h
    exact (mul_eq_zero.mp h).resolve_left
      (pow_ne_zero _ (C.u⁻¹.ne_zero))

theorem backwardX_forwardX
    (C : WeierstrassCurve.VariableChange F) (x : F) :
    backwardX C (forwardX C x) = x := by
  have hpow :
      (C.u : F) ^ 2 * (C.u⁻¹ : F) ^ 2 = 1 := by
    rw [← mul_pow]
    simp
  unfold backwardX forwardX
  calc
    (C.u : F) ^ 2 * ((C.u⁻¹ : F) ^ 2 * (x - C.r)) + C.r =
        ((C.u : F) ^ 2 * (C.u⁻¹ : F) ^ 2) * (x - C.r) + C.r := by ring
    _ = x := by rw [hpow]; ring

theorem forwardX_backwardX
    (C : WeierstrassCurve.VariableChange F) (x : F) :
    forwardX C (backwardX C x) = x := by
  have hpow :
      (C.u⁻¹ : F) ^ 2 * (C.u : F) ^ 2 = 1 := by
    rw [← mul_pow]
    simp
  unfold backwardX forwardX
  calc
    (C.u⁻¹ : F) ^ 2 * ((C.u : F) ^ 2 * x + C.r - C.r) =
        ((C.u⁻¹ : F) ^ 2 * (C.u : F) ^ 2) * x := by ring
    _ = x := by rw [hpow]; simp

theorem backwardY_forward
    (C : WeierstrassCurve.VariableChange F) (x y : F) :
    backwardY C (forwardX C x) (forwardY C x y) = y := by
  have hpow2 :
      (C.u : F) ^ 2 * (C.u⁻¹ : F) ^ 2 = 1 := by
    rw [← mul_pow]
    simp
  have hpow3 :
      (C.u : F) ^ 3 * (C.u⁻¹ : F) ^ 3 = 1 := by
    rw [← mul_pow]
    simp
  unfold backwardY forwardX forwardY
  calc
    (C.u : F) ^ 3 *
          ((C.u⁻¹ : F) ^ 3 *
            (y - C.s * (x - C.r) - C.t)) +
        (C.u : F) ^ 2 * C.s *
          ((C.u⁻¹ : F) ^ 2 * (x - C.r)) + C.t =
      ((C.u : F) ^ 3 * (C.u⁻¹ : F) ^ 3) *
          (y - C.s * (x - C.r) - C.t) +
        ((C.u : F) ^ 2 * (C.u⁻¹ : F) ^ 2) *
          C.s * (x - C.r) + C.t := by ring
    _ = y := by rw [hpow2, hpow3]; ring

theorem forwardY_backward
    (C : WeierstrassCurve.VariableChange F) (x y : F) :
    forwardY C (backwardX C x) (backwardY C x y) = y := by
  have hpow3 :
      (C.u⁻¹ : F) ^ 3 * (C.u : F) ^ 3 = 1 := by
    rw [← mul_pow]
    simp
  unfold backwardX backwardY forwardY
  calc
    (C.u⁻¹ : F) ^ 3 *
        ((C.u : F) ^ 3 * y + (C.u : F) ^ 2 * C.s * x + C.t -
          C.s * ((C.u : F) ^ 2 * x + C.r - C.r) - C.t) =
      ((C.u⁻¹ : F) ^ 3 * (C.u : F) ^ 3) * y := by ring
    _ = y := by rw [hpow3]; simp

/-- Every admissible variable change over a field gives an actual equivalence
of the affine equation solution subtypes. -/
noncomputable def variableChangeAffineEquiv
    (C : WeierstrassCurve.VariableChange F)
    (W : WeierstrassCurve F) :
    AffineEquationFiber W ≃ AffineEquationFiber (C • W) where
  toFun z :=
    ⟨(forwardX C z.1.1, forwardY C z.1.1 z.1.2),
      (affineEquation_variableChange_iff C W z.1.1 z.1.2).mp z.2⟩
  invFun z :=
    ⟨(backwardX C z.1.1, backwardY C z.1.1 z.1.2), by
      apply (affineEquation_variableChange_iff C W
        (backwardX C z.1.1) (backwardY C z.1.1 z.1.2)).mpr
      simpa only [forwardX_backwardX, forwardY_backward] using z.2⟩
  left_inv := by
    intro z
    apply Subtype.ext
    apply Prod.ext
    · exact backwardX_forwardX C z.1.1
    · exact backwardY_forward C z.1.1 z.1.2
  right_inv := by
    intro z
    apply Subtype.ext
    apply Prod.ext
    · exact forwardX_backwardX C z.1.1
    · exact forwardY_backward C z.1.1 z.1.2

/-- Equality of curve structures transports their actual affine point types. -/
def affinePointCongr
    {W V : WeierstrassCurve F} (h : W = V) :
    W.toAffine.Point ≃ V.toAffine.Point := by
  subst h
  exact Equiv.refl _

/-- For an elliptic source, the coordinate equivalence lifts to Mathlib's
actual affine point types, including the point at infinity. -/
noncomputable def variableChangePointEquiv
    (C : WeierstrassCurve.VariableChange F)
    (W : WeierstrassCurve F) [W.IsElliptic] :
    W.toAffine.Point ≃ (C • W).toAffine.Point where
  toFun P :=
    match P with
    | .zero => .zero
    | .some x y h =>
        .some (forwardX C x) (forwardY C x y)
          ((WeierstrassCurve.Affine.equation_iff_nonsingular
            (W := (C • W).toAffine)).mp
              ((affineEquation_variableChange_iff C W x y).mp h.1))
  invFun P :=
    match P with
    | .zero => .zero
    | .some x y h =>
        .some (backwardX C x) (backwardY C x y)
          ((WeierstrassCurve.Affine.equation_iff_nonsingular
            (W := W.toAffine)).mp <| by
              apply (affineEquation_variableChange_iff C W
                (backwardX C x) (backwardY C x y)).mpr
              simpa only [forwardX_backwardX, forwardY_backward] using h.1)
  left_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
        rw [WeierstrassCurve.Affine.Point.some.injEq]
        exact ⟨backwardX_forwardX C x, backwardY_forward C x y⟩
  right_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
        rw [WeierstrassCurve.Affine.Point.some.injEq]
        exact ⟨forwardX_backwardX C x, forwardY_backward C x y⟩

theorem variableChangePoint_natCard_eq
    (C : WeierstrassCurve.VariableChange F)
    (W : WeierstrassCurve F) [W.IsElliptic] :
    Nat.card W.toAffine.Point =
      Nat.card (C • W).toAffine.Point :=
  Nat.card_congr (variableChangePointEquiv C W)

end FieldFiber

section ResidueField

variable (R : Type u) [CommRing R] [IsDomain R]
  [IsDiscreteValuationRing R]

abbrev Residue := IsLocalRing.ResidueField R

/-- The actual reduction of an integral Weierstrass model. -/
def residueCurve (W : WeierstrassCurve R) :
    WeierstrassCurve (Residue R) :=
  W.map (IsLocalRing.residue R)

/-- Mapping a genuine variable change commutes exactly with reduction. -/
theorem residueCurve_variableChange
    (C : WeierstrassCurve.VariableChange R)
    (W : WeierstrassCurve R) :
    (C.map (IsLocalRing.residue R)) • residueCurve R W =
      residueCurve R (C • W) := by
  exact WeierstrassCurve.map_variableChange C W (IsLocalRing.residue R)

/-- A DVR variable change therefore gives an actual equivalence of the
special-fiber affine equation solution sets.  The scale remains a unit because
`VariableChange.map` maps units to units. -/
noncomputable def residueVariableChangeAffineEquiv
    (C : WeierstrassCurve.VariableChange R)
    (W : WeierstrassCurve R) :
    AffineEquationFiber (residueCurve R W) ≃
      AffineEquationFiber (residueCurve R (C • W)) :=
  (variableChangeAffineEquiv
      (C.map (IsLocalRing.residue R)) (residueCurve R W)).trans <| by
    rw [residueCurve_variableChange R C W]
    exact Equiv.refl _

/-- Under good reduction, the equivalence is on Mathlib's actual point type,
including infinity. -/
noncomputable def residueVariableChangePointEquiv
    (C : WeierstrassCurve.VariableChange R)
    (W : WeierstrassCurve R)
    [hW : (residueCurve R W).IsElliptic] :
    (residueCurve R W).toAffine.Point ≃
      (residueCurve R (C • W)).toAffine.Point :=
  (variableChangePointEquiv
      (C.map (IsLocalRing.residue R)) (residueCurve R W)).trans
    (affinePointCongr (residueCurve_variableChange R C W))

theorem residueVariableChangePoint_natCard_eq
    (C : WeierstrassCurve.VariableChange R)
    (W : WeierstrassCurve R)
    [hW : (residueCurve R W).IsElliptic] :
    Nat.card (residueCurve R W).toAffine.Point =
      Nat.card (residueCurve R (C • W)).toAffine.Point :=
  Nat.card_congr (residueVariableChangePointEquiv R C W)

end ResidueField

section FractionFieldDescent

variable (R : Type u) [CommRing R] [IsDomain R]
  [IsDiscreteValuationRing R]
variable {K : Type v} [Field K] [Algebra R K] [IsFractionRing R K]

/-- A descended fraction-field change identifies the two actual integral
models, not only their base changes. -/
theorem integralModels_eq_of_descended_change
    {W W' : WeierstrassCurve K}
    [WeierstrassCurve.IsIntegral R W]
    [WeierstrassCurve.IsIntegral R W']
    (CK : WeierstrassCurve.VariableChange K)
    (CR : WeierstrassCurve.VariableChange R)
    (hbase : CR.baseChange K = CK)
    (hchange : CK • W = W') :
    CR • WeierstrassCurve.integralModel R W =
      WeierstrassCurve.integralModel R W' := by
  apply WeierstrassCurve.map_injective (IsFractionRing.injective R K)
  calc
    (CR • WeierstrassCurve.integralModel R W).map (algebraMap R K) =
        (CR.map (algebraMap R K)) •
          (WeierstrassCurve.integralModel R W).map (algebraMap R K) := by
      symm
      exact WeierstrassCurve.map_variableChange
        CR (WeierstrassCurve.integralModel R W) (algebraMap R K)
    _ = CK • W := by
      rw [← hbase]
      simp only [WeierstrassCurve.VariableChange.baseChange]
      rw [WeierstrassCurve.baseChange_integralModel_eq R W]
    _ = W' := hchange
    _ = (WeierstrassCurve.integralModel R W').map (algebraMap R K) := by
      exact (WeierstrassCurve.baseChange_integralModel_eq R W').symm

/-- Mathlib already proves that a fraction-field variable change between
integral equations descends once its scale comes from a DVR unit.  This theorem
adds the exact integral-model equality required by reduction. -/
theorem exists_integralModel_change_of_unit_scale
    {W W' : WeierstrassCurve K}
    [WeierstrassCurve.IsIntegral R W]
    [WeierstrassCurve.IsIntegral R W']
    (CK : WeierstrassCurve.VariableChange K)
    (hchange : CK • W = W')
    (u : Rˣ) (hu : algebraMap R K u = CK.u) :
    ∃ CR : WeierstrassCurve.VariableChange R,
      CR.baseChange K = CK ∧
      CR • WeierstrassCurve.integralModel R W =
        WeierstrassCurve.integralModel R W' := by
  obtain ⟨CR, hbase⟩ :=
    WeierstrassCurve.variableChange_integral_of_u_integral
      (R := R) hchange hu
  exact ⟨CR, hbase,
    integralModels_eq_of_descended_change R CK CR hbase hchange⟩

variable {W W' : WeierstrassCurve K}
  [WeierstrassCurve.IsMinimal R W]
  [WeierstrassCurve.IsMinimal R W']

/-- An integral change between the chosen integral models transports the
actual good special-fiber point type. -/
noncomputable def reductionPointEquiv_of_integralModel_change
    (CR : WeierstrassCurve.VariableChange R)
    (hmodels :
      CR • WeierstrassCurve.integralModel R W =
        WeierstrassCurve.integralModel R W')
    (hgood : W.HasGoodReduction R) :
    (W.reduction R).toAffine.Point ≃
      (W'.reduction R).toAffine.Point := by
  letI : (W.reduction R).IsElliptic :=
    (WeierstrassCurve.hasGoodReduction_iff_isElliptic_reduction
      (R := R) (W := W)).mp hgood
  have hred :
      (CR.map (IsLocalRing.residue R)) • W.reduction R =
        W'.reduction R := by
    unfold WeierstrassCurve.reduction
    calc
      (CR.map (IsLocalRing.residue R)) •
          (WeierstrassCurve.integralModel R W).map
            (IsLocalRing.residue R) =
        (CR • WeierstrassCurve.integralModel R W).map
          (IsLocalRing.residue R) :=
        WeierstrassCurve.map_variableChange
          CR (WeierstrassCurve.integralModel R W)
            (IsLocalRing.residue R)
      _ = (WeierstrassCurve.integralModel R W').map
          (IsLocalRing.residue R) := by rw [hmodels]
  exact
    (variableChangePointEquiv
      (CR.map (IsLocalRing.residue R)) (W.reduction R)).trans
        (affinePointCongr hred)

theorem reductionPoint_natCard_eq_of_integralModel_change
    (CR : WeierstrassCurve.VariableChange R)
    (hmodels :
      CR • WeierstrassCurve.integralModel R W =
        WeierstrassCurve.integralModel R W')
    (hgood : W.HasGoodReduction R) :
    Nat.card (W.reduction R).toAffine.Point =
      Nat.card (W'.reduction R).toAffine.Point :=
  Nat.card_congr
    (reductionPointEquiv_of_integralModel_change R CR hmodels hgood)

/-- Good reduction itself transports across an integral model change. -/
theorem hasGoodReduction_of_integralModel_change
    (CR : WeierstrassCurve.VariableChange R)
    (hmodels :
      CR • WeierstrassCurve.integralModel R W =
        WeierstrassCurve.integralModel R W')
    (hgood : W.HasGoodReduction R) :
    W'.HasGoodReduction R := by
  rw [WeierstrassCurve.hasGoodReduction_iff_isElliptic_reduction]
  letI : (W.reduction R).IsElliptic :=
    (WeierstrassCurve.hasGoodReduction_iff_isElliptic_reduction
      (R := R) (W := W)).mp hgood
  have hred :
      (CR.map (IsLocalRing.residue R)) • W.reduction R =
        W'.reduction R := by
    unfold WeierstrassCurve.reduction
    calc
      (CR.map (IsLocalRing.residue R)) •
          (WeierstrassCurve.integralModel R W).map
            (IsLocalRing.residue R) =
        (CR • WeierstrassCurve.integralModel R W).map
          (IsLocalRing.residue R) :=
        WeierstrassCurve.map_variableChange
          CR (WeierstrassCurve.integralModel R W)
            (IsLocalRing.residue R)
      _ = (WeierstrassCurve.integralModel R W').map
          (IsLocalRing.residue R) := by rw [hmodels]
  rw [← hred]
  infer_instance

/-- Consumer-facing result: a fraction-field isomorphism whose scale descends
to a DVR unit preserves good reduction and the complete special-fiber point
count. -/
theorem reductionPoint_natCard_eq_of_unit_scale
    (CK : WeierstrassCurve.VariableChange K)
    (hchange : CK • W = W')
    (u : Rˣ) (hu : algebraMap R K u = CK.u)
    (hgood : W.HasGoodReduction R) :
    Nat.card (W.reduction R).toAffine.Point =
      Nat.card (W'.reduction R).toAffine.Point := by
  obtain ⟨CR, _hbase, hmodels⟩ :=
    exists_integralModel_change_of_unit_scale R CK hchange u hu
  exact reductionPoint_natCard_eq_of_integralModel_change
    R CR hmodels hgood

theorem hasGoodReduction_of_unit_scale
    (CK : WeierstrassCurve.VariableChange K)
    (hchange : CK • W = W')
    (u : Rˣ) (hu : algebraMap R K u = CK.u)
    (hgood : W.HasGoodReduction R) :
    W'.HasGoodReduction R := by
  obtain ⟨CR, _hbase, hmodels⟩ :=
    exists_integralModel_change_of_unit_scale R CK hchange u hu
  exact hasGoodReduction_of_integralModel_change R CR hmodels hgood

end FractionFieldDescent

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ResidueFieldVariableChangePort
