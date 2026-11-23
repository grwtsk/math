/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Factorial jets under polynomial substitution

Membership of every iterated coordinate derivative at the origin in a
subring is stable under substitution by zero-constant polynomials having
the same property. The result holds through each finite order. It models
factorial-normalized jets without dividing by factorials in the proof.
-/

noncomputable section

namespace GRWTSK.NumberTheory.AlpogeNonlinearFactorialJets

open MvPolynomial Finset

variable {K σ τ : Type*} [CommRing K]

/-- The coordinate chain rule for actual formal polynomials. -/
theorem pderiv_substitute [Fintype σ] (g : σ → MvPolynomial τ K)
    (f : MvPolynomial σ K) (j : τ) :
    pderiv j (aeval g f) = ∑ i, aeval g (pderiv i f) * pderiv j (g i) := by
  classical
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add f h hf hh => simp [map_add, hf, hh, add_mul, sum_add_distrib]
  | mul_X f k ih =>
    have select : (∑ i, (aeval g f * aeval g (pderiv i (X k : MvPolynomial σ K))) * pderiv j (g i)) =
        aeval g f * pderiv j (g k) := by
      rw [Finset.sum_eq_single k]
      · simp
      · intro i hi hik
        simp [pderiv_X_of_ne (Ne.symm hik)]
      · simp
    simp only [map_mul, aeval_X, pderiv_mul, ih, map_add, add_mul, sum_add_distrib]
    rw [select, Finset.sum_mul]
    apply congrArg (fun t => t + aeval g f * pderiv j (g k))
    apply Finset.sum_congr rfl
    intro i hi
    ring

/-- Derivatives of total order up to the given depth, including the value at zero. -/
def IntegralJets (O : Subring K) {κ : Type*} :
    ℕ → MvPolynomial κ K → Prop
  | 0, f => eval (0 : κ → K) f ∈ O
  | n + 1, f => eval (0 : κ → K) f ∈ O ∧ ∀ i, IntegralJets O n (pderiv i f)

variable {O : Subring K}

private theorem jets_drop {κ : Type*} {n : ℕ} {f : MvPolynomial κ K}
    (h : IntegralJets O (n + 1) f) : IntegralJets O n f := by
  induction n generalizing f with
  | zero => exact h.1
  | succ n ih => exact ⟨h.1, fun i => ih (h.2 i)⟩

private theorem jets_add {κ : Type*} (n : ℕ) {f g : MvPolynomial κ K}
    (hf : IntegralJets O n f) (hg : IntegralJets O n g) : IntegralJets O n (f + g) := by
  induction n generalizing f g with
  | zero => simpa [IntegralJets] using O.add_mem hf hg
  | succ n ih =>
    refine ⟨by simpa using O.add_mem hf.1 hg.1, fun i => ?_⟩
    rw [map_add]
    exact ih (hf.2 i) (hg.2 i)

private theorem jets_zero {κ : Type*} (n : ℕ) : IntegralJets O n (0 : MvPolynomial κ K) := by
  induction n with
  | zero => simp [IntegralJets]
  | succ n ih => exact ⟨by simp, fun i => by simpa using ih⟩

private theorem jets_mul {κ : Type*} (n : ℕ) {f g : MvPolynomial κ K}
    (hf : IntegralJets O n f) (hg : IntegralJets O n g) : IntegralJets O n (f * g) := by
  induction n generalizing f g with
  | zero => simpa [IntegralJets] using O.mul_mem hf hg
  | succ n ih =>
    refine ⟨by simpa using O.mul_mem hf.1 hg.1, fun i => ?_⟩
    rw [pderiv_mul]
    exact jets_add n (ih (hf.2 i) (jets_drop hg)) (ih (jets_drop hf) (hg.2 i))

private theorem jets_sum {κ ι : Type*} (n : ℕ) (s : Finset ι) (f : ι → MvPolynomial κ K)
    (h : ∀ i ∈ s, IntegralJets O n (f i)) : IntegralJets O n (∑ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using jets_zero (O := O) (κ := κ) n
  | @insert i s hi ih =>
    rw [Finset.sum_insert hi]
    exact jets_add n (h i (by simp)) (ih (fun j hj => h j (by simp [hj])))

private theorem eval_zero_substitute (g : σ → MvPolynomial τ K)
    (hg : ∀ i, eval (0 : τ → K) (g i) = 0) (f : MvPolynomial σ K) :
    eval (0 : τ → K) (aeval g f) = eval (0 : σ → K) f := by
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add f h hf hh => simp only [map_add, hf, hh]
  | mul_X f i ih => simp only [map_mul, aeval_X, eval_X, Pi.zero_apply, hg, mul_zero]

/-- Through every finite order, nonlinear zero-constant substitutions with
integral factorial jets preserve integral factorial jets. -/
theorem integralJets_substitute [Fintype σ] (n : ℕ) (g : σ → MvPolynomial τ K)
    (hg0 : ∀ i, eval (0 : τ → K) (g i) = 0) (f : MvPolynomial σ K)
    (hf : IntegralJets O n f) (hg : ∀ i, IntegralJets O n (g i)) :
    IntegralJets O n (aeval g f) := by
  induction n generalizing f with
  | zero => simpa only [IntegralJets, eval_zero_substitute g hg0] using hf
  | succ n ih =>
    refine ⟨by rw [eval_zero_substitute g hg0]; exact hf.1, fun j => ?_⟩
    rw [pderiv_substitute]
    apply jets_sum
    intro i hi
    exact jets_mul n (ih _ (hf.2 i) (fun k => jets_drop (hg k))) ((hg i).2 j)

/-- Independent rescaling of the formal coordinates. -/
def rescale {κ : Type*} (a : κ → K) (f : MvPolynomial κ K) : MvPolynomial κ K :=
  aeval (fun i => C (a i) * X i) f

/-- Conjugate a nonlinear substitution by diagonal coordinate scalings. -/
theorem rescale_substitute (a : σ → Kˣ) (b : τ → K)
    (g : σ → MvPolynomial τ K) (f : MvPolynomial σ K) :
    rescale b (aeval g f) =
      aeval (fun i => C (↑((a i)⁻¹) : K) * rescale b (g i))
        (rescale (fun i => (a i : K)) f) := by
  change aeval _ (aeval g f) = aeval _ (aeval _ f)
  rw [comp_aeval_apply, comp_aeval_apply]
  apply congrArg (fun b : σ → MvPolynomial τ K => aeval b f)
  funext i
  simp only [map_mul, aeval_C, aeval_X, algebraMap_eq]
  rw [← mul_assoc, ← map_mul, Units.mul_inv, map_one, one_mul]
  rfl

/-- Weighted jet integrality follows from integrality in the scaled variables.
Taking units of valuations minus the desired source and target weights yields
the anisotropic valuation bound in the adjacent note. -/
theorem integralJets_rescale_substitute [Fintype σ] (n : ℕ) (a : σ → Kˣ) (b : τ → K)
    (g : σ → MvPolynomial τ K) (hg0 : ∀ i, eval (0 : τ → K) (g i) = 0)
    (f : MvPolynomial σ K) (hf : IntegralJets O n (rescale (fun i => (a i : K)) f))
    (hg : ∀ i, IntegralJets O n (C (↑((a i)⁻¹) : K) * rescale b (g i))) :
    IntegralJets O n (rescale b (aeval g f)) := by
  rw [rescale_substitute a b g f]
  apply integralJets_substitute n _ _ _ hf hg
  intro i
  rw [map_mul, rescale, eval_zero_substitute _ (fun j => by simp) (g i), hg0, mul_zero]

/-- The coefficient convention for the fixture is the genuine iterated
polynomial derivative evaluated at the origin. -/
theorem factorial_coeff_eq_derivative_at_zero (n : ℕ) (P : Polynomial K) :
    (n.factorial : K) * P.coeff n = (Polynomial.derivative^[n] P).eval 0 := by
  rw [← Polynomial.coeff_zero_eq_eval_zero, Polynomial.coeff_iterate_derivative]
  simp [nsmul_eq_mul, Nat.descFactorial_self]

/-- The first nonintegral 3-adic factorial jet of this nonlinear cubic
composition is at order five. The order-four coefficient is rescued by
the integer Faà di Bruno multiplicity. -/
theorem cubic_fixture_jets :
    let C := Polynomial.C (R := ℚ)
    let X := Polynomial.X (R := ℚ)
    let F := C (1 / 6) * X ^ 3
    let G := X + C (1 / 6) * X ^ 2
    ([0, 1, 2, 3, 4, 5, 6] : List ℕ).map (fun n =>
      (n.factorial : ℚ) * (F.comp G).coeff n) = [0, 0, 0, 1, 2, 5 / 3, 5 / 9] := by
  let c : ℚ := 1 / 6
  let X := Polynomial.X (R := ℚ)
  have hexpand : (Polynomial.C c * X ^ 3).comp (X + Polynomial.C c * X ^ 2) =
      Polynomial.C c * X ^ 3 + Polynomial.C (3 * c ^ 2) * X ^ 4 +
      Polynomial.C (3 * c ^ 3) * X ^ 5 + Polynomial.C (c ^ 4) * X ^ 6 := by
    simp only [Polynomial.mul_comp, Polynomial.C_comp, Polynomial.pow_comp,
      X, Polynomial.X_comp, map_mul, map_pow, map_ofNat]
    ring
  change ([0, 1, 2, 3, 4, 5, 6] : List ℕ).map (fun n => (n.factorial : ℚ) *
    ((Polynomial.C c * X ^ 3).comp (X + Polynomial.C c * X ^ 2)).coeff n) = _
  rw [hexpand]
  norm_num [X, c, Polynomial.coeff_C_mul_X_pow, Nat.factorial]

end GRWTSK.NumberTheory.AlpogeNonlinearFactorialJets
