/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Decide the existing binary dyadic MODEL correction using the actual c6
invariant and the canonical odd-denominator localization. An all-changes
necessity argument is combined with the two previous explicit witnesses.
The raw additive complement is proved minimal; it is not inferred from a
failed search. No conductor, Kodaira, Tamagawa, completed-field, integral
marked-port or uniform radical-height claim follows from this decision.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C6ModEight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoMinimalBudget
import Mathlib.Tactic.SplitIfs

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoBranchDecision

open WeierstrassCurve
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C6ModEight
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C4MinimalScale
open FreyOddReduction FreyTwoLowDepth FreyTwoMinimalBudget

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Signed polynomial: the OLD rational c6 is -32 times this integer. -/
def c6Shape (t : PrimitiveAdditiveTriple) : ℤ :=
  ((t.b : ℤ)-t.a)*(2*(t.a : ℤ)+t.b)*((t.a : ℤ)+2*t.b)

theorem raw_c6 (t : PrimitiveAdditiveTriple) :
    t.freyCurve.c₆= -32*(c6Shape t : ℚ) := by
  rw [← t.freyIntegralModel_baseChange_eq,WeierstrassCurve.baseChange,
    WeierstrassCurve.map_c₆]
  simp only [PrimitiveAdditiveTriple.freyIntegralModel,freyWeierstrassInt,
    WeierstrassCurve.c₆,WeierstrassCurve.b₂,WeierstrassCurve.b₄,
    WeierstrassCurve.b₆,c6Shape]
  push_cast
  ring

/-- Extend reduction mod 8 through the OLD localization, not through all of Q. -/
def modEight : LocalRing 2 →+* ZMod 8 :=
  oddLocalizationMap (primePlace 2).asIdeal.primeCompl (LocalRing 2) (by
    intro y
    have hy : (y : ℤ) ∉ (primePlace 2).asIdeal := y.property
    simpa only [primePlace,Ideal.mem_span_singleton] using hy)

@[simp] theorem modEight_int (z : ℤ) : modEight (z : LocalRing 2)=(z : ZMod 8) := by
  exact map_intCast modEight z

/-- An actual scale of valuation one is two times a LOCAL unit, not just a Q-unit. -/
theorem scale_one_unit (C : VariableChange ℚ)
    (hscale : scaleExponent (LocalRing 2) C=1) :
    ∃ ε : (LocalRing 2)ˣ,
      (C.u : ℚ)=2*algebraMap (LocalRing 2) ℚ (ε : LocalRing 2) := by
  have hu0 : localVal (LocalRing 2) (C.u : ℚ)≠0 :=
    (Valuation.ne_zero_iff _).mpr C.u.ne_zero
  have hlog : WithZero.log (localVal (LocalRing 2) (C.u : ℚ))= -1 := by
    unfold scaleExponent at hscale
    omega
  have hv : localVal (LocalRing 2) (2 : ℚ)=localVal (LocalRing 2) (C.u : ℚ) := by
    rw [localVal_prime,← WithZero.exp_log hu0,hlog]
  obtain ⟨ε,hε⟩ := IsDiscreteValuationRing.associated_of_valuation_eq
    (A := LocalRing 2) (K := ℚ) (2 : ℚ) (C.u : ℚ) hv
  exact ⟨ε,by simpa [Units.smul_def,Algebra.smul_def,mul_comm] using hε.symm⟩

/-- Weight-four descent makes c4 of the actual integral target model a unit. -/
theorem scale_one_c4_unit (t : PrimitiveAdditiveTriple) (C : VariableChange ℚ)
    (hC : IsIntegral (LocalRing 2) (C • t.freyCurve))
    (hscale : scaleExponent (LocalRing 2) C=1) :
    letI := hC
    IsUnit (WeierstrassCurve.integralModel (LocalRing 2) (C • t.freyCurve)).c₄ := by
  letI := hC
  have he := c4_scale_balance (LocalRing 2) t.freyCurve (raw_c4_ne_zero t) C
  rw [raw_c4_exponent,hscale] at he
  have he0 : c4Exponent (LocalRing 2) (C • t.freyCurve)=0 := by omega
  have hv := c4_value_eq_exp (LocalRing 2) (C • t.freyCurve)
    (changed_c4_ne_zero (LocalRing 2) t.freyCurve (raw_c4_ne_zero t) C)
  rw [he0,neg_zero,WithZero.exp_zero] at hv
  apply (val_map_eq_one_iff (LocalRing 2) (K := ℚ) _).mp
  rw [WeierstrassCurve.integralModel_c₄_eq]
  exact hv

/-- Applies to EVERY locally integral change of scale exponent one. The shifts
are not restricted or enumerated. Local odd denominators remain allowed. -/
theorem scale_one_obstruction (t : PrimitiveAdditiveTriple) (C : VariableChange ℚ)
    (hC : IsIntegral (LocalRing 2) (C • t.freyCurve))
    (hscale : scaleExponent (LocalRing 2) C=1) : (c6Shape t : ZMod 8)=2 := by
  letI := hC
  let W := WeierstrassCurve.integralModel (LocalRing 2) (C • t.freyCurve)
  obtain ⟨ε,hε⟩ := scale_one_unit C hscale
  have hF : (c6Shape t : LocalRing 2)= -2*(ε : LocalRing 2)^6*W.c₆ := by
    apply half_scale_cancellation (IsFractionRing.injective (LocalRing 2) ℚ)
      t.freyCurve C W (WeierstrassCurve.baseChange_integralModel_eq _ _) ε hε
    simpa only [map_intCast] using raw_c6 t
  have h := invariant_obstruction modEight W
    (scale_one_c4_unit t C hC hscale) ε (c6Shape t : LocalRing 2) hF
  simpa only [modEight_int] using h

/-- The same guards as the two previous chambers, in original ordered source coordinates. -/
def Descends (t : PrimitiveAdditiveTriple) : Prop :=
  (t.a%4=1 ∧ 16 ∣ t.c) ∨
  (((t.b : ℤ)-(t.a : ℤ))%4=1 ∧ 16 ∣ t.a*t.b)

instance (t : PrimitiveAdditiveTriple) : Decidable (Descends t) := by
  unfold Descends
  infer_instance

theorem descends_chambers (t : PrimitiveAdditiveTriple) : Descends t ↔
    Nonempty (FreyTwoSemistableChamber.Chamber t) ∨
    Nonempty (FreyTwoEvenSummandChamber.Chamber t) := by
  rw [FreyTwoSemistableChamber.chamber_iff,FreyTwoEvenSummandChamber.chamber_iff]
  rfl

private def toEight : ZMod 16 →+* ZMod 8 := ZMod.castHom (by decide) (ZMod 8)
private def toFour : ZMod 16 →+* ZMod 4 := ZMod.castHom (by decide) (ZMod 4)
private def toTwo : ZMod 16 →+* ZMod 2 := ZMod.castHom (by decide) (ZMod 2)

/-- A complete residue theorem, not a bounded-source experiment. The next
lemma explicitly transfers it to arbitrary primitive sources. -/
set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
private theorem residue_table : ∀ a b : ZMod 16,
    (toTwo a=1 ∨ toTwo b=1) → a*b*(a+b)=0 →
    (toEight ((b-a)*(2*a+b)*(a+2*b))=2 ↔
      (toFour a=1 ∧ a+b=0) ∨ (toFour (b-a)=1 ∧ a*b=0)) := by
  decide

private theorem nat_mod_four (n : ℕ) : (n : ZMod 4)=1 ↔ n%4=1 := by
  constructor
  · intro h
    have hv := congrArg ZMod.val h
    simpa using hv
  · intro h
    rw [← ZMod.natCast_mod n 4,h]
    norm_num

private theorem int_mod_four (z : ℤ) : (z : ZMod 4)=1 ↔ z%4=1 := by
  simpa only [Int.cast_one,Int.cast_ofNat] using (ZMod.intCast_eq_intCast_iff' z 1 4)

/-- Source primitivity and the HIGH-DEPTH guard are explicitly retained. -/
theorem obstruction_iff_descends (t : PrimitiveAdditiveTriple)
    (h16 : 16 ∣ t.a*t.b*t.c) : (c6Shape t : ZMod 8)=2 ↔ Descends t := by
  have hp : toTwo (t.a : ZMod 16)=1 ∨ toTwo (t.b : ZMod 16)=1 := by
    have hsmall : ∀ z : ZMod 2, z≠0 → z=1 := by decide
    rcases t.freyResidueParameters_nonzero 2 with ha|hb
    · exact Or.inl (by simpa only [map_natCast] using hsmall _ ha)
    · exact Or.inr (by simpa only [map_natCast] using hsmall _ hb)
  have hz : (t.a : ZMod 16)*t.b*((t.a : ZMod 16)+t.b)=0 := by
    have h := (ZMod.natCast_eq_zero_iff (t.a*t.b*t.c) 16).mpr h16
    simpa only [Nat.cast_mul,← t.sum_eq,Nat.cast_add] using h
  have ht := residue_table (t.a : ZMod 16) (t.b : ZMod 16) hp hz
  have hc : (t.a : ZMod 16)+t.b=0 ↔ 16 ∣ t.c := by
    rw [← Nat.cast_add,t.sum_eq,ZMod.natCast_eq_zero_iff]
  have hab : (t.a : ZMod 16)*t.b=0 ↔ 16 ∣ t.a*t.b := by
    rw [← Nat.cast_mul,ZMod.natCast_eq_zero_iff]
  have ha : toFour (t.a : ZMod 16)=1 ↔ t.a%4=1 := by
    rw [map_natCast,nat_mod_four]
  have hd : toFour ((t.b : ZMod 16)-t.a)=1 ↔ ((t.b : ℤ)-t.a)%4=1 := by
    rw [map_sub,map_natCast,map_natCast]
    simpa only [Int.cast_sub,Int.cast_natCast] using int_mod_four ((t.b : ℤ)-t.a)
  have hf : toEight (((t.b : ZMod 16)-t.a)*(2*t.a+t.b)*(t.a+2*t.b))=
      (c6Shape t : ZMod 8) := by
    simp only [map_mul,map_sub,map_add,map_ofNat,map_natCast,c6Shape,
      Int.cast_mul,Int.cast_sub,Int.cast_add,Int.cast_ofNat,Int.cast_natCast]
  rw [hf,ha,hd,hc,hab] at ht
  exact ht

/-- Necessity uses an arbitrary ACTUAL minimal change, not either chosen witness. -/
theorem correction_twelve_iff (t : PrimitiveAdditiveTriple) :
    dyadicCorrection t=12 ↔ Descends t := by
  constructor
  · intro h12
    have h16 : 16 ∣ t.a*t.b*t.c := by
      by_contra hn
      have h0 := correction_zero_of_low_depth t hn
      omega
    obtain ⟨C,hC⟩ := t.freyCurve.exists_isMinimal (LocalRing 2)
    letI : IsMinimal (LocalRing 2) (C • t.freyCurve) := hC
    have hc := correction_eq_scale t C hC
    have hs : scaleExponent (LocalRing 2) C=1 := by omega
    exact (obstruction_iff_descends t h16).mp
      (scale_one_obstruction t C inferInstance hs)
  · intro hd
    rcases (descends_chambers t).mp hd with ⟨h⟩|⟨h⟩
    · exact correction_twelve_in_first_chamber h
    · exact correction_twelve_in_even_chamber h

theorem correction_zero_iff (t : PrimitiveAdditiveTriple) :
    dyadicCorrection t=0 ↔ ¬ Descends t := by
  have hcases := dyadicCorrection_cases t
  have h12 := correction_twelve_iff t
  constructor
  · intro h0 hd
    have hh := h12.mpr hd
    omega
  · intro hn
    rcases hcases with h0|h12'
    · exact h0
    · exact (hn (h12.mp h12')).elim

theorem correction_formula (t : PrimitiveAdditiveTriple) :
    dyadicCorrection t = if Descends t then 12 else 0 := by
  by_cases h : Descends t
  · simp only [if_pos h,(correction_twelve_iff t).mpr h]
  · simp only [if_neg h,(correction_zero_iff t).mpr h]

/-- Exact signed formula; low-depth subtraction is not silently truncated. -/
theorem minimum_formula (t : PrimitiveAdditiveTriple) :
    minimumExponent t 2 = 4+2*((t.a*t.b*t.c).factorization 2 : ℤ)-
      (if Descends t then 12 else 0) := by
  have h := minimum_two_balance t
  rw [correction_formula] at h
  omega

/-- Zero correction yields raw minimality by comparison with an actual minimum,
not from absence of a finite-search witness. -/
theorem raw_minimal_iff (t : PrimitiveAdditiveTriple) :
    IsMinimal (LocalRing 2) t.freyCurve ↔ ¬ Descends t := by
  constructor
  · intro hm
    have h1 : IsMinimal (LocalRing 2) ((1 : VariableChange ℚ) • t.freyCurve) := by
      simpa only [one_smul] using hm
    have he := minimumExponent_eq t 2 1 h1
    simp only [one_smul] at he
    apply (correction_zero_iff t).mp
    simp only [dyadicCorrection,he,sub_self]
  · intro hn
    letI := curve_integral t 2
    obtain ⟨C,hC⟩ := t.freyCurve.exists_isMinimal (LocalRing 2)
    letI : IsMinimal (LocalRing 2) (C • t.freyCurve) := hC
    have he : discriminantExponent (LocalRing 2) (C • t.freyCurve)=
        discriminantExponent (LocalRing 2) t.freyCurve := by
      have h0 := (correction_zero_iff t).mpr hn
      rw [dyadicCorrection,minimumExponent_eq t 2 C hC] at h0
      omega
    apply minimal_of_dominates (LocalRing 2) t.freyCurve
    intro D hD
    have hd : IsIntegral (LocalRing 2) ((D*C⁻¹) • (C • t.freyCurve)) := by
      simpa only [mul_smul,inv_smul_smul] using hD
    have hl := minimal_exponent_le_competitor (LocalRing 2) (C • t.freyCurve)
      (changed_delta_ne_zero (LocalRing 2) t.freyCurve t.freyCurve_Δ_ne_zero C)
      (D*C⁻¹) hd
    simp only [mul_smul,inv_smul_smul,he] at hl
    rw [delta_value_eq_exp (LocalRing 2) (D • t.freyCurve)
        (changed_delta_ne_zero (LocalRing 2) t.freyCurve t.freyCurve_Δ_ne_zero D),
      delta_value_eq_exp (LocalRing 2) t.freyCurve t.freyCurve_Δ_ne_zero,
      WithZero.exp_le_exp]
    omega

/-- This newly includes the high-depth complementary congruences. -/
theorem raw_additive_iff (t : PrimitiveAdditiveTriple) :
    HasAdditiveReduction (LocalRing 2) t.freyCurve ↔ ¬ Descends t := by
  constructor
  · intro h
    exact (raw_minimal_iff t).mp h.toIsMinimal
  · intro hn
    refine ⟨(raw_minimal_iff t).mpr hn,?_,?_⟩
    · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
        (localizedModel t 2).Δ).mpr (localized_delta_nonunit_at_two t)
      simpa only [← localizedModel_baseChange t 2,
        WeierstrassCurve.baseChange,WeierstrassCurve.map_Δ] using hv
    · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
        (localizedModel t 2).c₄).mpr (localized_c4_nonunit_at_two t)
      simpa only [← localizedModel_baseChange t 2,
        WeierstrassCurve.baseChange,WeierstrassCurve.map_c₄] using hv

/-- A concrete rational coordinate change selected by finite original-source guards. -/
def selectedChange (t : PrimitiveAdditiveTriple) : VariableChange ℚ :=
  if t.a%4=1 ∧ 16 ∣ t.c then
    GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.IntegralHalfScale.halfChange (t.a : ℚ)
  else if ((t.b : ℤ)-(t.a : ℤ))%4=1 ∧ 16 ∣ t.a*t.b then
    GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale.zeroChange
  else 1

def selectedCurve (t : PrimitiveAdditiveTriple) : WeierstrassCurve ℚ :=
  selectedChange t • t.freyCurve

theorem selected_minimal (t : PrimitiveAdditiveTriple) :
    IsMinimal (LocalRing 2) (selectedCurve t) := by
  unfold selectedCurve selectedChange
  split_ifs with hfirst heven
  · obtain ⟨h⟩ := (FreyTwoSemistableChamber.chamber_iff t).mpr hfirst
    exact FreyTwoSemistableChamber.minimal_at_two h
  · obtain ⟨h⟩ := (FreyTwoEvenSummandChamber.chamber_iff t).mpr heven
    exact FreyTwoEvenSummandChamber.minimal_at_two h
  · simpa only [one_smul] using (raw_minimal_iff t).mpr
      (show ¬ Descends t from fun h => h.elim hfirst heven)

theorem selected_exponent (t : PrimitiveAdditiveTriple) :
    discriminantExponent (LocalRing 2) (selectedCurve t)=minimumExponent t 2 :=
  (minimumExponent_eq t 2 (selectedChange t) (selected_minimal t)).symm

instance (t : PrimitiveAdditiveTriple) : (selectedCurve t).IsElliptic := by
  unfold selectedCurve
  infer_instance

/-- Equality follows from the actual selected admissible change, not an equal-j converse. -/
theorem selected_j (t : PrimitiveAdditiveTriple) : (selectedCurve t).j=t.freyCurve.j := by
  exact WeierstrassCurve.variableChange_j _ _

/-- The selected rational change has the exact scale valuation decided above. -/
theorem selected_scale (t : PrimitiveAdditiveTriple) :
    scaleExponent (LocalRing 2) (selectedChange t)=if Descends t then 1 else 0 := by
  have h := correction_eq_scale t (selectedChange t) (selected_minimal t)
  rw [correction_formula] at h
  by_cases hd : Descends t <;> simp only [hd,if_true,if_false] at h ⊢ <;> omega

theorem selected_c4_value (t : PrimitiveAdditiveTriple) :
    localVal (LocalRing 2) (selectedCurve t).c₄ =
      if Descends t then 1 else WithZero.exp (-4 : ℤ) := by
  have hb := c4_scale_balance (LocalRing 2) t.freyCurve (raw_c4_ne_zero t)
    (selectedChange t)
  have hv := c4_value_eq_exp (LocalRing 2) (selectedCurve t)
    (changed_c4_ne_zero (LocalRing 2) t.freyCurve (raw_c4_ne_zero t) (selectedChange t))
  rw [raw_c4_exponent,selected_scale] at hb
  change c4Exponent (LocalRing 2) (selectedCurve t)+
    4*(if Descends t then 1 else 0)=4 at hb
  by_cases hd : Descends t
  · simp only [if_pos hd] at hb ⊢
    have he : c4Exponent (LocalRing 2) (selectedCurve t)=0 := by omega
    simpa only [he,neg_zero,WithZero.exp_zero] using hv
  · simp only [if_neg hd] at hb ⊢
    have he : c4Exponent (LocalRing 2) (selectedCurve t)=4 := by omega
    simpa only [he] using hv

theorem selected_additive_iff (t : PrimitiveAdditiveTriple) :
    HasAdditiveReduction (LocalRing 2) (selectedCurve t) ↔ ¬ Descends t := by
  constructor
  · intro ha hd
    have h := ha.additiveReduction
    change localVal (LocalRing 2) (selectedCurve t).c₄<1 at h
    rw [selected_c4_value,if_pos hd] at h
    exact lt_irrefl _ h
  · intro hn
    have hfirst : ¬ (t.a%4=1 ∧ 16 ∣ t.c) := fun h => hn (Or.inl h)
    have heven : ¬ (((t.b : ℤ)-(t.a : ℤ))%4=1 ∧ 16 ∣ t.a*t.b) :=
      fun h => hn (Or.inr h)
    simpa only [selectedCurve,selectedChange,if_neg hfirst,if_neg heven,one_smul]
      using (raw_additive_iff t).mpr hn

/-- Complete good-reduction criterion for the explicit SELECTED equation. -/
theorem selected_good_iff (t : PrimitiveAdditiveTriple) :
    HasGoodReduction (LocalRing 2) (selectedCurve t) ↔
      Descends t ∧ (t.a*t.b*t.c).factorization 2=4 := by
  have hΔ := changed_delta_ne_zero (LocalRing 2) t.freyCurve
    t.freyCurve_Δ_ne_zero (selectedChange t)
  have hd := selected_exponent t
  rw [minimum_formula] at hd
  constructor
  · intro hg
    have hdesc : Descends t := by
      by_contra hn
      exact hg.not_hasAdditiveReduction ((selected_additive_iff t).mpr hn)
    have hv := hg.goodReduction
    change localVal (LocalRing 2) (selectedCurve t).Δ=1 at hv
    rw [delta_value_eq_exp (LocalRing 2) (selectedCurve t) hΔ,
      WithZero.exp_eq_one] at hv
    rw [if_pos hdesc] at hd
    exact ⟨hdesc,by omega⟩
  · rintro ⟨hdesc,he⟩
    refine ⟨selected_minimal t,?_⟩
    change localVal (LocalRing 2) (selectedCurve t).Δ=1
    rw [delta_value_eq_exp (LocalRing 2) (selectedCurve t) hΔ,hd,if_pos hdesc,he]
    norm_num

/-- This is multiplicative TYPE, not splitness, conductor exponent or a Tate uniformization. -/
theorem selected_multiplicative_iff (t : PrimitiveAdditiveTriple) :
    HasMultiplicativeReduction (LocalRing 2) (selectedCurve t) ↔
      Descends t ∧ 4<(t.a*t.b*t.c).factorization 2 := by
  have hΔ := changed_delta_ne_zero (LocalRing 2) t.freyCurve
    t.freyCurve_Δ_ne_zero (selectedChange t)
  have hd := selected_exponent t
  rw [minimum_formula] at hd
  constructor
  · intro hm
    have hdesc : Descends t := by
      by_contra hn
      exact hm.not_hasAdditiveReduction ((selected_additive_iff t).mpr hn)
    have hv := hm.badReduction
    change localVal (LocalRing 2) (selectedCurve t).Δ<1 at hv
    rw [delta_value_eq_exp (LocalRing 2) (selectedCurve t) hΔ,
      ← WithZero.exp_zero,WithZero.exp_lt_exp] at hv
    rw [if_pos hdesc] at hd
    exact ⟨hdesc,by omega⟩
  · rintro ⟨hdesc,he⟩
    refine ⟨selected_minimal t,?_,?_⟩
    · change localVal (LocalRing 2) (selectedCurve t).Δ<1
      rw [delta_value_eq_exp (LocalRing 2) (selectedCurve t) hΔ,
        ← WithZero.exp_zero,WithZero.exp_lt_exp,hd,if_pos hdesc]
      omega
    · change localVal (LocalRing 2) (selectedCurve t).c₄=1
      rw [selected_c4_value,if_pos hdesc]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoBranchDecision
