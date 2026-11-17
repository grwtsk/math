import WeilR2_Part41

/-!
# Prime axes and descent of unit-times-uniformizer decompositions

Source candidate split from `weil_conjecture_main.lean`, lines 6–405.
See the adjacent `KummerNodeAxisLocalization.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_stc_kmnb_axis_prime : (∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (h : A),
      h ∈ IsLocalRing.maximalIdeal A → h ≠ 0 →
      IsDomain (MvPowerSeries (Fin 2) A ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) ∧
      (∀ a : A, MvPowerSeries.C a ∈ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h} → a = 0) ∧
      MvPowerSeries.X 0 ∉ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h} ∧
      MvPowerSeries.X 1 ∉ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) →
    ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (t : Fin n → A),
    (n : WithBot ℕ∞) = ringKrullDim A → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A →
    ∀ (c : Fin n → ℕ) (v : Aˣ) (l : Fin n), c l = 0 → (∃ k, c k ≠ 0) →
    ∃ (P : Ideal (wcpaDjStcTuRing A t c v)) (_ : P.IsPrime),
      IsDomain (Localization.AtPrime P) ∧
      algebraMap _ (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ≠ 0 ∧
      ¬ IsUnit (algebraMap _ (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l)))) ∧
      (∀ z : Localization.AtPrime P, z ≠ 0 → ∃ (e : ℕ) (u : (Localization.AtPrime P)ˣ),
         z = u * algebraMap _ _
           (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ e) ∧
      IsUnit (algebraMap _ (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0))) ∧
      ∀ k, k ≠ l → IsUnit (algebraMap _ (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k)))) :=
by
  intro hs2 A _ _ n t hdim hspan c v l hcl hc0
  classical

  have transport : ∀ (B : Type u) [CommRing B], ∃ ψ : MvPowerSeries (Fin 2) B →+* MvPowerSeries ℕ B,
      (∀ b : B, ψ (MvPowerSeries.C b) = MvPowerSeries.C b) ∧
      ψ (MvPowerSeries.X (0 : Fin 2)) = MvPowerSeries.X (0 : ℕ) ∧
      ψ (MvPowerSeries.X (1 : Fin 2)) = MvPowerSeries.X (1 : ℕ) := by
    intro B _
    have ha : MvPowerSeries.HasSubst
        (fun i : Fin 2 => (MvPowerSeries.X (i : ℕ) : MvPowerSeries ℕ B)) :=
      MvPowerSeries.hasSubst_of_constantCoeff_zero (fun s => by simp)
    let φ := MvPowerSeries.substAlgHom (R := B) (S := B) ha
    have hC : ∀ b : B, φ (MvPowerSeries.C b) = MvPowerSeries.C b := fun b => by
      have := φ.commutes b
      first
        | simpa [MvPowerSeries.algebraMap_apply] using this
        | exact this
    have hX : ∀ i : Fin 2, φ (MvPowerSeries.X i) = MvPowerSeries.X (i : ℕ) :=
      MvPowerSeries.substAlgHom_X ha
    exact ⟨φ.toRingHom, hC, hX 0, hX 1⟩
  have tr : ∀ (B : Type u) [CommRing B] (ψ : MvPowerSeries (Fin 2) B →+* MvPowerSeries ℕ B),
      (∀ b : B, ψ (MvPowerSeries.C b) = MvPowerSeries.C b) →
      ψ (MvPowerSeries.X (0 : Fin 2)) = MvPowerSeries.X (0 : ℕ) →
      ψ (MvPowerSeries.X (1 : Fin 2)) = MvPowerSeries.X (1 : ℕ) →
      ∀ (h : B) (x : MvPowerSeries (Fin 2) B),
      x ∈ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) B)} →
      ψ x ∈ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries ℕ B)} := by
    intro B _ ψ hψC hψ0 hψ1 h x hx
    obtain ⟨g, rfl⟩ := Ideal.mem_span_singleton'.mp hx
    rw [map_mul, map_sub, map_mul, hψ0, hψ1, hψC]
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

  have s2 : ∀ (a : A) (F₀ F : MvPowerSeries (Fin 2) A),
      MvPowerSeries.map (Ideal.Quotient.mk (Ideal.span {a})) F ∈
        Ideal.span {MvPowerSeries.map (Ideal.Quotient.mk (Ideal.span {a})) F₀} →
      ∃ G H : MvPowerSeries (Fin 2) A, F = G * F₀ + MvPowerSeries.C a * H := by
    intro a F₀ F hF
    obtain ⟨Gb, hGb⟩ := Ideal.mem_span_singleton'.mp hF
    have hsurj := Ideal.Quotient.mk_surjective (I := Ideal.span {a})
    let G : MvPowerSeries (Fin 2) A := fun m => Function.surjInv hsurj (MvPowerSeries.coeff m Gb)
    have hG : MvPowerSeries.map (Ideal.Quotient.mk (Ideal.span {a})) G = Gb := by
      ext m
      rw [MvPowerSeries.coeff_map]
      exact Function.surjInv_eq hsurj _
    have hD : ∀ m, ∃ e : A, MvPowerSeries.coeff m (F - G * F₀) = a * e := by
      intro m
      have h1 : Ideal.Quotient.mk (Ideal.span {a}) (MvPowerSeries.coeff m (F - G * F₀)) = 0 := by
        rw [← MvPowerSeries.coeff_map, map_sub, map_mul, hG, hGb, sub_self, map_zero]
      rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton] at h1
      exact h1
    choose e he using hD
    let H : MvPowerSeries (Fin 2) A := e
    refine ⟨G, H, ?_⟩
    ext m
    have h2 : MvPowerSeries.coeff m H = e m := rfl
    have h3 := he m
    rw [map_sub] at h3
    rw [map_add, MvPowerSeries.coeff_C_mul, h2, ← h3]
    ring

  have s3 : ∀ (R : Type u) [CommRing R] [IsDomain R] [IsNoetherianRing R]
      (P : Ideal R) [P.IsPrime] (τ : R), τ ≠ 0 → τ ∈ P → P ≤ Ideal.span {τ} →
      IsDomain (Localization.AtPrime P) ∧
      algebraMap R (Localization.AtPrime P) τ ≠ 0 ∧
      ¬ IsUnit (algebraMap R (Localization.AtPrime P) τ) ∧
      (∀ z : Localization.AtPrime P, z ≠ 0 → ∃ (e : ℕ) (u : (Localization.AtPrime P)ˣ),
         z = u * algebraMap R (Localization.AtPrime P) τ ^ e) ∧
      ∀ r : R, r ∉ P → IsUnit (algebraMap R (Localization.AtPrime P) r) := by
    intro R _ _ _ P _ τ hτ0 hτP hPle
    have hdom : IsDomain (Localization.AtPrime P) :=
      IsLocalization.isDomain_localization (Ideal.primeCompl_le_nonZeroDivisors P)
    have hπ0 : algebraMap R (Localization.AtPrime P) τ ≠ 0 := by
      intro h0
      apply hτ0
      apply IsLocalization.injective (Localization.AtPrime P) (Ideal.primeCompl_le_nonZeroDivisors P)
      rw [h0, map_zero]
    have hunit : ∀ r : R, r ∉ P → IsUnit (algebraMap R (Localization.AtPrime P) r) := fun r hr =>
      (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime P) P r).mpr hr
    have hπnu : ¬ IsUnit (algebraMap R (Localization.AtPrime P) τ) := fun hu =>
      ((IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime P) P τ).mp hu) hτP
    have hm : IsLocalRing.maximalIdeal (Localization.AtPrime P) =
        Ideal.span {algebraMap R (Localization.AtPrime P) τ} := by
      rw [← IsLocalization.AtPrime.map_eq_maximalIdeal P (Localization.AtPrime P)]
      apply le_antisymm
      · calc Ideal.map (algebraMap R (Localization.AtPrime P)) P
            ≤ Ideal.map (algebraMap R (Localization.AtPrime P)) (Ideal.span {τ}) := Ideal.map_mono hPle
          _ = _ := by rw [Ideal.map_span, Set.image_singleton]
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.mem_map_of_mem _ hτP
    haveI : IsNoetherianRing (Localization.AtPrime P) :=
      IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
    refine ⟨hdom, hπ0, hπnu, ?_, hunit⟩
    intro z hz
    have hinf := Ideal.iInf_pow_eq_bot_of_isLocalRing
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (IsLocalRing.maximalIdeal.isMaximal _).ne_top
    rw [hm] at hinf
    have hex : ∃ e, z ∉ Ideal.span {algebraMap R (Localization.AtPrime P) τ ^ e} := by
      by_contra hcon
      push_neg at hcon
      apply hz
      have hz' : z ∈ ⨅ i, Ideal.span {algebraMap R (Localization.AtPrime P) τ} ^ i :=
        Ideal.mem_iInf.mpr (fun i => by rw [Ideal.span_singleton_pow]; exact hcon i)
      rw [hinf] at hz'
      exact (Ideal.mem_bot).mp hz'
    obtain ⟨e₀, he₀, hmin⟩ : ∃ e₀, z ∉ Ideal.span {algebraMap R (Localization.AtPrime P) τ ^ e₀} ∧
        ∀ m < e₀, z ∈ Ideal.span {algebraMap R (Localization.AtPrime P) τ ^ m} :=
      ⟨Nat.find hex, Nat.find_spec hex, fun m hm => not_not.mp (Nat.find_min hex hm)⟩
    obtain ⟨e, rfl⟩ : ∃ e, e₀ = e + 1 := by
      rcases e₀ with _ | e
      · exfalso
        apply he₀
        rw [pow_zero, Ideal.span_singleton_one]
        exact Submodule.mem_top
      · exact ⟨e, rfl⟩
    obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp (hmin e (Nat.lt_succ_self e))
    have hwu : IsUnit w := by
      by_contra hnu
      have hwm : w ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P) :=
        (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hnu)
      rw [hm] at hwm
      obtain ⟨w', hw'⟩ := Ideal.mem_span_singleton'.mp hwm
      apply he₀
      rw [Ideal.mem_span_singleton']
      refine ⟨w', ?_⟩
      rw [← hw, ← hw', pow_succ]
      ring
    exact ⟨e, hwu.unit, by rw [IsUnit.unit_spec]; exact hw.symm⟩

  obtain ⟨hAdom, htprime, htndvd⟩ := wcpa_dj_bko_regular_params A n t hdim hspan
  have htm : ∀ k, t k ∈ IsLocalRing.maximalIdeal A := fun k => by
    rw [← hspan]; exact Ideal.subset_span ⟨k, rfl⟩
  obtain ⟨h, hh⟩ : ∃ h : A, ↑v * ∏ k, t k ^ c k = h := ⟨_, rfl⟩
  have hh0 : h ≠ 0 := by
    rw [← hh]
    exact mul_ne_zero v.ne_zero
      (Finset.prod_ne_zero_iff.mpr (fun k _ => pow_ne_zero _ (htprime k).ne_zero))
  obtain ⟨k₀, hk₀⟩ := hc0
  have hhm : h ∈ IsLocalRing.maximalIdeal A := by
    obtain ⟨r, hr⟩ := (dvd_pow_self (t k₀) hk₀).trans
      (Finset.dvd_prod_of_mem (fun k => t k ^ c k) (Finset.mem_univ k₀))
    rw [← hh, hr]
    exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (htm k₀))
  have hreg0 := (wcpa_rs_quotient_regular A 1 (fun _ => ⟨t l, htm l⟩)
     ((wc_lpkt_cotangent_indep A n t hspan hdim.symm htm).comp (fun _ : Fin 1 => l)
       (Function.injective_of_subsingleton _))).1
  have hspan1 : Ideal.span (Set.range (fun _ : Fin 1 =>
      ((⟨t l, htm l⟩ : IsLocalRing.maximalIdeal A) : A))) = Ideal.span {t l} := by
    rw [Set.range_const]
  haveI hreg : IsRegularLocalRing (A ⧸ Ideal.span {t l}) := hspan1 ▸ hreg0
  have hqh0 : Ideal.Quotient.mk (Ideal.span {t l}) h ≠ 0 := by
    intro h0
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton, ← hh, Units.dvd_mul_left] at h0
    obtain ⟨k, -, hk⟩ := (htprime l).exists_mem_finset_dvd h0
    by_cases hkl : k = l
    · rw [hkl, hcl, pow_zero] at hk
      exact (htprime l).not_unit (isUnit_of_dvd_one hk)
    · exact htndvd l k (Ne.symm hkl) ((htprime l).dvd_of_dvd_pow hk)
  have hqtk : ∀ k, k ≠ l → Ideal.Quotient.mk (Ideal.span {t l}) (t k) ≠ 0 := by
    intro k hk h0
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton] at h0
    exact htndvd l k (Ne.symm hk) h0
  have hqhm : Ideal.Quotient.mk (Ideal.span {t l}) h ∈
      IsLocalRing.maximalIdeal (A ⧸ Ideal.span {t l}) := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    rintro ⟨u, hu⟩
    obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (↑u⁻¹ : A ⧸ Ideal.span {t l})
    have h1 : Ideal.Quotient.mk (Ideal.span {t l}) (h * b - 1) = 0 := by
      rw [map_sub, map_mul, map_one, hb, ← hu, Units.mul_inv, sub_self]
    rw [Ideal.Quotient.eq_zero_iff_mem] at h1
    have h2 : h * b - 1 ∈ IsLocalRing.maximalIdeal A :=
      ((Ideal.span_singleton_le_iff_mem _).mpr (htm l)) h1
    have h3 : IsUnit (h * b) := by
      by_contra hn
      have h4 : h * b ∈ IsLocalRing.maximalIdeal A :=
        (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hn)
      have h5 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
        have h6 := Ideal.sub_mem _ h4 h2
        rwa [sub_sub_cancel] at h6
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h5)
    exact mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hhm) (isUnit_of_mul_isUnit_left h3)

  unfold wcpaDjStcTuRing wcpaDjStcTuIdeal
  rw [hh]
  obtain ⟨hRdom, hCinj, -, -⟩ := hs2 A h hhm hh0
  obtain ⟨hRbdom, hCbinj, hXb0, -⟩ :=
    hs2 (A ⧸ Ideal.span {t l}) (Ideal.Quotient.mk (Ideal.span {t l}) h) hqhm hqh0
  haveI := hRbdom
  haveI := hRdom
  let φ : MvPowerSeries (Fin 2) A →+* (MvPowerSeries (Fin 2) (A ⧸ Ideal.span {t l}) ⧸
      Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
        MvPowerSeries.C (Ideal.Quotient.mk (Ideal.span {t l}) h) :
          MvPowerSeries (Fin 2) (A ⧸ Ideal.span {t l}))}) :=
    (Ideal.Quotient.mk _).comp (MvPowerSeries.map (σ := Fin 2) (Ideal.Quotient.mk (Ideal.span {t l})))
  have hφ : ∀ F, φ F = Ideal.Quotient.mk _
      (MvPowerSeries.map (Ideal.Quotient.mk (Ideal.span {t l})) F) := fun F => rfl
  have hmapF₀ : MvPowerSeries.map (Ideal.Quotient.mk (Ideal.span {t l}))
      (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) A) =
      MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (Ideal.Quotient.mk (Ideal.span {t l}) h) := by
    rw [map_sub, map_mul, MvPowerSeries.map_X, MvPowerSeries.map_X, MvPowerSeries.map_C]
  have hφF₀ : φ (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) = 0 := by
    rw [hφ, hmapF₀]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  have hφker : ∀ F ∈ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
      MvPowerSeries (Fin 2) A)}, φ F = 0 := by
    intro F hF
    obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.mp hF
    rw [map_mul, hφF₀, mul_zero]
  let χ := Ideal.Quotient.lift _ φ hφker
  have hχ : ∀ F, χ (Ideal.Quotient.mk _ F) = φ F := fun F => Ideal.Quotient.lift_mk _ _ _
  have hP : (RingHom.ker χ).IsPrime := RingHom.ker_isPrime χ
  have hτP : Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      MvPowerSeries.C h : MvPowerSeries (Fin 2) A)}) (MvPowerSeries.C (t l)) ∈ RingHom.ker χ := by
    rw [RingHom.mem_ker, hχ, hφ, MvPowerSeries.map_C,
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self (t l)), map_zero, map_zero]
  have hτ0 : Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      MvPowerSeries.C h : MvPowerSeries (Fin 2) A)}) (MvPowerSeries.C (t l)) ≠ 0 := by
    intro h0
    rw [Ideal.Quotient.eq_zero_iff_mem] at h0
    obtain ⟨ψ, hψC, hψ0, hψ1⟩ := transport A
    have h1 := tr A ψ hψC hψ0 hψ1 h _ h0
    rw [hψC] at h1
    exact (htprime l).ne_zero (hCinj _ h1)
  have hPle : RingHom.ker χ ≤ Ideal.span {Ideal.Quotient.mk (Ideal.span
      {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) A)})
      (MvPowerSeries.C (t l))} := by
    intro r hr
    obtain ⟨F, rfl⟩ := Ideal.Quotient.mk_surjective r
    rw [RingHom.mem_ker, hχ, hφ, Ideal.Quotient.eq_zero_iff_mem, ← hmapF₀] at hr
    obtain ⟨G, H, hGH⟩ := s2 (t l) _ F hr
    rw [Ideal.mem_span_singleton']
    refine ⟨Ideal.Quotient.mk _ H, ?_⟩
    rw [hGH, map_add, map_mul, map_mul,
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _), mul_zero, zero_add]
    exact mul_comm _ _
  haveI : IsNoetherianRing (MvPowerSeries (Fin 2) A) := wcpa_dj_nd_mvpowerseries_two_noetherian A
  haveI := hP
  obtain ⟨hLdom, hπ0, hπnu, hfac, hunit⟩ := s3 _ (RingHom.ker χ) _ hτ0 hτP hPle
  have hX0 : Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      MvPowerSeries.C h : MvPowerSeries (Fin 2) A)}) (MvPowerSeries.X 0) ∉ RingHom.ker χ := by
    rw [RingHom.mem_ker, hχ, hφ, MvPowerSeries.map_X, Ideal.Quotient.eq_zero_iff_mem]
    intro hm
    obtain ⟨ψ, hψC, hψ0, hψ1⟩ := transport (A ⧸ Ideal.span {t l})
    have h1 := tr _ ψ hψC hψ0 hψ1 _ _ hm
    rw [hψ0] at h1
    exact hXb0 h1
  have htk : ∀ k, k ≠ l → Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      MvPowerSeries.C h : MvPowerSeries (Fin 2) A)}) (MvPowerSeries.C (t k)) ∉ RingHom.ker χ := by
    intro k hk hmem
    rw [RingHom.mem_ker, hχ, hφ, MvPowerSeries.map_C, Ideal.Quotient.eq_zero_iff_mem] at hmem
    obtain ⟨ψ, hψC, hψ0, hψ1⟩ := transport (A ⧸ Ideal.span {t l})
    have h1 := tr _ ψ hψC hψ0 hψ1 _ _ hmem
    rw [hψC] at h1
    exact hqtk k hk (hCbinj _ h1)
  exact ⟨RingHom.ker χ, hP, hLdom, hπ0, hπnu, hfac, hunit _ hX0, fun k hk => hunit _ (htk k hk)⟩

theorem wcpa_dj_stc_kmnb_dvr_descent : ∀ (O R' T : Type u) [CommRing O] [IsNoetherianRing O]
    [CommRing R'] [CommRing T] [IsLocalRing T]
    (ι : O →+* R'), ι.Flat → ∀ (P : Ideal R') [P.IsPrime] (z : O),
    algebraMap R' (Localization.AtPrime P) (ι z) ≠ 0 →
    ¬ IsUnit (algebraMap R' (Localization.AtPrime P) (ι z)) →
    (∀ x : Localization.AtPrime P, x ≠ 0 → ∃ (e : ℕ) (u : (Localization.AtPrime P)ˣ),
       x = u * algebraMap R' (Localization.AtPrime P) (ι z) ^ e) →
    ∀ [Algebra O T] [IsLocalization.AtPrime T (P.comap ι)],
      algebraMap O T z ≠ 0 ∧ Ideal.span {algebraMap O T z} = IsLocalRing.maximalIdeal T ∧
      (∀ x : T, x ≠ 0 → ∃ (e : ℕ) (u : Tˣ), x = u * algebraMap O T z ^ e) ∧
      ∀ (x : O) (e : ℕ) (u : Tˣ), algebraMap O T x = u * algebraMap O T z ^ e →
        ∃ u' : (Localization.AtPrime P)ˣ, algebraMap R' (Localization.AtPrime P) (ι x) =
          u' * algebraMap R' (Localization.AtPrime P) (ι z) ^ e :=
by
  intro O R' T _ _ _ _ _ ι hι P _ z h1 h2 h3 _ _
  classical

  have hρflat : (Localization.localRingHom (P.comap ι) P ι rfl).Flat :=
    RingHom.Flat.localRingHom hι P (P.comap ι) rfl
  haveI hρloc : IsLocalHom (Localization.localRingHom (P.comap ι) P ι rfl) :=
    Localization.isLocalHom_localRingHom (P.comap ι) P ι rfl
  let ε : T ≃ₐ[O] Localization.AtPrime (P.comap ι) :=
    IsLocalization.algEquiv (P.comap ι).primeCompl T (Localization.AtPrime (P.comap ι))
  let f : T →+* Localization.AtPrime P :=
    (Localization.localRingHom (P.comap ι) P ι rfl).comp (ε : T →+* Localization.AtPrime (P.comap ι))
  have hcomp : ∀ a : O, f (algebraMap O T a) = algebraMap R' (Localization.AtPrime P) (ι a) := by
    intro a
    show (Localization.localRingHom (P.comap ι) P ι rfl) (ε (algebraMap O T a)) = _
    rw [AlgEquiv.commutes]
    exact Localization.localRingHom_to_map (P.comap ι) P ι rfl a
  have hfflat : f.Flat := RingHom.Flat.comp (RingHom.Flat.of_bijective ε.bijective) hρflat
  haveI hfloc : IsLocalHom f := by
    refine ⟨fun t ht => ?_⟩
    have hu1 : IsUnit (ε t) := isUnit_of_map_unit (Localization.localRingHom (P.comap ι) P ι rfl) _ ht
    have hu2 := hu1.map ε.symm
    simpa using hu2
  have hfϖ : f (algebraMap O T z) = algebraMap R' (Localization.AtPrime P) (ι z) := hcomp z

  have hmL : Ideal.span {algebraMap R' (Localization.AtPrime P) (ι z)} =
      IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
    apply le_antisymm
    · rw [Ideal.span_le, Set.singleton_subset_iff]
      exact (IsLocalRing.mem_maximalIdeal _).mpr h2
    · intro x hx
      by_cases hx0 : x = 0
      · rw [hx0]; exact Ideal.zero_mem _
      obtain ⟨e, u, rfl⟩ := h3 x hx0
      cases e with
      | zero =>
        exact absurd hx (IsLocalRing.notMem_maximalIdeal.mpr (by simp))
      | succ k =>
        exact Ideal.mem_span_singleton'.mpr
          ⟨u * algebraMap R' (Localization.AtPrime P) (ι z) ^ k, by ring⟩

  have hmT : Ideal.span {algebraMap O T z} = IsLocalRing.maximalIdeal T := by
    letI : Algebra T (Localization.AtPrime P) := f.toAlgebra
    haveI : Module.Flat T (Localization.AtPrime P) := hfflat
    haveI : IsLocalHom (algebraMap T (Localization.AtPrime P)) := hfloc
    haveI : Module.FaithfullyFlat T (Localization.AtPrime P) :=
      Module.FaithfullyFlat.of_flat_of_isLocalHom
    have e1 := Ideal.comap_map_eq_self_of_faithfullyFlat (A := T) (B := Localization.AtPrime P)
      (Ideal.span {algebraMap O T z})
    change Ideal.comap f (Ideal.map f (Ideal.span {algebraMap O T z})) = _ at e1
    rw [Ideal.map_span, Set.image_singleton, hfϖ, hmL] at e1
    rw [← e1]
    apply le_antisymm
    · apply IsLocalRing.le_maximalIdeal
      intro htop
      have h1m : (1 : T) ∈ Ideal.comap f (IsLocalRing.maximalIdeal (Localization.AtPrime P)) := by
        rw [htop]; trivial
      rw [Ideal.mem_comap, map_one] at h1m
      exact (IsLocalRing.mem_maximalIdeal _).mp h1m isUnit_one
    · intro x hx
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      exact (IsLocalRing.mem_maximalIdeal _).mp hx (isUnit_of_map_unit f x hu)

  haveI : IsNoetherianRing T :=
    IsLocalization.isNoetherianRing (P.comap ι).primeCompl T inferInstance

  have hC3 : ∀ x : T, x ≠ 0 → ∃ (e : ℕ) (u : Tˣ), x = u * algebraMap O T z ^ e := by
    intro x hx
    have hI : Ideal.span {algebraMap O T z} ≠ ⊤ := by
      rw [hmT]; exact Ideal.IsMaximal.ne_top inferInstance
    have hinf := Ideal.iInf_pow_eq_bot_of_isLocalRing (Ideal.span {algebraMap O T z}) hI
    have hex : ∃ n, x ∉ Ideal.span {algebraMap O T z} ^ n := by
      by_contra hcon
      push_neg at hcon
      apply hx
      have hmem : x ∈ ⨅ i, Ideal.span {algebraMap O T z} ^ i := Ideal.mem_iInf.mpr hcon
      rw [hinf] at hmem
      exact (Ideal.mem_bot).mp hmem
    have hn₀ := Nat.find_spec hex
    have hn₀0 : Nat.find hex ≠ 0 := by
      intro h; rw [h, pow_zero, Ideal.one_eq_top] at hn₀; exact hn₀ Submodule.mem_top
    obtain ⟨e, he⟩ := Nat.exists_eq_succ_of_ne_zero hn₀0
    have hxe : x ∈ Ideal.span {algebraMap O T z} ^ e :=
      not_not.mp (Nat.find_min hex (by omega))
    rw [Ideal.span_singleton_pow, Ideal.mem_span_singleton'] at hxe
    obtain ⟨y, hy⟩ := hxe
    have hyu : IsUnit y := by
      rw [← IsLocalRing.notMem_maximalIdeal, ← hmT]
      intro hym
      obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.mp hym
      apply hn₀
      rw [he, Ideal.span_singleton_pow, Ideal.mem_span_singleton']
      refine ⟨b, ?_⟩
      rw [pow_succ, ← hy, ← hb]
      ring
    exact ⟨e, hyu.unit, by rw [IsUnit.unit_spec, hy]⟩

  refine ⟨?_, hmT, hC3, ?_⟩
  · intro h0
    apply h1
    rw [← hfϖ, h0, map_zero]
  · intro x e u hx
    refine ⟨Units.map (f : T →* Localization.AtPrime P) u, ?_⟩
    rw [← hcomp x, hx, map_mul, map_pow, hfϖ, Units.coe_map]
    rfl

end GRWTSK.FiniteFieldWeil
