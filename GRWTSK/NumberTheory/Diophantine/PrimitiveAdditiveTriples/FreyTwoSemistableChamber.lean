/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The selected chamber a=4k+1, c=16n of the OLD primitive Frey source.
The explicit change (2,a,1,0) has integral output and odd c4. Use the
previous actual Z_(2) localization and unit-invariant minimality theorem.
The REDUCTION predicates apply to the CHANGED equation, not to the raw
nonminimal equation. No conductor, complete two-adic classification,
Tate algorithm, completed field, twist, or radical-height bound is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.IntegralHalfScale
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddReduction

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoSemistableChamber

open WeierstrassCurve
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.IntegralHalfScale
open FreyOddReduction
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Exact source identities, with no permutation of a,b,c. -/
structure Chamber (t : PrimitiveAdditiveTriple) where
  k : ℕ
  n : ℕ
  a_eq : t.a = 4*k+1
  c_eq : t.c = 16*n

/-- The witness record is equivalent to the displayed congruence/divisibility guards. -/
theorem chamber_iff (t : PrimitiveAdditiveTriple) :
    Nonempty (Chamber t) ↔ t.a % 4 = 1 ∧ 16 ∣ t.c := by
  constructor
  · rintro ⟨h⟩
    exact ⟨by rw [h.a_eq]; omega, ⟨h.n,h.c_eq⟩⟩
  · rintro ⟨ha,⟨n,hn⟩⟩
    exact ⟨⟨t.a/4,n,by omega,hn⟩⟩

variable {t : PrimitiveAdditiveTriple}

theorem Chamber.n_pos (h : Chamber t) : 0 < h.n := by
  have hc := t.c_pos
  rw [h.c_eq] at hc
  omega

theorem Chamber.a_odd (h : Chamber t) : ¬ 2 ∣ t.a := by rw [h.a_eq]; omega

theorem Chamber.b_odd (h : Chamber t) : ¬ 2 ∣ t.b := by
  have hs := t.sum_eq
  rw [h.a_eq,h.c_eq] at hs
  omega

theorem Chamber.a_cast (h : Chamber t) : (t.a : ℤ) = 4*(h.k : ℤ)+1 := by
  exact_mod_cast h.a_eq

theorem Chamber.b_cast (h : Chamber t) :
    (t.b : ℤ) = 16*(h.n : ℤ)-4*(h.k : ℤ)-1 := by
  have hs : (t.a : ℤ)+(t.b : ℤ) = (t.c : ℤ) := by exact_mod_cast t.sum_eq
  have hc : (t.c : ℤ) = 16*(h.n : ℤ) := by exact_mod_cast h.c_eq
  rw [h.a_cast,hc] at hs
  omega

/-- Integral OUTPUT coefficients, not a division performed inside Z_(2). -/
def integralModel (h : Chamber t) : WeierstrassCurve ℤ := model h.k h.n

/-- The named rational equation is an ACTUAL variable change of the OLD curve. -/
def changedCurve (h : Chamber t) : WeierstrassCurve ℚ :=
  halfChange (t.a : ℚ) • t.freyCurve

instance (h : Chamber t) : (changedCurve h).IsElliptic := by
  unfold changedCurve
  infer_instance

theorem integralModel_baseChange (h : Chamber t) :
    (integralModel h).baseChange ℚ = changedCurve h := by
  rw [integralModel, ← variableChange_model]
  have ha : (((4*(h.k : ℤ)+1) : ℤ) : ℚ) = (t.a : ℚ) := by
    exact_mod_cast h.a_cast.symm
  have hb : (((16*(h.n : ℤ)-4*(h.k : ℤ)-1) : ℤ) : ℚ) = (t.b : ℚ) := by
    exact_mod_cast h.b_cast.symm
  rw [ha,hb]
  rfl

/-- Equality of j follows from the explicit admissible change, not the converse. -/
theorem changedCurve_j (h : Chamber t) : (changedCurve h).j = t.freyCurve.j := by
  exact WeierstrassCurve.variableChange_j _ _

theorem c4_scaling (h : Chamber t) :
    16*(integralModel h).c₄ = t.freyIntegralModel.c₄ := by
  rw [integralModel, model_c4, t.freyIntegralModel_c4, h.a_cast, h.b_cast]
  ring

/-- Exact same-source discriminant identity without totalized division. -/
theorem delta_as_square (h : Chamber t) :
    (integralModel h).Δ = ((t.a : ℤ)*(t.b : ℤ)*(h.n : ℤ))^2 := by
  rw [integralModel,model_delta,← h.a_cast,← h.b_cast]

theorem delta_scaling (h : Chamber t) :
    4096*(integralModel h).Δ = t.freyIntegralModel.Δ := by
  rw [delta_as_square,t.freyIntegralModel_Δ,h.c_eq]
  push_cast
  ring

/-- The coefficient field is still Q; this is NOT a completed local model. -/
def localModel (h : Chamber t) : WeierstrassCurve (LocalRing 2) :=
  (integralModel h).map (algebraMap ℤ (LocalRing 2))

theorem localModel_baseChange (h : Chamber t) :
    (localModel h).baseChange ℚ = changedCurve h := by
  calc
    _ = (integralModel h).baseChange ℚ := by
      ext <;> simp [localModel,WeierstrassCurve.baseChange,
        ← IsScalarTower.algebraMap_apply ℤ (LocalRing 2) ℚ]
    _ = changedCurve h := integralModel_baseChange h

theorem local_c4_unit (h : Chamber t) : IsUnit (localModel h).c₄ := by
  rw [localModel,WeierstrassCurve.map_c₄,int_unit_iff]
  exact c4_not_dvd_two h.k h.n

theorem local_delta_unit_iff (h : Chamber t) :
    IsUnit (localModel h).Δ ↔ ¬ 2 ∣ h.n := by
  rw [localModel,WeierstrassCurve.map_Δ,int_unit_iff,integralModel,delta_even_iff]
  norm_cast

/-- Minimality of the EXPLICIT CHANGED equation in the old actual localization. -/
theorem minimal_at_two (h : Chamber t) :
    IsMinimal (LocalRing 2) (changedCurve h) := by
  have hm := minimal_of_unit_c4 (LocalRing 2) (K := ℚ) (localModel h) (local_c4_unit h)
  simpa only [localModel_baseChange] using hm

theorem good_at_two (h : Chamber t) (hn : ¬ 2 ∣ h.n) :
    HasGoodReduction (LocalRing 2) (changedCurve h) := by
  have hg := good_of_unit_delta (LocalRing 2) (K := ℚ) (localModel h)
    ((local_delta_unit_iff h).mpr hn)
  simpa only [localModel_baseChange] using hg

theorem multiplicative_at_two (h : Chamber t) (hn : 2 ∣ h.n) :
    HasMultiplicativeReduction (LocalRing 2) (changedCurve h) := by
  have hd : ¬ IsUnit (localModel h).Δ := by
    rw [local_delta_unit_iff]
    exact not_not_intro hn
  have hm := multiplicative_of_unit_c4 (LocalRing 2) (K := ℚ) (localModel h)
    (local_c4_unit h) hd
  simpa only [localModel_baseChange] using hm

theorem good_iff (h : Chamber t) :
    HasGoodReduction (LocalRing 2) (changedCurve h) ↔ ¬ 2 ∣ h.n := by
  constructor
  · intro hg hn
    exact hg.not_hasMultiplicativeReduction (multiplicative_at_two h hn)
  · exact good_at_two h

theorem multiplicative_iff (h : Chamber t) :
    HasMultiplicativeReduction (LocalRing 2) (changedCurve h) ↔ 2 ∣ h.n := by
  constructor
  · intro hm
    by_contra hn
    exact hm.not_hasGoodReduction (good_at_two h hn)
  · exact multiplicative_at_two h

/-- A guard in original source coordinates, not a fitted extra prime label. -/
theorem multiplicative_iff_32_dvd (h : Chamber t) :
    HasMultiplicativeReduction (LocalRing 2) (changedCurve h) ↔ 32 ∣ t.c := by
  rw [multiplicative_iff,h.c_eq]
  omega

theorem good_iff_not_32_dvd (h : Chamber t) :
    HasGoodReduction (LocalRing 2) (changedCurve h) ↔ ¬ 32 ∣ t.c := by
  rw [good_iff,h.c_eq]
  omega

theorem not_additive_at_two (h : Chamber t) :
    ¬ HasAdditiveReduction (LocalRing 2) (changedCurve h) := by
  by_cases hn : 2 ∣ h.n
  · exact (multiplicative_at_two h hn).not_hasAdditiveReduction
  · exact (good_at_two h hn).not_hasAdditiveReduction

private theorem depth_two_zero (m : ℕ) (hm : ¬ 2 ∣ m) : m.factorization 2 = 0 := by
  by_cases hz : m = 0
  · subst m; simp
  by_contra hh
  exact hm ((mem_occupied_iff m 2 hz).mp (Finsupp.mem_support_iff.mpr hh)).2

theorem delta_natAbs (h : Chamber t) :
    (integralModel h).Δ.natAbs = (t.a*t.b*h.n)^2 := by
  rw [delta_as_square]
  simp only [Int.natAbs_pow,Int.natAbs_mul,Int.natAbs_natCast]

/-- Exact prime depth of the displayed minimal equation; NOT a conductor exponent. -/
theorem minimal_delta_depth (h : Chamber t) :
    (integralModel h).Δ.natAbs.factorization 2 = 2*h.n.factorization 2 := by
  have ha := Nat.ne_of_gt t.a_pos
  have hb := Nat.ne_of_gt t.b_pos
  have hn := Nat.ne_of_gt h.n_pos
  rw [delta_natAbs,Nat.factorization_pow,
    Nat.factorization_mul (Nat.mul_ne_zero ha hb) hn,Nat.factorization_mul ha hb]
  simp [Finsupp.smul_apply,smul_eq_mul,depth_two_zero _ h.a_odd,depth_two_zero _ h.b_odd]

theorem source_c_depth (h : Chamber t) :
    t.c.factorization 2 = 4+h.n.factorization 2 := by
  have h16 : (16 : ℕ).factorization 2 = 4 := by
    rw [show (16 : ℕ) = 2^4 by norm_num]
    simp [Nat.factorization_pow,Nat.prime_two.factorization,Finsupp.smul_apply,smul_eq_mul]
  rw [h.c_eq,Nat.factorization_mul (by norm_num) (Nat.ne_of_gt h.n_pos)]
  simp only [Finsupp.add_apply,h16]

/-- No truncated subtraction hides the selected domain: v2(Delta_min)+8=2v2(c). -/
theorem minimal_depth_balance (h : Chamber t) :
    (integralModel h).Δ.natAbs.factorization 2 + 8 = 2*t.c.factorization 2 := by
  rw [minimal_delta_depth,source_c_depth]
  omega

/-- Bind the OLD marked chart invariant to j of this explicit changed equation.
This is not integrality of the old ports in the new affine frame. -/
theorem marked_j_agrees (h : Chamber t) :
    GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant.invariant (FreyMarkedBoundaryCycle.sourcePair t) =
      (changedCurve h).j := by
  rw [changedCurve_j]
  exact FreyMarkedJInvariant.source_invariant_eq_j t

/-- An infinite native family, not a finite list of successful changes. -/
def unitChamber (n : ℕ) (hn : 0 < n) :
    Chamber (FreyMarkedObservationHeight.unitSource (16*n) (by omega)) where
  k := 0
  n := n
  a_eq := rfl
  c_eq := rfl

theorem first_family_delta :
    (integralModel (unitChamber 1 (by decide))).Δ = 225 := by
  norm_num [integralModel,unitChamber,model_delta]

theorem second_family_delta :
    (integralModel (unitChamber 2 (by decide))).Δ = 3844 := by
  norm_num [integralModel,unitChamber,model_delta]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoSemistableChamber
