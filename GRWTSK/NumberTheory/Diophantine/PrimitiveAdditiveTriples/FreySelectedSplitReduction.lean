/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Splitness of the SAME selected everywhere-minimal Frey equation. Odd-prime
transport uses an exact cleared tangent-polynomial identity; at two the
selected integer equation is reduced directly, with multiplicative reduction
retained. No reduction of a nonintegral rational, source relabeling, conductor,
Tamagawa, completed-field or uniform height claim is introduced.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddSplitReduction
import Mathlib.Tactic.Tauto

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedSplitReduction

open WeierstrassCurve Polynomial
open FreyOddReduction FreyTwoBranchDecision FreyGlobalMinimalDiscriminant
open GRWTSK.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting
open GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport

/-- Reduce the OLD globally integral selected equation, not its fractional inverse chart. -/
def selectedResidueModel (t : PrimitiveAdditiveTriple) (p : ℕ) :
    WeierstrassCurve (ZMod p) := (integerModel t).map (Int.castRingHom (ZMod p))

/-- Model selection and residue-field transport are reconciled for every prime.
Multiplicative reduction is a necessary input, including at p=2. -/
theorem selected_split_iff_polynomial (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime]
    (hm : HasMultiplicativeReduction (LocalRing p) (selectedCurve t)) :
    HasSplitMultiplicativeReduction (LocalRing p) (selectedCurve t) ↔
      (tangentPolynomial (selectedResidueModel t p)).Splits := by
  have hm' : HasMultiplicativeReduction (LocalRing p)
      ((localModel t p).baseChange ℚ) := by
    simpa only [localModel_baseChange] using hm
  have hs := split_iff_supplied_model (LocalRing p) (K := ℚ) (localModel t p) hm'
  rw [localModel_baseChange] at hs
  let f := (tangentPolynomial (localModel t p)).map
    (algebraMap (LocalRing p) (IsLocalRing.ResidueField (LocalRing p)))
  have he := splits_map_equiv (FreyOddSplitReduction.residueEquiv p) f
  have hf : f.map (FreyOddSplitReduction.residueEquiv p).toRingHom =
      tangentPolynomial (selectedResidueModel t p) := by
    dsimp only [f]
    rw [Polynomial.map_map, map_tangentPolynomial]
    congr 1
    ext <;> simp [localModel, selectedResidueModel, WeierstrassCurve.map]
  exact hs.trans (he.symm.trans (by rw [hf]))

/-- The actual selected scale and shear are only (2,1) or (1,0). -/
def slopeScale (t : PrimitiveAdditiveTriple) : ℤ := if Descends t then 2 else 1

def slopeShear (t : PrimitiveAdditiveTriple) : ℤ := if Descends t then 1 else 0

theorem selected_scale_shear (t : PrimitiveAdditiveTriple) :
    ((selectedChange t).u : ℚ) = (slopeScale t : ℚ) ∧
      (selectedChange t).s = (slopeShear t : ℚ) := by
  unfold selectedChange
  split_ifs with hfirst heven
  · have hd : Descends t := Or.inl hfirst
    simp [slopeScale, slopeShear, hd,
      GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale.halfChange]
  · have hd : Descends t := Or.inr heven
    simp [slopeScale, slopeShear, hd,
      GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale.zeroChange]
  · have hn : ¬ Descends t := fun h => h.elim hfirst heven
    simp [slopeScale, slopeShear, hn]

/-- Exact rational polynomial covariance; r and t are not discarded from the change. -/
theorem rational_tangent_identity (t : PrimitiveAdditiveTriple) :
    C ((slopeScale t : ℚ)^6) * tangentPolynomial (selectedCurve t) =
      (tangentPolynomial t.freyCurve).comp
        (slopePolynomial (slopeScale t : ℚ) (slopeShear t : ℚ)) := by
  unfold selectedCurve selectedChange
  split_ifs with hfirst heven
  · have hd : Descends t := Or.inl hfirst
    simpa only [slopeScale, slopeShear, if_pos hd, Int.cast_ofNat,
      show (2 : ℚ)^6 = 64 by norm_num] using
      half_tangent_identity t.freyCurve (t.a : ℚ) 0
  · have hd : Descends t := Or.inr heven
    simpa only [slopeScale, slopeShear, if_pos hd, Int.cast_ofNat,
      show (2 : ℚ)^6 = 64 by norm_num] using
      half_tangent_identity t.freyCurve 0 0
  · have hn : ¬ Descends t := fun h => h.elim hfirst heven
    simp [slopeScale, slopeShear, hn, slopePolynomial]

/-- Descend the coefficient identity through the injective Z->Q map BEFORE any mod-p use. -/
theorem integer_tangent_identity (t : PrimitiveAdditiveTriple) :
    C ((slopeScale t)^6) * tangentPolynomial (integerModel t) =
      (tangentPolynomial t.freyIntegralModel).comp
        (C (slopeScale t)*X+C (slopeShear t)) := by
  have hs : (tangentPolynomial (integerModel t)).map (Int.castRingHom ℚ) =
      tangentPolynomial (selectedCurve t) := by
    rw [map_tangentPolynomial]
    change tangentPolynomial ((integerModel t).baseChange ℚ) = _
    rw [integerModel_baseChange]
  have hr : (tangentPolynomial t.freyIntegralModel).map (Int.castRingHom ℚ) =
      tangentPolynomial t.freyCurve := by
    rw [map_tangentPolynomial]
    change tangentPolynomial (t.freyIntegralModel.baseChange ℚ) = _
    rw [t.freyIntegralModel_baseChange_eq]
  apply Polynomial.map_injective (Int.castRingHom ℚ).injective_int
  simpa only [Polynomial.map_mul, Polynomial.map_C, Polynomial.map_comp,
    Polynomial.map_add, Polynomial.map_X, map_pow, hs, hr, slopePolynomial] using
    rational_tangent_identity t

/-- This identity also holds at two; cancellation there is explicitly NOT allowed. -/
theorem residue_tangent_identity (t : PrimitiveAdditiveTriple) (p : ℕ) :
    C ((slopeScale t : ZMod p)^6) * tangentPolynomial (selectedResidueModel t p) =
      (tangentPolynomial (t.freyResidueModel p)).comp
        (C (slopeScale t : ZMod p)*X+C (slopeShear t : ZMod p)) := by
  have h := congrArg (Polynomial.map (Int.castRingHom (ZMod p)))
    (integer_tangent_identity t)
  simpa only [Polynomial.map_mul, Polynomial.map_C, Polynomial.map_comp,
    Polynomial.map_add, Polynomial.map_X, map_pow, map_tangentPolynomial,
    selectedResidueModel, PrimitiveAdditiveTriple.freyResidueModel] using h

theorem scale_ne_zero_at_odd (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) : (slopeScale t : ZMod p) ≠ 0 := by
  by_cases hd : Descends t
  · simpa only [slopeScale, if_pos hd, Int.cast_ofNat] using frey_two_ne_zero_mod p hp2
  · simp only [slopeScale, if_neg hd, Int.cast_one, ne_eq, one_ne_zero, not_false_eq_true]

/-- Coefficient-level splitting transport, not bounded comparison of slope lists. -/
theorem odd_polynomial_splits_iff (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    (tangentPolynomial (selectedResidueModel t p)).Splits ↔
      (tangentPolynomial (t.freyResidueModel p)).Splits := by
  have hu := scale_ne_zero_at_odd t p hp2
  exact splits_of_cleared_identity _ _ _ _ _ (pow_ne_zero 6 hu) hu
    (residue_tangent_identity t p)

/-- An explicit root-set bijection on the residue field; source labels stay fixed. -/
def oddSlopeEquiv (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    {r : ZMod p // (tangentPolynomial (selectedResidueModel t p)).eval r = 0} ≃
    {r : ZMod p // (tangentPolynomial (t.freyResidueModel p)).eval r = 0} :=
  rootEquiv _ _ _ _ _ (pow_ne_zero 6 (scale_ne_zero_at_odd t p hp2))
    (scale_ne_zero_at_odd t p hp2) (residue_tangent_identity t p)

/-- Formal transport of the ACTUAL split predicate to the OLD selectedCurve. -/
theorem selected_split_iff_raw (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    HasSplitMultiplicativeReduction (LocalRing p) (selectedCurve t) ↔
      HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve := by
  by_cases hb : p ∣ t.a*t.b*t.c
  · rw [selected_split_iff_polynomial t p (multiplicative_at_odd t p hp2 hb),
      FreyOddSplitReduction.split_iff_residuePolynomial t p hp2 hb]
    exact odd_polynomial_splits_iff t p hp2
  · constructor
    · intro hs
      exact ((good_at_odd t p hp2 hb).not_hasMultiplicativeReduction
        hs.toHasMultiplicativeReduction).elim
    · intro hs
      exact ((FreyOddReduction.good_at_odd_prime t p hp2 hb).not_hasMultiplicativeReduction
        hs.toHasMultiplicativeReduction).elim

/-- All odd-prime bad-locus guards and the sign at p|b are retained. -/
theorem selected_split_at_odd_iff (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    HasSplitMultiplicativeReduction (LocalRing p) (selectedCurve t) ↔
      (p ∣ t.a ∧ ∃ r : ZMod p, r^2=(t.b : ZMod p)) ∨
      (p ∣ t.b ∧ ∃ r : ZMod p, r^2= -(t.a : ZMod p)) ∨
      (p ∣ t.c ∧ ∃ r : ZMod p, r^2=(t.a : ZMod p)) := by
  rw [selected_split_iff_raw t p hp2]
  exact FreyOddSplitReduction.split_at_odd_iff t p hp2

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Explicit original-source formula for the ACTUAL selected a2 coefficient. -/
theorem selected_a2_formula (t : PrimitiveAdditiveTriple) :
    (integerModel t).a₂ =
      if t.a%4=1 ∧ 16 ∣ t.c then ((t.a/4 : ℕ) : ℤ)+4*((t.c/16 : ℕ) : ℤ)
      else if ((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b then ((t.b : ℤ)-t.a)/4
      else (t.b : ℤ)-t.a := by
  unfold integerModel
  split_ifs <;> rfl

/-- Direct reduction of the selected equation at TWO; never divide 64 in F_2. -/
theorem selected_binary_tangent (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    tangentPolynomial (selectedResidueModel t 2) =
      X^2+X+C ((integerModel t).a₂ : ZMod 2) := by
  unfold selectedResidueModel integerModel
  split_ifs with hfirst heven
  · simpa [FreyTwoSemistableChamber.integralModel,
      GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale.model,
      WeierstrassCurve.map, map_one, map_zero] using
      binary_tangent (((firstWitness t hfirst).k : ZMod 2)+
        4*((firstWitness t hfirst).n : ZMod 2))
        ((4*((firstWitness t hfirst).k : ZMod 2)+1)*((firstWitness t hfirst).n : ZMod 2))
  · simpa [FreyTwoEvenSummandChamber.integralModel,
      GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale.model,
      WeierstrassCurve.map, map_one, map_zero] using
      binary_tangent ((evenWitness t heven).k : ZMod 2) (-((evenWitness t heven).m : ZMod 2))
  · exact (hd.elim hfirst heven).elim

/-- Complete dyadic split criterion for the SAME selected minimal equation.
A factorable slope polynomial at a good or additive fiber does not suffice. -/
theorem selected_split_at_two_iff (t : PrimitiveAdditiveTriple) :
    HasSplitMultiplicativeReduction (LocalRing 2) (selectedCurve t) ↔
      Descends t ∧ 4 < (t.a*t.b*t.c).factorization 2 ∧
        (2 : ℤ) ∣ (integerModel t).a₂ := by
  constructor
  · intro hs
    have hm := hs.toHasMultiplicativeReduction
    obtain ⟨hd,he⟩ := (selected_multiplicative_iff t).mp hm
    have hp := (selected_split_iff_polynomial t 2 hm).mp hs
    rw [selected_binary_tangent t hd, binary_quadratic_splits_iff] at hp
    exact ⟨hd,he,(ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp hp⟩
  · rintro ⟨hd,he,hk⟩
    have hm := (selected_multiplicative_iff t).mpr ⟨hd,he⟩
    apply (selected_split_iff_polynomial t 2 hm).mpr
    rw [selected_binary_tangent t hd, binary_quadratic_splits_iff]
    exact (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mpr hk

/-- Parity in the first chamber is the ORIGINAL a modulo eight. -/
theorem first_a2_parity (t : PrimitiveAdditiveTriple) (h : t.a%4=1 ∧ 16 ∣ t.c) :
    (2 : ℤ) ∣ (integerModel t).a₂ ↔ t.a%8=1 := by
  rw [selected_a2_formula, if_pos h, Int.dvd_iff_emod_eq_zero]
  have ha := h.1
  omega

/-- In the second selected chamber the SIGNED difference supplies the parity. -/
theorem even_a2_parity (t : PrimitiveAdditiveTriple)
    (hn : ¬ (t.a%4=1 ∧ 16 ∣ t.c))
    (h : ((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b) :
    (2 : ℤ) ∣ (integerModel t).a₂ ↔ ((t.b : ℤ)-t.a)%8=1 := by
  rw [selected_a2_formula, if_neg hn, if_pos h, Int.dvd_iff_emod_eq_zero]
  have hd := h.1
  omega

/-- An original-coordinate parity test, with the old source-dependent branch retained. -/
theorem dyadic_parity_formula (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    (2 : ℤ) ∣ (integerModel t).a₂ ↔
      if t.a%4=1 ∧ 16 ∣ t.c then t.a%8=1 else ((t.b : ℤ)-t.a)%8=1 := by
  by_cases hf : t.a%4=1 ∧ 16 ∣ t.c
  · rw [if_pos hf]
    exact first_a2_parity t hf
  · rw [if_neg hf]
    exact even_a2_parity t hf (hd.resolve_left hf)

/-- Nonsplit is only assigned INSIDE the actual multiplicative locus. -/
theorem selected_nonsplit_at_two_iff (t : PrimitiveAdditiveTriple) :
    (HasMultiplicativeReduction (LocalRing 2) (selectedCurve t) ∧
      ¬ HasSplitMultiplicativeReduction (LocalRing 2) (selectedCurve t)) ↔
      Descends t ∧ 4 < (t.a*t.b*t.c).factorization 2 ∧
        ¬ (2 : ℤ) ∣ (integerModel t).a₂ := by
  rw [selected_multiplicative_iff, selected_split_at_two_iff]
  tauto

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedSplitReduction
