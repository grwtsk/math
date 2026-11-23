/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.PowerSeries.Expand
import Mathlib.Tactic.Ring
import Mathlib.RingTheory.LocalRing.Basic

/-! The coefficient filtration for the Lubin–Tate comparison, including
descent of an existing characteristic-zero intertwiner. -/

namespace GRWTSK.NumberTheory.AlpogeStrictCoordinateComparison

open PowerSeries

variable {R : Type*} [CommRing R]

private theorem finite_coeff (F G : PowerSeries R) (h : G.constantCoeff = 0) (n : ℕ) :
    coeff n (F.subst G) = ∑ j ∈ Finset.range (n+1), F.coeff j * coeff n (G^j) := by
  rw [coeff_subst' (HasSubst.of_constantCoeff_zero' h)]
  simp only [smul_eq_mul]
  apply finsum_eq_sum_of_support_subset
  intro j hj
  by_contra! hn
  have hlt : n < j := by simpa [Finset.mem_range] using hn
  have hd : (X : PowerSeries R)^j ∣ G^j := pow_dvd_pow_of_dvd (X_dvd_iff.mpr h) _
  exact hj (by dsimp; rw [X_pow_dvd_iff.mp hd n hlt, mul_zero])

private theorem tail_power (A B : PowerSeries R) (a0 : A.constantCoeff = 0)
    (b0 : B.constantCoeff = 0) (n j : ℕ) (h : X^n ∣ A-B) :
    X^(n+1) ∣ A^(j+2)-B^(j+2) := by
  have xB : ∀ i : ℕ, X ∣ B^(i+1) := fun i => X_dvd_iff.mpr (by simp [b0])
  induction j with
  | zero =>
    rw [pow_succ]
    have e : A^2-B^2 = (A-B)*(A+B) := by ring
    rw [e]
    exact mul_dvd_mul h (X_dvd_iff.mpr (by simp [a0,b0]))
  | succ j ih =>
    have e : A^(j+1+2)-B^(j+1+2) = (A^(j+2)-B^(j+2))*A+(A-B)*B^(j+2) := by ring
    rw [e]
    apply dvd_add (dvd_mul_of_dvd_left ih _)
    rw [pow_succ (X : PowerSeries R) n]
    exact mul_dvd_mul h (xB (j+1))

/-- The exact degree-n change in a commuting-series defect from replacing
the argument and the outer series by an equal lower jet. -/
theorem defect_difference (F G A B : PowerSeries R) (n : ℕ) (hn : 1 < n)
    (g0 : G.constantCoeff = 0) (a0 : A.constantCoeff = 0) (b0 : B.constantCoeff = 0)
    (h : ∀ j < n, A.coeff j = B.coeff j) :
    coeff n (F.subst A-A.subst G) - coeff n (F.subst B-B.subst G) =
      (F.coeff 1-(G.coeff 1)^n)*(A.coeff n-B.coeff n) := by
  have hd : X^n ∣ A-B := X_pow_dvd_iff.mpr fun j hj => by simp [h j hj]
  have inner : coeff n (F.subst A) - coeff n (F.subst B) =
      F.coeff 1 * (A.coeff n-B.coeff n) := by
    rw [finite_coeff _ _ a0, finite_coeff _ _ b0, ← Finset.sum_sub_distrib,
      Finset.sum_eq_single 1]
    · simp [mul_sub]
    · intro j _ h1
      obtain _ | j := j
      · simp
      obtain _ | j := j
      · contradiction
      have he := X_pow_dvd_iff.mp (tail_power A B a0 b0 n j hd) n (by omega)
      rw [map_sub, sub_eq_zero] at he
      rw [he, sub_self]
    · simp [Finset.mem_range, show 1 < n+1 by omega]
  have gn : coeff n (G^n) = (G.coeff 1)^n := by
    obtain ⟨V,hV⟩ := X_dvd_iff.mpr g0
    have h1 : coeff 1 (X*V) = V.constantCoeff := by
      simpa [coeff_zero_eq_constantCoeff_apply] using (coeff_X_pow_mul V 1 0)
    rw [hV,mul_pow,coeff_X_pow_mul',if_pos le_rfl,Nat.sub_self,
      coeff_zero_eq_constantCoeff_apply,map_pow,h1]
  have outer : coeff n (A.subst G) - coeff n (B.subst G) =
      (A.coeff n-B.coeff n)*(G.coeff 1)^n := by
    rw [finite_coeff _ _ g0, finite_coeff _ _ g0, ← Finset.sum_sub_distrib,
      Finset.sum_eq_single n]
    · rw [gn, sub_mul]
    · intro j hj hjn
      rw [h j (by simp at hj; omega), sub_self]
    · simp
  simp only [map_sub]
  linear_combination inner - outer

private theorem natural_subst {S : Type*} [CommRing S] (φ : R →+* S)
    (F G : PowerSeries R) (g0 : G.constantCoeff = 0) :
    PowerSeries.map φ (F.subst G) = (F.map φ).subst (G.map φ) :=
  PowerSeries.map_subst (HasSubst.of_constantCoeff_zero' g0) F

/-- Both compositions reduce to the very same Frobenius over the entire
finite residue field. -/
theorem residue_defect {k : Type*} [Field k] [Fintype k] (φ : R →+* k)
    (F G B : PowerSeries R) (b0 : B.constantCoeff = 0) (g0 : G.constantCoeff = 0)
    (hf : F.map φ = X^(Fintype.card k)) (hg : G.map φ = X^(Fintype.card k)) :
    PowerSeries.map φ (F.subst B-B.subst G) = 0 := by
  have bm : (B.map φ).constantCoeff = 0 := by
    change φ B.constantCoeff = 0
    simp [b0]
  rw [map_sub, natural_subst _ _ _ b0, natural_subst _ _ _ g0, hf,hg,
    subst_pow (HasSubst.of_constantCoeff_zero' bm), subst_X (HasSubst.of_constantCoeff_zero' bm),
    ← expand_apply _ Fintype.card_ne_zero, FiniteField.PowerSeries.expand_card,sub_self]

/-- An intertwiner over the ambient field with integral tangent descends
coefficient by coefficient. The residue map has principal kernel, the
linear parts equal its generator, and the two residual series are the
full residue-field Frobenius. Completeness of the ambient field is
unnecessary when the characteristic-zero intertwiner already exists. -/
theorem intertwiner_integral {K k : Type*} [Field K] [Field k] [Fintype k]
    (O : Subring K) [IsLocalRing O] (φ : O →+* k) (π : O) (hp : π ≠ 0)
    (hnu : ¬ IsUnit π) (ker : ∀ x : O, φ x = 0 → π ∣ x)
    (F G : PowerSeries O) (H : PowerSeries K)
    (g0 : G.constantCoeff = 0) (h0 : H.constantCoeff = 0) (h1 : H.coeff 1 ∈ O)
    (f1 : F.coeff 1 = π) (g1 : G.coeff 1 = π)
    (hf : F.map φ = X^(Fintype.card k)) (hg : G.map φ = X^(Fintype.card k))
    (commutes : (F.map O.subtype).subst H = H.subst (G.map O.subtype)) :
    ∀ n : ℕ, H.coeff n ∈ O := by
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
    classical
    obtain _ | n := n
    · simpa [coeff_zero_eq_constantCoeff_apply,h0] using O.zero_mem
    obtain _ | m := n
    · exact h1
    let n := m+2
    have hn : 1 < n := by dsimp [n]; omega
    let B : PowerSeries O := mk fun j => if hj : j < n then ⟨H.coeff j,ih j hj⟩ else 0
    have low (j : ℕ) (hj : j < n) : (B.coeff j : K) = H.coeff j := by simp [B,hj]
    have b0 : B.constantCoeff = 0 := by
      apply Subtype.ext
      simpa [coeff_zero_eq_constantCoeff_apply,h0] using low 0 (by omega)
    let Rn : O := coeff n (F.subst B-B.subst G)
    have hr : φ Rn = 0 := by
      rw [show φ Rn = coeff n (PowerSeries.map φ (F.subst B-B.subst G)) by rw [coeff_map]]
      rw [residue_defect φ F G B b0 g0 hf hg, map_zero]
    obtain ⟨y,hy⟩ := ker Rn hr
    have hu : IsUnit (1-π^(m+1)) :=
      IsLocalRing.isUnit_one_sub_self_of_mem_nonunits _ fun hh =>
        hnu (isUnit_pow_iff (by omega : m+1 ≠ 0) |>.mp hh)
    obtain ⟨z,hz⟩ := (hu.dvd : 1-π^(m+1) ∣ y)
    have gm : (G.map O.subtype).constantCoeff = 0 := by change O.subtype G.constantCoeff = 0; simp [g0]
    have bm : (B.map O.subtype).constantCoeff = 0 := by change O.subtype B.constantCoeff = 0; simp [b0]
    have hd := defect_difference (F.map O.subtype) (G.map O.subtype) H (B.map O.subtype)
      n hn gm h0 bm (fun j hj => by rw [coeff_map]; exact (low j hj).symm)
    have bd : (B.map O.subtype).coeff n = 0 := by simp [B,coeff_map]
    have e : ((Rn : O) : K) = coeff n ((F.map O.subtype).subst (B.map O.subtype) -
          (B.map O.subtype).subst (G.map O.subtype)) := by
      change O.subtype (coeff n (F.subst B-B.subst G)) = _
      rw [← coeff_map, map_sub, natural_subst _ _ _ b0, natural_subst _ _ _ g0]
    rw [commutes,sub_self,map_zero,zero_sub,← e,bd,sub_zero,coeff_map,coeff_map,f1,g1] at hd
    have he : (π:K)*(1-(π:K)^(m+1))*H.coeff n =
        (π:K)*(1-(π:K)^(m+1))*(-(z:K)) := by
      rw [hy,hz] at hd
      push_cast at hd
      change -((π:K)*((1-(π:K)^(m+1))*(z:K))) =
        ((π:K)-(π:K)^(m+2))*H.coeff n at hd
      linear_combination -hd
    have hπ : (π:K) ≠ 0 := by exact_mod_cast hp
    have hunit : (1-(π:K)^(m+1)) ≠ 0 := by simpa using (hu.map O.subtype).ne_zero
    have solved := mul_left_cancel₀ (mul_ne_zero hπ hunit) he
    change H.coeff n ∈ O
    rw [solved]
    exact O.neg_mem z.property

end GRWTSK.NumberTheory.AlpogeStrictCoordinateComparison
