/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Extend the prime-two construction to a complementary, explicitly guarded
family: B-A=4k+1 and AB=16m. Keep the OLD primitive source and fixed labels.
Use the ACTUAL change (2,0,1,0), OLD Z_(2), and OLD unit-c4 minimality.
No complementary additive classification, conductor, completed local field,
integral marked-jet transport, or radical-height upper bound is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoSemistableChamber

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoEvenSummandChamber

open WeierstrassCurve
open GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open FreyOddReduction
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Exact original-source identities. k must be allowed to be negative. -/
structure Chamber (t : PrimitiveAdditiveTriple) where
  k : ℤ
  m : ℕ
  difference_eq : (t.b : ℤ)-(t.a : ℤ)=4*k+1
  product_eq : t.a*t.b=16*m

theorem chamber_iff (t : PrimitiveAdditiveTriple) :
    Nonempty (Chamber t) ↔ ((t.b : ℤ)-(t.a : ℤ)) % 4=1 ∧ 16 ∣ t.a*t.b := by
  constructor
  · rintro ⟨h⟩
    exact ⟨by rw [h.difference_eq]; omega, ⟨h.m,h.product_eq⟩⟩
  · rintro ⟨hd,⟨m,hm⟩⟩
    exact ⟨⟨((t.b : ℤ)-(t.a : ℤ))/4,m,by omega,hm⟩⟩

variable {t : PrimitiveAdditiveTriple}

theorem Chamber.m_pos (h : Chamber t) : 0 < h.m := by
  have hp : 0 < t.a*t.b := Nat.mul_pos t.a_pos t.b_pos
  rw [h.product_eq] at hp
  omega

theorem Chamber.product_cast (h : Chamber t) :
    (t.a : ℤ)*(t.b : ℤ)=16*(h.m : ℤ) := by exact_mod_cast h.product_eq

/-- Opposite summand parity follows from the difference, without relabelling. -/
theorem Chamber.c_odd (h : Chamber t) : ¬ 2 ∣ t.c := by
  have hd := h.difference_eq
  have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
  omega

/-- This family is disjoint from the old 16|c chamber. -/
theorem disjoint_previous (h : Chamber t) :
    ¬ Nonempty (FreyTwoSemistableChamber.Chamber t) := by
  rintro ⟨hprev⟩
  have hc := h.c_odd
  rw [hprev.c_eq] at hc
  omega

/-- Explicit even-a inclusion; the remaining odd label is not swapped. -/
def of_even_a (t : PrimitiveAdditiveTriple) (n : ℕ)
    (ha : t.a=16*n) (hb : t.b % 4=1) : Chamber t where
  k := ((t.b : ℤ)-(t.a : ℤ))/4
  m := n*t.b
  difference_eq := by omega
  product_eq := by rw [ha]; ring

/-- Explicit even-b inclusion; the sign in b-a requires a=3 mod4. -/
def of_even_b (t : PrimitiveAdditiveTriple) (n : ℕ)
    (hb : t.b=16*n) (ha : t.a % 4=3) : Chamber t where
  k := ((t.b : ℤ)-(t.a : ℤ))/4
  m := t.a*n
  difference_eq := by omega
  product_eq := by rw [hb]; ring

def integralModel (h : Chamber t) : WeierstrassCurve ℤ := model h.k h.m

def changedCurve (h : Chamber t) : WeierstrassCurve ℚ := zeroChange • t.freyCurve

instance (h : Chamber t) : (changedCurve h).IsElliptic := by
  unfold changedCurve
  infer_instance

theorem integralModel_baseChange (h : Chamber t) :
    (integralModel h).baseChange ℚ=changedCurve h := by
  change (model h.k h.m).baseChange ℚ =
    zeroChange • freyWeierstrass (t.a : ℚ) (t.b : ℚ)
  exact (variableChange_model (t.a : ℤ) (t.b : ℤ) h.k (h.m : ℤ)
    h.difference_eq h.product_cast).symm

theorem changedCurve_j (h : Chamber t) : (changedCurve h).j=t.freyCurve.j := by
  exact WeierstrassCurve.variableChange_j _ _

theorem c4_scaling (h : Chamber t) :
    16*(integralModel h).c₄=t.freyIntegralModel.c₄ := by
  rw [integralModel, parameter_c4 _ _ _ _ h.difference_eq h.product_cast,
    t.freyIntegralModel_c4]

theorem delta_as_square (h : Chamber t) :
    (integralModel h).Δ=((h.m : ℤ)*(t.c : ℤ))^2 := by
  have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
  rw [integralModel, parameter_delta _ _ _ _ h.difference_eq h.product_cast, hs]

theorem delta_scaling (h : Chamber t) :
    4096*(integralModel h).Δ=t.freyIntegralModel.Δ := by
  rw [delta_as_square,t.freyIntegralModel_delta_as_square,h.product_eq]
  push_cast
  ring

def localModel (h : Chamber t) : WeierstrassCurve (LocalRing 2) :=
  (integralModel h).map (algebraMap ℤ (LocalRing 2))

theorem localModel_baseChange (h : Chamber t) :
    (localModel h).baseChange ℚ=changedCurve h := by
  calc
    _ = (integralModel h).baseChange ℚ := by
      ext <;> simp [localModel,WeierstrassCurve.baseChange,
        ← IsScalarTower.algebraMap_apply ℤ (LocalRing 2) ℚ]
    _ = changedCurve h := integralModel_baseChange h

theorem local_c4_unit (h : Chamber t) : IsUnit (localModel h).c₄ := by
  rw [localModel,WeierstrassCurve.map_c₄,int_unit_iff]
  exact c4_not_dvd_two h.k h.m

theorem local_delta_unit_iff (h : Chamber t) :
    IsUnit (localModel h).Δ ↔ ¬ 2 ∣ h.m := by
  rw [localModel,WeierstrassCurve.map_Δ,int_unit_iff,integralModel,delta_even_iff]
  norm_cast

/-- This is minimality of the actual changed equation, not the raw model. -/
theorem minimal_at_two (h : Chamber t) : IsMinimal (LocalRing 2) (changedCurve h) := by
  have hm := minimal_of_unit_c4 (LocalRing 2) (K := ℚ) (localModel h) (local_c4_unit h)
  simpa only [localModel_baseChange] using hm

theorem good_at_two (h : Chamber t) (hm : ¬ 2 ∣ h.m) :
    HasGoodReduction (LocalRing 2) (changedCurve h) := by
  have hg := good_of_unit_delta (LocalRing 2) (K := ℚ) (localModel h)
    ((local_delta_unit_iff h).mpr hm)
  simpa only [localModel_baseChange] using hg

theorem multiplicative_at_two (h : Chamber t) (hm : 2 ∣ h.m) :
    HasMultiplicativeReduction (LocalRing 2) (changedCurve h) := by
  have hd : ¬ IsUnit (localModel h).Δ := by
    rw [local_delta_unit_iff]
    exact not_not_intro hm
  have hr := multiplicative_of_unit_c4 (LocalRing 2) (K := ℚ) (localModel h)
    (local_c4_unit h) hd
  simpa only [localModel_baseChange] using hr

theorem good_iff (h : Chamber t) :
    HasGoodReduction (LocalRing 2) (changedCurve h) ↔ ¬ 2 ∣ h.m := by
  constructor
  · intro hg hm
    exact hg.not_hasMultiplicativeReduction (multiplicative_at_two h hm)
  · exact good_at_two h

theorem multiplicative_iff (h : Chamber t) :
    HasMultiplicativeReduction (LocalRing 2) (changedCurve h) ↔ 2 ∣ h.m := by
  constructor
  · intro hr
    by_contra hm
    exact hr.not_hasGoodReduction (good_at_two h hm)
  · exact multiplicative_at_two h

theorem multiplicative_iff_32_dvd (h : Chamber t) :
    HasMultiplicativeReduction (LocalRing 2) (changedCurve h) ↔ 32 ∣ t.a*t.b := by
  rw [multiplicative_iff,h.product_eq]
  omega

theorem good_iff_not_32_dvd (h : Chamber t) :
    HasGoodReduction (LocalRing 2) (changedCurve h) ↔ ¬ 32 ∣ t.a*t.b := by
  rw [good_iff,h.product_eq]
  omega

theorem not_additive_at_two (h : Chamber t) :
    ¬ HasAdditiveReduction (LocalRing 2) (changedCurve h) := by
  by_cases hm : 2 ∣ h.m
  · exact (multiplicative_at_two h hm).not_hasAdditiveReduction
  · exact (good_at_two h hm).not_hasAdditiveReduction

private theorem depth_two_zero (n : ℕ) (hn : ¬ 2 ∣ n) : n.factorization 2=0 := by
  by_cases hz : n=0
  · subst n; simp
  by_contra hh
  exact hn ((mem_occupied_iff n 2 hz).mp (Finsupp.mem_support_iff.mpr hh)).2

theorem delta_natAbs (h : Chamber t) :
    (integralModel h).Δ.natAbs=(h.m*t.c)^2 := by
  rw [delta_as_square]
  simp only [Int.natAbs_pow,Int.natAbs_mul,Int.natAbs_natCast]

theorem minimal_delta_depth (h : Chamber t) :
    (integralModel h).Δ.natAbs.factorization 2=2*h.m.factorization 2 := by
  rw [delta_natAbs,Nat.factorization_pow,
    Nat.factorization_mul (Nat.ne_of_gt h.m_pos) (Nat.ne_of_gt t.c_pos)]
  simp [Finsupp.smul_apply,smul_eq_mul,depth_two_zero _ h.c_odd]

theorem source_product_depth (h : Chamber t) :
    (t.a*t.b*t.c).factorization 2=4+h.m.factorization 2 := by
  have h16 : (16 : ℕ).factorization 2=4 := by
    rw [show (16 : ℕ)=2^4 by norm_num]
    simp [Nat.factorization_pow,Nat.prime_two.factorization,Finsupp.smul_apply,smul_eq_mul]
  rw [h.product_eq,Nat.factorization_mul
      (Nat.mul_ne_zero (by norm_num) (Nat.ne_of_gt h.m_pos)) (Nat.ne_of_gt t.c_pos),
    Nat.factorization_mul (by norm_num) (Nat.ne_of_gt h.m_pos)]
  simp [h16,depth_two_zero _ h.c_odd]

/-- Full source-product depth, not denominator-c depth: c is odd in this family. -/
theorem minimal_depth_balance (h : Chamber t) :
    (integralModel h).Δ.natAbs.factorization 2+8=2*(t.a*t.b*t.c).factorization 2 := by
  rw [minimal_delta_depth,source_product_depth]
  omega

theorem marked_j_agrees (h : Chamber t) :
    GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryJInvariant.invariant
      (FreyMarkedBoundaryCycle.sourcePair t)=(changedCurve h).j := by
  rw [changedCurve_j]
  exact FreyMarkedJInvariant.source_invariant_eq_j t

/-- An explicit infinite native family with even a and signed k=-4n. -/
def evenASource (n : ℕ) (hn : 0<n) : PrimitiveAdditiveTriple where
  a := 16*n
  b := 1
  c := 16*n+1
  a_pos := by omega
  b_pos := by decide
  sum_eq := rfl
  coprime_ab := Nat.coprime_one_right _

def evenAChamber (n : ℕ) (hn : 0<n) : Chamber (evenASource n hn) where
  k := -4*(n : ℤ)
  m := n
  difference_eq := by simp [evenASource]; ring
  product_eq := by simp [evenASource]

theorem first_family_delta :
    (integralModel (evenAChamber 1 (by decide))).Δ=289 := by
  norm_num [integralModel,evenAChamber,model_delta]

theorem second_family_delta :
    (integralModel (evenAChamber 2 (by decide))).Δ=4356 := by
  norm_num [integralModel,evenAChamber,model_delta]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoEvenSummandChamber
