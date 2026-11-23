/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AlpogeTorsionThetaRoot
import Mathlib.RingTheory.Trace.Basic
import Mathlib.Data.Nat.Choose.Lucas
import Mathlib.Tactic

/-! # Torus projection and the first elliptic obstruction on an even orbit

The trace-dual contraction holds in arbitrary characteristic, including when
the relative residue degree is a multiple of the residue characteristic.
The last theorem descends an actual multivariate product of substituted units
through its normalized tame root.
-/
noncomputable section
open scoped BigOperators
open Module Algebra
namespace GRWTSK.NumberTheory.AlpogeOrbitPolarization

/-- Coefficients on both axes vanish for an additive two-site coboundary.
Equality of the mixed splits, with the second rotated, detects symmetry. -/
theorem split_equality_iff_symmetric {K : Type*} [Field K] [CharZero K]
    (b : ℕ → ℕ → K) (haxis : ∀ n, b 0 n = b n 0) :
    (∀ i j k : ℕ, 0 < i → 0 < j →
      b (i+j) k * (Nat.choose (i+j) i : K) =
      b k (i+j) * (Nat.choose (i+j) i : K)) ↔ ∀ a c, b a c = b c a := by
  constructor
  · intro h
    have split (n k : ℕ) : b (n+2) k = b k (n+2) := by
      have e := h 1 (n+1) k (by decide) (by omega)
      rw [show 1+(n+1)=n+2 by omega, Nat.choose_one_right] at e
      exact mul_right_cancel₀ (by exact_mod_cast (show n+2 ≠ 0 by omega)) e
    intro a c
    rcases a with _ | _ | a
    · exact haxis c
    · rcases c with _ | _ | c
      · exact (haxis 1).symm
      · rfl
      · exact (split c 1).symm
    · exact split a c
  · intro h i j k _ _
    rw [h (i+j) k]

/-- The normalized numerator in the symmetric delayed counterexample. -/
theorem delayed_split_residue (p h : ℕ) [Fact p.Prime] :
    (2*p^(h+1)).choose (p^(h+1)) ≡ 2 [MOD p] := by
  simpa [mul_comm] using
    (Choose.choose_pow_mul_pow_mul_modEq_choose_nat (a := 2) (b := 1) (p := p) (k := h+1))

/-- Even the projection of a single one-variable section can first fail at an
arbitrarily high degree: the extra binomial from its cross difference is a unit. -/
theorem section_split_residue (p h : ℕ) [Fact p.Prime] (hp : 2 < p) :
    ((p^h*(2*p+2)).choose (p^h*(2*p))) * (2*p^(h+1)).choose (p^(h+1)) ≡ 2 [MOD p] := by
  have step := Choose.choose_modEq_choose_mod_mul_choose_div_nat
    (p := p) (n := p*2+2) (k := p*2)
  have he : p*2+2 = 2+p*2 := Nat.add_comm _ _
  rw [he] at step
  simp [Nat.add_mul_mod_self_left, Nat.add_mul_div_left,
    Nat.mod_eq_of_lt hp, Nat.div_eq_of_lt hp, (Fact.out : p.Prime).pos] at step
  have hi : (2*p+2).choose (2*p) ≡ 1 [MOD p] := by
    simpa [Nat.mul_comm, Nat.add_comm] using step
  have outer := (Choose.choose_pow_mul_pow_mul_modEq_choose_nat
    (a := 2*p+2) (b := 2*p) (p := p) (k := h)).trans hi
  simpa using outer.mul (delayed_split_residue p h)

/-- The trace-dual contraction of a finite separable field extension.
The proof does not divide by its dimension. -/
theorem trace_dual_contraction {k E ι : Type*} [Field k] [Field E] [Algebra k E]
    [FiniteDimensional k E] [Algebra.IsSeparable k E] [Fintype ι] [DecidableEq ι]
    (b : Basis ι k E) : ∑ j, b j * b.traceDual j = 1 := by
  apply sub_eq_zero.mp
  apply (traceForm_nondegenerate k E).1
  intro x
  change Algebra.trace k E ((_ - 1) * x) = 0
  rw [sub_mul, one_mul, map_sub, sub_eq_zero, Finset.sum_mul, map_sum]
  conv_rhs => rw [Algebra.trace_eq_matrix_trace b x]
  unfold Matrix.trace
  apply Finset.sum_congr rfl
  intro j _
  rw [Algebra.leftMulMatrix_apply, Matrix.diag_apply, LinearMap.toMatrix_apply]
  change Algebra.trace k E (b j * b.traceDual j * x) = b.repr (x * b j) j
  have e := b.traceDual.traceDual_repr_apply (x * b j) j
  rw [b.traceDual_traceDual] at e
  rw [e]
  change Algebra.trace k E _ = Algebra.trace k E _
  congr 1
  change b j * b.traceDual j * x = x * b j * b.traceDual j
  ring

/-- The surviving split has Frobenius weight one after summing a full basis.
Here the higher even factor, transported to the middle site, is `a j`;
the complementary factor has travelled one additional Frobenius step. -/
theorem frobenius_split_contraction {E ι : Type*} [Field E] [Fintype ι]
    (p : ℕ) [Fact p.Prime] [CharP E p] (a v : ι → E)
    (h : ∑ j, a j * v j = 1) :
    ∑ j, a j * a j ^ (p-1) * v j ^ p = 1 := by
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have e : ∀ x : E, x * x^(p-1) = x^p := fun x => by
    rw [← pow_succ', Nat.sub_add_cancel hp]
  simp_rw [e, ← mul_pow]
  simpa only [map_sum, map_one, frobenius_def] using congrArg (frobenius E p) h

/-- Exact leading residue multiplier for each coset of the two-site torus,
with arbitrarily many Frobenius laps and an arbitrary trace-dual basis. -/
theorem elliptic_orbit_multiplier {k E ι : Type*} [Field k] [Field E] [Algebra k E]
    [FiniteDimensional k E] [Algebra.IsSeparable k E] [Fintype ι] [DecidableEq ι]
    (b : Basis ι k E) (p : ℕ) [Fact p.Prime] [CharP E p] (u : Eˣ) (s a : ℕ) :
    ∑ j, (((u : E) * b.traceDual j) ^ (p^s)) ^ (p^(2*a)) *
      (((u : E) * b.traceDual j) ^ (p^(s+2*a))) ^ (p-1) *
      ((↑(u⁻¹) : E) * b j) ^ (p^(s+2*a+1)) = 1 := by
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have step (x : E) : x * x^(p-1) = x^p := by
    rw [← pow_succ', Nat.sub_add_cancel hp]
  have h := congrArg (iterateFrobenius E p (s+2*a+1)) (trace_dual_contraction b)
  simp only [map_sum, map_one, iterateFrobenius_def] at h
  refine Eq.trans (Finset.sum_congr rfl fun j _ => ?_) h
  rw [← pow_mul, ← pow_add, step, ← pow_mul, ← pow_succ, ← mul_pow]
  congr 1
  simp [mul_mul_mul_comm, mul_comm]

/-- Integral finite products of pullbacks persist under normalized tame averaging. -/
theorem tame_norm_of_pullbacks {K ι σ τ : Type*} [Field K] [Fintype ι] (O : Subring K)
    (m : ℕ) (hm : IsUnit (m : O)) (Y : MvPowerSeries τ K) (hY : Y.constantCoeff = 1)
    (F : MvPowerSeries σ O) (a : ι → σ → MvPowerSeries τ O)
    (ha : ∀ i, MvPowerSeries.HasSubst (a i))
    (hpow : Y^m = ∏ i, (F.map O.subtype).subst (fun j => (a i j).map O.subtype)) :
    ∀ n, Y.coeff n ∈ O := by
  apply GRWTSK.NumberTheory.AlpogeTorsionTheta.tame_root_integral_mv O m hm Y hY
  have e : MvPowerSeries.map O.subtype (∏ i, F.subst (a i)) = Y^m := by
    rw [map_prod, hpow]
    exact Finset.prod_congr rfl fun i _ => MvPowerSeries.map_subst (ha i) F
  intro n
  rw [← e, MvPowerSeries.coeff_map]
  exact Subtype.property _

end GRWTSK.NumberTheory.AlpogeOrbitPolarization
