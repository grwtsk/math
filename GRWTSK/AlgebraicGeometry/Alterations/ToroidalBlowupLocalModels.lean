import GRWTSK.AlgebraicGeometry.Alterations.ToroidalSingularLocus

/-!
# Complete-intersection presentations and first blowup chart models

Source candidate split from `weil_conjecture_main.lean`, lines 25000–29929.
See the adjacent `ToroidalBlowupLocalModels.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_rtsxc_ci_stalk_loc_regular : ∀ (X : Scheme.{u}) (x z : X) (h : x ⤳ z), IsRegularLocalRing (X.presheaf.stalk x) ↔ IsRegularLocalRing (Localization.AtPrime (Ideal.comap (X.presheaf.stalkSpecializes h).hom (IsLocalRing.maximalIdeal (X.presheaf.stalk x)))) :=
by
  intro X x z h
  letI : Algebra (X.presheaf.stalk z) (X.presheaf.stalk x) :=
    (X.presheaf.stalkSpecializes h).hom.toAlgebra
  have isLoc : ∀ (X : Scheme.{u}) (x z : X) (h : x ⤳ z),
      letI := (X.presheaf.stalkSpecializes h).hom.toAlgebra
      IsLocalization.AtPrime (X.presheaf.stalk x)
        ((IsLocalRing.maximalIdeal (X.presheaf.stalk x)).comap
          (X.presheaf.stalkSpecializes h).hom) := by
    intro X x z h
    have key : ∀ (A R S : Type u) [CommRing A] [CommRing R] [CommRing S] [IsLocalRing S]
        (gR : A →+* R) (gS : A →+* S) (φ : R →+* S), φ.comp gR = gS →
        ∀ (P Q : Ideal A) [P.IsPrime] [Q.IsPrime],
        @IsLocalization.AtPrime A _ R _ gR.toAlgebra P _ →
        @IsLocalization.AtPrime A _ S _ gS.toAlgebra Q _ →
        letI := φ.toAlgebra; IsLocalization.AtPrime S ((IsLocalRing.maximalIdeal S).comap φ) := by
      intro A R S _ _ _ _ gR gS φ hcomp P Q _ _ hR hS
      letI : Algebra A R := gR.toAlgebra
      letI : Algebra A S := gS.toAlgebra
      letI : Algebra R S := φ.toAlgebra
      have hc : ∀ a, φ (gR a) = gS a := fun a => by rw [← hcomp]; rfl
      haveI : IsScalarTower A R S := IsScalarTower.of_algebraMap_eq (fun a => (hc a).symm)
      have hle : P.primeCompl ≤ Q.primeCompl := by
        intro a ha haQ
        have hu : IsUnit (gR a) := IsLocalization.map_units R (⟨a, ha⟩ : P.primeCompl)
        have hu' : IsUnit (gS a) := hc a ▸ hu.map φ
        have hm : gS a ∈ IsLocalRing.maximalIdeal S := by
          rw [← IsLocalization.AtPrime.map_eq_maximalIdeal Q S]
          exact Ideal.mem_map_of_mem _ haQ
        exact (IsLocalRing.notMem_maximalIdeal.mpr hu') hm
      haveI := IsLocalization.isLocalization_of_submonoid_le R S P.primeCompl Q.primeCompl hle
      show IsLocalization _ S
      refine IsLocalization.of_le (Submonoid.map (algebraMap A R) Q.primeCompl) _ ?_ ?_
      · rintro _ ⟨a, ha, rfl⟩
        show φ (gR a) ∉ IsLocalRing.maximalIdeal S
        rw [hc a]
        exact IsLocalRing.notMem_maximalIdeal.mpr
          (IsLocalization.map_units S (⟨a, ha⟩ : Q.primeCompl))
      · intro r hr
        exact IsLocalRing.notMem_maximalIdeal.mp hr
    obtain ⟨W, hW, hzW, -⟩ :=
      AlgebraicGeometry.exists_isAffineOpen_mem_and_subset (x := z) (U := ⊤) trivial
    have hxW : x ∈ W := h.mem_open W.isOpen hzW
    have hLz := hW.isLocalization_stalk ⟨z, hzW⟩
    have hLx := hW.isLocalization_stalk ⟨x, hxW⟩
    have hcomp : (X.presheaf.stalkSpecializes h).hom.comp (X.presheaf.germ W z hzW).hom =
        (X.presheaf.germ W x hxW).hom := by
      rw [← CommRingCat.hom_comp, TopCat.Presheaf.germ_stalkSpecializes]
    exact key Γ(X, W) _ _ _ _ _ hcomp _ _ hLz hLx
  haveI hloc := isLoc X x z h
  let e : X.presheaf.stalk x ≃+*
      Localization.AtPrime (Ideal.comap (X.presheaf.stalkSpecializes h).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk x))) :=
    (IsLocalization.algEquiv (Ideal.comap (X.presheaf.stalkSpecializes h).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk x))).primeCompl
      (X.presheaf.stalk x) (Localization.AtPrime (Ideal.comap (X.presheaf.stalkSpecializes h).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk x))))).toRingEquiv
  constructor
  · intro hx
    exact IsRegularLocalRing.of_ringEquiv e
  · intro hP
    exact IsRegularLocalRing.of_ringEquiv e.symm

theorem wcpa_dj_rtsxc_ci_equichar_form : ∀ (k : Type u) [Field k] (D : Type u) [CommRing D] (ι : k →+* D) (n : ℕ) (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (e : D ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})), IsAdicComplete (IsLocalRing.maximalIdeal A) A → IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → ∃ (K : Type u) (_ : Field K) (e₁ : D ≃+* (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - 1 * ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l})), IsRegularLocalRing (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧ IsAdicComplete (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧ ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧ Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ Set.range (fun l => (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))) = IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧ ∀ l, Associated (e₁ (e.symm (Ideal.Quotient.mk _ (σ l)))) (Ideal.Quotient.mk _ (MvPowerSeries.C (MvPowerSeries.X l))) :=
by
  intro k _ D _ ι n A _ _ x y v σ b e hAc hv hdim hspan
  classical

  have harith1 : ∀ (m : ℕ) (d : WithBot ℕ∞), d + 1 = ((m + 1 : ℕ) : WithBot ℕ∞) →
      (m : WithBot ℕ∞) ≤ d := by
    intro m d h
    induction d using WithBot.recBotCoe with
    | bot => exact absurd h (by rw [WithBot.bot_add]; exact (WithBot.bot_lt_coe _).ne)
    | coe d =>
      induction d using ENat.recTopCoe with
      | top => exact absurd h (by
          rw [← WithBot.coe_one, ← WithBot.coe_add, top_add]
          exact_mod_cast (ENat.top_ne_natCast _))
      | coe d =>
        have h' : d + 1 = m + 1 := by exact_mod_cast h
        exact_mod_cast (show m ≤ d by omega)
  have harith2 : ∀ (m : ℕ) (a c : WithBot ℕ∞), (m : WithBot ℕ∞) ≤ a → a + 1 ≤ c →
      c + 1 ≤ ((m + 1 : ℕ) : WithBot ℕ∞) → False := by
    intro m a c h1 h2 h3
    induction a using WithBot.recBotCoe with
    | bot => exact absurd h1 (by simp)
    | coe a =>
    induction c using WithBot.recBotCoe with
    | bot => exact absurd h2 (by
        rw [← WithBot.coe_one, ← WithBot.coe_add]; exact fun h => (WithBot.not_coe_le_bot _) h)
    | coe c =>
    induction c using ENat.recTopCoe with
    | top =>
      have : ((⊤ : ℕ∞) + 1 : ℕ∞) ≤ ((m + 1 : ℕ) : ℕ∞) := by exact_mod_cast h3
      rw [top_add, top_le_iff] at this
      exact ENat.top_ne_natCast _ this.symm
    | coe c =>
    induction a using ENat.recTopCoe with
    | top =>
      have : ((⊤ : ℕ∞) + 1 : ℕ∞) ≤ (c : ℕ∞) := by exact_mod_cast h2
      rw [top_add, top_le_iff] at this
      exact ENat.top_ne_natCast _ this.symm
    | coe a =>
      have e1 : m ≤ a := by exact_mod_cast h1
      have e2 : a + 1 ≤ c := by exact_mod_cast h2
      have e3 : c + 1 ≤ m + 1 := by exact_mod_cast h3
      omega

  have s1 : ∀ (K : Type u) [Field K] (m : ℕ),
      (m : WithBot ℕ∞) ≤ ringKrullDim (MvPowerSeries (Fin m) K) := by
    intro K _ m
    induction m with
    | zero =>
      have := (ringKrullDim_nonneg_of_nontrivial :
        (0 : WithBot ℕ∞) ≤ ringKrullDim (MvPowerSeries (Fin 0) K))
      exact_mod_cast this
    | succ m ih =>
      let a : Fin (m + 1) → MvPowerSeries (Fin m) K := fun i =>
        if h : (i : ℕ) < m then MvPowerSeries.X ⟨i, h⟩ else 0
      have ha : MvPowerSeries.HasSubst a := by
        apply MvPowerSeries.hasSubst_of_constantCoeff_zero
        intro i
        simp only [a]
        split_ifs <;> simp
      have hb : MvPowerSeries.HasSubst
          (fun i : Fin m => (MvPowerSeries.X (Fin.castSucc i) : MvPowerSeries (Fin (m + 1)) K)) := by
        apply MvPowerSeries.hasSubst_of_constantCoeff_zero
        intro i
        simp
      let f : MvPowerSeries (Fin (m + 1)) K →+* MvPowerSeries (Fin m) K :=
        (MvPowerSeries.substAlgHom (R := K) ha).toRingHom
      have hf : f (MvPowerSeries.X (Fin.last m)) = 0 := by
        show MvPowerSeries.substAlgHom ha (MvPowerSeries.X (Fin.last m)) = 0
        rw [MvPowerSeries.coe_substAlgHom, MvPowerSeries.subst_X ha]
        simp [a]
      have hsurj : Function.Surjective f := by
        intro p
        refine ⟨MvPowerSeries.subst
          (fun i : Fin m => (MvPowerSeries.X (Fin.castSucc i) : MvPowerSeries (Fin (m + 1)) K)) p, ?_⟩
        show MvPowerSeries.substAlgHom ha _ = p
        rw [MvPowerSeries.coe_substAlgHom, MvPowerSeries.subst_comp_subst_apply hb ha]
        have : (fun s : Fin m => MvPowerSeries.subst a
            ((fun i : Fin m => (MvPowerSeries.X (Fin.castSucc i) : MvPowerSeries (Fin (m + 1)) K)) s)) =
            MvPowerSeries.X := by
          funext s
          beta_reduce
          rw [MvPowerSeries.subst_X ha]
          simp [a]
        rw [this, MvPowerSeries.subst_self]
        rfl
      have h2 := ringKrullDim_succ_le_of_surjective f hsurj MvPowerSeries.X_mem_nonzeroDivisors hf
      have hcast : ((m + 1 : ℕ) : WithBot ℕ∞) = (m : WithBot ℕ∞) + 1 := by push_cast; rfl
      rw [hcast]
      calc (m : WithBot ℕ∞) + 1 ≤ ringKrullDim (MvPowerSeries (Fin m) K) + 1 := by gcongr
        _ ≤ _ := h2

  have s2 : ∀ (K : Type u) [Field K],
      IsRegularLocalRing (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧
      IsAdicComplete (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))
        (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧
      ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∧
      Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ Set.range (fun l =>
        (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))) =
        IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) := by
    intro K _
    have hK0 : IsLocalRing.maximalIdeal K = Ideal.span {(0 : K)} := by
      rw [IsLocalRing.maximalIdeal_eq_bot, Ideal.span_singleton_eq_bot.mpr rfl]
    obtain ⟨-, -, hmaxA', -, -⟩ := wc_hnas_pfc_gcl_cf_power_series_regular K 0 hK0 n
    have hKc : IsAdicComplete (IsLocalRing.maximalIdeal K) K := by
      rw [IsLocalRing.maximalIdeal_eq_bot]; exact IsAdicComplete.bot K
    have hA'c := wc_hnas_pfc_gcl_cf_power_series_complete K 0 hK0 hKc n hmaxA'
    have hmaxA'' : IsLocalRing.maximalIdeal (MvPowerSeries (Fin n) K) =
        Ideal.span (Set.range MvPowerSeries.X) := by
      rw [hmaxA', map_zero, Ideal.span_insert_zero]
    haveI : IsNoetherianRing (MvPowerSeries (Fin n) K) := MvPowerSeries.isNoetherianRing K
    haveI : IsNoetherianRing (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) :=
      MvPowerSeries.isNoetherianRing _
    have hmS := wcpa_dj_npr_psr_maximalIdeal (MvPowerSeries (Fin n) K)
    have hspanS : Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ Set.range (fun l =>
        (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))) =
        IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) := by
      rw [hmS, hmaxA'', Ideal.map_span, Ideal.span_union, sup_comm, ← Set.range_comp] <;> rfl
    have hSc := wcpa_dj_npr_psr_complete (MvPowerSeries (Fin n) K) _ hA'c
    rw [← hmS] at hSc
    have hge := wcpa_dj_npr_psr_dim_ge (MvPowerSeries (Fin n) K) n (s1 K n)
    have hle := ringKrullDim_le_spanFinrank_maximalIdeal
      (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))
    have hrange : (Set.range (fun l =>
        (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))).ncard
          ≤ n := by
      rw [← Set.image_univ]
      exact (Set.ncard_image_le Set.finite_univ).trans (by rw [Set.ncard_univ, Nat.card_fin])
    have h2 : ({MvPowerSeries.X 0, MvPowerSeries.X 1} :
        Set (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))).ncard ≤ 2 :=
      (Set.ncard_insert_le _ _).trans (by rw [Set.ncard_singleton])
    have hc : Submodule.spanFinrank
        (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) ≤ n + 2 := by
      rw [← hspanS]
      calc _ ≤ (({MvPowerSeries.X 0, MvPowerSeries.X 1} :
              Set (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) ∪ Set.range (fun l =>
              (MvPowerSeries.C (MvPowerSeries.X l) :
                MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))).ncard :=
            Submodule.spanFinrank_span_le_ncard_of_finite
              (((Set.finite_singleton _).insert _).union (Set.finite_range _))
        _ ≤ _ := Set.ncard_union_le _ _
        _ ≤ 2 + n := add_le_add h2 hrange
        _ = n + 2 := add_comm _ _
    have hc' : ((Submodule.spanFinrank
        (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) : ℕ) :
          WithBot ℕ∞) ≤ ((n + 2 : ℕ) : WithBot ℕ∞) := by exact_mod_cast hc
    have hdimS : ((n + 2 : ℕ) : WithBot ℕ∞) =
        ringKrullDim (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) :=
      le_antisymm hge (hle.trans hc')
    refine ⟨?_, hSc, hdimS, hspanS⟩
    apply IsRegularLocalRing.of_spanFinrank_maximalIdeal_le
    exact hc'.trans hge

  have s3 : ∀ (R : Type u) [CommRing R] [IsLocalRing R] [IsNoetherianRing R],
      IsAdicComplete (IsLocalRing.maximalIdeal R) R → (k →+* R) →
      ∃ (K : Type u) (_ : Field K) (j : K →+* R),
        Function.Surjective ((IsLocalRing.residue R).comp j) := by
    intro R _ _ _ hRc φ
    have hψ : Function.Injective ((IsLocalRing.residue R).comp φ) := RingHom.injective _
    rcases CharP.char_is_prime_or_zero k (ringChar k) with hp | hp
    · have hpR : ((ringChar k : ℕ) : R) = 0 := by
        rw [← map_natCast φ, ringChar.Nat.cast_ringChar, map_zero]
      haveI : CharP (IsLocalRing.ResidueField R) (ringChar k) :=
        (CharP.charP_iff_prime_eq_zero hp).mpr (by
          rw [← map_natCast (IsLocalRing.residue R), hpR, map_zero])
      obtain ⟨S₀, _, _, _, hS₀dom, hS₀m, hS₀p, ⟨e₀⟩⟩ :=
        wc_hnas_pfc_gcl_cf_unramified_dvr_exists (ringChar k) hp (IsLocalRing.ResidueField R)
      haveI := hS₀dom
      obtain ⟨Λ, _, _, _, hΛdom, hΛc, hΛm, hΛp, ⟨e₂⟩⟩ :=
        wc_hnas_pfc_gcl_cf_complete_unramified (ringChar k) hp S₀ hS₀m hS₀p
      haveI := hΛdom
      have hσ' : Function.Surjective (e₂.trans e₀).toRingHom := (e₂.trans e₀).surjective
      obtain ⟨φΛ, hφΛ⟩ := wc_hnas_pfc_gcl_cf_cohen_ring_lift (ringChar k) hp Λ hΛc hΛm hΛp R hRc
        (e₂.trans e₀).toRingHom
      obtain ⟨K, hK, _, hAlg, hsurj⟩ := wc_hnas_pfc_gcl_cf_coeff_field_char_p (ringChar k) hp Λ hΛm
        R hpR φΛ (e₂.trans e₀).toRingHom hσ' hφΛ
      exact ⟨K, hK, @algebraMap K R _ _ hAlg, hsurj⟩
    · haveI : CharZero k := (CharP.ringChar_zero_iff_CharZero k).mp hp
      obtain ⟨K, hK, hAlg, hsurj⟩ := wc_hnas_pfc_gcl_cf_coeff_field_char_zero R hRc (by
        intro m hm
        have h1 : ((m : k)) ≠ 0 := Nat.cast_ne_zero.mpr hm
        rw [← map_natCast ((IsLocalRing.residue R).comp φ)]
        exact (map_ne_zero_iff _ hψ).mpr h1)
      exact ⟨K, hK, @algebraMap K R _ _ hAlg, hsurj⟩

  have hxm : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (Or.inl (Or.inl rfl))
  have hym : y ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (Or.inl (Or.inr rfl))
  have hσm : ∀ l, σ l ∈ IsLocalRing.maximalIdeal A := fun l => by
    rw [← hspan]; exact Ideal.subset_span (Or.inr ⟨l, rfl⟩)
  by_cases hb : ∃ l, b l ≠ 0
  swap
  ·
    push_neg at hb
    have hprod : ∏ l, σ l ^ b l = 1 := Finset.prod_eq_one (fun l _ => by rw [hb l, pow_zero])
    have hFunit : IsUnit (x * y - v * ∏ l, σ l ^ b l) := by
      rw [hprod, mul_one]
      by_contra hnu
      have h1 : x * y - v ∈ IsLocalRing.maximalIdeal A := (IsLocalRing.mem_maximalIdeal _).mpr hnu
      have h2 : x * y ∈ IsLocalRing.maximalIdeal A := Ideal.mul_mem_right _ _ hxm
      have h3 : v ∈ IsLocalRing.maximalIdeal A := by
        have := Ideal.sub_mem _ h2 h1
        simpa using this
      exact (IsLocalRing.notMem_maximalIdeal.mpr hv) h3
    haveI : Subsingleton (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
      Ideal.Quotient.subsingleton_iff.mpr (Ideal.span_singleton_eq_top.mpr hFunit)
    haveI hDs : Subsingleton D := e.injective.subsingleton
    have hGunit : IsUnit (MvPowerSeries.X 0 * MvPowerSeries.X 1 - 1 * ∏ l,
        (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) k)) ^ b l) := by
      rw [MvPowerSeries.isUnit_iff_constantCoeff]
      simp [hb]
    haveI : Subsingleton (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) k) ⧸ Ideal.span
        {MvPowerSeries.X 0 * MvPowerSeries.X 1 - 1 * ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) :
          MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) k)) ^ b l}) :=
      Ideal.Quotient.subsingleton_iff.mpr (Ideal.span_singleton_eq_top.mpr hGunit)
    obtain ⟨hSreg, hSc, hSdim, hSspan⟩ := s2 k
    exact ⟨k, inferInstance, @RingEquiv.ofUnique _ _ (uniqueOfSubsingleton 0)
      (uniqueOfSubsingleton 0) _ _ _ _, hSreg, hSc, hSdim, hSspan,
      fun l => ⟨1, Subsingleton.elim _ _⟩⟩

  obtain ⟨l₀, hl₀⟩ := hb
  let I : Ideal A := Ideal.span {x * y - v * ∏ l, σ l ^ b l}
  have hIdef : I = Ideal.span {x * y - v * ∏ l, σ l ^ b l} := rfl
  have hprodm : ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A := by
    rw [← Finset.mul_prod_erase Finset.univ (fun l => σ l ^ b l) (Finset.mem_univ l₀)]
    exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ (hσm l₀) _ (Nat.pos_of_ne_zero hl₀))
  have hFm : x * y - v * ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A :=
    Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hxm) (Ideal.mul_mem_left _ _ hprodm)
  have hIle : I ≤ IsLocalRing.maximalIdeal A := (Ideal.span_singleton_le_iff_mem _).mpr hFm
  have hIne : I ≠ ⊤ := fun h => (IsLocalRing.maximalIdeal.isMaximal A).ne_top
    (eq_top_iff.mpr (h ▸ hIle))
  haveI : IsAdicComplete (IsLocalRing.maximalIdeal A) A := hAc
  obtain ⟨hRloc, hRc⟩ := wc_hnas_quotient_complete A I hIne
  haveI := hRloc

  have hmR : IsLocalRing.maximalIdeal (A ⧸ I) =
      Ideal.map (Ideal.Quotient.mk I) (IsLocalRing.maximalIdeal A) := by
    rcases Ideal.map_eq_top_or_isMaximal_of_surjective (Ideal.Quotient.mk I)
      Ideal.Quotient.mk_surjective (IsLocalRing.maximalIdeal.isMaximal A) with h | h
    · exfalso
      have h1 := congrArg (Ideal.comap (Ideal.Quotient.mk I)) h
      rw [Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective, Ideal.comap_top,
        ← RingHom.ker_eq_comap_bot, Ideal.mk_ker, sup_eq_left.mpr hIle] at h1
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top h1
    · exact (IsLocalRing.eq_maximalIdeal h).symm
  have hspanR : Ideal.span ({Ideal.Quotient.mk I x, Ideal.Quotient.mk I y} ∪
      Set.range (fun l => Ideal.Quotient.mk I (σ l))) = IsLocalRing.maximalIdeal (A ⧸ I) := by
    rw [hmR, ← hspan, Ideal.map_span, Set.image_union, Set.image_insert_eq, Set.image_singleton,
      ← Set.range_comp] <;> rfl
  obtain ⟨hAdom, -⟩ := wc_fco_regular_local_ufd A
  haveI := hAdom
  have hdimR : ((n + 1 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (A ⧸ I) := by
    by_cases hF0 : x * y - v * ∏ l, σ l ^ b l = 0
    · have hI0 : I = ⊥ := by rw [hIdef, hF0, Ideal.span_singleton_eq_bot.mpr rfl]
      have e0 : (A ⧸ I) ≃+* A := (Ideal.quotEquivOfEq hI0).trans (RingEquiv.quotientBot A)
      rw [ringKrullDim_eq_of_ringEquiv e0, ← hdim]
      exact_mod_cast (by omega : n + 1 ≤ n + 2)
    · have hnzd := mem_nonZeroDivisors_of_ne_zero hF0
      have h := ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors
        hnzd hFm
      rw [← hdim] at h
      exact harith1 (n + 1) _ h

  obtain ⟨K, hK, j, hj⟩ := s3 (A ⧸ I) hRc (e.toRingHom.comp ι)
  obtain ⟨u, hu⟩ := hv.exists_left_inv
  have hu' : Ideal.Quotient.mk I u * Ideal.Quotient.mk I v = 1 := by
    rw [← map_mul, hu, map_one]
  have hunit : IsUnit (Ideal.Quotient.mk I u) :=
    ⟨⟨_, _, hu', by rw [mul_comm]; exact hu'⟩, rfl⟩

  have hK0 : IsLocalRing.maximalIdeal K = Ideal.span {(0 : K)} := by
    rw [IsLocalRing.maximalIdeal_eq_bot, Ideal.span_singleton_eq_bot.mpr rfl]
  obtain ⟨hdomA', hregA', hmaxA', -, -⟩ := wc_hnas_pfc_gcl_cf_power_series_regular K 0 hK0 n
  have hKc : IsAdicComplete (IsLocalRing.maximalIdeal K) K := by
    rw [IsLocalRing.maximalIdeal_eq_bot]; exact IsAdicComplete.bot K
  have hA'c := wc_hnas_pfc_gcl_cf_power_series_complete K 0 hK0 hKc n hmaxA'
  have hXm : ∀ l, (MvPowerSeries.X l : MvPowerSeries (Fin n) K) ∈
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin n) K) := fun l => by
    rw [hmaxA']; exact Ideal.subset_span (Set.mem_insert_of_mem _ ⟨l, rfl⟩)
  have hcc : ∀ H ∈ IsLocalRing.maximalIdeal (MvPowerSeries (Fin n) K),
      MvPowerSeries.constantCoeff H = 0 := by
    intro H hH
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, MvPowerSeries.isUnit_iff_constantCoeff,
      isUnit_iff_ne_zero, not_not] at hH
    exact hH
  have hx'm : Ideal.Quotient.mk I x ∈ IsLocalRing.maximalIdeal (A ⧸ I) := by
    rw [← hspanR]; exact Ideal.subset_span (Or.inl (Or.inl rfl))
  have hy'm : Ideal.Quotient.mk I y ∈ IsLocalRing.maximalIdeal (A ⧸ I) := by
    rw [← hspanR]; exact Ideal.subset_span (Or.inl (Or.inr rfl))
  have hsm : ∀ l, Ideal.Quotient.mk I (σ l) ∈ IsLocalRing.maximalIdeal (A ⧸ I) := fun l => by
    rw [← hspanR]; exact Ideal.subset_span (Or.inr ⟨l, rfl⟩)
  have hwx : Ideal.Quotient.mk I u * Ideal.Quotient.mk I x ∈ IsLocalRing.maximalIdeal (A ⧸ I) :=
    Ideal.mul_mem_left _ _ hx'm
  obtain ⟨χ₁, hχ₁C, hχ₁X, hχ₁c⟩ := wcpa_dj_stc_ktc_mvps_lift K (A ⧸ I) (Fin n) hRc j
    (fun l => Ideal.Quotient.mk I (σ l)) hsm
  have hχ₁m : (IsLocalRing.maximalIdeal (MvPowerSeries (Fin n) K)).map χ₁ ≤
      IsLocalRing.maximalIdeal (A ⧸ I) := by
    rw [Ideal.map_le_iff_le_comap]
    intro H hH
    have := hχ₁c H
    rw [hcc H hH, map_zero, sub_zero] at this
    exact this
  obtain ⟨Θ, hΘC, hΘX, -⟩ := wcpa_dj_stc_ktc_mvps_lift (MvPowerSeries (Fin n) K) (A ⧸ I) (Fin 2)
    hRc χ₁ ![Ideal.Quotient.mk I u * Ideal.Quotient.mk I x, Ideal.Quotient.mk I y]
    (Fin.forall_fin_two.mpr ⟨hwx, hy'm⟩)
  have hΘ0 : Θ (MvPowerSeries.X 0) = Ideal.Quotient.mk I u * Ideal.Quotient.mk I x := hΘX 0
  have hΘ1 : Θ (MvPowerSeries.X 1) = Ideal.Quotient.mk I y := hΘX 1
  have hΘCX : ∀ l, Θ (MvPowerSeries.C (MvPowerSeries.X l)) = Ideal.Quotient.mk I (σ l) :=
    fun l => (RingHom.congr_fun hΘC (MvPowerSeries.X l)).trans (hχ₁X l)
  haveI : IsAdicComplete (IsLocalRing.maximalIdeal (MvPowerSeries (Fin n) K))
    (MvPowerSeries (Fin n) K) := hA'c
  haveI : IsAdicComplete (IsLocalRing.maximalIdeal (A ⧸ I)) (A ⧸ I) := hRc
  have hΘsurj : Function.Surjective Θ := by
    refine wcpa_dj_nd_surjective_eval (MvPowerSeries (Fin n) K) (A ⧸ I)
      (IsLocalRing.maximalIdeal _) (IsLocalRing.maximalIdeal _) χ₁ Θ hΘC hχ₁m
      (Fin.forall_fin_two.mpr ⟨by rw [hΘ0]; exact hwx, by rw [hΘ1]; exact hy'm⟩) ?_
    intro r
    obtain ⟨c, hc⟩ := hj (IsLocalRing.residue _ r)
    have hrc : r - j c ∈ IsLocalRing.maximalIdeal (A ⧸ I) := by
      rw [← IsLocalRing.residue_eq_zero_iff, map_sub, sub_eq_zero]
      exact hc.symm
    rw [← hspanR, Ideal.span_union, Submodule.mem_sup] at hrc
    obtain ⟨z₁, hz₁, z₂, hz₂, hz⟩ := hrc
    obtain ⟨a₀, a₁, ha⟩ := Ideal.mem_span_pair.mp hz₁
    obtain ⟨w', hw'⟩ := hunit.exists_left_inv
    refine ⟨MvPowerSeries.C c, w' * a₀, a₁, ?_⟩
    have hχc : χ₁ (MvPowerSeries.C c) = j c := RingHom.congr_fun hχ₁C c
    rw [hχc, hΘ0, hΘ1]
    have hlin : r - j c - Ideal.Quotient.mk I u * Ideal.Quotient.mk I x * (w' * a₀) -
        Ideal.Quotient.mk I y * a₁ = z₂ := by
      linear_combination -hz - ha - a₀ * Ideal.Quotient.mk I x * hw'
    rw [hlin]
    refine (Ideal.span_le.mpr ?_) hz₂
    rintro _ ⟨l, rfl⟩
    have := Ideal.mem_map_of_mem χ₁ (hXm l)
    rw [hχ₁X l] at this
    exact this

  set G : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) := MvPowerSeries.X 0 * MvPowerSeries.X 1 -
    1 * ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l
    with hGdef
  have hΘG : Θ G = 0 := by
    rw [hGdef, map_sub, map_mul, map_mul, map_one, map_prod]
    simp only [map_pow, hΘCX, hΘ0, hΘ1]
    have hF : Ideal.Quotient.mk I (x * y - v * ∏ l, σ l ^ b l) = 0 :=
      Ideal.Quotient.mk_singleton_self _
    rw [map_sub, map_mul, map_mul, map_prod] at hF
    simp only [map_pow] at hF
    linear_combination Ideal.Quotient.mk I u * hF + (∏ l, Ideal.Quotient.mk I (σ l) ^ b l) * hu'
  obtain ⟨hSreg, hSc, hSdim, hSspan⟩ := s2 K

  haveI := hdomA'
  haveI := hregA'
  have hGh : G = MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      MvPowerSeries.C (∏ l, (MvPowerSeries.X l : MvPowerSeries (Fin n) K) ^ b l) := by
    rw [hGdef, one_mul, map_prod]
    simp only [map_pow]
  have hhm : (∏ l, (MvPowerSeries.X l : MvPowerSeries (Fin n) K) ^ b l) ∈
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin n) K) := by
    rw [← Finset.mul_prod_erase Finset.univ (fun l => (MvPowerSeries.X l : MvPowerSeries (Fin n) K) ^ b l)
      (Finset.mem_univ l₀)]
    exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ (hXm l₀) _ (Nat.pos_of_ne_zero hl₀))
  have hh0 : (∏ l, (MvPowerSeries.X l : MvPowerSeries (Fin n) K) ^ b l) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr (fun l _ =>
      pow_ne_zero _ (nonZeroDivisors.ne_zero MvPowerSeries.X_mem_nonzeroDivisors))
  obtain ⟨hBdom, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain (MvPowerSeries (Fin n) K) _ hhm hh0
  have hG0 : G ≠ 0 := by
    intro h0
    have := congrArg MvPowerSeries.constantCoeff h0
    rw [hGh] at this
    simp only [map_sub, map_mul, MvPowerSeries.constantCoeff_X, MvPowerSeries.constantCoeff_C,
      mul_zero, zero_sub, neg_eq_zero, map_zero] at this
    exact hh0 this
  have HΘ : ∀ a ∈ Ideal.span {G}, Θ a = 0 := by
    intro a ha
    obtain ⟨t, rfl⟩ := Ideal.mem_span_singleton'.mp ha
    rw [map_mul, hΘG, mul_zero]
  have hΘbs : Function.Surjective (Ideal.Quotient.lift (Ideal.span {G}) Θ HΘ) :=
    Ideal.Quotient.lift_surjective_of_surjective _ HΘ hΘsurj
  haveI hBdom' : IsDomain (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) ⧸ Ideal.span {G}) := by
    rw [hGh]; exact hBdom
  have hker : ∀ c, Θ c = 0 → c ∈ Ideal.span {G} := by
    intro c hc
    by_contra hcn
    have hmkc : Ideal.Quotient.mk (Ideal.span {G}) c ∈ nonZeroDivisors _ :=
      mem_nonZeroDivisors_of_ne_zero (fun h0 => hcn (Ideal.Quotient.eq_zero_iff_mem.mp h0))
    have h1 := ringKrullDim_succ_le_of_surjective _ hΘbs hmkc
      (by rw [Ideal.Quotient.lift_mk]; exact hc)
    have h2 := ringKrullDim_succ_le_of_surjective (Ideal.Quotient.mk (Ideal.span {G}))
      Ideal.Quotient.mk_surjective (mem_nonZeroDivisors_of_ne_zero hG0)
      (Ideal.Quotient.mk_singleton_self G)
    rw [← hSdim] at h2
    exact harith2 (n + 1) _ _ hdimR h1 h2

  have hΘbi : Function.Injective (Ideal.Quotient.lift (Ideal.span {G}) Θ HΘ) := by
    rw [injective_iff_map_eq_zero]
    intro z hz
    obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective z
    rw [Ideal.Quotient.lift_mk] at hz
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (hker c hz)
  let E := RingEquiv.ofBijective (Ideal.Quotient.lift (Ideal.span {G}) Θ HΘ) ⟨hΘbi, hΘbs⟩
  refine ⟨K, hK, e.trans E.symm, hSreg, hSc, hSdim, hSspan, fun l => ?_⟩
  have hval : (e.trans E.symm) (e.symm (Ideal.Quotient.mk I (σ l))) =
      Ideal.Quotient.mk (Ideal.span {G}) (MvPowerSeries.C (MvPowerSeries.X l)) := by
    rw [RingEquiv.trans_apply, RingEquiv.apply_symm_apply, RingEquiv.symm_apply_eq]
    show Ideal.Quotient.mk I (σ l) =
      Ideal.Quotient.lift (Ideal.span {G}) Θ HΘ
        (Ideal.Quotient.mk (Ideal.span {G}) (MvPowerSeries.C (MvPowerSeries.X l)))
    rw [Ideal.Quotient.lift_mk, hΘCX]
  have hassoc : Associated ((e.trans E.symm) (e.symm (Ideal.Quotient.mk I (σ l))))
      (Ideal.Quotient.mk (Ideal.span {G}) (MvPowerSeries.C (MvPowerSeries.X l))) :=
    hval ▸ Associated.refl _
  exact hassoc

theorem wcpa_dj_sfc_gring_fibres : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (z : Z) (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q ⧸ (Q.comap (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)))).map ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))))) :=
by
  intro k _ Z sZ _ z Q _
  classical

  have s4 : ∀ (P Λ : Type u) [CommRing P] [CommRing Λ] [Algebra P Λ] (Q : Ideal Λ) [Q.IsPrime],
      ∃ (𝔔 : Ideal (TensorProduct P (Q.comap (algebraMap P Λ)).ResidueField Λ)) (_ : 𝔔.IsPrime),
        Nonempty (Localization.AtPrime 𝔔 ≃+* (Localization.AtPrime Q ⧸
          (Q.comap (algebraMap P Λ)).map ((algebraMap Λ (Localization.AtPrime Q)).comp
            (algebraMap P Λ)))) := by
    intro P Λ _ _ _ Q _
    let 𝔭 : Ideal P := Q.comap (algebraMap P Λ)
    let ψ : P →+* Localization.AtPrime Q :=
      (algebraMap Λ (Localization.AtPrime Q)).comp (algebraMap P Λ)
    let I : Ideal (Localization.AtPrime Q) := 𝔭.map ψ
    have hI : I ≤ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
      rw [Ideal.map_le_iff_le_comap]
      intro p hp
      exact (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q _).mpr hp
    haveI : Nontrivial (Localization.AtPrime Q ⧸ I) := Ideal.Quotient.nontrivial_iff.mpr
      (ne_top_of_le_ne_top (IsLocalRing.maximalIdeal.isMaximal _).ne_top hI)
    haveI : IsLocalRing (Localization.AtPrime Q ⧸ I) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
    let π : Localization.AtPrime Q →+* Localization.AtPrime Q ⧸ I := Ideal.Quotient.mk I
    have hπψ : ∀ p ∈ 𝔭, π (ψ p) = 0 := fun p hp =>
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_map_of_mem ψ hp)
    have hunitΛ : ∀ y : Λ, y ∉ Q → IsUnit (π (algebraMap Λ (Localization.AtPrime Q) y)) :=
      fun y hy => (IsLocalization.map_units (Localization.AtPrime Q)
        (⟨y, hy⟩ : Q.primeCompl)).map π
    let f₀ : P →+* Localization.AtPrime Q ⧸ I := π.comp ψ
    have hf₀u : ∀ t : 𝔭.primeCompl, IsUnit (f₀ t) := fun t => hunitΛ _ t.2
    let f₁ : Localization.AtPrime 𝔭 →+* Localization.AtPrime Q ⧸ I :=
      IsLocalization.lift (M := 𝔭.primeCompl) hf₀u
    have hf₁ : ∀ p, f₁ (algebraMap P _ p) = f₀ p := fun p => IsLocalization.lift_eq hf₀u p
    have hf₁m : IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭) ≤ RingHom.ker f₁ := by
      rw [← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_le_iff_le_comap]
      intro p hp
      rw [Ideal.mem_comap, RingHom.mem_ker, hf₁]
      exact hπψ p hp
    let α : 𝔭.ResidueField →+* Localization.AtPrime Q ⧸ I :=
      Ideal.Quotient.lift _ f₁ (fun a ha => hf₁m ha)
    have hα : ∀ p, α (algebraMap P 𝔭.ResidueField p) = f₀ p := by
      intro p
      rw [IsScalarTower.algebraMap_apply P (Localization.AtPrime 𝔭) 𝔭.ResidueField]
      exact (Ideal.Quotient.lift_mk _ _ _).trans (hf₁ p)
    have hf₀ : ∀ p, algebraMap P (Localization.AtPrime Q ⧸ I) p = f₀ p := by
      intro p
      rw [IsScalarTower.algebraMap_apply P (Localization.AtPrime Q) (Localization.AtPrime Q ⧸ I),
        IsScalarTower.algebraMap_apply P Λ (Localization.AtPrime Q)]
      rfl
    let αₐ : 𝔭.ResidueField →ₐ[P] Localization.AtPrime Q ⧸ I :=
      { α with commutes' := fun p => (hα p).trans (hf₀ p).symm }
    let βₐ : Λ →ₐ[P] Localization.AtPrime Q ⧸ I :=
      (Ideal.Quotient.mkₐ P I).comp (IsScalarTower.toAlgHom P Λ (Localization.AtPrime Q))
    let Φ : TensorProduct P 𝔭.ResidueField Λ →ₐ[P] Localization.AtPrime Q ⧸ I :=
      Algebra.TensorProduct.lift αₐ βₐ (fun _ _ => Commute.all _ _)
    have hΦ : ∀ a b, Φ (a ⊗ₜ[P] b) = α a * π (algebraMap Λ (Localization.AtPrime Q) b) :=
      fun a b => Algebra.TensorProduct.lift_tmul _ _ _ a b
    let 𝔔 : Ideal (TensorProduct P 𝔭.ResidueField Λ) :=
      (IsLocalRing.maximalIdeal (Localization.AtPrime Q ⧸ I)).comap Φ
    haveI h𝔔 : 𝔔.IsPrime := Ideal.comap_isPrime _ _
    let Φr : TensorProduct P 𝔭.ResidueField Λ →+* Localization.AtPrime Q ⧸ I := Φ.toRingHom
    have hΦu : ∀ t : 𝔔.primeCompl, IsUnit (Φr t) := by
      intro t
      have ht : (t : TensorProduct P 𝔭.ResidueField Λ) ∉ 𝔔 := t.2
      exact IsLocalRing.notMem_maximalIdeal.mp ht
    let Φ' : Localization.AtPrime 𝔔 →+* Localization.AtPrime Q ⧸ I :=
      IsLocalization.lift (M := 𝔔.primeCompl) hΦu
    have hΦ' : ∀ t, Φ' (algebraMap _ (Localization.AtPrime 𝔔) t) = Φ t :=
      fun t => IsLocalization.lift_eq hΦu t
    let j : TensorProduct P 𝔭.ResidueField Λ →+* Localization.AtPrime 𝔔 :=
      algebraMap _ (Localization.AtPrime 𝔔)
    let g₀ : Λ →+* Localization.AtPrime 𝔔 :=
      j.comp (Algebra.TensorProduct.includeRight (R := P) (A := 𝔭.ResidueField)
        (B := Λ)).toRingHom
    have hg₀ : ∀ y, g₀ y = j (1 ⊗ₜ[P] y) := fun y => rfl
    have hg₀u : ∀ y : Q.primeCompl, IsUnit (g₀ y) := by
      intro y
      rw [hg₀]
      have hy : (1 ⊗ₜ[P] (y : Λ) : TensorProduct P 𝔭.ResidueField Λ) ∈ 𝔔.primeCompl := by
        show Φ (1 ⊗ₜ[P] (y : Λ)) ∉ IsLocalRing.maximalIdeal _
        rw [hΦ, map_one, one_mul]
        exact IsLocalRing.notMem_maximalIdeal.mpr (hunitΛ _ y.2)
      exact IsLocalization.map_units (Localization.AtPrime 𝔔) (⟨_, hy⟩ : 𝔔.primeCompl)
    let g₁ : Localization.AtPrime Q →+* Localization.AtPrime 𝔔 :=
      IsLocalization.lift (M := Q.primeCompl) hg₀u
    have hg₁ : ∀ y, g₁ (algebraMap Λ _ y) = g₀ y := fun y => IsLocalization.lift_eq hg₀u y
    have htm : ∀ p : P, (1 : 𝔭.ResidueField) ⊗ₜ[P] algebraMap P Λ p =
        algebraMap P 𝔭.ResidueField p ⊗ₜ[P] (1 : Λ) := by
      intro p
      rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul]
    have hg₁ψ : ∀ p, g₁ (ψ p) = j (algebraMap P 𝔭.ResidueField p ⊗ₜ[P] (1 : Λ)) := by
      intro p
      show g₁ (algebraMap Λ _ (algebraMap P Λ p)) = _
      rw [hg₁, hg₀, htm]
    have hIker : I ≤ RingHom.ker g₁ := by
      rw [Ideal.map_le_iff_le_comap]
      intro p hp
      rw [Ideal.mem_comap, RingHom.mem_ker, hg₁ψ, (Ideal.algebraMap_residueField_eq_zero).mpr hp,
        TensorProduct.zero_tmul, map_zero]
    let Ψ : Localization.AtPrime Q ⧸ I →+* Localization.AtPrime 𝔔 :=
      Ideal.Quotient.lift I g₁ (fun a ha => hIker ha)
    have hΨ : ∀ y, Ψ (π y) = g₁ y := fun y => Ideal.Quotient.lift_mk _ _ _
    have hΨα : ∀ a : 𝔭.ResidueField, Ψ (α a) = j (a ⊗ₜ[P] (1 : Λ)) := by
      have key : (Ψ.comp α).comp (IsLocalRing.residue (Localization.AtPrime 𝔭)) =
          (j.comp (Algebra.TensorProduct.includeLeft (R := P) (S := P) (A := 𝔭.ResidueField)
            (B := Λ)).toRingHom).comp (IsLocalRing.residue (Localization.AtPrime 𝔭)) := by
        apply IsLocalization.ringHom_ext 𝔭.primeCompl
        refine RingHom.ext fun p => ?_
        simp only [RingHom.comp_apply]
        have hr : IsLocalRing.residue (Localization.AtPrime 𝔭) (algebraMap P _ p) =
            algebraMap P 𝔭.ResidueField p := by
          rw [IsScalarTower.algebraMap_apply P (Localization.AtPrime 𝔭) 𝔭.ResidueField]
          rfl
        rw [hr, hα]
        show Ψ (π (ψ p)) = j (algebraMap P 𝔭.ResidueField p ⊗ₜ[P] (1 : Λ))
        rw [hΨ, hg₁ψ]
      intro a
      obtain ⟨x, rfl⟩ := IsLocalRing.residue_surjective a
      exact RingHom.congr_fun key x
    have h1 : Φ'.comp Ψ = RingHom.id _ := by
      apply Ideal.Quotient.ringHom_ext
      apply IsLocalization.ringHom_ext Q.primeCompl
      refine RingHom.ext fun y => ?_
      simp only [RingHom.comp_apply, RingHom.id_apply]
      show Φ' (Ψ (π (algebraMap Λ _ y))) = π (algebraMap Λ _ y)
      rw [hΨ, hg₁, hg₀, hΦ', hΦ, map_one, one_mul]
    have h2 : Ψ.comp Φ' = RingHom.id _ := by
      apply IsLocalization.ringHom_ext 𝔔.primeCompl
      refine RingHom.ext fun t => ?_
      simp only [RingHom.comp_apply, RingHom.id_apply]
      rw [hΦ']
      induction t using TensorProduct.induction_on with
      | zero => rw [map_zero, map_zero, map_zero]
      | tmul a b =>
        rw [hΦ, map_mul, hΨα, hΨ, hg₁, hg₀, ← map_mul, Algebra.TensorProduct.tmul_mul_tmul,
          mul_one, one_mul]
      | add x y hx hy => rw [map_add, map_add, hx, hy, map_add]
    exact ⟨𝔔, h𝔔, ⟨RingEquiv.ofRingHom Φ' Ψ h1 h2⟩⟩

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
        (∀ x, Φ (Ψ x) = x) ∧ (∀ x, Ψ (Φ x) = x) := by
    intro P O _ _ _ _ e
    obtain ⟨Φ, hΦ⟩ := hlev P O e
    obtain ⟨Ψ, hΨ⟩ := hlev O P e.symm
    refine ⟨Φ, Ψ, ?_, ?_, ?_⟩
    · refine RingHom.ext fun p => ?_
      apply AdicCompletion.ext_evalₐ
      intro k
      rw [RingHom.comp_apply, RingHom.comp_apply, hΦ k _ p (evAlg _ k p), evAlg]
      rfl
    · intro x
      apply AdicCompletion.ext_evalₐ
      intro k
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k x)
      rw [hΦ k _ _ (hΨ k x b hb.symm), hb.symm, RingEquiv.apply_symm_apply]
    · intro x
      apply AdicCompletion.ext_evalₐ
      intro k
      obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal P) k x)
      rw [hΨ k _ _ (hΦ k x a ha.symm), ha.symm, RingEquiv.symm_apply_apply]

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

  have s1 : ∃ (R : Type u) (_ : CommRing R) (𝔮 : Ideal R) (_ : 𝔮.IsPrime),
      wcGRing R ∧ Nonempty (Localization.AtPrime 𝔮 ≃+* Z.presheaf.stalk z) := by
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
    let 𝔮 : Ideal Γ(Z, W) := (hW.primeIdealOf ⟨z, hzW⟩).asIdeal
    letI : Algebra Γ(Z, W) (Z.presheaf.stalk z) :=
      TopCat.Presheaf.algebra_section_stalk Z.presheaf ⟨z, hzW⟩
    haveI : IsLocalization.AtPrime (Z.presheaf.stalk z) 𝔮 := hW.isLocalization_stalk ⟨z, hzW⟩
    exact ⟨Γ(Z, W), inferInstance, 𝔮, inferInstance, hGR,
      ⟨(IsLocalization.algEquiv 𝔮.primeCompl (Localization.AtPrime 𝔮)
        (Z.presheaf.stalk z)).toRingEquiv⟩⟩

  obtain ⟨R, _, 𝔮, _, hGR, ⟨e⟩⟩ := s1
  obtain ⟨Φ, Ψ, hΦ, hΦΨ, hΨΦ⟩ := hcmp (Localization.AtPrime 𝔮) (Z.presheaf.stalk z) e
  let ê : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔮))
      (Localization.AtPrime 𝔮) ≃+*
      AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z) :=
    RingEquiv.ofRingHom Φ Ψ (RingHom.ext hΦΨ) (RingHom.ext hΨΦ)
  letI : Algebra (Localization.AtPrime 𝔮)
      (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) :=
    ((algebraMap (Z.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
        (Z.presheaf.stalk z))).comp e.toRingHom).toAlgebra
  have hΛ : Nonempty (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔮))
      (Localization.AtPrime 𝔮) ≃ₐ[Localization.AtPrime 𝔮]
      AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) :=
    ⟨AlgEquiv.ofRingEquiv (f := ê) (fun x => RingHom.congr_fun hΦ x)⟩
  obtain ⟨𝔔, h𝔔, ⟨σ⟩⟩ := s4 (Localization.AtPrime 𝔮)
    (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) Q
  haveI := h𝔔
  haveI hreg := hGR.2 𝔮 _ hΛ (Q.comap (algebraMap (Localization.AtPrime 𝔮)
    (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))))
    (Q.comap (algebraMap (Localization.AtPrime 𝔮)
    (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
      (Z.presheaf.stalk z)))).ResidueField 𝔔
  haveI hq := IsRegularLocalRing.of_ringEquiv σ
  have heq : (Q.comap (algebraMap (Localization.AtPrime 𝔮)
      (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)))).map
      ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
        (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp
        (algebraMap (Localization.AtPrime 𝔮)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
            (Z.presheaf.stalk z)))) =
      (Q.comap (algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
          (Z.presheaf.stalk z)))).map
      ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
        (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp
        (algebraMap (Z.presheaf.stalk z)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
            (Z.presheaf.stalk z)))) := by
    have h1 : Q.comap (algebraMap (Localization.AtPrime 𝔮)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) =
        (Q.comap (algebraMap (Z.presheaf.stalk z)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
            (Z.presheaf.stalk z)))).comap e.toRingHom := by
      rw [Ideal.comap_comap]
      rfl
    have h2 : (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
        (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp
        (algebraMap (Localization.AtPrime 𝔮)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
            (Z.presheaf.stalk z))) =
        ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
          (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp
          (algebraMap (Z.presheaf.stalk z)
            (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
              (Z.presheaf.stalk z)))).comp e.toRingHom := rfl
    rw [h1, h2, ← Ideal.map_map, Ideal.map_comap_of_surjective e.toRingHom e.surjective]
  exact IsRegularLocalRing.of_ringEquiv (Ideal.quotEquivOfEq heq)

theorem wcpa_dj_rtsxc_ci_min_prime_transfer : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (γ z : Z) (hγz : γ ⤳ z), γ ∈ wcpaDjSingGen Z → ∀ (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) [Q.IsPrime], Q ∈ (Ideal.map (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) (Ideal.comap (Z.presheaf.stalkSpecializes hγz).hom (IsLocalRing.maximalIdeal (Z.presheaf.stalk γ)))).minimalPrimes → Q.comap (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) = Ideal.comap (Z.presheaf.stalkSpecializes hγz).hom (IsLocalRing.maximalIdeal (Z.presheaf.stalk γ)) ∧ ¬ IsRegularLocalRing (Localization.AtPrime Q) ∧ ∀ (Q' : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) [Q'.IsPrime], Q' < Q → IsRegularLocalRing (Localization.AtPrime Q') :=
by
  intro k _ Z sZ _ γ z hγz hγ Q _ hQ
  classical
  haveI : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian sZ

  have hcongr : ∀ (R : Type u) [CommRing R] (I J : Ideal R) [I.IsPrime] [J.IsPrime], I = J →
      IsRegularLocalRing (Localization.AtPrime I) → IsRegularLocalRing (Localization.AtPrime J) := by
    intro R _ I J _ _ h
    subst h
    exact id

  have s2 : ∀ (R : Type u) [CommRing R] (S : Type u) [CommRing S] [Algebra R S] [Module.Flat R S]
      (p : Ideal R) [p.IsPrime] (Q : Ideal S), Q ∈ (Ideal.map (algebraMap R S) p).minimalPrimes →
      Q.comap (algebraMap R S) = p ∧
        ∀ (Q' : Ideal S) [Q'.IsPrime], Q' < Q → Q'.comap (algebraMap R S) < p := by
    intro R _ S _ _ _ p _ Q hQ
    haveI hQp : Q.IsPrime := hQ.1.1
    have hpq : p ≤ Q.comap (algebraMap R S) := Ideal.map_le_iff_le_comap.mp hQ.1.2
    haveI : Algebra.HasGoingDown R S := Algebra.HasGoingDown.of_flat
    haveI : Q.LiesOver (Q.comap (algebraMap R S)) := ⟨rfl⟩
    obtain ⟨P, hPQ, hP, hPl⟩ :=
      Ideal.exists_ideal_le_liesOver_of_le (p := p) (q := Q.comap (algebraMap R S)) Q hpq
    have hPc : P.comap (algebraMap R S) = p := hPl.over.symm
    have hIP : Ideal.map (algebraMap R S) p ≤ P := Ideal.map_le_iff_le_comap.mpr hPc.ge
    have hQP : Q ≤ P := hQ.2 ⟨hP, hIP⟩ hPQ
    have hPeq : P = Q := le_antisymm hPQ hQP
    have hQc : Q.comap (algebraMap R S) = p := by rw [← hPeq]; exact hPc
    refine ⟨hQc, ?_⟩
    intro Q' _ hlt
    refine lt_of_le_of_ne ((Ideal.comap_mono hlt.le).trans hQc.le) ?_
    intro heq
    have hIQ' : Ideal.map (algebraMap R S) p ≤ Q' := Ideal.map_le_iff_le_comap.mpr heq.ge
    exact (not_le_of_gt hlt) (hQ.2 ⟨inferInstance, hIQ'⟩ hlt.le)

  have s3 : ∀ (R : Type u) [CommRing R] [IsNoetherianRing R] (S : Type u) [CommRing S]
      [IsNoetherianRing S] [Algebra R S] [Module.Flat R S] (q : Ideal R) [q.IsPrime] (Q : Ideal S)
      [Q.IsPrime], Q.comap (algebraMap R S) = q →
      (IsRegularLocalRing (Localization.AtPrime Q) → IsRegularLocalRing (Localization.AtPrime q)) ∧
      (IsRegularLocalRing (Localization.AtPrime q) →
        IsRegularLocalRing (Localization.AtPrime Q ⧸
          q.map ((algebraMap S (Localization.AtPrime Q)).comp (algebraMap R S))) →
        IsRegularLocalRing (Localization.AtPrime Q)) := by
    intro R _ _ S _ _ _ _ q _ Q _ hq
    letI : Algebra (Localization.AtPrime q) (Localization.AtPrime Q) :=
      (Localization.localRingHom q Q (algebraMap R S) hq.symm).toAlgebra
    haveI : IsLocalHom (algebraMap (Localization.AtPrime q) (Localization.AtPrime Q)) :=
      Localization.isLocalHom_localRingHom q Q (algebraMap R S) hq.symm
    haveI : Module.Flat (Localization.AtPrime q) (Localization.AtPrime Q) := by
      have hf : (algebraMap R S).Flat := RingHom.flat_algebraMap_iff.mpr inferInstance
      have := RingHom.Flat.localRingHom hf Q q hq.symm
      exact RingHom.flat_algebraMap_iff.mp this
    constructor
    · intro h
      exact wc_hnas_pfc_regular_flat_descent _ _ h
    · intro hA hfib
      have hcomp : (algebraMap (Localization.AtPrime q) (Localization.AtPrime Q)).comp
          (algebraMap R (Localization.AtPrime q)) =
          (algebraMap S (Localization.AtPrime Q)).comp (algebraMap R S) := by
        apply RingHom.ext
        intro x
        exact Localization.localRingHom_to_map q Q (algebraMap R S) hq.symm x
      have hideal : Ideal.map (algebraMap (Localization.AtPrime q) (Localization.AtPrime Q))
          (IsLocalRing.maximalIdeal (Localization.AtPrime q)) =
          q.map ((algebraMap S (Localization.AtPrime Q)).comp (algebraMap R S)) := by
        rw [← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_map, hcomp]
      haveI : IsRegularLocalRing (Localization.AtPrime Q ⧸
          q.map ((algebraMap S (Localization.AtPrime Q)).comp (algebraMap R S))) := hfib
      have hfib' := IsRegularLocalRing.of_ringEquiv (Ideal.quotEquivOfEq hideal.symm)
      exact wc_hnas_pfc_regular_flat_ascent _ _ hA hfib'

  have s4 : ∀ (X : Scheme.{u}) (x z : X) (hxz : x ⤳ z), x ∈ wcpaDjSingGen X →
      ∀ (q : Ideal (X.presheaf.stalk z)) [q.IsPrime],
      q < Ideal.comap (X.presheaf.stalkSpecializes hxz).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk x)) →
      IsRegularLocalRing (Localization.AtPrime q) := by
    intro X x z hxz hx q _ hq
    have hxr : x ∈ Set.range (X.fromSpecStalk z) := by
      rw [Scheme.range_fromSpecStalk]; exact hxz
    obtain ⟨P₀, rfl⟩ := hxr
    have hx' : X.fromSpecStalk z P₀ ∈ wcpaDjSing X ∧ ∀ γ' ∈ wcpaDjSing X,
        γ' ⤳ X.fromSpecStalk z P₀ → γ' = X.fromSpecStalk z P₀ := hx
    obtain ⟨hsp₀, hiff₀⟩ := wcpa_dj_mn_generization X z P₀
    have hP₀ : Ideal.comap (X.presheaf.stalkSpecializes hxz).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk (X.fromSpecStalk z P₀))) = P₀.asIdeal := by
      ext a
      rw [Ideal.mem_comap]
      exact hiff₀ a
    rw [hP₀] at hq
    obtain ⟨hsp, hiff⟩ := wcpa_dj_mn_generization X z ⟨q, inferInstance⟩
    have hQ₀ : Ideal.comap (X.presheaf.stalkSpecializes hsp).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk (X.fromSpecStalk z ⟨q, inferInstance⟩))) = q := by
      ext a
      rw [Ideal.mem_comap]
      exact hiff a
    have hyx : X.fromSpecStalk z ⟨q, inferInstance⟩ ⤳ X.fromSpecStalk z P₀ := by
      have hle : (⟨q, inferInstance⟩ : PrimeSpectrum (X.presheaf.stalk z)) ≤ P₀ := hq.le
      have hs := (PrimeSpectrum.le_iff_specializes _ _).mp hle
      exact hs.map (X.fromSpecStalk z).continuous
    have hne : X.fromSpecStalk z ⟨q, inferInstance⟩ ≠ X.fromSpecStalk z P₀ := by
      intro h
      have h2 := (X.fromSpecStalk z).isEmbedding.injective h
      apply ne_of_lt hq
      exact congrArg PrimeSpectrum.asIdeal h2
    have hyreg : IsRegularLocalRing (X.presheaf.stalk (X.fromSpecStalk z ⟨q, inferInstance⟩)) := by
      by_contra hns
      exact hne (hx'.2 _ hns hyx)
    have h1 := (wcpa_dj_rtsxc_ci_stalk_loc_regular X _ z hsp).mp hyreg
    exact hcongr _ _ _ hQ₀ h1

  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
      (Z.presheaf.stalk z)) := wc_hnas_completion_noetherian _
  have hγS : ¬ IsRegularLocalRing (Z.presheaf.stalk γ) := (show γ ∈ wcpaDjSing Z ∧ _ from hγ).1
  obtain ⟨hc, hlt⟩ := s2 (Z.presheaf.stalk z) _ _ Q hQ
  refine ⟨hc, ?_, ?_⟩
  · intro hreg
    have h1 := (s3 (Z.presheaf.stalk z) _ _ Q hc).1 hreg
    exact hγS ((wcpa_dj_rtsxc_ci_stalk_loc_regular Z γ z hγz).mpr h1)
  · intro Q' _ hQ'
    have hq' := hlt Q' hQ'
    have hA := s4 Z γ z hγz hγ _ hq'
    have hfib := wcpa_dj_sfc_gring_fibres k Z sZ z Q'
    exact (s3 (Z.presheaf.stalk z) _ (Q'.comap (algebraMap _ _)) Q' rfl).2 hA hfib

theorem wcpa_dj_rtsxc_mms_loc_quot : ∀ (S D : Type u) [CommRing S] [CommRing D] (φ : S →+* D) (G : S), Function.Surjective φ → RingHom.ker φ = Ideal.span {G} → ∀ (Q : Ideal D) [Q.IsPrime], (IsRegularLocalRing (Localization.AtPrime Q) ↔ IsRegularLocalRing (Localization.AtPrime (Ideal.comap φ Q) ⧸ Ideal.span {algebraMap S (Localization.AtPrime (Ideal.comap φ Q)) G})) :=
by
  intro S D _ _ φ G hφ hker Q _
  obtain ⟨ψ, hψ⟩ : ∃ ψ : Localization.AtPrime (Ideal.comap φ Q) →+* Localization.AtPrime Q,
      ψ = Localization.localRingHom (Ideal.comap φ Q) Q φ rfl := ⟨_, rfl⟩
  have hs : Function.Surjective ψ := by
    intro y
    obtain ⟨⟨d, t⟩, rfl⟩ := IsLocalization.mk'_surjective Q.primeCompl y
    obtain ⟨a, rfl⟩ := hφ d
    obtain ⟨u, hu⟩ := hφ t
    have hu' : u ∈ (Ideal.comap φ Q).primeCompl := by
      show φ u ∉ Q
      rw [hu]; exact t.2
    refine ⟨IsLocalization.mk' (Localization.AtPrime (Ideal.comap φ Q)) a ⟨u, hu'⟩, ?_⟩
    rw [hψ, Localization.localRingHom_mk']
    congr 1
    exact Subtype.ext hu
  have hG : φ G = 0 := by
    rw [← RingHom.mem_ker, hker]; exact Ideal.subset_span (Set.mem_singleton _)
  have hk : RingHom.ker ψ = Ideal.span {algebraMap S (Localization.AtPrime (Ideal.comap φ Q)) G} := by
    apply le_antisymm
    · intro x hx
      rw [RingHom.mem_ker] at hx
      obtain ⟨⟨a, u⟩, rfl⟩ := IsLocalization.mk'_surjective (Ideal.comap φ Q).primeCompl x
      rw [hψ, Localization.localRingHom_mk', IsLocalization.mk'_eq_zero_iff] at hx
      obtain ⟨m, hm⟩ := hx
      obtain ⟨w, hw⟩ := hφ m
      have hw' : w ∈ (Ideal.comap φ Q).primeCompl := by
        show φ w ∉ Q
        rw [hw]; exact m.2
      have hwa : w * a ∈ RingHom.ker φ := by
        rw [RingHom.mem_ker, map_mul, hw]; exact hm
      rw [hker, Ideal.mem_span_singleton'] at hwa
      obtain ⟨c, hc⟩ := hwa
      rw [Ideal.mem_span_singleton']
      refine ⟨IsLocalization.mk' (Localization.AtPrime (Ideal.comap φ Q)) c (⟨w, hw'⟩ * u), ?_⟩
      rw [mul_comm, IsLocalization.mul_mk'_eq_mk'_of_mul, IsLocalization.mk'_eq_iff_eq]
      congr 1
      simp only [Submonoid.coe_mul]
      linear_combination (u : S) * hc
    · rw [Ideal.span_singleton_le_iff_mem, RingHom.mem_ker, hψ, Localization.localRingHom_to_map,
        hG, map_zero]
  let E := (Ideal.quotEquivOfEq hk.symm).trans (RingHom.quotientKerEquivOfSurjective hs)
  constructor
  · intro h
    exact IsRegularLocalRing.of_ringEquiv E.symm
  · intro h
    exact IsRegularLocalRing.of_ringEquiv E

theorem wcpa_dj_rtsxc_mms_hypersurface : ∀ (S : Type u) [CommRing S] [IsRegularLocalRing S] (Q₁ : Ideal S) [Q₁.IsPrime] (G : S), G ∈ Q₁ → G ≠ 0 → (IsRegularLocalRing (Localization.AtPrime Q₁ ⧸ Ideal.span {algebraMap S (Localization.AtPrime Q₁) G}) ↔ ∀ s : S, s ∉ Q₁ → s * G ∉ Q₁ ^ 2) :=
by
  intro S _ _ Q₁ _ G hG hG0
  have hA : IsRegularLocalRing (Localization.AtPrime Q₁) :=
    wc_hnas_pfc_regular_localization S ‹_› Q₁
  have hx : algebraMap S (Localization.AtPrime Q₁) G ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime Q₁) :=
    (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q₁) Q₁ G).mpr hG
  have hdag : algebraMap S (Localization.AtPrime Q₁) G ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime Q₁) ^ 2 ↔
      ∃ s : S, s ∉ Q₁ ∧ s * G ∈ Q₁ ^ 2 := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal, ← Ideal.map_pow,
      IsLocalization.algebraMap_mem_map_algebraMap_iff Q₁.primeCompl]
    simp only [Ideal.mem_primeCompl_iff]
  constructor
  · intro Hreg s hs hs2
    have hx2 := hdag.mpr ⟨s, hs, hs2⟩
    have hmem := wcpa_regular_quotient_conormal (Localization.AtPrime Q₁)
      (fun T _ h => (@wc_fco_regular_local_ufd T _ h).1) wcpa_rs_quotient_regular
      (Ideal.span {algebraMap S (Localization.AtPrime Q₁) G}) Hreg
      (algebraMap S (Localization.AtPrime Q₁) G) (Ideal.mem_span_singleton_self _) hx2
    obtain ⟨z, hz, hzx⟩ := Ideal.mem_mul_span_singleton.mp hmem
    have h1 : (1 - z) * algebraMap S (Localization.AtPrime Q₁) G = 0 := by
      rw [sub_mul, one_mul, hzx, sub_self]
    have hu : IsUnit (1 - z) :=
      IsLocalRing.isUnit_one_sub_self_of_mem_nonunits z ((IsLocalRing.mem_maximalIdeal z).mp hz)
    have hx0 : algebraMap S (Localization.AtPrime Q₁) G = 0 := (IsUnit.mul_right_eq_zero hu).mp h1
    have : IsDomain S := (wc_fco_regular_local_ufd S).1
    have hinj := IsLocalization.injective (Localization.AtPrime Q₁)
      (Ideal.primeCompl_le_nonZeroDivisors Q₁)
    apply hG0
    apply hinj
    rw [hx0, map_zero]
  · intro H
    have hx2 : algebraMap S (Localization.AtPrime Q₁) G ∉
        IsLocalRing.maximalIdeal (Localization.AtPrime Q₁) ^ 2 := by
      intro h
      obtain ⟨s, hs, hs2⟩ := hdag.mp h
      exact H s hs hs2
    exact (wc_rl_quot_regular wc_rl_quot_embdim (Localization.AtPrime Q₁) hA _ hx hx2).1

theorem wcpa_dj_rtsxc_mms_regular_branch : ∀ (K : Type u) [Field K] (n : ℕ) (b : Fin n → ℕ) (Q₁ : Ideal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) [Q₁.IsPrime] (T₀ : Finset (Fin n)), (∀ l, (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ Q₁ ↔ l ∈ T₀) → wcpaMmsG K n b ∈ Q₁ → ¬ (MvPowerSeries.X 0 ∈ Q₁ ∧ MvPowerSeries.X 1 ∈ Q₁ ∧ 2 ≤ ∑ l ∈ T₀, b l) → ∀ s, s ∉ Q₁ → s * wcpaMmsG K n b ∉ Q₁ ^ 2 :=
by
  intro K _ n b Q₁ hQ T₀ hT₀ hG hnot s hs hsq

  have DT : ∀ D : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) →
      MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K),
      (∀ x y, D (x + y) = D x + D y) → (∀ x y, D (x * y) = x * D y + y * D x) →
      D (wcpaMmsG K n b) ∈ Q₁ := by
    intro D hadd hmul
    have hsq' : s * wcpaMmsG K n b ∈ Q₁ * Q₁ := by rw [← pow_two]; exact hsq
    have h2 : D (s * wcpaMmsG K n b) ∈ Q₁ := by
      refine Submodule.mul_induction_on hsq' ?_ ?_
      · intro m hm k hk
        rw [hmul]
        exact Q₁.add_mem (Q₁.mul_mem_right _ hm) (Q₁.mul_mem_right _ hk)
      · intro x y hx hy
        rw [hadd]
        exact Q₁.add_mem hx hy
    rw [hmul] at h2
    have h3 : s * D (wcpaMmsG K n b) ∈ Q₁ := by
      have := Q₁.sub_mem h2 (Q₁.mul_mem_right (D s) hG)
      rwa [add_sub_cancel_right] at this
    exact (hQ.mem_or_mem h3).resolve_left hs

  have prodNot : ∀ t : Finset (Fin n), (∀ l ∈ t, b l ≠ 0 →
      (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∉ Q₁) →
      (∏ l ∈ t, (MvPowerSeries.C (MvPowerSeries.X l) :
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l) ∉ Q₁ := by
    intro t ht hmem
    obtain ⟨l, hl, hlQ⟩ := (Ideal.IsPrime.prod_mem_iff).mp hmem
    by_cases hb : b l = 0
    · rw [hb, pow_zero] at hlQ
      exact hQ.ne_top ((Ideal.eq_top_iff_one _).mpr hlQ)
    · exact ht l hl hb (hQ.mem_of_pow_mem _ hlQ)

  have hCa : ∀ a : MvPowerSeries (Fin n) K,
      (MvPowerSeries.C a : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) =
      algebraMap (MvPowerSeries (Fin n) K) (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) a := by
    intro a
    rw [MvPowerSeries.algebraMap_apply, Algebra.algebraMap_self_apply]
  have hGalg : wcpaMmsG K n b = MvPowerSeries.X 0 * MvPowerSeries.X 1 - 1 *
      algebraMap (MvPowerSeries (Fin n) K) (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))
        (∏ l, (MvPowerSeries.X l : MvPowerSeries (Fin n) K) ^ b l) := by
    rw [← hCa]
    unfold wcpaMmsG
    simp [map_prod, map_pow]
  have outerD : ∀ j : Fin 2,
      (∀ x y, MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) j (x + y) =
        MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) j x +
        MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) j y) ∧
      (∀ x y, MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) j (x * y) =
        x * MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) j y +
        y * MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) j x) := by
    intro j
    refine ⟨fun x y => map_add _ x y, fun x y => ?_⟩
    rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
  by_cases h0 : MvPowerSeries.X 0 ∈ Q₁
  swap
  ·
    have hv : MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) 1 (wcpaMmsG K n b) =
        MvPowerSeries.X 0 := by
      rw [hGalg, map_sub, Derivation.leibniz, Derivation.leibniz, Derivation.map_algebraMap,
        Derivation.map_one_eq_zero, MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_X]
      simp
    have h := DT _ (outerD 1).1 (outerD 1).2
    rw [hv] at h
    exact h0 h
  by_cases h1 : MvPowerSeries.X 1 ∈ Q₁
  swap
  ·
    have hv : MvPowerSeries.pderiv (R := MvPowerSeries (Fin n) K) 0 (wcpaMmsG K n b) =
        MvPowerSeries.X 1 := by
      rw [hGalg, map_sub, Derivation.leibniz, Derivation.leibniz, Derivation.map_algebraMap,
        Derivation.map_one_eq_zero, MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_X]
      simp
    have h := DT _ (outerD 0).1 (outerD 0).2
    rw [hv] at h
    exact h1 h

  have hsum : ¬ 2 ≤ ∑ l ∈ T₀, b l := fun h2 => hnot ⟨h0, h1, h2⟩
  by_cases hall : ∀ l ∈ T₀, b l = 0
  ·
    apply prodNot Finset.univ
    · intro l _ hb hl
      exact hb (hall l ((hT₀ l).mp hl))
    · have e : (1 : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) *
          ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) :
            MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l =
          MvPowerSeries.X 0 * MvPowerSeries.X 1 - wcpaMmsG K n b := by
        unfold wcpaMmsG; ring
      have hm : (1 : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) *
          ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) :
            MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l ∈ Q₁ := by
        rw [e]
        exact Q₁.sub_mem (Q₁.mul_mem_right _ h0) hG
      rwa [one_mul] at hm
  ·
    push Not at hall
    obtain ⟨l₀, hl₀, hbl₀⟩ := hall
    have hadd := Finset.add_sum_erase T₀ b hl₀
    have hb1 : b l₀ = 1 := by omega
    have hrest : ∑ m ∈ T₀.erase l₀, b m = 0 := by omega
    have hzero : ∀ m ∈ T₀.erase l₀, b m = 0 := (Finset.sum_eq_zero_iff).mp hrest

    let Di : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) →
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) :=
      fun f => fun m => MvPowerSeries.pderiv l₀ (MvPowerSeries.coeff m f)
    have hDc : ∀ f m, MvPowerSeries.coeff m (Di f) =
        MvPowerSeries.pderiv l₀ (MvPowerSeries.coeff m f) := fun _ _ => rfl
    have Dadd : ∀ x y, Di (x + y) = Di x + Di y := by
      intro x y
      refine MvPowerSeries.ext (fun m => ?_)
      simp only [hDc, map_add]
    have Dmul : ∀ x y, Di (x * y) = x * Di y + y * Di x := by
      intro x y
      rw [mul_comm y (Di x)]
      refine MvPowerSeries.ext (fun m => ?_)
      rw [hDc, map_add, MvPowerSeries.coeff_mul, MvPowerSeries.coeff_mul,
        MvPowerSeries.coeff_mul, map_sum, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl (fun p _ => ?_)
      rw [hDc, hDc, Derivation.leibniz, smul_eq_mul, smul_eq_mul]
      ring
    have DX : ∀ i : Fin 2, Di (MvPowerSeries.X i) = 0 := by
      intro i
      refine MvPowerSeries.ext (fun m => ?_)
      rw [hDc, MvPowerSeries.coeff_X, map_zero]
      split_ifs <;> simp
    have Done : Di 1 = 0 := by
      refine MvPowerSeries.ext (fun m => ?_)
      rw [hDc, MvPowerSeries.coeff_one, map_zero]
      split_ifs <;> simp
    have Dσ : Di (MvPowerSeries.C (MvPowerSeries.X l₀)) = 1 := by
      refine MvPowerSeries.ext (fun m => ?_)
      rw [hDc, MvPowerSeries.coeff_C, MvPowerSeries.coeff_one]
      split_ifs <;> simp
    have hPsplit : (∏ l, (MvPowerSeries.C (MvPowerSeries.X l) :
          MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l) =
        (MvPowerSeries.C (MvPowerSeries.X l₀) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) *
          ∏ l ∈ Finset.univ.erase l₀, (MvPowerSeries.C (MvPowerSeries.X l) :
            MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l := by
      rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ l₀), hb1, pow_one]
    have Dsub : ∀ a c, Di (a - c) = Di a - Di c := by
      intro a c
      have h := Dadd c (a - c)
      have e : c + (a - c) = a := by ring
      rw [e] at h
      rw [h]
      ring
    have hDG : Di (wcpaMmsG K n b) =
        -((MvPowerSeries.C (MvPowerSeries.X l₀) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) *
          Di (∏ l ∈ Finset.univ.erase l₀, (MvPowerSeries.C (MvPowerSeries.X l) :
            MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l) +
          ∏ l ∈ Finset.univ.erase l₀, (MvPowerSeries.C (MvPowerSeries.X l) :
            MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l) := by
      unfold wcpaMmsG
      rw [hPsplit, Dsub, Dmul, Dmul, Dmul, DX, DX, Done, Dσ]
      ring
    have hDGQ := DT Di Dadd Dmul
    have hσ : (MvPowerSeries.C (MvPowerSeries.X l₀) :
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ Q₁ := (hT₀ l₀).mpr hl₀
    apply prodNot (Finset.univ.erase l₀)
    · intro l hl hb hlQ
      have hlT : l ∈ T₀ := (hT₀ l).mp hlQ
      have hne : l ≠ l₀ := Finset.ne_of_mem_erase hl
      exact hb (hzero l (Finset.mem_erase.mpr ⟨hne, hlT⟩))
    · have e : (∏ l ∈ Finset.univ.erase l₀, (MvPowerSeries.C (MvPowerSeries.X l) :
            MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l) =
          -(Di (wcpaMmsG K n b)) -
            (MvPowerSeries.C (MvPowerSeries.X l₀) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) *
            Di (∏ l ∈ Finset.univ.erase l₀, (MvPowerSeries.C (MvPowerSeries.X l) :
              MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l) := by
        rw [hDG]; ring
      rw [e]
      exact Q₁.sub_mem (Q₁.neg_mem hDGQ) (Q₁.mul_mem_right _ hσ)

theorem wcpa_dj_rtsxc_mms_coord_prime : ∀ (K : Type u) [Field K] (n : ℕ) (T : Finset (Fin n)), (wcpaMmsP K n T).IsPrime ∧ ∀ m : Fin n, (MvPowerSeries.C (MvPowerSeries.X m) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ wcpaMmsP K n T ↔ m ∈ T :=
by
  intro K _ n T
  classical

  have span_X : ∀ (σ : Type) (R : Type u) [CommRing R] (T : Finset σ) (f : MvPowerSeries σ R),
      (∀ m : σ →₀ ℕ, (∀ l ∈ T, m l = 0) → MvPowerSeries.coeff m f = 0) →
      f ∈ Ideal.span (MvPowerSeries.X '' (T : Set σ)) := by
    intro σ R _ T
    induction T using Finset.induction_on with
    | empty =>
      intro f hf
      have : f = 0 := by
        ext m
        simpa using hf m (by simp)
      rw [this]; exact Ideal.zero_mem _
    | insert a T' haT ih =>
      intro f hf
      obtain ⟨h, hcoeff⟩ : ∃ h : MvPowerSeries σ R, ∀ m,
          MvPowerSeries.coeff m h = if m a = 0 then MvPowerSeries.coeff m f else 0 :=
        ⟨fun m => if m a = 0 then MvPowerSeries.coeff m f else 0, fun m => rfl⟩
      have h1 : f - h ∈ Ideal.span (MvPowerSeries.X '' (↑(insert a T') : Set σ)) := by
        have hdvd : MvPowerSeries.X a ∣ f - h := by
          rw [MvPowerSeries.X_dvd_iff]
          intro m hm
          rw [map_sub, hcoeff, if_pos hm, sub_self]
        obtain ⟨c, hc⟩ := hdvd
        rw [hc]
        exact Ideal.mul_mem_right _ _ (Ideal.subset_span ⟨a, by simp, rfl⟩)
      have h2 : h ∈ Ideal.span (MvPowerSeries.X '' (↑(insert a T') : Set σ)) := by
        have : h ∈ Ideal.span (MvPowerSeries.X '' (T' : Set σ)) := by
          apply ih
          intro m hm
          rw [hcoeff]
          split_ifs with hma
          · apply hf
            intro l hl
            rcases Finset.mem_insert.mp hl with rfl | hl
            · exact hma
            · exact hm l hl
          · rfl
        refine Ideal.span_mono ?_ this
        exact Set.image_mono (Finset.coe_subset.mpr (Finset.subset_insert a T'))
      have := Ideal.add_mem _ h1 h2
      rwa [sub_add_cancel] at this

  obtain ⟨tr, htr⟩ : ∃ tr : MvPowerSeries (Fin n) K → MvPowerSeries (Fin n) K, ∀ f m,
      MvPowerSeries.coeff m (tr f) = if (∀ l ∈ T, m l = 0) then MvPowerSeries.coeff m f else 0 :=
    ⟨fun f d => if (∀ l ∈ T, d l = 0) then MvPowerSeries.coeff d f else 0, fun f m => rfl⟩
  obtain ⟨π, hπ⟩ : ∃ π : MvPowerSeries (Fin n) K →+* MvPowerSeries (Fin n) K, ∀ f, π f = tr f :=
    ⟨{ toFun := tr
       map_one' := by
         ext m
         rw [htr, MvPowerSeries.coeff_one]
         split_ifs with h1 h2 h2 <;> first | rfl | exact absurd (fun l _ => by simp [h2]) h1
       map_mul' := fun f g => by
         ext m
         rw [htr, MvPowerSeries.coeff_mul, MvPowerSeries.coeff_mul]
         simp only [htr]
         split_ifs with hm
         · apply Finset.sum_congr rfl
           intro p hp
           rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
           have h1 : ∀ l ∈ T, p.1 l = 0 := fun l hl => by
             have := hm l hl
             rw [← hp, Finsupp.add_apply] at this
             omega
           have h2 : ∀ l ∈ T, p.2 l = 0 := fun l hl => by
             have := hm l hl
             rw [← hp, Finsupp.add_apply] at this
             omega
           rw [if_pos h1, if_pos h2]
         · symm
           apply Finset.sum_eq_zero
           intro p hp
           rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
           push_neg at hm
           obtain ⟨l, hl, hml⟩ := hm
           by_cases h1 : ∀ l ∈ T, p.1 l = 0
           · have h2 : ¬ ∀ l ∈ T, p.2 l = 0 := fun h2 =>
               hml (by rw [← hp, Finsupp.add_apply, h1 l hl, h2 l hl])
             rw [if_neg h2, mul_zero]
           · rw [if_neg h1, zero_mul]
       map_zero' := by
         ext m
         simp only [htr, map_zero]
         split_ifs <;> rfl
       map_add' := fun f g => by
         ext m
         simp only [htr, map_add]
         split_ifs <;> simp }, fun f => rfl⟩
  haveI : IsDomain (MvPowerSeries (Fin n) K) := NoZeroDivisors.to_isDomain _
  obtain ⟨Ψ, hΨ⟩ : ∃ Ψ : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) →+* MvPowerSeries (Fin n) K,
      ∀ f, Ψ f = π (MvPowerSeries.constantCoeff (σ := Fin 2) (R := MvPowerSeries (Fin n) K) f) :=
    ⟨π.comp (MvPowerSeries.constantCoeff (σ := Fin 2) (R := MvPowerSeries (Fin n) K)), fun f => rfl⟩
  have KX : ∀ l ∈ T, π (MvPowerSeries.X l) = 0 := by
    intro l hl
    ext d
    rw [hπ, htr, MvPowerSeries.coeff_X, map_zero]
    split_ifs with h1 h2
    · exfalso
      have := h1 l hl
      rw [h2, Finsupp.single_eq_same] at this
      exact one_ne_zero this
    · rfl
    · rfl
  unfold wcpaMmsP
  have hle : Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => (MvPowerSeries.C (MvPowerSeries.X l) :
      MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) '' (T : Set (Fin n))) ≤ RingHom.ker Ψ := by
    rw [Ideal.span_le]
    rintro x (hx | ⟨l, hl, rfl⟩)
    · rcases hx with rfl | rfl
      · rw [SetLike.mem_coe, RingHom.mem_ker, hΨ, MvPowerSeries.constantCoeff_X, map_zero]
      · rw [SetLike.mem_coe, RingHom.mem_ker, hΨ, MvPowerSeries.constantCoeff_X, map_zero]
    · rw [SetLike.mem_coe, RingHom.mem_ker, hΨ, MvPowerSeries.constantCoeff_C, KX l hl]
  have hge : RingHom.ker Ψ ≤ Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => (MvPowerSeries.C (MvPowerSeries.X l) :
      MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) '' (T : Set (Fin n))) := by
    intro f hf
    rw [RingHom.mem_ker, hΨ] at hf
    obtain ⟨f₀, hf₀⟩ : ∃ f₀, MvPowerSeries.constantCoeff (σ := Fin 2) (R := MvPowerSeries (Fin n) K) f = f₀ :=
      ⟨_, rfl⟩
    rw [hf₀, hπ] at hf
    have ha : f - MvPowerSeries.C (σ := Fin 2) (R := MvPowerSeries (Fin n) K) f₀ ∈
        Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => (MvPowerSeries.C (MvPowerSeries.X l) :
          MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) '' (T : Set (Fin n))) := by
      have h1 := span_X (Fin 2) (MvPowerSeries (Fin n) K) Finset.univ
        (f - MvPowerSeries.C (σ := Fin 2) (R := MvPowerSeries (Fin n) K) f₀) (by
          intro m hm
          have : m = 0 := Finsupp.ext fun i => by simpa using hm i (Finset.mem_univ i)
          rw [this, map_sub, MvPowerSeries.coeff_zero_eq_constantCoeff_apply,
            MvPowerSeries.coeff_zero_C, hf₀, sub_self])
      refine Ideal.span_mono ?_ h1
      rintro x ⟨i, -, rfl⟩
      apply Set.mem_union_left
      have : i = 0 ∨ i = 1 := by fin_cases i <;> simp
      rcases this with rfl | rfl
      · exact Set.mem_insert _ _
      · exact Set.mem_insert_of_mem _ rfl
    have hb : MvPowerSeries.C (σ := Fin 2) (R := MvPowerSeries (Fin n) K) f₀ ∈
        Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => (MvPowerSeries.C (MvPowerSeries.X l) :
          MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) '' (T : Set (Fin n))) := by
      have h1 := span_X (Fin n) K T f₀ (by
        intro m hm
        have := congrArg (MvPowerSeries.coeff m) hf
        rw [htr, if_pos hm, map_zero] at this
        exact this)
      have h2 : MvPowerSeries.C (σ := Fin 2) (R := MvPowerSeries (Fin n) K) f₀ ∈
          Ideal.map (MvPowerSeries.C (σ := Fin 2) (R := MvPowerSeries (Fin n) K))
            (Ideal.span (MvPowerSeries.X '' (T : Set (Fin n)))) := Ideal.mem_map_of_mem _ h1
      rw [Ideal.map_span] at h2
      refine Ideal.span_mono ?_ h2
      rintro x ⟨y, ⟨l, hl, rfl⟩, rfl⟩
      exact Set.mem_union_right _ ⟨l, hl, rfl⟩
    have := Ideal.add_mem _ ha hb
    rwa [sub_add_cancel] at this
  refine ⟨?_, ?_⟩
  · rw [le_antisymm hle hge]
    exact RingHom.ker_isPrime Ψ
  · intro m
    constructor
    · intro hm
      by_contra hmT
      have h1 := hle hm
      rw [RingHom.mem_ker, hΨ, MvPowerSeries.constantCoeff_C, hπ] at h1
      have h2 := congrArg (MvPowerSeries.coeff (Finsupp.single m 1)) h1
      have hc : ∀ l ∈ T, (Finsupp.single m 1) l = 0 := by
        intro l hl
        have hlm : l ≠ m := fun h => hmT (h ▸ hl)
        rw [Finsupp.single_apply, if_neg (Ne.symm hlm)]
      rw [htr, if_pos hc, MvPowerSeries.coeff_X, if_pos rfl, map_zero] at h2
      exact one_ne_zero h2
    · intro hm
      exact Ideal.subset_span (Set.mem_union_right _ ⟨m, hm, rfl⟩)

theorem wcpa_dj_rtsxc_ci_model_min_sing : ∀ (K : Type u) [Field K] (n : ℕ) (b : Fin n → ℕ) (D : Type u) [CommRing D] (e₁ : D ≃+* (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - 1 * ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l})) (I : Ideal D) (g : Fin n → D), IsRegularLocalRing (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) → I.IsRadical → I ≠ ⊤ → (∀ (Q : Ideal D) [Q.IsPrime], Q ∈ I.minimalPrimes → ¬ IsRegularLocalRing (Localization.AtPrime Q) ∧ ∀ (Q' : Ideal D) [Q'.IsPrime], Q' < Q → IsRegularLocalRing (Localization.AtPrime Q')) → (∀ l, b l ≠ 0 → Associated (e₁ (g l)) (Ideal.Quotient.mk _ (MvPowerSeries.C (MvPowerSeries.X l)))) → (∀ l, b l ≠ 0 → ∀ Q ∈ I.minimalPrimes, g l ∈ Q → g l ∈ I) → ∃ T : Finset (Fin n), Ideal.map e₁ I = Ideal.map (Ideal.Quotient.mk _) (Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) '' (T : Set (Fin n)))) ∧ ((T.card = 1 ∧ ∀ l ∈ T, 2 ≤ b l) ∨ (T.card = 2 ∧ ∀ l ∈ T, b l = 1)) ∧ ∀ l ∈ T, g l ∈ I :=
by
  intro K _ n b D _ e₁ I g hS hrad htop hmin hassoc hhook
  classical
  haveI := hS

  obtain ⟨φ, hφdef⟩ : ∃ φ : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K) →+* D,
      φ = e₁.symm.toRingHom.comp (Ideal.Quotient.mk _) := ⟨_, rfl⟩
  have hφs : Function.Surjective φ := by
    rw [hφdef]
    exact e₁.symm.surjective.comp Ideal.Quotient.mk_surjective
  have hker : RingHom.ker φ = Ideal.span {wcpaMmsG K n b} := by
    rw [hφdef, RingHom.ker_comp_of_injective _ e₁.symm.injective]
    exact Ideal.mk_ker
  have hφG : φ (wcpaMmsG K n b) = 0 := by
    rw [← RingHom.mem_ker, hker]
    exact Ideal.subset_span (Set.mem_singleton _)
  have hφmk : ∀ x, e₁.symm (Ideal.Quotient.mk _ x) = φ x := by
    intro x
    rw [hφdef]
    rfl
  have hmape : ∀ J : Ideal D, Ideal.map e₁ J = Ideal.map (Ideal.Quotient.mk _) (Ideal.comap φ J) := by
    intro J
    rw [hφdef, ← Ideal.comap_comap, Ideal.map_comap_of_surjective _ Ideal.Quotient.mk_surjective]
    exact (Ideal.comap_symm e₁).symm

  have hG0 : wcpaMmsG K n b ≠ 0 := by
    unfold wcpaMmsG
    intro h
    have h1 : (1 : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) *
        ∏ l, (MvPowerSeries.C (MvPowerSeries.X l) :
          MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l =
        MvPowerSeries.C (∏ l, MvPowerSeries.X l ^ b l) := by
      simp [map_prod, map_pow]
    rw [h1] at h
    have h2 := congrArg
      (MvPowerSeries.coeff (Finsupp.single (0 : Fin 2) 1 + Finsupp.single 1 1)) h
    have hne : (Finsupp.single (0 : Fin 2) 1 + Finsupp.single 1 1) ≠ 0 := by
      intro h0
      have := congrArg (fun f => f 0) h0
      simp at this
    rw [map_sub, MvPowerSeries.coeff_C, if_neg hne, sub_zero, map_zero] at h2
    rw [MvPowerSeries.X, MvPowerSeries.X, MvPowerSeries.monomial_mul_monomial,
      MvPowerSeries.coeff_monomial_same] at h2
    simp at h2

  have Gsq : ∀ (J : Ideal (MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) (T : Finset (Fin n)),
      MvPowerSeries.X 0 ∈ J → MvPowerSeries.X 1 ∈ J →
      (∀ l ∈ T, (MvPowerSeries.C (MvPowerSeries.X l) :
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ J) →
      2 ≤ ∑ l ∈ T, b l → wcpaMmsG K n b ∈ J ^ 2 := by
    intro J T h0 h1 hT hs
    unfold wcpaMmsG
    apply Ideal.sub_mem
    · rw [pow_two]
      exact Ideal.mul_mem_mul h0 h1
    · rw [one_mul, ← Finset.prod_mul_prod_compl T]
      apply Ideal.mul_mem_right
      have hm : ∏ l ∈ T, (MvPowerSeries.C (MvPowerSeries.X l) :
          MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ^ b l ∈ J ^ (∑ l ∈ T, b l) := by
        rw [← Finset.prod_pow_eq_pow_sum]
        exact Ideal.prod_mem_prod (fun l hl => Ideal.pow_mem_pow (hT l hl) _)
      exact Ideal.pow_le_pow_right hs hm

  have extract : ∀ T₀ : Finset (Fin n), 2 ≤ ∑ l ∈ T₀, b l → ∃ T ⊆ T₀,
      ((T.card = 1 ∧ ∀ l ∈ T, 2 ≤ b l) ∨ (T.card = 2 ∧ ∀ l ∈ T, b l = 1)) := by
    intro T₀ h
    by_cases hex : ∃ l ∈ T₀, 2 ≤ b l
    · obtain ⟨l, hl, hb⟩ := hex
      refine ⟨{l}, Finset.singleton_subset_iff.mpr hl, Or.inl ⟨Finset.card_singleton l, ?_⟩⟩
      intro x hx
      rw [Finset.mem_singleton.mp hx]
      exact hb
    · push_neg at hex
      have hsum : ∑ l ∈ T₀, b l = (T₀.filter (fun l => b l = 1)).card := by
        rw [Finset.card_eq_sum_ones, Finset.sum_filter]
        apply Finset.sum_congr rfl
        intro l hl
        have := hex l hl
        split_ifs with h1 <;> omega
      have h2 : 1 < (T₀.filter (fun l => b l = 1)).card := by omega
      obtain ⟨a, ha, a', ha', hne⟩ := Finset.one_lt_card.mp h2
      rw [Finset.mem_filter] at ha ha'
      refine ⟨{a, a'}, ?_, Or.inr ⟨Finset.card_pair hne, ?_⟩⟩
      · intro x hx
        rcases Finset.mem_insert.mp hx with h | h
        · rw [h]; exact ha.1
        · rw [Finset.mem_singleton.mp h]; exact ha'.1
      · intro x hx
        rcases Finset.mem_insert.mp hx with h | h
        · rw [h]; exact ha.2
        · rw [Finset.mem_singleton.mp h]; exact ha'.2
  have condsum : ∀ T : Finset (Fin n),
      ((T.card = 1 ∧ ∀ l ∈ T, 2 ≤ b l) ∨ (T.card = 2 ∧ ∀ l ∈ T, b l = 1)) →
      2 ≤ ∑ l ∈ T, b l ∧ ∀ l ∈ T, b l ≠ 0 := by
    intro T hT
    rcases hT with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · obtain ⟨a, rfl⟩ := Finset.card_eq_one.mp h1
      refine ⟨?_, fun l hl => by have := h2 l hl; omega⟩
      rw [Finset.sum_singleton]
      exact h2 a (Finset.mem_singleton_self a)
    · obtain ⟨a, a', hne, rfl⟩ := Finset.card_eq_two.mp h1
      refine ⟨?_, fun l hl => by have := h2 l hl; omega⟩
      rw [Finset.sum_pair hne, h2 a (Finset.mem_insert_self _ _),
        h2 a' (Finset.mem_insert_of_mem (Finset.mem_singleton_self _))]
  have hPσ : ∀ T : Finset (Fin n), ∀ l ∈ T, (MvPowerSeries.C (MvPowerSeries.X l) :
      MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ wcpaMmsP K n T := by
    intro T l hl
    unfold wcpaMmsP
    exact Ideal.subset_span (Set.mem_union_right _ ⟨l, hl, rfl⟩)

  have stepA : ∀ Q ∈ I.minimalPrimes, ∃ T : Finset (Fin n),
      ((T.card = 1 ∧ ∀ l ∈ T, 2 ≤ b l) ∨ (T.card = 2 ∧ ∀ l ∈ T, b l = 1)) ∧
      Ideal.comap φ Q = wcpaMmsP K n T := by
    intro Q hQ
    haveI hQp : Q.IsPrime := hQ.1.1
    obtain ⟨hnreg, hreg'⟩ := hmin Q hQ
    have hGQ₁ : wcpaMmsG K n b ∈ Ideal.comap φ Q := by
      rw [Ideal.mem_comap, hφG]
      exact Q.zero_mem
    have h2 : ¬ ∀ s, s ∉ Ideal.comap φ Q → s * wcpaMmsG K n b ∉ (Ideal.comap φ Q) ^ 2 := by
      intro h
      apply hnreg
      rw [wcpa_dj_rtsxc_mms_loc_quot _ D φ _ hφs hker Q]
      exact (wcpa_dj_rtsxc_mms_hypersurface _ _ _ hGQ₁ hG0).mpr h
    obtain ⟨T₀, hT₀⟩ : ∃ T₀ : Finset (Fin n), ∀ l, (MvPowerSeries.C (MvPowerSeries.X l) :
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ Ideal.comap φ Q ↔ l ∈ T₀ :=
      ⟨Finset.univ.filter (fun l => (MvPowerSeries.C (MvPowerSeries.X l) :
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∈ Ideal.comap φ Q), fun l => by simp⟩
    have h3 : MvPowerSeries.X 0 ∈ Ideal.comap φ Q ∧ MvPowerSeries.X 1 ∈ Ideal.comap φ Q ∧
        2 ≤ ∑ l ∈ T₀, b l := by
      by_contra hc
      exact h2 (wcpa_dj_rtsxc_mms_regular_branch K n b _ T₀ hT₀ hGQ₁ hc)
    obtain ⟨T, hTT₀, hcond⟩ := extract T₀ h3.2.2
    obtain ⟨hsum, -⟩ := condsum T hcond
    have hPle : wcpaMmsP K n T ≤ Ideal.comap φ Q := by
      unfold wcpaMmsP
      rw [Ideal.span_le]
      rintro x (hx | ⟨l, hl, rfl⟩)
      · rcases hx with rfl | hx
        · exact h3.1
        · rw [Set.mem_singleton_iff.mp hx]; exact h3.2.1
      · exact (hT₀ l).mpr (hTT₀ hl)
    have hPX0 : MvPowerSeries.X 0 ∈ wcpaMmsP K n T := by
      unfold wcpaMmsP
      exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert _ _))
    have hPX1 : MvPowerSeries.X 1 ∈ wcpaMmsP K n T := by
      unfold wcpaMmsP
      exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
    have hGsqP := Gsq (wcpaMmsP K n T) T hPX0 hPX1 (hPσ T) hsum
    have hGP : wcpaMmsG K n b ∈ wcpaMmsP K n T := Ideal.pow_le_self two_ne_zero hGsqP
    haveI hPprime : (wcpaMmsP K n T).IsPrime := (wcpa_dj_rtsxc_mms_coord_prime K n T).1
    have hkerP : RingHom.ker φ ≤ wcpaMmsP K n T := by
      rw [hker]
      exact (Ideal.span_singleton_le_iff_mem _).mpr hGP
    haveI hQ'p : (Ideal.map φ (wcpaMmsP K n T)).IsPrime :=
      Ideal.map_isPrime_of_surjective hφs hkerP
    have hcm : Ideal.comap φ (Ideal.map φ (wcpaMmsP K n T)) = wcpaMmsP K n T := by
      rw [Ideal.comap_map_of_surjective' φ hφs]
      exact sup_eq_left.mpr hkerP
    have hle : Ideal.map φ (wcpaMmsP K n T) ≤ Q :=
      (Ideal.map_mono hPle).trans (Ideal.map_comap_of_surjective φ hφs Q).le
    have heq : Ideal.map φ (wcpaMmsP K n T) = Q := by
      by_contra hne
      have hlt : Ideal.map φ (wcpaMmsP K n T) < Q := lt_of_le_of_ne hle hne
      have hr := hreg' _ hlt
      rw [wcpa_dj_rtsxc_mms_loc_quot _ D φ _ hφs hker] at hr
      have hGQ' : wcpaMmsG K n b ∈ Ideal.comap φ (Ideal.map φ (wcpaMmsP K n T)) := by
        rw [hcm]; exact hGP
      have h1 : (1 : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)) ∉
          Ideal.comap φ (Ideal.map φ (wcpaMmsP K n T)) := by
        intro h1
        exact Ideal.IsPrime.ne_top inferInstance ((Ideal.eq_top_iff_one _).mpr h1)
      have h4 := (wcpa_dj_rtsxc_mms_hypersurface _ _ _ hGQ' hG0).mp hr 1 h1
      apply h4
      rw [one_mul, hcm]
      exact hGsqP
    refine ⟨T, hcond, ?_⟩
    rw [← heq, hcm]

  have assoc_mem : ∀ (J : Ideal D) (a c : D), Associated a c → (a ∈ J ↔ c ∈ J) := by
    intro J a c hac
    obtain ⟨u, hu⟩ := hac
    constructor
    · intro ha
      rw [← hu]
      exact J.mul_mem_right _ ha
    · intro hc
      have : a = c * ↑u⁻¹ := by rw [← hu, mul_assoc, Units.mul_inv, mul_one]
      rw [this]
      exact J.mul_mem_right _ hc
  have hassoc' : ∀ l, b l ≠ 0 → Associated (g l) (φ (MvPowerSeries.C (MvPowerSeries.X l))) := by
    intro l hl
    have h := (hassoc l hl).map e₁.symm
    rw [RingEquiv.symm_apply_apply, hφmk] at h
    exact h
  have hmemQ : ∀ (Q : Ideal D) (T : Finset (Fin n)), (∀ l ∈ T, b l ≠ 0) →
      Ideal.comap φ Q = wcpaMmsP K n T → ∀ l ∈ T, g l ∈ Q := by
    intro Q T hb hQT l hl
    rw [assoc_mem Q _ _ (hassoc' l (hb l hl)), ← Ideal.mem_comap, hQT]
    exact hPσ T l hl
  have huniq : ∀ Q ∈ I.minimalPrimes, ∀ Q' ∈ I.minimalPrimes, Q = Q' := by
    have hsub : ∀ Q ∈ I.minimalPrimes, ∀ Q' ∈ I.minimalPrimes, ∀ T T' : Finset (Fin n),
        (∀ l ∈ T, b l ≠ 0) → Ideal.comap φ Q = wcpaMmsP K n T →
        Ideal.comap φ Q' = wcpaMmsP K n T' → T ⊆ T' := by
      intro Q hQ Q' hQ' T T' hb hQT hQT' l hl
      have h1 := hmemQ Q T hb hQT l hl
      have h2 : g l ∈ Q' := hQ'.1.2 (hhook l (hb l hl) Q hQ h1)
      rw [assoc_mem Q' _ _ (hassoc' l (hb l hl)), ← Ideal.mem_comap, hQT'] at h2
      exact ((wcpa_dj_rtsxc_mms_coord_prime K n T').2 l).mp h2
    intro Q hQ Q' hQ'
    obtain ⟨T, hc, hQT⟩ := stepA Q hQ
    obtain ⟨T', hc', hQT'⟩ := stepA Q' hQ'
    have hTT : T = T' := Finset.Subset.antisymm
      (hsub Q hQ Q' hQ' T T' (condsum T hc).2 hQT hQT')
      (hsub Q' hQ' Q hQ T' T (condsum T' hc').2 hQT' hQT)
    rw [← Ideal.map_comap_of_surjective φ hφs Q, ← Ideal.map_comap_of_surjective φ hφs Q',
      hQT, hQT', hTT]

  obtain ⟨M, hM, hIM⟩ := Ideal.exists_le_maximal I htop
  haveI := hM.isPrime
  obtain ⟨Q₀, hQ₀, -⟩ := Ideal.exists_minimalPrimes_le hIM
  have hIQ : I = Q₀ := by
    rw [← hrad.radical, ← Ideal.sInf_minimalPrimes]
    exact le_antisymm (sInf_le hQ₀) (le_sInf fun Q hQ => (huniq Q hQ Q₀ hQ₀).ge)
  obtain ⟨T, hc, hQT⟩ := stepA Q₀ hQ₀
  refine ⟨T, ?_, hc, ?_⟩
  · have h := hmape Q₀
    rw [hQT] at h
    rw [hIQ]
    exact h
  · intro l hl
    rw [hIQ]
    exact hmemQ Q₀ T (condsum T hc).2 hQT l hl

theorem wcpa_dj_rtsxc_centre_ideal : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ z : Y), wcpaDjIsProjOver k sY → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → ∀ (hγz : γ ⤳ z), ∃ (q : ℕ) (h : Fin q → Y.presheaf.stalk z), (∀ (z' : Y) (hz : z' ⤳ z), (z' ∈ B ↔ ∃ i, (Y.presheaf.stalkSpecializes hz).hom (h i) ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk z'))) ∧ wcpaDjTorNodeCentre (Y.presheaf.stalk z) h (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))) :=
by
  intro k _ Y _ sY B γ z hproj hB hloc hγ hγz
  classical
  haveI : IsProper sY := wcpa_dj_proj_proper k sY hproj
  haveI : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian sY

  have hγS : γ ∈ wcpaDjSing Y := (show γ ∈ wcpaDjSing Y ∧ _ from hγ).1
  have hγS' : ¬ IsRegularLocalRing (Y.presheaf.stalk γ) := hγS

  have hnode : wcpaDjTorNodeSgl Y B z := by
    rcases hloc z with h | h
    · exfalso
      have hreg := (wcpa_dj_rtsx_pt_basic Y B z).1 h
      have h2 := wc_hnas_pfc_regular_localization (Y.presheaf.stalk z) hreg
        (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)))
      exact hγS' ((wcpa_dj_rtsxc_ci_stalk_loc_regular Y γ z hγz).2 h2)
    · exact h
  obtain ⟨n, q, A, iA, hAreg, hAcomp, x, y, v, σ, b, e, h, J, H1, H2, H3, H4, H5, H6, H7, H8⟩ :=
    hnode

  let ιk : k →+* AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z) :=
    (algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z))).comp
      ((Y.presheaf.germ ⊤ z trivial).hom.comp
        ((sY.appTop).hom.comp (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom))

  obtain ⟨K, iK, e₁, hSreg, hScomp, hSdim, hSspan, hE⟩ :=
    wcpa_dj_rtsxc_ci_equichar_form k
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z))
      ιk n A x y v σ b e hAcomp H1 H2 H3

  have hassoc : ∀ i, Associated (e₁ (algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)) (h i)))
      (Ideal.Quotient.mk _ (∏ l ∈ J i,
        (MvPowerSeries.C (MvPowerSeries.X l) : MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K)))) := by
    intro i
    have h1 := ((H7 i).map e.symm).map e₁
    rw [RingEquiv.symm_apply_apply] at h1
    refine h1.trans ?_
    simp only [map_prod]
    apply Associated.prod
    intro l _
    exact hE l

  have hp_le : Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
      (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)) ≤ IsLocalRing.maximalIdeal (Y.presheaf.stalk z) :=
    IsLocalRing.le_maximalIdeal (Ideal.IsPrime.ne_top inferInstance)

  have hIrad : (Ideal.map (algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
      (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)))).IsRadical :=
    wcpa_dj_sfc_radical_extend_geom k Y sY z _ (Ideal.IsPrime.isRadical inferInstance)
  have hItop : Ideal.map (algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
      (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))) ≠ ⊤ := by
    intro htop
    have hle : Ideal.map (algebraMap (Y.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
        (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))) ≤
        RingHom.ker (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) 1).toRingHom := by
      rw [Ideal.map_le_iff_le_comap]
      intro a ha
      rw [Ideal.mem_comap, RingHom.mem_ker]
      show (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) 1)
        (algebraMap _ _ a) = 0
      rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem, pow_one]
      exact hp_le ha
    have h1 := hle (htop ▸ Submodule.mem_top :
      (1 : AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)) ∈ _)
    rw [RingHom.mem_ker, map_one] at h1
    have h2 := Ideal.Quotient.zero_eq_one_iff.mp h1.symm
    rw [pow_one] at h2
    exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top h2

  have hcomap : ∀ a : Y.presheaf.stalk z, algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)) a ∈
      Ideal.map (algebraMap (Y.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
        (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))) →
      a ∈ Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)) := by
    intro a ha
    obtain ⟨M, hM, hIM⟩ := Ideal.exists_le_maximal _ hItop
    obtain ⟨Q, hQ, -⟩ := Ideal.exists_minimalPrimes_le hIM
    haveI : Q.IsPrime := hQ.1.1
    have hc := (wcpa_dj_rtsxc_ci_min_prime_transfer k Y sY γ z hγz hγ Q hQ).1
    rw [← hc, Ideal.mem_comap]
    exact hQ.1.2 ha

  have hsel0 : ∀ l, b l ≠ 0 → ∃ i, J i = {l} := by
    intro l hl
    obtain ⟨i, hi⟩ := H6 l hl
    exact ⟨i, Finset.eq_singleton_iff_unique_mem.mpr
      ⟨hi, fun m hm => Finset.card_le_one.mp (H5 i) m hm l hi⟩⟩
  obtain ⟨sel, hsel⟩ : ∃ sel : ∀ l, b l ≠ 0 → Fin q, ∀ l hl, J (sel l hl) = {l} :=
    ⟨fun l hl => Classical.choose (hsel0 l hl), fun l hl => Classical.choose_spec (hsel0 l hl)⟩
  obtain ⟨g, hg⟩ : ∃ g : Fin n →
      AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z),
      ∀ l (hl : b l ≠ 0), g l = algebraMap (Y.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z))
        (h (sel l hl)) :=
    ⟨fun l => if hl : b l ≠ 0 then algebraMap (Y.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z))
        (h (sel l hl)) else 0, fun l hl => dif_pos hl⟩
  have hgassoc : ∀ l, b l ≠ 0 → Associated (e₁ (g l))
      (Ideal.Quotient.mk _ (MvPowerSeries.C (MvPowerSeries.X l) :
        MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K))) := by
    intro l hl
    have h1 := hassoc (sel l hl)
    rw [hsel l hl, Finset.prod_singleton] at h1
    rw [hg l hl]
    exact h1
  have hhook : ∀ l, b l ≠ 0 → ∀ Q ∈ (Ideal.map (algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
      (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)))).minimalPrimes, g l ∈ Q →
      g l ∈ Ideal.map (algebraMap (Y.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
        (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))) := by
    intro l hl Q hQ hgQ
    haveI : Q.IsPrime := hQ.1.1
    have hc := (wcpa_dj_rtsxc_ci_min_prime_transfer k Y sY γ z hγz hγ Q hQ).1
    rw [hg l hl] at hgQ ⊢
    apply Ideal.mem_map_of_mem
    rw [← hc, Ideal.mem_comap]
    exact hgQ
  have hmin : ∀ (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z))
      (Y.presheaf.stalk z))) [Q.IsPrime], Q ∈ (Ideal.map (algebraMap (Y.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)))
      (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)))).minimalPrimes →
      ¬ IsRegularLocalRing (Localization.AtPrime Q) ∧ ∀ (Q' : Ideal (AdicCompletion
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z))) [Q'.IsPrime],
        Q' < Q → IsRegularLocalRing (Localization.AtPrime Q') := by
    intro Q _ hQ
    exact (wcpa_dj_rtsxc_ci_min_prime_transfer k Y sY γ z hγz hγ Q hQ).2

  obtain ⟨T, hTI, hTcard, hTg⟩ := wcpa_dj_rtsxc_ci_model_min_sing K n b
    (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk z)) (Y.presheaf.stalk z)) e₁ _ g
    hSreg hIrad hItop hmin hgassoc hhook

  refine ⟨q, h, H8, n, MvPowerSeries (Fin 2) (MvPowerSeries (Fin n) K), inferInstance, hSreg, hScomp,
    MvPowerSeries.X 0, MvPowerSeries.X 1, 1, fun l => MvPowerSeries.C (MvPowerSeries.X l), b, e₁, J, T,
    isUnit_one, hSdim, hSspan, H4, H5, H6, hassoc, hTI, hTcard, ?_⟩
  intro l hl
  have hbl : b l ≠ 0 := by
    rcases hTcard with ⟨_, h2⟩ | ⟨_, h1⟩
    · have := h2 l hl; omega
    · have := h1 l hl; omega
  refine ⟨sel l hbl, hsel l hbl, ?_⟩
  apply hcomap
  rw [← hg l hbl]
  exact hTg l hl

theorem wcpa_dj_rtsxc_chart_stalk : ∀ (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] [IsLocallyNoetherian Y] (γ : Y) (Y' : Scheme.{u}) (π : Y' ⟶ Y), genericPoint Y ∉ closure {γ} → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ (y' : Y') (hγz : γ ⤳ π y'), ∃ (r : ℕ) (f : Fin (r + 1) → Y.presheaf.stalk (π y')) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg (Y.presheaf.stalk (π y')) f i)) (_ : P.IsPrime) (Φ : Y'.presheaf.stalk y' ≃+* Localization.AtPrime P), Ideal.span (Set.range f) = Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)) ∧ f i ≠ 0 ∧ P.comap (algebraMap (Y.presheaf.stalk (π y')) (wcpaDjChartAlg (Y.presheaf.stalk (π y')) f i)) = IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')) ∧ ∀ a, Φ ((π.stalkMap y').hom a) = algebraMap (wcpaDjChartAlg (Y.presheaf.stalk (π y')) f i) (Localization.AtPrime P) (algebraMap (Y.presheaf.stalk (π y')) (wcpaDjChartAlg (Y.presheaf.stalk (π y')) f i) a) :=
by
  intro Y _ _ γ Y' π hgen hcharts y' hγz
  classical
  have s1 : ∀ (I : Y.IdealSheafData) (U : Y.affineOpens), genericPoint Y ∉ (I.support : Set Y) →
      ((U : Y.Opens) : Set Y).Nonempty → ∃ (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)),
        Ideal.span (Set.range f) = I.ideal U ∧ ∀ i, f i ≠ 0 := by
    intro I U hη hU
    haveI : IsNoetherianRing Γ(Y, U) := IsLocallyNoetherian.component_noetherian U
    obtain ⟨n, s, hs⟩ :=
      (Submodule.fg_iff_exists_fin_generating_family).mp (IsNoetherian.noetherian (I.ideal U))
    have hηU : genericPoint Y ∈ ((U : Y.Opens) : Set Y) := by
      rw [(genericPoint_spec Y).mem_open_set_iff (U : Y.Opens).isOpen]
      simpa using hU
    have hJ : I.ideal U ≠ ⊥ := by
      intro hJ
      apply hη
      have hz : genericPoint Y ∈ Y.zeroLocus (I.ideal U : Set Γ(Y, U)) := by
        rw [Scheme.mem_zeroLocus_iff]
        intro g hg
        rw [hJ] at hg
        have hg0 : g = 0 := (Submodule.mem_bot _).mp hg
        rw [hg0, Scheme.basicOpen_zero]
        simp
      have hmem : genericPoint Y ∈
          Y.zeroLocus (I.ideal U : Set Γ(Y, U)) ∩ ((U : Y.Opens) : Set Y) := ⟨hz, hηU⟩
      rw [← Scheme.IdealSheafData.coe_support_inter] at hmem
      exact hmem.1
    obtain ⟨a, haJ, ha0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hJ
    refine ⟨n, Fin.cons a (fun i => if s i = 0 then a else s i), ?_, ?_⟩
    · apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        induction i using Fin.cases with
        | zero => simpa using haJ
        | succ j =>
          simp only [Fin.cons_succ]
          split_ifs
          · exact haJ
          · rw [← hs]; exact Submodule.subset_span ⟨j, rfl⟩
      · rw [← hs, Submodule.span_le]
        rintro _ ⟨j, rfl⟩
        by_cases h : s j = 0
        · rw [h]; exact zero_mem _
        · apply Ideal.subset_span
          exact ⟨j.succ, by simp [h]⟩
    · intro i
      induction i using Fin.cases with
      | zero => simpa using ha0
      | succ j =>
        simp only [Fin.cons_succ]
        split_ifs with h
        · exact ha0
        · exact h
  have s2 : ∀ (U : Y.affineOpens) (z : Y) (hz : z ∈ (U : Y.Opens)) (hγz : γ ⤳ z),
      Ideal.map (Y.presheaf.germ (U : Y.Opens) z hz).hom
        ((Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U) =
      Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)) := by
    intro U z hz hγz
    have hγU : γ ∈ (U : Y.Opens) := hγz.mem_open (U : Y.Opens).isOpen hz
    have hU : IsAffineOpen (U : Y.Opens) := U.2
    have hI : (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U =
        (hU.primeIdealOf ⟨γ, hγU⟩).asIdeal := by
      rw [Scheme.IdealSheafData.vanishingIdeal_ideal]
      have hind : Topology.IsInducing hU.fromSpec :=
        (@Scheme.Hom.isOpenEmbedding _ _ hU.fromSpec hU.isOpenImmersion_fromSpec).isInducing
      show PrimeSpectrum.vanishingIdeal (hU.fromSpec ⁻¹' closure {γ}) = _
      have e : (hU.fromSpec ⁻¹' closure {γ} : Set (PrimeSpectrum Γ(Y, U))) =
          closure {hU.primeIdealOf ⟨γ, hγU⟩} := by
        ext x
        show hU.fromSpec x ∈ closure {γ} ↔ x ∈ closure {hU.primeIdealOf ⟨γ, hγU⟩}
        rw [← specializes_iff_mem_closure, ← specializes_iff_mem_closure]
        have hfx : hU.fromSpec (hU.primeIdealOf ⟨γ, hγU⟩) = γ := hU.fromSpec_primeIdealOf _
        have h := hind.specializes_iff (x := hU.primeIdealOf ⟨γ, hγU⟩) (y := x)
        rw [hfx] at h
        exact h
      exact (congrArg PrimeSpectrum.vanishingIdeal e).trans
        ((PrimeSpectrum.vanishingIdeal_closure _).trans (PrimeSpectrum.vanishingIdeal_singleton _))
    have hcomap : Ideal.comap (Y.presheaf.germ (U : Y.Opens) z hz).hom
        (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))) = (hU.primeIdealOf ⟨γ, hγU⟩).asIdeal := by
      rw [Ideal.comap_comap]
      have e : (Y.presheaf.stalkSpecializes hγz).hom.comp (Y.presheaf.germ (U : Y.Opens) z hz).hom =
          (Y.presheaf.germ (U : Y.Opens) γ hγU).hom := by
        rw [← CommRingCat.hom_comp, TopCat.Presheaf.germ_stalkSpecializes]
      rw [e]
      letI : Algebra Γ(Y, U) (Y.presheaf.stalk γ) :=
        TopCat.Presheaf.algebra_section_stalk Y.presheaf ⟨γ, hγU⟩
      haveI : IsLocalization.AtPrime (Y.presheaf.stalk γ) (hU.primeIdealOf ⟨γ, hγU⟩).asIdeal :=
        hU.isLocalization_stalk ⟨γ, hγU⟩
      exact IsLocalization.AtPrime.under_maximalIdeal (Y.presheaf.stalk γ)
        (hU.primeIdealOf ⟨γ, hγU⟩).asIdeal
    letI : Algebra Γ(Y, U) (Y.presheaf.stalk z) :=
      TopCat.Presheaf.algebra_section_stalk Y.presheaf ⟨z, hz⟩
    haveI : IsLocalization.AtPrime (Y.presheaf.stalk z) (hU.primeIdealOf ⟨z, hz⟩).asIdeal :=
      hU.isLocalization_stalk ⟨z, hz⟩
    rw [hI, ← hcomap]
    exact IsLocalization.map_under (hU.primeIdealOf ⟨z, hz⟩).asIdeal.primeCompl
      (Y.presheaf.stalk z) _
  have s3 : ∀ (U : Y.affineOpens) (V : Y'.Opens) (hV : V ≤ π ⁻¹ᵁ (U : Y.Opens)),
      IsAffineOpen V → ∀ (A : Type u) [CommRing A] (j : Γ(Y, U) →+* A) (e : Γ(Y', V) ≃+* A),
      (∀ a, e ((π.appLE (U : Y.Opens) V hV).hom a) = j a) → ∀ (y' : Y') (hy' : y' ∈ V),
      ∃ (P₀ : Ideal A) (_ : P₀.IsPrime) (Φ₁ : Y'.presheaf.stalk y' ≃+* Localization.AtPrime P₀),
        P₀.comap j = Ideal.comap (Y.presheaf.germ (U : Y.Opens) (π y')
          ((Scheme.Hom.mem_preimage π).mp (hV hy'))).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) ∧
        ∀ a : Γ(Y, U), Φ₁ ((π.stalkMap y').hom ((Y.presheaf.germ (U : Y.Opens) (π y')
          ((Scheme.Hom.mem_preimage π).mp (hV hy'))).hom a)) =
          algebraMap A (Localization.AtPrime P₀) (j a) := by
    intro U V hV hVaff A _ j e he y' hy'
    have hG : ∀ a, (π.stalkMap y').hom ((Y.presheaf.germ (U : Y.Opens) (π y')
        ((Scheme.Hom.mem_preimage π).mp (hV hy'))).hom a) =
        (Y'.presheaf.germ V y' hy').hom ((π.appLE (U : Y.Opens) V hV).hom a) := by
      intro a
      rw [Scheme.Hom.germ_stalkMap_apply]
      have h1 : (π.appLE (U : Y.Opens) V hV).hom a =
          (Y'.presheaf.map (homOfLE hV).op).hom ((π.app (U : Y.Opens)).hom a) := rfl
      rw [h1, TopCat.Presheaf.germ_res_apply]
    letI : Algebra Γ(Y', V) (Y'.presheaf.stalk y') :=
      TopCat.Presheaf.algebra_section_stalk Y'.presheaf ⟨y', hy'⟩
    haveI : IsLocalization.AtPrime (Y'.presheaf.stalk y') (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal :=
      hVaff.isLocalization_stalk ⟨y', hy'⟩
    have hQ' : Ideal.comap (Y'.presheaf.germ V y' hy').hom
        (IsLocalRing.maximalIdeal (Y'.presheaf.stalk y')) = (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal :=
      IsLocalization.AtPrime.under_maximalIdeal (Y'.presheaf.stalk y')
        (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal
    let P₀ : Ideal A := (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal.comap e.symm
    haveI hP₀ : P₀.IsPrime := Ideal.comap_isPrime _ _
    have H : Submonoid.map e.toMonoidHom (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal.primeCompl =
        P₀.primeCompl := by
      ext x
      constructor
      · rintro ⟨y, hy, rfl⟩
        change e.symm (e y) ∉ (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal
        rw [e.symm_apply_apply]
        exact hy
      · intro hx
        exact ⟨e.symm x, hx, e.apply_symm_apply x⟩
    let Φ₁ : Y'.presheaf.stalk y' ≃+* Localization.AtPrime P₀ :=
      IsLocalization.ringEquivOfRingEquiv (Y'.presheaf.stalk y') (Localization.AtPrime P₀) e H
    have hΦ₁ : ∀ s, Φ₁ ((Y'.presheaf.germ V y' hy').hom s) = algebraMap A _ (e s) :=
      fun s => IsLocalization.ringEquivOfRingEquiv_eq H s
    have hloc : Ideal.comap (π.stalkMap y').hom (IsLocalRing.maximalIdeal (Y'.presheaf.stalk y')) =
        IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')) := IsLocalRing.maximalIdeal_comap _
    refine ⟨P₀, hP₀, Φ₁, ?_, ?_⟩
    · ext a
      change e.symm (j a) ∈ (hVaff.primeIdealOf ⟨y', hy'⟩).asIdeal ↔ _
      rw [← he, e.symm_apply_apply, ← hQ', Ideal.mem_comap, ← hG,
        ← Ideal.mem_comap (f := (π.stalkMap y').hom), hloc]
      exact Iff.rfl
    · intro a
      rw [hG, hΦ₁, he]
  have s4 : ∀ (R O : Type u) [CommRing R] [IsDomain R] [CommRing O] [Algebra R O] (q : Ideal R)
      [q.IsPrime] [IsLocalization.AtPrime O q] (r : ℕ) (g : Fin (r + 1) → R) (i : Fin (r + 1)),
      ∃ θ : (Algebra.adjoin R (Set.range fun l => IsLocalization.mk' (Localization.Away (g i)) (g l)
          (⟨g i, Submonoid.mem_powers _⟩ : Submonoid.powers (g i)))) →+*
          wcpaDjChartAlg O (fun l => algebraMap R O (g l)) i,
        (∀ a : R, θ (algebraMap R _ a) = algebraMap O _ (algebraMap R O a)) ∧
        @IsLocalization _ _ (Algebra.algebraMapSubmonoid (Algebra.adjoin R (Set.range fun l =>
          IsLocalization.mk' (Localization.Away (g i)) (g l)
          (⟨g i, Submonoid.mem_powers _⟩ : Submonoid.powers (g i)))) q.primeCompl)
          (wcpaDjChartAlg O (fun l => algebraMap R O (g l)) i) _ θ.toAlgebra := by
    intro R O _ _ _ _ q _ _ r g i
    classical
    set ρ := algebraMap R O with hρ
    set A := Algebra.adjoin R (Set.range fun l => IsLocalization.mk' (Localization.Away (g i)) (g l)
          (⟨g i, Submonoid.mem_powers _⟩ : Submonoid.powers (g i))) with hA
    set C := wcpaDjChartAlg O (fun l => algebraMap R O (g l)) i with hC
    have hρinj : Function.Injective ρ :=
      IsLocalization.injective O (Ideal.primeCompl_le_nonZeroDivisors q)
    have hy : Submonoid.powers (g i) ≤ Submonoid.comap ρ (Submonoid.powers (ρ (g i))) := by
      rintro x ⟨n, rfl⟩
      exact ⟨n, by simp⟩
    let κ : Localization.Away (g i) →+* Localization.Away (ρ (g i)) :=
      IsLocalization.map (Localization.Away (ρ (g i))) ρ hy
    have hκ : ∀ a : R, κ (algebraMap R (Localization.Away (g i)) a) =
        algebraMap O (Localization.Away (ρ (g i))) (ρ a) := fun a => IsLocalization.map_eq hy a
    have hκmk : ∀ l, κ (IsLocalization.mk' (Localization.Away (g i)) (g l)
        (⟨g i, Submonoid.mem_powers _⟩ : Submonoid.powers (g i))) =
        IsLocalization.mk' (Localization.Away (ρ (g i))) (ρ (g l))
        (⟨ρ (g i), Submonoid.mem_powers _⟩ : Submonoid.powers (ρ (g i))) := by
      intro l
      exact IsLocalization.map_mk' hy _ _
    have hκinj : Function.Injective κ := by
      haveI : IsLocalization (Submonoid.map ρ (Submonoid.powers (g i)))
          (Localization.Away (ρ (g i))) := by
        rw [Submonoid.map_powers]; infer_instance
      exact IsLocalization.map_injective_of_injective (Submonoid.powers (g i))
        (Localization.Away (g i)) (Localization.Away (ρ (g i))) hρinj
    have hmem : ∀ x : A, κ x.1 ∈ C := by
      rintro ⟨x, hx⟩
      induction hx using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        rw [hκmk l]
        exact Algebra.subset_adjoin ⟨l, rfl⟩
      | algebraMap a =>
        rw [hκ a]
        exact Subalgebra.algebraMap_mem C (ρ a)
      | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
      | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
    let θ : A →+* C := RingHom.codRestrict (κ.comp A.val.toRingHom) C hmem
    have hθval : ∀ x : A, (θ x).1 = κ x.1 := fun x => rfl
    have hθalg : ∀ a : R, θ (algebraMap R A a) = algebraMap O C (ρ a) := by
      intro a
      apply Subtype.ext
      rw [hθval]
      exact hκ a
    have hθinj : Function.Injective θ := by
      intro x y hxy
      apply Subtype.ext
      apply hκinj
      rw [← hθval, ← hθval, hxy]
    refine ⟨θ, hθalg, ?_⟩
    letI := θ.toAlgebra
    have halg : ∀ x : A, algebraMap A C x = θ x := fun x => rfl
    refine ⟨?_, ?_, ?_⟩
    · rintro ⟨m, hm⟩
      obtain ⟨s, hs, rfl⟩ := Submonoid.mem_map.mp hm
      rw [halg, hθalg]
      exact (IsLocalization.map_units O (⟨s, hs⟩ : q.primeCompl)).map (algebraMap O C)
    · intro z
      have key : ∃ a : A, ∃ s ∈ q.primeCompl,
          z.1 * algebraMap O (Localization.Away (ρ (g i))) (ρ s) = κ a.1 := by
        obtain ⟨z, hz⟩ := z
        induction hz using Algebra.adjoin_induction with
        | mem x hx =>
          obtain ⟨l, rfl⟩ := hx
          refine ⟨⟨_, Algebra.subset_adjoin ⟨l, rfl⟩⟩, 1, q.primeCompl.one_mem, ?_⟩
          rw [map_one, map_one, mul_one]
          exact (hκmk l).symm
        | algebraMap o =>
          obtain ⟨⟨b, s⟩, hbs⟩ := IsLocalization.surj q.primeCompl o
          refine ⟨algebraMap R A b, s.1, s.2, ?_⟩
          rw [← map_mul, hbs]
          exact (hκ b).symm
        | add x y _ _ hx hy =>
          obtain ⟨a1, s1, hs1, h1⟩ := hx
          obtain ⟨a2, s2, hs2, h2⟩ := hy
          refine ⟨a1 * algebraMap R A s2 + a2 * algebraMap R A s1, s1 * s2,
            q.primeCompl.mul_mem hs1 hs2, ?_⟩
          have e1 : κ (algebraMap R A s1).1 = algebraMap O _ (ρ s1) := hκ s1
          have e2 : κ (algebraMap R A s2).1 = algebraMap O _ (ρ s2) := hκ s2
          simp only [Subalgebra.coe_add, Subalgebra.coe_mul, map_add, map_mul] at e1 e2 ⊢
          rw [e1, e2, ← h1, ← h2]
          ring
        | mul x y _ _ hx hy =>
          obtain ⟨a1, s1, hs1, h1⟩ := hx
          obtain ⟨a2, s2, hs2, h2⟩ := hy
          refine ⟨a1 * a2, s1 * s2, q.primeCompl.mul_mem hs1 hs2, ?_⟩
          simp only [Subalgebra.coe_mul, map_mul] at ⊢
          rw [← h1, ← h2]
          ring
      obtain ⟨a, s, hs, h⟩ := key
      refine ⟨⟨a, ⟨algebraMap R A s, Submonoid.mem_map_of_mem _ hs⟩⟩, ?_⟩
      apply Subtype.ext
      show z.1 * (θ (algebraMap R A s)).1 = (θ a).1
      rw [hθalg, hθval]
      exact h
    · intro x y hxy
      refine ⟨1, ?_⟩
      rw [hθinj hxy]
  have s5 : ∀ (A C : Type u) [CommRing A] [CommRing C] (M : Submonoid A) (θ : A →+* C),
      @IsLocalization A _ M C _ θ.toAlgebra → ∀ (P₀ : Ideal A) [P₀.IsPrime],
      Disjoint (M : Set A) (P₀ : Set A) →
      ∃ (P : Ideal C) (_ : P.IsPrime) (Ψ : Localization.AtPrime P₀ ≃+* Localization.AtPrime P),
        P.comap θ = P₀ ∧
        ∀ a : A, Ψ (algebraMap A _ a) = algebraMap C (Localization.AtPrime P) (θ a) := by
    intro A C _ _ M θ hloc P₀ _ hdisj
    letI := θ.toAlgebra
    have hP : (Ideal.map (algebraMap A C) P₀).IsPrime :=
      IsLocalization.isPrime_of_isPrime_disjoint M C P₀ ‹_› hdisj
    have hc : (Ideal.map (algebraMap A C) P₀).comap (algebraMap A C) = P₀ :=
      IsLocalization.under_map_of_isPrime_disjoint M C ‹_› hdisj
    refine ⟨Ideal.map (algebraMap A C) P₀, hP, ?_⟩
    have h1 := IsLocalization.isLocalization_isLocalization_atPrime_isLocalization M
      (Localization.AtPrime (Ideal.map (algebraMap A C) P₀)) (Ideal.map (algebraMap A C) P₀)
    haveI h3 : IsLocalization.AtPrime (Localization.AtPrime (Ideal.map (algebraMap A C) P₀)) P₀ := by
      have e : (Ideal.comap (algebraMap A C) (Ideal.map (algebraMap A C) P₀)).primeCompl =
          P₀.primeCompl := by
        ext x
        simp only [Ideal.mem_primeCompl_iff, hc]
      unfold IsLocalization.AtPrime at h1 ⊢
      rwa [e] at h1
    refine ⟨(IsLocalization.algEquiv P₀.primeCompl (Localization.AtPrime P₀)
      (Localization.AtPrime (Ideal.map (algebraMap A C) P₀))).toRingEquiv, hc, ?_⟩
    intro a
    have := (IsLocalization.algEquiv P₀.primeCompl (Localization.AtPrime P₀)
      (Localization.AtPrime (Ideal.map (algebraMap A C) P₀))).commutes a
    rw [IsScalarTower.algebraMap_apply A C (Localization.AtPrime (Ideal.map (algebraMap A C) P₀)) a]
      at this
    exact this
  have s6 : ∀ (R O A C : Type u) [CommRing R] [CommRing O] [IsLocalRing O] [CommRing A]
      [CommRing C] [Algebra R O] [Algebra R A] [Algebra O C] (q : Ideal R) [q.IsPrime]
      [IsLocalization.AtPrime O q] (θ : A →+* C),
      (∀ a, θ (algebraMap R A a) = algebraMap O C (algebraMap R O a)) →
      ∀ (P₀ : Ideal A), P₀.comap (algebraMap R A) = q → ∀ (P : Ideal C), P.comap θ = P₀ →
      P.comap (algebraMap O C) = IsLocalRing.maximalIdeal O := by
    intro R O A C _ _ _ _ _ _ _ _ q _ _ θ hθ P₀ hP₀ P hPθ
    have hcomp : (algebraMap O C).comp (algebraMap R O) = θ.comp (algebraMap R A) := by
      ext a; exact (hθ a).symm
    have hJ : Ideal.under R (P.comap (algebraMap O C)) = q := by
      show Ideal.comap (algebraMap R O) (Ideal.comap (algebraMap O C) P) = q
      rw [Ideal.comap_comap, hcomp, ← Ideal.comap_comap, hPθ, hP₀]
    rw [← IsLocalization.map_under q.primeCompl O (P.comap (algebraMap O C)), hJ]
    exact IsLocalization.AtPrime.map_eq_maximalIdeal q O
  have s7 : ∀ (R O A C S' : Type u) [CommRing R] [CommRing O] [CommRing A] [CommRing C]
      [CommRing S'] [Algebra R O] [Algebra R A] [Algebra O C] (M : Submonoid R)
      [IsLocalization M O] (θ : A →+* C) (P₀ : Ideal A) [P₀.IsPrime] (P : Ideal C) [P.IsPrime]
      (σ : O →+* S') (Φ₁ : S' ≃+* Localization.AtPrime P₀)
      (Ψ : Localization.AtPrime P₀ ≃+* Localization.AtPrime P),
      (∀ a, θ (algebraMap R A a) = algebraMap O C (algebraMap R O a)) →
      (∀ b, Φ₁ (σ (algebraMap R O b)) = algebraMap A (Localization.AtPrime P₀) (algebraMap R A b)) →
      (∀ a, Ψ (algebraMap A (Localization.AtPrime P₀) a) = algebraMap C (Localization.AtPrime P) (θ a)) →
      ∀ a, (Φ₁.trans Ψ) (σ a) = algebraMap C (Localization.AtPrime P) (algebraMap O C a) := by
    intro R O A C S' _ _ _ _ _ _ _ _ M _ θ P₀ _ P _ σ Φ₁ Ψ hθ hΦ₁ hΨ a
    have h := IsLocalization.ringHom_ext M (S := O) (j := ((Φ₁.trans Ψ).toRingHom).comp σ)
      (k := (algebraMap C (Localization.AtPrime P)).comp (algebraMap O C)) (by
        ext b
        simp only [RingHom.comp_apply]
        show Ψ (Φ₁ (σ (algebraMap R O b))) = _
        rw [hΦ₁, hΨ, hθ])
    exact RingHom.congr_fun h a

  obtain ⟨U, hz⟩ : ∃ U : Y.affineOpens, π y' ∈ (U : Y.Opens) := by
    obtain ⟨U₀, hU₀, hzU, -⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.mp
      (Scheme.isBasis_affineOpens Y) (show π y' ∈ (⊤ : Y.Opens) from trivial)
    exact ⟨⟨U₀, hU₀⟩, hzU⟩
  have hU : IsAffineOpen (U : Y.Opens) := U.2
  haveI : Nonempty (U : Y.Opens) := ⟨⟨π y', hz⟩⟩
  haveI hRdom : IsDomain Γ(Y, U) := AlgebraicGeometry.IsIntegral.component_integral (U : Y.Opens)
  have hη : genericPoint Y ∉ ((Scheme.IdealSheafData.vanishingIdeal
      (⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y)).support : Set Y) := by
    rw [Scheme.IdealSheafData.coe_support_vanishingIdeal]
    exact hgen
  obtain ⟨r, g, hgspan, hg0⟩ := s1 _ U hη ⟨π y', hz⟩
  obtain ⟨V, hcov, hVi⟩ := hcharts U r g hgspan hg0
  have hy'mem : y' ∈ π ⁻¹ᵁ (U : Y.Opens) := (Scheme.Hom.mem_preimage π).mpr hz
  rw [← hcov] at hy'mem
  obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.mp hy'mem
  obtain ⟨hVle, hVaff, e, he⟩ := hVi i
  letI : Algebra Γ(Y, U) (Y.presheaf.stalk (π y')) :=
    TopCat.Presheaf.algebra_section_stalk Y.presheaf ⟨π y', hz⟩
  haveI hqP : (hU.primeIdealOf ⟨π y', hz⟩).asIdeal.IsPrime :=
    (hU.primeIdealOf ⟨π y', hz⟩).isPrime
  haveI hqloc : IsLocalization.AtPrime (Y.presheaf.stalk (π y'))
      (hU.primeIdealOf ⟨π y', hz⟩).asIdeal := hU.isLocalization_stalk ⟨π y', hz⟩
  have hq' : Ideal.comap (Y.presheaf.germ (U : Y.Opens) (π y') hz).hom
      (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) =
      (hU.primeIdealOf ⟨π y', hz⟩).asIdeal :=
    IsLocalization.AtPrime.under_maximalIdeal (Y.presheaf.stalk (π y'))
      (hU.primeIdealOf ⟨π y', hz⟩).asIdeal
  obtain ⟨P₀, hP₀, Φ₁, hP₀c, hΦ₁⟩ := s3 U (V i) hVle hVaff _ (algebraMap Γ(Y, U) _) e he y' hi
  haveI := hP₀
  have hP₀q : P₀.comap (algebraMap Γ(Y, U) _) = (hU.primeIdealOf ⟨π y', hz⟩).asIdeal :=
    hP₀c.trans hq'
  obtain ⟨θ, hθ, hlocθ⟩ := s4 Γ(Y, U) (Y.presheaf.stalk (π y'))
    (hU.primeIdealOf ⟨π y', hz⟩).asIdeal r g i
  obtain ⟨P, hP, Ψ, hPθ, hΨ⟩ := s5 _ _ _ θ hlocθ P₀ (by
    rw [Set.disjoint_left]
    intro m hm hmP
    obtain ⟨s, hs, rfl⟩ := Submonoid.mem_map.mp hm
    have hsP : s ∈ P₀.comap (algebraMap Γ(Y, U) _) := hmP
    rw [hP₀q] at hsP
    exact hs hsP)
  haveI := hP
  refine ⟨r, fun l => algebraMap Γ(Y, U) (Y.presheaf.stalk (π y')) (g l), i, P, hP, Φ₁.trans Ψ,
    ?_, ?_, ?_, ?_⟩
  · have h1 : Ideal.span (Set.range fun l => algebraMap Γ(Y, U) (Y.presheaf.stalk (π y')) (g l)) =
        Ideal.map (Y.presheaf.germ (U : Y.Opens) (π y') hz).hom (Ideal.span (Set.range g)) := by
      rw [Ideal.map_span, ← Set.range_comp]
      rfl
    rw [h1, hgspan]
    exact s2 U (π y') hz hγz
  · intro h
    apply hg0 i
    apply germ_injective_of_isIntegral Y (π y') hz
    rw [map_zero]
    exact h
  · exact s6 _ _ _ _ (hU.primeIdealOf ⟨π y', hz⟩).asIdeal θ hθ P₀ hP₀q P hPθ
  · exact s7 _ _ _ _ _ (hU.primeIdealOf ⟨π y', hz⟩).asIdeal.primeCompl θ P₀ P
      (π.stalkMap y').hom Φ₁ Ψ hθ hΦ₁ hΨ

theorem wcpa_dj_rtsxc_model_nzd (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A) :
    Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ∧
      Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ∧
      ∀ l, Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l) ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
by
  classical
  haveI hdomA : IsDomain A := wcpa_regular_isDomain A wcpa_rs_quotient_regular inferInstance
  obtain ⟨t, ht⟩ : ∃ t : Fin (n + 2) → A, t = Fin.cons x (Fin.cons y σ) := ⟨_, rfl⟩
  have ht0 : t 0 = x := by rw [ht, Fin.cons_zero]
  have ht1 : t (Fin.succ 0) = y := by rw [ht, Fin.cons_succ, Fin.cons_zero]
  have htσ : ∀ m : Fin n, t m.succ.succ = σ m := fun m => by rw [ht, Fin.cons_succ, Fin.cons_succ]
  have hrange : Set.range t = {x, y} ∪ Set.range σ := by
    rw [ht, Fin.range_cons, Fin.range_cons, Set.insert_union, Set.singleton_union]
  have hspan : Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A := by rw [hrange]; exact hmax
  have hmem : ∀ i, t i ∈ IsLocalRing.maximalIdeal A := fun i => hspan ▸ Ideal.subset_span ⟨i, rfl⟩

  have hli : LinearIndependent (IsLocalRing.ResidueField A)
      (fun i => (IsLocalRing.maximalIdeal A).toCotangent ⟨t i, hmem i⟩) := by
    apply linearIndependent_of_top_le_span_of_card_eq_finrank
    · have hs : Submodule.span A (Set.range (fun i => (⟨t i, hmem i⟩ : IsLocalRing.maximalIdeal A)))
          = ⊤ := by
        apply Submodule.map_injective_of_injective (IsLocalRing.maximalIdeal A).injective_subtype
        rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp]
        exact hspan
      have h2 := (IsLocalRing.CotangentSpace.span_image_eq_top_iff).mpr hs
      rw [← Set.range_comp] at h2
      exact h2.ge
    · rw [Fintype.card_fin, ← IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace]
      have h := IsRegularLocalRing.spanFinrank_maximalIdeal (R := A)
      rw [← hdim] at h
      exact_mod_cast h.symm

  have hprime : ∀ S : Finset (Fin (n + 2)), (Ideal.span (t '' ↑S)).IsPrime := by
    intro S
    let ι := S.orderEmbOfFin rfl
    let xs : Fin S.card → IsLocalRing.maximalIdeal A := fun i => ⟨t (ι i), hmem (ι i)⟩
    have hlin : LinearIndependent (IsLocalRing.ResidueField A)
        (fun i => (IsLocalRing.maximalIdeal A).toCotangent (xs i)) :=
      hli.comp ι ι.injective
    have hreg := (wcpa_rs_quotient_regular A S.card xs hlin).1
    have hdom := wcpa_regular_isDomain _ wcpa_rs_quotient_regular hreg
    have heq : Set.range (fun i => (xs i : A)) = t '' ↑S := by
      rw [← Finset.range_orderEmbOfFin S rfl, ← Set.range_comp]
      rfl
    rw [heq] at hdom
    exact (Ideal.Quotient.isDomain_iff_prime _).mp hdom

  have hnot : ∀ (S : Set (Fin (n + 2))) (j : Fin (n + 2)), j ∉ S → t j ∉ Ideal.span (t '' S) := by
    intro S j hj hmemj
    have hle : Ideal.span (t '' S) ≤ IsLocalRing.maximalIdeal A := by
      rw [Ideal.span_le]
      rintro _ ⟨i, -, rfl⟩
      exact hmem i
    have key : ∀ z (hz : z ∈ Ideal.span (t '' S)),
        (IsLocalRing.maximalIdeal A).toCotangent ⟨z, hle hz⟩ ∈
          Submodule.span (IsLocalRing.ResidueField A)
            ((fun i => (IsLocalRing.maximalIdeal A).toCotangent ⟨t i, hmem i⟩) '' S) := by
      intro z hz
      induction hz using Submodule.span_induction with
      | mem z hz =>
        obtain ⟨i, hi, rfl⟩ := hz
        exact Submodule.subset_span ⟨i, hi, rfl⟩
      | zero =>
        have e : (⟨0, hle (zero_mem _)⟩ : IsLocalRing.maximalIdeal A) = 0 := rfl
        rw [e, map_zero]
        exact zero_mem _
      | add a c ha hc iha ihc =>
        have e : (⟨a + c, hle (add_mem ha hc)⟩ : IsLocalRing.maximalIdeal A) =
            ⟨a, hle ha⟩ + ⟨c, hle hc⟩ := rfl
        rw [e, map_add]
        exact add_mem iha ihc
      | smul a z hz ih =>
        have e : (⟨a • z, hle (Submodule.smul_mem _ a hz)⟩ : IsLocalRing.maximalIdeal A) =
            a • (⟨z, hle hz⟩ : IsLocalRing.maximalIdeal A) := rfl
        rw [e, map_smul, ← algebraMap_smul (IsLocalRing.ResidueField A)]
        exact Submodule.smul_mem _ _ ih
    exact hli.notMem_span_image hj (key _ hmemj)

  have hcrit : ∀ g : A, g ≠ 0 → (Ideal.span {g}).IsPrime →
      x * y - v * ∏ l, σ l ^ b l ∉ Ideal.span {g} →
      Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) g ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) := by
    intro g hg hp hFg
    rw [mem_nonZeroDivisors_iff_right]
    intro z hz
    obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective z
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at hz
    obtain ⟨w, hw⟩ := hz
    have hwF : w * (x * y - v * ∏ l, σ l ^ b l) ∈ Ideal.span {g} := by
      rw [hw]
      exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self g)
    have hw' : w ∈ Ideal.span {g} := (hp.mem_or_mem hwF).resolve_right hFg
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hw'
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton']
    refine ⟨c, ?_⟩
    apply mul_right_cancel₀ hg
    rw [← hw]
    ring

  have hp1 : ∀ i, (Ideal.span {t i}).IsPrime := by
    intro i
    have h := hprime {i}
    rwa [Finset.coe_singleton, Set.image_singleton] at h
  have hp2 : ∀ i j, (Ideal.span {t i, t j}).IsPrime := by
    intro i j
    have h := hprime {i, j}
    rwa [Finset.coe_pair, Set.image_pair] at h
  have hn1 : ∀ i j, j ≠ i → t j ∉ Ideal.span {t i} := by
    intro i j hji
    have h := hnot {i} j (by simpa using hji)
    rwa [Set.image_singleton] at h
  have hn2 : ∀ i i' j, j ≠ i → j ≠ i' → t j ∉ Ideal.span {t i, t i'} := by
    intro i i' j h1 h2
    have h := hnot {i, i'} j (by simp [h1, h2])
    rwa [Set.image_pair] at h
  have hne0 : ∀ i, t i ≠ 0 := by
    intro i h0
    have h := hnot ∅ i (by simp)
    rw [Set.image_empty, Ideal.span_empty, h0] at h
    exact h (zero_mem _)
  have hPR : ∀ p : Ideal A, p.IsPrime → v * ∏ l, σ l ^ b l ∈ p → ∃ m, b m ≠ 0 ∧ σ m ∈ p := by
    intro p hp h
    rw [Ideal.unit_mul_mem_iff_mem _ hv] at h
    obtain ⟨m, -, hm⟩ := (Ideal.IsPrime.prod_mem_iff (hp := hp)).mp h
    by_cases hb : b m = 0
    · rw [hb, pow_zero] at hm
      exact absurd ((Ideal.eq_top_iff_one _).mpr hm) hp.ne_top
    · exact ⟨m, hb, hp.mem_of_pow_mem _ hm⟩
  have hsy : ∀ m : Fin n, m.succ.succ ≠ (0 : Fin (n + 1)).succ :=
    fun m h => Fin.succ_ne_zero _ (Fin.succ_injective _ h)
  refine ⟨?_, ?_, ?_⟩
  ·
    have hpx : (Ideal.span {x}).IsPrime := by rw [← ht0]; exact hp1 0
    apply hcrit x (ht0 ▸ hne0 0) hpx
    intro hFx
    have hxy : x * y ∈ Ideal.span {x} := Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self x)
    have h1 : v * ∏ l, σ l ^ b l ∈ Ideal.span {x} := by
      have h := Ideal.sub_mem _ hxy hFx
      rwa [sub_sub_cancel] at h
    obtain ⟨m, -, hm⟩ := hPR _ hpx h1
    have h2 := hn1 0 m.succ.succ (Fin.succ_ne_zero _)
    rw [ht0, htσ] at h2
    exact h2 hm
  ·
    have hpy : (Ideal.span {y}).IsPrime := by rw [← ht1]; exact hp1 _
    apply hcrit y (ht1 ▸ hne0 _) hpy
    intro hFy
    have hxy : x * y ∈ Ideal.span {y} := Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self y)
    have h1 : v * ∏ l, σ l ^ b l ∈ Ideal.span {y} := by
      have h := Ideal.sub_mem _ hxy hFy
      rwa [sub_sub_cancel] at h
    obtain ⟨m, -, hm⟩ := hPR _ hpy h1
    have h2 := hn1 (Fin.succ 0) m.succ.succ (hsy m)
    rw [ht1, htσ] at h2
    exact h2 hm
  · intro l
    have hpl : (Ideal.span {σ l}).IsPrime := by rw [← htσ]; exact hp1 _
    apply hcrit (σ l) (htσ l ▸ hne0 _) hpl
    intro hFs
    by_cases hbl : b l = 0
    · have hq : x * y - v * ∏ l, σ l ^ b l ∈ Ideal.span {σ l, y} :=
        Ideal.span_mono (Set.singleton_subset_iff.mpr (Set.mem_insert _ _)) hFs
      have hxy : x * y ∈ Ideal.span {σ l, y} :=
        Ideal.mul_mem_left _ _ (Ideal.subset_span (Set.mem_insert_of_mem _ rfl))
      have h1 : v * ∏ l, σ l ^ b l ∈ Ideal.span {σ l, y} := by
        have h := Ideal.sub_mem _ hxy hq
        rwa [sub_sub_cancel] at h
      have hql : (Ideal.span {σ l, y}).IsPrime := by
        rw [← htσ, ← ht1]; exact hp2 _ _
      obtain ⟨m, hbm, hm⟩ := hPR _ hql h1
      have hml : m ≠ l := fun h => hbm (by rw [h]; exact hbl)
      have h2 := hn2 l.succ.succ (Fin.succ 0) m.succ.succ
        (fun h => hml (Fin.succ_injective _ (Fin.succ_injective _ h))) (hsy m)
      rw [htσ, htσ, ht1] at h2
      exact h2 hm
    · have hP : v * ∏ l, σ l ^ b l ∈ Ideal.span {σ l} := by
        apply Ideal.mul_mem_left
        rw [Ideal.mem_span_singleton]
        exact (dvd_pow_self (σ l) hbl).trans (Finset.dvd_prod_of_mem _ (Finset.mem_univ l))
      have hxy : x * y ∈ Ideal.span {σ l} := by
        have h := Ideal.add_mem _ hFs hP
        rwa [sub_add_cancel] at h
      rcases hpl.mem_or_mem hxy with h | h
      · have h2 := hn1 l.succ.succ 0 (Fin.succ_ne_zero _).symm
        rw [htσ, ht0] at h2
        exact h2 h
      · have h2 := hn1 l.succ.succ (Fin.succ 0) (hsy l).symm
        rw [htσ, ht1] at h2
        exact h2 h

theorem wcpa_dj_rtsxc_ct_tensor_chart : ∀ (R : Type u) [CommRing R] (T : Type u) [CommRing T] [Algebra R T] [Module.Flat R T] (r : ℕ) (f : Fin (r + 1) → R) (i : Fin (r + 1)), ∃ Ψ : TensorProduct R T (wcpaDjChartAlg R f i) ≃+* wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i, Ψ.toRingHom.comp Algebra.TensorProduct.includeLeftRingHom = algebraMap T (wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i) ∧ Ψ.toRingHom.comp ((Algebra.TensorProduct.includeRight : wcpaDjChartAlg R f i →ₐ[R] TensorProduct R T (wcpaDjChartAlg R f i)).toRingHom.comp (algebraMap R (wcpaDjChartAlg R f i))) = (algebraMap T (wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i)).comp (algebraMap R T) :=
by
  intro R _ T _ _ _ r f i
  have hu : IsUnit (((algebraMap T (Localization.Away (algebraMap R T (f i)))).comp
      (algebraMap R T)) (f i)) :=
    IsLocalization.Away.algebraMap_isUnit (algebraMap R T (f i))
  let lam : Localization.Away (f i) →+* Localization.Away (algebraMap R T (f i)) :=
    IsLocalization.Away.lift (f i) hu
  have hlam : ∀ x : R, lam (algebraMap R (Localization.Away (f i)) x) =
      algebraMap T (Localization.Away (algebraMap R T (f i))) (algebraMap R T x) :=
    fun x => IsLocalization.Away.lift_eq (f i) hu x
  have hgen : ∀ l : Fin (r + 1), lam (IsLocalization.mk' (Localization.Away (f i)) (f l)
      (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) =
      IsLocalization.mk' (Localization.Away (algebraMap R T (f i))) (algebraMap R T (f l))
        (⟨algebraMap R T (f i), Submonoid.mem_powers _⟩ :
          Submonoid.powers (algebraMap R T (f i))) := by
    intro l
    have hu' : IsUnit (algebraMap T (Localization.Away (algebraMap R T (f i)))
        (algebraMap R T (f i))) := hu
    refine hu'.mul_left_inj.mp ?_
    have h1 := congrArg lam (IsLocalization.mk'_spec (Localization.Away (f i)) (f l)
      (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))
    rw [map_mul, hlam, hlam] at h1
    exact h1.trans (IsLocalization.mk'_spec (Localization.Away (algebraMap R T (f i)))
      (algebraMap R T (f l)) (⟨algebraMap R T (f i), Submonoid.mem_powers _⟩ :
        Submonoid.powers (algebraMap R T (f i)))).symm
  have hA : ∀ x ∈ wcpaDjChartAlg R f i,
      lam x ∈ wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i := by
    intro x hx
    unfold wcpaDjChartAlg at hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      dsimp only
      rw [hgen l]
      exact Algebra.subset_adjoin ⟨l, rfl⟩
    | algebraMap x =>
      rw [hlam x]
      exact Subalgebra.algebraMap_mem _ _
    | add x y _ _ hx hy => rw [map_add]; exact Subalgebra.add_mem _ hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact Subalgebra.mul_mem _ hx hy
  let lamAlg : Localization.Away (f i) →ₐ[R] Localization.Away (algebraMap R T (f i)) :=
    { lam with
      commutes' := fun x => by
        show lam (algebraMap R _ x) = _
        rw [hlam x]
        exact (IsScalarTower.algebraMap_apply R T _ x).symm }
  let vA : wcpaDjChartAlg R f i →ₐ[R] Localization.Away (f i) :=
    (wcpaDjChartAlg R f i).val
  have hvA_inj : Function.Injective vA := fun x y h => Subtype.val_injective h
  let ω : TensorProduct R T (wcpaDjChartAlg R f i) →ₐ[T]
      Localization.Away (algebraMap R T (f i)) :=
    Algebra.TensorProduct.lift (Algebra.ofId T _) (lamAlg.comp vA) (fun _ _ => Commute.all _ _)
  have hω_tmul : ∀ (t : T) (b : wcpaDjChartAlg R f i), ω (t ⊗ₜ b) =
      algebraMap T (Localization.Away (algebraMap R T (f i))) t * lam (b : Localization.Away (f i)) := by
    intro t b
    rw [Algebra.TensorProduct.lift_tmul]
    rfl
  let ν : TensorProduct R T (Localization.Away (f i)) →ₐ[T]
      Localization.Away (algebraMap R T (f i)) :=
    Algebra.TensorProduct.lift (Algebra.ofId T _) lamAlg (fun _ _ => Commute.all _ _)
  have hM : Algebra.algebraMapSubmonoid T (Submonoid.powers (f i)) =
      Submonoid.powers (algebraMap R T (f i)) := Submonoid.map_powers _ _
  haveI : IsLocalization (Algebra.algebraMapSubmonoid T (Submonoid.powers (f i)))
      (Localization.Away (algebraMap R T (f i))) := by
    rw [hM]; infer_instance
  have hν : Function.Injective ν := by
    let e := IsLocalization.algEquiv (Algebra.algebraMapSubmonoid T (Submonoid.powers (f i)))
      (TensorProduct R T (Localization.Away (f i))) (Localization.Away (algebraMap R T (f i)))
    have : ν = e.toAlgHom :=
      (IsLocalization.algHom_subsingleton
        (Algebra.algebraMapSubmonoid T (Submonoid.powers (f i)))).elim _ _
    rw [this]
    exact e.injective
  have hlT : Function.Injective (LinearMap.lTensor T vA.toLinearMap) :=
    Module.Flat.lTensor_preserves_injective_linearMap vA.toLinearMap hvA_inj
  have hfac : ∀ w, ω w = ν (LinearMap.lTensor T vA.toLinearMap w) := by
    intro w
    induction w using TensorProduct.induction_on with
    | zero => rw [map_zero, map_zero, map_zero]
    | tmul t b =>
      rw [LinearMap.lTensor_tmul, hω_tmul, Algebra.TensorProduct.lift_tmul]
      rfl
    | add x y hx hy => rw [map_add, map_add, map_add, hx, hy]
  have hω : Function.Injective ω := by
    rw [injective_iff_map_eq_zero]
    intro w hw
    rw [hfac] at hw
    have h1 : LinearMap.lTensor T vA.toLinearMap w = 0 := hν (by rw [map_zero]; exact hw)
    exact hlT (by rw [map_zero]; exact h1)
  have hrange : ∀ w, ω w ∈ wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i := by
    intro w
    induction w using TensorProduct.induction_on with
    | zero => rw [map_zero]; exact Subalgebra.zero_mem _
    | tmul t b =>
      rw [hω_tmul]
      exact Subalgebra.mul_mem _ (Subalgebra.algebraMap_mem _ t) (hA _ b.2)
    | add x y hx hy => rw [map_add]; exact Subalgebra.add_mem _ hx hy
  have hA'range : ∀ x ∈ wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i, ∃ c, ω c = x := by
    intro x hx
    unfold wcpaDjChartAlg at hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      let bl : wcpaDjChartAlg R f i :=
        ⟨IsLocalization.mk' (Localization.Away (f i)) (f l)
            (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)),
           Algebra.subset_adjoin ⟨l, rfl⟩⟩
      refine ⟨1 ⊗ₜ bl, ?_⟩
      rw [hω_tmul, map_one, one_mul]
      exact hgen l
    | algebraMap t => exact ⟨algebraMap T _ t, ω.commutes t⟩
    | add x y _ _ hx hy =>
      obtain ⟨c, hc⟩ := hx
      obtain ⟨d, hd⟩ := hy
      exact ⟨c + d, by rw [map_add, hc, hd]⟩
    | mul x y _ _ hx hy =>
      obtain ⟨c, hc⟩ := hx
      obtain ⟨d, hd⟩ := hy
      exact ⟨c * d, by rw [map_mul, hc, hd]⟩
  let incl : wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i →+*
      Localization.Away (algebraMap R T (f i)) :=
    (wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i).val.toRingHom
  have hincl_inj : Function.Injective incl := fun x y h => Subtype.val_injective h
  let Φ : TensorProduct R T (wcpaDjChartAlg R f i) →+*
      wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i :=
    RingHom.codRestrict (ω : TensorProduct R T (wcpaDjChartAlg R f i) →+*
        Localization.Away (algebraMap R T (f i)))
      (wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i) hrange
  have hΦ : ∀ w, incl (Φ w) = ω w := fun w => rfl
  have hΦinj : Function.Injective Φ := by
    intro x y h
    apply hω
    rw [← hΦ, ← hΦ, h]
  have hΦsurj : Function.Surjective Φ := by
    intro z
    obtain ⟨y, hy⟩ := hA'range (incl z) z.2
    exact ⟨y, hincl_inj (by rw [hΦ]; exact hy)⟩
  refine ⟨RingEquiv.ofBijective Φ ⟨hΦinj, hΦsurj⟩, ?_, ?_⟩
  · apply RingHom.ext
    intro t
    apply hincl_inj
    show ω (t ⊗ₜ 1) = algebraMap T (Localization.Away (algebraMap R T (f i))) t
    rw [hω_tmul]
    show _ * lam 1 = _
    rw [map_one, mul_one]
  · apply RingHom.ext
    intro x
    apply hincl_inj
    show ω (1 ⊗ₜ (algebraMap R (wcpaDjChartAlg R f i) x)) =
      algebraMap T (Localization.Away (algebraMap R T (f i))) (algebraMap R T x)
    rw [hω_tmul, map_one, one_mul]
    exact hlam x

theorem wcpa_dj_rtsxc_ct_hat_chart : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (C : Type u) [CommRing C] [Algebra O C] (P : Ideal C) [P.IsPrime], P.comap (algebraMap O C) = IsLocalRing.maximalIdeal O → ∀ (Ch : Type u) [CommRing Ch] [Algebra (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch] (Ψ : TensorProduct O (AdicCompletion (IsLocalRing.maximalIdeal O) O) C ≃+* Ch), Ψ.toRingHom.comp ((Algebra.TensorProduct.includeRight : C →ₐ[O] TensorProduct O (AdicCompletion (IsLocalRing.maximalIdeal O) O) C).toRingHom.comp (algebraMap O C)) = (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch).comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → ∃ (𝔓 : Ideal Ch) (_ : 𝔓.IsPrime) (θ : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P) ≃+* AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔓)) (Localization.AtPrime 𝔓)), (∀ t : AdicCompletion (IsLocalRing.maximalIdeal O) O, algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch t ∈ 𝔓 ↔ ¬ IsUnit t) ∧ θ.toRingHom.comp ((algebraMap (Localization.AtPrime P) (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))).comp ((algebraMap C (Localization.AtPrime P)).comp (algebraMap O C))) = (algebraMap (Localization.AtPrime 𝔓) (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔓)) (Localization.AtPrime 𝔓))).comp ((algebraMap Ch (Localization.AtPrime 𝔓)).comp ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch).comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)))) :=
by
  intro O _ _ _ C _ _ P _ hP Ch _ _ Ψ hΨ
  classical
  obtain ⟨incl, hincl⟩ : ∃ incl : C →+* TensorProduct O (AdicCompletion (IsLocalRing.maximalIdeal O) O) C,
      incl = (Algebra.TensorProduct.includeRight :
        C →ₐ[O] TensorProduct O (AdicCompletion (IsLocalRing.maximalIdeal O) O) C).toRingHom :=
    ⟨_, rfl⟩
  obtain ⟨f₀, hf₀⟩ : ∃ f₀ : C →+* Ch, f₀ = (Ψ : _ →+* Ch).comp incl := ⟨_, rfl⟩
  have hkey : ∀ a : O, f₀ (algebraMap O C a) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a) := by
    intro a
    have h := RingHom.congr_fun hΨ a
    rw [hf₀, hincl]
    exact h
  have hf₀c : ∀ c : C, f₀ c = Ψ (incl c) := by
    intro c
    rw [hf₀]
    rfl

  have hL : ∀ n : ℕ,
      Function.Surjective ((Ideal.Quotient.mk
        ((((IsLocalRing.maximalIdeal O).map (algebraMap O C)).map f₀) ^ n)).comp f₀) ∧
      RingHom.ker ((Ideal.Quotient.mk
        ((((IsLocalRing.maximalIdeal O).map (algebraMap O C)).map f₀) ^ n)).comp f₀) =
        ((IsLocalRing.maximalIdeal O).map (algebraMap O C)) ^ n := by
    intro n
    obtain ⟨hS, hK⟩ := wcpa_dj_glt_cc_tensor_levels O C n
    rw [← hincl] at hS hK
    have hid : (((IsLocalRing.maximalIdeal O).map (algebraMap O C)).map f₀) ^ n =
        ((((IsLocalRing.maximalIdeal O).map (algebraMap O C)).map incl) ^ n).map
          (Ψ : _ →+* Ch) := by
      rw [hf₀, ← Ideal.map_map, Ideal.map_pow]
    rw [hid]
    constructor
    · intro z
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective z
      obtain ⟨c, hc⟩ := hS (Ideal.Quotient.mk _ (Ψ.symm z))
      refine ⟨c, ?_⟩
      rw [RingHom.comp_apply] at hc ⊢
      rw [Ideal.Quotient.eq] at hc ⊢
      have hm := Ideal.mem_map_of_mem (Ψ : _ →+* Ch) hc
      rw [map_sub] at hm
      rw [hf₀c]
      have e1 : (Ψ : _ →+* Ch) (incl c) = Ψ (incl c) := rfl
      have e2 : (Ψ : _ →+* Ch) (Ψ.symm z) = z := Ψ.apply_symm_apply z
      rw [e1, e2] at hm
      exact hm
    · ext c
      rw [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, ← hK,
        RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem,
        Ideal.map_comap_of_equiv, Ideal.mem_comap, hf₀c]
      rw [RingEquiv.symm_apply_apply]
  have hJP : (IsLocalRing.maximalIdeal O).map (algebraMap O C) ≤ P :=
    Ideal.map_le_iff_le_comap.mpr (le_of_eq hP.symm)
  obtain ⟨𝔓, h𝔓, hcomap, hL𝔓⟩ := wcpa_dj_glt_cc_level_prime C Ch f₀ _ hL P hJP
  haveI := h𝔓
  obtain ⟨θ, hθ⟩ := wcpa_dj_glt_cc_completion_of_levels C Ch f₀ P 𝔓 hcomap hL𝔓
  refine ⟨𝔓, h𝔓, θ, ?_, ?_⟩
  · obtain ⟨hOloc, -, -, -, hmax, -⟩ := wcpa_dj_glt_st_completion_facts O
    haveI := hOloc
    have hq : (𝔓.comap (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch)).IsPrime :=
      Ideal.comap_isPrime _ _
    have hle : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ≤
        𝔓.comap (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch) := by
      rw [hmax, Ideal.map_le_iff_le_comap]
      intro a ha
      rw [Ideal.mem_comap, Ideal.mem_comap, ← hkey a]
      have hPa : algebraMap O C a ∈ P := by
        rw [← Ideal.mem_comap, hP]
        exact ha
      rw [← hcomap] at hPa
      exact hPa
    have heq := Ideal.IsMaximal.eq_of_le (IsLocalRing.maximalIdeal.isMaximal _) hq.ne_top hle
    intro t
    show t ∈ 𝔓.comap (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) Ch) ↔ _
    rw [← heq, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
  · apply RingHom.ext
    intro a
    have h1 := RingHom.congr_fun hθ (algebraMap O C a)
    rw [RingHom.comp_apply, RingHom.comp_apply, RingHom.comp_apply, RingHom.comp_apply,
      hkey a] at h1
    exact h1

theorem wcpa_dj_rtsxc_ct_chart_congr : ∀ (R₁ R₂ : Type u) [CommRing R₁] [CommRing R₂] (e : R₁ ≃+* R₂) (r : ℕ) (a : Fin (r + 1) → R₁) (i : Fin (r + 1)) (Q : Ideal (wcpaDjChartAlg R₁ a i)) [Q.IsPrime], ∃ (Q₂ : Ideal (wcpaDjChartAlg R₂ (fun l => e (a l)) i)) (_ : Q₂.IsPrime) (Λ : Localization.AtPrime Q ≃+* Localization.AtPrime Q₂), ∀ x : R₁, Λ (algebraMap (wcpaDjChartAlg R₁ a i) (Localization.AtPrime Q) (algebraMap R₁ (wcpaDjChartAlg R₁ a i) x)) = algebraMap (wcpaDjChartAlg R₂ (fun l => e (a l)) i) (Localization.AtPrime Q₂) (algebraMap R₂ (wcpaDjChartAlg R₂ (fun l => e (a l)) i) (e x)) :=
by
  intro R₁ R₂ _ _ e r a i Q _
  have H₀ : Submonoid.map e.toMonoidHom (Submonoid.powers (a i)) =
      Submonoid.powers (e (a i)) :=
    Submonoid.map_powers e.toMonoidHom (a i)
  obtain ⟨ê, hêalg, hêgen⟩ : ∃ ê : Localization.Away (a i) ≃+* Localization.Away (e (a i)),
      (∀ x : R₁, ê (algebraMap R₁ (Localization.Away (a i)) x) =
        algebraMap R₂ (Localization.Away (e (a i))) (e x)) ∧
      (∀ l, ê (IsLocalization.mk' (Localization.Away (a i)) (a l)
        (⟨a i, Submonoid.mem_powers _⟩ : Submonoid.powers (a i))) =
        IsLocalization.mk' (Localization.Away (e (a i))) (e (a l))
        (⟨e (a i), Submonoid.mem_powers _⟩ : Submonoid.powers (e (a i)))) :=
    ⟨IsLocalization.ringEquivOfRingEquiv (Localization.Away (a i))
        (Localization.Away (e (a i))) e H₀,
      fun x => IsLocalization.ringEquivOfRingEquiv_eq H₀ x,
      fun l => IsLocalization.ringEquivOfRingEquiv_mk' H₀ (a l) _⟩
  have hêsalg : ∀ y : R₂, ê.symm (algebraMap R₂ (Localization.Away (e (a i))) y) =
      algebraMap R₁ (Localization.Away (a i)) (e.symm y) := by
    intro y
    apply ê.injective
    rw [RingEquiv.apply_symm_apply, hêalg, RingEquiv.apply_symm_apply]
  have hêsgen : ∀ l, ê.symm (IsLocalization.mk' (Localization.Away (e (a i))) (e (a l))
      (⟨e (a i), Submonoid.mem_powers _⟩ : Submonoid.powers (e (a i)))) =
      IsLocalization.mk' (Localization.Away (a i)) (a l)
      (⟨a i, Submonoid.mem_powers _⟩ : Submonoid.powers (a i)) := by
    intro l
    rw [← hêgen l, RingEquiv.symm_apply_apply]
  have s2a : ∀ z ∈ wcpaDjChartAlg R₁ a i, ê z ∈ wcpaDjChartAlg R₂ (fun l => e (a l)) i := by
    intro z hz
    refine Algebra.adjoin_induction (p := fun z _ => ê z ∈ wcpaDjChartAlg R₂ (fun l => e (a l)) i)
      ?_ ?_ ?_ ?_ hz
    · rintro x ⟨l, rfl⟩
      show ê (IsLocalization.mk' (Localization.Away (a i)) (a l)
        (⟨a i, Submonoid.mem_powers _⟩ : Submonoid.powers (a i))) ∈ _
      rw [hêgen l]
      exact Algebra.subset_adjoin ⟨l, rfl⟩
    · intro x
      rw [hêalg x]
      exact Subalgebra.algebraMap_mem _ _
    · intro x y _ _ hx hy
      rw [map_add]
      exact Subalgebra.add_mem _ hx hy
    · intro x y _ _ hx hy
      rw [map_mul]
      exact Subalgebra.mul_mem _ hx hy
  have s2b : ∀ w ∈ wcpaDjChartAlg R₂ (fun l => e (a l)) i, ê.symm w ∈ wcpaDjChartAlg R₁ a i := by
    intro w hw
    refine Algebra.adjoin_induction (p := fun w _ => ê.symm w ∈ wcpaDjChartAlg R₁ a i)
      ?_ ?_ ?_ ?_ hw
    · rintro x ⟨l, rfl⟩
      show ê.symm (IsLocalization.mk' (Localization.Away (e (a i))) (e (a l))
        (⟨e (a i), Submonoid.mem_powers _⟩ : Submonoid.powers (e (a i)))) ∈ _
      rw [hêsgen l]
      exact Algebra.subset_adjoin ⟨l, rfl⟩
    · intro x
      rw [hêsalg x]
      exact Subalgebra.algebraMap_mem _ _
    · intro x y _ _ hx hy
      rw [map_add]
      exact Subalgebra.add_mem _ hx hy
    · intro x y _ _ hx hy
      rw [map_mul]
      exact Subalgebra.mul_mem _ hx hy
  let E : wcpaDjChartAlg R₁ a i ≃+* wcpaDjChartAlg R₂ (fun l => e (a l)) i :=
    { toFun := fun z => ⟨ê z.1, s2a z.1 z.2⟩
      invFun := fun w => ⟨ê.symm w.1, s2b w.1 w.2⟩
      left_inv := fun z => Subtype.ext (ê.symm_apply_apply z.1)
      right_inv := fun w => Subtype.ext (ê.apply_symm_apply w.1)
      map_mul' := fun x y => Subtype.ext (map_mul ê x.1 y.1)
      map_add' := fun x y => Subtype.ext (map_add ê x.1 y.1) }
  have hEalg : ∀ x : R₁, E (algebraMap R₁ (wcpaDjChartAlg R₁ a i) x) =
      algebraMap R₂ (wcpaDjChartAlg R₂ (fun l => e (a l)) i) (e x) :=
    fun x => Subtype.ext (hêalg x)
  haveI hQ₂ : (Q.comap (E.symm : wcpaDjChartAlg R₂ (fun l => e (a l)) i →+*
      wcpaDjChartAlg R₁ a i)).IsPrime := Ideal.comap_isPrime _ _
  have H : Submonoid.map E.toMonoidHom Q.primeCompl =
      (Q.comap (E.symm : wcpaDjChartAlg R₂ (fun l => e (a l)) i →+*
        wcpaDjChartAlg R₁ a i)).primeCompl := by
    ext y
    constructor
    · rintro ⟨x, hx, rfl⟩
      rw [Ideal.mem_primeCompl_iff, Ideal.mem_comap]
      intro h
      apply hx
      have h' : E.symm (E x) ∈ Q := h
      rwa [RingEquiv.symm_apply_apply] at h'
    · intro hy
      rw [Ideal.mem_primeCompl_iff, Ideal.mem_comap] at hy
      refine ⟨E.symm y, hy, ?_⟩
      exact E.apply_symm_apply y
  refine ⟨_, hQ₂, IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime Q)
    (Localization.AtPrime (Q.comap (E.symm : wcpaDjChartAlg R₂ (fun l => e (a l)) i →+*
      wcpaDjChartAlg R₁ a i))) E H, ?_⟩
  intro x
  rw [IsLocalization.ringEquivOfRingEquiv_eq, hEalg x]

theorem wcpa_dj_rtsxc_ct_regen : ∀ (R : Type u) [CommRing R] (r : ℕ) (a : Fin (r + 1) → R) (i : Fin (r + 1)) (m : ℕ) (c : Fin (m + 1) → R), a i ∈ nonZeroDivisors R → (∀ j, c j ∈ nonZeroDivisors R) → Ideal.span (Set.range a) = Ideal.span (Set.range c) → ∀ (Q : Ideal (wcpaDjChartAlg R a i)) [Q.IsPrime], ∃ (j : Fin (m + 1)) (Q' : Ideal (wcpaDjChartAlg R c j)) (_ : Q'.IsPrime) (Λ : Localization.AtPrime Q ≃+* Localization.AtPrime Q'), (∀ x : R, Λ (algebraMap (wcpaDjChartAlg R a i) (Localization.AtPrime Q) (algebraMap R (wcpaDjChartAlg R a i) x)) = algebraMap (wcpaDjChartAlg R c j) (Localization.AtPrime Q') (algebraMap R (wcpaDjChartAlg R c j) x)) ∧ ∃ w : (Localization.AtPrime Q')ˣ, algebraMap (wcpaDjChartAlg R c j) (Localization.AtPrime Q') (algebraMap R (wcpaDjChartAlg R c j) (a i)) = (w : Localization.AtPrime Q') * algebraMap (wcpaDjChartAlg R c j) (Localization.AtPrime Q') (algebraMap R (wcpaDjChartAlg R c j) (c j)) :=
by
  classical

  have t_os : ∀ (A E : Type u) [CommRing A] [CommRing E] (φ : A →+* E) (s : A),
      IsUnit (φ s) → (∀ z : E, ∃ (N : ℕ) (x : A), z * φ s ^ N = φ x) → Function.Injective φ →
      ∀ (p : Ideal E) [p.IsPrime] (Q : Ideal A) [Q.IsPrime], p.comap φ = Q →
      ∃ e : Localization.AtPrime Q ≃+* Localization.AtPrime p,
        ∀ x : A, e (algebraMap A (Localization.AtPrime Q) x) =
          algebraMap E (Localization.AtPrime p) (φ x) := by
    intro A E _ _ φ s hu hsurj hinj p _ Q _ hQ
    letI : Algebra A E := φ.toAlgebra
    haveI : IsLocalization.Away s E :=
      IsLocalization.Away.mk s hu hsurj (fun a b h => ⟨0, by rw [hinj h]⟩)
    haveI h1 : IsLocalization.AtPrime (Localization.AtPrime p) (p.comap (algebraMap A E)) :=
      IsLocalization.isLocalization_isLocalization_atPrime_isLocalization (Submonoid.powers s)
        (Localization.AtPrime p) p
    have hQ' : p.comap (algebraMap A E) = Q := hQ
    haveI h2 : IsLocalization.AtPrime (Localization.AtPrime p) Q := hQ' ▸ h1
    let e := IsLocalization.algEquiv Q.primeCompl (Localization.AtPrime Q) (Localization.AtPrime p)
    refine ⟨e.toRingEquiv, fun x => ?_⟩
    show e _ = _
    rw [e.commutes, IsScalarTower.algebraMap_apply A E (Localization.AtPrime p)]
    rfl

  have t_osb : ∀ (A E : Type u) [CommRing A] [CommRing E] (φ : A →+* E) (s : A),
      IsUnit (φ s) → (∀ z : E, ∃ (N : ℕ) (x : A), z * φ s ^ N = φ x) → Function.Injective φ →
      ∀ (Q : Ideal A) [Q.IsPrime], s ∉ Q → (Q.map φ).IsPrime ∧ (Q.map φ).comap φ = Q := by
    intro A E _ _ φ s hu hsurj hinj Q hQ hsQ
    letI : Algebra A E := φ.toAlgebra
    haveI : IsLocalization.Away s E :=
      IsLocalization.Away.mk s hu hsurj (fun a b h => ⟨0, by rw [hinj h]⟩)
    have hdisj : Disjoint ((Submonoid.powers s : Submonoid A) : Set A) (Q : Set A) := by
      rw [Set.disjoint_left]
      rintro x ⟨n, rfl⟩ hx
      exact hsQ (hQ.mem_of_pow_mem n hx)
    exact ⟨IsLocalization.isPrime_of_isPrime_disjoint (Submonoid.powers s) E Q hQ hdisj,
      IsLocalization.under_map_of_isPrime_disjoint (Submonoid.powers s) E hQ hdisj⟩

  have t_s1 : ∀ (R : Type u) [CommRing R] (n : ℕ) (b : Fin (n + 1) → R) (k : Fin (n + 1)) (x : R),
      x ∈ Ideal.span (Set.range b) →
      ∃ t : wcpaDjChartAlg R b k, t * algebraMap R (wcpaDjChartAlg R b k) (b k) =
        algebraMap R (wcpaDjChartAlg R b k) x := by
    intro R _ n b k x hx
    obtain ⟨σ, hσ⟩ := (Submodule.mem_span_range_iff_exists_fun R).mp hx
    let y : Fin (n + 1) → wcpaDjChartAlg R b k := fun l =>
      ⟨IsLocalization.mk' (Localization.Away (b k)) (b l)
        (⟨b k, Submonoid.mem_powers _⟩ : Submonoid.powers (b k)), Algebra.subset_adjoin ⟨l, rfl⟩⟩
    have hy : ∀ l, y l * algebraMap R (wcpaDjChartAlg R b k) (b k) =
        algebraMap R (wcpaDjChartAlg R b k) (b l) := fun l =>
      Subtype.ext (IsLocalization.mk'_spec (Localization.Away (b k)) (b l)
        (⟨b k, Submonoid.mem_powers _⟩ : Submonoid.powers (b k)))
    refine ⟨∑ l, algebraMap R _ (σ l) * y l, ?_⟩
    rw [Finset.sum_mul, ← hσ, map_sum]
    refine Finset.sum_congr rfl (fun l _ => ?_)
    rw [mul_assoc, hy, smul_eq_mul, map_mul]

  have t_embed : ∀ (R : Type u) [CommRing R] (n : ℕ) (b : Fin (n + 1) → R) (k : Fin (n + 1))
      (L : Type u) [CommRing L] [Algebra R L], Function.Injective (algebraMap R L) →
      IsUnit (algebraMap R L (b k)) →
      ∃ f : wcpaDjChartAlg R b k →+* L, Function.Injective f ∧
        (∀ x : R, f (algebraMap R (wcpaDjChartAlg R b k) x) = algebraMap R L x) ∧
        ∀ (z : wcpaDjChartAlg R b k) (l : Fin (n + 1)),
          (z : Localization.Away (b k)) = IsLocalization.mk' (Localization.Away (b k)) (b l)
            (⟨b k, Submonoid.mem_powers _⟩ : Submonoid.powers (b k)) →
          f z * algebraMap R L (b k) = algebraMap R L (b l) := by
    intro R _ n b k L _ _ hinj hu
    let lam : Localization.Away (b k) →+* L := IsLocalization.Away.lift (b k) hu
    have hlam : ∀ x : R, lam (algebraMap R (Localization.Away (b k)) x) = algebraMap R L x :=
      fun x => IsLocalization.Away.lift_eq (b k) hu x
    have hlinj : Function.Injective lam := by
      rw [injective_iff_map_eq_zero]
      intro z hz
      obtain ⟨⟨x, mm⟩, hxm⟩ := IsLocalization.surj (Submonoid.powers (b k)) z
      have h1 : algebraMap R L x = 0 := by
        rw [← hlam, ← hxm, map_mul, hz, zero_mul]
      have h2 : x = 0 := hinj (h1.trans (map_zero _).symm)
      rw [h2, map_zero] at hxm
      exact ((IsLocalization.map_units (Localization.Away (b k)) mm).mul_left_eq_zero).mp hxm
    refine ⟨lam.comp (wcpaDjChartAlg R b k).val.toRingHom, ?_, ?_, ?_⟩
    · exact hlinj.comp Subtype.val_injective
    · intro x
      exact hlam x
    · intro z l hz
      show lam (z : Localization.Away (b k)) * _ = _
      rw [hz, ← hlam, ← hlam, ← map_mul, IsLocalization.mk'_spec]

  have t_absorb : ∀ (R : Type u) [CommRing R] (n : ℕ) (a : Fin (n + 1) → R) (k : Fin (n + 1))
      (B L : Type u) [CommRing B] [CommRing L] [Algebra R B] (f : wcpaDjChartAlg R a k →+* L)
      (g : B →+* L) (s : L) (t : B) (w : Fin (n + 1) → B),
      (∀ x : R, f (algebraMap R (wcpaDjChartAlg R a k) x) = g (algebraMap R B x)) → s * g t = 1 →
      (∀ (z : wcpaDjChartAlg R a k) (l : Fin (n + 1)),
        (z : Localization.Away (a k)) = IsLocalization.mk' (Localization.Away (a k)) (a l)
          (⟨a k, Submonoid.mem_powers _⟩ : Submonoid.powers (a k)) → f z = g (w l) * s) →
      ∀ z : wcpaDjChartAlg R a k, ∃ (N : ℕ) (b : B), f z = g b * s ^ N := by
    intro R _ n a k B L _ _ _ f g s t w hcompat hst hgen z
    have kk : ∀ m : ℕ, s ^ m * g t ^ m = 1 := fun m => by rw [← mul_pow, hst, one_pow]
    obtain ⟨y, hy⟩ := z
    induction hy using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, hl⟩ := hx
      exact ⟨1, w l, by rw [pow_one]; exact hgen _ l hl.symm⟩
    | algebraMap r =>
      exact ⟨0, algebraMap R B r, by rw [pow_zero, mul_one, ← hcompat r]; rfl⟩
    | add x y hx hy ihx ihy =>
      obtain ⟨N1, b1, h1⟩ := ihx
      obtain ⟨N2, b2, h2⟩ := ihy
      refine ⟨N1 + N2, b1 * t ^ N2 + b2 * t ^ N1, ?_⟩
      change f (⟨x, hx⟩ + ⟨y, hy⟩) = _
      rw [map_add, h1, h2, map_add, map_mul, map_mul, map_pow, map_pow, pow_add]
      linear_combination (-(g b1 * s ^ N1)) * kk N2 + (-(g b2 * s ^ N2)) * kk N1
    | mul x y hx hy ihx ihy =>
      obtain ⟨N1, b1, h1⟩ := ihx
      obtain ⟨N2, b2, h2⟩ := ihy
      refine ⟨N1 + N2, b1 * b2, ?_⟩
      change f (⟨x, hx⟩ * ⟨y, hy⟩) = _
      rw [map_mul, h1, h2, map_mul, pow_add]
      ring

  have t_s2 : ∀ (R : Type u) [CommRing R] (r : ℕ) (a : Fin (r + 1) → R) (i : Fin (r + 1)) (m : ℕ)
      (c : Fin (m + 1) → R), Ideal.span (Set.range a) = Ideal.span (Set.range c) →
      ∀ (Q : Ideal (wcpaDjChartAlg R a i)) [Q.IsPrime], ∃ (j : Fin (m + 1))
        (s : wcpaDjChartAlg R a i), s ∉ Q ∧
        s * algebraMap R (wcpaDjChartAlg R a i) (a i) = algebraMap R (wcpaDjChartAlg R a i) (c j) := by
    intro R _ r a i m c hspan Q hQ
    have hmem : ∀ l, c l ∈ Ideal.span (Set.range a) := fun l => by
      rw [hspan]; exact Ideal.subset_span ⟨l, rfl⟩
    choose β hβ using fun l => t_s1 R r a i (c l) (hmem l)
    have hai : a i ∈ Ideal.span (Set.range c) := by
      rw [← hspan]; exact Ideal.subset_span ⟨i, rfl⟩
    obtain ⟨γ, hγ⟩ := (Submodule.mem_span_range_iff_exists_fun R).mp hai
    have hS : (∑ l, algebraMap R (wcpaDjChartAlg R a i) (γ l) * β l) *
        algebraMap R (wcpaDjChartAlg R a i) (a i) =
        1 * algebraMap R (wcpaDjChartAlg R a i) (a i) := by
      rw [Finset.sum_mul, one_mul]
      calc ∑ l, algebraMap R (wcpaDjChartAlg R a i) (γ l) * β l *
            algebraMap R (wcpaDjChartAlg R a i) (a i)
          = ∑ l, algebraMap R (wcpaDjChartAlg R a i) (γ l * c l) :=
            Finset.sum_congr rfl (fun l _ => by rw [mul_assoc, hβ, map_mul])
        _ = algebraMap R (wcpaDjChartAlg R a i) (∑ l, γ l • c l) := by
            rw [map_sum]; rfl
        _ = algebraMap R (wcpaDjChartAlg R a i) (a i) :=
            congrArg (algebraMap R (wcpaDjChartAlg R a i)) hγ
    have h2 := congrArg (wcpaDjChartAlg R a i).val hS
    rw [map_mul, map_mul, AlgHom.commutes, map_one] at h2
    have h3 := (IsUnit.mul_left_inj (IsLocalization.Away.algebraMap_isUnit (a i))).mp h2
    have hinjv : Function.Injective (wcpaDjChartAlg R a i).val := Subtype.val_injective
    have hS1 : ∑ l, algebraMap R (wcpaDjChartAlg R a i) (γ l) * β l = 1 :=
      hinjv (h3.trans (map_one _).symm)
    have hex : ∃ j, β j ∉ Q := by
      by_contra hcon
      push_neg at hcon
      apply hQ.ne_top
      rw [Ideal.eq_top_iff_one, ← hS1]
      exact Ideal.sum_mem _ (fun l _ => Q.mul_mem_left _ (hcon l))
    obtain ⟨j, hj⟩ := hex
    exact ⟨j, β j, hj, hβ j⟩

  have t_common : ∀ (R A B L : Type u) [CommRing R] [CommRing A] [CommRing B] [CommRing L]
      [Algebra R A] [Algebra R B] (f : A →+* L) (g : B →+* L) (s : A) (t : B),
      Function.Injective f → Function.Injective g →
      (∀ x : R, f (algebraMap R A x) = g (algebraMap R B x)) → f s * g t = 1 →
      (∀ x : A, ∃ (N : ℕ) (y : B), f x = g y * f s ^ N) →
      (∀ y : B, ∃ (N : ℕ) (x : A), g y = f x * g t ^ N) →
      ∃ (E : Type u) (_ : CommRing E) (φA : A →+* E) (φB : B →+* E),
        (∀ x : R, φA (algebraMap R A x) = φB (algebraMap R B x)) ∧ Function.Injective φA ∧
        Function.Injective φB ∧ φA s * φB t = 1 ∧
        (∀ z : E, ∃ (N : ℕ) (x : A), z * φA s ^ N = φA x) ∧
        (∀ z : E, ∃ (N : ℕ) (y : B), z * φB t ^ N = φB y) := by
    intro R A B L _ _ _ _ _ _ f g s t hf hg hc hst H1 H2
    have kk : ∀ m : ℕ, f s ^ m * g t ^ m = 1 := fun m => by rw [← mul_pow, hst, one_pow]
    let E : Subring L :=
      { carrier := {z | ∃ (N : ℕ) (x : A), z * f s ^ N = f x}
        mul_mem' := by
          rintro z z' ⟨N, x, hx⟩ ⟨N', x', hx'⟩
          exact ⟨N + N', x * x', by rw [map_mul, ← hx, ← hx', pow_add]; ring⟩
        one_mem' := ⟨0, 1, by simp⟩
        add_mem' := by
          rintro z z' ⟨N, x, hx⟩ ⟨N', x', hx'⟩
          exact ⟨N + N', x * s ^ N' + x' * s ^ N, by
            rw [map_add, map_mul, map_mul, map_pow, map_pow, ← hx, ← hx', pow_add]; ring⟩
        zero_mem' := ⟨0, 0, by simp⟩
        neg_mem' := by
          rintro z ⟨N, x, hx⟩
          exact ⟨N, -x, by rw [map_neg, ← hx]; ring⟩ }
    have hA : ∀ x : A, f x ∈ E := fun x => ⟨0, x, by simp⟩
    have hB : ∀ y : B, g y ∈ E := by
      intro y
      obtain ⟨N, x, hx⟩ := H2 y
      exact ⟨N, x, by rw [hx, mul_assoc, mul_comm (g t ^ N), kk, mul_one]⟩
    refine ⟨E, inferInstance, f.codRestrict E hA, g.codRestrict E hB, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · intro x; exact Subtype.ext (hc x)
    · intro x y h; exact hf (congrArg Subtype.val h)
    · intro x y h; exact hg (congrArg Subtype.val h)
    · exact Subtype.ext hst
    · rintro ⟨z, N, x, hx⟩
      exact ⟨N, x, Subtype.ext hx⟩
    · rintro ⟨z, N, x, hx⟩
      obtain ⟨M, y, hy⟩ := H1 x
      refine ⟨M, y * t ^ N, Subtype.ext ?_⟩
      show z * g t ^ M = g (y * t ^ N)
      rw [map_mul, map_pow]
      linear_combination (-(z * g t ^ M)) * kk N + (g t ^ M * g t ^ N) * hx +
        (g t ^ M * g t ^ N) * hy + (g y * g t ^ N) * kk M

  intro R _ r a i m c ha hc hspan Q hQ
  obtain ⟨j, s, hsQ, hs⟩ := t_s2 R r a i m c hspan Q
  have hu : a i * c j ∈ nonZeroDivisors R := mul_mem_nonZeroDivisors.mpr ⟨ha, hc j⟩
  have hinj : Function.Injective (algebraMap R (Localization.Away (a i * c j))) :=
    IsLocalization.injective (Localization.Away (a i * c j)) (Submonoid.powers_le.mpr hu)
  have hai : IsUnit (algebraMap R (Localization.Away (a i * c j)) (a i)) :=
    IsLocalization.Away.isUnit_of_dvd (a i * c j) (dvd_mul_right _ _)
  have hcj : IsUnit (algebraMap R (Localization.Away (a i * c j)) (c j)) :=
    IsLocalization.Away.isUnit_of_dvd (a i * c j) (dvd_mul_left _ _)
  obtain ⟨f, hf_inj, hf_R, hf_gen⟩ := t_embed R r a i _ hinj hai
  obtain ⟨g, hg_inj, hg_R, hg_gen⟩ := t_embed R m c j _ hinj hcj
  obtain ⟨t, ht⟩ := t_s1 R m c j (a i) (by rw [← hspan]; exact Ideal.subset_span ⟨i, rfl⟩)
  have R1 : f s * algebraMap R (Localization.Away (a i * c j)) (a i) =
      algebraMap R (Localization.Away (a i * c j)) (c j) := by
    rw [← hf_R (a i), ← map_mul, hs, hf_R]
  have R2 : g t * algebraMap R (Localization.Away (a i * c j)) (c j) =
      algebraMap R (Localization.Away (a i * c j)) (a i) := by
    rw [← hg_R (c j), ← map_mul, ht, hg_R]
  have R3 : f s * g t = 1 := by
    have h : (f s * g t) * (algebraMap R (Localization.Away (a i * c j)) (a i) *
        algebraMap R (Localization.Away (a i * c j)) (c j)) =
        1 * (algebraMap R (Localization.Away (a i * c j)) (a i) *
        algebraMap R (Localization.Away (a i * c j)) (c j)) := by
      calc (f s * g t) * (algebraMap R (Localization.Away (a i * c j)) (a i) *
            algebraMap R (Localization.Away (a i * c j)) (c j))
          = (f s * algebraMap R (Localization.Away (a i * c j)) (a i)) *
            (g t * algebraMap R (Localization.Away (a i * c j)) (c j)) := by ring
        _ = _ := by rw [R1, R2]; ring
    exact (IsUnit.mul_left_inj (hai.mul hcj)).mp h
  have hcompat : ∀ x : R, f (algebraMap R (wcpaDjChartAlg R a i) x) =
      g (algebraMap R (wcpaDjChartAlg R c j) x) := fun x => (hf_R x).trans (hg_R x).symm
  choose w hw using fun l => t_s1 R m c j (a l) (by rw [← hspan]; exact Ideal.subset_span ⟨l, rfl⟩)
  have H1 := t_absorb R r a i (wcpaDjChartAlg R c j) _ f g (f s) t w hcompat R3 (by
    intro z l hz
    have e1 := hf_gen z l hz
    have e2 : g (w l) * f s * algebraMap R (Localization.Away (a i * c j)) (a i) =
        algebraMap R (Localization.Away (a i * c j)) (a l) := by
      rw [mul_assoc, R1, ← hg_R (c j), ← hg_R (a l), ← map_mul, hw]
    exact (IsUnit.mul_left_inj hai).mp (e1.trans e2.symm))
  choose v hv using fun l => t_s1 R r a i (c l) (by rw [hspan]; exact Ideal.subset_span ⟨l, rfl⟩)
  have H2 := t_absorb R m c j (wcpaDjChartAlg R a i) _ g f (g t) s v
    (fun x => (hcompat x).symm) ((mul_comm _ _).trans R3) (by
    intro z l hz
    have e1 := hg_gen z l hz
    have e2 : f (v l) * g t * algebraMap R (Localization.Away (a i * c j)) (c j) =
        algebraMap R (Localization.Away (a i * c j)) (c l) := by
      rw [mul_assoc, R2, ← hf_R (a i), ← hf_R (c l), ← map_mul, hv]
    exact (IsUnit.mul_left_inj hcj).mp (e1.trans e2.symm))
  obtain ⟨E, _, φA, φB, hEc, hφA, hφB, hst, hsurjA, hsurjB⟩ :=
    t_common R (wcpaDjChartAlg R a i) (wcpaDjChartAlg R c j) _ f g s t hf_inj hg_inj hcompat R3
      H1 H2
  have huA : IsUnit (φA s) := IsUnit.of_mul_eq_one _ hst
  have huB : IsUnit (φB t) := IsUnit.of_mul_eq_one _ ((mul_comm _ _).trans hst)
  obtain ⟨hpP, hpQ⟩ := t_osb _ E φA s huA hsurjA hφA Q hsQ
  haveI := hpP
  obtain ⟨eA, heA⟩ := t_os _ E φA s huA hsurjA hφA (Q.map φA) Q hpQ
  haveI hQ'P : ((Q.map φA).comap φB).IsPrime := Ideal.comap_isPrime φB (Q.map φA)
  obtain ⟨eB, heB⟩ := t_os _ E φB t huB hsurjB hφB (Q.map φA) ((Q.map φA).comap φB) rfl
  have htQ' : t ∉ (Q.map φA).comap φB := by
    intro h
    exact hpP.ne_top (Ideal.eq_top_of_isUnit_mem _ h huB)
  refine ⟨j, (Q.map φA).comap φB, hQ'P, eA.trans eB.symm, ?_, ?_⟩
  · intro x
    rw [RingEquiv.trans_apply, heA, hEc, ← heB, RingEquiv.symm_apply_apply]
  · have hu' : IsUnit (algebraMap (wcpaDjChartAlg R c j)
        (Localization.AtPrime ((Q.map φA).comap φB)) t) :=
      (IsLocalization.AtPrime.isUnit_to_map_iff _ ((Q.map φA).comap φB) t).mpr htQ'
    refine ⟨hu'.unit, ?_⟩
    rw [IsUnit.unit_spec, ← map_mul, ht]

theorem wcpa_dj_rtsxc_chart_transport (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O]
    [IsDomain O] (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i))
    [P.IsPrime] (D : Type u) [CommRing D] [IsLocalRing D] (φ : O →+* D)
    (Φ : D ≃+* Localization.AtPrime P) (R : Type u) [CommRing R]
    (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* R) (m : ℕ) (G : Fin (m + 1) → R)
    (hfi : f i ≠ 0)
    (hP : P.comap (algebraMap O (wcpaDjChartAlg O f i)) = IsLocalRing.maximalIdeal O)
    (hΦ : ∀ a, Φ (φ a) = algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)
      (algebraMap O (wcpaDjChartAlg O f i) a))
    (hG : ∀ j, G j ∈ nonZeroDivisors R)
    (hspan : Ideal.span (Set.range G) = Ideal.map e
      (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (Ideal.span (Set.range f)))) :
    ∃ (j : Fin (m + 1)) (𝔔 : Ideal (wcpaDjChartAlg R G j)) (_ : 𝔔.IsPrime),
      (∀ c, algebraMap R (wcpaDjChartAlg R G j) c ∈ 𝔔 ↔ ¬ IsUnit c) ∧
      wcpaDjRtsxcTransOut O D (Localization.AtPrime 𝔔) φ
        (((algebraMap (wcpaDjChartAlg R G j) (Localization.AtPrime 𝔔)).comp
          (algebraMap R (wcpaDjChartAlg R G j))).comp
            ((e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* R).comp
              (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))))
        (φ (f i))
        (((algebraMap (wcpaDjChartAlg R G j) (Localization.AtPrime 𝔔)).comp
          (algebraMap R (wcpaDjChartAlg R G j))) (G j)) :=
by
  classical

  have k6 : ∀ (S : Type u) [CommRing S] [IsNoetherianRing S] (r₀ : ℕ) (g : Fin (r₀ + 1) → S)
      (k : Fin (r₀ + 1)) (Q : Ideal (wcpaDjChartAlg S g k)) [Q.IsPrime],
      IsNoetherianRing (Localization.AtPrime Q) := by
    intro S _ _ r₀ g k Q _
    have hfg : (wcpaDjChartAlg S g k).FG := by
      rw [Subalgebra.fg_def]
      exact ⟨_, Set.finite_range _, rfl⟩
    haveI : Algebra.FiniteType S (wcpaDjChartAlg S g k) := (Subalgebra.fg_iff_finiteType _).mp hfg
    haveI : IsNoetherianRing (wcpaDjChartAlg S g k) := Algebra.FiniteType.isNoetherianRing S _
    exact IsLocalization.isNoetherianRing Q.primeCompl _ inferInstance

  have k5 : ∀ (D₀ B₀ : Type u) [CommRing D₀] [IsLocalRing D₀] [IsNoetherianRing D₀] [CommRing B₀]
      [IsLocalRing B₀] [IsNoetherianRing B₀]
      (Ψ : AdicCompletion (IsLocalRing.maximalIdeal D₀) D₀ ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal B₀) B₀),
      ringKrullDim D₀ = ringKrullDim B₀ ∧
      Ideal.map Ψ (Ideal.map (algebraMap D₀ (AdicCompletion (IsLocalRing.maximalIdeal D₀) D₀))
          (IsLocalRing.maximalIdeal D₀)) =
        Ideal.map (algebraMap B₀ (AdicCompletion (IsLocalRing.maximalIdeal B₀) B₀))
          (IsLocalRing.maximalIdeal B₀) := by
    intro D₀ B₀ _ _ _ _ _ _ Ψ
    obtain ⟨hDl, hDh, hDn, hDf, hDm, -⟩ := wcpa_dj_glt_st_completion_facts D₀
    obtain ⟨hBl, hBh, hBn, hBf, hBm, -⟩ := wcpa_dj_glt_st_completion_facts B₀
    haveI := hDl; haveI := hDh; haveI := hDn; haveI := hDf
    haveI := hBl; haveI := hBh; haveI := hBn; haveI := hBf
    haveI : Module.Flat D₀ (AdicCompletion (IsLocalRing.maximalIdeal D₀) D₀) :=
      Module.FaithfullyFlat.toFlat
    haveI : Module.Flat B₀ (AdicCompletion (IsLocalRing.maximalIdeal B₀) B₀) :=
      Module.FaithfullyFlat.toFlat
    refine ⟨?_, ?_⟩
    · rw [← wc_lfi_flat_local_dim_eq D₀ _ hDm.symm, ← wc_lfi_flat_local_dim_eq B₀ _ hBm.symm]
      exact RingEquiv.ringKrullDim Ψ
    · rw [← hDm, ← hBm]
      exact IsLocalRing.eq_maximalIdeal (Ideal.map_isMaximal_of_equiv Ψ)

  obtain ⟨hOloc, -, hOnoeth, -, -, -⟩ := wcpa_dj_glt_st_completion_facts O
  haveI := hOloc
  haveI := hOnoeth
  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian _
  haveI hRnoeth : IsNoetherianRing R := isNoetherianRing_of_ringEquiv _ e
  haveI hDnoeth : IsNoetherianRing D := by
    haveI := k6 O r f i P
    exact isNoetherianRing_of_ringEquiv _ Φ.symm

  have fin : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (c : R →+* B) (g : B)
      (Ψ : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal B) B),
      (∀ a, Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) (φ a)) =
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)
          (c (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a)))) →
      (∃ w : Bˣ, c (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i))) =
        (w : B) * g) →
      wcpaDjRtsxcTransOut O D B φ
        (c.comp ((e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* R).comp
          (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)))) (φ (f i)) g := by
    intro B _ _ _ c g Ψ hT3 hw
    obtain ⟨w, hw⟩ := hw
    obtain ⟨hk1, hk2⟩ := k5 D B Ψ
    unfold wcpaDjRtsxcTransOut
    refine ⟨Ψ, hk1, hk2, fun a => hT3 a, ?_⟩
    rw [hT3 (f i), hw, map_mul]
    exact associated_unit_mul_left _ _ (w.isUnit.map _)

  have hfi0 : f i ∈ nonZeroDivisors O := mem_nonZeroDivisors_of_ne_zero hfi
  have hreg := Module.Flat.isSMulRegular_of_nonZeroDivisors
    (M := AdicCompletion (IsLocalRing.maximalIdeal O) O) hfi0
  have hιfi : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i) ∈
      nonZeroDivisors (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    rw [mem_nonZeroDivisors_iff_right]
    intro t ht
    apply hreg
    show f i • t = f i • (0 : AdicCompletion (IsLocalRing.maximalIdeal O) O)
    rw [smul_zero, Algebra.smul_def, mul_comm]
    exact ht
  have hai : e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)) ∈
      nonZeroDivisors R := by
    rw [mem_nonZeroDivisors_iff_right]
    intro y hy
    have h1 : e.symm y * algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i) = 0 := by
      apply e.injective
      rw [map_mul, RingEquiv.apply_symm_apply, hy, map_zero]
    have h0 := (mem_nonZeroDivisors_iff_right.mp hιfi) _ h1
    rw [← e.apply_symm_apply y, h0, map_zero]

  have hspan' : Ideal.span (Set.range
      (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)))) =
      Ideal.span (Set.range G) := by
    rw [hspan, Ideal.map_span, Ideal.map_span, ← Set.range_comp, ← Set.range_comp]
    rfl

  obtain ⟨ε₀, hε₀⟩ := wcpa_dj_glt_cc_adic_congr D (Localization.AtPrime P) Φ
  obtain ⟨Ψ₁, -, hΨ₁⟩ := wcpa_dj_rtsxc_ct_tensor_chart O
    (AdicCompletion (IsLocalRing.maximalIdeal O) O) r f i
  obtain ⟨𝔓, h𝔓, θ, hN𝔓, hθ⟩ := wcpa_dj_rtsxc_ct_hat_chart O (wcpaDjChartAlg O f i) P hP _ Ψ₁ hΨ₁
  haveI := h𝔓
  obtain ⟨𝔓₂, h𝔓₂, Λ₁, hΛ₁⟩ := wcpa_dj_rtsxc_ct_chart_congr
    (AdicCompletion (IsLocalRing.maximalIdeal O) O) R e r
    (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i 𝔓
  haveI := h𝔓₂
  obtain ⟨ε₁, hε₁⟩ := wcpa_dj_glt_cc_adic_congr (Localization.AtPrime 𝔓) (Localization.AtPrime 𝔓₂) Λ₁
  obtain ⟨j, 𝔔, h𝔔, Λ₂, hΛ₂, w, hw⟩ := wcpa_dj_rtsxc_ct_regen R r
    (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i m G
    hai hG hspan' 𝔓₂
  haveI := h𝔔
  obtain ⟨ε₂, hε₂⟩ := wcpa_dj_glt_cc_adic_congr (Localization.AtPrime 𝔓₂) (Localization.AtPrime 𝔔) Λ₂
  haveI hBnoeth : IsNoetherianRing (Localization.AtPrime 𝔔) := k6 R m G j 𝔔

  have hε₀' := fun x => RingHom.congr_fun hε₀ x
  have hε₁' := fun x => RingHom.congr_fun hε₁ x
  have hε₂' := fun x => RingHom.congr_fun hε₂ x
  have hθ' := fun a => RingHom.congr_fun hθ a
  simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
    at hε₀' hε₁' hε₂' hθ'
  refine ⟨j, 𝔔, h𝔔, ?_, fin (Localization.AtPrime 𝔔)
    ((algebraMap (wcpaDjChartAlg R G j) (Localization.AtPrime 𝔔)).comp
      (algebraMap R (wcpaDjChartAlg R G j))) _ (ε₀.trans (θ.trans (ε₁.trans ε₂))) ?_ ⟨w, hw⟩⟩
  ·
    intro c
    obtain ⟨t, rfl⟩ := e.surjective c
    rw [← IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime 𝔔) 𝔔,
      IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, ← hΛ₂, MulEquiv.isUnit_map, ← hΛ₁,
      MulEquiv.isUnit_map, IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime 𝔓) 𝔓,
      Ideal.mem_primeCompl_iff, not_not, hN𝔓, MulEquiv.isUnit_map]
  ·
    intro a
    rw [RingEquiv.trans_apply, RingEquiv.trans_apply, RingEquiv.trans_apply, hε₀', hΦ a, hθ',
      hε₁', hΛ₁, hε₂', hΛ₂]
    rfl

theorem wcpa_dj_rtsxc_p1_present (P C : Type u) [CommRing P] [CommRing C] (ψ : P →+* C)
    (hψ : Function.Surjective ψ) (I : Ideal P) (hI : I ≤ RingHom.ker ψ) (g : P)
    (hsat : ∀ p, ψ p = 0 → ∃ k : ℕ, g ^ k * p ∈ I)
    (𝔔 : Ideal C) [𝔔.IsPrime]
    (L : Type u) [CommRing L] [Algebra P L] [IsLocalization.AtPrime L (𝔔.comap ψ)]
    (hg : Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L g) ∈
      nonZeroDivisors (L ⧸ I.map (algebraMap P L))) :
    ∃ Θ : Localization.AtPrime 𝔔 ≃+* L ⧸ I.map (algebraMap P L),
      ∀ p, Θ (algebraMap C (Localization.AtPrime 𝔔) (ψ p)) =
        Ideal.Quotient.mk _ (algebraMap P L p) :=
by
  classical

  have s1 : ∀ p, ψ p = 0 →
      Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L p) = 0 := by
    intro p hp
    obtain ⟨k, hk⟩ := hsat p hp
    have h1 : Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L (g ^ k * p)) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_map_of_mem _ hk)
    rw [map_mul, map_pow, map_mul, map_pow] at h1
    have hk' := Submonoid.pow_mem _ hg k
    exact (mem_nonZeroDivisors_iff.mp hk').1 _ h1

  have H : ∀ a ∈ RingHom.ker ψ,
      ((Ideal.Quotient.mk (I.map (algebraMap P L))).comp (algebraMap P L)) a = 0 :=
    fun a ha => s1 a (RingHom.mem_ker.mp ha)
  let θ₀ : C →+* L ⧸ I.map (algebraMap P L) :=
    (Ideal.Quotient.lift (RingHom.ker ψ)
      ((Ideal.Quotient.mk (I.map (algebraMap P L))).comp (algebraMap P L)) H).comp
      (RingHom.quotientKerEquivOfSurjective hψ).symm.toRingHom
  have hθ₀ : ∀ p, θ₀ (ψ p) = Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L p) := by
    intro p
    have e : (RingHom.quotientKerEquivOfSurjective hψ).symm (ψ p) =
        Ideal.Quotient.mk (RingHom.ker ψ) p := by
      rw [RingEquiv.symm_apply_eq]; rfl
    show Ideal.Quotient.lift _ _ H ((RingHom.quotientKerEquivOfSurjective hψ).symm (ψ p)) = _
    rw [e, Ideal.Quotient.lift_mk]; rfl

  have hunit : ∀ y : 𝔔.primeCompl, IsUnit (θ₀ y) := by
    intro y
    obtain ⟨p, hp⟩ := hψ y.1
    have hp' : p ∈ (𝔔.comap ψ).primeCompl := by
      show p ∉ 𝔔.comap ψ
      rw [Ideal.mem_comap, hp]; exact y.2
    rw [← hp, hθ₀]
    exact (IsLocalization.map_units L (⟨p, hp'⟩ : (𝔔.comap ψ).primeCompl)).map _
  let Θ₀ : Localization.AtPrime 𝔔 →+* L ⧸ I.map (algebraMap P L) :=
    IsLocalization.lift (M := 𝔔.primeCompl) hunit
  have hΘ₀ : ∀ p, Θ₀ (algebraMap C (Localization.AtPrime 𝔔) (ψ p)) =
      Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L p) := by
    intro p
    show IsLocalization.lift (M := 𝔔.primeCompl) hunit _ = _
    rw [IsLocalization.lift_eq]; exact hθ₀ p

  have hunit2 : ∀ s : (𝔔.comap ψ).primeCompl,
      IsUnit (((algebraMap C (Localization.AtPrime 𝔔)).comp ψ) s) := by
    intro s
    have hs : ψ s.1 ∈ 𝔔.primeCompl := s.2
    exact IsLocalization.map_units (Localization.AtPrime 𝔔) (⟨ψ s.1, hs⟩ : 𝔔.primeCompl)
  let α : L →+* Localization.AtPrime 𝔔 :=
    IsLocalization.lift (M := (𝔔.comap ψ).primeCompl) hunit2
  have hα : ∀ p, α (algebraMap P L p) = algebraMap C (Localization.AtPrime 𝔔) (ψ p) := by
    intro p
    show IsLocalization.lift (M := (𝔔.comap ψ).primeCompl) hunit2 _ = _
    rw [IsLocalization.lift_eq]; rfl

  have hJα : I.map (algebraMap P L) ≤ RingHom.ker α := by
    rw [Ideal.map_le_iff_le_comap]
    intro p hp
    rw [Ideal.mem_comap, RingHom.mem_ker, hα, RingHom.mem_ker.mp (hI hp), map_zero]
  let Φ : L ⧸ I.map (algebraMap P L) →+* Localization.AtPrime 𝔔 :=
    Ideal.Quotient.lift (I.map (algebraMap P L)) α (fun a ha => RingHom.mem_ker.mp (hJα ha))
  have hΦ : ∀ p, Φ (Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L p)) =
      algebraMap C (Localization.AtPrime 𝔔) (ψ p) := by
    intro p
    show Ideal.Quotient.lift _ α _ _ = _
    rw [Ideal.Quotient.lift_mk]; exact hα p

  have h6 : Φ.comp Θ₀ = RingHom.id _ := by
    apply IsLocalization.ringHom_ext 𝔔.primeCompl
    refine RingHom.ext fun c => ?_
    obtain ⟨p, rfl⟩ := hψ c
    show Φ (Θ₀ (algebraMap C (Localization.AtPrime 𝔔) (ψ p))) =
      algebraMap C (Localization.AtPrime 𝔔) (ψ p)
    rw [hΘ₀, hΦ]

  have h7 : Θ₀.comp Φ = RingHom.id _ := by
    apply Ideal.Quotient.ringHom_ext
    apply IsLocalization.ringHom_ext (𝔔.comap ψ).primeCompl
    refine RingHom.ext fun p => ?_
    show Θ₀ (Φ (Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L p))) =
      Ideal.Quotient.mk (I.map (algebraMap P L)) (algebraMap P L p)
    rw [hΦ, hΘ₀]

  exact ⟨RingEquiv.ofRingHom Θ₀ Φ h7 h6, fun p => hΘ₀ p⟩

theorem wcpa_dj_rtsxc_p1_axis_local (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (a c : A) (σ : Fin n → A) (l : Fin n) (H : Polynomial A)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({a, c} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (Q : Ideal (Polynomial A)) [Q.IsPrime]
    (hQ : Q.comap Polynomial.C = IsLocalRing.maximalIdeal A) :
    ∃ (e : ℕ) (w : Fin e → Localization.AtPrime Q),
      IsDomain (Localization.AtPrime Q ⧸ (Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
        Polynomial.C c - Polynomial.C a * H}).map (algebraMap (Polynomial A) (Localization.AtPrime Q))) ∧
      ringKrullDim (Localization.AtPrime Q ⧸ (Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
        Polynomial.C c - Polynomial.C a * H}).map (algebraMap (Polynomial A) (Localization.AtPrime Q))) =
        ((n + e : ℕ) : WithBot ℕ∞) ∧
      Ideal.span (Set.range (fun i => Ideal.Quotient.mk ((Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
          Polynomial.C c - Polynomial.C a * H}).map (algebraMap (Polynomial A) (Localization.AtPrime Q)))
          (Fin.append (Function.update (fun m => algebraMap (Polynomial A) (Localization.AtPrime Q)
            (Polynomial.C (σ m))) l (algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C a))) w i))) =
        Ideal.map (Ideal.Quotient.mk ((Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
          Polynomial.C c - Polynomial.C a * H}).map (algebraMap (Polynomial A) (Localization.AtPrime Q))))
          (IsLocalRing.maximalIdeal (Localization.AtPrime Q)) ∧
      Ideal.Quotient.mk ((Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
          Polynomial.C c - Polynomial.C a * H}).map (algebraMap (Polynomial A) (Localization.AtPrime Q)))
        (algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C a)) ≠ 0 ∧
      (Polynomial.X ∈ Q → e = 1 ∧
        ∀ i, w i = algebraMap (Polynomial A) (Localization.AtPrime Q) Polynomial.X) ∧
      (Polynomial.X ∉ Q → IsUnit (Ideal.Quotient.mk ((Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
          Polynomial.C c - Polynomial.C a * H}).map (algebraMap (Polynomial A) (Localization.AtPrime Q)))
        (algebraMap (Polynomial A) (Localization.AtPrime Q) Polynomial.X))) :=
by
  classical
  have regdom : ∀ (R : Type u) [CommRing R], IsRegularLocalRing R → IsDomain R :=
    fun R _ h => wcpa_regular_isDomain R wcpa_rs_quotient_regular h
  have squeeze : ∀ (L : Type u) [CommRing L] [IsLocalRing L] [IsNoetherianRing L]
      (d k : ℕ) (hdim : ((d + k : ℕ) : WithBot ℕ∞) = ringKrullDim L)
      (s : Fin k → L) (hs : ∀ i, s i ∈ IsLocalRing.maximalIdeal L)
      (J : Ideal L) (hJ : Ideal.span (Set.range s) = J) (g : Fin d → L)
      (hg : Ideal.span (Set.range (fun i => Ideal.Quotient.mk J (g i))) =
        Ideal.map (Ideal.Quotient.mk J) (IsLocalRing.maximalIdeal L)),
      IsDomain (L ⧸ J) ∧ ringKrullDim (L ⧸ J) = (d : WithBot ℕ∞) ∧
        ∀ i, Ideal.Quotient.mk J (g i) ≠ 0 := by
    intro L _ _ _ d k hdim s hs J hJ g hg
    have hJle : J ≤ IsLocalRing.maximalIdeal L := by
      rw [← hJ, Ideal.span_le]; rintro _ ⟨i, rfl⟩; exact hs i
    have hJne : J ≠ ⊤ := fun h =>
      (IsLocalRing.maximalIdeal.isMaximal L).ne_top (top_le_iff.mp (h ▸ hJle))
    haveI : Nontrivial (L ⧸ J) := Ideal.Quotient.nontrivial_iff.mpr hJne
    haveI : IsLocalRing (L ⧸ J) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk J) Ideal.Quotient.mk_surjective
    have hmE : Ideal.map (Ideal.Quotient.mk J) (IsLocalRing.maximalIdeal L) =
        IsLocalRing.maximalIdeal (L ⧸ J) := by
      rcases Ideal.map_eq_top_or_isMaximal_of_surjective (Ideal.Quotient.mk J)
        Ideal.Quotient.mk_surjective (IsLocalRing.maximalIdeal.isMaximal L) with h | h
      · exfalso
        have h1 : (1 : L ⧸ J) ∈ Ideal.map (Ideal.Quotient.mk J) (IsLocalRing.maximalIdeal L) :=
          h ▸ Submodule.mem_top
        obtain ⟨x, hx, hx1⟩ :=
          (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).mp h1
        rw [← map_one (Ideal.Quotient.mk J), Ideal.Quotient.eq] at hx1
        have h2 : x - (x - 1) ∈ IsLocalRing.maximalIdeal L := Ideal.sub_mem _ hx (hJle hx1)
        rw [sub_sub_cancel] at h2
        exact (IsLocalRing.maximalIdeal.isMaximal L).ne_top ((Ideal.eq_top_iff_one _).mpr h2)
      · exact IsLocalRing.eq_maximalIdeal h
    have hspanE : Ideal.span (Set.range (fun i => Ideal.Quotient.mk J (g i))) =
        IsLocalRing.maximalIdeal (L ⧸ J) := hg.trans hmE
    obtain ⟨r, hr⟩ : ∃ r, r = (IsLocalRing.maximalIdeal (L ⧸ J)).spanFinrank := ⟨_, rfl⟩
    have hrle : r ≤ (Set.range (fun i => Ideal.Quotient.mk J (g i))).ncard := by
      rw [hr, ← hspanE]; exact Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range _)
    have hncard : (Set.range (fun i => Ideal.Quotient.mk J (g i))).ncard ≤ d := by
      have : Set.range (fun i => Ideal.Quotient.mk J (g i)) =
          ↑(Finset.univ.image (fun i => Ideal.Quotient.mk J (g i))) := by simp
      rw [this, Set.ncard_coe_finset]; exact Finset.card_image_le.trans (by simp)
    have hmEne : IsLocalRing.maximalIdeal (L ⧸ J) ≠ ⊤ :=
      (IsLocalRing.maximalIdeal.isMaximal _).ne_top
    have hht : (IsLocalRing.maximalIdeal (L ⧸ J)).height ≤ (r : ℕ∞) := by
      rw [hr]; exact Ideal.height_le_spanFinrank _ hmEne
    obtain ⟨m, hm⟩ :=
      ENat.ne_top_iff_exists.mp (ne_top_of_le_ne_top (ENat.natCast_ne_top r) hht)
    have hdimE : ringKrullDim (L ⧸ J) = ((m : ℕ∞) : WithBot ℕ∞) := by
      rw [← IsLocalRing.maximalIdeal_height_eq_ringKrullDim, ← hm]
    have hmr : m ≤ r := by rw [← hm] at hht; exact_mod_cast hht
    have hScoe : (↑(Finset.univ.image s) : Set L) = Set.range s := by simp
    have hSJ : Ideal.span (↑(Finset.univ.image s) : Set L) = J := by rw [hScoe, hJ]
    have hScard : (Finset.univ.image s).card ≤ k := Finset.card_image_le.trans (by simp)
    have hSjac : (↑(Finset.univ.image s) : Set L) ⊆ ↑(Ring.jacobson L) := by
      rw [IsLocalRing.ringJacobson_eq_maximalIdeal, hScoe]; rintro _ ⟨i, rfl⟩; exact hs i
    have hK := ringKrullDim_le_ringKrullDim_quotient_add_card _ hSjac
    rw [hSJ, ← hdim, hdimE] at hK
    have hK' : d + k ≤ m + (Finset.univ.image s).card := by exact_mod_cast hK
    have hmd : m = d := by omega
    have hrd : r = d := by omega
    refine ⟨?_, by rw [hdimE, hmd]; rfl, ?_⟩
    · have hreg : IsRegularLocalRing (L ⧸ J) := by
        rw [isRegularLocalRing_iff, hdimE, ← hr, hmd, hrd]; rfl
      exact regdom _ hreg
    · intro i₀ h0
      have h0' : (0 : L ⧸ J) ∈ Set.range (fun i => Ideal.Quotient.mk J (g i)) := ⟨i₀, h0⟩
      have hsp : Ideal.span (Set.range (fun i => Ideal.Quotient.mk J (g i)) \ {0}) =
          IsLocalRing.maximalIdeal (L ⧸ J) := by
        rw [← hspanE]; exact Submodule.span_sdiff_singleton_zero
      have h1 : r ≤ (Set.range (fun i => Ideal.Quotient.mk J (g i)) \ {0}).ncard := by
        rw [hr, ← hsp]
        exact Submodule.spanFinrank_span_le_ncard_of_finite
          ((Set.finite_range _).subset Set.sdiff_subset)
      rw [Set.ncard_sdiff_singleton_of_mem h0'] at h1
      have := i₀.pos
      omega
  have gen_swap : ∀ (S : Type u) [CommRing S] (n e : ℕ) (J M : Ideal S)
      (a c x h : S) (σ : Fin n → S) (l : Fin n) (w : Fin e → S)
      (hσ : σ l - a * x ∈ J) (hc : c - a * h ∈ J)
      (hM : Ideal.span (Set.range (Fin.append
        (Fin.cons a (Fin.cons c σ : Fin (n + 1) → S) : Fin (n + 2) → S) w)) = M),
      Ideal.span (Set.range (fun i => Ideal.Quotient.mk J
        (Fin.append (Function.update σ l a) w i))) = Ideal.map (Ideal.Quotient.mk J) M := by
    intro S _ n e J M a c x h σ l w hσ hc hM
    have hgen : ∀ i, Ideal.Quotient.mk J (Fin.append (Function.update σ l a) w i) ∈
        Ideal.span (Set.range (fun i => Ideal.Quotient.mk J
          (Fin.append (Function.update σ l a) w i))) :=
      fun i => Ideal.subset_span ⟨i, rfl⟩
    have ha := hgen (Fin.castAdd e l)
    rw [Fin.append_left, Function.update_self] at ha
    have hσm : ∀ m, m ≠ l → Ideal.Quotient.mk J (σ m) ∈
        Ideal.span (Set.range (fun i => Ideal.Quotient.mk J
          (Fin.append (Function.update σ l a) w i))) := by
      intro m hm; have := hgen (Fin.castAdd e m)
      rwa [Fin.append_left, Function.update_of_ne hm] at this
    have hw : ∀ j, Ideal.Quotient.mk J (w j) ∈
        Ideal.span (Set.range (fun i => Ideal.Quotient.mk J
          (Fin.append (Function.update σ l a) w i))) := by
      intro j; have := hgen (Fin.natAdd n j); rwa [Fin.append_right] at this
    have hqc : Ideal.Quotient.mk J c = Ideal.Quotient.mk J h * Ideal.Quotient.mk J a := by
      have : Ideal.Quotient.mk J (c - a * h) = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr hc
      rw [map_sub, map_mul, sub_eq_zero] at this; rw [this, mul_comm]
    have hqσ : Ideal.Quotient.mk J (σ l) = Ideal.Quotient.mk J x * Ideal.Quotient.mk J a := by
      have : Ideal.Quotient.mk J (σ l - a * x) = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr hσ
      rw [map_sub, map_mul, sub_eq_zero] at this; rw [this, mul_comm]
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      apply Ideal.mem_map_of_mem
      rw [← hM]
      apply Ideal.subset_span
      refine Fin.addCases (fun m => ?_) (fun j => ?_) i
      · by_cases hm : m = l
        · subst hm
          exact ⟨Fin.castAdd e 0, by
            rw [Fin.append_left, Fin.append_left, Function.update_self]; rfl⟩
        · exact ⟨Fin.castAdd e m.succ.succ, by
            rw [Fin.append_left, Fin.append_left, Function.update_of_ne hm, Fin.cons_succ,
              Fin.cons_succ]⟩
      · exact ⟨Fin.natAdd (n + 2) j, by rw [Fin.append_right, Fin.append_right]⟩
    · rw [← hM, Ideal.map_span, Ideal.span_le]
      rintro _ ⟨_, ⟨i, rfl⟩, rfl⟩
      refine Fin.addCases (fun m => ?_) (fun j => ?_) i
      · rw [Fin.append_left]
        refine Fin.cases ?_ (fun m' => Fin.cases ?_ (fun m'' => ?_) m') m
        · rw [Fin.cons_zero]; exact ha
        · rw [Fin.cons_succ, Fin.cons_zero, hqc]; exact Ideal.mul_mem_left _ _ ha
        · rw [Fin.cons_succ, Fin.cons_succ]
          by_cases hm : m'' = l
          · subst hm; rw [hqσ]; exact Ideal.mul_mem_left _ _ ha
          · exact hσm m'' hm
      · rw [Fin.append_right]; exact hw j
  have params : ∀ (R : Type u) [CommRing R] [IsLocalRing R] [IsNoetherianRing R]
      (N : ℕ) (t : Fin N → R) (hdim : (N : WithBot ℕ∞) = ringKrullDim R)
      (hspan : Ideal.span (Set.range t) = IsLocalRing.maximalIdeal R)
      (Q : Ideal (Polynomial R)) [Q.IsPrime]
      (hQ : Q.comap Polynomial.C = IsLocalRing.maximalIdeal R),
      ∃ (e : ℕ) (w : Fin e → Localization.AtPrime Q),
        (Polynomial.X ∈ Q → e = 1 ∧
          ∀ i, w i = algebraMap (Polynomial R) (Localization.AtPrime Q) Polynomial.X) ∧
        Ideal.span (Set.range (Fin.append
          (fun i => algebraMap (Polynomial R) (Localization.AtPrime Q) (Polynomial.C (t i))) w)) =
          IsLocalRing.maximalIdeal (Localization.AtPrime Q) ∧
        ((N + e : ℕ) : WithBot ℕ∞) = ringKrullDim (Localization.AtPrime Q) := by
    intro R _ _ _ N t hdim hspan Q _ hQ
    obtain ⟨e₀, f₀, he₀, he0, hsp0, hd0⟩ :=
      wcpa_dj_sp_poly_prime_params R N t hdim hspan Q hQ
    by_cases hX : Polynomial.X ∈ Q
    · have he1 : e₀ = 1 := by
        rcases Nat.lt_or_ge e₀ 1 with h | h
        · exfalso
          have hQ' := he0 (by omega)
          rw [hQ'] at hX
          have := Ideal.mem_map_C_iff.mp hX 1
          rw [Polynomial.coeff_X_one] at this
          exact (IsLocalRing.maximalIdeal.isMaximal R).ne_top ((Ideal.eq_top_iff_one _).mpr this)
        · omega
      refine ⟨1, fun _ => algebraMap (Polynomial R) (Localization.AtPrime Q) Polynomial.X,
        fun _ => ⟨rfl, fun _ => rfl⟩, ?_, by rw [← hd0, he1]⟩
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        refine Fin.addCases (fun m => ?_) (fun j => ?_) i
        · rw [Fin.append_left, SetLike.mem_coe,
            IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q,
            ← Ideal.mem_comap, hQ, ← hspan]
          exact Ideal.subset_span ⟨m, rfl⟩
        · rw [Fin.append_right, SetLike.mem_coe,
            IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q]
          exact hX
      · rw [← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_le_iff_le_comap]
        intro p hp
        rw [Ideal.mem_comap, ← Polynomial.X_mul_divX_add p, map_add, map_mul]
        apply Ideal.add_mem
        · apply Ideal.mul_mem_right
          apply Ideal.subset_span
          exact ⟨Fin.natAdd N 0, by rw [Fin.append_right]⟩
        · have hc0 : p.coeff 0 ∈ IsLocalRing.maximalIdeal R := by
            rw [← hQ, Ideal.mem_comap]
            have : Polynomial.C (p.coeff 0) = p - Polynomial.X * p.divX := by
              rw [eq_sub_iff_add_eq, add_comm]; exact Polynomial.X_mul_divX_add p
            rw [this]; exact Q.sub_mem hp (Q.mul_mem_right _ hX)
          rw [← hspan] at hc0
          have hle : Ideal.map ((algebraMap (Polynomial R) (Localization.AtPrime Q)).comp
              Polynomial.C) (Ideal.span (Set.range t)) ≤
              Ideal.span (Set.range (Fin.append
                (fun i => algebraMap (Polynomial R) (Localization.AtPrime Q) (Polynomial.C (t i)))
                (fun _ : Fin 1 =>
                  algebraMap (Polynomial R) (Localization.AtPrime Q) Polynomial.X))) := by
            rw [Ideal.map_span, Ideal.span_le]
            rintro _ ⟨_, ⟨m, rfl⟩, rfl⟩
            exact Ideal.subset_span ⟨Fin.castAdd 1 m, by rw [Fin.append_left]; rfl⟩
          exact hle (Ideal.mem_map_of_mem _ hc0)
    · exact ⟨e₀, fun j => algebraMap (Polynomial R) (Localization.AtPrime Q) (f₀ j),
        fun h => absurd h hX, hsp0, hd0⟩

  have hm : ∀ r ∈ ({a, c} ∪ Set.range σ : Set A), r ∈ IsLocalRing.maximalIdeal A := by
    intro r hr; rw [← hmax]; exact Ideal.subset_span hr
  have hCQ : ∀ r ∈ IsLocalRing.maximalIdeal A, Polynomial.C r ∈ Q := by
    intro r hr; rw [← hQ] at hr; exact hr
  have haQ : Polynomial.C a ∈ Q := hCQ a (hm a (by simp))
  have hcQ : Polynomial.C c ∈ Q := hCQ c (hm c (by simp))
  have hσQ : Polynomial.C (σ l) ∈ Q := hCQ (σ l) (hm (σ l) (by simp))
  have hp1 : Polynomial.C (σ l) - Polynomial.C a * Polynomial.X ∈ Q :=
    Q.sub_mem hσQ (Q.mul_mem_right _ haQ)
  have hp2 : Polynomial.C c - Polynomial.C a * H ∈ Q :=
    Q.sub_mem hcQ (Q.mul_mem_right _ haQ)
  have htspan : Ideal.span (Set.range
      (Fin.cons a (Fin.cons c σ : Fin (n + 1) → A) : Fin (n + 2) → A)) =
      IsLocalRing.maximalIdeal A := by
    rw [Fin.range_cons, Fin.range_cons, ← hmax, Set.insert_union, Set.singleton_union]
  obtain ⟨e, w, hXw, hspL, hdL⟩ := params A (n + 2)
    (Fin.cons a (Fin.cons c σ : Fin (n + 1) → A) : Fin (n + 2) → A) hdim htspan Q hQ
  have hfun : (fun i => algebraMap (Polynomial A) (Localization.AtPrime Q)
      (Polynomial.C ((Fin.cons a (Fin.cons c σ : Fin (n + 1) → A) : Fin (n + 2) → A) i))) =
      (Fin.cons (algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C a))
        (Fin.cons (algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C c))
          (fun m => algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C (σ m))) :
          Fin (n + 1) → Localization.AtPrime Q) : Fin (n + 2) → Localization.AtPrime Q) := by
    funext i
    refine Fin.cases ?_ (fun j => Fin.cases ?_ (fun k => ?_) j) i <;> simp
  rw [hfun] at hspL
  have hJmem : ∀ p ∈ ({Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
      Polynomial.C c - Polynomial.C a * H} : Set (Polynomial A)),
      algebraMap (Polynomial A) (Localization.AtPrime Q) p ∈
        (Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
          Polynomial.C c - Polynomial.C a * H}).map
          (algebraMap (Polynomial A) (Localization.AtPrime Q)) :=
    fun p hp => Ideal.mem_map_of_mem _ (Ideal.subset_span hp)
  have hrel1 := hJmem (Polynomial.C (σ l) - Polynomial.C a * Polynomial.X) (by simp)
  have hrel2 := hJmem (Polynomial.C c - Polynomial.C a * H) (by simp)
  rw [map_sub, map_mul] at hrel1 hrel2
  have hg := gen_swap (Localization.AtPrime Q) n e _ _ _ _ _ _
    (fun m => algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C (σ m))) l w
    hrel1 hrel2 hspL
  have hdim' : ((n + e + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim (Localization.AtPrime Q) := by
    rw [show n + e + 2 = n + 2 + e by omega]; exact hdL
  obtain ⟨hdom, hdimE, hne⟩ := squeeze (Localization.AtPrime Q) (n + e) 2 hdim'
    ![algebraMap (Polynomial A) (Localization.AtPrime Q)
        (Polynomial.C (σ l) - Polynomial.C a * Polynomial.X),
      algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C c - Polynomial.C a * H)]
    (by
      refine Fin.forall_fin_two.mpr ⟨?_, ?_⟩
      · exact (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q _).mpr hp1
      · exact (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q _).mpr hp2)
    _ (by rw [Ideal.map_span, Set.image_pair, Matrix.range_cons_cons_empty]) _ hg
  refine ⟨e, w, hdom, hdimE, hg, ?_, hXw, ?_⟩
  · have := hne (Fin.castAdd e l)
    rwa [Fin.append_left, Function.update_self] at this
  · intro hXQ
    exact ((IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime Q) Q _).mpr hXQ).map _

theorem wcpa_dj_rtsxc_p1n_chart_surj (R : Type u) [CommRing R] (r : ℕ) (f : Fin (r + 1) → R)
    (i : Fin (r + 1)) (P : Type u) [CommRing P] (ψ : P →+* wcpaDjChartAlg R f i)
    (hR : ∀ a : R, ∃ p, ψ p = algebraMap R (wcpaDjChartAlg R f i) a)
    (hgen : ∀ k, ∃ p, ψ p = wcpaDjChartGen R f i k) :
    Function.Surjective ψ :=
by
  intro z
  obtain ⟨z₀, hz⟩ := z
  refine Algebra.adjoin_induction
    (p := fun w hw => ∃ q, ψ q = (⟨w, hw⟩ : wcpaDjChartAlg R f i)) ?_ ?_ ?_ ?_ hz
  · intro w hw
    obtain ⟨k, rfl⟩ := hw
    obtain ⟨q, hq⟩ := hgen k
    exact ⟨q, hq.trans (Subtype.ext rfl)⟩
  · intro a
    obtain ⟨q, hq⟩ := hR a
    exact ⟨q, hq.trans (Subtype.ext rfl)⟩
  · intro w₁ w₂ h₁ h₂ ih₁ ih₂
    obtain ⟨q₁, e₁⟩ := ih₁
    obtain ⟨q₂, e₂⟩ := ih₂
    exact ⟨q₁ + q₂, by rw [map_add, e₁, e₂]; rfl⟩
  · intro w₁ w₂ h₁ h₂ ih₁ ih₂
    obtain ⟨q₁, e₁⟩ := ih₁
    obtain ⟨q₂, e₂⟩ := ih₂
    exact ⟨q₁ * q₂, by rw [map_mul, e₁, e₂]; rfl⟩

theorem wcpa_dj_rtsxc_p1_axis_chart (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hb : 2 ≤ b l) (j : Fin (2 + 1)) (a c : A)
    (hac : (j = 0 ∧ a = x ∧ c = y) ∨ (j = 1 ∧ a = y ∧ c = x)) :
    Function.Surjective (Polynomial.eval₂RingHom
        ((algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)).comp
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j 2)) ∧
    Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
        Polynomial.C c - Polynomial.C a * (Polynomial.C (v * a ^ (b l - 2) *
          ∏ m ∈ Finset.univ.erase l, σ m ^ b m) * Polynomial.X ^ (b l))} ≤
      RingHom.ker (Polynomial.eval₂RingHom
        ((algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)).comp
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j 2)) ∧
    ∀ p, Polynomial.eval₂RingHom
        ((algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)).comp
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j 2) p = 0 →
      ∃ k : ℕ, Polynomial.C a ^ k * p ∈ Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
        Polynomial.C c - Polynomial.C a * (Polynomial.C (v * a ^ (b l - 2) *
          ∏ m ∈ Finset.univ.erase l, σ m ^ b m) * Polynomial.X ^ (b l))} :=
by
  classical
  have hfacts : ∀ (R : Type u) [CommRing R] {r : ℕ} (f : Fin (r + 1) → R) (i : Fin (r + 1)),
      (∀ k, wcpaDjChartGen R f i k * algebraMap R (wcpaDjChartAlg R f i) (f i) =
        algebraMap R (wcpaDjChartAlg R f i) (f k)) ∧
      (∀ w : wcpaDjChartAlg R f i, w * algebraMap R (wcpaDjChartAlg R f i) (f i) = 0 → w = 0) ∧
      (f i ∈ nonZeroDivisors R → ∀ a : R, algebraMap R (wcpaDjChartAlg R f i) a = 0 → a = 0) := by
    intro R _ r f i
    refine ⟨fun k => ?_, fun w hw => ?_, fun hnzd a ha => ?_⟩
    · apply Subtype.ext
      show IsLocalization.mk' (Localization.Away (f i)) (f k)
          (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) *
          algebraMap R (Localization.Away (f i)) (f i) =
        algebraMap R (Localization.Away (f i)) (f k)
      exact IsLocalization.mk'_spec _ _ _
    · have h1 : (w : Localization.Away (f i)) * algebraMap R (Localization.Away (f i)) (f i) = 0 :=
        congrArg Subtype.val hw
      apply Subtype.ext
      show (w : Localization.Away (f i)) = 0
      exact (IsLocalization.Away.algebraMap_isUnit (f i)).mul_left_eq_zero.mp h1
    · have h1 : algebraMap R (Localization.Away (f i)) a = 0 := congrArg Subtype.val ha
      have hinj := IsLocalization.injective (Localization.Away (f i)) (M := Submonoid.powers (f i))
        (Submonoid.powers_le.mpr hnzd)
      exact hinj (h1.trans (map_zero _).symm)
  obtain ⟨hrel, hcancel, hinj⟩ := hfacts (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j
  have hnzdall := wcpa_dj_rtsxc_model_nzd A n x y v σ b hv hdim hmax

  have hcase : wcpaDjP1Gen A x y v σ b l j =
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a ∧
      x * y = a * c ∧
      wcpaDjP1Gen A x y v σ b l j ∈ nonZeroDivisors (wcpaDjP1Ring A x y v σ b) ∧
      ∀ k : Fin (2 + 1), wcpaDjP1Gen A x y v σ b l k =
          Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a ∨
        wcpaDjP1Gen A x y v σ b l k =
          Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) c ∨ k = 2 := by
    rcases hac with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩
    · refine ⟨rfl, rfl, hnzdall.1, fun k => ?_⟩
      fin_cases k
      · exact Or.inl rfl
      · exact Or.inr (Or.inl rfl)
      · exact Or.inr (Or.inr rfl)
    · refine ⟨rfl, mul_comm _ _, hnzdall.2.1, fun k => ?_⟩
      fin_cases k
      · exact Or.inr (Or.inl rfl)
      · exact Or.inl rfl
      · exact Or.inr (Or.inr rfl)
  obtain ⟨hGa, hxy, hnzd, hGk⟩ := hcase
  set mk := Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) with hmk
  set lam := algebraMap (wcpaDjP1Ring A x y v σ b)
    (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) with hlam
  set gen := wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j with hgen
  set ψ := Polynomial.eval₂RingHom (lam.comp mk) (gen 2) with hψ
  set R0 := ∏ m ∈ Finset.univ.erase l, σ m ^ b m with hR0
  set H := Polynomial.C (v * a ^ (b l - 2) * R0) * Polynomial.X ^ (b l) with hHdef

  have hψC : ∀ r : A, ψ (Polynomial.C r) = lam (mk r) := by
    intro r
    rw [hψ]
    show Polynomial.eval₂ _ _ _ = _
    rw [Polynomial.eval₂_C]
    rfl
  have hψX : ψ Polynomial.X = gen 2 := by
    rw [hψ]
    show Polynomial.eval₂ _ _ _ = _
    rw [Polynomial.eval₂_X]
  have hα : lam (wcpaDjP1Gen A x y v σ b l j) = lam (mk a) := congrArg lam hGa
  have hcan : ∀ w, w * lam (mk a) = 0 → w = 0 := by
    intro w hw
    apply hcancel
    rw [hα]
    exact hw
  have hcanpow : ∀ (m : ℕ) w, w * lam (mk a) ^ m = 0 → w = 0 := by
    intro m
    induction m with
    | zero => intro w hw; simpa using hw
    | succ m ih =>
      intro w hw
      exact ih w (hcan _ (by rw [mul_assoc, ← pow_succ]; exact hw))
  have huniq : ∀ k z, z * lam (mk a) = lam (wcpaDjP1Gen A x y v σ b l k) → z = gen k := by
    intro k z hz
    have h := hrel k
    rw [hα] at h
    exact sub_eq_zero.mp (hcan _ (by rw [sub_mul, hz, h, sub_self]))
  have hSα : gen 2 * lam (mk a) = lam (mk (σ l)) := by
    have h := hrel 2
    rw [hα] at h
    exact h

  obtain ⟨k, hk⟩ : ∃ k, b l = k + 2 := ⟨b l - 2, by omega⟩
  have hk2 : b l - 2 = k := by omega
  have hFA : x * y - v * ∏ m, σ m ^ b m = a * c - v * (σ l ^ b l * R0) := by
    rw [hR0, ← Finset.mul_prod_erase Finset.univ (fun m => σ m ^ b m) (Finset.mem_univ l), hxy]
  have hF0 : mk (x * y - v * ∏ m, σ m ^ b m) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  have hrelc : lam (mk a) * lam (mk c) = lam (mk v) * lam (mk R0) * lam (mk (σ l)) ^ (k + 2) := by
    have h0 : lam (mk (a * c - v * (σ l ^ b l * R0))) = 0 := by
      rw [← hFA, hF0, map_zero]
    simp only [map_sub, map_mul, map_pow] at h0
    rw [hk] at h0
    linear_combination h0

  have hψH : ψ H * lam (mk a) = lam (mk c) := by
    rw [hHdef, map_mul, map_pow, hψC, hψX]
    simp only [map_mul, map_pow]
    rw [hk2, hk]
    have hpow : gen 2 ^ (k + 2) * lam (mk a) ^ (k + 2) = lam (mk (σ l)) ^ (k + 2) := by
      rw [← mul_pow, hSα]
    apply sub_eq_zero.mp
    apply hcanpow (k + 1)
    linear_combination (lam (mk v) * lam (mk R0) * lam (mk a) ^ k) * hpow -
      lam (mk a) ^ k * hrelc

  have hp1 : ψ (Polynomial.C (σ l) - Polynomial.C a * Polynomial.X) = 0 := by
    rw [map_sub, map_mul, hψC, hψC, hψX]
    linear_combination -hSα
  have hp2 : ψ (Polynomial.C c - Polynomial.C a * H) = 0 := by
    rw [map_sub, map_mul, hψC, hψC]
    linear_combination -hψH
  have hT2 : Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
      Polynomial.C c - Polynomial.C a * H} ≤ RingHom.ker ψ := by
    rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl
    · exact RingHom.mem_ker.mpr hp1
    · exact RingHom.mem_ker.mpr hp2

  have hT1 : Function.Surjective ψ := by
    apply wcpa_dj_rtsxc_p1n_chart_surj (wcpaDjP1Ring A x y v σ b) 2 (wcpaDjP1Gen A x y v σ b l) j
      (Polynomial A) ψ
    · intro r'
      obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective r'
      exact ⟨Polynomial.C r, hψC r⟩
    · intro i
      rcases hGk i with h | h | h
      · refine ⟨1, ?_⟩
        rw [map_one]
        exact huniq i 1 (by rw [one_mul, h])
      · exact ⟨H, huniq i _ (by rw [hψH, h])⟩
      · subst h
        exact ⟨Polynomial.X, hψX⟩
  refine ⟨hT1, hT2, ?_⟩

  intro p hp
  have hred : ∀ q : Polynomial A, ∃ (N : ℕ) (r : A), Polynomial.C a ^ N * q - Polynomial.C r ∈
      Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X} := by
    intro q
    induction q using Polynomial.induction_on
    next t => exact ⟨0, t, by simp⟩
    next q₁ q₂ h₁ h₂ =>
      obtain ⟨N₁, r₁, h₁⟩ := h₁
      obtain ⟨N₂, r₂, h₂⟩ := h₂
      refine ⟨N₁ + N₂, a ^ N₂ * r₁ + a ^ N₁ * r₂, ?_⟩
      have e : Polynomial.C a ^ (N₁ + N₂) * (q₁ + q₂) - Polynomial.C (a ^ N₂ * r₁ + a ^ N₁ * r₂) =
          Polynomial.C a ^ N₂ * (Polynomial.C a ^ N₁ * q₁ - Polynomial.C r₁) +
            Polynomial.C a ^ N₁ * (Polynomial.C a ^ N₂ * q₂ - Polynomial.C r₂) := by
        simp only [map_add, map_mul, map_pow]
        ring
      rw [e]
      exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ h₁) (Ideal.mul_mem_left _ _ h₂)
    next n t _ =>
      refine ⟨n + 1, t * σ l ^ (n + 1), ?_⟩
      obtain ⟨d, hd⟩ := sub_dvd_pow_sub_pow (Polynomial.C (σ l)) (Polynomial.C a * Polynomial.X)
        (n + 1)
      rw [Ideal.mem_span_singleton']
      refine ⟨-(Polynomial.C t * d), ?_⟩
      rw [Polynomial.C_mul, Polynomial.C_pow]
      linear_combination (Polynomial.C t) * hd
  obtain ⟨N, r, hNr⟩ := hred p
  have hsub : Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X} ≤
      Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
        Polynomial.C c - Polynomial.C a * H} :=
    Ideal.span_mono (Set.singleton_subset_iff.mpr (Set.mem_insert _ _))
  have h1 : ψ (Polynomial.C a ^ N * p - Polynomial.C r) = 0 :=
    RingHom.mem_ker.mp (hT2 (hsub hNr))
  rw [map_sub, map_mul, hp, mul_zero, zero_sub, neg_eq_zero, hψC] at h1
  have hmkr : mk r = 0 := hinj hnzd _ h1
  obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp (Ideal.Quotient.eq_zero_iff_mem.mp hmkr)
  have hCF : Polynomial.C (x * y - v * ∏ m, σ m ^ b m) ∈
      Ideal.span {Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
        Polynomial.C c - Polynomial.C a * H} := by
    rw [hFA, hHdef, hk, Nat.add_sub_cancel]
    obtain ⟨d, hd⟩ := sub_dvd_pow_sub_pow (Polynomial.C (σ l)) (Polynomial.C a * Polynomial.X)
      (k + 2)
    rw [Ideal.mem_span_pair]
    refine ⟨-(Polynomial.C (v * R0) * d), Polynomial.C a, ?_⟩
    simp only [map_sub, map_mul, map_pow]
    linear_combination (Polynomial.C v * Polynomial.C R0) * hd
  refine ⟨N, ?_⟩
  have e : Polynomial.C a ^ N * p = (Polynomial.C a ^ N * p - Polynomial.C r) +
      Polynomial.C w * Polynomial.C (x * y - v * ∏ m, σ m ^ b m) := by
    rw [← Polynomial.C_mul, hw]
    ring
  rw [e]
  exact Ideal.add_mem _ (hsub hNr) (Ideal.mul_mem_left _ _ hCF)

theorem wcpa_dj_rtsxc_p1_axis (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hb : 2 ≤ b l) (j : Fin (2 + 1)) (hj : j ≠ 2)
    (𝔔 : Ideal (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j))
    [𝔔.IsPrime]
    (h𝔔 : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) c ∈ 𝔔 ↔
        ¬ IsUnit c) :
    wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
      (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)))
        (wcpaDjP1Gen A x y v σ b l j))
      {l} :=
by
  classical

  have generic : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (L : Type u) [CommRing L]
      [IsLocalRing L] (J : Ideal L) (Θ : B ≃+* L ⧸ J) (e : ℕ) (w : Fin e → L)
      (fσ : Fin n → L) (fa fX : L) (τ : Fin n → B) (γ : B),
      ringKrullDim (L ⧸ J) = ((n + e : ℕ) : WithBot ℕ∞) →
      Ideal.span (Set.range (fun i => Ideal.Quotient.mk J
        (Fin.append (Function.update fσ l fa) w i))) =
        Ideal.map (Ideal.Quotient.mk J) (IsLocalRing.maximalIdeal L) →
      Ideal.Quotient.mk J fa ≠ 0 →
      (∀ m, Θ (τ m) = Ideal.Quotient.mk J (fσ m)) →
      Θ γ = Ideal.Quotient.mk J fa →
      fσ l - fa * fX ∈ J →
      ((e = 1 ∧ ∀ i, w i = fX) ∨ IsUnit (Ideal.Quotient.mk J fX)) →
      wcpaDjRtsxcPt B τ γ {l} := by
    intro B _ _ L _ _ J Θ e w fσ fa fX τ γ hdimE hspan hne hτ hγ hl' hcase
    have hl : Ideal.Quotient.mk J (fσ l) = Ideal.Quotient.mk J fa * Ideal.Quotient.mk J fX := by
      rw [← map_mul, Ideal.Quotient.eq]
      exact hl'
    have hJ : J ≠ ⊤ := fun h =>
      hne (Ideal.Quotient.eq_zero_iff_mem.mpr (h ▸ Submodule.mem_top))
    have hJm : J ≤ IsLocalRing.maximalIdeal L := IsLocalRing.le_maximalIdeal hJ
    have hmaxE : (Ideal.map (Ideal.Quotient.mk J) (IsLocalRing.maximalIdeal L)).IsMaximal := by
      rcases Ideal.map_eq_top_or_isMaximal_of_surjective (Ideal.Quotient.mk J)
        Ideal.Quotient.mk_surjective (IsLocalRing.maximalIdeal.isMaximal L) with h | h
      · exfalso
        have h1 := Ideal.comap_map_of_surjective (Ideal.Quotient.mk J)
          Ideal.Quotient.mk_surjective (IsLocalRing.maximalIdeal L)
        rw [h, Ideal.comap_top, ← RingHom.ker_eq_comap_bot, Ideal.mk_ker,
          sup_eq_left.mpr hJm] at h1
        exact (IsLocalRing.maximalIdeal.isMaximal L).ne_top h1.symm
      · exact h
    haveI := hmaxE
    have hmB : Ideal.map Θ.symm (Ideal.map (Ideal.Quotient.mk J) (IsLocalRing.maximalIdeal L)) =
        IsLocalRing.maximalIdeal B :=
      IsLocalRing.eq_maximalIdeal (Ideal.map_isMaximal_of_equiv Θ.symm)
    have hΘs : ∀ m, τ m = Θ.symm (Ideal.Quotient.mk J (fσ m)) := fun m =>
      (Θ.symm_apply_eq.mpr (hτ m).symm).symm
    let s : Fin (n + e) → AdicCompletion (IsLocalRing.maximalIdeal B) B := fun i =>
      algebraMap B _ (Θ.symm (Ideal.Quotient.mk J (Fin.append (Function.update fσ l fa) w i)))
    have hsL : ∀ m, s (Fin.castAdd e m) =
        algebraMap B _ (Θ.symm (Ideal.Quotient.mk J (Function.update fσ l fa m))) := fun m => by
      simp only [s, Fin.append_left]
    have hsR : ∀ i, s (Fin.natAdd n i) =
        algebraMap B _ (Θ.symm (Ideal.Quotient.mk J (w i))) := fun i => by
      simp only [s, Fin.append_right]
    have h1 : Ideal.span (Set.range (fun i => Θ.symm (Ideal.Quotient.mk J
        (Fin.append (Function.update fσ l fa) w i)))) = IsLocalRing.maximalIdeal B := by
      rw [← hmB, ← hspan, Ideal.map_span, ← Set.range_comp]
      rfl
    have hP2 : Ideal.span (Set.range s) =
        Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))
          (IsLocalRing.maximalIdeal B) := by
      have h2 : Ideal.span (Set.range s) =
          Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))
            (Ideal.span (Set.range (fun i => Θ.symm (Ideal.Quotient.mk J
              (Fin.append (Function.update fσ l fa) w i))))) := by
        rw [Ideal.map_span, ← Set.range_comp]
        rfl
      rw [h2]
      exact congrArg (Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))) h1
    have hγ' : algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ =
        s (Fin.castAdd e l) := by
      rw [hsL, Function.update_self, ← hγ, RingEquiv.symm_apply_apply]
    have hne' : ∀ m, m ≠ l →
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ m) =
          s (Fin.castAdd e m) := by
      intro m hm
      rw [hsL, Function.update_of_ne hm, hΘs m]
    have hτl : algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ l) =
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ *
          algebraMap B _ (Θ.symm (Ideal.Quotient.mk J fX)) := by
      rw [hΘs l, hl, map_mul, map_mul, ← hγ, RingEquiv.symm_apply_apply]
    have hlt : ∀ m : Fin n, ∀ i : Fin e, Fin.castAdd e m ≠ Fin.natAdd n i := by
      intro m i h
      have h' := congrArg Fin.val h
      simp only [Fin.val_castAdd, Fin.val_natAdd] at h'
      have := m.isLt
      omega
    have hP1 : ((n + e : ℕ) : WithBot ℕ∞) = ringKrullDim B := by
      rw [ringKrullDim_eq_of_ringEquiv Θ, hdimE]
    rcases hcase with ⟨he, hw⟩ | hu
    · have i0 : Fin e := ⟨0, by omega⟩
      refine ⟨n + e, s, fun m => if m = l then {Fin.natAdd n i0} else {Fin.castAdd e m},
        Fin.castAdd e l, hP1, hP2, ?_, ?_, ?_, ?_, ?_⟩
      · rw [hγ']
      · intro m
        dsimp only
        by_cases h : m = l
        · rw [if_pos h]
          refine ⟨by simp, ?_⟩
          rw [Finset.mem_singleton]
          exact hlt l i0
        · rw [if_neg h]
          refine ⟨by simp, ?_⟩
          rw [Finset.mem_singleton]
          intro h'
          exact h (Fin.castAdd_injective _ _ h').symm
      · intro m m' hmm'
        dsimp only
        by_cases h1 : m = l <;> by_cases h2 : m' = l
        · exact absurd (h1.trans h2.symm) hmm'
        · rw [if_pos h1, if_neg h2, Finset.disjoint_singleton]
          exact (hlt m' i0).symm
        · rw [if_neg h1, if_pos h2, Finset.disjoint_singleton]
          exact hlt m i0
        · rw [if_neg h1, if_neg h2, Finset.disjoint_singleton]
          intro h'
          exact hmm' (Fin.castAdd_injective _ _ h')
      · intro m hm
        rw [Finset.mem_singleton] at hm
        dsimp only
        rw [if_neg hm, Finset.prod_singleton, hne' m hm]
      · intro m hm
        rw [Finset.mem_singleton] at hm
        subst hm
        dsimp only
        rw [if_pos rfl, Finset.prod_singleton, hτl, hsR, hw i0]
    · refine ⟨n + e, s, fun m => if m = l then ∅ else {Fin.castAdd e m},
        Fin.castAdd e l, hP1, hP2, ?_, ?_, ?_, ?_, ?_⟩
      · rw [hγ']
      · intro m
        dsimp only
        by_cases h : m = l
        · rw [if_pos h]
          exact ⟨by simp, by simp⟩
        · rw [if_neg h]
          refine ⟨by simp, ?_⟩
          rw [Finset.mem_singleton]
          intro h'
          exact h (Fin.castAdd_injective _ _ h').symm
      · intro m m' hmm'
        dsimp only
        by_cases h1 : m = l <;> by_cases h2 : m' = l
        · exact absurd (h1.trans h2.symm) hmm'
        · rw [if_pos h1]
          exact Finset.disjoint_empty_left _
        · rw [if_pos h2]
          exact Finset.disjoint_empty_right _
        · rw [if_neg h1, if_neg h2, Finset.disjoint_singleton]
          intro h'
          exact hmm' (Fin.castAdd_injective _ _ h')
      · intro m hm
        rw [Finset.mem_singleton] at hm
        dsimp only
        rw [if_neg hm, Finset.prod_singleton, hne' m hm]
      · intro m hm
        rw [Finset.mem_singleton] at hm
        subst hm
        dsimp only
        rw [if_pos rfl, Finset.prod_empty, mul_one, hτl]
        exact (associated_mul_unit_right _ _ ((hu.map Θ.symm).map
          (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)))).symm

  suffices main : ∀ a c : A, (j = 0 ∧ a = x ∧ c = y) ∨ (j = 1 ∧ a = y ∧ c = x) →
      wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
        (fun m => ((algebraMap
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
            (Localization.AtPrime 𝔔)).comp
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)))
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
        (((algebraMap
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
            (Localization.AtPrime 𝔔)).comp
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)))
          (wcpaDjP1Gen A x y v σ b l j))
        {l} by
    have h01 : j = 0 ∨ j = 1 := by
      have h2 : j.val ≠ 2 := fun h' => hj (Fin.ext h')
      have h3 := j.isLt
      rcases Nat.lt_or_ge j.val 1 with h | h
      · left; apply Fin.ext; simp only [Fin.val_zero]; omega
      · right; apply Fin.ext; simp only [Fin.val_one]; omega
    rcases h01 with h0 | h1
    · exact main x y (Or.inl ⟨h0, rfl, rfl⟩)
    · exact main y x (Or.inr ⟨h1, rfl, rfl⟩)
  intro a c hac
  have hGj : wcpaDjP1Gen A x y v σ b l j =
      Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a := by
    rcases hac with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ <;> rfl
  have hmax' : Ideal.span ({a, c} ∪ Set.range σ) = IsLocalRing.maximalIdeal A := by
    rcases hac with ⟨_, rfl, rfl⟩ | ⟨_, rfl, rfl⟩
    · exact hmax
    · rw [Set.pair_comm]; exact hmax
  obtain ⟨hsurj, hI, hsat⟩ :=
    wcpa_dj_rtsxc_p1_axis_chart A n x y v σ b l hv hdim hmax hb j a c hac
  have hψC : ∀ r : A, Polynomial.eval₂RingHom
        ((algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)).comp
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j 2)
        (Polynomial.C r) =
      algebraMap (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) r) := fun r => by
    show Polynomial.eval₂ _ _ _ = _
    rw [Polynomial.eval₂_C]
    rfl
  generalize Polynomial.eval₂RingHom
        ((algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)).comp
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j 2) = ψ
    at hsurj hI hsat hψC

  have hFm : x * y - v * ∏ m, σ m ^ b m ∈ IsLocalRing.maximalIdeal A := by
    have hx : x ∈ IsLocalRing.maximalIdeal A := by
      rw [← hmax]; exact Ideal.subset_span (by simp)
    have hσ : σ l ∈ IsLocalRing.maximalIdeal A := by
      rw [← hmax]; exact Ideal.subset_span (by simp)
    refine Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hx) (Ideal.mul_mem_left _ _ ?_)
    rw [← Finset.mul_prod_erase Finset.univ (fun m => σ m ^ b m) (Finset.mem_univ l)]
    exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ hσ _ (by omega))

  have hQ : (𝔔.comap ψ).comap Polynomial.C = IsLocalRing.maximalIdeal A := by
    ext r
    rw [Ideal.mem_comap, Ideal.mem_comap, hψC, h𝔔]
    constructor
    · intro hnu
      by_contra hr
      exact hnu ((IsLocalRing.notMem_maximalIdeal.mp hr).map
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
    · intro hr hu
      obtain ⟨s'', hs''⟩ := hu.exists_right_inv
      obtain ⟨s', rfl⟩ := Ideal.Quotient.mk_surjective s''
      rw [← map_mul, ← map_one (Ideal.Quotient.mk _), Ideal.Quotient.eq,
        Ideal.mem_span_singleton'] at hs''
      obtain ⟨t, ht⟩ := hs''
      have h1 : r * s' - 1 ∈ IsLocalRing.maximalIdeal A := ht ▸ Ideal.mul_mem_left _ t hFm
      have h2 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
        have := Ideal.sub_mem _ (Ideal.mul_mem_right s' _ hr) h1
        simpa using this
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h2)
  obtain ⟨e, w, hdom, hdimE, hspan, hne, hXin, hXout⟩ :=
    wcpa_dj_rtsxc_p1_axis_local A n a c σ l
      (Polynomial.C (v * a ^ (b l - 2) * ∏ m ∈ Finset.univ.erase l, σ m ^ b m) *
        Polynomial.X ^ (b l)) hdim hmax' (𝔔.comap ψ) hQ
  haveI := hdom
  obtain ⟨Θ, hΘ⟩ := wcpa_dj_rtsxc_p1_present (Polynomial A) _ ψ hsurj _ hI
    (Polynomial.C a) hsat 𝔔 (Localization.AtPrime (𝔔.comap ψ))
    (mem_nonZeroDivisors_of_ne_zero hne)
  refine generic _ _ _ Θ e w
    (fun m => algebraMap (Polynomial A) (Localization.AtPrime (𝔔.comap ψ)) (Polynomial.C (σ m)))
    (algebraMap (Polynomial A) (Localization.AtPrime (𝔔.comap ψ)) (Polynomial.C a))
    (algebraMap (Polynomial A) (Localization.AtPrime (𝔔.comap ψ)) Polynomial.X) _ _
    hdimE hspan hne ?_ ?_ ?_ ?_
  · intro m
    rw [RingHom.comp_apply, ← hψC, hΘ]
  · exact (congrArg (fun z => Θ (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j))) z)) hGj).trans
      ((congrArg (fun z => Θ (algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
          (Localization.AtPrime 𝔔) z)) (hψC a).symm).trans (hΘ (Polynomial.C a)))
  · have hmem := Ideal.mem_map_of_mem
      (algebraMap (Polynomial A) (Localization.AtPrime (𝔔.comap ψ)))
      (Ideal.subset_span (Set.mem_insert _ _) :
        Polynomial.C (σ l) - Polynomial.C a * Polynomial.X ∈
          Ideal.span ({Polynomial.C (σ l) - Polynomial.C a * Polynomial.X,
            Polynomial.C c - Polynomial.C a * (Polynomial.C (v * a ^ (b l - 2) *
              ∏ m ∈ Finset.univ.erase l, σ m ^ b m) * Polynomial.X ^ (b l))} :
            Set (Polynomial A)))
    rw [map_sub, (algebraMap (Polynomial A) (Localization.AtPrime (𝔔.comap ψ))).map_mul] at hmem
    exact hmem
  · by_cases hXQ : Polynomial.X ∈ 𝔔.comap ψ
    · exact Or.inl (hXin hXQ)
    · exact Or.inr (hXout hXQ)

theorem wcpa_dj_rtsxc_p1n_poly_reduce (A : Type u) [CommRing A] (s x y : A) :
    ∀ p : Polynomial (Polynomial A), ∃ (N : ℕ) (a : A),
      Polynomial.C (Polynomial.C s) ^ N * p - Polynomial.C (Polynomial.C a) ∈
        Ideal.span {wcpaDjP1nG1 A x s, wcpaDjP1nG2 A y s} :=
by
  intro p
  set J : Ideal (Polynomial (Polynomial A)) :=
    Ideal.span {wcpaDjP1nG1 A x s, wcpaDjP1nG2 A y s} with hJ
  have hg1 : wcpaDjP1nG1 A x s ∈ J := Ideal.subset_span (Set.mem_insert _ _)
  have hg2 : wcpaDjP1nG2 A y s ∈ J :=
    Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_singleton _))
  have hconst : ∀ a : A, ∃ (N : ℕ) (b : A),
      Polynomial.C (Polynomial.C s) ^ N * Polynomial.C (Polynomial.C a) -
        Polynomial.C (Polynomial.C b) ∈ J := by
    intro a
    refine ⟨0, a, ?_⟩
    rw [pow_zero, one_mul, sub_self]
    exact J.zero_mem
  have hU : ∃ (N : ℕ) (b : A),
      Polynomial.C (Polynomial.C s) ^ N * Polynomial.C Polynomial.X -
        Polynomial.C (Polynomial.C b) ∈ J := by
    refine ⟨1, x, ?_⟩
    have e : Polynomial.C (Polynomial.C s) ^ 1 * Polynomial.C Polynomial.X -
        Polynomial.C (Polynomial.C x) = -wcpaDjP1nG1 A x s := by
      simp only [wcpaDjP1nG1]; ring
    rw [e]
    exact J.neg_mem hg1
  have hV : ∃ (N : ℕ) (b : A),
      Polynomial.C (Polynomial.C s) ^ N * Polynomial.X -
        Polynomial.C (Polynomial.C b) ∈ J := by
    refine ⟨1, y, ?_⟩
    have e : Polynomial.C (Polynomial.C s) ^ 1 * Polynomial.X -
        Polynomial.C (Polynomial.C y) = -wcpaDjP1nG2 A y s := by
      simp only [wcpaDjP1nG2]; ring
    rw [e]
    exact J.neg_mem hg2
  have hadd : ∀ p q : Polynomial (Polynomial A),
      (∃ (N : ℕ) (a : A), Polynomial.C (Polynomial.C s) ^ N * p -
        Polynomial.C (Polynomial.C a) ∈ J) →
      (∃ (N : ℕ) (a : A), Polynomial.C (Polynomial.C s) ^ N * q -
        Polynomial.C (Polynomial.C a) ∈ J) →
      ∃ (N : ℕ) (a : A), Polynomial.C (Polynomial.C s) ^ N * (p + q) -
        Polynomial.C (Polynomial.C a) ∈ J := by
    rintro p q ⟨N₁, a₁, h₁⟩ ⟨N₂, a₂, h₂⟩
    refine ⟨N₁ + N₂, s ^ N₂ * a₁ + s ^ N₁ * a₂, ?_⟩
    have e : Polynomial.C (Polynomial.C s) ^ (N₁ + N₂) * (p + q) -
        Polynomial.C (Polynomial.C (s ^ N₂ * a₁ + s ^ N₁ * a₂)) =
        Polynomial.C (Polynomial.C s) ^ N₂ *
          (Polynomial.C (Polynomial.C s) ^ N₁ * p - Polynomial.C (Polynomial.C a₁)) +
        Polynomial.C (Polynomial.C s) ^ N₁ *
          (Polynomial.C (Polynomial.C s) ^ N₂ * q - Polynomial.C (Polynomial.C a₂)) := by
      simp only [map_add, map_mul, map_pow]; ring
    rw [e]
    exact J.add_mem (J.mul_mem_left _ h₁) (J.mul_mem_left _ h₂)
  have hmul : ∀ p q : Polynomial (Polynomial A),
      (∃ (N : ℕ) (a : A), Polynomial.C (Polynomial.C s) ^ N * p -
        Polynomial.C (Polynomial.C a) ∈ J) →
      (∃ (N : ℕ) (a : A), Polynomial.C (Polynomial.C s) ^ N * q -
        Polynomial.C (Polynomial.C a) ∈ J) →
      ∃ (N : ℕ) (a : A), Polynomial.C (Polynomial.C s) ^ N * (p * q) -
        Polynomial.C (Polynomial.C a) ∈ J := by
    rintro p q ⟨N₁, a₁, h₁⟩ ⟨N₂, a₂, h₂⟩
    refine ⟨N₁ + N₂, a₁ * a₂, ?_⟩
    have e : Polynomial.C (Polynomial.C s) ^ (N₁ + N₂) * (p * q) -
        Polynomial.C (Polynomial.C (a₁ * a₂)) =
        (Polynomial.C (Polynomial.C s) ^ N₁ * p) *
          (Polynomial.C (Polynomial.C s) ^ N₂ * q - Polynomial.C (Polynomial.C a₂)) +
        Polynomial.C (Polynomial.C a₂) *
          (Polynomial.C (Polynomial.C s) ^ N₁ * p - Polynomial.C (Polynomial.C a₁)) := by
      simp only [map_mul]; ring
    rw [e]
    exact J.add_mem (J.mul_mem_left _ h₂) (J.mul_mem_left _ h₁)
  have hinner : ∀ p₀ : Polynomial A, ∃ (N : ℕ) (a : A),
      Polynomial.C (Polynomial.C s) ^ N * Polynomial.C p₀ -
        Polynomial.C (Polynomial.C a) ∈ J := by
    intro p₀
    induction p₀ using Polynomial.induction_on with
    | C a => exact hconst a
    | add p q hp hq =>
      rw [map_add]
      exact hadd _ _ hp hq
    | monomial n a ih =>
      have e : (Polynomial.C (Polynomial.C a * Polynomial.X ^ (n + 1)) :
          Polynomial (Polynomial A)) =
          Polynomial.C (Polynomial.C a * Polynomial.X ^ n) * Polynomial.C Polynomial.X := by
        rw [← map_mul, pow_succ, mul_assoc]
      rw [e]
      exact hmul _ _ ih hU
  induction p using Polynomial.induction_on with
  | C a => exact hinner a
  | add p q hp hq => exact hadd _ _ hp hq
  | monomial n a ih =>
    have e : (Polynomial.C a * Polynomial.X ^ (n + 1) : Polynomial (Polynomial A)) =
        Polynomial.C a * Polynomial.X ^ n * Polynomial.X := by
      rw [pow_succ, mul_assoc]
    rw [e]
    exact hmul _ _ ih hV

theorem wcpa_dj_rtsxc_p1n_chart_kernel (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hb : 2 ≤ b l)
    (ψ : Polynomial (Polynomial A) →+*
      wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
    (hψc : ∀ a, ψ (Polynomial.C (Polynomial.C a)) = algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
      (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a))
    (hψU : ψ (Polynomial.C Polynomial.X) =
      wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0)
    (hψV : ψ Polynomial.X =
      wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1) :
    ψ (wcpaDjP1nG1 A x (σ l)) = 0 ∧ ψ (wcpaDjP1nG2 A y (σ l)) = 0 ∧
      ψ (wcpaDjP1nGs A v σ (Function.update b l (b l - 2))) = 0 ∧
      ∀ a, ψ (Polynomial.C (Polynomial.C a)) = 0 →
        Polynomial.C (Polynomial.C a) ∈ Ideal.span {wcpaDjP1nG1 A x (σ l), wcpaDjP1nG2 A y (σ l),
          wcpaDjP1nGs A v σ (Function.update b l (b l - 2))} :=
by
  classical

  have hfacts : ∀ (R : Type u) [CommRing R] {r : ℕ} (f : Fin (r + 1) → R) (i : Fin (r + 1)),
      (∀ k, wcpaDjChartGen R f i k * algebraMap R (wcpaDjChartAlg R f i) (f i) =
        algebraMap R (wcpaDjChartAlg R f i) (f k)) ∧
      (∀ w : wcpaDjChartAlg R f i, w * algebraMap R (wcpaDjChartAlg R f i) (f i) = 0 → w = 0) ∧
      (f i ∈ nonZeroDivisors R → ∀ a : R, algebraMap R (wcpaDjChartAlg R f i) a = 0 → a = 0) := by
    intro R _ r f i
    refine ⟨fun k => ?_, fun w hw => ?_, fun hnzd a ha => ?_⟩
    · apply Subtype.ext
      show IsLocalization.mk' (Localization.Away (f i)) (f k)
          (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) *
          algebraMap R (Localization.Away (f i)) (f i) =
        algebraMap R (Localization.Away (f i)) (f k)
      exact IsLocalization.mk'_spec _ _ _
    · have h1 : (w : Localization.Away (f i)) * algebraMap R (Localization.Away (f i)) (f i) = 0 :=
        congrArg Subtype.val hw
      apply Subtype.ext
      show (w : Localization.Away (f i)) = 0
      exact (IsLocalization.Away.algebraMap_isUnit (f i)).mul_left_eq_zero.mp h1
    · have h1 : algebraMap R (Localization.Away (f i)) a = 0 := congrArg Subtype.val ha
      have hinj := IsLocalization.injective (Localization.Away (f i)) (M := Submonoid.powers (f i))
        (Submonoid.powers_le.mpr hnzd)
      exact hinj (h1.trans (map_zero _).symm)

  have hsplit : ∀ (M : Type u) [CommMonoid M] (τ : Fin n → M),
      ∏ m, τ m ^ b m = τ l ^ 2 * ∏ m, τ m ^ Function.update b l (b l - 2) m := by
    intro M _ τ
    rw [← Finset.mul_prod_erase Finset.univ (fun m => τ m ^ b m) (Finset.mem_univ l),
      ← Finset.mul_prod_erase Finset.univ (fun m => τ m ^ Function.update b l (b l - 2) m)
        (Finset.mem_univ l), Function.update_self]
    have e : ∏ m ∈ Finset.univ.erase l, τ m ^ Function.update b l (b l - 2) m =
        ∏ m ∈ Finset.univ.erase l, τ m ^ b m :=
      Finset.prod_congr rfl (fun m hm => by rw [Function.update_of_ne (Finset.ne_of_mem_erase hm)])
    rw [e, ← mul_assoc, ← pow_add, Nat.add_sub_cancel' hb]
  obtain ⟨hrel, hcancel, hinj⟩ := hfacts (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2
  have hnzd : wcpaDjP1Gen A x y v σ b l 2 ∈ nonZeroDivisors (wcpaDjP1Ring A x y v σ b) :=
    (wcpa_dj_rtsxc_model_nzd A n x y v σ b hv hdim hmax).2.2 l
  set lam := algebraMap (wcpaDjP1Ring A x y v σ b)
    (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2) with hlam
  set mk := Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) with hmk
  have hX : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0 *
      lam (mk (σ l)) = lam (mk x) := hrel 0
  have hY : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1 *
      lam (mk (σ l)) = lam (mk y) := hrel 1
  have hcan : ∀ w : wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2,
      w * lam (mk (σ l)) = 0 → w = 0 := hcancel
  refine ⟨?_, ?_, ?_, ?_⟩
  · show ψ (Polynomial.C (Polynomial.C x) -
      Polynomial.C (Polynomial.C (σ l)) * Polynomial.C Polynomial.X) = 0
    rw [map_sub, map_mul, hψc, hψc, hψU, (mul_comm _ _).trans hX, sub_self]
  · show ψ (Polynomial.C (Polynomial.C y) -
      Polynomial.C (Polynomial.C (σ l)) * Polynomial.X) = 0
    rw [map_sub, map_mul, hψc, hψc, hψV, (mul_comm _ _).trans hY, sub_self]
  · show ψ (Polynomial.C Polynomial.X * Polynomial.X - Polynomial.C (Polynomial.C v) *
      ∏ m, Polynomial.C (Polynomial.C (σ m)) ^ Function.update b l (b l - 2) m) = 0
    have hprod : ψ (∏ m, Polynomial.C (Polynomial.C (σ m)) ^ Function.update b l (b l - 2) m) =
        ∏ m, lam (mk (σ m)) ^ Function.update b l (b l - 2) m := by
      rw [map_prod]
      exact Finset.prod_congr rfl (fun m _ => by rw [map_pow, hψc])
    rw [map_sub, map_mul, map_mul, hψU, hψV, hψc, hprod]
    have hF0 : mk (x * y - v * ∏ m, σ m ^ b m) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
    have key : lam (mk x) * lam (mk y) - lam (mk v) * ∏ m, lam (mk (σ m)) ^ b m = 0 := by
      have h := congrArg lam hF0
      simpa only [map_sub, map_mul, map_prod, map_pow, map_zero] using h
    have hs : ∏ m, lam (mk (σ m)) ^ b m =
        lam (mk (σ l)) ^ 2 * ∏ m, lam (mk (σ m)) ^ Function.update b l (b l - 2) m :=
      hsplit _ _
    apply hcan
    apply hcan
    calc _ = (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0 *
              lam (mk (σ l))) *
            (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1 *
              lam (mk (σ l))) - lam (mk v) * (lam (mk (σ l)) ^ 2 *
            ∏ m, lam (mk (σ m)) ^ Function.update b l (b l - 2) m) := by ring
      _ = lam (mk x) * lam (mk y) - lam (mk v) * ∏ m, lam (mk (σ m)) ^ b m := by
        rw [hX, hY, ← hs]
      _ = 0 := key
  · intro a ha
    rw [hψc] at ha
    have hmka : mk a = 0 := hinj hnzd _ ha
    obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp (Ideal.Quotient.eq_zero_iff_mem.mp hmka)
    subst hw
    rw [map_mul, map_mul]
    apply Ideal.mul_mem_left
    have hs : ∏ m, Polynomial.C (Polynomial.C (σ m)) ^ b m =
        Polynomial.C (Polynomial.C (σ l)) ^ 2 *
          ∏ m, (Polynomial.C (Polynomial.C (σ m)) : Polynomial (Polynomial A)) ^
            Function.update b l (b l - 2) m :=
      hsplit _ _
    have hid : (Polynomial.C (Polynomial.C (x * y - v * ∏ m, σ m ^ b m)) :
        Polynomial (Polynomial A)) =
        (Polynomial.C (Polynomial.C x) -
          Polynomial.C (Polynomial.C (σ l)) * Polynomial.C Polynomial.X) *
            Polynomial.C (Polynomial.C y) +
        (Polynomial.C (Polynomial.C (σ l)) * Polynomial.C Polynomial.X) *
          (Polynomial.C (Polynomial.C y) - Polynomial.C (Polynomial.C (σ l)) * Polynomial.X) +
        Polynomial.C (Polynomial.C (σ l)) ^ 2 *
          (Polynomial.C Polynomial.X * Polynomial.X - Polynomial.C (Polynomial.C v) *
            ∏ m, Polynomial.C (Polynomial.C (σ m)) ^ Function.update b l (b l - 2) m) := by
      simp only [map_sub, map_mul, map_prod, map_pow]
      rw [hs]
      ring
    rw [hid]
    refine Ideal.add_mem _ (Ideal.add_mem _ ?_ ?_) ?_
    · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (Set.mem_insert _ _))
    · exact Ideal.mul_mem_left _ _
        (Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _)))
    · exact Ideal.mul_mem_left _ _ (Ideal.subset_span
        (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))))

theorem wcpa_dj_rtsxc_p1n_reg_local (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y : A) (σ : Fin n → A) (l : Fin n)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (Q : Ideal (Polynomial (Polynomial A))) [Q.IsPrime]
    (hU : Polynomial.C Polynomial.X ∈ Q) (hV : Polynomial.X ∈ Q)
    (hQ : Ideal.comap ((Polynomial.C : Polynomial A →+* Polynomial (Polynomial A)).comp
      (Polynomial.C : A →+* Polynomial A)) Q = IsLocalRing.maximalIdeal A)
    (L : Type u) [CommRing L] [Algebra (Polynomial (Polynomial A)) L]
    [IsLocalization.AtPrime L Q] :
    ∃ (_ : IsRegularLocalRing (wcpaDjP1nE A x y (σ l) L)),
      ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim (wcpaDjP1nE A x y (σ l) L) ∧
      Ideal.span ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
          wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
        Set.range (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))))) =
        IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L) :=
by
  classical

  have nf : ∀ p : Polynomial (Polynomial A), ∃ (q : Polynomial (Polynomial A)) (r : Polynomial A)
      (a : A), p = Polynomial.X * q + Polynomial.C Polynomial.X * Polynomial.C r +
        Polynomial.C (Polynomial.C a) := by
    intro p
    obtain ⟨q, hq⟩ := Polynomial.X_dvd_sub_C (p := p)
    obtain ⟨r, hr⟩ := Polynomial.X_dvd_sub_C (p := p.coeff 0)
    refine ⟨q, r, (p.coeff 0).coeff 0, ?_⟩
    have h2 := congrArg (Polynomial.C : Polynomial A →+* Polynomial (Polynomial A)) hr
    rw [map_sub, map_mul] at h2
    linear_combination hq + h2
  have hmA : ∀ a : A, a ∈ IsLocalRing.maximalIdeal A → Polynomial.C (Polynomial.C a) ∈ Q := by
    intro a ha
    rw [← hQ] at ha
    exact ha
  have hcQ : ∀ a : A, Polynomial.C (Polynomial.C a) ∈ Q → a ∈ IsLocalRing.maximalIdeal A := by
    intro a ha
    rw [← hQ]
    exact ha
  have hx : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hmax]; exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert _ _))
  have hy : y ∈ IsLocalRing.maximalIdeal A := by
    rw [← hmax]
    exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert_of_mem _ rfl))
  have hσ : ∀ m, σ m ∈ IsLocalRing.maximalIdeal A := by
    intro m
    rw [← hmax]; exact Ideal.subset_span (Set.mem_union_right _ ⟨m, rfl⟩)

  have hQne : Q ≠ ⊤ := Ideal.IsPrime.ne_top ‹_›
  let φ : Polynomial (Polynomial A) →+* IsLocalRing.ResidueField A :=
    (IsLocalRing.residue A).comp (Polynomial.constantCoeff.comp Polynomial.constantCoeff)
  have hφC : ∀ a, φ (Polynomial.C (Polynomial.C a)) = IsLocalRing.residue A a := by
    intro a; simp [φ]
  have hφsurj : Function.Surjective φ := by
    intro z
    obtain ⟨a, ha⟩ := IsLocalRing.residue_surjective z
    exact ⟨Polynomial.C (Polynomial.C a), by rw [hφC, ha]⟩
  have hker : RingHom.ker φ ≤ Q := by
    intro p hp
    obtain ⟨q, r, a, rfl⟩ := nf p
    have e : φ (Polynomial.X * q + Polynomial.C Polynomial.X * Polynomial.C r +
        Polynomial.C (Polynomial.C a)) = IsLocalRing.residue A a := by
      simp [φ]
    rw [RingHom.mem_ker, e, IsLocalRing.residue_eq_zero_iff] at hp
    exact Q.add_mem (Q.add_mem (Q.mul_mem_right _ hV) (Q.mul_mem_right _ hU)) (hmA a hp)
  have hQmax : Q.IsMaximal := by
    have h1 := RingHom.ker_isMaximal_of_surjective φ hφsurj
    rw [← h1.eq_of_le hQne hker]
    exact h1

  have hq1mem : ∀ f : Polynomial A, f ∈ Ideal.under (Polynomial A) Q ↔ Polynomial.C f ∈ Q := by
    intro f
    rw [Ideal.under_def, Polynomial.algebraMap_eq]
    rfl
  let φ₁ : Polynomial A →+* IsLocalRing.ResidueField A :=
    (IsLocalRing.residue A).comp Polynomial.constantCoeff
  have hφ₁surj : Function.Surjective φ₁ := by
    intro z
    obtain ⟨a, ha⟩ := IsLocalRing.residue_surjective z
    exact ⟨Polynomial.C a, by simp [φ₁, ha]⟩
  have hker₁ : RingHom.ker φ₁ ≤ Ideal.under (Polynomial A) Q := by
    intro f hf
    rw [hq1mem]
    obtain ⟨r, hr⟩ := Polynomial.X_dvd_sub_C (p := f)
    have hf' : φ₁ f = IsLocalRing.residue A (f.coeff 0) := by
      simp [φ₁, Polynomial.constantCoeff_apply]
    rw [RingHom.mem_ker, hf', IsLocalRing.residue_eq_zero_iff] at hf
    have e : (Polynomial.C f : Polynomial (Polynomial A)) =
        Polynomial.C Polynomial.X * Polynomial.C r + Polynomial.C (Polynomial.C (f.coeff 0)) := by
      rw [← map_mul, ← map_add]
      congr 1
      linear_combination hr
    rw [e]
    exact Q.add_mem (Q.mul_mem_right _ hU) (hmA _ hf)
  have hq1ne : Ideal.under (Polynomial A) Q ≠ ⊤ := by
    intro h
    have h1 : (1 : Polynomial A) ∈ Ideal.under (Polynomial A) Q := h ▸ Submodule.mem_top
    rw [hq1mem, map_one] at h1
    exact hQne ((Ideal.eq_top_iff_one _).mpr h1)
  have hq1max : (Ideal.under (Polynomial A) Q).IsMaximal := by
    have h1 := RingHom.ker_isMaximal_of_surjective φ₁ hφ₁surj
    rw [← h1.eq_of_le hq1ne hker₁]
    exact h1
  haveI : Q.LiesOver (Ideal.under (Polynomial A) Q) := Ideal.LiesOver.mk rfl
  haveI : (Ideal.under (Polynomial A) Q).LiesOver (IsLocalRing.maximalIdeal A) := by
    refine Ideal.LiesOver.mk ?_
    ext a
    rw [Ideal.under_def, Ideal.mem_comap, Polynomial.algebraMap_eq, hq1mem]
    exact ⟨hmA a, hcQ a⟩
  have hQh : Q.height = (Ideal.under (Polynomial A) Q).height + 1 :=
    Polynomial.height_eq_height_add_one _ Q
  have hq1h : (Ideal.under (Polynomial A) Q).height = (IsLocalRing.maximalIdeal A).height + 1 :=
    Polynomial.height_eq_height_add_one _ _
  have hmAh : (IsLocalRing.maximalIdeal A).height = ((n + 2 : ℕ) : ℕ∞) := by
    have h1 := (IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := A)).trans hdim.symm
    apply WithBot.coe_injective
    refine h1.trans ?_
    first | rfl | norm_cast | simp

  haveI : IsLocalRing L := IsLocalization.AtPrime.isLocalRing L Q
  haveI : IsNoetherianRing L := IsLocalization.isNoetherianRing Q.primeCompl L inferInstance
  have hdimL : ringKrullDim L = ((n + 2 + 2 : ℕ) : WithBot ℕ∞) := by
    rw [IsLocalization.AtPrime.ringKrullDim_eq_height Q L, hQh, hq1h, hmAh]
    norm_cast

  have hg1Q : wcpaDjP1nG1 A x (σ l) ∈ Q := Q.sub_mem (hmA x hx) (Q.mul_mem_left _ hU)
  have hg2Q : wcpaDjP1nG2 A y (σ l) ∈ Q := Q.sub_mem (hmA y hy) (Q.mul_mem_left _ hV)
  have hg1m : algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG1 A x (σ l)) ∈
      IsLocalRing.maximalIdeal L :=
    (IsLocalization.AtPrime.to_map_mem_maximal_iff L Q _).mpr hg1Q
  have hg2m : algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG2 A y (σ l)) ∈
      IsLocalRing.maximalIdeal L :=
    (IsLocalization.AtPrime.to_map_mem_maximal_iff L Q _).mpr hg2Q
  have hJle : wcpaDjP1nJ A x y (σ l) L ≤ IsLocalRing.maximalIdeal L := by
    rw [Ideal.span_le]
    rintro z (rfl | rfl)
    · exact hg1m
    · exact hg2m
  have hJne : wcpaDjP1nJ A x y (σ l) L ≠ ⊤ := fun h =>
    (IsLocalRing.maximalIdeal.isMaximal L).ne_top (top_le_iff.mp (h ▸ hJle))
  haveI : Nontrivial (wcpaDjP1nE A x y (σ l) L) := Ideal.Quotient.nontrivial_iff.mpr hJne
  haveI : IsLocalRing (wcpaDjP1nE A x y (σ l) L) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk (wcpaDjP1nJ A x y (σ l) L))
      Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing (wcpaDjP1nE A x y (σ l) L) := Ideal.Quotient.isNoetherianRing _

  have hMx : wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C x)) =
      wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ l))) *
        wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X) := by
    have h0 : wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C x) -
        Polynomial.C (Polynomial.C (σ l)) * Polynomial.C Polynomial.X) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (Set.mem_insert _ _))
    rw [map_sub, map_mul, sub_eq_zero] at h0
    exact h0
  have hMy : wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C y)) =
      wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ l))) *
        wcpaDjP1nMk A x y (σ l) L Polynomial.X := by
    have h0 : wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C y) -
        Polynomial.C (Polynomial.C (σ l)) * Polynomial.X) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (Set.mem_insert_of_mem _ rfl))
    rw [map_sub, map_mul, sub_eq_zero] at h0
    exact h0
  have hT' : Ideal.span ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
          wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
        Set.range (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))))) =
        IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L) := by
    rw [← IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk (wcpaDjP1nJ A x y (σ l) L))
      Ideal.Quotient.mk_surjective, ← IsLocalization.AtPrime.map_eq_maximalIdeal Q L,
      Ideal.map_map]
    change _ = Ideal.map (wcpaDjP1nMk A x y (σ l) L) Q
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro z (h | ⟨m, rfl⟩)
      · rcases h with rfl | rfl
        · exact Ideal.mem_map_of_mem _ hU
        · exact Ideal.mem_map_of_mem _ hV
      · exact Ideal.mem_map_of_mem _ (hmA _ (hσ m))
    · rw [Ideal.map_le_iff_le_comap]
      intro p hp
      rw [Ideal.mem_comap]
      obtain ⟨q, r, a, rfl⟩ := nf p
      have ha : Polynomial.C (Polynomial.C a) ∈ Q := by
        have h1 := Q.sub_mem hp (Q.add_mem (Q.mul_mem_right q hV) (Q.mul_mem_right
          (Polynomial.C r) hU))
        rwa [add_sub_cancel_left] at h1
      have ha' := hcQ a ha
      have hle : IsLocalRing.maximalIdeal A ≤ Ideal.comap
          ((wcpaDjP1nMk A x y (σ l) L).comp
            ((Polynomial.C : Polynomial A →+* Polynomial (Polynomial A)).comp
              (Polynomial.C : A →+* Polynomial A)))
          (Ideal.span ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
            wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
          Set.range (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m)))))) := by
        rw [← hmax, Ideal.span_le]
        intro z hz
        rcases hz with hz | ⟨m, rfl⟩
        · rcases Set.mem_insert_iff.mp hz with hz | hz
          · rw [hz, SetLike.mem_coe, Ideal.mem_comap]
            have hxT : wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C x)) ∈
                Ideal.span ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
                  wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
                Set.range (fun m => wcpaDjP1nMk A x y (σ l) L
                  (Polynomial.C (Polynomial.C (σ m))))) := by
              rw [hMx]
              exact Ideal.mul_mem_left _ _
                (Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert _ _)))
            exact hxT
          · rw [Set.mem_singleton_iff.mp hz, SetLike.mem_coe, Ideal.mem_comap]
            have hyT : wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C y)) ∈
                Ideal.span ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
                  wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
                Set.range (fun m => wcpaDjP1nMk A x y (σ l) L
                  (Polynomial.C (Polynomial.C (σ m))))) := by
              rw [hMy]
              exact Ideal.mul_mem_left _ _
                (Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert_of_mem _ rfl)))
            exact hyT
        · exact Ideal.subset_span (Set.mem_union_right _ ⟨m, rfl⟩)
      have haT := hle ha'
      rw [Ideal.mem_comap] at haT
      rw [map_add, map_add, map_mul, map_mul]
      refine Ideal.add_mem _ (Ideal.add_mem _ ?_ ?_) haT
      · exact Ideal.mul_mem_right _ _
          (Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert_of_mem _ rfl)))
      · exact Ideal.mul_mem_right _ _
          (Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert _ _)))

  have hTfin : ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
          wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
        Set.range (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))))).Finite :=
    (Set.toFinite _).union (Set.finite_range _)
  have hcard : ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
          wcpaDjP1nMk A x y (σ l) L Polynomial.X} ∪
        Set.range (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))))).ncard
          ≤ n + 2 := by
    refine (Set.ncard_union_le _ _).trans ?_
    have h1 : ({wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X),
          wcpaDjP1nMk A x y (σ l) L Polynomial.X} : Set _).ncard ≤ 2 := by
      refine (Set.ncard_insert_le _ _).trans ?_
      rw [Set.ncard_singleton]
    have h2 : (Set.range (fun m => wcpaDjP1nMk A x y (σ l) L
        (Polynomial.C (Polynomial.C (σ m))))).ncard ≤ n := by
      rw [← Set.image_univ]
      refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
      rw [Set.ncard_univ, Nat.card_eq_fintype_card, Fintype.card_fin]
    omega

  have hsf : Submodule.spanFinrank (IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L)) ≤ n + 2 := by
    rw [← hT']
    exact (Submodule.spanFinrank_span_le_ncard_of_finite hTfin).trans hcard
  have hht := Ideal.height_le_spanFinrank (IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L))
    (IsLocalRing.maximalIdeal.isMaximal _).ne_top
  have hfin : (IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L)).height ≠ ⊤ :=
    ne_top_of_le_ne_top (ENat.natCast_ne_top (n + 2)) (hht.trans (by exact_mod_cast hsf))
  obtain ⟨h, hh⟩ := ENat.ne_top_iff_exists.mp hfin
  have hEdim : ringKrullDim (wcpaDjP1nE A x y (σ l) L) = ((h : ℕ) : WithBot ℕ∞) := by
    rw [← IsLocalRing.maximalIdeal_height_eq_ringKrullDim, ← hh]
    rfl
  have hS : (↑({algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG1 A x (σ l)),
      algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG2 A y (σ l))} : Finset L) : Set L) ⊆
      ↑(Ring.jacobson L) := by
    rw [IsLocalRing.ringJacobson_eq_maximalIdeal, Finset.coe_pair]
    exact Set.insert_subset_iff.mpr ⟨hg1m, Set.singleton_subset_iff.mpr hg2m⟩
  have hK := ringKrullDim_le_ringKrullDim_quotient_add_card _ hS
  rw [Finset.coe_pair] at hK
  have hK' : ringKrullDim L ≤ ringKrullDim (wcpaDjP1nE A x y (σ l) L) +
      (({algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG1 A x (σ l)),
      algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG2 A y (σ l))} : Finset L).card :
        WithBot ℕ∞) := hK
  rw [hdimL, hEdim] at hK'
  have hc2 := Finset.card_le_two (a := algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG1 A x (σ l)))
    (b := algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG2 A y (σ l)))
  have hK'' : n + 2 + 2 ≤ h + ({algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG1 A x (σ l)),
      algebraMap (Polynomial (Polynomial A)) L (wcpaDjP1nG2 A y (σ l))} : Finset L).card := by
    exact_mod_cast hK'
  have hht' : h ≤ Submodule.spanFinrank (IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L)) := by
    rw [← hh] at hht
    exact_mod_cast hht
  have hhn : h = n + 2 := by omega
  have hNn : Submodule.spanFinrank (IsLocalRing.maximalIdeal (wcpaDjP1nE A x y (σ l) L)) = n + 2 := by
    omega
  refine ⟨(isRegularLocalRing_iff _).mpr ?_, ?_, hT'⟩
  · rw [hEdim, hNn, hhn]
  · rw [hEdim, hhn]

theorem wcpa_dj_rtsxc_p1n_nd_of_pres (B : Type u) [CommRing B] [IsLocalRing B] (n : ℕ)
    (τ : Fin n → B) (γ : B) (l : Fin n) (b b' : Fin n → ℕ)
    (E : Type u) [CommRing E] [IsRegularLocalRing E] (x y v : E) (σ : Fin n → E)
    (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim E)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal E)
    (Θ : B ≃+* E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m})
    (hτ : ∀ m, Θ (τ m) = Ideal.Quotient.mk _ (σ m))
    (hγ : Θ γ = Ideal.Quotient.mk _ (σ l))
    (hb' : ∀ c, c ≠ l → b' c = b c) :
    wcpaDjRtsxcNd B τ γ {l} b :=
by
  classical

  haveI : Nontrivial (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) := Θ.symm.toEquiv.nontrivial
  haveI hSloc : IsLocalRing (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing E := inferInstance

  have hrange : Set.range (Fin.cons x (Fin.cons y σ) : Fin (n + 2) → E) = {x, y} ∪ Set.range σ := by
    ext z
    constructor
    · rintro ⟨i, rfl⟩
      refine Fin.cases ?_ (fun j => ?_) i
      · simp
      · refine Fin.cases ?_ (fun k => ?_) j
        · simp
        · simp
    · rintro ((rfl | rfl) | ⟨k, rfl⟩)
      · exact ⟨0, by simp⟩
      · exact ⟨1, by simp⟩
      · exact ⟨k.succ.succ, by simp⟩
  obtain ⟨hreg, hd, hs⟩ := wcpa_dj_stc_kmnb_completion_params E (n + 2)
    (Fin.cons x (Fin.cons y σ)) hdim (by rw [hrange]; exact hmax)
  obtain ⟨_, hcomp, -, -⟩ := wc_hnas_completion_local_complete E
  have hspan : Ideal.span ({algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x,
      algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y} ∪
      Set.range (fun c => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ c))) =
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal E) E) := by
    rw [← hs]
    congr 1
    rw [show (fun i => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)
        ((Fin.cons x (Fin.cons y σ) : Fin (n + 2) → E) i)) =
        (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)) ∘
          (Fin.cons x (Fin.cons y σ) : Fin (n + 2) → E) from rfl,
      Set.range_comp, hrange, Set.image_union, Set.image_insert_eq, Set.image_singleton,
      ← Set.range_comp]
    rfl

  obtain ⟨e', he'⟩ : ∃ e' : AdicCompletion (IsLocalRing.maximalIdeal B) B ≃+*
      (AdicCompletion (IsLocalRing.maximalIdeal E) E ⧸ Ideal.span
        {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x *
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y -
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) v *
          ∏ c, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ c) ^ b' c}),
      ∀ (z : B) (a : E), Θ z = Ideal.Quotient.mk _ a →
        e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) z) =
          Ideal.Quotient.mk _ (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a) := by
    obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_adic_congr B (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) Θ
    have hsurj : Function.Surjective
        (algebraMap E (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m})) := by
      rw [Ideal.Quotient.algebraMap_eq]; exact Ideal.Quotient.mk_surjective
    obtain ⟨φ⟩ := wc_hnas_pfc_completion_surj_base_change E
      (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) hsurj
    have hI : (Ideal.span {x * y - v * ∏ m, σ m ^ b' m}).map
        (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)) = Ideal.span
        {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x *
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y -
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) v *
          ∏ c, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ c) ^ b' c} := by
      rw [Ideal.map_span, Set.image_singleton]
      congr 1
      simp only [map_sub, map_mul, map_prod, map_pow]
    let κ₁ := Algebra.TensorProduct.comm E (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m})
      (AdicCompletion (IsLocalRing.maximalIdeal E) E)
    let κ₂ := Algebra.TensorProduct.quotIdealMapEquivTensorQuot
      (AdicCompletion (IsLocalRing.maximalIdeal E) E) (Ideal.span {x * y - v * ∏ m, σ m ^ b' m})
    refine ⟨ε.trans (φ.symm.toRingEquiv.trans (κ₁.toRingEquiv.trans
      (κ₂.symm.toRingEquiv.trans (Ideal.quotEquivOfEq hI)))), ?_⟩
    intro z a hz
    have h1 : ε (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) z) =
        algebraMap (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) _ (Θ z) :=
      RingHom.congr_fun hε z
    have h2 : φ.symm (algebraMap (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m})
        (AdicCompletion (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}))
          (E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m})) (Ideal.Quotient.mk _ a)) =
        (Ideal.Quotient.mk _ a) ⊗ₜ[E] (1 : AdicCompletion (IsLocalRing.maximalIdeal E) E) := by
      rw [AlgEquiv.commutes, Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self,
        RingHom.id_apply]
    have h3 : κ₁ ((Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) a) ⊗ₜ[E]
        (1 : AdicCompletion (IsLocalRing.maximalIdeal E) E)) =
        algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a ⊗ₜ[E]
          (1 : E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m}) := by
      rw [Algebra.TensorProduct.comm_tmul, ← Ideal.Quotient.algebraMap_eq,
        ← Algebra.TensorProduct.tmul_one_eq_one_tmul]
    have h4 : κ₂.symm (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a ⊗ₜ[E]
          (1 : E ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b' m})) =
        Ideal.Quotient.mk _ (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a) := by
      rw [AlgEquiv.symm_apply_eq]
      exact (Algebra.TensorProduct.quotIdealMapEquivTensorQuot_mk _ _ _).symm
    show (Ideal.quotEquivOfEq hI) (κ₂.symm (κ₁ (φ.symm (ε
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) z))))) = _
    rw [h1, hz, h2, h3, h4, Ideal.quotEquivOfEq_mk]

  refine ⟨n, AdicCompletion (IsLocalRing.maximalIdeal E) E, inferInstance, hreg, hcomp,
    algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x,
    algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y,
    algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) v,
    fun c => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ c), b', e',
    fun m => if m = l then ∅ else {m}, l, hv.map _, hd, hspan, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [he' γ (σ l) hγ]
    try exact Associated.refl _
  · intro m
    by_cases h : m = l
    · simp only [if_pos h, Finset.card_empty, zero_le, Finset.notMem_empty, not_false_eq_true,
        and_self]
    · simp only [if_neg h, Finset.card_singleton, le_refl, Finset.mem_singleton, true_and]
      exact fun h' => h h'.symm
  · intro m m' hne
    by_cases h1 : m = l
    · simp only [if_pos h1]; exact Finset.disjoint_empty_left _
    · by_cases h2 : m' = l
      · simp only [if_pos h2]; exact Finset.disjoint_empty_right _
      · simp only [if_neg h1, if_neg h2]; exact Finset.disjoint_singleton.mpr hne
  · intro m hm
    have h : m ≠ l := fun h => hm (Finset.mem_singleton.mpr h)
    simp only [if_neg h, Finset.prod_singleton]
    rw [he' (τ m) (σ m) (hτ m)]
    try exact Associated.refl _
  · intro m hm
    rw [Finset.mem_singleton] at hm
    subst hm
    rw [he' (τ m) (σ m) (hτ m), he' γ (σ m) hγ]
    simp only [eq_self_iff_true, if_true, ↓reduceIte, Finset.prod_empty, map_one, mul_one]
    try exact Associated.refl _
  · intro c hc
    by_cases h : c = l
    · exact Or.inl h
    · refine Or.inr ⟨c, by simp [h], Or.inr ?_⟩
      rw [← hb' c h]
      exact hc

theorem wcpa_dj_rtsxc_p1_node (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hb : 2 ≤ b l)
    (𝔔 : Ideal (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2))
    [𝔔.IsPrime]
    (h𝔔 : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2) c ∈ 𝔔 ↔
        ¬ IsUnit c)
    (hX : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0 ∈ 𝔔)
    (hY : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1 ∈ 𝔔) :
    wcpaDjRtsxcNd (Localization.AtPrime 𝔔)
      (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l)))
      {l} b :=
by

  have hxm : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hmax]; exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert _ _))
  have hσm : σ l ∈ IsLocalRing.maximalIdeal A := by
    rw [← hmax]; exact Ideal.subset_span (Set.mem_union_right _ ⟨l, rfl⟩)
  have hFm : x * y - v * ∏ m, σ m ^ b m ∈ IsLocalRing.maximalIdeal A := by
    refine Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hxm) (Ideal.mul_mem_left _ _ ?_)
    obtain ⟨c, hc⟩ := Finset.dvd_prod_of_mem (fun m => σ m ^ b m) (Finset.mem_univ l)
    rw [hc]
    exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ hσm _ (by omega))
  have hspan_le : Ideal.span {x * y - v * ∏ m, σ m ^ b m} ≤ IsLocalRing.maximalIdeal A :=
    Ideal.span_le.mpr (Set.singleton_subset_iff.mpr hFm)
  have hunit : ∀ a : A, ¬ IsUnit (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a) ↔
      a ∈ IsLocalRing.maximalIdeal A := by
    intro a
    constructor
    · intro h
      by_contra ha
      exact h ((IsLocalRing.notMem_maximalIdeal.mp ha).map _)
    · intro ha hu
      obtain ⟨w, hw⟩ := hu.exists_right_inv
      obtain ⟨a', rfl⟩ := Ideal.Quotient.mk_surjective w
      rw [← map_mul, ← map_one (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})),
        Ideal.Quotient.eq] at hw
      have h1 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
        have h2 := Ideal.sub_mem _ (Ideal.mul_mem_right a' _ ha) (hspan_le hw)
        rwa [sub_sub_cancel] at h2
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h1)

  obtain ⟨ψ, hψc, hψU, hψV⟩ : ∃ ψ : Polynomial (Polynomial A) →+*
      wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2,
      (∀ a, ψ (Polynomial.C (Polynomial.C a)) = algebraMap (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a)) ∧
      ψ (Polynomial.C Polynomial.X) =
        wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0 ∧
      ψ Polynomial.X =
        wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1 :=
    ⟨Polynomial.eval₂RingHom (Polynomial.eval₂RingHom
        ((algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)).comp
          (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0))
        (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1),
      fun a => by
        rw [Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C, Polynomial.coe_eval₂RingHom,
          Polynomial.eval₂_C, RingHom.comp_apply],
      by rw [Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C, Polynomial.coe_eval₂RingHom,
          Polynomial.eval₂_X],
      by rw [Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]⟩

  have hQ : Ideal.comap ((Polynomial.C : Polynomial A →+* Polynomial (Polynomial A)).comp
      (Polynomial.C : A →+* Polynomial A)) (𝔔.comap ψ) = IsLocalRing.maximalIdeal A := by
    ext a
    rw [Ideal.mem_comap, Ideal.mem_comap, RingHom.comp_apply, hψc, h𝔔, hunit]
  have hU : Polynomial.C Polynomial.X ∈ 𝔔.comap ψ := by rw [Ideal.mem_comap, hψU]; exact hX
  have hV : Polynomial.X ∈ 𝔔.comap ψ := by rw [Ideal.mem_comap, hψV]; exact hY

  have hsurj : Function.Surjective ψ := by
    refine wcpa_dj_rtsxc_p1n_chart_surj (wcpaDjP1Ring A x y v σ b) 2 (wcpaDjP1Gen A x y v σ b l) 2
      _ ψ ?_ ?_
    · intro a
      obtain ⟨a', rfl⟩ := Ideal.Quotient.mk_surjective a
      exact ⟨_, hψc a'⟩
    · intro k
      fin_cases k
      · exact ⟨_, hψU⟩
      · exact ⟨_, hψV⟩
      · refine ⟨1, ?_⟩
        rw [map_one]
        apply Subtype.ext
        exact (IsLocalization.mk'_self _ _).symm

  obtain ⟨hk1, hk2, hk3, hk4⟩ :=
    wcpa_dj_rtsxc_p1n_chart_kernel A n x y v σ b l hv hdim hmax hb ψ hψc hψU hψV
  generalize hb'def : Function.update b l (b l - 2) = b' at hk3 hk4
  have hb' : ∀ c, c ≠ l → b' c = b c := by
    intro c hc; rw [← hb'def]; exact Function.update_of_ne hc _ _
  obtain ⟨I, hIdef⟩ : ∃ I : Ideal (Polynomial (Polynomial A)), I = Ideal.span
      {wcpaDjP1nG1 A x (σ l), wcpaDjP1nG2 A y (σ l), wcpaDjP1nGs A v σ b'} := ⟨_, rfl⟩
  have hJker : Ideal.span {wcpaDjP1nG1 A x (σ l), wcpaDjP1nG2 A y (σ l)} ≤ RingHom.ker ψ := by
    rw [Ideal.span_le]
    rintro z (rfl | rfl)
    · exact RingHom.mem_ker.mpr hk1
    · exact RingHom.mem_ker.mpr hk2
  have hI : I ≤ RingHom.ker ψ := by
    rw [hIdef, Ideal.span_le]
    rintro z (rfl | rfl | rfl)
    · exact RingHom.mem_ker.mpr hk1
    · exact RingHom.mem_ker.mpr hk2
    · exact RingHom.mem_ker.mpr hk3

  have hsat : ∀ p, ψ p = 0 → ∃ k : ℕ, Polynomial.C (Polynomial.C (σ l)) ^ k * p ∈ I := by
    intro p hp
    obtain ⟨N, a, hNa⟩ := wcpa_dj_rtsxc_p1n_poly_reduce A (σ l) x y p
    have hd0 := RingHom.mem_ker.mp (hJker hNa)
    rw [map_sub, map_mul, hp, mul_zero, zero_sub, neg_eq_zero] at hd0
    have hJI : Ideal.span {wcpaDjP1nG1 A x (σ l), wcpaDjP1nG2 A y (σ l)} ≤ I := by
      rw [hIdef]
      apply Ideal.span_mono
      intro z hz
      rcases hz with h | h
      · exact Or.inl h
      · exact Or.inr (Or.inl h)
    have hcI : Polynomial.C (Polynomial.C a) ∈ I := by rw [hIdef]; exact hk4 a hd0
    refine ⟨N, ?_⟩
    have h2 := I.add_mem (hJI hNa) hcI
    rwa [sub_add_cancel] at h2


  obtain ⟨L, _, _, _⟩ : ∃ (L : Type u) (_ : CommRing L)
      (_ : Algebra (Polynomial (Polynomial A)) L), IsLocalization.AtPrime L (𝔔.comap ψ) :=
    ⟨Localization.AtPrime (𝔔.comap ψ), inferInstance, inferInstance, inferInstance⟩

  obtain ⟨hreg, hdimE, hmaxE⟩ :=
    wcpa_dj_rtsxc_p1n_reg_local A n x y σ l hdim hmax (𝔔.comap ψ) hU hV hQ L
  have := hreg
  have hvE : IsUnit (wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C v))) :=
    ((hv.map Polynomial.C).map Polynomial.C).map _
  obtain ⟨-, -, hnzd⟩ := wcpa_dj_rtsxc_model_nzd (wcpaDjP1nE A x y (σ l) L) n
    (wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X))
    (wcpaDjP1nMk A x y (σ l) L Polynomial.X)
    (wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C v)))
    (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m)))) b'
    hvE hdimE hmaxE

  have hImap : I.map (algebraMap (Polynomial (Polynomial A)) (L)) =
      wcpaDjP1nJ A x y (σ l) L ⊔ Ideal.span
        {algebraMap (Polynomial (Polynomial A)) (L)
          (wcpaDjP1nGs A v σ b')} := by
    rw [hIdef, Ideal.map_span, Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton]
    show _ = Ideal.span _ ⊔ _
    rw [← Ideal.span_union, Set.insert_union, Set.singleton_union]
  have hmapJ : Ideal.map (Ideal.Quotient.mk (wcpaDjP1nJ A x y (σ l) L))
      (Ideal.span {algebraMap (Polynomial (Polynomial A)) (L)
          (wcpaDjP1nGs A v σ b')}) =
      Ideal.span {wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X) *
          wcpaDjP1nMk A x y (σ l) L Polynomial.X -
        wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C v)) *
          ∏ m, wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))) ^ b' m} := by
    rw [Ideal.map_span, Set.image_singleton]
    refine congrArg (fun z => Ideal.span {z}) ?_
    show wcpaDjP1nMk A x y (σ l) L (wcpaDjP1nGs A v σ b') = _
    simp only [wcpaDjP1nGs, map_sub, map_mul, map_prod, map_pow]
  obtain ⟨Θ₂, hΘ₂⟩ : ∃ Θ₂ : (L ⧸
        I.map (algebraMap (Polynomial (Polynomial A)) (L))) ≃+*
      (wcpaDjP1nE A x y (σ l) L ⧸
        Ideal.span {wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X) *
          wcpaDjP1nMk A x y (σ l) L Polynomial.X -
        wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C v)) *
          ∏ m, wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))) ^ b' m}),
      ∀ p, Θ₂ (Ideal.Quotient.mk _
          (algebraMap (Polynomial (Polynomial A)) (L) p)) =
        Ideal.Quotient.mk _ (wcpaDjP1nMk A x y (σ l) L p) :=
    ⟨(Ideal.quotEquivOfEq hImap).trans
        ((DoubleQuot.quotQuotEquivQuotSup _ _).symm.trans (Ideal.quotEquivOfEq hmapJ)),
      fun p => by
        simp only [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
          DoubleQuot.quotQuotEquivQuotSup_symm_quotQuotMk, DoubleQuot.quotQuotMk,
          RingHom.comp_apply]⟩

  have hg : Ideal.Quotient.mk
      (I.map (algebraMap (Polynomial (Polynomial A)) (L)))
      (algebraMap (Polynomial (Polynomial A)) (L)
        (Polynomial.C (Polynomial.C (σ l)))) ∈
      nonZeroDivisors (L ⧸
        I.map (algebraMap (Polynomial (Polynomial A)) (L))) := by
    have h : Θ₂ (Ideal.Quotient.mk _
        (algebraMap (Polynomial (Polynomial A)) (L)
          (Polynomial.C (Polynomial.C (σ l))))) ∈ nonZeroDivisors _ := by
      rw [hΘ₂]; exact hnzd l
    rw [mem_nonZeroDivisors_iff] at h ⊢
    refine ⟨fun z hz => ?_, fun z hz => ?_⟩
    · apply Θ₂.injective; rw [map_zero]; apply h.1; rw [← map_mul Θ₂, hz, map_zero]
    · apply Θ₂.injective; rw [map_zero]; apply h.2; rw [← map_mul Θ₂, hz, map_zero]

  obtain ⟨Θ₁, hΘ₁⟩ := wcpa_dj_rtsxc_p1_present (Polynomial (Polynomial A))
    (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2) ψ hsurj I hI _
    hsat 𝔔 L hg

  refine wcpa_dj_rtsxc_p1n_nd_of_pres (Localization.AtPrime 𝔔) n _ _ l b b'
    (wcpaDjP1nE A x y (σ l) L)
    (wcpaDjP1nMk A x y (σ l) L (Polynomial.C Polynomial.X))
    (wcpaDjP1nMk A x y (σ l) L Polynomial.X)
    (wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C v)))
    (fun m => wcpaDjP1nMk A x y (σ l) L (Polynomial.C (Polynomial.C (σ m))))
    hvE hdimE hmaxE (Θ₁.trans Θ₂) ?_ ?_ hb'
  · intro m
    have e1 := hΘ₁ (Polynomial.C (Polynomial.C (σ m)))
    rw [hψc] at e1
    exact (congrArg Θ₂ e1).trans (hΘ₂ _)
  · have e1 := hΘ₁ (Polynomial.C (Polynomial.C (σ l)))
    rw [hψc] at e1
    exact (congrArg Θ₂ e1).trans (hΘ₂ _)

end GRWTSK.FiniteFieldWeil
