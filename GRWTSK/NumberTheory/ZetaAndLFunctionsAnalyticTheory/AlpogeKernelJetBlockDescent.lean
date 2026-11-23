/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.Monad
import Mathlib.RingTheory.MvPolynomial.WeightedHomogeneous
import Mathlib.GroupTheory.Abelianization.Defs
import Mathlib.Tactic.Ring

/-! # Homogeneous jet descent and the terminal twist-prime block

The two applications use the CM-type blocks of the pullback on a
Hermitian Hom space and the distinguished last row of a twist-prime
level matrix, respectively. -/

namespace GRWTSK.NumberTheory.AlpogeKernelJetBlockDescent

open MvPolynomial

/-- A weight-preserving substitution commutes with projection onto each
individual multidegree, including when all other input coefficients vary. -/
theorem component_bind {R W ι κ : Type*} [CommSemiring R] [AddCommMonoid W]
    (w : ι → W) (v : κ → W) (L : ι → MvPolynomial κ R)
    (hL : ∀ i, (L i).IsWeightedHomogeneous v (w i))
    (d : W) (F : MvPolynomial ι R) :
    weightedHomogeneousComponent v d (bind₁ L F) =
      bind₁ L (weightedHomogeneousComponent w d F) := by
  classical
  induction F using MvPolynomial.induction_on' with
  | monomial a r =>
    have h := isWeightedHomogeneous_monomial (R := R) w a r rfl
    have h' : (bind₁ L (monomial a r)).IsWeightedHomogeneous v (Finsupp.weight w a) := by
      rw [bind₁_monomial]
      exact (IsWeightedHomogeneous.prod a.support _ _ (fun i _ => (hL i).pow (a i))).C_mul r
    by_cases hd : d = Finsupp.weight w a
    · subst d
      rw [h.weightedHomogeneousComponent_same, h'.weightedHomogeneousComponent_same]
    · rw [h.weightedHomogeneousComponent_ne d hd, h'.weightedHomogeneousComponent_ne d hd,
        map_zero]
  | add F G hF hG => simp only [map_add, hF, hG]

/-- Only the chosen slice has to descend to the coefficient ring; all
the other slices of the original jet can have arbitrary coefficients. -/
theorem selected_jet_descends {R S W ι κ : Type*} [CommSemiring R] [CommSemiring S]
    [AddCommMonoid W] (σ : R →+* S) (w : ι → W) (v : κ → W)
    (L : ι → MvPolynomial κ R)
    (hL : ∀ i, (map σ (L i)).IsWeightedHomogeneous v (w i))
    (d : W) (F : MvPolynomial ι S) (P : MvPolynomial ι R)
    (hP : weightedHomogeneousComponent w d F = map σ P) :
    weightedHomogeneousComponent v d (bind₁ (fun i => map σ (L i)) F) =
      map σ (bind₁ L P) := by
  rw [component_bind w v _ hL, hP, map_bind₁]

/-- Exact mixed-depth test for an integral last-row block over a domain.
For an input whose last coordinate is y/q^M, the first numerator error
must be zero modulo q^(M+1), and the last numerator error modulo q^(2M).
The upper-left block cancels from these two errors. -/
theorem last_block_depth_iff {R ι : Type*} [CommRing R] [IsDomain R] [Fintype ι]
    (q : R) (hq : q ≠ 0) (M : ℕ) (b c : ι → R) (d : R) :
    (∀ (x : ι → R) (y : R), (∀ i, q ^ (M+1) ∣ b i * y) ∧
      q ^ (M+M) ∣ q ^ M * (∑ j, c j * x j) + (d-1) * y) ↔
    (∀ i, q ^ (M+1) ∣ b i) ∧ (∀ j, q ^ M ∣ c j) ∧ q ^ (M+M) ∣ d-1 := by
  classical
  constructor
  · intro h
    have hlast := h 0 1
    refine ⟨fun i => by simpa using hlast.1 i, fun j => ?_, by simpa using hlast.2⟩
    have hc := (h (Pi.single j 1) 0).2
    have he : (∑ k, c k * (Pi.single j (1 : R) : ι → R) k) = c j := by
      rw [Finset.sum_eq_single j]
      · simp
      · intro k _ hkj
        simp [Pi.single_eq_of_ne hkj]
      · simp
    rw [he, mul_zero, add_zero, pow_add] at hc
    exact (mul_dvd_mul_iff_left (pow_ne_zero _ hq)).mp hc
  · rintro ⟨hb,hc,hd⟩ x y
    refine ⟨fun i => dvd_mul_of_dvd_left (hb i) y, dvd_add ?_ (dvd_mul_of_dvd_left hd _)⟩
    rw [pow_add]
    exact mul_dvd_mul_left _ (Finset.dvd_sum fun j _ => dvd_mul_of_dvd_left (hc j) _)

/-- The scalars of a group acting on the line of a nonzero function form
a character. Its tensor power is fixed whenever the corresponding power
of the group element is in the commutator subgroup. -/
theorem theta_line_tensor_character {G X K : Type*} [Group G] [MulAction G X] [Field K]
    (f : X → K) (hf : ∃ x, f x ≠ 0)
    (hline : ∀ g : G, ∃ c : Kˣ, ∀ x, f (g • x) = (c : K) * f x) :
    ∃ χ : G →* Kˣ, (∀ g x, f (g • x) = (χ g : K) * f x) ∧
      ∀ (N : ℕ) (g : G), g^N ∈ commutator G → ∀ v : Fin N → X,
        (∏ j, f (g • v j)) = ∏ j, f (v j) := by
  classical
  obtain ⟨x, hx⟩ := hf
  choose a ha using hline
  let χ : G →* Kˣ := {
    toFun := a
    map_one' := Units.ext (mul_right_cancel₀ hx (by simpa using (ha 1 x).symm))
    map_mul' := fun g h => Units.ext (mul_right_cancel₀ hx (by
      change (a (g*h) : K) * f x = ((a g : K) * (a h : K)) * f x
      rw [← ha, mul_smul, ha, ha, mul_assoc])) }
  refine ⟨χ, ha, fun N g hg v => ?_⟩
  have hc := Abelianization.commutator_subset_ker χ hg
  have hu : (χ g : K) ^ N = 1 := by
    have h1 : χ (g ^ N) = 1 := hc
    rw [map_pow] at h1
    simpa using congrArg Units.val h1
  simp only [ha, Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  change (χ g : K) ^ N * _ = _
  rw [hu, one_mul]

/-- An even normalized quadratic refinement of a bicharacter obeys the
homogeneity law needed in the finite quadratic module Gauss formula.
The source finite additive group is written multiplicatively here. -/
theorem even_refinement_power {G K : Type*} [CommGroup G] [CommGroup K]
    (b : G →* G →* K) (q : G → K) (h1 : q 1 = 1)
    (he : ∀ x, q x⁻¹ = q x) (hm : ∀ x y, q (x*y) = q x * q y * b x y)
    (x : G) (n : ℕ) : q (x^n) = q x ^ (n*n) := by
  have hdiag : b x x = q x ^ 2 := by
    have h := hm x x⁻¹
    rw [mul_inv_cancel, h1, he, map_inv, ← sq] at h
    exact (eq_of_mul_inv_eq_one h.symm).symm
  induction n with
  | zero => simp [h1]
  | succ n ih =>
    rw [pow_succ, hm, ih, map_pow, MonoidHom.pow_apply, hdiag, ← pow_mul, ← pow_succ,
      ← pow_add]
    congr 1
    ring

end GRWTSK.NumberTheory.AlpogeKernelJetBlockDescent
