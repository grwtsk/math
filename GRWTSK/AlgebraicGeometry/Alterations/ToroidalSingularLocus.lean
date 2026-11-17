import GRWTSK.AlgebraicGeometry.Alterations.ToroidalBlowupCharts

/-!
# Local regularity and the structure of the singular locus

Source candidate split from `weil_conjecture_main.lean`, lines 23220–24999.
See the adjacent `ToroidalSingularLocus.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_rtsx_pt_basic : ∀ (Z : Scheme.{u}) [IsLocallyNoetherian Z] (B : Set Z) (z : Z), (wcpaDjTorPt Z B z → IsRegularLocalRing (Z.presheaf.stalk z)) ∧ (wcpaDjTorNodeSgl Z B z → z ∈ B) :=
by
  classical

  have hA : ∀ (P : Type u) [CommRing P] [IsLocalRing P] [IsNoetherianRing P] (n : ℕ)
      (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal P) P),
      (n : WithBot ℕ∞) = ringKrullDim P →
      Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal P).map
        (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) →
      IsRegularLocalRing P := by
    intro P _ _ _ n s hn hspan
    let φ : AdicCompletion (IsLocalRing.maximalIdeal P) P →+* P ⧸ IsLocalRing.maximalIdeal P ^ 2 :=
      (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal P) 2).toRingHom
    let mk : P →+* P ⧸ IsLocalRing.maximalIdeal P ^ 2 :=
      Ideal.Quotient.mk (IsLocalRing.maximalIdeal P ^ 2)
    have hφι : φ.comp (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) = mk := by
      ext p
      show (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal P) 2)
        (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p) = _
      rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq]
    choose t ht using fun j =>
      Ideal.Quotient.mk_surjective (I := IsLocalRing.maximalIdeal P ^ 2) (φ (s j))
    have hmk : Function.Surjective mk := Ideal.Quotient.mk_surjective
    have hmap : (Ideal.span (Set.range t)).map mk = (IsLocalRing.maximalIdeal P).map mk := by
      rw [Ideal.map_span, ← Set.range_comp]
      have e1 : (⇑mk ∘ t) = ⇑φ ∘ s := funext ht
      rw [e1, Set.range_comp, ← Ideal.map_span, hspan, Ideal.map_map, hφι]
    have hcm : ∀ I : Ideal P, (I.map mk).comap mk = I ⊔ IsLocalRing.maximalIdeal P ^ 2 := by
      intro I
      rw [Ideal.comap_map_of_surjective' mk hmk]
      show I ⊔ RingHom.ker (Ideal.Quotient.mk (IsLocalRing.maximalIdeal P ^ 2)) = _
      rw [Ideal.mk_ker]
    have hm2 : IsLocalRing.maximalIdeal P ^ 2 ≤ IsLocalRing.maximalIdeal P :=
      Ideal.pow_le_self two_ne_zero
    have hle : Ideal.span (Set.range t) ≤ IsLocalRing.maximalIdeal P := by
      calc Ideal.span (Set.range t) ≤ ((Ideal.span (Set.range t)).map mk).comap mk :=
            Ideal.le_comap_map
        _ = IsLocalRing.maximalIdeal P := by rw [hmap, hcm, sup_eq_left.mpr hm2]
    have hge : IsLocalRing.maximalIdeal P ≤
        Ideal.span (Set.range t) ⊔ IsLocalRing.maximalIdeal P • IsLocalRing.maximalIdeal P := by
      have : IsLocalRing.maximalIdeal P ≤ ((IsLocalRing.maximalIdeal P).map mk).comap mk :=
        Ideal.le_comap_map
      rw [← hmap, hcm, pow_two] at this
      rw [Ideal.smul_eq_mul]
      exact this
    have hFG : (IsLocalRing.maximalIdeal P).FG := IsNoetherian.noetherian _
    have hnak : IsLocalRing.maximalIdeal P ≤ Ideal.span (Set.range t) :=
      Submodule.le_of_le_smul_of_le_jacobson_bot hFG (IsLocalRing.maximalIdeal_le_jacobson _) hge
    have heq : IsLocalRing.maximalIdeal P = Ideal.span (Set.range t) := le_antisymm hnak hle
    apply IsRegularLocalRing.of_spanFinrank_maximalIdeal_le
    rw [← hn, heq]
    have h1 : (Submodule.span P (Set.range t)).spanFinrank ≤ (Set.range t).ncard :=
      Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range t)
    have h2 : (Set.range t).ncard ≤ n := by
      rw [← Set.image_univ]
      calc (t '' Set.univ).ncard ≤ (Set.univ : Set (Fin n)).ncard :=
            Set.ncard_image_le Set.finite_univ
        _ = n := by rw [Set.ncard_univ, Nat.card_fin]
    exact_mod_cast h1.trans h2

  have hB : ∀ (P : Type u) [CommRing P] [IsLocalRing P] (A : Type u) [CommRing A] [IsLocalRing A]
      (n q : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ)
      (e : AdicCompletion (IsLocalRing.maximalIdeal P) P ≃+*
        (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
      (h : Fin q → P) (J : Fin q → Finset (Fin n)), IsUnit v →
      Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A →
      (∀ l, b l ≠ 0 → ∃ i, l ∈ J i) →
      (∀ i, Associated (e (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) (h i)))
        (Ideal.Quotient.mk _ (∏ l ∈ J i, σ l))) →
      ∃ i, h i ∈ IsLocalRing.maximalIdeal P := by
    intro P _ _ A _ _ n q x y v σ b e h J hv hmax hcov hass
    have hÔ : Nontrivial (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
      have : Nontrivial (P ⧸ IsLocalRing.maximalIdeal P ^ 1) := by
        rw [pow_one]
        exact Ideal.Quotient.nontrivial_iff.mpr (IsLocalRing.maximalIdeal.isMaximal P).ne_top
      exact (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal P) 1).toRingHom.domain_nontrivial
    have hQ : Nontrivial (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) := e.injective.nontrivial
    have hIne : Ideal.span {x * y - v * ∏ l, σ l ^ b l} ≠ ⊤ := Ideal.Quotient.nontrivial_iff.mp hQ
    have hFm : x * y - v * ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A :=
      (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr
        (fun hu => hIne (Ideal.span_singleton_eq_top.mpr hu)))
    have hx : x ∈ IsLocalRing.maximalIdeal A := by
      rw [← hmax]
      exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert x _))
    have hσ : ∀ l, σ l ∈ IsLocalRing.maximalIdeal A := by
      intro l
      rw [← hmax]
      exact Ideal.subset_span (Set.mem_union_right _ ⟨l, rfl⟩)
    have hb : ∃ l, b l ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      have hprod : ∏ l, σ l ^ b l = 1 := Finset.prod_eq_one (fun l _ => by rw [hcon l, pow_zero])
      have hvm : v ∈ IsLocalRing.maximalIdeal A := by
        have e1 : v = x * y - (x * y - v * ∏ l, σ l ^ b l) := by rw [hprod]; ring
        rw [e1]
        exact sub_mem (Ideal.mul_mem_right _ _ hx) hFm
      exact (IsLocalRing.mem_maximalIdeal v).mp hvm hv
    obtain ⟨l₀, hl₀⟩ := hb
    obtain ⟨i, hi⟩ := hcov l₀ hl₀
    have hprodm : ∏ l ∈ J i, σ l ∈ IsLocalRing.maximalIdeal A :=
      Ideal.mem_of_dvd _ (Finset.dvd_prod_of_mem σ hi) (hσ l₀)
    have hIle : Ideal.span {x * y - v * ∏ l, σ l ^ b l} ≤ IsLocalRing.maximalIdeal A :=
      Ideal.span_le.mpr (Set.singleton_subset_iff.mpr hFm)
    have hnu : ¬ IsUnit (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})
        (∏ l ∈ J i, σ l)) := by
      intro hu
      obtain ⟨u, hu⟩ := hu.exists_right_inv
      obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
      have h1 : (∏ l ∈ J i, σ l) * c - 1 ∈ Ideal.span {x * y - v * ∏ l, σ l ^ b l} := by
        apply Ideal.Quotient.eq_zero_iff_mem.mp
        rw [map_sub, map_mul, hu, map_one, sub_self]
      have h2 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
        have h3 := sub_mem (Ideal.mul_mem_right c _ hprodm) (hIle h1)
        simpa using h3
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h2)
    refine ⟨i, ?_⟩
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    apply hnu
    exact (hass i).isUnit_iff.mp ((hu.map (algebraMap P _)).map e)

  intro Z _ B z
  refine ⟨?_, ?_⟩
  · rintro ⟨n, q, s, h, J, hn, hspan, -, -, -⟩
    exact hA (Z.presheaf.stalk z) n s hn hspan
  · rintro ⟨n, q, A, _, _, _, x, y, v, σ, b, e, h, J, hv, -, hmax, -, -, hcov, hass, hBz⟩
    obtain ⟨i, hi⟩ := hB (Z.presheaf.stalk z) A n q x y v σ b e h J hv hmax hcov hass
    refine (hBz z (specializes_refl z)).mpr ⟨i, ?_⟩
    rw [TopCat.Presheaf.stalkSpecializes_refl]
    simpa using hi

theorem wcpa_dj_rss_poly_field_regular : ∀ (k : Type u) [Field k] (n : ℕ) (Q : Ideal (MvPolynomial (Fin n) k)) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q) :=
by
  intro k _ n Q _

  have TRANS : PLift (∀ (S : Type u) [CommRing S] (S' : Type u) [CommRing S'], (S ≃+* S') → (∀ (𝔔 : Ideal (S)) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔)) → (∀ (𝔔 : Ideal (S')) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔))) := ⟨by
    intro S _ S' _ e hS 𝔔 _
    have : (𝔔.comap (e : S →+* S')).IsPrime := Ideal.comap_isPrime _ _
    have h := hS (𝔔.comap (e : S →+* S'))
    have H : (𝔔.comap (e : S →+* S')).primeCompl.map e.toMonoidHom = 𝔔.primeCompl := by
      ext x
      constructor
      · rintro ⟨y, hy, rfl⟩
        exact hy
      · intro hx
        refine ⟨e.symm x, ?_, ?_⟩
        · change e (e.symm x) ∉ 𝔔
          simpa using hx
        · simp
    exact IsRegularLocalRing.of_ringEquiv (IsLocalization.ringEquivOfRingEquiv
      (Localization.AtPrime (𝔔.comap (e : S →+* S'))) (Localization.AtPrime 𝔔) e H)⟩

  have FF : PLift (∀ (A : Type u) [CommRing A] [IsLocalRing A], IsField A → IsRegularLocalRing A) := ⟨by
    intro A _ _ hA
    have hm : IsLocalRing.maximalIdeal A = ⊥ := (IsLocalRing.isField_iff_maximalIdeal_eq).mp hA
    have : IsNoetherianRing A := by
      letI := hA.toField
      infer_instance
    exact ⟨by simp [hm, ringKrullDim_eq_zero_of_isField hA]⟩⟩

  have PFR : PLift (∀ (κ : Type u) [Field κ], (∀ (𝔔 : Ideal (Polynomial κ)) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔))) := ⟨by
    intro κ _ 𝔔 _
    have : IsNoetherianRing (Localization.AtPrime 𝔔) :=
      IsLocalization.isNoetherianRing 𝔔.primeCompl (Localization.AtPrime 𝔔) inferInstance
    by_cases h : 𝔔 = ⊥
    · subst h
      apply FF.down
      rw [IsLocalRing.isField_iff_maximalIdeal_eq, ← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_bot]
    · have := IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain (Polynomial κ) h
        (Localization.AtPrime 𝔔)
      obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (Localization.AtPrime 𝔔)
      refine ⟨?_⟩
      rw [hϖ.maximalIdeal_eq, IsDiscreteValuationRing.ringKrullDim_eq_one]
      rw [show Ideal.span {ϖ} = (Localization.AtPrime 𝔔) ∙ ϖ from rfl,
        Submodule.spanFinrank_singleton hϖ.ne_zero]
      rfl⟩

  have FIBRE0 := PLift.up (wc_fgu_flat_fibre_ascent wc_hnas_pfc_regular_flat_ascent)

  have MVPOLY0 : PLift (∀ (n : ℕ) (D : Type u) [CommRing D] [IsNoetherianRing D], (∀ (𝔔 : Ideal (D)) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔)) → (∀ (𝔔 : Ideal (MvPolynomial (Fin n) D)) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔))) := ⟨by
    have POLY0 : ∀ (D : Type u) [CommRing D] [IsNoetherianRing D], (∀ (𝔔 : Ideal (D)) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔)) → (∀ (𝔔 : Ideal (Polynomial D)) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔)) := by
      intro D _ _ hD
      refine FIBRE0.down D (Polynomial D) hD ?_
      intro 𝔮 _
      exact TRANS.down _ _ (polyEquivTensor' D 𝔮.ResidueField).toRingEquiv (PFR.down _)
    intro n
    induction n with
    | zero =>
      intro D _ _ hD
      exact TRANS.down _ _ (MvPolynomial.isEmptyRingEquiv D (Fin 0)).symm hD
    | succ n ih =>
      intro D _ _ hD
      exact TRANS.down _ _ (MvPolynomial.finSuccEquiv D n).symm.toRingEquiv (POLY0 _ (ih D hD))⟩

  have REGk : ∀ (𝔔 : Ideal k) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔) := by
    intro 𝔔 _
    have h : 𝔔 = ⊥ := Ideal.eq_bot_of_prime 𝔔
    subst h
    apply FF.down
    rw [IsLocalRing.isField_iff_maximalIdeal_eq, ← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_bot]

  exact MVPOLY0.down n k REGk Q

theorem wcpa_dj_rss_quot_localization : ∀ (R A : Type u) [CommRing R] [CommRing A] (π : R →+* A), Function.Surjective π → ∀ (p : Ideal A) [p.IsPrime], Nonempty ((Localization.AtPrime (p.comap π) ⧸ Ideal.map (algebraMap R (Localization.AtPrime (p.comap π))) (RingHom.ker π)) ≃+* Localization.AtPrime p) :=
by
  intro R A _ _ π hπ p _
  classical
  let L : Localization.AtPrime (p.comap π) →+* Localization.AtPrime p :=
    Localization.localRingHom (p.comap π) p π rfl
  have hle : Ideal.map (algebraMap R (Localization.AtPrime (p.comap π))) (RingHom.ker π) ≤
      RingHom.ker L := by
    rw [Ideal.map_le_iff_le_comap]
    intro y hy
    rw [Ideal.mem_comap, RingHom.mem_ker]
    rw [RingHom.mem_ker] at hy
    simp only [L, Localization.localRingHom_to_map, hy, map_zero]
  have hL : ∀ x ∈ Ideal.map (algebraMap R (Localization.AtPrime (p.comap π))) (RingHom.ker π),
      L x = 0 := fun x hx => hle hx
  let Φ := Ideal.Quotient.lift _ L hL
  have hsurj : Function.Surjective Φ := by
    apply Ideal.Quotient.lift_surjective_of_surjective
    intro z
    obtain ⟨⟨a, s⟩, rfl⟩ := IsLocalization.mk'_surjective p.primeCompl z
    obtain ⟨r, hr⟩ := hπ a
    obtain ⟨t, ht⟩ := hπ (s : A)
    have htQ : t ∈ (p.comap π).primeCompl := by
      show t ∉ p.comap π
      rw [Ideal.mem_comap, ht]; exact s.2
    refine ⟨IsLocalization.mk' (Localization.AtPrime (p.comap π)) r ⟨t, htQ⟩, ?_⟩
    simp only [L, Localization.localRingHom_mk']
    subst hr
    congr 1
    exact Subtype.ext ht
  have hinj : Function.Injective Φ := by
    rw [injective_iff_map_eq_zero]
    intro w hw
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective w
    have hw' : L x = 0 := hw
    obtain ⟨⟨r, t⟩, rfl⟩ := IsLocalization.mk'_surjective (p.comap π).primeCompl x
    simp only [L, Localization.localRingHom_mk'] at hw'
    rw [IsLocalization.mk'_eq_zero_iff] at hw'
    obtain ⟨m, hm⟩ := hw'
    obtain ⟨u, hu⟩ := hπ (m : A)
    have huQ : u ∈ (p.comap π).primeCompl := by
      show u ∉ p.comap π
      rw [Ideal.mem_comap, hu]; exact m.2
    have hur : r * u ∈ RingHom.ker π := by
      rw [RingHom.mem_ker, map_mul, hu, mul_comm]; exact hm
    rw [Ideal.Quotient.eq_zero_iff_mem]
    show IsLocalization.mk' (Localization.AtPrime (p.comap π)) r t ∈ _
    rw [← IsLocalization.mk'_cancel (M := (p.comap π).primeCompl) r t ⟨u, huQ⟩,
      IsLocalization.mk'_eq_mul_mk'_one]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ hur)
  exact ⟨RingEquiv.ofBijective Φ ⟨hinj, hsurj⟩⟩

theorem wcpa_dj_rss_left_inverse_minor : ∀ (K : Type u) [Field K] (h S : ℕ) (M : Matrix (Fin S) (Fin h) K) (Λ : Matrix (Fin h) (Fin S) K), Λ * M = 1 → ∃ τ : Fin h → Fin S, (M.submatrix τ id).det ≠ 0 :=
by
  intro K _ h S M Λ hΛ
  classical
  set W : Submodule K (Fin h → K) := Submodule.span K (Set.range M) with hWdef
  have hWtop : W = ⊤ := by
    rw [Submodule.eq_top_iff']
    intro v
    have hv : v = Matrix.vecMul (Matrix.vecMul v Λ) M := by
      rw [Matrix.vecMul_vecMul, hΛ, Matrix.vecMul_one]
    rw [hv, Matrix.vecMul_eq_sum]
    exact Submodule.sum_mem _ (fun s _ =>
      Submodule.smul_mem _ _ (Submodule.subset_span ⟨s, rfl⟩))
  have hW : Module.finrank K W = h := by
    rw [hWtop, finrank_top, Module.finrank_fin_fun]
  obtain ⟨f, hf, -, hli⟩ := Submodule.exists_fun_fin_finrank_span_eq K (Set.range M)
  choose σ hσ using hf
  refine ⟨fun j => σ (Fin.cast hW.symm j), ?_⟩
  have hrows : LinearIndependent K (M.submatrix (fun j => σ (Fin.cast hW.symm j)) id).row := by
    have h1 : (M.submatrix (fun j => σ (Fin.cast hW.symm j)) id).row = f ∘ Fin.cast hW.symm := by
      funext j c
      simp [Matrix.row, Matrix.submatrix, hσ]
    rw [h1]
    exact hli.comp _ (Fin.cast_injective _)
  have hu := Matrix.linearIndependent_rows_iff_isUnit.mp hrows
  exact ((Matrix.isUnit_iff_isUnit_det _).mp hu).ne_zero

theorem wcpa_dj_rss_coeff_section : ∀ (k : Type u) [Field k] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] [Algebra k B], ∃ σ : IsLocalRing.ResidueField B →+* B ⧸ IsLocalRing.maximalIdeal B ^ 2, ∀ b : B, σ (IsLocalRing.residue B b) - Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) b ∈ Ideal.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2)) (IsLocalRing.maximalIdeal B) :=
by
  intro k _ B _ _ _ _
  classical

  have s1 : ∀ (K : Type u) [Field K] [CharZero K], Algebra.FormallySmooth ℚ K := by
    intro K _ _
    obtain ⟨s, hs⟩ := exists_isTranscendenceBasis ℚ K
    let L := IntermediateField.adjoin ℚ (Set.range (Subtype.val : s → K))
    haveI : Algebra.IsAlgebraic L K := hs.isAlgebraic_field
    haveI : Algebra.IsSeparable L K := Algebra.IsAlgebraic.isSeparable_of_perfectField
    haveI : Algebra.FormallyEtale L K := Algebra.FormallyEtale.of_isSeparable L K
    let v : s → L := fun i => ⟨i.1, IntermediateField.subset_adjoin _ _ ⟨i, rfl⟩⟩
    have hv : AlgebraicIndependent ℚ v := by
      apply AlgebraicIndependent.of_comp L.val
      exact hs.1
    have hvtop : IntermediateField.adjoin ℚ (Set.range v) = ⊤ := by
      apply IntermediateField.lift_injective L
      rw [IntermediateField.lift_adjoin, IntermediateField.lift_top, ← Set.range_comp]
      rfl
    haveI : Algebra.FormallySmooth ℚ L := Algebra.FormallySmooth.of_algebraicIndependent hv hvtop
    exact Algebra.FormallySmooth.comp ℚ L K

  have s2 : ∀ (R : Type) [CommRing R] (D : Type u) [CommRing D] [Algebra R D] (K : Type u)
      [Field K] [Algebra R K] [Algebra.FormallySmooth R K] (g : D →ₐ[R] K),
      Function.Surjective g → (∀ x y : D, g x = 0 → g y = 0 → x * y = 0) →
      ∃ σ : K →ₐ[R] D, ∀ x, g (σ x) = x := by
    intro R _ D _ _ K _ _ _ g hg hsq
    have hnil : IsNilpotent (RingHom.ker (g : D →+* K)) := by
      refine ⟨2, ?_⟩
      rw [pow_two, Ideal.zero_eq_bot, eq_bot_iff]
      refine Ideal.mul_le.mpr fun x hx y hy => ?_
      rw [RingHom.mem_ker] at hx hy
      rw [Ideal.mem_bot]
      exact hsq x y hx hy
    exact ⟨Algebra.FormallySmooth.liftOfSurjective (AlgHom.id R K) g hg hnil,
      fun x => Algebra.FormallySmooth.liftOfSurjective_apply _ _ _ _ x⟩

  have H : ∀ a ∈ IsLocalRing.maximalIdeal B ^ 2, IsLocalRing.residue B a = 0 := fun a ha =>
    (IsLocalRing.residue_eq_zero_iff a).mpr (Ideal.pow_le_self two_ne_zero ha)
  let g : B ⧸ IsLocalRing.maximalIdeal B ^ 2 →+* IsLocalRing.ResidueField B :=
    Ideal.Quotient.lift (IsLocalRing.maximalIdeal B ^ 2) (IsLocalRing.residue B) H
  have hgs : Function.Surjective g :=
    Ideal.Quotient.lift_surjective_of_surjective _ H IsLocalRing.residue_surjective
  have hgmk : ∀ b, g (Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) b) =
      IsLocalRing.residue B b := fun b => Ideal.Quotient.lift_mk _ _ _
  have hker : ∀ d, g d = 0 → d ∈ Ideal.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2))
      (IsLocalRing.maximalIdeal B) := by
    intro d hd
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective d
    rw [hgmk, IsLocalRing.residue_eq_zero_iff] at hd
    exact Ideal.mem_map_of_mem _ hd
  have hsq : ∀ x y, g x = 0 → g y = 0 → x * y = 0 := by
    intro x y hx hy
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective y
    rw [hgmk, IsLocalRing.residue_eq_zero_iff] at hx hy
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem, pow_two]
    exact Ideal.mul_mem_mul hx hy

  have hsec : ∃ σ : IsLocalRing.ResidueField B →+* B ⧸ IsLocalRing.maximalIdeal B ^ 2,
      ∀ x, g (σ x) = x := by
    haveI hnt : Nontrivial (B ⧸ IsLocalRing.maximalIdeal B ^ 2) :=
      Ideal.Quotient.nontrivial_iff.mpr (ne_top_of_le_ne_top
        (IsLocalRing.maximalIdeal.isMaximal B).ne_top (Ideal.pow_le_self two_ne_zero))
    let ιD : k →+* B ⧸ IsLocalRing.maximalIdeal B ^ 2 :=
      (Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2)).comp (algebraMap k B)
    let ικ : k →+* IsLocalRing.ResidueField B := (IsLocalRing.residue B).comp (algebraMap k B)
    have hιD : Function.Injective ιD := ιD.injective
    have hικ : Function.Injective ικ := ικ.injective
    rcases CharP.char_is_prime_or_zero k (ringChar k) with hp | hp
    · haveI : Fact (ringChar k).Prime := ⟨hp⟩
      haveI : CharP (B ⧸ IsLocalRing.maximalIdeal B ^ 2) (ringChar k) :=
        charP_of_injective_ringHom hιD _
      haveI : CharP (IsLocalRing.ResidueField B) (ringChar k) :=
        charP_of_injective_ringHom hικ _
      letI := ZMod.algebra (B ⧸ IsLocalRing.maximalIdeal B ^ 2) (ringChar k)
      letI := ZMod.algebra (IsLocalRing.ResidueField B) (ringChar k)
      haveI := wc_pfc_p_field_formally_smooth (ringChar k) (IsLocalRing.ResidueField B)
      have hc : ∀ r : ZMod (ringChar k), g (algebraMap (ZMod (ringChar k)) _ r) =
          algebraMap (ZMod (ringChar k)) (IsLocalRing.ResidueField B) r := fun r =>
        RingHom.congr_fun (RingHom.ext_zmod (g.comp (algebraMap _ _)) (algebraMap _ _)) r
      let gA : (B ⧸ IsLocalRing.maximalIdeal B ^ 2) →ₐ[ZMod (ringChar k)]
          IsLocalRing.ResidueField B := AlgHom.mk g hc
      obtain ⟨σA, hσA⟩ := s2 (ZMod (ringChar k)) _ _ gA hgs hsq
      exact ⟨σA.toRingHom, hσA⟩
    · haveI : CharZero k := (CharP.charP_zero_iff_charZero k).mp (ringChar.of_eq hp)
      haveI : CharZero (IsLocalRing.ResidueField B) := charZero_of_injective_ringHom hικ
      letI : Algebra ℚ (B ⧸ IsLocalRing.maximalIdeal B ^ 2) := (ιD.comp (Rat.castHom k)).toAlgebra
      haveI := s1 (IsLocalRing.ResidueField B)
      obtain ⟨σA, hσA⟩ := s2 ℚ _ _ (RingHom.toRatAlgHom g) hgs hsq
      exact ⟨σA.toRingHom, hσA⟩
  obtain ⟨σ, hσ⟩ := hsec
  refine ⟨σ, fun b => hker _ ?_⟩
  rw [map_sub, hσ, hgmk, sub_self]

theorem wcpa_dj_rss_dual_derivations : (∀ (k : Type u) [Field k] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] [Algebra k B], ∃ σ : IsLocalRing.ResidueField B →+* B ⧸ IsLocalRing.maximalIdeal B ^ 2, ∀ b : B, σ (IsLocalRing.residue B b) - Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) b ∈ Ideal.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2)) (IsLocalRing.maximalIdeal B)) → ∀ (k : Type u) [Field k] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] [Algebra k B] (h : ℕ) (x : Fin h → IsLocalRing.maximalIdeal B), LinearIndependent (IsLocalRing.ResidueField B) (fun i => (IsLocalRing.maximalIdeal B).toCotangent (x i)) → ∃ δ : Fin h → Derivation ℤ B (IsLocalRing.ResidueField B), ∀ i j, δ j (x i) = if i = j then 1 else 0 :=
by
  intro H k _ B _ _ _ _ h x hli
  obtain ⟨σ, hσ⟩ := H k B

  have hder : ∀ f : IsLocalRing.CotangentSpace B →ₗ[IsLocalRing.ResidueField B]
      IsLocalRing.ResidueField B, ∃ δ : Derivation ℤ B (IsLocalRing.ResidueField B),
      ∀ (y : B) (hy : y ∈ IsLocalRing.maximalIdeal B),
        δ y = f ((IsLocalRing.maximalIdeal B).toCotangent ⟨y, hy⟩) := by
    intro f
    have hlift : ∀ b : B, ∃ y ∈ IsLocalRing.maximalIdeal B,
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) y =
          Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) b - σ (IsLocalRing.residue B b) := by
      intro b
      have h := neg_mem (hσ b)
      rw [neg_sub] at h
      exact (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).mp h
    choose xb hxm hxq using hlift
    obtain ⟨δ₀, hδ₀⟩ : ∃ δ₀ : B → IsLocalRing.ResidueField B, ∀ b,
        δ₀ b = f ((IsLocalRing.maximalIdeal B).toCotangent ⟨xb b, hxm b⟩) := ⟨_, fun _ => rfl⟩
    have hC : ∀ (b y : B) (hy : y ∈ IsLocalRing.maximalIdeal B),
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) y =
          Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) b - σ (IsLocalRing.residue B b) →
        δ₀ b = f ((IsLocalRing.maximalIdeal B).toCotangent ⟨y, hy⟩) := by
      intro b y hy h
      rw [hδ₀]
      congr 1
      rw [Ideal.toCotangent_eq]
      exact Ideal.Quotient.eq.mp ((hxq b).trans h.symm)
    have hadd : ∀ a b, δ₀ (a + b) = δ₀ a + δ₀ b := by
      intro a b
      rw [hC (a + b) (xb a + xb b) (add_mem (hxm a) (hxm b))
        (by simp only [map_add, hxq]; ring), hδ₀, hδ₀]
      have e : (⟨xb a + xb b, add_mem (hxm a) (hxm b)⟩ : IsLocalRing.maximalIdeal B) =
          ⟨xb a, hxm a⟩ + ⟨xb b, hxm b⟩ := rfl
      rw [e, map_add, map_add]
    have hleib : ∀ a b, δ₀ (a * b) = a • δ₀ b + b • δ₀ a := by
      intro a b
      have hy : a * xb b + b * xb a ∈ IsLocalRing.maximalIdeal B :=
        add_mem (Ideal.mul_mem_left _ a (hxm b)) (Ideal.mul_mem_left _ b (hxm a))
      have hzero : Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) (xb a * xb b) = 0 := by
        rw [Ideal.Quotient.eq_zero_iff_mem, pow_two]
        exact Ideal.mul_mem_mul (hxm a) (hxm b)
      have hq : Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) (a * xb b + b * xb a) =
          Ideal.Quotient.mk (IsLocalRing.maximalIdeal B ^ 2) (a * b) -
            σ (IsLocalRing.residue B (a * b)) := by
        rw [map_mul, hxq, hxq] at hzero
        simp only [map_add, map_mul, hxq]
        linear_combination hzero
      rw [hC (a * b) _ hy hq, hδ₀, hδ₀]
      have e : (⟨a * xb b + b * xb a, hy⟩ : IsLocalRing.maximalIdeal B) =
          a • ⟨xb b, hxm b⟩ + b • ⟨xb a, hxm a⟩ := rfl
      rw [e, map_add, map_smul, map_smul, map_add, LinearMap.map_smul_of_tower,
        LinearMap.map_smul_of_tower]
    let D : B →ₗ[ℤ] IsLocalRing.ResidueField B := (AddMonoidHom.mk' δ₀ hadd).toIntLinearMap
    refine ⟨Derivation.mk' D (fun a b => hleib a b), ?_⟩
    intro y hy
    show δ₀ y = _
    exact hC y y hy (by rw [(IsLocalRing.residue_eq_zero_iff y).mpr hy, map_zero, sub_zero])

  have hdual : ∃ φ : Fin h → (IsLocalRing.CotangentSpace B →ₗ[IsLocalRing.ResidueField B]
      IsLocalRing.ResidueField B), ∀ i j,
      φ j ((IsLocalRing.maximalIdeal B).toCotangent (x i)) = if i = j then 1 else 0 := by
    have hext : ∀ j : Fin h, ∃ g : IsLocalRing.CotangentSpace B →ₗ[IsLocalRing.ResidueField B]
        IsLocalRing.ResidueField B,
        g ∘ₗ (Submodule.span (IsLocalRing.ResidueField B)
          (Set.range (fun i => (IsLocalRing.maximalIdeal B).toCotangent (x i)))).subtype =
          (Finsupp.lapply j) ∘ₗ hli.repr := fun j => LinearMap.exists_extend _
    choose φ hφ using hext
    refine ⟨φ, fun i j => ?_⟩
    let w : Submodule.span (IsLocalRing.ResidueField B)
        (Set.range (fun i => (IsLocalRing.maximalIdeal B).toCotangent (x i))) :=
      ⟨(IsLocalRing.maximalIdeal B).toCotangent (x i), Submodule.subset_span ⟨i, rfl⟩⟩
    calc φ j ((IsLocalRing.maximalIdeal B).toCotangent (x i))
        = (φ j ∘ₗ (Submodule.span (IsLocalRing.ResidueField B)
          (Set.range (fun i => (IsLocalRing.maximalIdeal B).toCotangent (x i)))).subtype) w := rfl
      _ = ((Finsupp.lapply j) ∘ₗ hli.repr) w := by rw [hφ j]
      _ = (hli.repr w) j := rfl
      _ = (Finsupp.single i (1 : IsLocalRing.ResidueField B)) j := by
          rw [hli.repr_eq_single i w rfl]
      _ = if i = j then 1 else 0 := Finsupp.single_apply

  obtain ⟨φ, hφ⟩ := hdual
  choose δ hδ using fun j => hder (φ j)
  refine ⟨δ, fun i j => ?_⟩
  rw [hδ j (x i) (x i).2]
  exact hφ i j

theorem wcpa_dj_rss_derivation_span : ∀ (k : Type u) [Field k] (n h : ℕ) (f : Fin h → MvPolynomial (Fin n) k), ∃ (S : ℕ) (E : Fin S → Derivation ℤ (MvPolynomial (Fin n) k) (MvPolynomial (Fin n) k)), ∀ (M : Type u) [AddCommGroup M] [Module (MvPolynomial (Fin n) k) M] (ε : Derivation ℤ (MvPolynomial (Fin n) k) M), ∃ c : Fin S → M, ∀ i, ε (f i) = ∑ l, E l (f i) • c l :=
by
  intro k _ n h f
  classical

  have hcoeffDer : ∀ d : Derivation ℤ k k, ∃ D : Derivation ℤ (MvPolynomial (Fin n) k)
      (MvPolynomial (Fin n) k), ∀ p α, (D p).coeff α = d (p.coeff α) := by
    intro d
    obtain ⟨D0, hD0⟩ : ∃ D0 : MvPolynomial (Fin n) k → MvPolynomial (Fin n) k,
        ∀ p α, (D0 p).coeff α = d (p.coeff α) := by
      refine ⟨fun p => ∑ β ∈ p.support, MvPolynomial.monomial β (d (p.coeff β)), fun p α => ?_⟩
      simp only [MvPolynomial.coeff_sum, MvPolynomial.coeff_monomial, Finset.sum_ite_eq']
      split_ifs with hα
      · rfl
      · rw [MvPolynomial.notMem_support_iff.mp hα, map_zero]
    refine ⟨
      { toFun := D0
        map_add' := ?_
        map_smul' := ?_
        map_one_eq_zero' := ?_
        leibniz' := ?_ }, hD0⟩
    · intro p q
      ext α
      simp only [MvPolynomial.coeff_add, hD0, map_add]
    · intro z p
      ext α
      simp only [RingHom.id_apply, MvPolynomial.coeff_smul, hD0, map_zsmul]
    · apply MvPolynomial.ext
      intro α
      change (D0 1).coeff α = (0 : MvPolynomial (Fin n) k).coeff α
      rw [hD0, MvPolynomial.coeff_one, MvPolynomial.coeff_zero]
      split_ifs <;> simp
    · intro p q
      change D0 (p * q) = p • D0 q + q • D0 p
      rw [smul_eq_mul, smul_eq_mul, mul_comm q]
      ext α
      simp only [MvPolynomial.coeff_add, MvPolynomial.coeff_mul, hD0, map_sum,
        Derivation.leibniz, smul_eq_mul, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun x _ => by ring

  let F₀ : Finset k := Finset.univ.biUnion (fun i => (f i).support.image (fun α => (f i).coeff α))
  have hF₀ : ∀ i, ∀ α ∈ (f i).support, (f i).coeff α ∈ F₀ := by
    intro i α hα
    exact Finset.mem_biUnion.mpr ⟨i, Finset.mem_univ _, Finset.mem_image_of_mem _ hα⟩
  let D₀ : Derivation ℤ k (KaehlerDifferential ℤ k) := KaehlerDifferential.D ℤ k
  let W : Submodule k (KaehlerDifferential ℤ k) :=
    Submodule.span k (F₀.image D₀ : Set (KaehlerDifferential ℤ k))
  haveI : FiniteDimensional k W := FiniteDimensional.span_finset k _
  let t := Module.finrank k W
  let b := Module.finBasis k W
  have hext : ∀ m : Fin t, ∃ g : KaehlerDifferential ℤ k →ₗ[k] k, g.comp W.subtype = b.coord m :=
    fun m => LinearMap.exists_extend (b.coord m)
  choose lam hlam using hext
  let dk : Fin t → Derivation ℤ k k := fun m => (lam m).compDer D₀
  have hstar : ∀ a ∈ F₀, D₀ a = ∑ m, dk m a • (b m : KaehlerDifferential ℤ k) := by
    intro a ha
    have hmem : D₀ a ∈ W :=
      Submodule.subset_span (Finset.mem_coe.mpr (Finset.mem_image_of_mem _ ha))
    have h1 := b.sum_repr ⟨D₀ a, hmem⟩
    have h2 := congrArg (Submodule.subtype W) h1
    rw [map_sum] at h2
    simp only [map_smul, Submodule.subtype_apply] at h2
    rw [← h2]
    refine Finset.sum_congr rfl fun m _ => ?_
    congr 1
    rw [← Module.Basis.coord_apply, ← hlam m]
    rfl

  choose Dm hDm using fun m => hcoeffDer (dk m)
  refine ⟨n + t, Fin.append (fun j => (MvPolynomial.pderiv j).restrictScalars ℤ) Dm, ?_⟩
  intro M _ _ ε
  letI : Module k M := Module.compHom M (algebraMap k (MvPolynomial (Fin n) k))
  haveI : IsScalarTower k (MvPolynomial (Fin n) k) M :=
    IsScalarTower.of_algebraMap_smul (fun _ _ => rfl)
  let δ' : Derivation ℤ k M := ε.compAlgebraMap k
  let L := δ'.liftKaehlerDifferential
  let μ : Fin t → M := fun m => L (b m)
  have hC : ∀ a ∈ F₀, ε (MvPolynomial.C a) =
      ∑ m, (MvPolynomial.C (dk m a) : MvPolynomial (Fin n) k) • μ m := by
    intro a ha
    have e1 : ε (MvPolynomial.C a) = L (D₀ a) := by
      rw [show L (D₀ a) = δ' a from δ'.liftKaehlerDifferential_comp_D a]
      show ε (MvPolynomial.C a) = ε (algebraMap k _ a)
      rw [MvPolynomial.algebraMap_eq]
    rw [e1, hstar a ha, map_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [map_smul]
    show algebraMap k (MvPolynomial (Fin n) k) (dk m a) • μ m = _
    rw [MvPolynomial.algebraMap_eq]
  let c : Fin (n + t) → M := Fin.append (fun j => ε (MvPolynomial.X j)) μ
  refine ⟨c, fun i => ?_⟩
  have hsplit : ∀ p : MvPolynomial (Fin n) k,
      ∑ l, (Fin.append (fun j => (MvPolynomial.pderiv j).restrictScalars ℤ) Dm :
        Fin (n + t) → Derivation ℤ (MvPolynomial (Fin n) k) (MvPolynomial (Fin n) k)) l p • c l =
      ∑ j, MvPolynomial.pderiv j p • ε (MvPolynomial.X j) + ∑ m, Dm m p • μ m := by
    intro p
    rw [Fin.sum_univ_add]
    simp [c, Fin.append_left, Fin.append_right]
  rw [hsplit]
  let T : Subring (MvPolynomial (Fin n) k) :=
    { carrier := {p | ε p = ∑ j, MvPolynomial.pderiv j p • ε (MvPolynomial.X j) +
          ∑ m, Dm m p • μ m}
      mul_mem' := by
        intro p q hp hq
        simp only [Set.mem_setOf_eq] at hp hq ⊢
        rw [Derivation.leibniz, hp, hq]
        simp only [Derivation.leibniz, smul_add, Finset.smul_sum, add_smul, smul_eq_mul,
          mul_smul, Finset.sum_add_distrib]
        abel
      one_mem' := by simp
      add_mem' := by
        intro p q hp hq
        simp only [Set.mem_setOf_eq] at hp hq ⊢
        rw [map_add, hp, hq]
        simp only [map_add, add_smul, Finset.sum_add_distrib]
        abel
      zero_mem' := by simp
      neg_mem' := by
        intro p hp
        simp only [Set.mem_setOf_eq] at hp ⊢
        rw [map_neg, hp]
        simp only [map_neg, neg_smul, Finset.sum_neg_distrib, neg_add] }
  have hX : ∀ j, MvPolynomial.X j ∈ T := by
    intro j
    have h0 : ∀ m, Dm m (MvPolynomial.X j) = 0 := by
      intro m
      ext α
      rw [hDm, MvPolynomial.coeff_X', MvPolynomial.coeff_zero]
      split_ifs <;> simp
    show ε (MvPolynomial.X j) = ∑ j', MvPolynomial.pderiv j' (MvPolynomial.X j) •
      ε (MvPolynomial.X j') + ∑ m, Dm m (MvPolynomial.X j) • μ m
    simp [h0, MvPolynomial.pderiv_X, Pi.single_apply]
  have hCa : ∀ a ∈ F₀, MvPolynomial.C a ∈ T := by
    intro a ha
    have h0 : ∀ m, Dm m (MvPolynomial.C a) = MvPolynomial.C (dk m a) := by
      intro m
      ext α
      rw [hDm, MvPolynomial.coeff_C, MvPolynomial.coeff_C]
      split_ifs <;> simp
    show ε (MvPolynomial.C a) = ∑ j', MvPolynomial.pderiv j' (MvPolynomial.C a) •
      ε (MvPolynomial.X j') + ∑ m, Dm m (MvPolynomial.C a) • μ m
    simp only [h0, MvPolynomial.pderiv_C, zero_smul, Finset.sum_const_zero, zero_add]
    exact hC a ha
  have hfi : f i ∈ T := by
    rw [MvPolynomial.as_sum (f i)]
    refine sum_mem fun α hα => ?_
    rw [MvPolynomial.monomial_eq]
    refine mul_mem (hCa _ (hF₀ i α hα)) ?_
    rw [Finsupp.prod]
    exact prod_mem fun j _ => pow_mem (hX j) _
  exact hfi

theorem wcpa_dj_rss_jacobian_hard_select : (∀ (k : Type u) [Field k] (n : ℕ) (Q : Ideal (MvPolynomial (Fin n) k)) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q)) → (∀ (R A : Type u) [CommRing R] [CommRing A] (π : R →+* A), Function.Surjective π → ∀ (p : Ideal A) [p.IsPrime], Nonempty ((Localization.AtPrime (p.comap π) ⧸ Ideal.map (algebraMap R (Localization.AtPrime (p.comap π))) (RingHom.ker π)) ≃+* Localization.AtPrime p)) → ∀ (k : Type u) [Field k] (n : ℕ) (A : Type u) [CommRing A] (π : MvPolynomial (Fin n) k →+* A), Function.Surjective π → ∀ (p : Ideal A) [p.IsPrime], IsRegularLocalRing (Localization.AtPrime p) → ∃ (h : ℕ) (f : Fin h → MvPolynomial (Fin n) k) (c : MvPolynomial (Fin n) k) (x : Fin h → IsLocalRing.maximalIdeal (Localization.AtPrime (p.comap π))), (∀ i, π (f i) = 0) ∧ π c ∉ p ∧ (∀ g, π g = 0 → c * g ∈ Ideal.span (Set.range f)) ∧ (∀ i, (x i : Localization.AtPrime (p.comap π)) = algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime (p.comap π)) (f i)) ∧ LinearIndependent (IsLocalRing.ResidueField (Localization.AtPrime (p.comap π))) (fun i => (IsLocalRing.maximalIdeal (Localization.AtPrime (p.comap π))).toCotangent (x i)) :=
by
  classical

  have s4 : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (m : ℕ) (g : Fin m → B)
      (hg : ∀ j, g j ∈ IsLocalRing.maximalIdeal B),
      (∀ y ∈ Ideal.span (Set.range g), y ∈ IsLocalRing.maximalIdeal B ^ 2 →
        y ∈ IsLocalRing.maximalIdeal B * Ideal.span (Set.range g)) →
      ∃ (h : ℕ) (a : Fin h → Fin m),
        LinearIndependent (IsLocalRing.ResidueField B)
          (fun i => (IsLocalRing.maximalIdeal B).toCotangent ⟨g (a i), hg (a i)⟩) ∧
        Ideal.span (Set.range g) ≤ Ideal.span (Set.range (fun i => g (a i))) := by
    intro B _ _ m g hg hcon
    let v : Fin m → (IsLocalRing.maximalIdeal B).Cotangent :=
      fun j => (IsLocalRing.maximalIdeal B).toCotangent ⟨g j, hg j⟩
    obtain ⟨κ, a', ha'inj, hspan, hli⟩ := exists_linearIndependent' (IsLocalRing.ResidueField B) v
    haveI : Finite κ := Finite.of_injective a' ha'inj
    letI : Fintype κ := Fintype.ofFinite κ
    let e : Fin (Fintype.card κ) ≃ κ := (Fintype.equivFin κ).symm
    refine ⟨Fintype.card κ, a' ∘ e, hli.comp e e.injective, ?_⟩
    have hspan' : Submodule.span (IsLocalRing.ResidueField B) (Set.range (v ∘ (a' ∘ e))) =
        Submodule.span (IsLocalRing.ResidueField B) (Set.range v) := by
      rw [show v ∘ (a' ∘ e) = (v ∘ a') ∘ e from rfl, e.surjective.range_comp, hspan]
    apply Submodule.le_of_le_smul_of_le_jacobson_bot (Submodule.fg_span (Set.finite_range g))
      (IsLocalRing.maximalIdeal_le_jacobson ⊥)
    rw [Ideal.span_le]
    rintro _ ⟨j, rfl⟩
    have hvj : v j ∈ Submodule.span (IsLocalRing.ResidueField B) (Set.range (v ∘ (a' ∘ e))) := by
      rw [hspan']; exact Submodule.subset_span ⟨j, rfl⟩
    obtain ⟨t, ht⟩ := (Submodule.mem_span_range_iff_exists_fun _).mp hvj
    choose b hb using fun i => IsLocalRing.residue_surjective (t i)
    have hsum_mem : ∑ i, b i * g ((a' ∘ e) i) ∈ IsLocalRing.maximalIdeal B :=
      Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (hg _))
    have hy𝔪 : g j - ∑ i, b i * g ((a' ∘ e) i) ∈ IsLocalRing.maximalIdeal B :=
      Ideal.sub_mem _ (hg j) hsum_mem
    have hcot : (IsLocalRing.maximalIdeal B).toCotangent ⟨_, hy𝔪⟩ = 0 := by
      have hel : (⟨_, hy𝔪⟩ : IsLocalRing.maximalIdeal B) =
          ⟨g j, hg j⟩ - ∑ i, b i • (⟨g ((a' ∘ e) i), hg _⟩ : IsLocalRing.maximalIdeal B) := by
        ext
        simp [smul_eq_mul]
      rw [hel, map_sub, map_sum]
      simp only [map_smul]
      show v j - ∑ i, b i • v ((a' ∘ e) i) = 0
      rw [← ht, sub_eq_zero]
      refine Finset.sum_congr rfl (fun i _ => ?_)
      rw [← hb i, ← IsLocalRing.ResidueField.algebraMap_eq, algebraMap_smul]
      rfl
    have hyGs : g j - ∑ i, b i * g ((a' ∘ e) i) ∈ Ideal.span (Set.range g) :=
      Ideal.sub_mem _ (Ideal.subset_span ⟨j, rfl⟩)
        (Ideal.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨_, rfl⟩))
    have hy2 := (Ideal.toCotangent_eq_zero _ _).mp hcot
    have hy := hcon _ hyGs hy2
    have h1 : ∑ i, b i * g ((a' ∘ e) i) ∈ Ideal.span (Set.range (fun i => g ((a' ∘ e) i))) :=
      Ideal.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, rfl⟩)
    have h2 : g j - ∑ i, b i * g ((a' ∘ e) i) ∈
        IsLocalRing.maximalIdeal B • Ideal.span (Set.range g) := by
      rw [Ideal.smul_eq_mul]; exact hy
    have h3 := Submodule.add_mem_sup h1 h2
    rw [add_sub_cancel] at h3
    exact h3

  have s5 : ∀ (R : Type u) [CommRing R] (Q : Ideal R) [Q.IsPrime] (m h : ℕ) (g : Fin m → R)
      (f : Fin h → R), (∀ j, algebraMap R (Localization.AtPrime Q) (g j) ∈
        Ideal.span (Set.range (fun i => algebraMap R (Localization.AtPrime Q) (f i)))) →
      ∃ c : R, c ∉ Q ∧ ∀ y ∈ Ideal.span (Set.range g), c * y ∈ Ideal.span (Set.range f) := by
    intro R _ Q _ m h g f hgf
    have hmap : Ideal.span (Set.range (fun i => algebraMap R (Localization.AtPrime Q) (f i))) =
        Ideal.map (algebraMap R (Localization.AtPrime Q)) (Ideal.span (Set.range f)) := by
      rw [Ideal.map_span, ← Set.range_comp]; rfl
    have hj : ∀ j, ∃ c : R, c ∉ Q ∧ c * g j ∈ Ideal.span (Set.range f) := by
      intro j
      have h1 := hgf j
      rw [hmap, IsLocalization.mem_map_algebraMap_iff Q.primeCompl] at h1
      obtain ⟨⟨z, s⟩, hzs⟩ := h1
      rw [← map_mul, IsLocalization.eq_iff_exists Q.primeCompl] at hzs
      obtain ⟨u, hu⟩ := hzs
      refine ⟨u * s, Q.primeCompl.mul_mem u.2 s.2, ?_⟩
      have hh : (u : R) * s * g j = u * z := by rw [← hu]; ring
      rw [hh]
      exact Ideal.mul_mem_left _ _ z.2
    choose c hcQ hcg using hj
    refine ⟨∏ j, c j, Submonoid.prod_mem Q.primeCompl (fun j _ => hcQ j), ?_⟩
    intro y hy
    obtain ⟨r, rfl⟩ := (Ideal.mem_span_range_iff_exists_fun).mp hy
    rw [Finset.mul_sum]
    refine Ideal.sum_mem _ fun j _ => ?_
    rw [← Finset.prod_erase_mul Finset.univ c (Finset.mem_univ j)]
    have hh : (∏ x ∈ Finset.univ.erase j, c x) * c j * (r j * g j) =
        (r j * ∏ x ∈ Finset.univ.erase j, c x) * (c j * g j) := by ring
    rw [hh]
    exact Ideal.mul_mem_left _ _ (hcg j)

  intro HP HQ k _ n A _ π hπ p _ hAp
  haveI hB : IsRegularLocalRing (Localization.AtPrime (p.comap π)) := HP k n (p.comap π)
  obtain ⟨e⟩ := HQ _ A π hπ p
  haveI hBJ : IsRegularLocalRing (Localization.AtPrime (p.comap π) ⧸
      Ideal.map (algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime (p.comap π)))
        (RingHom.ker π)) := IsRegularLocalRing.of_ringEquiv e.symm
  have hconorm := wcpa_regular_quotient_conormal (Localization.AtPrime (p.comap π))
    (fun T _ hT => wcpa_regular_isDomain T wcpa_rs_quotient_regular hT)
    wcpa_rs_quotient_regular _ hBJ
  obtain ⟨m, g, hg⟩ := Submodule.fg_iff_exists_fin_generating_family.mp
    (Ideal.fg_of_isNoetherianRing (RingHom.ker π))
  have hgI : Ideal.span (Set.range g) = RingHom.ker π := hg
  have hgker : ∀ j, π (g j) = 0 := fun j => by
    have hm : g j ∈ RingHom.ker π := by rw [← hgI]; exact Ideal.subset_span ⟨j, rfl⟩
    exact RingHom.mem_ker.mp hm
  have hG : ∀ j, algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime (p.comap π)) (g j) ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime (p.comap π)) := fun j =>
    (IsLocalization.AtPrime.to_map_mem_maximal_iff _ (p.comap π) (g j)).mpr
      (by rw [Ideal.mem_comap, hgker j]; exact p.zero_mem)
  have hJ : Ideal.map (algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime (p.comap π)))
      (RingHom.ker π) = Ideal.span (Set.range (fun j =>
        algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime (p.comap π)) (g j))) := by
    rw [← hgI, Ideal.map_span, ← Set.range_comp]; rfl
  rw [hJ] at hconorm
  obtain ⟨h, a, hli, hspan⟩ := s4 _ m _ hG hconorm
  obtain ⟨c, hcQ, hc⟩ := s5 _ (p.comap π) m h g (fun i => g (a i))
    (fun j => hspan (Ideal.subset_span ⟨j, rfl⟩))
  refine ⟨h, fun i => g (a i), c, fun i => ⟨_, hG (a i)⟩, fun i => hgker (a i),
    fun hc' => hcQ (Ideal.mem_comap.mpr hc'), fun g' hg' => hc g' ?_, fun i => rfl, hli⟩
  rw [hgI]
  exact RingHom.mem_ker.mpr hg'

theorem wcpa_dj_rss_jacobian_hard_det : (∀ (k : Type u) [Field k] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] [Algebra k B] (h : ℕ) (x : Fin h → IsLocalRing.maximalIdeal B), LinearIndependent (IsLocalRing.ResidueField B) (fun i => (IsLocalRing.maximalIdeal B).toCotangent (x i)) → ∃ δ : Fin h → Derivation ℤ B (IsLocalRing.ResidueField B), ∀ i j, δ j (x i) = if i = j then 1 else 0) → (∀ (k : Type u) [Field k] (n h : ℕ) (f : Fin h → MvPolynomial (Fin n) k), ∃ (S : ℕ) (E : Fin S → Derivation ℤ (MvPolynomial (Fin n) k) (MvPolynomial (Fin n) k)), ∀ (M : Type u) [AddCommGroup M] [Module (MvPolynomial (Fin n) k) M] (ε : Derivation ℤ (MvPolynomial (Fin n) k) M), ∃ c : Fin S → M, ∀ i, ε (f i) = ∑ l, E l (f i) • c l) → (∀ (K : Type u) [Field K] (h S : ℕ) (M : Matrix (Fin S) (Fin h) K) (Λ : Matrix (Fin h) (Fin S) K), Λ * M = 1 → ∃ τ : Fin h → Fin S, (M.submatrix τ id).det ≠ 0) → ∀ (k : Type u) [Field k] (n h : ℕ) (Q : Ideal (MvPolynomial (Fin n) k)) [Q.IsPrime] (f : Fin h → MvPolynomial (Fin n) k) (x : Fin h → IsLocalRing.maximalIdeal (Localization.AtPrime Q)), (∀ i, (x i : Localization.AtPrime Q) = algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime Q) (f i)) → LinearIndependent (IsLocalRing.ResidueField (Localization.AtPrime Q)) (fun i => (IsLocalRing.maximalIdeal (Localization.AtPrime Q)).toCotangent (x i)) → ∃ D : Fin h → Derivation ℤ (MvPolynomial (Fin n) k) (MvPolynomial (Fin n) k), (Matrix.of fun i j => D j (f i)).det ∉ Q :=
by
  intro Hδ HE Hτ k _ n h Q _ f x hx hli
  classical

  have hres : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [Algebra (MvPolynomial (Fin n) k) B]
      (d : Derivation ℤ B (IsLocalRing.ResidueField B)),
      ∃ e : Derivation ℤ (MvPolynomial (Fin n) k) (IsLocalRing.ResidueField B),
        ∀ r, e r = d (algebraMap (MvPolynomial (Fin n) k) B r) := by
    intro B _ _ _ d
    refine ⟨Derivation.mk'
      ((d : B →ₗ[ℤ] IsLocalRing.ResidueField B).comp
        (algebraMap (MvPolynomial (Fin n) k) B).toAddMonoidHom.toIntLinearMap) ?_, fun r => rfl⟩
    intro a b
    show d (algebraMap (MvPolynomial (Fin n) k) B (a * b)) =
      a • d (algebraMap (MvPolynomial (Fin n) k) B b) +
      b • d (algebraMap (MvPolynomial (Fin n) k) B a)
    rw [map_mul, Derivation.leibniz]
    simp only [Algebra.smul_def]
    rfl
  obtain ⟨δ, hδ⟩ := Hδ k (Localization.AtPrime Q) h x hli
  have hε0 : ∀ j, ∃ e : Derivation ℤ (MvPolynomial (Fin n) k)
      (IsLocalRing.ResidueField (Localization.AtPrime Q)),
      ∀ r, e r = δ j (algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime Q) r) :=
    fun j => hres _ (δ j)
  choose ε hεdef using hε0
  have hε : ∀ i j, ε j (f i) = if i = j then 1 else 0 := by
    intro i j
    rw [hεdef, ← hx i]
    exact hδ i j
  obtain ⟨S, E, hE⟩ := HE k n h f
  have hc0 : ∀ j, ∃ c : Fin S → IsLocalRing.ResidueField (Localization.AtPrime Q),
      ∀ i, ε j (f i) = ∑ l, E l (f i) • c l := fun j => hE _ (ε j)
  choose c hc using hc0
  let M : Matrix (Fin S) (Fin h) (IsLocalRing.ResidueField (Localization.AtPrime Q)) :=
    Matrix.of fun l i => algebraMap (MvPolynomial (Fin n) k)
      (IsLocalRing.ResidueField (Localization.AtPrime Q)) (E l (f i))
  let Λ : Matrix (Fin h) (Fin S) (IsLocalRing.ResidueField (Localization.AtPrime Q)) :=
    Matrix.of fun j l => c j l
  have hΛM : Λ * M = 1 := by
    ext j i
    rw [Matrix.mul_apply, Matrix.one_apply]
    have e := hc j i
    rw [hε i j] at e
    simp only [Algebra.smul_def] at e
    simp only [Λ, M, Matrix.of_apply]
    rw [Finset.sum_congr rfl (fun l _ => mul_comm _ _), ← e]
    by_cases hij : i = j
    · subst hij; simp
    · simp [hij, Ne.symm hij]
  obtain ⟨τ, hτ⟩ := Hτ _ h S M Λ hΛM
  refine ⟨fun j => E (τ j), ?_⟩
  intro hmem
  apply hτ
  have h1 : algebraMap (MvPolynomial (Fin n) k) (IsLocalRing.ResidueField (Localization.AtPrime Q))
      (Matrix.of fun i j => E (τ j) (f i)).det = 0 := by
    show IsLocalRing.residue _ (algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime Q) _) = 0
    rw [IsLocalRing.residue_eq_zero_iff,
      IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q]
    exact hmem
  rw [RingHom.map_det] at h1
  rw [← Matrix.det_transpose]
  convert h1 using 2
  ext i j
  simp [M, RingHom.mapMatrix_apply]

theorem wcpa_dj_rss_jacobian_easy : (∀ (k : Type u) [Field k] (n : ℕ) (Q : Ideal (MvPolynomial (Fin n) k)) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q)) → (∀ (R A : Type u) [CommRing R] [CommRing A] (π : R →+* A), Function.Surjective π → ∀ (p : Ideal A) [p.IsPrime], Nonempty ((Localization.AtPrime (p.comap π) ⧸ Ideal.map (algebraMap R (Localization.AtPrime (p.comap π))) (RingHom.ker π)) ≃+* Localization.AtPrime p)) → ∀ (k : Type u) [Field k] (n : ℕ) (A : Type u) [CommRing A] (π : MvPolynomial (Fin n) k →+* A), Function.Surjective π → ∀ (h : ℕ) (f : Fin h → MvPolynomial (Fin n) k) (c : MvPolynomial (Fin n) k) (D : Fin h → Derivation ℤ (MvPolynomial (Fin n) k) (MvPolynomial (Fin n) k)), (∀ i, π (f i) = 0) → (∀ g, π g = 0 → c * g ∈ Ideal.span (Set.range f)) → ∀ (p : Ideal A) [p.IsPrime], π c ∉ p → π (Matrix.of fun i j => D j (f i)).det ∉ p → IsRegularLocalRing (Localization.AtPrime p) :=
by
  intro hpoly hquot k _ n A _ π hπ h f c D hf hc p _ hcp hdet
  classical
  let Q : Ideal (MvPolynomial (Fin n) k) := p.comap π
  haveI hQprime : Q.IsPrime := Ideal.IsPrime.comap π
  haveI hBreg : IsRegularLocalRing (Localization.AtPrime Q) := hpoly k n Q
  let ι := algebraMap (MvPolynomial (Fin n) k) (Localization.AtPrime Q)
  have hfQ : ∀ i, f i ∈ Q := fun i => by
    show π (f i) ∈ p
    rw [hf i]; exact p.zero_mem
  have hcQ : c ∉ Q := hcp
  have hdetQ : (Matrix.of fun i j => D j (f i)).det ∉ Q := hdet

  have heq : Ideal.span (Set.range (fun i => ι (f i))) = Ideal.map ι (RingHom.ker π) := by
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      exact Ideal.mem_map_of_mem ι (RingHom.mem_ker.mpr (hf i))
    · rw [Ideal.map_le_iff_le_comap]
      intro g hg
      rw [Ideal.mem_comap]
      have h1 : ι (c * g) ∈ Ideal.span (Set.range (fun i => ι (f i))) := by
        have h0 := Ideal.mem_map_of_mem ι (hc g (RingHom.mem_ker.mp hg))
        rw [Ideal.map_span, ← Set.range_comp] at h0
        exact h0
      have hu : IsUnit (ι c) :=
        (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime Q) Q c).mpr hcQ
      obtain ⟨u, hu'⟩ := hu
      have h2 : ι g = ↑u⁻¹ * ι (c * g) := by
        rw [map_mul, ← hu', ← mul_assoc, Units.inv_mul, one_mul]
      rw [h2]
      exact Ideal.mul_mem_left _ _ h1

  let x : Fin h → IsLocalRing.maximalIdeal (Localization.AtPrime Q) := fun i =>
    ⟨ι (f i), (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q
      (f i)).mpr (hfQ i)⟩

  have hext : ∀ j, ∃ E : Derivation ℤ (Localization.AtPrime Q) (Localization.AtPrime Q),
      ∀ t, E (ι t) = ι (D j t) := fun j =>
    (wc_hnas_pfc_gcl_derivation_extend (MvPolynomial (Fin n) k)).2 Q.primeCompl (D j)
  choose D' hD' using hext

  have hDm2 : ∀ (E : Derivation ℤ (Localization.AtPrime Q) (Localization.AtPrime Q))
      (z : Localization.AtPrime Q),
      z ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ 2 →
      E z ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
    intro E z hz
    rw [pow_two] at hz
    refine Submodule.mul_induction_on hz ?_ ?_
    · intro a ha b hb
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
      exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ ha) (Ideal.mul_mem_right _ _ hb)
    · intro a b ha hb
      rw [map_add]
      exact Ideal.add_mem _ ha hb

  let M : Matrix (Fin h) (Fin h) (IsLocalRing.ResidueField (Localization.AtPrime Q)) :=
    Matrix.of fun i j => IsLocalRing.residue (Localization.AtPrime Q) (D' j (ι (f i)))
  have hMdet : M.det ≠ 0 := by
    have hM : M = ((IsLocalRing.residue (Localization.AtPrime Q)).comp ι).mapMatrix
        (Matrix.of fun i j => D j (f i)) := by
      ext i j
      simp [M, hD', ι]
    rw [hM, ← RingHom.map_det, RingHom.comp_apply]
    intro h0
    rw [IsLocalRing.residue_eq_zero_iff,
      IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q] at h0
    exact hdetQ h0

  have hli : LinearIndependent (IsLocalRing.ResidueField (Localization.AtPrime Q))
      (fun i => (IsLocalRing.maximalIdeal (Localization.AtPrime Q)).toCotangent (x i)) := by
    rw [Fintype.linearIndependent_iff]
    intro g hg
    choose b hb using fun i => IsLocalRing.residue_surjective (g i)
    have hsum : (IsLocalRing.maximalIdeal (Localization.AtPrime Q)).toCotangent
        (∑ i, b i • x i) = 0 := by
      rw [map_sum, ← hg]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [map_smul, ← hb i]
      exact (IsScalarTower.algebraMap_smul (IsLocalRing.ResidueField (Localization.AtPrime Q))
        (b i) ((IsLocalRing.maximalIdeal (Localization.AtPrime Q)).toCotangent (x i))).symm
    rw [Ideal.toCotangent_eq_zero] at hsum
    have hy : ∑ i, b i * ι (f i) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ 2 := by
      have e : ((∑ i, b i • x i : IsLocalRing.maximalIdeal (Localization.AtPrime Q)) :
          Localization.AtPrime Q) = ∑ i, b i * ι (f i) := by
        rw [Submodule.coe_sum]
        rfl
      rw [← e]
      exact hsum
    have hj : ∀ j, ∑ i, g i * M i j = 0 := by
      intro j
      have h1 := hDm2 (D' j) _ hy
      have hexp : D' j (∑ i, b i * ι (f i)) =
          ∑ i, b i * D' j (ι (f i)) + ∑ i, ι (f i) * D' j (b i) := by
        rw [← Finset.sum_add_distrib]
        induction (Finset.univ : Finset (Fin h)) using Finset.induction_on with
        | empty => simp
        | insert a s has ih =>
          rw [Finset.sum_insert has, Finset.sum_insert has, map_add, ih, Derivation.leibniz,
            smul_eq_mul, smul_eq_mul]
          try ring
      rw [hexp] at h1
      have h2 : ∑ i, ι (f i) * D' j (b i) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) :=
        Ideal.sum_mem _ fun i _ => Ideal.mul_mem_right _ _ (x i).2
      have h3 := Ideal.sub_mem _ h1 h2
      rw [add_sub_cancel_right, ← IsLocalRing.residue_eq_zero_iff, map_sum] at h3
      simpa [M, map_mul, hb] using h3
    have hv : Matrix.vecMul g M = 0 := by
      funext j
      simp only [Matrix.vecMul, dotProduct, Pi.zero_apply]
      exact hj j
    have hg0 := Matrix.eq_zero_of_vecMul_eq_zero hMdet hv
    intro i
    rw [hg0]
    rfl

  have hQreg := (wcpa_rs_quotient_regular (Localization.AtPrime Q) h x hli).1
  have hspan : Ideal.span (Set.range (fun i =>
      ((x i : IsLocalRing.maximalIdeal (Localization.AtPrime Q)) : Localization.AtPrime Q))) =
      Ideal.map ι (RingHom.ker π) := heq
  obtain ⟨e₂⟩ := hquot (MvPolynomial (Fin n) k) A π hπ p
  let e : (Localization.AtPrime Q ⧸ Ideal.span (Set.range (fun i =>
      ((x i : IsLocalRing.maximalIdeal (Localization.AtPrime Q)) : Localization.AtPrime Q)))) ≃+*
      Localization.AtPrime p := (Ideal.quotEquivOfEq hspan).trans e₂
  haveI := hQreg
  refine IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q ⧸ Ideal.span (Set.range
    (fun i => ((x i : IsLocalRing.maximalIdeal (Localization.AtPrime Q)) :
      Localization.AtPrime Q)))) ?_
  exact e

theorem wcpa_dj_rtsx_sing_struct : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)), wcpaDjIsProjOver k sY → IsLocallyNoetherian Y ∧ IsClosed (wcpaDjSing Y) ∧ (wcpaDjSingGen Y).Finite ∧ ∀ y ∈ wcpaDjSing Y, ∃ γ ∈ wcpaDjSingGen Y, γ ⤳ y :=
by
  intro k _ Y _ sY hproj
  classical

  haveI hP : IsProper sY := wcpa_dj_proj_proper k sY hproj
  haveI hLN : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian sY
  haveI : CompactSpace Y := QuasiCompact.compactSpace_of_compactSpace sY
  haveI : AlgebraicGeometry.IsNoetherian Y := AlgebraicGeometry.IsNoetherian.mk

  have htop : ∀ (X : Type u) [TopologicalSpace X] [TopologicalSpace.NoetherianSpace X]
      [QuasiSober X] [T0Space X] (S : Set X), IsClosed S →
      {γ | γ ∈ S ∧ ∀ γ' ∈ S, γ' ⤳ γ → γ' = γ}.Finite ∧
        ∀ y ∈ S, ∃ γ ∈ {γ | γ ∈ S ∧ ∀ γ' ∈ S, γ' ⤳ γ → γ' = γ}, γ ⤳ y := by
    intro X _ _ _ _ S hS
    obtain ⟨T, hTirr, hT⟩ := TopologicalSpace.NoetherianSpace.exists_finset_irreducible
      (⟨S, hS⟩ : TopologicalSpace.Closeds X)
    have hSeq : ∀ z, z ∈ S ↔ ∃ Z ∈ T, z ∈ (Z : Set X) := by
      intro z
      have h1 := congrArg (fun C : TopologicalSpace.Closeds X => z ∈ (C : Set X)) hT
      simp only [TopologicalSpace.Closeds.coe_finset_sup, Finset.sup_set_eq_biUnion] at h1
      simpa using h1
    have hgen : ∀ Z ∈ T, ∃ η, IsGenericPoint η (Z : Set X) := fun Z hZ =>
      QuasiSober.sober (hTirr ⟨Z, hZ⟩) Z.isClosed
    rcases isEmpty_or_nonempty X with hX | hX
    · exact ⟨Set.Finite.subset Set.finite_empty (fun x _ => isEmptyElim x),
        fun y => isEmptyElim y⟩
    choose! η hη using hgen
    have hηS : ∀ Z ∈ T, η Z ∈ S := fun Z hZ => (hSeq _).mpr ⟨Z, hZ, (hη Z hZ).mem⟩
    refine ⟨?_, ?_⟩
    · apply (T.image η).finite_toSet.subset
      rintro γ ⟨hγS, hmin⟩
      obtain ⟨Z, hZ, hγZ⟩ := (hSeq γ).mp hγS
      have h1 : η Z = γ := hmin (η Z) (hηS Z hZ) ((hη Z hZ).specializes hγZ)
      rw [Finset.coe_image]
      exact ⟨Z, hZ, h1⟩
    · intro y hy
      have hne : (T.filter (fun Z : TopologicalSpace.Closeds X => y ∈ (Z : Set X))).Nonempty := by
        obtain ⟨Z, hZ, hyZ⟩ := (hSeq y).mp hy
        exact ⟨Z, Finset.mem_filter.mpr ⟨hZ, hyZ⟩⟩
      obtain ⟨Z, hZmax⟩ := Finset.exists_maximal hne
      have hZT : Z ∈ T := (Finset.mem_filter.mp hZmax.1).1
      have hyZ : y ∈ (Z : Set X) := (Finset.mem_filter.mp hZmax.1).2
      refine ⟨η Z, ⟨hηS Z hZT, ?_⟩, (hη Z hZT).specializes hyZ⟩
      intro γ' hγ'S hsp
      obtain ⟨Z', hZ'T, hγ'Z'⟩ := (hSeq γ').mp hγ'S
      have hηZ' : η Z ∈ (Z' : Set X) := hsp.mem_closed Z'.isClosed hγ'Z'
      have hle : Z ≤ Z' := by
        intro w hw
        exact ((hη Z hZT).specializes hw).mem_closed Z'.isClosed hηZ'
      have hyZ' : y ∈ (Z' : Set X) := hle hyZ
      have hle' : Z' ≤ Z := hZmax.2 (Finset.mem_filter.mpr ⟨hZ'T, hyZ'⟩) hle
      have hγ'Z : γ' ∈ (Z : Set X) := hle' hγ'Z'
      exact (hsp.antisymm ((hη Z hZT).specializes hγ'Z)).eq

  have htrans : ∀ (X : Scheme.{u}), (∀ U : X.Opens, IsAffineOpen U → IsOpen {p : PrimeSpectrum Γ(X, U) |
      IsRegularLocalRing (Localization.AtPrime p.asIdeal)}) →
      IsOpen {x : X | IsRegularLocalRing (X.presheaf.stalk x)} := by
    intro X H
    rw [isOpen_iff_forall_mem_open]
    intro x hx
    obtain ⟨U, hU, hxU, -⟩ := exists_isAffineOpen_mem_and_subset (x := x) (U := ⊤) trivial
    have key : ∀ z : U, IsRegularLocalRing (X.presheaf.stalk z) ↔
        IsRegularLocalRing (Localization.AtPrime (hU.primeIdealOf z).asIdeal) := by
      intro z
      have := hU.isLocalization_stalk z
      let e := IsLocalization.algEquiv (hU.primeIdealOf z).asIdeal.primeCompl
        (X.presheaf.stalk z) (Localization.AtPrime (hU.primeIdealOf z).asIdeal)
      constructor
      · intro h; exact IsRegularLocalRing.of_ringEquiv e.toRingEquiv
      · intro h; exact IsRegularLocalRing.of_ringEquiv e.toRingEquiv.symm
    have hemb := hU.fromSpec.isOpenEmbedding
    refine ⟨hU.fromSpec '' {p : PrimeSpectrum Γ(X, U) |
      IsRegularLocalRing (Localization.AtPrime p.asIdeal)}, ?_, hemb.isOpenMap _ (H U hU), ?_⟩
    · rintro _ ⟨p, hp, rfl⟩
      have hmem : hU.fromSpec p ∈ U := by
        rw [← SetLike.mem_coe, ← hU.range_fromSpec]; exact ⟨p, rfl⟩
      have hpi : hU.primeIdealOf ⟨hU.fromSpec p, hmem⟩ = p :=
        hemb.injective (hU.fromSpec_primeIdealOf ⟨hU.fromSpec p, hmem⟩)
      have := (key ⟨hU.fromSpec p, hmem⟩).mpr (by rw [hpi]; exact hp)
      exact this
    · exact ⟨hU.primeIdealOf ⟨x, hxU⟩, (key ⟨x, hxU⟩).mp hx, hU.fromSpec_primeIdealOf _⟩

  have H1 := wcpa_dj_rss_jacobian_hard_select wcpa_dj_rss_poly_field_regular
    wcpa_dj_rss_quot_localization
  have H1b := wcpa_dj_rss_jacobian_hard_det
    (wcpa_dj_rss_dual_derivations wcpa_dj_rss_coeff_section) wcpa_dj_rss_derivation_span
    wcpa_dj_rss_left_inverse_minor
  have H2 := wcpa_dj_rss_jacobian_easy wcpa_dj_rss_poly_field_regular
    wcpa_dj_rss_quot_localization

  have hregopen : ∀ (k₀ : Type u) [Field k₀] (A : Type u) [CommRing A] (φ : k₀ →+* A),
      φ.FiniteType → IsOpen {p : PrimeSpectrum A |
        IsRegularLocalRing (Localization.AtPrime p.asIdeal)} := by
    intro k₀ _ A _ φ hφ
    letI := φ.toAlgebra
    obtain ⟨n, ψ, hψ⟩ := (Algebra.FiniteType.iff_quotient_mvPolynomial'' (R := k₀) (S := A)).mp hφ
    have hψ' : Function.Surjective ψ.toRingHom := hψ
    rw [isOpen_iff_forall_mem_open]
    intro p hp
    obtain ⟨h, f, c, x, hf0, hc, hcI, hx, hli⟩ := H1 k₀ n A ψ.toRingHom hψ' p.asIdeal hp
    obtain ⟨D, hD⟩ := H1b k₀ n h (p.asIdeal.comap ψ.toRingHom) f x hx hli
    rw [Ideal.mem_comap] at hD
    refine ⟨PrimeSpectrum.basicOpen
      (ψ.toRingHom c * ψ.toRingHom (Matrix.of fun i j => D j (f i)).det),
      ?_, PrimeSpectrum.isOpen_basicOpen, ?_⟩
    · intro p' hp'
      rw [SetLike.mem_coe, PrimeSpectrum.mem_basicOpen] at hp'
      have h1 : ψ.toRingHom c ∉ p'.asIdeal := fun h => hp' (p'.asIdeal.mul_mem_right _ h)
      have h2 : ψ.toRingHom (Matrix.of fun i j => D j (f i)).det ∉ p'.asIdeal :=
        fun h => hp' (p'.asIdeal.mul_mem_left _ h)
      exact H2 k₀ n A ψ.toRingHom hψ' h f c D hf0 hcI p'.asIdeal h1 h2
    · rw [SetLike.mem_coe, PrimeSpectrum.mem_basicOpen]
      exact fun h => (p.isPrime.mem_or_mem h).elim hc hD

  have hft : ∀ U : Y.Opens, IsAffineOpen U → IsOpen {p : PrimeSpectrum Γ(Y, U) |
      IsRegularLocalRing (Localization.AtPrime p.asIdeal)} := by
    intro U hU
    have hsurj : Function.Surjective (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom :=
      (Scheme.ΓSpecIso (CommRingCat.of k)).commRingCatIsoToRingEquiv.symm.surjective
    exact hregopen k Γ(Y, U)
      ((sY.appLE ⊤ U (by simp)).hom.comp (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom)
      (RingHom.FiniteType.comp
        (HasRingHomProperty.appLE @LocallyOfFiniteType sY inferInstance
          ⟨⊤, isAffineOpen_top _⟩ ⟨U, hU⟩ (by simp))
        (RingHom.FiniteType.of_surjective _ hsurj))
  have hopen := htrans Y hft
  have hcl : IsClosed (wcpaDjSing Y) := hopen.isClosed_compl

  obtain ⟨h3, h4⟩ := htop Y (wcpaDjSing Y) hcl
  exact ⟨hLN, hcl, h3, h4⟩

theorem wcpa_dj_rtsx_low_weight_regular : ∀ (Z : Scheme.{u}) [IsLocallyNoetherian Z] (B : Set Z) (z : Z) (w : ℕ), wcpaDjTorNodeSglWt Z B z w → w ≤ 1 → IsRegularLocalRing (Z.presheaf.stalk z) :=
by
  classical
  intro Z _ B z w hW hw
  obtain ⟨n, q, A, iA, hAreg, hAc, x, y, v, σ, b, e, h, J, hv, hdim, hspan, -, -, -, -, -, hsum⟩ :=
    hW
  haveI hAnoeth : IsNoetherianRing A := hAreg.toIsNoetherian
  have hxm : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (Or.inl (Set.mem_insert x _))
  have hym : y ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (Or.inl (Set.mem_insert_of_mem x rfl))
  have hσm : ∀ l, σ l ∈ IsLocalRing.maximalIdeal A := fun l => by
    rw [← hspan]; exact Ideal.subset_span (Or.inr ⟨l, rfl⟩)
  set F := x * y - v * ∏ l, σ l ^ b l with hF
  haveI hRnt : Nontrivial (A ⧸ Ideal.span {F}) := e.injective.nontrivial
  have hFne : Ideal.span {F} ≠ ⊤ := Ideal.Quotient.nontrivial_iff.mp hRnt
  rcases (by omega : w = 0 ∨ w = 1) with hw0 | hw1
  ·
    exfalso
    subst hw0
    have hb0 : ∀ l, b l = 0 := fun l => Finset.sum_eq_zero_iff.mp hsum l (Finset.mem_univ l)
    have hprod : ∏ l, σ l ^ b l = 1 :=
      Finset.prod_eq_one (fun l _ => by rw [hb0 l, pow_zero])
    have hFm : F ∉ IsLocalRing.maximalIdeal A := by
      intro hFm
      have hveq : v = x * y - F := by rw [hF, hprod]; ring
      have hvm : v ∈ IsLocalRing.maximalIdeal A := by
        rw [hveq]; exact sub_mem (Ideal.mul_mem_right y _ hxm) hFm
      exact ((IsLocalRing.mem_maximalIdeal v).mp hvm) hv
    have hFu : IsUnit F := by
      by_contra hc
      exact hFm ((IsLocalRing.mem_maximalIdeal F).mpr hc)
    exact hFne (Ideal.span_singleton_eq_top.mpr hFu)
  · subst hw1

    obtain ⟨l0, -, hl0⟩ := Finset.exists_ne_zero_of_sum_ne_zero (by rw [hsum]; exact one_ne_zero)
    have hsplit := Finset.add_sum_erase Finset.univ b (Finset.mem_univ l0)
    rw [hsum] at hsplit
    have hbl0 : b l0 = 1 := by omega
    have hrest : ∑ l ∈ Finset.univ.erase l0, b l = 0 := by omega
    have hbl : ∀ l, l ≠ l0 → b l = 0 := fun l hl =>
      Finset.sum_eq_zero_iff.mp hrest l (Finset.mem_erase.mpr ⟨hl, Finset.mem_univ l⟩)
    have hprod : ∏ l, σ l ^ b l = σ l0 := by
      rw [Finset.prod_eq_single l0 (fun l _ hl => by rw [hbl l hl, pow_zero])
        (fun h' => absurd (Finset.mem_univ l0) h'), hbl0, pow_one]
    have hFeq : F = x * y - v * σ l0 := by rw [hF, hprod]
    have hFm : F ∈ IsLocalRing.maximalIdeal A := by
      rw [hFeq]
      exact sub_mem (Ideal.mul_mem_right y _ hxm) (Ideal.mul_mem_left _ v (hσm l0))

    set R := A ⧸ Ideal.span {F} with hRdef
    let mk : A →+* R := Ideal.Quotient.mk (Ideal.span {F})
    have hmk : Function.Surjective mk := Ideal.Quotient.mk_surjective
    haveI hRloc : IsLocalRing R := IsLocalRing.of_surjective' mk hmk
    haveI hRnoeth : IsNoetherianRing R := Ideal.Quotient.isNoetherianRing _
    obtain ⟨u, hu⟩ := hv.exists_left_inv
    have hkey : mk (σ l0) = mk u * mk y * mk x := by
      rw [← map_mul, ← map_mul]
      apply Ideal.Quotient.eq.mpr
      have : σ l0 - u * y * x = (-u) * F := by
        rw [hFeq]; linear_combination (-σ l0) * hu
      rw [this]
      exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self F)
    let S : Finset R :=
      insert (mk x) (insert (mk y) ((Finset.univ.erase l0).image (fun l => mk (σ l))))
    have hmapmax : IsLocalRing.maximalIdeal R = Ideal.map mk (IsLocalRing.maximalIdeal A) :=
      (IsLocalRing.map_maximalIdeal_of_surjective mk hmk).symm
    have hmaxS : IsLocalRing.maximalIdeal R = Ideal.span (S : Set R) := by
      apply le_antisymm
      · rw [hmapmax, ← hspan, Ideal.map_span, Ideal.span_le]
        rintro _ ⟨a, ha, rfl⟩
        simp only [Set.mem_union, Set.mem_insert_iff, Set.mem_singleton_iff,
          Set.mem_range] at ha
        rcases ha with (rfl | rfl) | ⟨l, rfl⟩
        · exact Ideal.subset_span (Finset.mem_coe.mpr (Finset.mem_insert_self _ _))
        · exact Ideal.subset_span (Finset.mem_coe.mpr
            (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _)))
        · by_cases hl : l = l0
          · subst hl
            show mk (σ l) ∈ Ideal.span (S : Set R)
            rw [hkey]
            exact Ideal.mul_mem_left _ _ (Ideal.subset_span (Finset.mem_coe.mpr
              (Finset.mem_insert_self _ _)))
          · exact Ideal.subset_span (Finset.mem_coe.mpr (Finset.mem_insert_of_mem
              (Finset.mem_insert_of_mem (Finset.mem_image.mpr
                ⟨l, Finset.mem_erase.mpr ⟨hl, Finset.mem_univ _⟩, rfl⟩))))
      · rw [Ideal.span_le]
        intro g hg
        rw [Finset.mem_coe, Finset.mem_insert, Finset.mem_insert, Finset.mem_image] at hg
        rw [hmapmax]
        rcases hg with rfl | rfl | ⟨l, -, rfl⟩
        · exact Ideal.mem_map_of_mem mk hxm
        · exact Ideal.mem_map_of_mem mk hym
        · exact Ideal.mem_map_of_mem mk (hσm l)
    have hn : 1 ≤ n := Fin.pos l0
    have hcard : S.card ≤ n + 1 := by
      change (insert (mk x) (insert (mk y)
        ((Finset.univ.erase l0).image (fun l => mk (σ l))))).card ≤ n + 1
      have h1 := Finset.card_insert_le (mk x)
        (insert (mk y) ((Finset.univ.erase l0).image (fun l => mk (σ l))))
      have h2 := Finset.card_insert_le (mk y) ((Finset.univ.erase l0).image (fun l => mk (σ l)))
      have h3 := Finset.card_image_le (s := Finset.univ.erase l0) (f := fun l => mk (σ l))
      have h4 : (Finset.univ.erase l0).card = n - 1 := by
        rw [Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, Fintype.card_fin]
      omega
    have hsf : (IsLocalRing.maximalIdeal R).spanFinrank ≤ n + 1 := by
      rw [hmaxS]
      refine (Submodule.spanFinrank_span_le_ncard_of_finite S.finite_toSet).trans ?_
      rw [Set.ncard_coe_finset]
      exact hcard

    have hK := ringKrullDim_le_ringKrullDim_quotient_add_card ({F} : Finset A) (by
      intro a ha
      rw [Finset.coe_singleton, Set.mem_singleton_iff] at ha
      rw [ha, IsLocalRing.ringJacobson_eq_maximalIdeal]
      exact hFm)
    rw [Finset.coe_singleton, Finset.card_singleton] at hK
    have hle : ((n + 2 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim R + ((1 : ℕ) : WithBot ℕ∞) :=
      hdim ▸ hK
    have hdimR : ((n + 1 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim R := by
      generalize ringKrullDim R = d at hle ⊢
      induction d using WithBot.recBotCoe with
      | bot => simp at hle
      | coe d =>
        induction d using ENat.recTopCoe with
        | top => exact WithBot.coe_le_coe.mpr le_top
        | coe d =>
          have h1 : ((n + 2 : ℕ) : WithBot ℕ∞) ≤ (((d + 1 : ℕ) : ℕ∞) : WithBot ℕ∞) := by
            simpa using hle
          have h2 : ((n + 2 : ℕ) : ℕ∞) ≤ ((d + 1 : ℕ) : ℕ∞) := WithBot.coe_le_coe.mp h1
          have h3 : n + 2 ≤ d + 1 := by exact_mod_cast h2
          exact WithBot.coe_le_coe.mpr (by exact_mod_cast (by omega : n + 1 ≤ d))
    have hRreg : IsRegularLocalRing R :=
      IsRegularLocalRing.of_spanFinrank_maximalIdeal_le R
        (le_trans (by exact_mod_cast hsf) hdimR)

    have hCreg : IsRegularLocalRing
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) :=
      IsRegularLocalRing.of_ringEquiv e.symm
    haveI : IsNoetherianRing
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) :=
      isNoetherianRing_of_surjective R _ e.symm.toRingHom e.symm.surjective
    exact wc_hnas_pfc_regular_flat_descent (Z.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) hCreg

theorem wcpa_dj_rtsx_offE : ∀ {Y Y' : Scheme.{u}} (π : Y' ⟶ Y) (V : Y.Opens) (B : Set Y), IsIso (π ∣_ V) → (∀ y ∈ (V : Set Y), ∃ y' : Y', π y' = y) ∧ Set.InjOn ⇑π (⇑π ⁻¹' (V : Set Y)) ∧ ∀ y' : Y', π y' ∈ V → ((IsRegularLocalRing (Y'.presheaf.stalk y') ↔ IsRegularLocalRing (Y.presheaf.stalk (π y'))) ∧ ringKrullDim (Y'.presheaf.stalk y') = ringKrullDim (Y.presheaf.stalk (π y')) ∧ (wcpaDjTorPt Y' (⇑π ⁻¹' B) y' ↔ wcpaDjTorPt Y B (π y')) ∧ (wcpaDjTorNodeSgl Y' (⇑π ⁻¹' B) y' ↔ wcpaDjTorNodeSgl Y B (π y')) ∧ (∀ w, wcpaDjTorNodeSglWt Y' (⇑π ⁻¹' B) y' w ↔ wcpaDjTorNodeSglWt Y B (π y') w) ∧ (y' ∈ wcpaDjSingGen Y' ↔ π y' ∈ wcpaDjSingGen Y)) :=
by
  intro Y Y' π V B hiso
  classical

  have hC : ∀ {T : Type u} [CommRing T] (K : Ideal T) {m n : ℕ} (h : m ≤ n)
      (x : AdicCompletion K T),
      Ideal.Quotient.factorPow K h (AdicCompletion.evalₐ K n x) = AdicCompletion.evalₐ K m x := by
    intro T _ K m n h x
    obtain ⟨a, rfl⟩ := AdicCompletion.mk_surjective K T x
    rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
    show Ideal.Quotient.mk (K ^ m) _ = Ideal.Quotient.mk (K ^ m) _
    rw [Ideal.Quotient.eq]
    have := AdicCompletion.AdicCauchySequence.mk_eq_mk h a
    rw [Submodule.Quotient.eq] at this
    simpa using this

  have hmap : ∀ {R S : Type u} [CommRing R] [CommRing S] (I : Ideal R) (J : Ideal S)
      (φ : R →+* S), I ≤ J.comap φ → ∃ Φ : AdicCompletion I R →+* AdicCompletion J S,
        ∀ (n : ℕ) (x : AdicCompletion I R) (r : R),
          AdicCompletion.evalₐ I n x = Ideal.Quotient.mk (I ^ n) r →
          AdicCompletion.evalₐ J n (Φ x) = Ideal.Quotient.mk (J ^ n) (φ r) := by
    intro R S _ _ I J φ hle
    have hlen : ∀ n : ℕ, I ^ n ≤ (J ^ n).comap φ := fun n =>
      (Ideal.pow_right_mono hle n).trans (Ideal.le_comap_pow φ n)
    refine ⟨AdicCompletion.liftRingHom J (fun n => (Ideal.quotientMap (J ^ n) φ (hlen n)).comp
      (AdicCompletion.evalₐ I n).toRingHom) ?_, ?_⟩
    · intro m n hmn
      refine RingHom.ext fun x => ?_
      obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
      have hm : AdicCompletion.evalₐ I m x = Ideal.Quotient.mk (I ^ m) r := by
        rw [← hC I hmn x, ← hr]; rfl
      change Ideal.Quotient.factorPow J hmn
          (Ideal.quotientMap (J ^ n) φ (hlen n) (AdicCompletion.evalₐ I n x)) =
        Ideal.quotientMap (J ^ m) φ (hlen m) (AdicCompletion.evalₐ I m x)
      rw [← hr, hm, Ideal.quotientMap_mk, Ideal.quotientMap_mk]
      rfl
    · intro n x r hr
      rw [AdicCompletion.evalₐ_liftRingHom]
      change Ideal.quotientMap (J ^ n) φ (hlen n) (AdicCompletion.evalₐ I n x) = _
      rw [hr, Ideal.quotientMap_mk]
  have hadic : ∀ {R S : Type u} [CommRing R] [CommRing S] (I : Ideal R) (J : Ideal S)
      (φ : R ≃+* S), Ideal.map φ I = J →
      ∃ Φ : AdicCompletion I R ≃+* AdicCompletion J S, ∀ r : R,
        Φ (algebraMap R (AdicCompletion I R) r) = algebraMap S (AdicCompletion J S) (φ r) := by
    intro R S _ _ I J φ hJ
    have h1 : I ≤ J.comap (φ : R →+* S) := by
      rw [← hJ]; exact Ideal.le_comap_map
    have h2 : J ≤ I.comap (φ.symm : S →+* R) := by
      have e : Ideal.map φ.symm J = I := by rw [← hJ]; exact Ideal.map_of_equiv φ
      rw [← e]; exact Ideal.le_comap_map
    obtain ⟨Φ₀, hΦ₀⟩ := hmap I J (φ : R →+* S) h1
    obtain ⟨Ψ₀, hΨ₀⟩ := hmap J I (φ.symm : S →+* R) h2
    have hΨΦ : ∀ x, Ψ₀ (Φ₀ x) = x := by
      intro x
      refine AdicCompletion.ext_evalₐ fun n => ?_
      obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
      rw [hΨ₀ n _ (φ r) (hΦ₀ n x r hr.symm), ← hr]
      simp
    have hΦΨ : ∀ x, Φ₀ (Ψ₀ x) = x := by
      intro x
      refine AdicCompletion.ext_evalₐ fun n => ?_
      obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ J n x)
      rw [hΦ₀ n _ (φ.symm r) (hΨ₀ n x r hr.symm), ← hr]
      simp
    refine ⟨RingEquiv.ofRingHom Φ₀ Ψ₀ (RingHom.ext hΦΨ) (RingHom.ext hΨΦ), fun r => ?_⟩
    refine AdicCompletion.ext_evalₐ fun n => ?_
    change AdicCompletion.evalₐ J n (Φ₀ (algebraMap R (AdicCompletion I R) r)) = _
    rw [hΦ₀ n _ r ((AdicCompletion.evalₐ I n).commutes r), AlgHom.commutes]
    rfl
  have singD : ∀ {Z : Scheme.{u}} {z : Z},
      z ∈ wcpaDjSing Z ↔ ¬ IsRegularLocalRing (Z.presheaf.stalk z) := Iff.rfl
  have genD : ∀ {Z : Scheme.{u}} {z : Z}, z ∈ wcpaDjSingGen Z ↔
      (z ∈ wcpaDjSing Z ∧ ∀ γ' ∈ wcpaDjSing Z, γ' ⤳ z → γ' = z) := Iff.rfl

  have torpt1 : ∀ {Z Z' : Scheme.{u}} (z : Z) (z' : Z') (B : Set Z) (B' : Set Z')
      (φ : Z.presheaf.stalk z ≃+* Z'.presheaf.stalk z')
      (Φ : AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z) ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z')),
      (∀ r : Z.presheaf.stalk z, Φ (algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) r) =
        algebraMap (Z'.presheaf.stalk z')
          (AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z'))
          (φ r)) →
      (∀ (q : ℕ) (h : Fin q → Z.presheaf.stalk z),
        (∀ (w : Z) (hw : w ⤳ z), (w ∈ B ↔ ∃ i, (Z.presheaf.stalkSpecializes hw).hom (h i) ∈
          IsLocalRing.maximalIdeal (Z.presheaf.stalk w))) →
        (∀ (w' : Z') (hw : w' ⤳ z'), (w' ∈ B' ↔ ∃ i, (Z'.presheaf.stalkSpecializes hw).hom
          (φ (h i)) ∈ IsLocalRing.maximalIdeal (Z'.presheaf.stalk w')))) →
      wcpaDjTorPt Z B z → wcpaDjTorPt Z' B' z' := by
    intro Z Z' z z' B B' φ Φ hc hsp hT
    obtain ⟨n, q, s, h, J, hn, hspan, hdisj, hass, hcl⟩ := hT
    refine ⟨n, q, fun j => Φ (s j), fun i => φ (h i), J,
      hn.trans (ringKrullDim_eq_of_ringEquiv φ), ?_, hdisj, ?_, hsp q h hcl⟩
    · have hc' : (Φ : _ →+* _).comp (algebraMap (Z.presheaf.stalk z)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) =
          (algebraMap (Z'.presheaf.stalk z')
          (AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z'))
            (Z'.presheaf.stalk z'))).comp (φ : _ →+* _) := RingHom.ext hc
      have e1 : Ideal.span (Set.range fun j => Φ (s j)) =
          Ideal.map (Φ : _ →+* _) (Ideal.span (Set.range s)) := by
        rw [Ideal.map_span, ← Set.range_comp]; rfl
      rw [e1, hspan, Ideal.map_map, hc', ← Ideal.map_map]
      congr 1
      exact IsLocalRing.map_ringEquiv_maximalIdeal φ
    · intro i
      have := (hass i).map Φ
      rw [hc, map_prod] at this
      exact this

  have node1 : ∀ {Z Z' : Scheme.{u}} (z : Z) (z' : Z') (B : Set Z) (B' : Set Z')
      (φ : Z.presheaf.stalk z ≃+* Z'.presheaf.stalk z')
      (Φ : AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z) ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z')),
      (∀ r : Z.presheaf.stalk z, Φ (algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) r) =
        algebraMap (Z'.presheaf.stalk z')
          (AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z'))
          (φ r)) →
      (∀ (q : ℕ) (h : Fin q → Z.presheaf.stalk z),
        (∀ (w : Z) (hw : w ⤳ z), (w ∈ B ↔ ∃ i, (Z.presheaf.stalkSpecializes hw).hom (h i) ∈
          IsLocalRing.maximalIdeal (Z.presheaf.stalk w))) →
        (∀ (w' : Z') (hw : w' ⤳ z'), (w' ∈ B' ↔ ∃ i, (Z'.presheaf.stalkSpecializes hw).hom
          (φ (h i)) ∈ IsLocalRing.maximalIdeal (Z'.presheaf.stalk w')))) →
      wcpaDjTorNodeSgl Z B z → wcpaDjTorNodeSgl Z' B' z' := by
    intro Z Z' z z' B B' φ Φ hc hsp hT
    obtain ⟨n, q, A, i1, i2, i3, x, y, v, σ, b, e, h, J, H1, H2, H3, H4, H5, H6, H7, H8⟩ := hT
    refine ⟨n, q, A, i1, i2, i3, x, y, v, σ, b, Φ.symm.trans e, fun i => φ (h i), J,
      H1, H2, H3, H4, H5, H6, ?_, hsp q h H8⟩
    intro i
    have e2 : Φ.symm (algebraMap (Z'.presheaf.stalk z')
        (AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z'))
        (φ (h i))) = algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))
        (h i) := by
      rw [RingEquiv.symm_apply_eq, hc]
    rw [RingEquiv.trans_apply, e2]
    exact H7 i

  have wt1 : ∀ {Z Z' : Scheme.{u}} (z : Z) (z' : Z') (B : Set Z) (B' : Set Z')
      (φ : Z.presheaf.stalk z ≃+* Z'.presheaf.stalk z')
      (Φ : AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z) ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z')),
      (∀ r : Z.presheaf.stalk z, Φ (algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) r) =
        algebraMap (Z'.presheaf.stalk z')
          (AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z'))
          (φ r)) →
      (∀ (q : ℕ) (h : Fin q → Z.presheaf.stalk z),
        (∀ (w : Z) (hw : w ⤳ z), (w ∈ B ↔ ∃ i, (Z.presheaf.stalkSpecializes hw).hom (h i) ∈
          IsLocalRing.maximalIdeal (Z.presheaf.stalk w))) →
        (∀ (w' : Z') (hw : w' ⤳ z'), (w' ∈ B' ↔ ∃ i, (Z'.presheaf.stalkSpecializes hw).hom
          (φ (h i)) ∈ IsLocalRing.maximalIdeal (Z'.presheaf.stalk w')))) →
      ∀ w, wcpaDjTorNodeSglWt Z B z w → wcpaDjTorNodeSglWt Z' B' z' w := by
    intro Z Z' z z' B B' φ Φ hc hsp w hT
    obtain ⟨n, q, A, i1, i2, i3, x, y, v, σ, b, e, h, J, H1, H2, H3, H4, H5, H6, H7, H8, H9⟩ := hT
    refine ⟨n, q, A, i1, i2, i3, x, y, v, σ, b, Φ.symm.trans e, fun i => φ (h i), J,
      H1, H2, H3, H4, H5, H6, ?_, hsp q h H8, H9⟩
    intro i
    have e2 : Φ.symm (algebraMap (Z'.presheaf.stalk z')
        (AdicCompletion (IsLocalRing.maximalIdeal (Z'.presheaf.stalk z')) (Z'.presheaf.stalk z'))
        (φ (h i))) = algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))
        (h i) := by
      rw [RingEquiv.symm_apply_eq, hc]
    rw [RingEquiv.trans_apply, e2]
    exact H7 i

  let H := Scheme.Hom.homeomorph (π ∣_ V)
  have hH : ∀ x : (π ⁻¹ᵁ V).toScheme, (H x).1 = π x.1 := fun x => by
    rw [Scheme.Hom.homeomorph_apply]; exact morphismRestrict_base_coe π V x
  have hsurj : ∀ y ∈ (V : Set Y), ∃ y' : Y', π y' = y := by
    intro y hy
    exact ⟨(H.symm ⟨y, hy⟩).1,
      (hH (H.symm ⟨y, hy⟩)).symm.trans (congrArg Subtype.val (H.apply_symm_apply ⟨y, hy⟩))⟩
  have hinj : Set.InjOn ⇑π (⇑π ⁻¹' (V : Set Y)) := by
    intro a ha b hb hab
    have e : H ⟨a, ha⟩ = H ⟨b, hb⟩ :=
      Subtype.ext ((hH ⟨a, ha⟩).trans (hab.trans (hH ⟨b, hb⟩).symm))
    have e2 := congrArg Subtype.val (H.injective e)
    exact e2
  have hlift : ∀ y' : Y', π y' ∈ V → ∀ w : Y, w ⤳ π y' → ∃ w' : Y', w' ⤳ y' ∧ π w' = w := by
    intro y' hy w hw
    have hwV : w ∈ V := V.isOpen.stableUnderGeneralization hw hy
    have h2 : H.symm ⟨w, hwV⟩ ⤳ H.symm ⟨π y', hy⟩ :=
      Specializes.map (Topology.IsInducing.subtypeVal.specializes_iff.mp hw) H.symm.continuous
    have e1 : H.symm ⟨π y', hy⟩ = ⟨y', hy⟩ :=
      H.injective ((H.apply_symm_apply ⟨π y', hy⟩).trans (Subtype.ext (hH ⟨y', hy⟩).symm))
    refine ⟨(H.symm ⟨w, hwV⟩).1, ?_, ?_⟩
    · rw [e1] at h2
      exact h2.map continuous_subtype_val
    · exact (hH (H.symm ⟨w, hwV⟩)).symm.trans
        (congrArg Subtype.val (H.apply_symm_apply ⟨w, hwV⟩))

  have hst : ∀ a : Y', π a ∈ V → IsIso (π.stalkMap a) := by
    intro a ha
    have h1 : IsIso ((π ∣_ V).stalkMap (⟨a, ha⟩ : (π ⁻¹ᵁ V).toScheme)) :=
      ((isIso_iff_isIso_stalkMap (π ∣_ V)).mp hiso).2 _
    exact (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms CommRingCat)
      (morphismRestrictStalkMap π V ⟨a, ha⟩)).mp h1
  have hreg : ∀ a : Y', π a ∈ V → (IsRegularLocalRing (Y'.presheaf.stalk a) ↔
      IsRegularLocalRing (Y.presheaf.stalk (π a))) := by
    intro a ha
    have := hst a ha
    constructor
    · intro h
      have := h
      exact IsRegularLocalRing.of_ringEquiv (asIso (π.stalkMap a)).commRingCatIsoToRingEquiv.symm
    · intro h
      have := h
      exact IsRegularLocalRing.of_ringEquiv (asIso (π.stalkMap a)).commRingCatIsoToRingEquiv

  have hE : ∀ (w' z' : Y') (hw : w' ⤳ z') (x : Y.presheaf.stalk (π z')),
      (Y'.presheaf.stalkSpecializes hw).hom ((π.stalkMap z').hom x) =
      (π.stalkMap w').hom ((Y.presheaf.stalkSpecializes (hw.map π.continuous)).hom x) := by
    intro w' z' hw x
    have h1 := Scheme.Hom.stalkSpecializes_stalkMap π w' z' hw
    have h2 := congrArg (fun g => (CommRingCat.Hom.hom g) x) h1
    simp only [CommRingCat.hom_comp, RingHom.comp_apply] at h2
    exact h2.symm
  have hM : ∀ (w' : Y') (y : Y.presheaf.stalk (π w')),
      (π.stalkMap w').hom y ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk w') ↔
        y ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk (π w')) := by
    intro w' y
    rw [IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal]
    exact map_mem_nonunits_iff _ _
  have hspec : ∀ y' : Y', π y' ∈ V → ∀ (q : ℕ) (h : Fin q → Y.presheaf.stalk (π y')),
      ((∀ (w' : Y') (hw : w' ⤳ y'), (w' ∈ ⇑π ⁻¹' B ↔ ∃ i, (Y'.presheaf.stalkSpecializes hw).hom
        ((π.stalkMap y').hom (h i)) ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk w'))) ↔
       (∀ (w : Y) (hw : w ⤳ π y'), (w ∈ B ↔ ∃ i, (Y.presheaf.stalkSpecializes hw).hom (h i) ∈
        IsLocalRing.maximalIdeal (Y.presheaf.stalk w)))) := by
    intro y' hy q h
    constructor
    · intro H' w hw
      obtain ⟨w', hw', rfl⟩ := hlift y' hy w hw
      have h3 := H' w' hw'
      simp only [hE, hM] at h3
      exact h3
    · intro H w' hw
      have h3 := H (π w') (hw.map π.continuous)
      simp only [hE, hM]
      exact h3

  refine ⟨hsurj, hinj, fun y' hy => ?_⟩
  have := hst y' hy
  let φ : Y.presheaf.stalk (π y') ≃+* Y'.presheaf.stalk y' :=
    (asIso (π.stalkMap y')).commRingCatIsoToRingEquiv
  have hφ : ∀ r, φ r = (π.stalkMap y').hom r := fun r => rfl
  have hφφ : ∀ x, (π.stalkMap y').hom (φ.symm x) = x := fun x => φ.apply_symm_apply x
  obtain ⟨Φ, hc⟩ := hadic (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
    (IsLocalRing.maximalIdeal (Y'.presheaf.stalk y')) φ (IsLocalRing.map_ringEquiv_maximalIdeal φ)
  have hcs : ∀ r', Φ.symm (algebraMap (Y'.presheaf.stalk y')
      (AdicCompletion (IsLocalRing.maximalIdeal (Y'.presheaf.stalk y')) (Y'.presheaf.stalk y')) r') =
      algebraMap (Y.presheaf.stalk (π y'))
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y')))
      (φ.symm r') := by
    intro r'
    rw [RingEquiv.symm_apply_eq, hc, RingEquiv.apply_symm_apply]
  have hfw : ∀ (q : ℕ) (h : Fin q → Y.presheaf.stalk (π y')),
      (∀ (w : Y) (hw : w ⤳ π y'), (w ∈ B ↔ ∃ i, (Y.presheaf.stalkSpecializes hw).hom (h i) ∈
        IsLocalRing.maximalIdeal (Y.presheaf.stalk w))) →
      (∀ (w' : Y') (hw : w' ⤳ y'), (w' ∈ ⇑π ⁻¹' B ↔ ∃ i, (Y'.presheaf.stalkSpecializes hw).hom
        (φ (h i)) ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk w'))) := by
    intro q h H0
    simp only [hφ]
    exact (hspec y' hy q h).mpr H0
  have hbw : ∀ (q : ℕ) (h : Fin q → Y'.presheaf.stalk y'),
      (∀ (w' : Y') (hw : w' ⤳ y'), (w' ∈ ⇑π ⁻¹' B ↔ ∃ i, (Y'.presheaf.stalkSpecializes hw).hom
        (h i) ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk w'))) →
      (∀ (w : Y) (hw : w ⤳ π y'), (w ∈ B ↔ ∃ i, (Y.presheaf.stalkSpecializes hw).hom
        (φ.symm (h i)) ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk w))) := by
    intro q h H0
    refine (hspec y' hy q (fun i => φ.symm (h i))).mp ?_
    simp only [hφφ]
    exact H0
  have hP : ∀ w' : Y', w' ⤳ y' → π w' ∈ V := fun w' hw =>
    V.isOpen.stableUnderGeneralization (hw.map π.continuous) hy
  refine ⟨hreg y' hy, (ringKrullDim_eq_of_ringEquiv φ).symm,
    ⟨fun h => torpt1 y' (π y') (⇑π ⁻¹' B) B φ.symm Φ.symm hcs hbw h,
      fun h => torpt1 (π y') y' B (⇑π ⁻¹' B) φ Φ hc hfw h⟩,
    ⟨fun h => node1 y' (π y') (⇑π ⁻¹' B) B φ.symm Φ.symm hcs hbw h,
      fun h => node1 (π y') y' B (⇑π ⁻¹' B) φ Φ hc hfw h⟩,
    fun w => ⟨fun h => wt1 y' (π y') (⇑π ⁻¹' B) B φ.symm Φ.symm hcs hbw w h,
      fun h => wt1 (π y') y' B (⇑π ⁻¹' B) φ Φ hc hfw w h⟩, ?_⟩

  constructor
  · intro hG
    obtain ⟨hS, hmin⟩ := genD.mp hG
    refine genD.mpr ⟨singD.mpr fun hr => singD.mp hS ((hreg y' hy).mpr hr), ?_⟩
    intro γ' hγ' hsp
    obtain ⟨w', hw', rfl⟩ := hlift y' hy γ' hsp
    have hw'S : w' ∈ wcpaDjSing Y' :=
      singD.mpr fun hr => singD.mp hγ' ((hreg w' (hP w' hw')).mp hr)
    rw [hmin w' hw'S hw']
  · intro hG
    obtain ⟨hS, hmin⟩ := genD.mp hG
    refine genD.mpr ⟨singD.mpr fun hr => singD.mp hS ((hreg y' hy).mp hr), ?_⟩
    intro w' hw' hsp
    have hwV := hP w' hsp
    have hπS : π w' ∈ wcpaDjSing Y :=
      singD.mpr fun hr => singD.mp hw' ((hreg w' hwV).mpr hr)
    exact hinj hwV hy (hmin (π w') hπS (hsp.map π.continuous))

theorem wcpa_dj_sfc_radical_extend_geom : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (z : Z) (𝔭 : Ideal (Z.presheaf.stalk z)), 𝔭.IsRadical → (𝔭.map (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)))).IsRadical :=
by
  intro k _ Z sZ _ z 𝔭 h𝔭
  classical

  have s3 : ∀ (P B : Type u) [CommRing P] [CommRing B] [Algebra P B] [IsNoetherianRing P]
      [Module.Flat P B],
      (∀ (𝔭 : Ideal P) [𝔭.IsPrime], _root_.IsReduced (TensorProduct P 𝔭.ResidueField B)) →
      ∀ (I : Ideal P), I.IsRadical → (I.map (algebraMap P B)).IsRadical := by
    intro P B _ _ _ _ _ hfib I hI
    have hfin := Ideal.finite_minimalPrimes_of_isNoetherianRing P I
    haveI : Fintype I.minimalPrimes := hfin.fintype
    have hpr : ∀ q : I.minimalPrimes, (q : Ideal P).IsPrime := fun q => q.2.1.1
    have hle : ∀ q : I.minimalPrimes, I ≤ (q : Ideal P) := fun q => q.2.1.2
    have hd : ∀ (q : I.minimalPrimes) (b : B), b ∈ I.map (algebraMap P B) →
        (1 : (q : Ideal P).ResidueField) ⊗ₜ[P] b = 0 := by
      intro q b hb
      haveI := hpr q
      have hsub : I.map (algebraMap P B) ≤ RingHom.ker
          (Algebra.TensorProduct.includeRight (R := P) (A := (q : Ideal P).ResidueField)
            (B := B)).toRingHom := by
        rw [Ideal.map_le_iff_le_comap]
        intro a ha
        rw [Ideal.mem_comap, RingHom.mem_ker]
        show (1 : (q : Ideal P).ResidueField) ⊗ₜ[P] algebraMap P B a = 0
        rw [Algebra.algebraMap_eq_smul_one, ← TensorProduct.smul_tmul,
          ← Algebra.algebraMap_eq_smul_one,
          (Ideal.algebraMap_residueField_eq_zero).mpr (hle q ha), TensorProduct.zero_tmul]
      exact hsub hb
    let ρ : P ⧸ I →ₐ[P] ((q : I.minimalPrimes) → (q : Ideal P).ResidueField) :=
      Ideal.Quotient.liftₐ I (AlgHom.pi fun q => Algebra.ofId P (q : Ideal P).ResidueField) (by
        intro a ha
        funext q
        haveI := hpr q
        exact (Ideal.algebraMap_residueField_eq_zero).mpr (hle q ha))
    have hρ : Function.Injective ρ := by
      rw [injective_iff_map_eq_zero]
      intro x hx
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
      rw [Ideal.Quotient.eq_zero_iff_mem]
      have hrad : a ∈ I.radical := by
        rw [← Ideal.sInf_minimalPrimes, Submodule.mem_sInf]
        intro q hq
        haveI : Ideal.IsPrime q := hpr ⟨q, hq⟩
        have := congrFun hx ⟨q, hq⟩
        exact (Ideal.algebraMap_residueField_eq_zero).mp this
      exact hI hrad
    have hinj := Module.Flat.lTensor_preserves_injective_linearMap (M := B) ρ.toLinearMap hρ
    have hc : ∀ b : B, (∀ q : I.minimalPrimes, (1 : (q : Ideal P).ResidueField) ⊗ₜ[P] b = 0) →
        b ∈ I.map (algebraMap P B) := by
      intro b hb
      have h1 : (ρ.toLinearMap.lTensor B) (b ⊗ₜ[P] (1 : P ⧸ I)) = 0 := by
        rw [LinearMap.lTensor_tmul]
        apply (Algebra.TensorProduct.piRight P P B
          (fun q : I.minimalPrimes => (q : Ideal P).ResidueField)).injective
        rw [map_zero, Algebra.TensorProduct.piRight_tmul]
        funext q
        rw [Pi.zero_apply, AlgHom.toLinearMap_apply, map_one, Pi.one_apply]
        have := Algebra.TensorProduct.comm_tmul P (1 : (q : Ideal P).ResidueField) b
        rw [hb q, map_zero] at this
        exact this.symm
      have h2 : b ⊗ₜ[P] (1 : P ⧸ I) = 0 := hinj (h1.trans (map_zero _).symm)
      have h3 := Algebra.TensorProduct.quotIdealMapEquivTensorQuot_mk B I b
      rw [h2, ← map_zero (Algebra.TensorProduct.quotIdealMapEquivTensorQuot B I)] at h3
      rw [← Ideal.Quotient.eq_zero_iff_mem]
      exact (Algebra.TensorProduct.quotIdealMapEquivTensorQuot B I).injective h3
    intro x ⟨n, hn⟩
    apply hc
    intro q
    haveI := hpr q
    have h1 := hd q _ hn
    have h2 : ((1 : (q : Ideal P).ResidueField) ⊗ₜ[P] x) ^ n = 0 := by
      rw [← h1, Algebra.TensorProduct.tmul_pow, one_pow]
    exact IsReduced.eq_zero _ ⟨n, h2⟩

  have s4 : ∀ (T : Type u) [CommRing T],
      (∀ (𝔔 : Ideal T) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔)) →
      _root_.IsReduced T := by
    intro T _ hT
    refine isReduced_ofLocalizationMaximal T (fun J hJ => ?_)
    haveI : J.IsPrime := hJ.isPrime
    haveI := wcpa_regular_isDomain (Localization.AtPrime J) wcpa_rs_quotient_regular (hT J)
    infer_instance

  have trunc : ∀ {X : Type u} [CommRing X] (I : Ideal X) {m k : ℕ} (hle : m ≤ k)
      (x : AdicCompletion I X),
      Ideal.Quotient.factorPow I hle (AdicCompletion.evalₐ I k x) =
        AdicCompletion.evalₐ I m x := by
    intro X _ I m k hle x
    obtain ⟨f, rfl⟩ := AdicCompletion.mk_surjective I X x
    rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
    have h1 := AdicCompletion.AdicCauchySequence.mk_eq_mk (I := I) (M := X) hle f
    have h2 := (Submodule.Quotient.eq _).mp h1
    change Ideal.Quotient.mk (I ^ m) (f k) = Ideal.Quotient.mk (I ^ m) (f m)
    rw [Ideal.Quotient.eq]
    simpa [smul_eq_mul, Ideal.mul_top] using h2
  have evAlg : ∀ {X : Type u} [CommRing X] (I : Ideal X) (k : ℕ) (a : X),
      AdicCompletion.evalₐ I k (algebraMap X (AdicCompletion I X) a) =
        Ideal.Quotient.mk (I ^ k) a := by
    intro X _ I k a
    rw [AdicCompletion.algebraMap_apply, AdicCompletion.evalₐ_of]
    rfl
  have hlev : ∀ (A B : Type u) [CommRing A] [CommRing B] [IsLocalRing A] [IsLocalRing B]
      (f : A ≃+* B), ∃ Φ : AdicCompletion (IsLocalRing.maximalIdeal A) A →+*
        AdicCompletion (IsLocalRing.maximalIdeal B) B,
        ∀ (k : ℕ) (x : AdicCompletion (IsLocalRing.maximalIdeal A) A) (a : A),
          AdicCompletion.evalₐ _ k x = Ideal.Quotient.mk _ a →
          AdicCompletion.evalₐ _ k (Φ x) = Ideal.Quotient.mk _ (f a) := by
    intro A B _ _ _ _ f
    have hle : ∀ k, IsLocalRing.maximalIdeal A ^ k ≤
        Ideal.comap f.toRingHom (IsLocalRing.maximalIdeal B ^ k) := by
      intro k
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow,
        IsLocalRing.map_maximalIdeal_of_surjective f.toRingHom f.surjective]
    let ιb : ∀ k, A ⧸ IsLocalRing.maximalIdeal A ^ k →+* B ⧸ IsLocalRing.maximalIdeal B ^ k :=
      fun k => Ideal.quotientMap _ f.toRingHom (hle k)
    have hιb : ∀ k (a : A), ιb k (Ideal.Quotient.mk _ a) = Ideal.Quotient.mk _ (f a) :=
      fun k a => Ideal.quotientMap_mk
    refine ⟨AdicCompletion.liftRingHom (IsLocalRing.maximalIdeal B)
      (fun k => (ιb k).comp (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) k).toRingHom)
      ?_, ?_⟩
    · intro m k hmk
      refine RingHom.ext fun x => ?_
      change Ideal.Quotient.factorPow _ hmk (ιb k (AdicCompletion.evalₐ _ k x)) =
        ιb m (AdicCompletion.evalₐ _ m x)
      obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) k x)
      rw [← trunc _ hmk x, ← ha, hιb]
      rfl
    · intro k x a hx
      rw [AdicCompletion.evalₐ_liftRingHom]
      change ιb k (AdicCompletion.evalₐ _ k x) = _
      rw [hx, hιb]
  have hcmp : ∀ (P O : Type u) [CommRing P] [CommRing O] [IsLocalRing P] [IsLocalRing O]
      (e : P ≃+* O), ∃ (Φ : AdicCompletion (IsLocalRing.maximalIdeal P) P →+*
        AdicCompletion (IsLocalRing.maximalIdeal O) O)
        (Ψ : AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
          AdicCompletion (IsLocalRing.maximalIdeal P) P),
        Φ.comp (algebraMap P _) = (algebraMap O _).comp e.toRingHom ∧
        Ψ.comp (algebraMap O _) = (algebraMap P _).comp e.symm.toRingHom ∧
        ∀ x, Φ (Ψ x) = x := by
    intro P O _ _ _ _ e
    obtain ⟨Φ, hΦ⟩ := hlev P O e
    obtain ⟨Ψ, hΨ⟩ := hlev O P e.symm
    refine ⟨Φ, Ψ, ?_, ?_, ?_⟩
    · refine RingHom.ext fun p => ?_
      apply AdicCompletion.ext_evalₐ
      intro k
      rw [RingHom.comp_apply, RingHom.comp_apply, hΦ k _ p (evAlg _ k p), evAlg]
      rfl
    · refine RingHom.ext fun p => ?_
      apply AdicCompletion.ext_evalₐ
      intro k
      rw [RingHom.comp_apply, RingHom.comp_apply, hΨ k _ p (evAlg _ k p), evAlg]
      rfl
    · intro x
      apply AdicCompletion.ext_evalₐ
      intro k
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k x)
      rw [hΦ k _ _ (hΨ k x b hb.symm), hb.symm, RingEquiv.apply_symm_apply]

  have hSurj : ∀ (B : Type u) [CommRing B] (S : Type u) [CommRing S] (f : B →+* S),
      Function.Surjective f → wcGRing B → wcGRing S :=
    wc_hnas_pfc_gring_of_surjective wc_hnas_pfc_completion_surj_base_change
  have hPoly : ∀ (B : Type u) [CommRing B], wcGRing B → wcGRing (Polynomial B) :=
    wc_hnas_pfc_gring_polynomial wc_hnas_pfc_regular_flat_ascent
      wc_hnas_pfc_regular_flat_descent wc_hnas_pfc_regular_localization
      wc_hnas_pfc_completion_surj_base_change
      (wc_hnas_pfc_gring_complete_local wc_hnas_pfc_regular_flat_ascent
        wc_hnas_pfc_regular_flat_descent wc_hnas_pfc_regular_localization
        wc_hnas_pfc_completion_surj_base_change)
      (wc_hnas_pfc_poly_complete_fibres wc_hnas_pfc_regular_flat_ascent
        wc_hnas_pfc_regular_flat_descent wc_hnas_pfc_regular_localization
        wc_hnas_pfc_completion_surj_base_change)
  have hGk : wcGRing k := by
    unfold wcGRing
    refine ⟨inferInstance, ?_⟩
    intro 𝔪 _ Λ _ _ hΛ 𝔓 _ L _ _ _ _ _ 𝔔 _
    have hm : IsLocalRing.maximalIdeal (Localization.AtPrime 𝔪) = ⊥ := by
      rw [← Localization.AtPrime.map_eq_maximalIdeal, eq_bot_iff, Ideal.map_le_iff_le_comap]
      intro a ha
      have h0 : a = 0 := by
        have h𝔪 : 𝔪 = ⊥ := Ideal.eq_bot_of_prime 𝔪
        rw [h𝔪] at ha
        exact (Ideal.mem_bot).mp ha
      rw [h0, Ideal.mem_comap, map_zero]
      exact Ideal.zero_mem _
    exact wc_hnas_pfc_fibres_of_field (Localization.AtPrime 𝔪) hm Λ hΛ 𝔓 L 𝔔
  have claim : ∀ n : ℕ, wcGRing (MvPolynomial (Fin n) k) := by
    intro n
    induction n with
    | zero =>
      exact hSurj k _ (MvPolynomial.isEmptyRingEquiv k (Fin 0)).symm.toRingHom
        (MvPolynomial.isEmptyRingEquiv k (Fin 0)).symm.surjective hGk
    | succ n ih =>
      exact hSurj _ _ (MvPolynomial.finSuccEquiv k n).symm.toRingEquiv.toRingHom
        (MvPolynomial.finSuccEquiv k n).symm.surjective (hPoly _ ih)

  obtain ⟨W, hW, hzW, -⟩ := exists_isAffineOpen_mem_and_subset
    (show z ∈ (⊤ : Z.Opens) from trivial)
  have hft : RingHom.FiniteType (sZ.appLE ⊤ W le_top).hom :=
    HasRingHomProperty.appLE @LocallyOfFiniteType sZ inferInstance
      ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ le_top
  have hinvs : Function.Surjective (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom := by
    intro y
    refine ⟨(Scheme.ΓSpecIso (CommRingCat.of k)).hom.hom y, ?_⟩
    simp
  have hφ : RingHom.FiniteType ((sZ.appLE ⊤ W le_top).hom.comp
      (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom) :=
    hft.comp (RingHom.FiniteType.of_surjective _ hinvs)
  letI : Algebra k Γ(Z, W) := ((sZ.appLE ⊤ W le_top).hom.comp
      (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom).toAlgebra
  haveI : Algebra.FiniteType k Γ(Z, W) := hφ
  obtain ⟨n, g, hg⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp
    (inferInstance : Algebra.FiniteType k Γ(Z, W))
  have hGR : wcGRing Γ(Z, W) := hSurj _ _ g.toRingHom hg (claim n)
  haveI : IsNoetherianRing Γ(Z, W) := hGR.1
  set 𝔮 : Ideal Γ(Z, W) := (hW.primeIdealOf ⟨z, hzW⟩).asIdeal with h𝔮def
  letI : Algebra Γ(Z, W) (Z.presheaf.stalk z) :=
    TopCat.Presheaf.algebra_section_stalk Z.presheaf ⟨z, hzW⟩
  haveI : IsLocalization.AtPrime (Z.presheaf.stalk z) 𝔮 := hW.isLocalization_stalk ⟨z, hzW⟩
  let e : Localization.AtPrime 𝔮 ≃+* Z.presheaf.stalk z :=
    (IsLocalization.algEquiv 𝔮.primeCompl (Localization.AtPrime 𝔮)
      (Z.presheaf.stalk z)).toRingEquiv

  have hfib : ∀ (𝔓 : Ideal (Localization.AtPrime 𝔮)) [𝔓.IsPrime],
      _root_.IsReduced (TensorProduct (Localization.AtPrime 𝔮) 𝔓.ResidueField
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔮))
          (Localization.AtPrime 𝔮))) := by
    intro 𝔓 _
    have hred := s4 (TensorProduct (Localization.AtPrime 𝔮) 𝔓.ResidueField
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔮))
        (Localization.AtPrime 𝔮)))
      (fun 𝔔 _ => hGR.2 𝔮 _ ⟨AlgEquiv.refl⟩ 𝔓 𝔓.ResidueField 𝔔)
    exact hred

  set 𝔭' : Ideal (Localization.AtPrime 𝔮) := 𝔭.comap e.toRingHom with h𝔭'def
  have hJ := s3 (Localization.AtPrime 𝔮)
    (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔮))
      (Localization.AtPrime 𝔮)) hfib 𝔭' (h𝔭.comap e.toRingHom)

  obtain ⟨Φ, Ψ, hΦ, hΨ, hΦΨ⟩ := hcmp (Localization.AtPrime 𝔮) (Z.presheaf.stalk z) e
  intro x ⟨m, hm⟩
  have h1 : Ψ x ∈ 𝔭'.map (algebraMap (Localization.AtPrime 𝔮)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔮))
        (Localization.AtPrime 𝔮))) := by
    apply hJ
    refine ⟨m, ?_⟩
    rw [← map_pow]
    have h2 := Ideal.mem_map_of_mem Ψ hm
    rw [Ideal.map_map, hΨ, ← Ideal.map_map] at h2
    refine Ideal.map_mono ?_ h2
    rw [Ideal.map_le_iff_le_comap]
    intro a ha
    rw [Ideal.mem_comap, h𝔭'def, Ideal.mem_comap]
    simpa using ha
  have h3 := Ideal.mem_map_of_mem Φ h1
  rw [hΦΨ, Ideal.map_map, hΦ, ← Ideal.map_map] at h3
  exact Ideal.map_mono Ideal.map_comap_le h3

end GRWTSK.FiniteFieldWeil
