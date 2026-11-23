/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.Basic
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Algebra.CharP.Frobenius
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-!
# Pivot determinants and endpoint bounds for the marked theta minors

An independent variable is used for every pair of a source site and a tangent
coordinate. Distinct source/positive-exponent labels separate the permutations
in the pivot determinant, even when the residue characteristic is small.
The endpoint estimates keep the total marked top degree across all large lags.
See `AlpogeMarkedMinorFlow.md` for the selected-series application.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.AlpogeMarkedMinorFlow
open scoped BigOperators
open MvPolynomial

private noncomputable def pivotDegree {J S : Type*} [Fintype J] (site : J → S) (q : J → ℕ)
    (σ : Equiv.Perm J) : S × J →₀ ℕ := ∑ j, Finsupp.single (site (σ j), j) (q (σ j))

private theorem pivotDegree_apply {J S : Type*} [Fintype J] [DecidableEq S]
    (site : J → S) (q : J → ℕ) (σ : Equiv.Perm J) (s : S) (i : J) :
    pivotDegree site q σ (s,i) = if site (σ i) = s then q (σ i) else 0 := by
  classical
  rw [pivotDegree, Finsupp.finsetSum_apply, Finset.sum_eq_single_of_mem i (Finset.mem_univ i)]
  · simp [Finsupp.single_apply]
  · intro j _ hji
    simp [hji]

/-- The diagonal coefficient of the pivot determinant is one over every commutative
ring. Rows with the same source are separated by their distinct positive exponents. -/
theorem pivot_det_coeff_one {J S R : Type*} [Fintype J] [DecidableEq J] [CommRing R]
    (site : J → S) (q : J → ℕ) (hq : ∀ i, 0 < q i)
    (labels : Function.Injective (fun i => (site i, q i))) :
    (Matrix.of (fun i j : J => (X (site i, j) : MvPolynomial (S × J) R) ^ q i)).det.coeff
      (∑ j, Finsupp.single (site j, j) (q j)) = 1 := by
  classical
  let diag := pivotDegree site q (1 : Equiv.Perm J)
  change AddMonoidAlgebra.coeff _ diag = 1
  have hinj {σ : Equiv.Perm J} (h : pivotDegree site q σ = diag) : σ = 1 := by
    ext i
    have hi := congrArg (fun n : S × J →₀ ℕ => n (site i,i)) h
    simp only [diag, pivotDegree_apply, Equiv.Perm.one_apply, ite_true] at hi
    split at hi
    · rename_i hsite
      exact labels (Prod.ext hsite hi)
    · exact False.elim ((Nat.ne_of_gt (hq i)) hi.symm)
  have hprod (σ : Equiv.Perm J) :
      (∏ i, (X (site (σ i), i) : MvPolynomial (S × J) R) ^ q (σ i)) =
        monomial (pivotDegree site q σ) 1 := by
    rw [pivotDegree, monomial_sum_one]
    apply Finset.prod_congr rfl
    intro i _
    rw [X_pow_eq_monomial]
  rw [Matrix.det_apply, coeff_sum, Finset.sum_eq_single_of_mem (1 : Equiv.Perm J) (Finset.mem_univ 1)]
  · simp only [Matrix.of_apply, hprod, map_one, one_smul]
    simp [diag, coeff_monomial]
  · intro σ _ hσ
    simp only [Matrix.of_apply, hprod, MvPolynomial.coeff_smul, coeff_monomial]
    simp [show pivotDegree site q σ ≠ diag from fun h => hσ (hinj h)]

/-- A unit pivot minor supplies dual rows over the same commutative ring. The
original pivot rows can be recovered integrally and every other row can be
made to annihilate all forms by subtracting a combination of dual rows. -/
theorem dualize_pivot_rows {J R V : Type*} [Fintype J] [DecidableEq J]
    [CommRing R] [AddCommGroup V] [Module R V] (f : J → V →ₗ[R] R) (y : J → V)
    (hu : IsUnit (Matrix.of fun i j => f i (y j)).det) :
    ∃ z : J → V, (∀ i j, f i (z j) = if i = j then 1 else 0) ∧
      (∀ j, y j = ∑ i, f i (y j) • z i) ∧
      ∀ v i, f i (v - ∑ j, f j v • z j) = 0 := by
  classical
  let A : Matrix J J R := Matrix.of fun i j => f i (y j)
  let z (i : J) := ∑ k, A⁻¹ k i • y k
  have hz (i j : J) : f i (z j) = if i = j then 1 else 0 := by
    calc
      _ = ∑ k, A i k * A⁻¹ k j := by simp [z, A, mul_comm]
      _ = (A * A⁻¹) i j := rfl
      _ = _ := by rw [Matrix.mul_nonsing_inv A hu, Matrix.one_apply]
  refine ⟨z, hz, ?_, ?_⟩
  · intro j
    symm
    calc
      _ = ∑ k, (∑ i, A⁻¹ k i * A i j) • y k := by
        simp only [z, Finset.smul_sum, smul_smul, Finset.sum_smul]
        rw [Finset.sum_comm]
        simp [A, mul_comm]
      _ = ∑ k, (A⁻¹ * A) k j • y k := rfl
      _ = y j := by simp [Matrix.nonsing_inv_mul A hu, Matrix.one_apply, ite_smul]
  · intro v i
    simp [hz]

/-- In the quotient by `p`, a possibly nonreduced ring, collecting a pure pair
across matrix rows yields the Frobenius power of the corresponding pairing. -/
theorem frobenius_pure_pair {J R : Type*} [Fintype J] [CommSemiring R] (p : ℕ)
    [Fact p.Prime] [CharP R p] (x y : J → R) (e h : ℕ) :
    (∑ i, x i ^ (p ^ (e + h)) * y i ^ (p ^ h)) = (∑ i, x i ^ (p ^ e) * y i) ^ (p ^ h) := by
  rw [sum_pow_char_pow]
  simp only [mul_pow, ← pow_mul, pow_add]

/-- Until the first reachable marked site, each lag spends both top degree and
one receiving row's capacity. -/
theorem high_top_capped (I : Finset ℕ) {p A : ℝ} (hp : 0 < p) (x cap : ℕ → ℝ)
    (hx : ∀ e ∈ I, 0 ≤ x e) (hdeg : ∑ e ∈ I, p ^ e * x e ≤ A)
    (hcap : ∀ e ∈ I, x e ≤ cap e) :
    ∑ e ∈ I, x e ≤ ∑ e ∈ I, min (A / p ^ e) (cap e) := by
  apply Finset.sum_le_sum
  intro e he
  apply le_min _ (hcap e he)
  apply (le_div_iff₀ (pow_pos hp e)).mpr
  rw [mul_comm]
  exact (Finset.single_le_sum (fun k hk => mul_nonneg (pow_nonneg hp.le k) (hx k hk)) he).trans hdeg

/-- From the first reachable marked site onward, every occurrence spends at
least `p^H` units, across *all* repeats of the orbit and all receiving rows. -/
theorem high_top_first_mark (I : Finset ℕ) (H : ℕ) {p A : ℝ} (hp : 1 ≤ p) (x cap : ℕ → ℝ)
    (hx : ∀ e ∈ I, 0 ≤ x e) (hdeg : ∑ e ∈ I, p ^ e * x e ≤ A)
    (hcap : ∀ e ∈ I, e < H → x e ≤ cap e) :
    ∑ e ∈ I, x e ≤ (∑ e ∈ I.filter (· < H), min (A / p ^ e) (cap e)) + A / p ^ H := by
  let early := I.filter (· < H)
  let late := I.filter (fun e => ¬ e < H)
  have sub (J : Finset ℕ) (hJ : J ⊆ I) : (∑ e ∈ J, p ^ e * x e) ≤ A :=
    (Finset.sum_le_sum_of_subset_of_nonneg hJ fun e he _ =>
      mul_nonneg (pow_nonneg (by linarith) _) (hx e he)).trans hdeg
  have he := high_top_capped early (by linarith : 0 < p) x cap
    (fun e h => hx e (Finset.mem_filter.mp h).1) (sub early (Finset.filter_subset ..))
    (fun e h => hcap e (Finset.mem_filter.mp h).1 (Finset.mem_filter.mp h).2)
  have hl : (∑ e ∈ late, x e) ≤ A / p ^ H := by
    apply (le_div_iff₀ (pow_pos (by linarith) _)).mpr
    rw [Finset.sum_mul]
    refine (Finset.sum_le_sum (fun e h => ?_)).trans (sub late (Finset.filter_subset ..))
    rw [mul_comm]
    exact mul_le_mul_of_nonneg_right (pow_le_pow_right₀ hp (Nat.le_of_not_gt (Finset.mem_filter.mp h).2))
      (hx e (Finset.mem_filter.mp h).1)
  exact (Finset.sum_filter_add_sum_filter_not I (· < H) x).symm.le.trans (add_le_add he hl)

/-- Incoming non-top to marked-top occurrences consume a whole odd-lag power at
the high non-top row. All odd lags together cost at most the source `γ * Wc`. -/
theorem low_top_odd_charge (I : Finset ℕ) {p W : ℝ} (hp : 1 < p) (hW : 0 ≤ W)
    (x : ℕ → ℝ) (hcap : ∀ j ∈ I, p ^ (2 * j + 1) * x j ≤ W) :
    ∑ j ∈ I, x j ≤ W * p / (p ^ 2 - 1) := by
  have hp0 : 0 < p := by linarith
  have hp2 : 1 < p ^ 2 := one_lt_pow₀ hp (by decide)
  have hsum := (hasSum_geometric_of_lt_one (inv_nonneg.mpr (sq_nonneg p))
    (inv_lt_one_of_one_lt₀ hp2)).mul_right (W / p)
  calc
    _ ≤ ∑ j ∈ I, ((p ^ 2)⁻¹) ^ j * (W / p) := by
      apply Finset.sum_le_sum
      intro j hj
      have h := (le_div_iff₀ (pow_pos hp0 (2*j+1))).mpr (by simpa [mul_comm] using hcap j hj)
      calc
        x j ≤ W / p ^ (2 * j + 1) := h
        _ = _ := by rw [pow_add, pow_mul, pow_one]; simp [div_eq_mul_inv, mul_comm, mul_assoc]
    _ ≤ _ := sum_le_hasSum I (fun j _ => by positivity) hsum
    _ = W * p / (p ^ 2 - 1) := by
      field_simp [hp0.ne', (sub_pos.mpr hp2).ne']

end GRWTSK.NumberTheory.AlpogeMarkedMinorFlow
