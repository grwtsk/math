import GRWTSK.AlgebraicGeometry.FiniteFieldCohomology.FrobeniusPurityAndTrace

/-!
# Poincaré pairings and matrix realizations of Frobenius duality

Source candidate split from `weil_conjecture_main.lean`, lines 51843–52099.
See the adjacent `FrobeniusPoincareDuality.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem etale_frobenius_poincare_data (F : Type u) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom]
    (d : ℕ) [SmoothOfRelativeDimension d X.hom] :
    ∃ (ℓ : ℕ) (_ : Fact (Nat.Prime ℓ)) (V : ℕ → Type u) (_ : ∀ i, AddCommGroup (V i))
      (_ : ∀ i, Module ℚ_[ℓ] (V i)) (_ : ∀ i, FiniteDimensional ℚ_[ℓ] (V i))
      (Φ : ∀ i, V i →ₗ[ℚ_[ℓ]] V i) (B : ∀ i, V i →ₗ[ℚ_[ℓ]] V (2 * d - i) →ₗ[ℚ_[ℓ]] ℚ_[ℓ]),
      (∀ i ≤ 2 * d, ∀ x y, B i (Φ i x) (Φ (2 * d - i) y) = ((Nat.card F : ℚ_[ℓ]) ^ d) * B i x y) ∧
      (∀ i ≤ 2 * d, ∀ x, (∀ y, B i x y = 0) → x = 0) ∧
      (∀ i ≤ 2 * d, ∀ y, (∀ x, B i x y = 0) → y = 0) ∧
      ∀ (E : Type u) [Field E] [Algebra F E] [FiniteDimensional F E],
        (Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℚ_[ℓ]) =
        ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * LinearMap.trace ℚ_[ℓ] (V i) (Φ i ^ Module.finrank F E) :=
by
  classical

  obtain ⟨ℓ, hle, hp⟩ := Nat.exists_infinite_primes (Nat.card F + 1)
  haveI hfact : Fact (Nat.Prime ℓ) := ⟨hp⟩
  have hq : 0 < Nat.card F := Finite.card_pos
  have hℓ : ¬ ℓ ∣ Nat.card F := fun hd => by
    have := Nat.le_of_dvd hq hd
    omega

  have h : WeaklyEtale (Limits.pullback.fst X.hom
      (Spec.map (CommRingCat.ofHom (algebraMap F (AlgebraicClosure F))))) :=
    MorphismProperty.of_isPullback (P := @WeaklyEtale) (IsPullback.of_hasPullback _ _).flip
      (wc_weaklyEtale_algebraicClosure F)

  choose r e he using wc_coh_finite F X d ℓ hℓ h
  obtain ⟨hone, htop⟩ := wc_top_coh_frobenius F X d ℓ hℓ h
  let M : ∀ i, Matrix (Fin (r i)) (Fin (r i)) ℚ_[ℓ] :=
    fun i => wcAddEquivMatrix (e i) (wcCohFrob F X h ℓ i)

  have hPex : ∀ i, ∃ P : Matrix (Fin (r i)) (Fin (r (2 * d - i))) ℚ_[ℓ], i ≤ 2 * d →
      (M i).transpose * P * M (2 * d - i) = ((Nat.card F : ℚ_[ℓ]) ^ d) • P ∧
      (∀ v : Fin (r i) → ℚ_[ℓ], Matrix.vecMul v P = 0 → v = 0) ∧
      (∀ w : Fin (r (2 * d - i)) → ℚ_[ℓ], P.mulVec w = 0 → w = 0) := by
    intro i
    by_cases hi : i ≤ 2 * d
    · obtain ⟨P, hP⟩ := wc_poincare_duality F X d ℓ hℓ h hone htop i hi (r i) (r (2 * d - i))
        (e i) (e (2 * d - i)) (he i) (he (2 * d - i))
      exact ⟨P, fun _ => hP⟩
    · exact ⟨0, fun h' => absurd h' hi⟩
  choose P hP using hPex

  let u : ∀ i, ULift.{u} (Fin (r i) → ℚ_[ℓ]) ≃ₗ[ℚ_[ℓ]] (Fin (r i) → ℚ_[ℓ]) :=
    fun i => ULift.moduleEquiv
  let Φ : ∀ i, ULift.{u} (Fin (r i) → ℚ_[ℓ]) →ₗ[ℚ_[ℓ]] ULift.{u} (Fin (r i) → ℚ_[ℓ]) :=
    fun i => (u i).symm.conj (Matrix.toLin' (M i))
  let B : ∀ i, ULift.{u} (Fin (r i) → ℚ_[ℓ]) →ₗ[ℚ_[ℓ]]
      ULift.{u} (Fin (r (2 * d - i)) → ℚ_[ℓ]) →ₗ[ℚ_[ℓ]] ℚ_[ℓ] := fun i =>
    (Matrix.toLinearMap₂' ℚ_[ℓ] (P i)).compl₁₂ (u i).toLinearMap (u (2 * d - i)).toLinearMap
  have hΦ : ∀ i (x : ULift.{u} (Fin (r i) → ℚ_[ℓ])), (Φ i x).down = Matrix.mulVec (M i) x.down := by
    intro i x
    rfl
  have hB : ∀ i (x : ULift.{u} (Fin (r i) → ℚ_[ℓ])) (y : ULift.{u} (Fin (r (2 * d - i)) → ℚ_[ℓ])),
      B i x y = dotProduct x.down (Matrix.mulVec (P i) y.down) := by
    intro i x y
    simp only [B, LinearMap.compl₁₂_apply, Matrix.toLinearMap₂'_apply']
    rfl
  have hpow : ∀ i (n : ℕ), Φ i ^ n = (u i).symm.conj (Matrix.toLin' (M i ^ n)) := by
    intro i n
    induction n with
    | zero =>
      rw [pow_zero, pow_zero, Matrix.toLin'_one, LinearEquiv.conj_id, Module.End.one_eq_id]
    | succ n ih =>
      rw [pow_succ, ih, pow_succ, Matrix.toLin'_mul, Module.End.mul_eq_comp,
        LinearEquiv.conj_comp]
  refine ⟨ℓ, hfact, fun i => ULift.{u} (Fin (r i) → ℚ_[ℓ]), fun i => inferInstance,
    fun i => inferInstance, fun i => Module.Finite.equiv (u i).symm, Φ, B, ?_, ?_, ?_, ?_⟩
  ·
    intro i hi x y
    rw [hB, hΦ, hΦ, hB, ← Matrix.vecMul_transpose (M i) x.down, ← Matrix.dotProduct_mulVec,
      Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, (hP i hi).1, Matrix.smul_mulVec,
      dotProduct_smul, smul_eq_mul]
  ·
    intro i hi x hx
    have hv : Matrix.vecMul x.down (P i) = 0 := by
      funext k
      have hk := hx ⟨Pi.single k 1⟩
      rw [hB, Matrix.dotProduct_mulVec] at hk
      simpa [dotProduct_single] using hk
    exact ULift.ext _ _ ((hP i hi).2.1 _ hv)
  ·
    intro i hi y hy
    have hw : (P i).mulVec y.down = 0 := by
      funext j
      have hj := hy ⟨Pi.single j 1⟩
      rw [hB] at hj
      simpa [single_dotProduct] using hj
    exact ULift.ext _ _ ((hP i hi).2.2 _ hw)
  ·
    intro E _ _ _
    rw [wc_trace_formula F X d ℓ hℓ h (wc_coh_vanishing F X d ℓ hℓ h) r M
      (fun i _ => ⟨e i, he i, rfl⟩) E]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [hpow, LinearMap.trace_conj', Matrix.trace_toLin'_eq]

theorem frobenius_duality_matrices (F : Type u) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom]
    (d : ℕ) [SmoothOfRelativeDimension d X.hom] :
    ∃ (r : ℕ → ℕ) (M : ∀ i, Matrix (Fin (r i)) (Fin (r i)) ℂ)
      (P : ∀ i, Matrix (Fin (r i)) (Fin (r (2 * d - i))) ℂ),
      (∀ i ≤ 2 * d, (M i).transpose * P i * M (2 * d - i) = ((Nat.card F : ℂ) ^ d) • P i ∧
        (∀ v : Fin (r i) → ℂ, Matrix.vecMul v (P i) = 0 → v = 0) ∧
        (∀ w : Fin (r (2 * d - i)) → ℂ, (P i).mulVec w = 0 → w = 0)) ∧
      ∀ (E : Type u) [Field E] [Algebra F E] [FiniteDimensional F E],
        (Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℂ) =
        ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((M i) ^ Module.finrank F E).trace :=
by
  classical
  obtain ⟨ℓ, hℓ, V, _, _, _, Φ, B, hcomp, hL, hR, htr⟩ := etale_frobenius_poincare_data F X d
  haveI := hℓ

  have hσ : Nonempty (ℚ_[ℓ] →+* ℂ) := by
    have ha : Cardinal.continuum ≤ Cardinal.mk ℚ_[ℓ] :=
      continuum_le_cardinal_of_nontriviallyNormedField ℚ_[ℓ]
    have hb : Cardinal.mk ℚ_[ℓ] ≤ Cardinal.continuum := by
      have hr : ∀ (x : ℚ_[ℓ]) (k : ℕ), ∃ r : ℚ, ‖x - r‖ < 1 / ((k : ℝ) + 1) := by
        intro x k
        exact Padic.rat_dense ℓ x (by positivity)
      choose r hr using hr
      have hinj : Function.Injective r := by
        intro x y hxy
        by_contra hne
        have hδ : 0 < ‖x - y‖ := norm_pos_iff.mpr (sub_ne_zero.mpr hne)
        obtain ⟨k, hk⟩ := exists_nat_gt (2 / ‖x - y‖)
        have h1 := hr x k
        have h2 := hr y k
        rw [hxy] at h1
        have h3 : ‖x - y‖ ≤ ‖x - (r y k : ℚ_[ℓ])‖ + ‖y - (r y k : ℚ_[ℓ])‖ := by
          calc ‖x - y‖ = ‖(x - (r y k : ℚ_[ℓ])) - (y - (r y k : ℚ_[ℓ]))‖ := by ring_nf
            _ ≤ _ := norm_sub_le _ _
        have hk1 : (0:ℝ) < (k:ℝ) + 1 := by positivity
        have h4 : ‖x - y‖ < 2 / ((k:ℝ) + 1) := by
          have : 1 / ((k:ℝ)+1) + 1 / ((k:ℝ)+1) = 2 / ((k:ℝ)+1) := by ring
          linarith
        rw [div_lt_iff₀ hδ] at hk
        rw [lt_div_iff₀ hk1] at h4
        nlinarith
      have := Cardinal.mk_le_of_injective hinj
      calc Cardinal.mk ℚ_[ℓ] ≤ Cardinal.mk (ℕ → ℚ) := this
        _ = Cardinal.continuum := by
          rw [← Cardinal.power_def, Cardinal.mk_eq_aleph0 ℚ, Cardinal.mk_eq_aleph0 ℕ,
            Cardinal.aleph0_power_aleph0]
    have hQ : Cardinal.mk ℚ_[ℓ] = Cardinal.continuum := le_antisymm hb ha
    have hK1 : Cardinal.mk ℚ_[ℓ] ≤ Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) :=
      Cardinal.mk_le_of_injective (algebraMap ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ])).injective
    have hK2 : Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) ≤ max (Cardinal.mk ℚ_[ℓ]) Cardinal.aleph0 :=
      Algebra.IsAlgebraic.cardinalMk_le_max ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ])
    rw [hQ, max_eq_left Cardinal.aleph0_le_continuum] at hK2
    rw [hQ] at hK1
    have hK : Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) = Cardinal.mk ℂ := by
      rw [Cardinal.mk_complex]; exact le_antisymm hK2 hK1
    have heq : Nonempty (AlgebraicClosure ℚ_[ℓ] ≃ ℂ) := Cardinal.eq.mp hK
    have hlt : Cardinal.aleph0 < Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) := by
      rw [le_antisymm hK2 hK1]; exact Cardinal.aleph0_lt_continuum
    obtain ⟨e⟩ := IsAlgClosed.ringEquiv_of_equiv_of_charZero hlt heq
    exact ⟨e.toRingHom.comp (algebraMap ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ]))⟩
  obtain ⟨σ⟩ := hσ

  have hinv : ∀ (m n : ℕ) (P : Matrix (Fin m) (Fin n) ℚ_[ℓ]),
      (∀ v : Fin m → ℚ_[ℓ], Matrix.vecMul v P = 0 → v = 0) →
      (∀ w : Fin n → ℚ_[ℓ], P.mulVec w = 0 → w = 0) →
      ∃ Q : Matrix (Fin n) (Fin m) ℚ_[ℓ], P * Q = 1 ∧ Q * P = 1 := by
    intro m n P hv hw
    have h1 : Function.Injective (Matrix.mulVecLin P) := by
      rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
      intro w hw'; exact hw w hw'
    have h2 : Function.Injective (Matrix.vecMulLinear P) := by
      rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
      intro v hv'; exact hv v hv'
    have ha := LinearMap.finrank_le_finrank_of_injective h1
    have hb := LinearMap.finrank_le_finrank_of_injective h2
    simp only [Module.finrank_fintype_fun_eq_card, Fintype.card_fin] at ha hb
    obtain rfl := le_antisymm hb ha
    have hu : IsUnit P := (Matrix.mulVec_injective_iff_isUnit).mp h1
    have hd : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).mp hu
    exact ⟨P⁻¹, Matrix.mul_nonsing_inv P hd, Matrix.nonsing_inv_mul P hd⟩

  set c : ℚ_[ℓ] := (Nat.card F : ℚ_[ℓ]) ^ d with hc
  let r : ℕ → ℕ := fun i => Module.finrank ℚ_[ℓ] (V i)
  let b : ∀ i, Module.Basis (Fin (r i)) ℚ_[ℓ] (V i) := fun i => Module.finBasis ℚ_[ℓ] (V i)
  let M0 : ∀ i, Matrix (Fin (r i)) (Fin (r i)) ℚ_[ℓ] :=
    fun i => LinearMap.toMatrix (b i) (b i) (Φ i)
  let P0 : ∀ i, Matrix (Fin (r i)) (Fin (r (2 * d - i))) ℚ_[ℓ] :=
    fun i => LinearMap.toMatrix₂ (b i) (b (2 * d - i)) (B i)
  have hpair0 : ∀ i ≤ 2 * d, (M0 i).transpose * P0 i * M0 (2 * d - i) = c • P0 i := by
    intro i hi
    have hcB : (B i).compl₁₂ (Φ i) (Φ (2 * d - i)) = c • B i := by
      apply LinearMap.ext₂
      intro x y
      rw [LinearMap.compl₁₂_apply, hcomp i hi x y]
      rfl
    have := congrArg (LinearMap.toMatrix₂ (b i) (b (2 * d - i))) hcB
    rw [LinearMap.toMatrix₂_compl₁₂ (b i) (b (2 * d - i)), map_smul] at this
    exact this
  have hL0 : ∀ i ≤ 2 * d, ∀ v : Fin (r i) → ℚ_[ℓ], Matrix.vecMul v (P0 i) = 0 → v = 0 := by
    intro i hi v hv
    have hx : ∀ j, B i ((b i).equivFun.symm v) (b (2 * d - i) j) = 0 := by
      intro j
      have h := congrFun hv j
      simp only [Matrix.vecMul, dotProduct, P0, LinearMap.toMatrix₂_apply, Pi.zero_apply] at h
      rw [Module.Basis.equivFun_symm_apply, map_sum, LinearMap.sum_apply]
      simpa [map_smul, LinearMap.smul_apply] using h
    have hB0 : B i ((b i).equivFun.symm v) = 0 :=
      (b (2 * d - i)).ext (fun j => by rw [hx j]; rfl)
    have h0 := hL i hi _ (fun y => by rw [hB0]; rfl)
    exact (LinearEquiv.map_eq_zero_iff (b i).equivFun.symm).mp h0
  have hR0 : ∀ i ≤ 2 * d, ∀ w : Fin (r (2 * d - i)) → ℚ_[ℓ], (P0 i).mulVec w = 0 → w = 0 := by
    intro i hi w hw
    have hx : ∀ k, (B i).flip ((b (2 * d - i)).equivFun.symm w) (b i k) = 0 := by
      intro k
      have h := congrFun hw k
      simp only [Matrix.mulVec, dotProduct, P0, LinearMap.toMatrix₂_apply, Pi.zero_apply] at h
      rw [LinearMap.flip_apply, Module.Basis.equivFun_symm_apply, map_sum]
      simpa [map_smul, mul_comm] using h
    have hB0 : (B i).flip ((b (2 * d - i)).equivFun.symm w) = 0 :=
      (b i).ext (fun k => by rw [hx k]; rfl)
    have h0 := hR i hi _ (fun x => by
      have := LinearMap.congr_fun hB0 x
      rw [LinearMap.flip_apply] at this
      exact this)
    exact (LinearEquiv.map_eq_zero_iff (b (2 * d - i)).equivFun.symm).mp h0
  have htrM : ∀ i n, ((M0 i) ^ n).trace = LinearMap.trace ℚ_[ℓ] (V i) (Φ i ^ n) := by
    intro i n
    rw [LinearMap.trace_eq_matrix_trace ℚ_[ℓ] (b i), LinearMap.toMatrix_pow]

  have hmap1 : ∀ (m : ℕ), (1 : Matrix (Fin m) (Fin m) ℚ_[ℓ]).map σ = 1 := fun m =>
    Matrix.map_one σ (map_zero σ) (map_one σ)
  refine ⟨r, fun i => (M0 i).map σ, fun i => (P0 i).map σ, ?_, ?_⟩
  · intro i hi
    obtain ⟨Q, hPQ, hQP⟩ := hinv _ _ (P0 i) (hL0 i hi) (hR0 i hi)
    have hPQσ : (P0 i).map σ * Q.map σ = 1 := by rw [← Matrix.map_mul, hPQ, hmap1]
    have hQPσ : Q.map σ * (P0 i).map σ = 1 := by rw [← Matrix.map_mul, hQP, hmap1]
    refine ⟨?_, ?_, ?_⟩
    · have h := congrArg (fun A => A.map σ) (hpair0 i hi)
      simp only [Matrix.map_mul, Matrix.transpose_map] at h
      rw [h]
      ext k j
      simp [Matrix.map_apply, Matrix.smul_apply, hc, map_pow, map_natCast]
    · intro v hv
      calc v = Matrix.vecMul v ((P0 i).map σ * Q.map σ) := by rw [hPQσ, Matrix.vecMul_one]
        _ = Matrix.vecMul (Matrix.vecMul v ((P0 i).map σ)) (Q.map σ) := by
          rw [Matrix.vecMul_vecMul]
        _ = 0 := by rw [hv, Matrix.zero_vecMul]
    · intro w hw
      calc w = (Q.map σ * (P0 i).map σ).mulVec w := by rw [hQPσ, Matrix.one_mulVec]
        _ = (Q.map σ).mulVec (((P0 i).map σ).mulVec w) := by rw [Matrix.mulVec_mulVec]
        _ = 0 := by rw [hw, Matrix.mulVec_zero]
  · intro E _ _ _
    have h := congrArg σ (htr E)
    rw [map_natCast] at h
    rw [h, map_sum]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [map_mul, map_pow, map_neg, map_one, ← htrM i, ← Matrix.map_pow]
    simp [Matrix.trace, Matrix.diag, map_sum]

end GRWTSK.FiniteFieldWeil
