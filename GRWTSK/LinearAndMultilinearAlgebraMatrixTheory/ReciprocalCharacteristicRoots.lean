import Mathlib

/-!
# Complementary characteristic polynomials from scaled perfect pairings

Source candidate split from `weil_conjecture_main.lean`, lines 52100–52251.
See the adjacent `ReciprocalCharacteristicRoots.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem charpoly_eq_of_compatible_pairing {ι κ : Type} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ] (A : Matrix ι ι ℂ) (B : Matrix κ κ ℂ) (P : Matrix ι κ ℂ)
    (c : ℂ) (hc : c ≠ 0) (hv : ∀ v : ι → ℂ, Matrix.vecMul v P = 0 → v = 0)
    (hw : ∀ w : κ → ℂ, P.mulVec w = 0 → w = 0) (h : A.transpose * P * B = c • P) :
    IsUnit A ∧ B.charpoly = (c • A⁻¹).charpoly :=
by
  classical

  have hu : IsUnit A := by
    rw [← Matrix.mulVec_injective_iff_isUnit]
    have hker : ∀ u : ι → ℂ, A.mulVec u = 0 → u = 0 := by
      intro u hu0
      apply hv
      have h1 : Matrix.vecMul u (A.transpose * P * B) = c • Matrix.vecMul u P := by
        rw [h, Matrix.vecMul_smul]
      have h2 : Matrix.vecMul u (A.transpose * P * B) = 0 := by
        rw [← Matrix.vecMul_vecMul, ← Matrix.vecMul_vecMul, Matrix.vecMul_transpose, hu0,
          Matrix.zero_vecMul, Matrix.zero_vecMul]
      rw [h2] at h1
      exact (smul_eq_zero.mp h1.symm).resolve_left hc
    intro x y hxy
    exact sub_eq_zero.mp (hker (x - y) (by rw [Matrix.mulVec_sub, hxy, sub_self]))
  refine ⟨hu, ?_⟩

  have hcard : Fintype.card ι = Fintype.card κ := by
    apply le_antisymm
    · have hinj : Function.Injective P.vecMulLinear :=
        (injective_iff_map_eq_zero _).mpr
          (fun a ha => hv a (by rw [Matrix.vecMulLinear_apply] at ha; exact ha))
      have := LinearMap.finrank_le_finrank_of_injective hinj
      simpa [Module.finrank_fintype_fun_eq_card] using this
    · have hinj : Function.Injective P.mulVecLin :=
        (injective_iff_map_eq_zero _).mpr
          (fun a ha => hw a (by rw [Matrix.mulVecLin_apply] at ha; exact ha))
      have := LinearMap.finrank_le_finrank_of_injective hinj
      simpa [Module.finrank_fintype_fun_eq_card] using this

  let e : ι ≃ κ := Fintype.equivOfCardEq hcard
  obtain ⟨Q, hQdef⟩ : ∃ Q : Matrix ι ι ℂ, Q = P.submatrix id e := ⟨_, rfl⟩
  obtain ⟨B', hB'def⟩ : ∃ B' : Matrix ι ι ℂ, B' = B.submatrix e e := ⟨_, rfl⟩
  have hQ : IsUnit Q := by
    rw [← Matrix.mulVec_injective_iff_isUnit]
    have hker : ∀ u : ι → ℂ, Q.mulVec u = 0 → u = 0 := by
      intro u hu0
      have hs := Matrix.submatrix_mulVec_equiv P u id e
      rw [← hQdef, hu0] at hs
      have h1 : P.mulVec (u ∘ e.symm) = 0 := by
        funext i
        exact (congrFun hs i).symm
      have h2 := hw _ h1
      funext i
      have := congrFun h2 (e i)
      simpa using this
    intro x y hxy
    exact sub_eq_zero.mp (hker (x - y) (by rw [Matrix.mulVec_sub, hxy, sub_self]))
  have hEq : A.transpose * Q * B' = c • Q := by
    have e1 : A.transpose * Q = (A.transpose * P).submatrix id e := by
      rw [hQdef, Matrix.submatrix_mul _ _ id id e Function.bijective_id, Matrix.submatrix_id_id]
    rw [e1, hB'def, Matrix.submatrix_mul_equiv, h, hQdef]
    ext i j
    simp
  have hB : B'.charpoly = B.charpoly := by
    have := Matrix.charpoly_reindex e.symm B
    rw [Matrix.reindex_apply, Equiv.symm_symm] at this
    rw [hB'def]
    exact this

  have hAd : IsUnit A.transpose.det := by
    rw [Matrix.det_transpose]; exact (Matrix.isUnit_iff_isUnit_det A).mp hu
  have hQd : IsUnit Q.det := (Matrix.isUnit_iff_isUnit_det Q).mp hQ
  have ha : Q * B' = (c • A.transpose⁻¹) * Q := by
    calc Q * B' = A.transpose⁻¹ * (A.transpose * Q * B') := by
          rw [Matrix.mul_assoc, ← Matrix.mul_assoc A.transpose⁻¹, Matrix.nonsing_inv_mul _ hAd,
            Matrix.one_mul]
      _ = (c • A.transpose⁻¹) * Q := by rw [hEq, Matrix.mul_smul, Matrix.smul_mul]
  have hb : B' = Q⁻¹ * ((c • A.transpose⁻¹) * Q) := by
    rw [← ha, ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hQd, Matrix.one_mul]
  rw [← hB, hb, Matrix.charpoly_mul_comm, Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hQd,
    Matrix.mul_one, ← Matrix.transpose_nonsing_inv, ← Matrix.transpose_smul,
    Matrix.charpoly_transpose]

theorem roots_charpoly_smul_inv {ι : Type} [Fintype ι] [DecidableEq ι] (A : Matrix ι ι ℂ)
    (c : ℂ) (hc : c ≠ 0) (hA : IsUnit A) :
    (c • A⁻¹).charpoly.roots = A.charpoly.roots.map (c / ·) ∧ (0 : ℂ) ∉ A.charpoly.roots :=
by
  classical
  set R := A.charpoly.roots with hR
  have hdetu : IsUnit A.det := (Matrix.isUnit_iff_isUnit_det A).mp hA
  have hdet : A.det ≠ 0 := hdetu.ne_zero
  have hdetR : A.det = R.prod := Matrix.det_eq_prod_roots_charpoly A
  have hRprod : R.prod ≠ 0 := hdetR ▸ hdet
  have h0 : (0 : ℂ) ∉ R := fun h => hRprod (Multiset.prod_eq_zero h)
  have hcard : Multiset.card R = Fintype.card ι := by
    rw [hR, IsAlgClosed.card_roots_eq_natDegree, Matrix.charpoly_natDegree_eq_dim]
  have heval : ∀ x : ℂ, A.charpoly.eval x = (R.map (fun a => x - a)).prod := fun x =>
    Polynomial.Splits.eval_eq_prod_roots_of_monic (IsAlgClosed.splits _)
      (Matrix.charpoly_monic A) x
  have hevalM : ∀ (M : Matrix ι ι ℂ) (t : ℂ),
      M.charpoly.eval t = (t • (1 : Matrix ι ι ℂ) - M).det := by
    intro M t
    rw [Matrix.eval_charpoly, Matrix.smul_one_eq_diagonal]
    rfl
  have s1 : ∀ t : ℂ, (t • A - c • (1 : Matrix ι ι ℂ)).det
      = (R.map (fun a => t * a - c)).prod := by
    intro t
    by_cases ht : t = 0
    · subst ht
      rw [zero_smul, zero_sub, ← neg_smul, Matrix.det_smul, Matrix.det_one, mul_one]
      rw [Multiset.map_congr rfl (fun a _ => by rw [zero_mul, zero_sub] :
        ∀ a ∈ R, (0 : ℂ) * a - c = -c)]
      rw [Multiset.map_const', Multiset.prod_replicate, hcard]
    · have hmat : t • A - c • (1 : Matrix ι ι ℂ)
          = (-t) • ((c / t) • (1 : Matrix ι ι ℂ) - A) := by
        rw [smul_sub, smul_smul, neg_mul, mul_div_cancel₀ c ht, neg_smul, neg_smul]
        abel
      rw [hmat, Matrix.det_smul, ← hevalM, heval, ← hcard, ← Multiset.prod_replicate,
        ← Multiset.map_const', ← Multiset.prod_map_mul]
      congr 1
      apply Multiset.map_congr rfl
      intro a _
      rw [show -t * (c / t - a) = -(t * (c / t)) + t * a by ring, mul_div_cancel₀ c ht]
      ring
  have hinvA : A⁻¹ * A = 1 := Matrix.nonsing_inv_mul A hdetu
  have s3 : ∀ t : ℂ, (c • A⁻¹).charpoly.eval t = (R.map (fun a => t - c / a)).prod := by
    intro t
    rw [hevalM]
    have hm : (t • (1 : Matrix ι ι ℂ) - c • A⁻¹) * A = t • A - c • (1 : Matrix ι ι ℂ) := by
      rw [sub_mul, smul_mul_assoc, smul_mul_assoc, one_mul, hinvA]
    have hd := congrArg Matrix.det hm
    rw [Matrix.det_mul, s1, hdetR] at hd
    have hRid : R.prod = (R.map (fun a => a)).prod := by rw [Multiset.map_id']
    have key : (R.map (fun a => t - c / a)).prod * R.prod
        = (R.map (fun a => t * a - c)).prod := by
      rw [hRid, ← Multiset.prod_map_mul]
      congr 1
      apply Multiset.map_congr rfl
      intro a ha
      have ha0 : a ≠ 0 := fun h => h0 (h ▸ ha)
      field_simp
    exact mul_right_cancel₀ hRprod (hd.trans key.symm)
  have hpoly : (c • A⁻¹).charpoly
      = ((R.map (c / ·)).map (fun b => Polynomial.X - Polynomial.C b)).prod := by
    apply Polynomial.funext
    intro t
    rw [s3, Polynomial.eval_multiset_prod, Multiset.map_map, Multiset.map_map]
    congr 1
    apply Multiset.map_congr rfl
    intro a _
    simp
  refine ⟨?_, h0⟩
  rw [hpoly, Polynomial.roots_multiset_prod_X_sub_C]

end GRWTSK.FiniteFieldWeil
