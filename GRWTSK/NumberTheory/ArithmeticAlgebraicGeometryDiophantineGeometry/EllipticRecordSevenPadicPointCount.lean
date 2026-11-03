/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticRecordSevenPadicSourceModel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# The explicit record reduction has the published point count thirteen

This module identifies Mathlib's actual affine point type, including infinity,
with the existing finite source fiber, then transports the count through the
standard residue-field equivalence `ResidueField (PadicInt 7) ≃+* ZMod 7`.
Compilation and kernel acceptance are not claimed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge

open GRWTSK.NumberTheory.OrderedPrimeGroupAddress
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueSamplewiseTransport
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ResidueFieldVariableChangePort
open WeierstrassCurve

private instance : Fact (Nat.Prime (7 : ℕ)) := ⟨by norm_num⟩
private instance : NeZero (7 : ℕ) := ⟨by norm_num⟩

/-- The actual prime index used by the pre-existing finite geometric fiber. -/
def sevenPrime : PrimeIndex := ⟨7, by norm_num⟩

/-- For a good integral model, Mathlib's actual affine point type is the point
at infinity together with the original equation fiber. -/
noncomputable def reducedPointEquivAffineFiber
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (hgood : (W.Δ : ZMod p.1) ≠ 0) :
    (reducedCurve W p).toAffine.Point ≃ WithZero (AffinePointFiber W p) := by
  have hΔ : (reducedCurve W p).Δ ≠ 0 := by
    simpa [reducedCurve] using hgood
  refine
    { toFun := fun P =>
        match P with
        | .zero => none
        | .some x y h =>
            some ⟨(x, y), ?_⟩
      invFun := fun P =>
        match P with
        | none => .zero
        | some z =>
            .some z.1.1 z.1.2 ?_
      left_inv := ?_
      right_inv := ?_ }
  · have heq :
        (reducedCurve W p).toAffine.Equation x y := h.1
    rw [WeierstrassCurve.Affine.equation_iff] at heq
    simpa [reducedCurve, AffinePointFiber] using heq
  · apply
      ((reducedCurve W p).toAffine.equation_iff_nonsingular_of_Δ_ne_zero
        hΔ).mp
    rw [WeierstrassCurve.Affine.equation_iff]
    simpa [reducedCurve, AffinePointFiber] using z.2
  · intro P
    cases P with
    | zero => rfl
    | some x y h =>
        rw [WeierstrassCurve.Affine.Point.some.injEq]
        exact ⟨rfl, rfl⟩
  · intro P
    cases P with
    | none => rfl
    | some z =>
        congr 1
        apply Subtype.ext
        rfl

/-- The source's enumerated affine fiber plus one is exactly Mathlib's actual
good-reduction point count. -/
theorem reducedPoint_natCard_eq_integralModelCount
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (hgood : (W.Δ : ZMod p.1) ≠ 0) :
    Nat.card (reducedCurve W p).toAffine.Point =
      integralModelCount W p.1 := by
  classical
  calc
    Nat.card (reducedCurve W p).toAffine.Point =
        Nat.card (WithZero (AffinePointFiber W p)) :=
      Nat.card_congr (reducedPointEquivAffineFiber W p hgood)
    _ = Fintype.card (AffinePointFiber W p) + 1 := by
      letI := Fintype.ofFinite (AffinePointFiber W p)
      simp [Nat.card_eq_fintype_card, add_comm]
    _ = integralModelCount W p.1 :=
      affineFiber_card_add_one W p

/-- Ring equivalence transports Mathlib's actual affine point type, including
the point at infinity. -/
noncomputable def ringEquivPointEquiv
    {F E : Type*} [Field F] [Field E]
    (e : F ≃+* E) (W : WeierstrassCurve F) :
    W.toAffine.Point ≃ (W.map e.toRingHom).toAffine.Point where
  toFun P :=
    match P with
    | .zero => .zero
    | .some x y h =>
        .some (e x) (e y)
          ((WeierstrassCurve.Affine.map_nonsingular
            (W := W.toAffine) (f := e.toRingHom)
            e.injective x y).mpr h)
  invFun P :=
    match P with
    | .zero => .zero
    | .some x y h =>
        .some (e.symm x) (e.symm y) <| by
          apply
            (WeierstrassCurve.Affine.map_nonsingular
              (W := W.toAffine) (f := e.toRingHom)
              e.injective (e.symm x) (e.symm y)).mp
          simpa using h
  left_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
        rw [WeierstrassCurve.Affine.Point.some.injEq]
        exact ⟨e.symm_apply_apply x, e.symm_apply_apply y⟩
  right_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
        rw [WeierstrassCurve.Affine.Point.some.injEq]
        exact ⟨e.apply_symm_apply x, e.apply_symm_apply y⟩

/-- Reduction followed by the standard residue-field equivalence is exactly the
original integer source reduced modulo seven. -/
theorem recordSevenPadic_reduction_map_zmod :
    (recordSevenPadic.reduction SevenR).map
        (PadicInt.residueField (p := 7)).toRingHom =
      recordZModSeven := by
  unfold WeierstrassCurve.reduction
  rw [recordSevenPadic_integralModel_eq]
  ext <;>
    simp [recordSevenIntegral, recordZModSeven, recordModel,
      WeierstrassCurve.map_map,
      PadicInt.toZMod_eq_residueField_comp_residue]

/-- The original source's finite enumeration is the actual Mathlib point count
of its nonsingular mod-7 curve. -/
theorem recordZModSeven_point_natCard :
    Nat.card recordZModSeven.toAffine.Point =
      Record4239.reducedPointCount 7 := by
  have h :=
    reducedPoint_natCard_eq_integralModelCount
      recordModel sevenPrime recordModel_discriminant_mod_seven_ne
  calc
    Nat.card recordZModSeven.toAffine.Point =
        integralModelCount recordModel 7 := by
      simpa [recordZModSeven, reducedCurve, sevenPrime] using h
    _ = Record4239.reducedPointCount 7 := recordModel_count 7

/-- The explicit good 7-adic model therefore has the source count thirteen on
its actual special fiber. -/
theorem recordSevenPadic_reduction_point_natCard :
    Nat.card (recordSevenPadic.reduction SevenR).toAffine.Point =
      Record4239.reducedPointCount 7 := by
  let e := PadicInt.residueField (p := 7)
  let hmap :
      (recordSevenPadic.reduction SevenR).map e.toRingHom =
        recordZModSeven :=
    recordSevenPadic_reduction_map_zmod
  calc
    Nat.card (recordSevenPadic.reduction SevenR).toAffine.Point =
        Nat.card
          ((recordSevenPadic.reduction SevenR).map e.toRingHom).toAffine.Point :=
      Nat.card_congr
        (ringEquivPointEquiv e (recordSevenPadic.reduction SevenR))
    _ = Nat.card recordZModSeven.toAffine.Point :=
      Nat.card_congr (affinePointCongr hmap)
    _ = Record4239.reducedPointCount 7 :=
      recordZModSeven_point_natCard

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge
