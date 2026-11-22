import GRWTSK.AlgebraicGeometry.Alterations.RegularProjectiveAlteration

/-!
# Purity descent, alternating traces, and signed complex eigenvalue data

Source candidate split from `weil_conjecture_main.lean`, lines 51400–51842.
See the adjacent `FrobeniusPurityAndTrace.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wc_purity (F : Type u) [Finite F] [Field F] (X : Over (Spec (.of F)))
    [GeometricallyIrreducible X.hom] [IsProper X.hom] (d : ℕ) [SmoothOfRelativeDimension d X.hom]
    (ℓ : ℕ) [Fact (Nat.Prime ℓ)] (hℓ : ¬ ℓ ∣ Nat.card F)
    (h : WeaklyEtale (Limits.pullback.fst X.hom
          (Spec.map (CommRingCat.ofHom (algebraMap F (AlgebraicClosure F)))))) :
    ∀ i ≤ 2 * d, ∀ (r : ℕ) (e : wcCoh F X h ℓ i ≃+ (Fin r → ℚ_[ℓ])),
      (∀ (c : ℚ_[ℓ]) (x : wcCoh F X h ℓ i), e (wcCohScalar F X h ℓ i c x) = c • e x) →
      ∀ μ ∈ (wcAddEquivMatrix e (wcCohFrob F X h ℓ i)).charpoly.aroots (AlgebraicClosure ℚ_[ℓ]),
      ∀ ι : AlgebraicClosure ℚ_[ℓ] ≃+* ℂ, ‖ι μ‖ = √((Nat.card F : ℝ) ^ i) :=
by
  classical

  have s6 : ∀ (F₀ : Type u) [Field F₀] [Finite F₀] (X₀ : Over (Spec (.of F₀)))
      (h₀ : WeaklyEtale (Limits.pullback.fst X₀.hom
          (Spec.map (CommRingCat.ofHom (algebraMap F₀ (AlgebraicClosure F₀))))))
      (i : ℕ) (c : ℚ_[ℓ]) (x : wcCoh F₀ X₀ h₀ ℓ i),
      wcCohFrob F₀ X₀ h₀ ℓ i (wcCohScalar F₀ X₀ h₀ ℓ i c x) =
        wcCohScalar F₀ X₀ h₀ ℓ i c (wcCohFrob F₀ X₀ h₀ ℓ i x) := by
    intro F₀ _ _ X₀ h₀ i c x
    show (Abelian.Ext.mk₀ (wcFreeSheafMap X₀.left (wcGeomFrob F₀ X₀ h₀))).comp
        (x.comp (Abelian.Ext.mk₀ (wcLadicScalar X₀.left ℓ c)) (add_zero i)) (zero_add i) =
      ((Abelian.Ext.mk₀ (wcFreeSheafMap X₀.left (wcGeomFrob F₀ X₀ h₀))).comp x (zero_add i)).comp
        (Abelian.Ext.mk₀ (wcLadicScalar X₀.left ℓ c)) (add_zero i)
    exact (Abelian.Ext.comp_assoc _ _ _ (zero_add i) (add_zero i) (by omega)).symm

  have s4 : ∀ {r r' : ℕ} (m : ℕ) (A : Matrix (Fin r) (Fin r) ℚ_[ℓ])
      (B : Matrix (Fin r') (Fin r') ℚ_[ℓ]) (P : Matrix (Fin r') (Fin r) ℚ_[ℓ]),
      (∀ v : Fin r → ℚ_[ℓ], P.mulVec v = 0 → v = 0) → P * A ^ m = B * P →
      ∀ μ ∈ A.charpoly.aroots (AlgebraicClosure ℚ_[ℓ]),
        μ ^ m ∈ B.charpoly.aroots (AlgebraicClosure ℚ_[ℓ]) := by
    intro r r' m A B P hP hPA μ hμ
    set f : ℚ_[ℓ] →+* AlgebraicClosure ℚ_[ℓ] := algebraMap ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ]) with hf
    have hker : LinearMap.ker (Matrix.toLin' P) = ⊥ := by
      rw [LinearMap.ker_eq_bot']
      intro v hv
      exact hP v (by rwa [Matrix.toLin'_apply] at hv)
    obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective _ hker
    have hQP : LinearMap.toMatrix' g * P = 1 := by
      have := congrArg LinearMap.toMatrix' hg
      rwa [LinearMap.toMatrix'_comp, LinearMap.toMatrix'_toLin', LinearMap.toMatrix'_id] at this
    have hQPL : (LinearMap.toMatrix' g).map f * P.map f = 1 := by
      rw [← Matrix.map_mul, hQP, Matrix.map_one _ (map_zero f) (map_one f)]
    have hPAL : P.map f * A.map f ^ m = B.map f * P.map f := by
      rw [← Matrix.map_pow, ← Matrix.map_mul, ← Matrix.map_mul, hPA]
    rw [Polynomial.mem_aroots] at hμ
    obtain ⟨_, hμ⟩ := hμ
    have hdet : (Matrix.scalar (Fin r) μ - A.map f).det = 0 := by
      rw [← Matrix.eval_charpoly, Matrix.charpoly_map, Polynomial.eval_map, ← Polynomial.aeval_def]
      exact hμ
    obtain ⟨v, hv0, hv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hdet
    have hAv : (A.map f).mulVec v = μ • v := by
      rw [Matrix.sub_mulVec, sub_eq_zero] at hv
      rw [← hv, Matrix.scalar_apply]
      ext x
      simp [Matrix.mulVec_diagonal]
    have hAkv : ∀ k : ℕ, (A.map f ^ k).mulVec v = μ ^ k • v := by
      intro k
      induction k with
      | zero => simp
      | succ k ih =>
        rw [pow_succ (A.map f), ← Matrix.mulVec_mulVec, hAv, Matrix.mulVec_smul, ih, smul_smul,
          ← pow_succ']
    have hw0 : (P.map f).mulVec v ≠ 0 := by
      intro hw
      apply hv0
      have e1 : ((LinearMap.toMatrix' g).map f).mulVec ((P.map f).mulVec v) = v := by
        rw [Matrix.mulVec_mulVec, hQPL, Matrix.one_mulVec]
      rw [← e1, hw, Matrix.mulVec_zero]
    have hBw : (B.map f).mulVec ((P.map f).mulVec v) = μ ^ m • (P.map f).mulVec v := by
      rw [Matrix.mulVec_mulVec, ← hPAL, ← Matrix.mulVec_mulVec, hAkv, Matrix.mulVec_smul]
    have hdet' : (Matrix.scalar (Fin r') (μ ^ m) - B.map f).det = 0 := by
      apply Matrix.exists_mulVec_eq_zero_iff.mp
      refine ⟨(P.map f).mulVec v, hw0, ?_⟩
      rw [Matrix.sub_mulVec, hBw, Matrix.scalar_apply, sub_eq_zero]
      ext x
      simp [Matrix.mulVec_diagonal]
    rw [Polynomial.mem_aroots]
    refine ⟨(Matrix.charpoly_monic B).ne_zero, ?_⟩
    rw [Polynomial.aeval_def, ← Polynomial.eval_map, ← Matrix.charpoly_map, Matrix.eval_charpoly]
    exact hdet'

  have s5 : ∀ {V V' : Type (u+1)} [AddCommGroup V] [AddCommGroup V'] {r r' : ℕ}
      (e : V ≃+ (Fin r → ℚ_[ℓ])) (e' : V' ≃+ (Fin r' → ℚ_[ℓ]))
      (s : ℚ_[ℓ] → V →+ V) (s' : ℚ_[ℓ] → V' →+ V')
      (he : ∀ (c : ℚ_[ℓ]) (x : V), e (s c x) = c • e x)
      (he' : ∀ (c : ℚ_[ℓ]) (x : V'), e' (s' c x) = c • e' x)
      (Φ : V →+ V) (Φ' : V' →+ V')
      (hΦ : ∀ (c : ℚ_[ℓ]) (x : V), Φ (s c x) = s c (Φ x))
      (hΦ' : ∀ (c : ℚ_[ℓ]) (x : V'), Φ' (s' c x) = s' c (Φ' x))
      (ψ : V →+ V') (hψ : Function.Injective ψ)
      (hψs : ∀ (c : ℚ_[ℓ]) (x : V), ψ (s c x) = s' c (ψ x))
      (m : ℕ) (hψΦ : ∀ x : V, ψ ((⇑Φ)^[m] x) = Φ' (ψ x)),
      ∃ P : Matrix (Fin r') (Fin r) ℚ_[ℓ], (∀ v : Fin r → ℚ_[ℓ], P.mulVec v = 0 → v = 0) ∧
        P * (wcAddEquivMatrix e Φ) ^ m = wcAddEquivMatrix e' Φ' * P := by
    intro V V' _ _ r r' e e' s s' he he' Φ Φ' hΦ hΦ' ψ hψ hψs m hψΦ
    have hes : ∀ (c : ℚ_[ℓ]) (v : Fin r → ℚ_[ℓ]), e.symm (c • v) = s c (e.symm v) := fun c v =>
      e.injective (by rw [he, AddEquiv.apply_symm_apply, AddEquiv.apply_symm_apply])
    have hes' : ∀ (c : ℚ_[ℓ]) (v : Fin r' → ℚ_[ℓ]), e'.symm (c • v) = s' c (e'.symm v) :=
      fun c v => e'.injective (by rw [he', AddEquiv.apply_symm_apply, AddEquiv.apply_symm_apply])
    let LA : (Fin r → ℚ_[ℓ]) →ₗ[ℚ_[ℓ]] (Fin r → ℚ_[ℓ]) :=
      { toFun := fun v => e (Φ (e.symm v))
        map_add' := fun v w => by simp only [map_add]
        map_smul' := fun c v => by simp only [hes, hΦ, he, RingHom.id_apply] }
    let LB : (Fin r' → ℚ_[ℓ]) →ₗ[ℚ_[ℓ]] (Fin r' → ℚ_[ℓ]) :=
      { toFun := fun v => e' (Φ' (e'.symm v))
        map_add' := fun v w => by simp only [map_add]
        map_smul' := fun c v => by simp only [hes', hΦ', he', RingHom.id_apply] }
    let LP : (Fin r → ℚ_[ℓ]) →ₗ[ℚ_[ℓ]] (Fin r' → ℚ_[ℓ]) :=
      { toFun := fun v => e' (ψ (e.symm v))
        map_add' := fun v w => by simp only [map_add]
        map_smul' := fun c v => by simp only [hes, hψs, he', RingHom.id_apply] }
    have hA : wcAddEquivMatrix e Φ = LinearMap.toMatrix' LA := by
      ext a b
      rw [LinearMap.toMatrix'_apply]
      rfl
    have hB : wcAddEquivMatrix e' Φ' = LinearMap.toMatrix' LB := by
      ext a b
      rw [LinearMap.toMatrix'_apply]
      rfl
    have hAk : ∀ (k : ℕ) (v : Fin r → ℚ_[ℓ]),
        ((wcAddEquivMatrix e Φ) ^ k).mulVec v = e ((⇑Φ)^[k] (e.symm v)) := by
      intro k
      induction k with
      | zero => intro v; simp
      | succ k ih =>
        intro v
        rw [pow_succ', ← Matrix.mulVec_mulVec, ih, hA, LinearMap.toMatrix'_mulVec]
        show e (Φ (e.symm (e ((⇑Φ)^[k] (e.symm v))))) = _
        rw [AddEquiv.symm_apply_apply, Function.iterate_succ_apply']
    refine ⟨LinearMap.toMatrix' LP, ?_, ?_⟩
    · intro v hv
      rw [LinearMap.toMatrix'_mulVec] at hv
      change e' (ψ (e.symm v)) = 0 at hv
      have h1 : ψ (e.symm v) = 0 := e'.injective (hv.trans (map_zero e').symm)
      have h2 : e.symm v = 0 := hψ (h1.trans (map_zero ψ).symm)
      rw [← AddEquiv.apply_symm_apply e v, h2, map_zero]
    · apply Matrix.toLin'.injective
      apply LinearMap.ext
      intro v
      rw [Matrix.toLin'_apply, Matrix.toLin'_apply, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
        hAk, hB, LinearMap.toMatrix'_mulVec, LinearMap.toMatrix'_mulVec, LinearMap.toMatrix'_mulVec]
      show e' (ψ (e.symm (e ((⇑Φ)^[m] (e.symm v))))) = e' (Φ' (e'.symm (e' (ψ (e.symm v)))))
      rw [AddEquiv.symm_apply_apply, AddEquiv.symm_apply_apply, hψΦ]

  intro i hi r e he μ hμ ι
  obtain ⟨F', _, _, _, _, Y, _, _, _, π, hπ, hsurj, hgf, N, j, hj, hjY⟩ :=
    wc_projective_alteration F X d
  set m := Module.finrank F F' with hmdef
  have hm : 0 < m := Module.finrank_pos
  have hq' : Nat.card F' = Nat.card F ^ m := Module.natCard_eq_pow_finrank
  have hℓ' : ¬ ℓ ∣ Nat.card F' := by
    rw [hq']
    intro hd
    exact hℓ ((Fact.out : ℓ.Prime).dvd_of_dvd_pow hd)
  have h' : WeaklyEtale (Limits.pullback.fst Y.hom
      (Spec.map (CommRingCat.ofHom (algebraMap F' (AlgebraicClosure F'))))) :=
    MorphismProperty.of_isPullback (P := @WeaklyEtale) (IsPullback.of_hasPullback _ _).flip
      (wc_weaklyEtale_algebraicClosure F')
  obtain ⟨ψ, hψ, hψs, hψΦ⟩ := wc_pullback_injective F X d ℓ hℓ h F' Y π hπ hsurj hgf h' i
  obtain ⟨r', e', he'⟩ := wc_coh_finite F' Y d ℓ hℓ' h' i
  obtain ⟨P, hPinj, hPA⟩ := s5 e e' (wcCohScalar F X h ℓ i) (wcCohScalar F' Y h' ℓ i) he he'
    (wcCohFrob F X h ℓ i) (wcCohFrob F' Y h' ℓ i) (s6 F X h i) (s6 F' Y h' i) ψ hψ hψs m hψΦ
  have hμm := s4 m _ _ P hPinj hPA μ hμ
  have hY := wc_purity_projective F' Y d N j hj hjY ℓ hℓ' h' i hi r' e' he' (μ ^ m) hμm ι
  rw [map_pow, norm_pow, hq', Nat.cast_pow] at hY
  have hqi : (0 : ℝ) ≤ (Nat.card F : ℝ) ^ i := by positivity
  have hy : √((Nat.card F : ℝ) ^ i) ^ m = √(((Nat.card F : ℝ) ^ m) ^ i) := by
    have e1 : (√((Nat.card F : ℝ) ^ i) ^ m) ^ 2 = ((Nat.card F : ℝ) ^ i) ^ m := by
      rw [← pow_mul, mul_comm, pow_mul, Real.sq_sqrt hqi]
    have e2 : (√(((Nat.card F : ℝ) ^ m) ^ i)) ^ 2 = ((Nat.card F : ℝ) ^ i) ^ m := by
      rw [Real.sq_sqrt (by positivity), ← pow_mul, ← pow_mul, mul_comm]
    exact (pow_left_inj₀ (by positivity) (Real.sqrt_nonneg _) two_ne_zero).mp (e1.trans e2.symm)
  exact (pow_left_inj₀ (norm_nonneg _) (Real.sqrt_nonneg _) hm.ne').mp (hY.trans hy.symm)

theorem ladic_frobenius_pure_trace_matrices (F : Type u) [Finite F] [Field F] (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom] (d : ℕ) [SmoothOfRelativeDimension d X.hom] : ∃ (ℓ : ℕ) (_ : Fact (Nat.Prime ℓ)) (r : ℕ → ℕ) (M : ∀ i, Matrix (Fin (r i)) (Fin (r i)) ℚ_[ℓ]), (∀ i ≤ 2 * d, ∀ μ ∈ (M i).charpoly.aroots (AlgebraicClosure ℚ_[ℓ]), ∀ ι : AlgebraicClosure ℚ_[ℓ] ≃+* ℂ, ‖ι μ‖ = √((Nat.card F : ℝ) ^ i)) ∧ ∀ (E : Type u) [Field E] [Algebra F E] [FiniteDimensional F E], (Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℚ_[ℓ]) = ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((M i) ^ Module.finrank F E).trace :=
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

  refine ⟨ℓ, hfact, r, fun i => wcAddEquivMatrix (e i) (wcCohFrob F X h ℓ i), ?_, ?_⟩
  · intro i hi μ hμ ι
    exact wc_purity F X d ℓ hℓ h i hi (r i) (e i) (he i) μ hμ ι
  · intro E _ _ _
    exact wc_trace_formula F X d ℓ hℓ h (wc_coh_vanishing F X d ℓ hℓ h) r _
      (fun i _ => ⟨e i, he i, rfl⟩) E

theorem pure_virtual_eigenvalue_family (F : Type u) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom]
    (d : ℕ) [SmoothOfRelativeDimension d X.hom] :
    ∃ B : ℕ → Multiset ℂ,
      (∀ i ≤ 2 * d, ∀ β ∈ B i, ∀ φ : ℂ ≃+* ℂ, ‖φ β‖ = √((Nat.card F : ℝ) ^ i)) ∧
      ∀ (E : Type u) [Field E] [Algebra F E] [FiniteDimensional F E],
        (Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℂ) =
        ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((B i).map (· ^ Module.finrank F E)).sum :=
by
  classical
  obtain ⟨ℓ, hℓ, r, M, hpure, htr⟩ := ladic_frobenius_pure_trace_matrices F X d
  haveI := hℓ

  have s1 : Nonempty (AlgebraicClosure ℚ_[ℓ] ≃+* ℂ) := by
    have h1 : Cardinal.mk ℚ_[ℓ] ≤ Cardinal.mk (PadicSeq ℓ) :=
      Cardinal.mk_le_of_surjective (f := Padic.mk)
        (fun x => Quotient.inductionOn x (fun s => ⟨s, rfl⟩))
    have h2 : Cardinal.mk (PadicSeq ℓ) ≤ Cardinal.mk (ℕ → ℚ) := Cardinal.mk_subtype_le _
    have h3 : Cardinal.mk (ℕ → ℚ) = Cardinal.continuum := by
      rw [← Cardinal.power_def, Cardinal.mkRat, Cardinal.mk_nat, Cardinal.aleph0_power_aleph0]
    have hup : Cardinal.mk ℚ_[ℓ] ≤ Cardinal.continuum := h1.trans (h2.trans h3.le)
    have hlo : Cardinal.continuum ≤ Cardinal.mk ℚ_[ℓ] :=
      continuum_le_cardinal_of_nontriviallyNormedField ℚ_[ℓ]
    have hK1 : Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) ≤ Cardinal.continuum := by
      refine (Algebra.IsAlgebraic.cardinalMk_le_max ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ])).trans ?_
      exact max_le hup Cardinal.aleph0_le_continuum
    have hK2 : Cardinal.continuum ≤ Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) :=
      hlo.trans (Cardinal.mk_le_of_injective (algebraMap ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ])).injective)
    have hK : Cardinal.mk (AlgebraicClosure ℚ_[ℓ]) = Cardinal.continuum := le_antisymm hK1 hK2
    apply IsAlgClosed.ringEquiv_of_equiv_of_charZero
    · rw [hK]; exact Cardinal.aleph0_lt_continuum
    · exact Cardinal.eq.mp (hK.trans Cardinal.mk_complex.symm)
  obtain ⟨ι₀⟩ := s1
  set j : ℚ_[ℓ] →+* ℂ :=
    (ι₀ : AlgebraicClosure ℚ_[ℓ] →+* ℂ).comp (algebraMap ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ])) with hj
  refine ⟨fun i => ((M i).map j).charpoly.roots, ?_, ?_⟩
  ·
    intro i hi β hβ φ
    have hp0 : (M i).charpoly ≠ 0 := (Matrix.charpoly_monic (M i)).ne_zero
    have hβ' : β ∈ ((M i).charpoly.map j).roots := by
      rw [← Matrix.charpoly_map]; exact hβ
    have hev : Polynomial.eval₂ j β (M i).charpoly = 0 :=
      (Polynomial.mem_roots_map hp0).mp hβ'
    set μ := ι₀.symm β with hμ
    have hιμ : ι₀ μ = β := RingEquiv.apply_symm_apply ι₀ β
    have haev : Polynomial.aeval μ (M i).charpoly = 0 := by
      apply ι₀.injective
      rw [map_zero, Polynomial.aeval_def]
      have := Polynomial.hom_eval₂ (M i).charpoly
        (algebraMap ℚ_[ℓ] (AlgebraicClosure ℚ_[ℓ])) (ι₀ : AlgebraicClosure ℚ_[ℓ] →+* ℂ) μ
      simp only [RingHom.coe_coe] at this
      rw [this, hιμ]
      exact hev
    have hμroot : μ ∈ (M i).charpoly.aroots (AlgebraicClosure ℚ_[ℓ]) :=
      Polynomial.mem_aroots.mpr ⟨hp0, haev⟩
    have := hpure i hi μ hμroot (ι₀.trans φ)
    rw [RingEquiv.trans_apply, hιμ] at this
    exact this
  ·
    intro E _ _ _
    have h := congrArg j (htr E)
    rw [map_natCast] at h
    rw [h, map_sum]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [map_mul, map_pow, map_neg, map_one, AddMonoidHom.map_trace, Matrix.map_pow,
      matrix_trace_pow_eq_sum_roots_pow]

theorem point_count_purity (F : Type u) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom]
    (d : ℕ) [SmoothOfRelativeDimension d X.hom] (m : ℂ →₀ ℤ) (hm0 : (0 : ℂ) ∉ m.support)
    (hmE : ∀ (E : Type u) [Field E] [Algebra F E] [FiniteDimensional F E],
        (Nat.card (.mk (Spec.map <| CommRingCat.ofHom <| algebraMap F E) ⟶ X) : ℂ) =
        ∑ α ∈ m.support, (m α : ℂ) * α ^ Module.finrank F E) :
    ∀ α ∈ m.support, ∃ i ≤ 2 * d, 0 < (-1 : ℤ) ^ i * m α ∧
      ∀ φ : ℂ ≃+* ℂ, ‖φ α‖ = √((Nat.card F : ℝ) ^ i) :=
by
  classical

  have hq : 2 ≤ Nat.card F := Finite.one_lt_card

  have hext : ∀ n : ℕ, 1 ≤ n → ∃ (E : Type u) (_ : Field E) (_ : Algebra F E),
      FiniteDimensional F E ∧ Module.finrank F E = n := by
    intro n hn
    haveI : Fact (Nat.Prime (ringChar F)) := ⟨CharP.char_is_prime F (ringChar F)⟩
    haveI : NeZero n := ⟨by omega⟩
    refine ⟨ULift.{u} (FiniteField.Extension F (ringChar F) n), inferInstance, inferInstance,
      ?_, ?_⟩
    · exact Module.Finite.equiv (ULift.moduleEquiv (R := F)).symm
    · rw [LinearEquiv.finrank_eq (ULift.moduleEquiv (R := F))]
      exact FiniteField.finrank_extension F (ringChar F) n

  obtain ⟨B, hBpure, hBtr⟩ := pure_virtual_eigenvalue_family F X d
  have hqpos : (0 : ℝ) < (Nat.card F : ℝ) := by exact_mod_cast (by omega : 0 < Nat.card F)

  have hB0 : ∀ i ≤ 2 * d, (0 : ℂ) ∉ B i := by
    intro i hi h0
    have h1 := hBpure i hi 0 h0 (RingEquiv.refl ℂ)
    rw [RingEquiv.refl_apply, norm_zero] at h1
    have h2 : (0 : ℝ) < √((Nat.card F : ℝ) ^ i) := Real.sqrt_pos.mpr (pow_pos hqpos i)
    linarith

  have hpow : ∀ n : ℕ, 1 ≤ n → ∑ α ∈ m.support, (m α : ℂ) * α ^ n =
      ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((B i).map (· ^ n)).sum := by
    intro n hn
    obtain ⟨E, _, _, _, hE⟩ := hext n hn
    have h1 := hmE E
    have h2 := hBtr E
    rw [hE] at h1 h2
    rw [← h1, h2]

  have s1 : ∀ (T : Finset ℂ) (c : ℂ → ℂ), (0 : ℂ) ∉ T →
      (∀ n : ℕ, 1 ≤ n → ∑ β ∈ T, c β * β ^ n = 0) → ∀ β ∈ T, c β = 0 := by
    intro T
    induction T using Finset.induction_on with
    | empty => intro c _ _ β hβ; simp at hβ
    | insert a T' haT ih =>
      intro c h0 H
      have ha0 : a ≠ 0 := fun h => h0 (by rw [← h]; exact Finset.mem_insert_self a T')
      have h0' : (0 : ℂ) ∉ T' := fun h => h0 (Finset.mem_insert_of_mem h)
      have H' : ∀ n : ℕ, 1 ≤ n → c a * a ^ n + ∑ β ∈ T', c β * β ^ n = 0 := by
        intro n hn
        have := H n hn
        rwa [Finset.sum_insert haT] at this
      have hc' : ∀ β ∈ T', c β * (β - a) = 0 := by
        apply ih (fun β => c β * (β - a)) h0'
        intro n hn
        have e1 := H' (n + 1) (by omega)
        have e2 := H' n hn
        have key : ∑ β ∈ T', c β * (β - a) * β ^ n
            = (c a * a ^ (n + 1) + ∑ β ∈ T', c β * β ^ (n + 1))
              - a * (c a * a ^ n + ∑ β ∈ T', c β * β ^ n) := by
          rw [mul_add, Finset.mul_sum]
          have : ∑ β ∈ T', c β * (β - a) * β ^ n
              = ∑ β ∈ T', (c β * β ^ (n + 1) - a * (c β * β ^ n)) := by
            apply Finset.sum_congr rfl
            intro β _
            ring
          rw [this, Finset.sum_sub_distrib]
          ring
        rw [key, e1, e2]
        ring
      have hcT : ∀ β ∈ T', c β = 0 := by
        intro β hβ
        have hne : β - a ≠ 0 := sub_ne_zero.mpr (fun h => haT (by rw [← h]; exact hβ))
        exact (mul_eq_zero.mp (hc' β hβ)).resolve_right hne
      have e1 := H' 1 le_rfl
      rw [Finset.sum_eq_zero (fun β hβ => by rw [hcT β hβ, zero_mul]), add_zero, pow_one] at e1
      have hca : c a = 0 := (mul_eq_zero.mp e1).resolve_right ha0
      intro β hβ
      rcases Finset.mem_insert.mp hβ with h | h
      · rw [h]; exact hca
      · exact hcT β h

  have hS : ∀ α : ℂ, m α = ∑ i ∈ Finset.Iic (2 * d), (-1 : ℤ) ^ i * ((B i).count α : ℤ) := by
    set U := (Finset.Iic (2 * d)).biUnion (fun i => (B i).toFinset) with hU
    set T := m.support ∪ U with hT
    have hT0 : (0 : ℂ) ∉ T := by
      intro h
      rcases Finset.mem_union.mp h with h | h
      · exact hm0 h
      · obtain ⟨i, hi, h0⟩ := Finset.mem_biUnion.mp h
        exact hB0 i (Finset.mem_Iic.mp hi) (Multiset.mem_toFinset.mp h0)
    have hBT : ∀ i ∈ Finset.Iic (2 * d), ∀ n : ℕ, ((B i).map (· ^ n)).sum
        = ∑ β ∈ T, ((B i).count β : ℂ) * β ^ n := by
      intro i hi n
      rw [Finset.sum_multiset_map_count]
      simp only [nsmul_eq_mul]
      apply Finset.sum_subset
      · intro β hβ
        exact Finset.mem_union_right _ (Finset.mem_biUnion.mpr ⟨i, hi, hβ⟩)
      · intro β _ hβ
        rw [Multiset.count_eq_zero.mpr (fun h => hβ (Multiset.mem_toFinset.mpr h))]
        simp
    have hST : ∀ n : ℕ, ∑ α ∈ m.support, (m α : ℂ) * α ^ n = ∑ β ∈ T, (m β : ℂ) * β ^ n := by
      intro n
      apply Finset.sum_subset Finset.subset_union_left
      intro β _ hβ
      rw [Finsupp.notMem_support_iff.mp hβ]
      simp
    have hcT : ∀ β ∈ T, ((m β : ℂ) - ∑ i ∈ Finset.Iic (2 * d),
        (-1) ^ i * ((B i).count β : ℂ)) = 0 := by
      refine s1 T (fun β => (m β : ℂ) - ∑ i ∈ Finset.Iic (2 * d),
        (-1) ^ i * ((B i).count β : ℂ)) hT0 ?_
      intro n hn
      have h := hpow n hn
      have h' : ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((B i).map (· ^ n)).sum
          = ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ∑ β ∈ T, ((B i).count β : ℂ) * β ^ n :=
        Finset.sum_congr rfl (fun i hi => by rw [hBT i hi n])
      have e : ∑ β ∈ T, (∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((B i).count β : ℂ)) * β ^ n
          = ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ∑ β ∈ T, ((B i).count β : ℂ) * β ^ n := by
        simp only [Finset.sum_mul, Finset.mul_sum]
        rw [Finset.sum_comm]
        refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun β _ => by ring))
      simp only [sub_mul, Finset.sum_sub_distrib]
      rw [e, ← hST n, h, h', sub_self]
    intro α
    by_cases hα : α ∈ T
    · have h := hcT α hα
      rw [sub_eq_zero] at h
      exact_mod_cast h
    · have hαS : α ∉ m.support := fun h => hα (Finset.mem_union_left _ h)
      rw [Finsupp.notMem_support_iff.mp hαS]
      symm
      apply Finset.sum_eq_zero
      intro i hi
      rw [Multiset.count_eq_zero.mpr (fun h => hα (Finset.mem_union_right _
        (Finset.mem_biUnion.mpr ⟨i, hi, Multiset.mem_toFinset.mpr h⟩)))]
      simp

  intro α hα
  have hmα : m α ≠ 0 := Finsupp.mem_support_iff.mp hα
  have hsum := hS α
  rw [hsum] at hmα
  obtain ⟨i, hi, hne⟩ := Finset.exists_ne_zero_of_sum_ne_zero hmα
  have hcnt : (B i).count α ≠ 0 := by
    intro h
    apply hne
    rw [h]
    simp
  have hαB : α ∈ B i := Multiset.count_ne_zero.mp hcnt
  have hi' : i ≤ 2 * d := Finset.mem_Iic.mp hi
  have huniq : ∀ j ∈ Finset.Iic (2 * d), j ≠ i → (B j).count α = 0 := by
    intro j hj hji
    apply Multiset.count_eq_zero.mpr
    intro hαj
    apply hji
    have e1 := hBpure j (Finset.mem_Iic.mp hj) α hαj (RingEquiv.refl ℂ)
    have e2 := hBpure i hi' α hαB (RingEquiv.refl ℂ)
    rw [e1] at e2
    have e3 : (Nat.card F : ℝ) ^ j = (Nat.card F : ℝ) ^ i :=
      (Real.sqrt_inj (by positivity) (by positivity)).mp e2
    have e4 : Nat.card F ^ j = Nat.card F ^ i := by exact_mod_cast e3
    exact Nat.pow_right_injective hq e4
  have hcollapse : m α = (-1 : ℤ) ^ i * ((B i).count α : ℤ) := by
    rw [hsum, Finset.sum_eq_single_of_mem i hi]
    intro j hj hji
    rw [huniq j hj hji]
    simp
  refine ⟨i, hi', ?_, fun φ => hBpure i hi' α hαB φ⟩
  rw [hcollapse, ← mul_assoc, ← mul_pow]
  have h1 : ((-1 : ℤ) * (-1)) ^ i = 1 := by norm_num
  rw [h1, one_mul]
  exact_mod_cast Multiset.count_pos.mpr hαB

end GRWTSK.FiniteFieldWeil
