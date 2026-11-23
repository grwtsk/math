import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Fintype.Card
import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.RingTheory.Valuation.Basic
import Mathlib.Tactic.Linarith

/-!
# Exceptional cyclotomic slopes for integral theta polynomials

A point records the degree and the integral order of a nonzero coefficient.
A positive slope is exceptional when two different degrees simultaneously
give the least weighted order of a term.
-/

namespace GRWTSK.NumberTheory.AlpogeRayThetaSpecialization

/-- A finite ray coefficient array projected to a cyclic coordinate, with the
variable centered at the trivial character. -/
noncomputable def rayPolynomial {G R : Type*} [Fintype G] [CommRing R]
    (a : G → R) (d : G → ℕ) : Polynomial R :=
  ∑ g, Polynomial.C (a g) * (1 + Polynomial.X) ^ d g

/-- Specializing the centered polynomial recovers the original Fourier sum,
including coefficient transport. -/
theorem eval_rayPolynomial {G R K : Type*} [Fintype G] [CommRing R] [CommRing K]
    (a : G → R) (d : G → ℕ) (ι : R →+* K) (ζ : K) :
    (rayPolynomial a d).eval₂ ι (ζ - 1) = ∑ g, ι (a g) * ζ ^ d g := by
  classical
  change (Polynomial.eval₂RingHom ι (ζ - 1)) (rayPolynomial a d) = _
  simp [rayPolynomial, map_sum, map_mul, map_add, map_pow, add_sub_cancel]

/-- Weighted order of a coefficient term at an argument of given order. -/
def weight (s : ℝ) (p : ℕ × ℕ) : ℝ := p.2 + p.1 * s

/-- Two distinct degrees attain the lower envelope. -/
def IsBreak (S : Finset (ℕ × ℕ)) (s : ℝ) : Prop :=
  ∃ u ∈ S, ∃ v ∈ S, u.1 < v.1 ∧ weight s u = weight s v ∧
    ∀ w ∈ S, weight s v ≤ weight s w

private theorem intercept_lt {s t : ℝ} (hs : 0 < s) (hst : s < t)
    {u v w : ℕ × ℕ} (huv : u.1 < v.1) (he : weight s u = weight s v)
    (hsw : weight s v ≤ weight s w) (htu : weight t w ≤ weight t u) : v.2 < w.2 := by
  have hwu : (w.1 : ℝ) ≤ u.1 := by
    by_contra! h
    have hp := mul_pos (sub_pos.mpr h) (sub_pos.mpr hst)
    unfold weight at he hsw htu
    nlinarith
  have huv' : (u.1 : ℝ) < v.1 := by exact_mod_cast huv
  have hp := mul_pos (sub_pos.mpr (hwu.trans_lt huv')) hs
  unfold weight at hsw
  exact_mod_cast (show (v.2 : ℝ) < w.2 by nlinarith)

/-- Among any prescribed positive arguments, the number of distinct slopes at
which cancellation can occur is bounded by the order of the constant term. -/
theorem card_breaks_le_constant {S : Finset (ℕ × ℕ)} {C : ℕ} (hC : (0, C) ∈ S)
    (B : Finset ℝ) (hB : ∀ s ∈ B, 0 < s ∧ IsBreak S s) : B.card ≤ C := by
  classical
  have hb (s : B) : IsBreak S (s : ℝ) := (hB s s.2).2
  choose u hu v hv huv he hmin using hb
  have bound (s : B) : (v s).2 < C := by
    have h0 : 0 < (v s).1 := (Nat.zero_le _).trans_lt (huv s)
    have ha : (0 : ℝ) < (v s).1 := by exact_mod_cast h0
    have hpos := mul_pos ha (hB s s.2).1
    have hc := hmin s _ hC
    simp only [weight, Nat.cast_zero, zero_mul, add_zero] at hc
    exact_mod_cast (show ((v s).2 : ℝ) < C by linarith)
  let f (s : B) : Fin C := ⟨(v s).2, bound s⟩
  have mono (s t : B) (hst : (s : ℝ) < t) : (v s).2 < (v t).2 :=
    intercept_lt (hB s s.2).1 hst (huv s) (he s) (hmin s _ (hv t)) (hmin t _ (hu s))
  have inj : Function.Injective f := by
    intro s t h
    have eqv : (v s).2 = (v t).2 := congrArg Fin.val h
    apply Subtype.ext
    rcases lt_trichotomy (s : ℝ) (t : ℝ) with hlt | hst | hgt
    · exact False.elim ((mono s t hlt).ne eqv)
    · exact hst
    · exact False.elim ((mono t s hgt).ne eqv.symm)
  simpa using Fintype.card_le_of_injective f inj

/-- A single conductor works simultaneously for a finite family if the number
of candidate slopes exceeds the sum of the constant-term orders. -/
theorem exists_common_regular_slope {ι : Type*} [Fintype ι]
    (S : ι → Finset (ℕ × ℕ)) (C : ι → ℕ) (hc : ∀ i, (0, C i) ∈ S i)
    (levels : Finset ℝ) (hpos : ∀ s ∈ levels, 0 < s)
    (hsize : ∑ i, C i < levels.card) :
    ∃ s ∈ levels, ∀ i, ¬ IsBreak (S i) s := by
  classical
  let bad (i : ι) := levels.filter (IsBreak (S i))
  have bound (i : ι) : (bad i).card ≤ C i :=
    card_breaks_le_constant (hc i) _ fun s hs =>
      ⟨hpos _ (Finset.mem_filter.mp hs).1, (Finset.mem_filter.mp hs).2⟩
  have hsmall : (Finset.univ.biUnion bad).card < levels.card :=
    Finset.card_biUnion_le.trans_lt ((Finset.sum_le_sum fun i _ => bound i).trans_lt hsize)
  obtain ⟨s, hs, good⟩ := Finset.exists_mem_notMem_of_card_lt_card hsmall
  exact ⟨s, hs, fun i hi => good (Finset.mem_biUnion.mpr
    ⟨i, Finset.mem_univ _, Finset.mem_filter.mpr ⟨hs, hi⟩⟩)⟩

/-- A strict largest term in multiplicative valuation gives the exact
valuation of the evaluation of the polynomial over the extension field. -/
theorem eval_at_unique_term {K Γ : Type*} [Field K] [LinearOrderedCommGroupWithZero Γ]
    (v : Valuation K Γ) (F : Polynomial K) (x : K) (j : ℕ) (hj : j ∈ F.support)
    (h : ∀ i ∈ F.support, i ≠ j →
      v (F.coeff i) * v x ^ i < v (F.coeff j) * v x ^ j) :
    v (F.eval x) = v (F.coeff j) * v x ^ j := by
  classical
  rw [Polynomial.eval_eq_sum]
  change v (∑ i ∈ F.support, F.coeff i * x ^ i) = _
  rw [v.map_sum_eq_of_lt hj, map_mul, map_pow]
  intro i hi
  obtain ⟨hm, hn⟩ := Finset.mem_sdiff.mp hi
  simpa only [map_mul, map_pow] using h i hm (by simpa using hn)

end GRWTSK.NumberTheory.AlpogeRayThetaSpecialization
