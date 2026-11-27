import GRWTSK.NumberTheory.PrimeFieldAuxiliarySearch
import Mathlib.NumberTheory.NumberField.Basic
import Mathlib.RingTheory.Ideal.Norm.AbsNorm
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.CharZero.Infinite
import Mathlib.Data.Finset.Prod

/-!
# Extracting an auxiliary rational prime from two smoothed prime-ideal sums

Local source attribution: grwtsk contributors. The consumer is Proposition
`analytic:auxiliary` of OpenAI #142 (source pin and status in
`AuxiliaryPrimeIdealDifference.md`). The proof uses the actual ideal norm and
contraction map. The cyclotomic and Kummer splitting laws and the strict
analytic surplus are explicit premises.
-/

noncomputable section

namespace GRWTSK.PrimeFieldFactoring.IdealDifference

open scoped NumberField Classical
open Finset

abbrev Term (F : Type*) [Field F] := Ideal (𝓞 F) × ℕ

/-- The finite portion of the ideal von Mangoldt sum that can meet a weight
supported in (1,2) at the positive integer scale x. -/
def window (F : Type*) [Field F] [NumberField F] (x : ℕ) : Finset (Term F) :=
  (((Ideal.finite_setOfPred_absNorm_le (S := 𝓞 F) (2*x)).toFinset) ×ˢ
    (Finset.Icc 1 (2*x))).filter fun t =>
      t.1.IsPrime ∧ t.1 ≠ ⊥ ∧ 2 ≤ t.1.absNorm ∧
      x < t.1.absNorm ^ t.2 ∧ t.1.absNorm ^ t.2 < 2*x

/-- Neither the norm cutoff nor the finite exponent enumeration discards a
prime power in the open window. -/
theorem mem_window (F : Type*) [Field F] [NumberField F] (x : ℕ) (t : Term F) :
    t ∈ window F x ↔ t.1.IsPrime ∧ t.1 ≠ ⊥ ∧ 2 ≤ t.1.absNorm ∧
      1 ≤ t.2 ∧ x < t.1.absNorm ^ t.2 ∧ t.1.absNorm ^ t.2 < 2*x := by
  simp only [window, Finset.mem_filter, Finset.mem_product, Set.Finite.mem_toFinset,
    Set.mem_ofPred_eq, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨_, hj, _⟩, hpr, hne, hn, hx, hy⟩
    exact ⟨hpr, hne, hn, hj, hx, hy⟩
  · rintro ⟨hpr,hne,hn,hj,hx,hy⟩
    have hb : t.1.absNorm ≤ t.1.absNorm ^ t.2 := le_self_pow₀ (by omega) (by omega)
    have hpow : t.2 < t.1.absNorm ^ t.2 := Nat.lt_pow_self (by omega)
    exact ⟨⟨hb.trans hy.le, hj, hpow.le.trans hy.le⟩, hpr,hne,hn,hx,hy⟩

def weight (F : Type*) [Field F] [NumberField F] (φ : ℝ → ℝ) (x : ℕ) (t : Term F) : ℝ :=
  Real.log t.1.absNorm * φ ((t.1.absNorm ^ t.2 : ℕ) / (x : ℝ))

private theorem weight_nonneg (F : Type*) [Field F] [NumberField F] (φ : ℝ → ℝ) (x : ℕ)
    (hφ : ∀ y, 0 ≤ φ y) (t : Term F) (ht : t ∈ window F x) : 0 ≤ weight F φ x t := by
  have hn := ((mem_window F x t).mp ht).2.2.1
  exact mul_nonneg (Real.log_nonneg (by exact_mod_cast (show 1 ≤ t.1.absNorm by omega))) (hφ _)

def psi (F : Type*) [Field F] [NumberField F] (φ : ℝ → ℝ) (x : ℕ) : ℝ :=
  ∑ t ∈ window F x, weight F φ x t

/-- First powers at prime absolute norm away from the four exceptional
rational primes. A prime norm is the degree-one condition in this window. -/
def ordinary (F : Type*) [Field F] [NumberField F] (p q : ℕ) (t : Term F) : Prop :=
  t.2 = 1 ∧ t.1.absNorm.Prime ∧ t.1.absNorm ≠ 2 ∧ t.1.absNorm ≠ 3 ∧
    t.1.absNorm ≠ p ∧ t.1.absNorm ≠ q

def nuisance (F : Type*) [Field F] [NumberField F] (φ : ℝ → ℝ) (p q x : ℕ) : ℝ :=
  ∑ t ∈ (window F x).filter (fun t => ¬ ordinary F p q t), weight F φ x t

/-- First powers in the extension that lie over P and have unchanged
absolute norm. These terms have exactly P's first-power weight. -/
def fiber (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
    [Algebra K M] (x : ℕ) (P : Ideal (𝓞 K)) : Finset (Term M) :=
  (window M x).filter fun u => u.2 = 1 ∧ u.1.under (𝓞 K) = P ∧ u.1.absNorm = P.absNorm

private theorem mem_fiber (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
    [Algebra K M] {x : ℕ} {P : Ideal (𝓞 K)} {u : Term M} :
    u ∈ fiber K M x P ↔ u ∈ window M x ∧ u.2 = 1 ∧
      u.1.under (𝓞 K) = P ∧ u.1.absNorm = P.absNorm := Finset.mem_filter

/-- The analytic excess over exceptional terms forces a rational prime of
the source's precise table with x < l < 2x. -/
theorem auxiliary_of_prime_ideal_difference
    (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M] [Algebra K M]
    (p q x : ℕ) (hq : q.Prime) (φ : ℝ → ℝ) (hφ : ∀ y, 0 ≤ φ y)
    (hcyclo : ∀ t ∈ window K x, ordinary K p q t → t.1.absNorm % (12*q) = 1)
    (hsplit : ∀ t ∈ window K x, ordinary K p q t →
      (p : ZMod t.1.absNorm) ^ ((t.1.absNorm - 1) / q) = 1 →
      q ≤ (fiber K M x t.1).card)
    (hsurplus : nuisance K φ p q x < psi K φ x - psi M φ x / (q : ℝ)) :
    ∃ l, x < l ∧ l < 2*x ∧ AuxiliaryPrime p q l := by
  classical
  let good := (window K x).filter (ordinary K p q)
  by_contra hnone
  have local_bound (t : Term K) (ht : t ∈ good) :
      (q : ℝ) * weight K φ x t ≤ ∑ u ∈ fiber K M x t.1, weight M φ x u := by
    obtain ⟨hw, ho⟩ := Finset.mem_filter.mp ht
    have ho' := ho
    obtain ⟨h1,hprime,h2,h3,hp,hd⟩ := ho'
    have powTest : (p : ZMod t.1.absNorm) ^ ((t.1.absNorm - 1)/q) = 1 := by
      by_contra hpow
      have hw' := (mem_window K x t).mp hw
      have bounds : x < t.1.absNorm ∧ t.1.absNorm < 2*x := by
        simpa [h1] using hw'.2.2.2.2
      exact hnone ⟨_, bounds.1, bounds.2, hprime,h2,h3,hp,hd,hcyclo t hw ho,hpow⟩
    have hcard := hsplit t hw ho powTest
    calc
      _ ≤ ((fiber K M x t.1).card : ℝ) * weight K φ x t :=
        mul_le_mul_of_nonneg_right (by exact_mod_cast hcard) (weight_nonneg K φ x hφ t hw)
      _ = ∑ u ∈ fiber K M x t.1, weight K φ x t := by simp
      _ = _ := by
        apply Finset.sum_congr rfl
        intro u hu
        obtain ⟨_, hu1, _, heq⟩ := (mem_fiber K M).mp hu
        simp [weight, hu1, heq, h1]
  have hdj : (good : Set (Term K)).PairwiseDisjoint (fun t => fiber K M x t.1) := by
    intro a ha b hb hne
    apply Finset.disjoint_left.mpr
    intro u hu hv
    have hpa := ((mem_fiber K M).mp hu).2.2.1
    have hpb := ((mem_fiber K M).mp hv).2.2.1
    have hja := (Finset.mem_filter.mp (show a ∈ good from ha)).2.1
    have hjb := (Finset.mem_filter.mp (show b ∈ good from hb)).2.1
    exact hne (Prod.ext (hpa.symm.trans hpb) (hja.trans hjb.symm))
  have hsub : good.biUnion (fun t => fiber K M x t.1) ⊆ window M x := by
    intro u hu
    obtain ⟨_, _, hv⟩ := Finset.mem_biUnion.mp hu
    exact ((mem_fiber K M).mp hv).1
  have hmass : (q : ℝ) * (∑ t ∈ good, weight K φ x t) ≤ psi M φ x := calc
    _ = ∑ t ∈ good, (q : ℝ) * weight K φ x t := Finset.mul_sum _ _ _
    _ ≤ _ := Finset.sum_le_sum local_bound
    _ = ∑ u ∈ good.biUnion (fun t => fiber K M x t.1), weight M φ x u :=
      (Finset.sum_biUnion hdj).symm
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg hsub fun u hu _ => weight_nonneg M φ x hφ u hu
  have hsum : (∑ t ∈ good, weight K φ x t) + nuisance K φ p q x = psi K φ x :=
    Finset.sum_filter_add_sum_filter_not (window K x) _ _
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hq.pos
  have hle : (∑ t ∈ good, weight K φ x t) ≤ psi M φ x / (q : ℝ) :=
    (le_div_iff₀ hq0).mpr (by simpa only [mul_comm] using hmass)
  linarith

end GRWTSK.PrimeFieldFactoring.IdealDifference
