import GRWTSK.CommutativeAlgebra.KummerNodeCompletion

/-!
# Pullback of node models, completed local transport, and Kummer monomiality

Source candidate split from `weil_conjecture_main.lean`, lines 1930–4233.
See the adjacent `KummerBaseChange.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_stc_km_base_node : (∀ (A : Type u) [CommRing A] [IsRegularLocalRing A], wcpaDjStcToricUnitProp A) →
    ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjStcKmHyp k S Y sS g m τ W mD Dc N I O a →
    ∃ B₃ : ℕ, ∀ i₀ ∈ I, ∀ y : Y,
      (¬ ∃ W' : Y.Opens, y ∈ W' ∧ SmoothOfRelativeDimension 1 (W'.ι ≫ g)) →
      ∀ (n : ℕ) (t : Fin n → S.presheaf.stalk (g y)) (e : {i // g y ∈ Dc i} → Fin n)
        (J : Finset (Fin n)),
        wcpaDjStcSNCSys S mD Dc (g y) n t e → (∀ l, l ∈ J ↔ ∃ i, e i = l) →
        wcpaDjStcBaseMono k g m τ mD Dc I O a i₀ B₃ y n t J :=
by
  intro hTU k _ _ S Y _ _ sS g m τ W mD Dc N I O a hH
  classical
  obtain ⟨K, hK⟩ := wcpa_dj_stc_kmn_exponent_bound k S Y sS g m τ W mD Dc N I O a hH
  obtain ⟨Bc, hBc⟩ := wcpa_dj_stc_kmn_node_thickness k S Y sS g m τ W mD Dc N I O a hH
  refine ⟨2 * K + Bc, ?_⟩
  intro i₀ hi₀ y hy n t e J hsys hJ
  obtain ⟨c, v, e', hc0, hcJ, hcomp⟩ :=
    wcpa_dj_stc_kmn_normal_form k S Y sS g m τ W mD Dc N I O a hH y hy n t e J hsys hJ
  have hAB : ∀ i ∈ I, ∃ (num den : Y.presheaf.stalk y) (α : ℤ) (β : Fin n → ℤ),
      wcpaDjStcRatioLink (wcpaDjStcRatioSec k O a i₀ i) y num den ∧
      (∀ l, l ∉ J → β l = 0) ∧ (|α| ≤ 2 * (K : ℤ) ∧ ∀ l, |β l| ≤ (K : ℤ)) ∧
      wcpaDjStcMonRel (e'.symm (Ideal.Quotient.mk _ (MvPowerSeries.X 0)))
        (fun l => algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y))
            ((g.stalkMap y).hom (t l)))
        (algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y)) num)
        (algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y)) den)
        α β := by
    intro i hi
    obtain ⟨hη, hne⟩ :=
      wcpa_dj_stc_kmn_generic_ratio k S Y sS g m τ W mD Dc N I O a hH i₀ hi₀ i hi
    obtain ⟨num, den, hl, hd, hn⟩ :=
      wcpa_dj_stc_kmn_ratio_link Y _ (wcpaDjStcRatioSec k O a i₀ i) y hη
    have hn' := hn hne
    obtain ⟨α, β, hβJ, hMR⟩ := wcpa_dj_stc_kmn_toric_apply hTU k S Y sS g m τ W mD Dc N I O a
      hH i₀ hi₀ i hi y hy n t e J hsys hJ c v e' hc0 hcJ hcomp num den hl hn' hd
    exact ⟨num, den, α, β, hl, hβJ, hK i₀ hi₀ i hi y hy n t e J hsys hJ c v e' hc0 hcJ hcomp
      num den hl hn' hd α β hβJ hMR, hMR⟩
  choose! num den α β hlink hβJ hbd hMR using hAB
  have hBcz : (0 : ℤ) ≤ (Bc : ℤ) := Int.natCast_nonneg Bc
  refine ⟨fun i => if i ∈ I then α i else 0, fun i l => if i ∈ I then β i l else 0, c,
    ?_, ?_, ?_, ?_⟩
  · intro i
    by_cases hi : i ∈ I
    · simp only [if_pos hi]
      have h1 := (hbd i hi).1
      push_cast
      linarith
    · simp only [if_neg hi, abs_zero]
      positivity
  · intro i l
    by_cases hi : i ∈ I
    · simp only [if_pos hi]
      have h1 := (hbd i hi).2 l
      have hKz : (0 : ℤ) ≤ (K : ℤ) := Int.natCast_nonneg K
      push_cast
      linarith
    · simp only [if_neg hi, abs_zero]
      positivity
  · intro l
    have := hBc y hy n t e J hsys hJ c v e' hc0 hcJ hcomp l
    omega
  · refine ⟨hsys.1, hsys.2.1, ?_, ?_, hcJ, Or.inl ⟨hc0, v, e', hcomp, ?_⟩⟩
    · intro p' h
      constructor
      · intro hp
        obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hp
        have hgy : g y ∈ Dc i := h.mem_closed (hH.2.2.2.2.2.2.2.2.2.1.1 i) hi
        exact ⟨e ⟨i, hgy⟩, (hJ _).mpr ⟨_, rfl⟩, (hsys.2.2.2 ⟨i, hgy⟩ p' h).mp hi⟩
      · rintro ⟨j, hj, hmem⟩
        obtain ⟨ii, rfl⟩ := (hJ j).mp hj
        exact Set.mem_iUnion.mpr ⟨ii.1, (hsys.2.2.2 ii p' h).mpr hmem⟩
    · intro i l hne
      by_cases hi : i ∈ I
      · simp only [if_pos hi] at hne
        by_contra hl
        exact hne (hβJ i hi l hl)
      · simp only [if_neg hi] at hne
        exact absurd rfl hne
    · intro i hi
      refine ⟨num i, den i, hlink i hi, ?_⟩
      have e1 : (if i ∈ I then α i else 0) = α i := if_pos hi
      have e2 : (fun l => if i ∈ I then β i l else 0) = β i := funext fun l => if_pos hi
      simp only [e1, e2]
      exact hMR i hi

theorem wcpa_dj_stc_kt_pullback_stalks : ∀ (S Y S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S]
    [AlgebraicGeometry.IsIntegral Y] [AlgebraicGeometry.IsIntegral S''] (g : Y ⟶ S)
    (ρ : S'' ⟶ S) (U : S.Opens), Flat g → IsProper g → IsProper ρ → Surjective ρ → U ≠ ⊥ →
    SmoothOfRelativeDimension 1 (g ∣_ U) → GeometricallyConnected (g ∣_ U) →
    ∀ y : ↥(Limits.pullback g ρ), IsDomain ((Limits.pullback g ρ).presheaf.stalk y) ∧
      Function.Injective ((Limits.pullback.fst g ρ).stalkMap y).hom ∧
      Function.Injective ((Limits.pullback.snd g ρ).stalkMap y).hom :=
by
  intro S Y S'' _ _ _ g ρ U hflat _ _ hsurj hU hsm hgc y

  haveI hint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g U hflat hsurj hU hsm hgc

  have hinj : ∀ (X Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral X]
      [AlgebraicGeometry.IsIntegral Z] (f : X ⟶ Z), IsDominant f →
      ∀ x : X, Function.Injective (f.stalkMap x).hom := by
    intro X Z _ _ f hf x
    rw [injective_iff_map_eq_zero]
    intro b hb
    obtain ⟨V, hxV, s, rfl⟩ := Z.presheaf.exists_germ_eq b
    rw [Scheme.Hom.germ_stalkMap_apply] at hb
    have h0 : f.app V s = 0 := by
      apply germ_injective_of_isIntegral X x hxV
      rw [hb, map_zero]
    have hbot : Z.basicOpen s = ⊥ := by
      by_contra hne
      obtain ⟨p, hp⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hne
      obtain ⟨a, ha⟩ := f.denseRange.exists_mem_open (Z.basicOpen s).isOpen ⟨p, hp⟩
      have ha' : a ∈ f ⁻¹ᵁ Z.basicOpen s := ha
      rw [Scheme.preimage_basicOpen, h0, Scheme.basicOpen_zero] at ha'
      exact ha'
    rw [AlgebraicGeometry.basicOpen_eq_bot_iff] at hbot
    rw [hbot, map_zero]

  have hflatdom : ∀ (X Z : Scheme.{u}) [Nonempty X] [IrreducibleSpace Z] (f : X ⟶ Z),
      Flat f → IsDominant f := by
    intro X Z _ _ f hf
    have hgen := (Flat.generalizingMap f).stableUnderGeneralization_range
    obtain ⟨x₀⟩ := ‹Nonempty X›
    have hη : genericPoint Z ∈ Set.range f :=
      hgen (genericPoint_specializes (f x₀)) ⟨x₀, rfl⟩
    rw [isDominant_iff, DenseRange, dense_iff_closure_eq]
    apply Set.eq_univ_of_univ_subset
    rw [← (genericPoint_spec Z).def]
    exact closure_mono (Set.singleton_subset_iff.mpr hη)
  haveI := hsurj
  haveI := hflat
  have hfstdom : IsDominant (Limits.pullback.fst g ρ) := inferInstance
  have hsndflat : Flat (Limits.pullback.snd g ρ) := inferInstance
  haveI : Nonempty ↥(Limits.pullback g ρ) := ⟨y⟩
  refine ⟨inferInstance, hinj _ _ _ hfstdom y, hinj _ _ _ ?_ y⟩
  exact hflatdom _ _ _ hsndflat

theorem wcpa_dj_stc_kt_ratio_link_transport : ∀ (k : Type u) [Field k] {Y Y' : Scheme.{u}}
    (f : Y' ⟶ Y) (O : Y.Opens) {N : ℕ}
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (i₀ i : Fin (N + 1)) (y' : Y')
    (num den : Y.presheaf.stalk (f y')),
    IsDomain (Y'.presheaf.stalk y') → Function.Injective (f.stalkMap y').hom →
    wcpaDjStcRatioLink (wcpaDjStcRatioSec k O a i₀ i) (f y') num den →
    wcpaDjStcRatioLink (wcpaDjStcRatioSec k (f ⁻¹ᵁ O) ((f ∣_ O) ≫ a) i₀ i) y'
      ((f.stalkMap y').hom num) ((f.stalkMap y').hom den) :=
by
  intro k _ Y Y' f O N a i₀ i y' num den hdom hinj hlink
  obtain ⟨hden, hl⟩ := hlink
  have H : ∀ (U : (@Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra).Opens) (s : Γ(@Proj _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra, U))
      (w' : Y') (hw' : w' ∈ (f ⁻¹ᵁ O).ι ''ᵁ (((f ∣_ O) ≫ a) ⁻¹ᵁ U)),
      ∃ hw : f w' ∈ O.ι ''ᵁ (a ⁻¹ᵁ U),
        (Y'.presheaf.germ _ w' hw').hom (((f ⁻¹ᵁ O).ι.appIso _).inv.hom
          ((((f ∣_ O) ≫ a).app U).hom s)) =
        (f.stalkMap w').hom ((Y.presheaf.germ _ (f w') hw).hom
          ((O.ι.appIso _).inv.hom ((a.app U).hom s))) := by
    intro U s w' hw'
    have e : (f ⁻¹ᵁ O).ι ''ᵁ ((f ∣_ O) ⁻¹ᵁ (a ⁻¹ᵁ U)) = f ⁻¹ᵁ (O.ι ''ᵁ (a ⁻¹ᵁ U)) :=
      image_morphismRestrict_preimage f O (a ⁻¹ᵁ U)
    have hw'' : f w' ∈ O.ι ''ᵁ (a ⁻¹ᵁ U) := by
      have h5 : w' ∈ f ⁻¹ᵁ (O.ι ''ᵁ (a ⁻¹ᵁ U)) := by rw [← e]; exact hw'
      exact h5
    refine ⟨hw'', ?_⟩
    rw [Scheme.Opens.ι_appIso, Scheme.Opens.ι_appIso, Iso.refl_inv, Iso.refl_inv]
    have hw3 : w' ∈ (f ⁻¹ᵁ O).ι ''ᵁ ((f ∣_ O) ⁻¹ᵁ (a ⁻¹ᵁ U)) := by
      rw [e]; exact hw''
    have k1 : ∀ t : Γ(Y, O.ι ''ᵁ (a ⁻¹ᵁ U)),
        (Y'.presheaf.germ ((f ⁻¹ᵁ O).ι ''ᵁ ((f ∣_ O) ⁻¹ᵁ (a ⁻¹ᵁ U))) w' hw3).hom
          (((f ∣_ O).app (a ⁻¹ᵁ U)).hom t) =
        (f.stalkMap w').hom ((Y.presheaf.germ (O.ι ''ᵁ (a ⁻¹ᵁ U)) (f w') hw'').hom t) := by
      intro t
      have h2 : ((f ∣_ O).app (a ⁻¹ᵁ U)).hom t =
          (Y'.presheaf.map (eqToHom e).op).hom ((f.app (O.ι ''ᵁ (a ⁻¹ᵁ U))).hom t) :=
        congrArg (fun φ => φ.hom t) (morphismRestrict_app f O (a ⁻¹ᵁ U))
      rw [h2, TopCat.Presheaf.germ_res_apply]
      exact (Scheme.Hom.germ_stalkMap_apply f _ w' hw'' t).symm
    exact k1 ((a.app U).hom s)
  refine ⟨?_, ?_⟩
  · have h0 : den ≠ 0 := nonZeroDivisors.ne_zero hden
    have h1 : (f.stalkMap y').hom den ≠ 0 := (map_ne_zero_iff _ hinj).mpr h0
    exact mem_nonZeroDivisors_of_ne_zero h1
  · intro w' hw' h
    obtain ⟨hw, hg⟩ := H _ _ w' hw'
    have hb := hl (f w') hw (h.map f.continuous)
    have hb' := congrArg (f.stalkMap w').hom hb
    rw [map_mul] at hb'
    rw [show (Y'.presheaf.germ _ w' hw').hom
        (wcpaDjStcRatioSec k (f ⁻¹ᵁ O) ((f ∣_ O) ≫ a) i₀ i) = _ from hg]
    rw [← Scheme.Hom.stalkSpecializes_stalkMap_apply, ← Scheme.Hom.stalkSpecializes_stalkMap_apply]
    exact hb'

theorem wcpa_dj_stc_kt_section_point : ∀ (S Y S'' : Scheme.{u}) (g : Y ⟶ S) (ρ : S'' ⟶ S) (m : ℕ)
    (τ : Fin m → (S ⟶ Y)) (hτ : ∀ j, τ j ≫ g = 𝟙 S) (j : Fin m) (y : ↥(Limits.pullback g ρ)),
    Limits.pullback.fst g ρ y ∈ Set.range (τ j) →
    wcpaDjStcLift g ρ τ hτ j (Limits.pullback.snd g ρ y) = y :=
by
  intro S Y S'' g ρ m τ hτ j y hy
  obtain ⟨q, hq⟩ := hy
  have hfst : wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.fst g ρ = ρ ≫ τ j := by
    unfold wcpaDjStcLift; exact Limits.pullback.lift_fst _ _ _
  have hsnd : wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.snd g ρ = 𝟙 S'' := by
    unfold wcpaDjStcLift; exact Limits.pullback.lift_snd _ _ _
  have houter : IsPullback (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.snd g ρ) ρ ρ
      (τ j ≫ g) := by
    rw [hsnd, hτ j]; exact IsPullback.id_horiz ρ
  have hPB : IsPullback (wcpaDjStcLift g ρ τ hτ j) ρ (Limits.pullback.fst g ρ) (τ j) :=
    IsPullback.of_right houter hfst (IsPullback.of_hasPullback g ρ).flip
  obtain ⟨p, hp1, hp2⟩ := Scheme.exists_preimage_of_isPullback hPB y q hq.symm
  have hs : Limits.pullback.snd g ρ y = p := by
    rw [← hp1, ← Scheme.Hom.comp_apply, hsnd]; rfl
  rw [hs, hp1]

theorem wcpa_dj_stc_ktc_res_surj : ∀ (P Yr : Type u) [CommRing P] [IsLocalRing P]
    [IsNoetherianRing P] [CommRing Yr] [IsLocalRing Yr] [IsNoetherianRing Yr] (γ : P →+* Yr)
    (ι : Type) (F : MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal P) P))
    (e : AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr ≃+*
      (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal P) P) ⧸ Ideal.span {F})),
    e.toRingHom.comp ((algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr)).comp γ) =
      (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
        (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))) →
    ∀ b : Yr, ∃ c : P, b - γ c ∈ IsLocalRing.maximalIdeal Yr :=
by



  have hloc_all : ∀ (P : Type u) [CommRing P] [IsLocalRing P] [IsNoetherianRing P], ∃ (_ : IsLocalRing (AdicCompletion (IsLocalRing.maximalIdeal P) P)), IsAdicComplete (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P)) (AdicCompletion (IsLocalRing.maximalIdeal P) P) ∧ IsLocalHom (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) ∧ ∀ b : AdicCompletion (IsLocalRing.maximalIdeal P) P, ∃ a : P, b - algebraMap P _ a ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
    intro P _ _ _
    have hfg : (IsLocalRing.maximalIdeal P).FG := IsNoetherian.noetherian _
    have hcompl := AdicCompletion.isAdicComplete_self (IsLocalRing.maximalIdeal P) hfg
    have hmem : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal P) P,
        b ∈ Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P) ↔
        AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1 b = 0 := by
      intro b
      have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := P) (n := 1) hfg
      have h2 := Ideal.smul_top_eq_map (S := AdicCompletion (IsLocalRing.maximalIdeal P) P)
        (IsLocalRing.maximalIdeal P ^ 1)
      have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
      rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
      have e : Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P ^ 1) =
          Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P) := by rw [pow_one]
      rw [e] at h3
      exact h3
    have hlift : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal P) P, ∃ a : P,
        b - algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) a ∈
          Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
            (IsLocalRing.maximalIdeal P) := by
      intro b
      obtain ⟨a, ha⟩ := Submodule.Quotient.mk_surjective _
        (AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1 b)
      refine ⟨a, (hmem _).mpr ?_⟩
      rw [map_sub]
      have : AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1
          (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) a) =
          Submodule.Quotient.mk a := by
        change AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1
          (AdicCompletion.of (IsLocalRing.maximalIdeal P) P a) = _
        rw [AdicCompletion.eval_of]
        rfl
      rw [this, ha, sub_self]
    have hone : (1 : AdicCompletion (IsLocalRing.maximalIdeal P) P) ∉
        Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P) := by
      intro h
      rw [hmem, ← map_one (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))] at h
      change AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1
        (AdicCompletion.of (IsLocalRing.maximalIdeal P) P 1) = 0 at h
      rw [AdicCompletion.eval_of, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at h
      have hle : IsLocalRing.maximalIdeal P ^ 1 • (⊤ : Submodule P P) ≤
          IsLocalRing.maximalIdeal P := by
        rw [pow_one, Ideal.smul_eq_mul, Ideal.mul_top]
      exact (IsLocalRing.maximalIdeal.isMaximal P).ne_top ((Ideal.eq_top_iff_one _).mpr (hle h))
    have hnu : ∀ x ∈ Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
        (IsLocalRing.maximalIdeal P), ¬ IsUnit x := fun x hx hu =>
      hone (by rw [Ideal.eq_top_of_isUnit_mem _ hx hu]; trivial)
    have : Nontrivial (AdicCompletion (IsLocalRing.maximalIdeal P) P) :=
      nontrivial_of_ne 1 0 (fun h => hone (h ▸ Ideal.zero_mem _))
    have := hcompl
    have hjac := IsAdicComplete.le_jacobson_bot
      (Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
        (IsLocalRing.maximalIdeal P))
    have hdich : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal P) P,
        b ∈ Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P) ∨ IsUnit b := by
      intro b
      obtain ⟨a, ha⟩ := hlift b
      by_cases haM : a ∈ IsLocalRing.maximalIdeal P
      · left
        have := Ideal.add_mem _ ha (Ideal.mem_map_of_mem
          (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) haM)
        rwa [sub_add_cancel] at this
      · right
        have hu : IsUnit (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) a) :=
          (IsLocalRing.notMem_maximalIdeal.mp haM).map _
        obtain ⟨v, hv⟩ := hu.exists_right_inv
        have hx := Ideal.mem_jacobson_bot.mp (hjac ha) v
        have heq : (b - algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) a) * v + 1
            = b * v := by
          rw [sub_mul, hv]; ring
        rw [heq] at hx
        exact isUnit_of_mul_isUnit_left hx
    have hloc : IsLocalRing (AdicCompletion (IsLocalRing.maximalIdeal P) P) :=
      IsLocalRing.of_nonunits_add (fun x y hx hy =>
        hnu _ (Ideal.add_mem _ ((hdich x).resolve_right hx) ((hdich y).resolve_right hy)))
    refine ⟨hloc, ?_⟩
    have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) =
        Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P) := by
      ext z
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      exact ⟨fun h => (hdich z).resolve_right h, hnu z⟩
    rw [hmax]
    refine ⟨hcompl, ⟨fun a ha => ?_⟩, fun b => hlift b⟩
    by_contra hna
    exact hnu _ (Ideal.mem_map_of_mem _ ((IsLocalRing.mem_maximalIdeal _).mpr hna)) ha
  intro P Yr _ _ _ _ _ _ γ ι F e he b
  obtain ⟨hP, -, -, happrox⟩ := hloc_all P
  obtain ⟨hY, -⟩ := hloc_all Yr
  haveI := hP
  haveI := hY

  have hf0 : MvPowerSeries.constantCoeff F ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
    by_contra h
    have hu : IsUnit (MvPowerSeries.constantCoeff F) := IsLocalRing.notMem_maximalIdeal.mp h
    have hF : IsUnit F := MvPowerSeries.isUnit_iff_constantCoeff.mpr hu
    have htop : Ideal.span {F} = ⊤ := Ideal.span_singleton_eq_top.mpr hF
    have h1 : Ideal.Quotient.mk (Ideal.span {F}) 1 = 0 := by
      rw [Ideal.Quotient.eq_zero_iff_mem, htop]; exact Submodule.mem_top
    have h2 : (1 : AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) = 0 := by
      have := congrArg e.symm h1
      rwa [map_one, map_zero, map_one] at this
    exact one_ne_zero h2

  obtain ⟨H, hH⟩ := Ideal.Quotient.mk_surjective
    (e (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) b))
  obtain ⟨c, hc⟩ := happrox (MvPowerSeries.constantCoeff H)
  refine ⟨c, ?_⟩

  have hγ : e (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) (γ c)) =
      Ideal.Quotient.mk (Ideal.span {F})
        (MvPowerSeries.C (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) c)) := by
    have := RingHom.congr_fun he c
    simpa only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
      using this
  have hz : e (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) (b - γ c)) =
      Ideal.Quotient.mk (Ideal.span {F})
        (H - MvPowerSeries.C (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) c)) := by
    rw [map_sub, map_sub, map_sub, hγ, hH]

  by_contra hnot
  have hu : IsUnit (b - γ c) := IsLocalRing.notMem_maximalIdeal.mp hnot
  have hu2 : IsUnit (Ideal.Quotient.mk (Ideal.span {F})
      (H - MvPowerSeries.C (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) c))) := by
    rw [← hz]; exact (hu.map _).map _
  obtain ⟨u, hu3⟩ := hu2.exists_right_inv
  obtain ⟨K, rfl⟩ := Ideal.Quotient.mk_surjective u
  rw [← map_mul, ← map_one (Ideal.Quotient.mk (Ideal.span {F})), Ideal.Quotient.eq,
    Ideal.mem_span_singleton'] at hu3
  obtain ⟨L, hL⟩ := hu3
  have hcc := congrArg MvPowerSeries.constantCoeff hL
  simp only [map_sub, map_mul, map_one, MvPowerSeries.constantCoeff_C] at hcc
  have h1 : (1 : AdicCompletion (IsLocalRing.maximalIdeal P) P) ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
    have heq : (1 : AdicCompletion (IsLocalRing.maximalIdeal P) P) =
        (MvPowerSeries.constantCoeff H - algebraMap P _ c) * MvPowerSeries.constantCoeff K -
          MvPowerSeries.constantCoeff F * MvPowerSeries.constantCoeff L := by
      linear_combination hcc
    rw [heq]
    exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hc) (Ideal.mul_mem_right _ _ hf0)
  exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top ((Ideal.eq_top_iff_one _).mpr h1)

theorem wcpa_dj_stc_ktc_unique_point : ∀ (S Y S'' : Scheme.{u}) (g : Y ⟶ S) (ρ : S'' ⟶ S)
    (x : ↥(Limits.pullback g ρ)),
    (∀ b : Y.presheaf.stalk (Limits.pullback.fst g ρ x),
      ∃ c : S.presheaf.stalk (g (Limits.pullback.fst g ρ x)),
        b - (g.stalkMap (Limits.pullback.fst g ρ x)).hom c ∈
          IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ x))) →
    ∀ x' : ↥(Limits.pullback g ρ), Limits.pullback.fst g ρ x' = Limits.pullback.fst g ρ x →
      Limits.pullback.snd g ρ x' = Limits.pullback.snd g ρ x → x' = x :=
by
  intro S Y S'' g ρ x hRes x' h1 h2

  have hsurj : Function.Surjective
      (g.residueFieldMap (Limits.pullback.fst g ρ x)).hom := by
    intro κ
    obtain ⟨b, rfl⟩ := Y.residue_surjective (Limits.pullback.fst g ρ x) κ
    obtain ⟨c, hc⟩ := hRes b
    refine ⟨(S.residue _).hom c, ?_⟩
    have e1 := congrArg (fun φ => φ.hom c)
      (Scheme.residue_residueFieldMap g (Limits.pullback.fst g ρ x))
    simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e1
    rw [e1]
    have e2 : (Y.residue (Limits.pullback.fst g ρ x)).hom
        (b - (g.stalkMap (Limits.pullback.fst g ρ x)).hom c) = 0 :=
      (IsLocalRing.residue_eq_zero_iff _).mpr hc
    rw [map_sub, sub_eq_zero] at e2
    exact e2.symm

  set T := Scheme.Pullback.Triplet.ofPoint x with hT
  have key : ∀ {A B C : CommRingCat.{u}} (f : A ⟶ B) (f' : A ⟶ C),
      Function.Surjective f.hom → Function.Surjective (Limits.pushout.inr f f').hom := by
    intro A B C f f' hf
    have hinl := RingHom.IsStableUnderBaseChange.pushout_inl
      RingHom.surjective_isStableUnderBaseChange RingHom.surjective_respectsIso f' f hf
    have e := Limits.inl_comp_pushoutSymmetry_inv f f'
    rw [← e, CommRingCat.hom_comp]
    exact (ConcreteCategory.bijective_of_isIso (Limits.pushoutSymmetry f f').inv).2.comp hinl
  have hsub : Subsingleton ↥(Spec T.tensor) := by
    have hl1 : Function.Surjective
        ((Scheme.residueFieldCongr T.hx).inv ≫ g.residueFieldMap T.x).hom := by
      rw [CommRingCat.hom_comp]
      exact hsurj.comp
        (ConcreteCategory.bijective_of_isIso (Scheme.residueFieldCongr T.hx).inv).2
    have hinr := key _ ((Scheme.residueFieldCongr T.hy).inv ≫ ρ.residueFieldMap T.y) hl1
    constructor
    intro p q
    apply PrimeSpectrum.comap_injective_of_surjective _ hinr
    exact Subsingleton.elim _ _

  have hTT : Scheme.Pullback.Triplet.ofPoint x' = T := by
    apply Scheme.Pullback.Triplet.ext
    · simp only [hT, Scheme.Pullback.Triplet.ofPoint_x, h1]
    · simp only [hT, Scheme.Pullback.Triplet.ofPoint_y, h2]
  apply Scheme.Pullback.carrierEquiv.injective
  rw [Scheme.Pullback.carrierEquiv_eq_iff]
  have : Subsingleton ↥(Spec (Scheme.Pullback.carrierEquiv x).fst.tensor) := hsub
  exact ⟨hTT, Subsingleton.elim _ _⟩

theorem wcpa_dj_stc_ktc_stalk_up : ∀ (S Y S'' : Scheme.{u}) (g : Y ⟶ S) (ρ : S'' ⟶ S)
    (y : ↥(Limits.pullback g ρ))
    (hp : g (Limits.pullback.fst g ρ y) = ρ (Limits.pullback.snd g ρ y)),
    (∀ y' : ↥(Limits.pullback g ρ), Limits.pullback.fst g ρ y' = Limits.pullback.fst g ρ y →
      Limits.pullback.snd g ρ y' = Limits.pullback.snd g ρ y → y' = y) →
    ∀ (T : Type u) [CommRing T] [IsLocalRing T]
      (a : Y.presheaf.stalk (Limits.pullback.fst g ρ y) →+* T)
      (b : S''.presheaf.stalk (Limits.pullback.snd g ρ y) →+* T),
      IsLocalHom a → IsLocalHom b →
      a.comp (g.stalkMap (Limits.pullback.fst g ρ y)).hom =
        b.comp ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom.comp
          (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom) →
      ∃ χ : (Limits.pullback g ρ).presheaf.stalk y →+* T, IsLocalHom χ ∧
        χ.comp ((Limits.pullback.fst g ρ).stalkMap y).hom = a ∧
        χ.comp ((Limits.pullback.snd g ρ).stalkMap y).hom = b ∧
        ∀ χ' : (Limits.pullback g ρ).presheaf.stalk y →+* T, IsLocalHom χ' →
          χ'.comp ((Limits.pullback.fst g ρ).stalkMap y).hom = a →
          χ'.comp ((Limits.pullback.snd g ρ).stalkMap y).hom = b → χ' = χ :=
by
  intro S Y S'' g ρ y hp huniq T _ _ a b ha hb hab

  have s1 : ∀ {X Z : Scheme.{u}} (h : X ⟶ Z) (R : CommRingCat.{u}) (x : X)
      (f : X.presheaf.stalk x ⟶ R),
      Spec.map f ≫ X.fromSpecStalk x ≫ h = Spec.map (h.stalkMap x ≫ f) ≫ Z.fromSpecStalk (h x) := by
    intro X Z h R x f
    rw [← Scheme.SpecMap_stalkMap_fromSpecStalk, Spec.map_comp, Category.assoc]

  have s2 : ∀ (X : Scheme.{u}) (R : CommRingCat.{u}) (x : X) (f f' : X.presheaf.stalk x ⟶ R),
      Spec.map f ≫ X.fromSpecStalk x = Spec.map f' ≫ X.fromSpecStalk x → f = f' := by
    intro X R x f f' H
    exact Spec.map_injective ((cancel_mono _).mp H)

  have s3 : ∀ (X : Scheme.{u}) (R : CommRingCat.{u}) [IsLocalRing R] (x : X) (L : Spec R ⟶ X),
      L (IsLocalRing.closedPoint R) = x →
      ∃ χ : X.presheaf.stalk x ⟶ R, IsLocalHom χ.hom ∧ Spec.map χ ≫ X.fromSpecStalk x = L := by
    intro X R _ x L hx
    subst hx
    exact ⟨Scheme.stalkClosedPointTo L, inferInstance,
      Scheme.Spec_stalkClosedPointTo_fromSpecStalk L⟩

  have s4 : ∀ (X : Scheme.{u}) (R : CommRingCat.{u}) [IsLocalRing R] (x : X)
      (f : X.presheaf.stalk x ⟶ R),
      IsLocalHom f.hom → (Spec.map f ≫ X.fromSpecStalk x) (IsLocalRing.closedPoint R) = x := by
    intro X R _ x f hf
    show X.fromSpecStalk x ((Spec.map f) (IsLocalRing.closedPoint R)) = x
    erw [Spec_closedPoint, Scheme.fromSpecStalk_closedPoint]

  have K2 : ∀ (p q : S) (H : p = q),
      Spec.map (S.presheaf.stalkCongr (Inseparable.of_eq H)).hom ≫ S.fromSpecStalk p =
        S.fromSpecStalk q := by
    intro p q H
    rw [TopCat.Presheaf.stalkCongr_hom]
    exact Scheme.SpecMap_stalkSpecializes_fromSpecStalk _

  let R : CommRingCat.{u} := CommRingCat.of T
  let a₀ : Y.presheaf.stalk (Limits.pullback.fst g ρ y) ⟶ R := CommRingCat.ofHom a
  let b₀ : S''.presheaf.stalk (Limits.pullback.snd g ρ y) ⟶ R := CommRingCat.ofHom b
  have ha₀ : IsLocalHom a₀.hom := ha
  have hb₀ : IsLocalHom b₀.hom := hb
  have hab₀ : g.stalkMap (Limits.pullback.fst g ρ y) ≫ a₀ =
      (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom ≫
        ρ.stalkMap (Limits.pullback.snd g ρ y) ≫ b₀ := by
    apply CommRingCat.hom_ext
    rw [CommRingCat.hom_comp, CommRingCat.hom_comp, CommRingCat.hom_comp, RingHom.comp_assoc]
    exact hab
  let A : Spec R ⟶ Y := Spec.map a₀ ≫ Y.fromSpecStalk (Limits.pullback.fst g ρ y)
  let B : Spec R ⟶ S'' := Spec.map b₀ ≫ S''.fromSpecStalk (Limits.pullback.snd g ρ y)
  have w : A ≫ g = B ≫ ρ := by
    simp only [A, B, Category.assoc]
    rw [s1 g, s1 ρ, hab₀, Spec.map_comp, Category.assoc, K2 _ _ hp]
  let L : Spec R ⟶ Limits.pullback g ρ := Limits.pullback.lift A B w
  have hLf : L ≫ Limits.pullback.fst g ρ = A := Limits.pullback.lift_fst _ _ _
  have hLs : L ≫ Limits.pullback.snd g ρ = B := Limits.pullback.lift_snd _ _ _
  have hx₀ : L (IsLocalRing.closedPoint R) = y := by
    apply huniq
    · show (L ≫ Limits.pullback.fst g ρ) (IsLocalRing.closedPoint R) = _
      rw [hLf]
      exact s4 _ _ _ _ ha₀
    · show (L ≫ Limits.pullback.snd g ρ) (IsLocalRing.closedPoint R) = _
      rw [hLs]
      exact s4 _ _ _ _ hb₀
  obtain ⟨χ₀, hχ₀loc, hL⟩ := s3 _ R y L hx₀
  have hfst : (Limits.pullback.fst g ρ).stalkMap y ≫ χ₀ = a₀ := by
    apply s2
    rw [← s1 (Limits.pullback.fst g ρ) R y χ₀, ← Category.assoc, hL, hLf]
  have hsnd : (Limits.pullback.snd g ρ).stalkMap y ≫ χ₀ = b₀ := by
    apply s2
    rw [← s1 (Limits.pullback.snd g ρ) R y χ₀, ← Category.assoc, hL, hLs]
  refine ⟨χ₀.hom, hχ₀loc, ?_, ?_, ?_⟩
  · have := congrArg CommRingCat.Hom.hom hfst
    rw [CommRingCat.hom_comp] at this
    exact this
  · have := congrArg CommRingCat.Hom.hom hsnd
    rw [CommRingCat.hom_comp] at this
    exact this
  · intro χ' _ h1 h2
    let c₀ : (Limits.pullback g ρ).presheaf.stalk y ⟶ R := CommRingCat.ofHom χ'
    have e1 : (Limits.pullback.fst g ρ).stalkMap y ≫ c₀ = a₀ := by
      apply CommRingCat.hom_ext
      rw [CommRingCat.hom_comp]
      exact h1
    have e2 : (Limits.pullback.snd g ρ).stalkMap y ≫ c₀ = b₀ := by
      apply CommRingCat.hom_ext
      rw [CommRingCat.hom_comp]
      exact h2
    have hL' : Spec.map c₀ ≫ (Limits.pullback g ρ).fromSpecStalk y = L := by
      apply Limits.pullback.hom_ext
      · rw [Category.assoc, s1, e1, hLf]
      · rw [Category.assoc, s1, e2, hLs]
    have := s2 _ _ _ _ _ (hL'.trans hL.symm)
    exact congrArg CommRingCat.Hom.hom this

theorem wcpa_dj_stc_ktc_mvps_lift : ∀ (A T : Type u) [CommRing A] [CommRing T] [IsLocalRing T] (ι : Type) [Finite ι], IsAdicComplete (IsLocalRing.maximalIdeal T) T → ∀ (f : A →+* T) (x : ι → T), (∀ i, x i ∈ IsLocalRing.maximalIdeal T) → ∃ χ : MvPowerSeries ι A →+* T, χ.comp MvPowerSeries.C = f ∧ (∀ i, χ (MvPowerSeries.X i) = x i) ∧ ∀ H : MvPowerSeries ι A, χ H - f (MvPowerSeries.constantCoeff H) ∈ IsLocalRing.maximalIdeal T :=
by
  intro A T _ _ _ ι _ hT f x hx
  classical
  set I := IsLocalRing.maximalIdeal T with hI
  haveI : IsAdicComplete I T := hT

  have s1 : ∀ (K : ℕ) (p : MvPolynomial ι A), (∀ d ∈ p.support, ∃ i, K ≤ d i) →
      MvPolynomial.eval₂Hom f x p ∈ I ^ K := by
    intro K p hp
    rcases Nat.eq_zero_or_pos K with hK | hK
    · subst hK
      rw [pow_zero, Ideal.one_eq_top]
      exact Submodule.mem_top
    rw [MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_eq]
    apply Ideal.sum_mem
    intro d hd
    obtain ⟨i, hi⟩ := hp d hd
    have hid : i ∈ d.support := Finsupp.mem_support_iff.mpr (by omega)
    apply Ideal.mul_mem_left
    have h1 : x i ^ d i ∈ I ^ K := Ideal.pow_le_pow_right hi (Ideal.pow_mem_pow (hx i) _)
    obtain ⟨c, hc⟩ := Finset.dvd_prod_of_mem (fun j => x j ^ d j) hid
    rw [hc]
    exact Ideal.mul_mem_right _ _ h1

  have s2 : ∀ (b m : ι →₀ ℕ) (H K : MvPowerSeries ι A), m ≤ b →
      (MvPowerSeries.trunc' A b (H * K)).coeff m =
        (MvPowerSeries.trunc' A b H * MvPowerSeries.trunc' A b K).coeff m := by
    intro b m H K hm
    rw [MvPowerSeries.coeff_trunc', if_pos hm, MvPowerSeries.coeff_mul, MvPolynomial.coeff_mul]
    refine Finset.sum_congr rfl (fun pq hpq => ?_)
    rw [Finset.HasAntidiagonal.mem_antidiagonal] at hpq
    have h1 : pq.1 ≤ b := le_trans (by rw [← hpq]; exact le_self_add) hm
    have h2 : pq.2 ≤ b := le_trans (by rw [← hpq]; exact le_add_self) hm
    rw [MvPowerSeries.coeff_trunc', if_pos h1, MvPowerSeries.coeff_trunc', if_pos h2]

  have s3 : ∀ a c : T, (∀ N : ℕ, a - c ∈ I ^ N) → a = c := by
    intro a c h
    rw [← sub_eq_zero]
    apply IsHausdorff.haus' (I := I) (a - c)
    intro N
    rw [SModEq.zero, Ideal.smul_eq_mul, Ideal.mul_top]
    exact h N

  have s4 : ∀ (b : ι →₀ ℕ) (i : ι), 1 ≤ b i →
      MvPowerSeries.trunc' A b (MvPowerSeries.X i) = MvPolynomial.X i := by
    intro b i hb
    ext m
    rw [MvPowerSeries.coeff_trunc', MvPowerSeries.coeff_X, MvPolynomial.coeff_X']
    by_cases hm : m = Finsupp.single i 1
    · subst hm
      rw [if_pos (Finsupp.single_le_iff.mpr hb)]
    · have hm' : Finsupp.single i 1 ≠ m := fun h => hm h.symm
      rw [if_neg hm, if_neg hm', ite_self]

  obtain ⟨b, hb⟩ : ∃ b : ℕ → ι →₀ ℕ, ∀ N i, b N i = N :=
    ⟨fun N => Finsupp.equivFunOnFinite.symm (fun _ => N), fun N i => by simp⟩
  have B2 : ∀ N (d : ι →₀ ℕ), ¬ d ≤ b N → ∃ i, N ≤ d i := by
    intro N d hd
    by_contra hcon
    push_neg at hcon
    apply hd
    rw [Finsupp.le_def]
    intro i
    rw [hb]
    exact (hcon i).le
  have B3 : ∀ M N, M ≤ N → b M ≤ b N := by
    intro M N h
    rw [Finsupp.le_def]
    intro i
    rw [hb, hb]
    exact h

  have Emul : ∀ N (H K : MvPowerSeries ι A),
      MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) (H * K)) -
        MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) H) *
          MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) K) ∈ I ^ N := by
    intro N H K
    rw [← map_mul, ← map_sub]
    apply s1
    intro d hd
    rw [MvPolynomial.mem_support_iff] at hd
    apply B2
    intro hle
    apply hd
    rw [MvPolynomial.coeff_sub, s2 _ _ _ _ hle, sub_self]
  have Ecompat : ∀ M N, M ≤ N → ∀ H : MvPowerSeries ι A,
      MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) H) -
        MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b M) H) ∈ I ^ M := by
    intro M N hMN H
    rw [← map_sub]
    apply s1
    intro d hd
    rw [MvPolynomial.mem_support_iff] at hd
    apply B2
    intro hle
    apply hd
    have hle' : d ≤ b N := le_trans hle (B3 M N hMN)
    rw [MvPolynomial.coeff_sub, MvPowerSeries.coeff_trunc', if_pos hle',
      MvPowerSeries.coeff_trunc', if_pos hle, sub_self]
  have Econst : ∀ H : MvPowerSeries ι A,
      MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b 1) H) -
        f (MvPowerSeries.constantCoeff H) ∈ I ^ 1 := by
    intro H
    have e : f (MvPowerSeries.constantCoeff H) =
        MvPolynomial.eval₂Hom f x (MvPolynomial.C (MvPowerSeries.constantCoeff H)) := by
      rw [MvPolynomial.eval₂Hom_C]
    rw [e, ← map_sub]
    apply s1
    intro d hd
    rw [MvPolynomial.mem_support_iff] at hd
    by_contra hcon
    push_neg at hcon
    apply hd
    have hd0 : d = 0 := by
      ext i
      have := hcon i
      rw [Finsupp.coe_zero, Pi.zero_apply]
      omega
    subst hd0
    rw [MvPolynomial.coeff_sub, MvPowerSeries.coeff_trunc', if_pos (show (0 : ι →₀ ℕ) ≤ b 1 from zero_le),
      MvPolynomial.coeff_C, if_pos rfl, MvPowerSeries.coeff_zero_eq_constantCoeff_apply, sub_self]

  let χN : (N : ℕ) → MvPowerSeries ι A →+* T ⧸ I ^ N := fun N =>
    { toFun := fun H => Ideal.Quotient.mk (I ^ N)
        (MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) H))
      map_one' := by simp only [MvPowerSeries.trunc'_one, map_one]
      map_mul' := fun H K => by
        show Ideal.Quotient.mk (I ^ N)
            (MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) (H * K))) =
          Ideal.Quotient.mk (I ^ N) (MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) H)) *
          Ideal.Quotient.mk (I ^ N) (MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) K))
        rw [← map_mul, Ideal.Quotient.eq]
        exact Emul N H K
      map_zero' := by simp only [map_zero]
      map_add' := fun H K => by simp only [map_add] }
  have hχN : ∀ N H, χN N H = Ideal.Quotient.mk (I ^ N)
      (MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) H)) := fun _ _ => rfl
  have hcompat : ∀ {m n : ℕ} (hle : m ≤ n),
      (Ideal.Quotient.factorPow I hle).comp (χN n) = χN m := by
    intro m n hle
    refine RingHom.ext fun H => ?_
    rw [RingHom.comp_apply, hχN, hχN]
    erw [Ideal.Quotient.factor_mk]
    rw [Ideal.Quotient.eq]
    exact Ecompat m n hle H
  let χ := IsAdicComplete.liftRingHom I χN hcompat
  have star : ∀ N H, χ H -
      MvPolynomial.eval₂Hom f x (MvPowerSeries.trunc' A (b N) H) ∈ I ^ N := by
    intro N H
    rw [← Ideal.Quotient.eq]
    exact (IsAdicComplete.mk_liftRingHom I χN hcompat N H)
  refine ⟨χ, ?_, ?_, ?_⟩
  · refine RingHom.ext fun a => ?_
    apply s3
    intro N
    have := star N (MvPowerSeries.C a)
    rw [MvPowerSeries.trunc'_C, MvPolynomial.eval₂Hom_C] at this
    exact this
  · intro i
    apply s3
    intro N
    rcases Nat.eq_zero_or_pos N with hN | hN
    · subst hN
      rw [pow_zero, Ideal.one_eq_top]
      exact Submodule.mem_top
    have := star N (MvPowerSeries.X i)
    rw [s4 (b N) i (by rw [hb]; omega), MvPolynomial.eval₂Hom_X'] at this
    exact this
  · intro H
    have h1 := star 1 H
    have h2 := Econst H
    rw [pow_one] at h1 h2
    have := Ideal.add_mem _ h1 h2
    rw [sub_add_sub_cancel] at this
    exact this

theorem wcpa_dj_stc_ktc_mvps_ext : ∀ (A T : Type u) [CommRing A] [CommRing T] [IsLocalRing T] (ι : Type) [Finite ι], IsAdicComplete (IsLocalRing.maximalIdeal T) T → ∀ (χ₁ χ₂ : MvPowerSeries ι A →+* T), χ₁.comp MvPowerSeries.C = χ₂.comp MvPowerSeries.C → (∀ i, χ₁ (MvPowerSeries.X i) = χ₂ (MvPowerSeries.X i)) → (∀ i, χ₁ (MvPowerSeries.X i) ∈ IsLocalRing.maximalIdeal T) → χ₁ = χ₂ :=
by
  intro A T _ _ _ ι _ hT χ₁ χ₂ hC hX hm
  classical
  haveI := hT
  haveI := Fintype.ofFinite ι
  have s1 : ∀ (N : ℕ) (S : Finset ι) (G : MvPowerSeries ι A),
      (∀ d : ι →₀ ℕ, (∀ i ∈ S, d i ≤ N) → MvPowerSeries.coeff d G = 0) →
      G ∈ Ideal.span ((fun i : ι => (MvPowerSeries.X i : MvPowerSeries ι A) ^ (N + 1)) ''
        (S : Set ι)) := by
    intro N S
    induction S using Finset.induction_on with
    | empty =>
      intro G hG
      have hG0 : G = 0 := by
        ext d
        rw [hG d (by simp), map_zero]
      rw [hG0]
      exact Submodule.zero_mem _
    | insert a S' haS ih =>
      intro G hG
      let G₁ : MvPowerSeries ι A := fun d => if d a ≤ N then MvPowerSeries.coeff d G else 0
      have hG₁ : ∀ d, MvPowerSeries.coeff d G₁ =
          if d a ≤ N then MvPowerSeries.coeff d G else 0 := fun d => rfl
      have h2 : (MvPowerSeries.X a : MvPowerSeries ι A) ^ (N + 1) ∣ G - G₁ := by
        rw [MvPowerSeries.X_pow_dvd_iff]
        intro m hm'
        rw [map_sub, hG₁, if_pos (by omega), sub_self]
      have hmem2 : G - G₁ ∈ Ideal.span ((fun i : ι => (MvPowerSeries.X i : MvPowerSeries ι A) ^
          (N + 1)) '' ((insert a S' : Finset ι) : Set ι)) := by
        apply Ideal.mem_of_dvd _ h2
        apply Ideal.subset_span
        exact ⟨a, by simp, rfl⟩
      have hmem1 : G₁ ∈ Ideal.span ((fun i : ι => (MvPowerSeries.X i : MvPowerSeries ι A) ^
          (N + 1)) '' (S' : Set ι)) := by
        apply ih
        intro d hd
        rw [hG₁]
        split_ifs with hda
        · apply hG d
          intro i hi
          rcases Finset.mem_insert.mp hi with rfl | hi
          · exact hda
          · exact hd i hi
        · rfl
      have hle : Ideal.span ((fun i : ι => (MvPowerSeries.X i : MvPowerSeries ι A) ^ (N + 1)) ''
            (S' : Set ι)) ≤ Ideal.span ((fun i : ι => (MvPowerSeries.X i : MvPowerSeries ι A) ^
            (N + 1)) '' ((insert a S' : Finset ι) : Set ι)) :=
        Ideal.span_mono (Set.image_mono (by rw [Finset.coe_insert]; exact Set.subset_insert _ _))
      have hsplit : G = G₁ + (G - G₁) := by ring
      rw [hsplit]
      exact Ideal.add_mem _ (hle hmem1) hmem2
  have s5 : χ₁.comp (MvPolynomial.coeToMvPowerSeries.ringHom) =
      χ₂.comp (MvPolynomial.coeToMvPowerSeries.ringHom) := by
    apply MvPolynomial.ringHom_ext
    · intro r
      simp only [RingHom.comp_apply, MvPolynomial.coeToMvPowerSeries.ringHom_apply,
        MvPolynomial.coe_C]
      exact RingHom.congr_fun hC r
    · intro i
      simp only [RingHom.comp_apply, MvPolynomial.coeToMvPowerSeries.ringHom_apply,
        MvPolynomial.coe_X]
      exact hX i
  have s4 : ∀ (χ : MvPowerSeries ι A →+* T),
      (∀ i, χ (MvPowerSeries.X i) ∈ IsLocalRing.maximalIdeal T) → ∀ N : ℕ,
      Ideal.span ((fun i : ι => (MvPowerSeries.X i : MvPowerSeries ι A) ^ (N + 1)) ''
        ((Finset.univ : Finset ι) : Set ι)) ≤
        Ideal.comap χ (IsLocalRing.maximalIdeal T ^ (N + 1)) := by
    intro χ hχ N
    rw [Ideal.span_le]
    rintro _ ⟨i, -, rfl⟩
    rw [SetLike.mem_coe, Ideal.mem_comap, map_pow]
    exact Ideal.pow_mem_pow (hχ i) _
  have hm2 : ∀ i, χ₂ (MvPowerSeries.X i) ∈ IsLocalRing.maximalIdeal T := fun i => hX i ▸ hm i
  have s6 : ∀ (H : MvPowerSeries ι A) (N : ℕ),
      χ₁ H - χ₂ H ∈ IsLocalRing.maximalIdeal T ^ N := by
    intro H N
    obtain ⟨b, hb⟩ : ∃ b : ι →₀ ℕ, ∀ i, b i = N :=
      ⟨Finsupp.equivFunOnFinite.symm (fun _ => N), fun i => by simp⟩
    obtain ⟨p, hp⟩ : ∃ p : MvPolynomial ι A, p = MvPowerSeries.trunc' A b H := ⟨_, rfl⟩
    have hGmem := s1 N Finset.univ (H - (p : MvPowerSeries ι A)) (by
      intro d hd
      have hdb : d ≤ b := Finsupp.le_def.mpr (fun i => by rw [hb i]; exact hd i (Finset.mem_univ i))
      rw [map_sub, MvPolynomial.coeff_coe, hp, MvPowerSeries.coeff_trunc', if_pos hdb, sub_self])
    have h1 := s4 χ₁ hm N hGmem
    have h2 := s4 χ₂ hm2 N hGmem
    rw [Ideal.mem_comap] at h1 h2
    have hpq : χ₁ (p : MvPowerSeries ι A) = χ₂ p := by
      have := RingHom.congr_fun s5 p
      simpa only [RingHom.comp_apply, MvPolynomial.coeToMvPowerSeries.ringHom_apply] using this
    have hdiff : χ₁ H - χ₂ H = χ₁ (H - (p : MvPowerSeries ι A)) - χ₂ (H - (p : MvPowerSeries ι A)) := by
      rw [map_sub, map_sub, hpq]; ring
    rw [hdiff]
    exact Ideal.pow_le_pow_right (Nat.le_succ N) (Ideal.sub_mem _ h1 h2)
  refine RingHom.ext fun H => ?_
  have h0 : χ₁ H - χ₂ H = 0 := by
    apply IsHausdorff.haus' (I := IsLocalRing.maximalIdeal T)
    intro n
    rw [SModEq.zero, Ideal.smul_eq_mul, Ideal.mul_top]
    exact s6 H n
  exact sub_eq_zero.mp h0

theorem wcpa_dj_stc_ktc_mvps_maxpow_coeff : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (ι : Type) (k : ℕ) (f : MvPowerSeries ι B), f ∈ IsLocalRing.maximalIdeal (MvPowerSeries ι B) ^ k → ∀ α : ι →₀ ℕ, MvPowerSeries.coeff α f ∈ IsLocalRing.maximalIdeal B ^ (k - Finsupp.degree α) :=
by
  intro B _ _ ι k
  classical
  induction k with
  | zero =>
    intro f _ α
    simp
  | succ k ih =>
    intro f hf
    rw [pow_succ] at hf
    refine Submodule.mul_induction_on hf ?_ ?_
    · intro r hr s hs α
      rw [MvPowerSeries.coeff_mul]
      refine Ideal.sum_mem _ (fun p hp => ?_)
      replace hp : p.1 + p.2 = α := Finset.HasAntidiagonal.mem_antidiagonal.mp hp
      have hdeg : Finsupp.degree α = Finsupp.degree p.1 + Finsupp.degree p.2 := by
        rw [← hp, map_add]
      by_cases hb : p.2 = 0
      · have hs0 : MvPowerSeries.coeff p.2 s ∈ IsLocalRing.maximalIdeal B := by
          rw [hb, MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
          rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hs ⊢
          intro h
          exact hs (MvPowerSeries.isUnit_iff_constantCoeff.mpr h)
        have h1 := Ideal.mul_mem_mul (ih r hr p.1) hs0
        rw [← pow_succ] at h1
        refine Ideal.pow_le_pow_right ?_ h1
        have h0 : Finsupp.degree p.2 = 0 := by rw [hb, map_zero]
        omega
      · have hpos : Finsupp.degree p.2 ≠ 0 := fun h => hb ((Finsupp.degree_eq_zero_iff _).mp h)
        refine Ideal.pow_le_pow_right ?_ (Ideal.mul_mem_right _ _ (ih r hr p.1))
        omega
    · intro x y hx hy α
      rw [map_add]
      exact Ideal.add_mem _ (hx α) (hy α)

theorem wcpa_dj_stc_ktc_mvps_coeff_maxpow : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (ι : Type) [Finite ι] (k : ℕ) (f : MvPowerSeries ι B), (∀ α : ι →₀ ℕ, MvPowerSeries.coeff α f ∈ IsLocalRing.maximalIdeal B ^ (k - Finsupp.degree α)) → f ∈ IsLocalRing.maximalIdeal (MvPowerSeries ι B) ^ k :=
by
  intro B _ _ ι _ k f hf
  classical
  haveI := Fintype.ofFinite ι

  have hdecomp : ∀ f : MvPowerSeries ι B, ∃ g : ι → MvPowerSeries ι B,
      f = MvPowerSeries.C (MvPowerSeries.constantCoeff f) + ∑ i, MvPowerSeries.X i * g i ∧
      ∀ (i : ι) (β : ι →₀ ℕ), MvPowerSeries.coeff β (g i) = 0 ∨
        MvPowerSeries.coeff β (g i) = MvPowerSeries.coeff (β + Finsupp.single i 1) f := by
    intro f
    let piv : (ι →₀ ℕ) → Option ι := fun α =>
      if h : α.support.Nonempty then some h.choose else none
    have P1 : ∀ α j, piv α = some j → 1 ≤ α j := by
      intro α j h
      simp only [piv] at h
      split_ifs at h with hne
      cases h
      have := hne.choose_spec
      rw [Finsupp.mem_support_iff] at this
      omega
    have P2 : ∀ α : ι →₀ ℕ, α ≠ 0 → ∃ j, piv α = some j := by
      intro α hα
      have hne : α.support.Nonempty := Finsupp.support_nonempty_iff.mpr hα
      exact ⟨hne.choose, by simp only [piv, dif_pos hne]⟩
    let g : ι → MvPowerSeries ι B := fun i β =>
      if piv (β + Finsupp.single i 1) = some i then
        MvPowerSeries.coeff (β + Finsupp.single i 1) f else 0
    have hg : ∀ i β, MvPowerSeries.coeff β (g i) =
        if piv (β + Finsupp.single i 1) = some i then
          MvPowerSeries.coeff (β + Finsupp.single i 1) f else 0 := fun i β => rfl
    refine ⟨g, ?_, ?_⟩
    · ext α
      rw [map_add, map_sum, MvPowerSeries.coeff_C]
      have hterm : ∀ i, MvPowerSeries.coeff α (MvPowerSeries.X i * g i) =
          if 1 ≤ α i ∧ piv α = some i then MvPowerSeries.coeff α f else 0 := by
        intro i
        rw [MvPowerSeries.X_def, MvPowerSeries.coeff_monomial_mul, one_mul]
        by_cases h1 : Finsupp.single i 1 ≤ α
        · have h1' : 1 ≤ α i := Finsupp.single_le_iff.mp h1
          rw [if_pos h1, hg, tsub_add_cancel_of_le h1]
          by_cases h2 : piv α = some i
          · rw [if_pos h2, if_pos ⟨h1', h2⟩]
          · rw [if_neg h2, if_neg (fun h => h2 h.2)]
        · rw [if_neg h1, if_neg (fun h => h1 (Finsupp.single_le_iff.mpr h.1))]
      simp_rw [hterm]
      by_cases hα : α = 0
      · subst hα
        rw [if_pos rfl, MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
        rw [Finset.sum_eq_zero (fun i _ => if_neg (fun h => by simp at h)), add_zero]
      · rw [if_neg hα, zero_add]
        obtain ⟨j, hj⟩ := P2 α hα
        rw [Finset.sum_eq_single j]
        · rw [if_pos ⟨P1 α j hj, hj⟩]
        · intro i _ hij
          rw [if_neg]
          rintro ⟨_, h⟩
          rw [hj] at h
          exact hij (Option.some.inj h).symm
        · intro h; exact absurd (Finset.mem_univ j) h
    · intro i β
      rw [hg]
      split_ifs
      · right; rfl
      · left; rfl

  have hCmem : ∀ (j : ℕ) (b : B), b ∈ IsLocalRing.maximalIdeal B ^ j →
      MvPowerSeries.C b ∈ IsLocalRing.maximalIdeal (MvPowerSeries ι B) ^ j := by
    have hle : Ideal.map (MvPowerSeries.C : B →+* MvPowerSeries ι B) (IsLocalRing.maximalIdeal B)
        ≤ IsLocalRing.maximalIdeal (MvPowerSeries ι B) := by
      rw [Ideal.map_le_iff_le_comap]
      intro b hb
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
        MvPowerSeries.isUnit_iff_constantCoeff, MvPowerSeries.constantCoeff_C]
      exact mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hb)
    intro j b hb
    have h1 : (MvPowerSeries.C b : MvPowerSeries ι B) ∈
        Ideal.map (MvPowerSeries.C : B →+* MvPowerSeries ι B) (IsLocalRing.maximalIdeal B ^ j) :=
      Ideal.mem_map_of_mem _ hb
    rw [Ideal.map_pow] at h1
    exact Ideal.pow_right_mono hle j h1
  have hX : ∀ i, (MvPowerSeries.X i : MvPowerSeries ι B) ∈
      IsLocalRing.maximalIdeal (MvPowerSeries ι B) := by
    intro i
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, MvPowerSeries.isUnit_iff_constantCoeff,
      MvPowerSeries.constantCoeff_X]
    exact not_isUnit_zero

  have hdeg : ∀ (β : ι →₀ ℕ) (i : ι),
      Finsupp.degree (β + Finsupp.single i 1) = Finsupp.degree β + 1 := by
    intro β i
    rw [map_add, Finsupp.degree_single]
  have hdeg0 : Finsupp.degree (0 : ι →₀ ℕ) = 0 := map_zero _

  have main : ∀ (k : ℕ) (f : MvPowerSeries ι B), (∀ α : ι →₀ ℕ,
      MvPowerSeries.coeff α f ∈ IsLocalRing.maximalIdeal B ^ (k - Finsupp.degree α)) →
      f ∈ IsLocalRing.maximalIdeal (MvPowerSeries ι B) ^ k := by
    intro k
    induction k with
    | zero => intro f _; rw [pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top
    | succ k ih =>
      intro f hf
      obtain ⟨g, hfg, hgc⟩ := hdecomp f
      rw [hfg]
      refine Ideal.add_mem _ ?_ (Ideal.sum_mem _ fun i _ => ?_)
      · apply hCmem
        have := hf 0
        rwa [MvPowerSeries.coeff_zero_eq_constantCoeff_apply, hdeg0, Nat.sub_zero] at this
      · have hgi : g i ∈ IsLocalRing.maximalIdeal (MvPowerSeries ι B) ^ k := by
          apply ih
          intro β
          rcases hgc i β with h | h
          · rw [h]; exact Ideal.zero_mem _
          · rw [h]
            have := hf (β + Finsupp.single i 1)
            rwa [hdeg, Nat.add_sub_add_right] at this
        rw [pow_succ']
        exact Ideal.mul_mem_mul (hX i) hgi
  exact main k f hf

theorem wcpa_dj_stc_ktc_mvps_complete_of_filt : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (ι : Type), IsAdicComplete (IsLocalRing.maximalIdeal B) B → (∀ (k : ℕ) (f : MvPowerSeries ι B), f ∈ IsLocalRing.maximalIdeal (MvPowerSeries ι B) ^ k ↔ ∀ α : ι →₀ ℕ, MvPowerSeries.coeff α f ∈ IsLocalRing.maximalIdeal B ^ (k - Finsupp.degree α)) → IsAdicComplete (IsLocalRing.maximalIdeal (MvPowerSeries ι B)) (MvPowerSeries ι B) :=
by
  intro B _ _ ι hc hΦ
  have smod : ∀ {R : Type u} [CommRing R] (J : Ideal R) (n : ℕ) (x y : R),
      x ≡ y [SMOD J ^ n • (⊤ : Submodule R R)] ↔ x - y ∈ J ^ n := by
    intro R _ J n x y
    rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top]
  have htop : ∀ (x : B), x ∈ IsLocalRing.maximalIdeal B ^ 0 := by
    intro x
    rw [pow_zero, Ideal.one_eq_top]
    exact Submodule.mem_top
  haveI hH : IsHausdorff (IsLocalRing.maximalIdeal B) B := hc.toIsHausdorff
  haveI hP : IsPrecomplete (IsLocalRing.maximalIdeal B) B := hc.toIsPrecomplete
  have hA : IsHausdorff (IsLocalRing.maximalIdeal (MvPowerSeries ι B)) (MvPowerSeries ι B) := by
    refine ⟨fun x hx => ?_⟩
    refine MvPowerSeries.ext fun e => ?_
    rw [map_zero]
    refine IsHausdorff.haus' (I := IsLocalRing.maximalIdeal B) _ (fun j => ?_)
    refine (smod (IsLocalRing.maximalIdeal B) j _ _).2 ?_
    have h1 := (smod (IsLocalRing.maximalIdeal (MvPowerSeries ι B)) _ _ _).1
      (hx (j + Finsupp.degree e))
    rw [sub_zero] at h1
    have h2 := (hΦ _ _).1 h1 e
    rw [Nat.add_sub_cancel] at h2
    rw [sub_zero]; exact h2
  have hB : IsPrecomplete (IsLocalRing.maximalIdeal (MvPowerSeries ι B)) (MvPowerSeries ι B) := by
    refine ⟨fun F hF => ?_⟩
    have hcoef : ∀ e : ι →₀ ℕ, ∃ L : B, ∀ j,
        MvPowerSeries.coeff e (F (j + Finsupp.degree e)) ≡ L
          [SMOD IsLocalRing.maximalIdeal B ^ j • (⊤ : Submodule B B)] := by
      intro e
      refine IsPrecomplete.prec' (I := IsLocalRing.maximalIdeal B)
        (fun j => MvPowerSeries.coeff e (F (j + Finsupp.degree e))) (fun {m n} hmn => ?_)
      refine (smod (IsLocalRing.maximalIdeal B) m _ _).2 ?_
      have h1 := (smod (IsLocalRing.maximalIdeal (MvPowerSeries ι B)) _ _ _).1
        (hF (show m + Finsupp.degree e ≤ n + Finsupp.degree e by omega))
      have h2 := (hΦ _ _).1 h1 e
      rw [map_sub, Nat.add_sub_cancel] at h2
      exact h2
    choose L hL using hcoef
    let L' : MvPowerSeries ι B := L
    have hL' : ∀ e, MvPowerSeries.coeff e L' = L e := fun e => rfl
    refine ⟨L', fun n => ?_⟩
    refine (smod (IsLocalRing.maximalIdeal (MvPowerSeries ι B)) _ _ _).2 ((hΦ _ _).2 fun e => ?_)
    rw [map_sub, hL']
    by_cases hn : n ≤ Finsupp.degree e
    · rw [Nat.sub_eq_zero_of_le hn]; exact htop _
    · have h := (smod (IsLocalRing.maximalIdeal B) _ _ _).1 (hL e (n - Finsupp.degree e))
      rw [Nat.sub_add_cancel (by omega)] at h
      exact h
  exact { toIsHausdorff := hA, toIsPrecomplete := hB }

theorem wcpa_dj_stc_ktc_ring_transport : ∀ (P Yr S2 Y2 : Type u) [CommRing P] [IsLocalRing P]
    [IsNoetherianRing P] [CommRing Yr] [IsLocalRing Yr] [IsNoetherianRing Yr] [CommRing S2]
    [IsLocalRing S2] [IsNoetherianRing S2] [CommRing Y2] [IsLocalRing Y2] [IsNoetherianRing Y2]
    (γ : P →+* Yr) (ρ' : P →+* S2) (φ : Yr →+* Y2) (ψ : S2 →+* Y2),
    IsLocalHom γ → IsLocalHom ρ' → IsLocalHom φ → IsLocalHom ψ → φ.comp γ = ψ.comp ρ' →
    (∀ (T : Type u) [CommRing T] [IsLocalRing T] (a : Yr →+* T) (b : S2 →+* T),
      IsLocalHom a → IsLocalHom b → a.comp γ = b.comp ρ' →
      ∃ χ : Y2 →+* T, IsLocalHom χ ∧ χ.comp φ = a ∧ χ.comp ψ = b ∧
        ∀ χ' : Y2 →+* T, IsLocalHom χ' → χ'.comp φ = a → χ'.comp ψ = b → χ' = χ) →
    ∀ (ι : Type) [Finite ι] (F : MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal P) P))
      (e : AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr ≃+*
        (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal P) P) ⧸ Ideal.span {F})),
    e.toRingHom.comp ((algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr)).comp γ) =
      (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
        (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))) →
    ∃ (ρh : AdicCompletion (IsLocalRing.maximalIdeal P) P →+*
        AdicCompletion (IsLocalRing.maximalIdeal S2) S2)
      (φh : AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr →+*
        AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)
      (e'' : AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2 ≃+*
        (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) ⧸
          Ideal.span {MvPowerSeries.map ρh F})),
      ρh.comp (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) =
        (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)).comp ρ' ∧
      φh.comp (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr)) =
        (algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp φ ∧
      e''.toRingHom.comp ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ) =
        (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
          (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2))) ∧
      ∀ i, e''.symm (Ideal.Quotient.mk _ (MvPowerSeries.X i)) =
        φh (e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X i))) :=
by
  intro P Yr S2 Y2 _ _ _ _ _ _ _ _ _ _ _ _ γ ρ' φ ψ hγ hρ' hφ hψ hsq hUP ι _ F e he
  classical
  have hmax : ∀ {R : Type u} [CommRing R] [IsLocalRing R] (x : R),
      x ∈ IsLocalRing.maximalIdeal R ↔ ¬ IsUnit x := fun x => by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]

  obtain ⟨iP, cP, oP, -⟩ := wc_hnas_completion_local_complete P
  obtain ⟨iYr, cYr, oYr, -⟩ := wc_hnas_completion_local_complete Yr
  obtain ⟨iS2, cS2, oS2, -⟩ := wc_hnas_completion_local_complete S2
  obtain ⟨iY2, cY2, oY2, -⟩ := wc_hnas_completion_local_complete Y2
  haveI := iP
  haveI := iYr
  haveI := iS2
  haveI := iY2
  haveI := oP
  haveI := oYr
  haveI := oS2
  haveI := oY2
  obtain ⟨ρh, hρhl, hρh⟩ := wcpa_dj_stc_ktc_compl_lift P
    (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) cS2
    ((algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)).comp ρ') inferInstance
  obtain ⟨φh, hφhl, hφh⟩ := wcpa_dj_stc_ktc_compl_lift Yr
    (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) cY2
    ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp φ) inferInstance
  obtain ⟨ψh, hψhl, hψh⟩ := wcpa_dj_stc_ktc_compl_lift S2
    (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) cY2
    ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ) inferInstance
  haveI := hρhl
  haveI := hφhl
  haveI := hψhl

  have QL : ∀ {B : Type u} [CommRing B] [IsLocalRing B] (G : MvPowerSeries ι B),
      MvPowerSeries.constantCoeff G ∈ IsLocalRing.maximalIdeal B →
      ∀ H : MvPowerSeries ι B, IsUnit (Ideal.Quotient.mk (Ideal.span {G}) H) →
      IsUnit (MvPowerSeries.constantCoeff H) := by
    intro B _ _ G hG H hH
    obtain ⟨u, hu⟩ := hH
    obtain ⟨H', hH'⟩ := Ideal.Quotient.mk_surjective
      ((u⁻¹ : (MvPowerSeries ι B ⧸ Ideal.span {G})ˣ) : MvPowerSeries ι B ⧸ Ideal.span {G})
    have h1 : Ideal.Quotient.mk (Ideal.span {G}) (H * H') = Ideal.Quotient.mk _ 1 := by
      rw [map_mul, hH', ← hu, Units.mul_inv, map_one]
    rw [Ideal.Quotient.eq, Ideal.mem_span_singleton'] at h1
    obtain ⟨K, hK⟩ := h1
    have h2 := congrArg MvPowerSeries.constantCoeff hK
    simp only [map_mul, map_sub, map_one] at h2
    have h3 : MvPowerSeries.constantCoeff K * MvPowerSeries.constantCoeff G ∈
        IsLocalRing.maximalIdeal B := Ideal.mul_mem_left _ _ hG
    have h4 : IsUnit (MvPowerSeries.constantCoeff H * MvPowerSeries.constantCoeff H') := by
      by_contra hn
      have h5 := (hmax _).mpr hn
      have h6 : (1 : B) ∈ IsLocalRing.maximalIdeal B := by
        have h7 := Ideal.sub_mem _ h5 h3
        rwa [h2, sub_sub_cancel] at h7
      exact (hmax (1 : B)).mp h6 isUnit_one
    exact isUnit_of_mul_isUnit_left h4

  have hF0 : MvPowerSeries.constantCoeff F ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
    rw [hmax]
    intro hu
    have h1 : Ideal.span {F} = ⊤ :=
      Ideal.span_singleton_eq_top.mpr (MvPowerSeries.isUnit_iff_constantCoeff.mpr hu)
    haveI : Subsingleton (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal P) P) ⧸
        Ideal.span {F}) := Ideal.Quotient.subsingleton_iff.mpr h1
    haveI : Subsingleton (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) :=
      e.injective.subsingleton
    exact not_subsingleton _ ‹_›
  have hF''0 : MvPowerSeries.constantCoeff (MvPowerSeries.map ρh F) ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) := by
    rw [MvPowerSeries.constantCoeff_map]
    exact map_nonunit ρh _ hF0
  have hJ : Ideal.span {MvPowerSeries.map ρh F} ≠ ⊤ := by
    intro h
    rw [Ideal.span_singleton_eq_top, MvPowerSeries.isUnit_iff_constantCoeff] at h
    exact (hmax _).mp hF''0 h

  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) :=
    wc_hnas_completion_noetherian S2
  haveI : IsNoetherianRing (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)) :=
    MvPowerSeries.isNoetherianRing _
  haveI cMS : IsAdicComplete
      (IsLocalRing.maximalIdeal (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)))
      (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)) :=
    wcpa_dj_stc_ktc_mvps_complete_of_filt _ ι cS2 (fun k f =>
      ⟨wcpa_dj_stc_ktc_mvps_maxpow_coeff _ ι k f, wcpa_dj_stc_ktc_mvps_coeff_maxpow _ ι k f⟩)
  obtain ⟨iQ, cQ⟩ := wc_hnas_quotient_complete _ _ hJ
  haveI := iQ
  have hle : Ideal.span {F} ≤ Ideal.comap (MvPowerSeries.map ρh)
      (Ideal.span {MvPowerSeries.map ρh F}) := by
    rw [Ideal.span_singleton_le_iff_mem, Ideal.mem_comap]
    exact Ideal.subset_span (Set.mem_singleton _)
  obtain ⟨mapQ, hmapQ⟩ : ∃ m : (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal P) P) ⧸
        Ideal.span {F}) →+*
      (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) ⧸
        Ideal.span {MvPowerSeries.map ρh F}),
      ∀ H, m (Ideal.Quotient.mk _ H) = Ideal.Quotient.mk _ (MvPowerSeries.map ρh H) :=
    ⟨Ideal.quotientMap _ _ hle, fun H => Ideal.quotientMap_mk⟩
  have hmapQl : IsLocalHom mapQ := by
    refine ⟨fun q hq => ?_⟩
    obtain ⟨H, rfl⟩ := Ideal.Quotient.mk_surjective q
    rw [hmapQ] at hq
    have h1 := QL _ hF''0 _ hq
    rw [MvPowerSeries.constantCoeff_map] at h1
    have h2 := (isUnit_map_iff ρh _).mp h1
    exact (MvPowerSeries.isUnit_iff_constantCoeff.mpr h2).map _
  haveI := hmapQl
  have hbl : IsLocalHom ((Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F})).comp
      (MvPowerSeries.C.comp (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)))) := by
    refine ⟨fun s hs => ?_⟩
    have h1 := QL _ hF''0
      (MvPowerSeries.C (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) s)) hs
    rw [MvPowerSeries.constantCoeff_C] at h1
    exact (isUnit_map_iff (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)) s).mp h1
  have hXQ'' : ∀ i, ¬ IsUnit (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F})
      (MvPowerSeries.X i)) := by
    intro i h
    have h1 := QL _ hF''0 _ h
    rw [MvPowerSeries.constantCoeff_X] at h1
    exact not_isUnit_zero h1
  have hXQ : ∀ i, ¬ IsUnit (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i)) := by
    intro i h
    have h1 := QL _ hF0 _ h
    rw [MvPowerSeries.constantCoeff_X] at h1
    exact not_isUnit_zero h1
  have hel : IsLocalHom e.toRingHom := by
    refine ⟨fun x hx => ?_⟩
    have h := hx.map e.symm
    rwa [show e.symm (e.toRingHom x) = x from e.symm_apply_apply x] at h
  haveI := hel

  have hx : ∀ i, φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i))) ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) := by
    intro i
    rw [hmax]
    intro h
    have h1 := (isUnit_map_iff φh _).mp h
    have h2 := h1.map e
    rw [RingEquiv.apply_symm_apply] at h2
    exact hXQ i h2

  obtain ⟨Ψ₀, hΨ₀C, hΨ₀X, hΨ₀c⟩ := wcpa_dj_stc_ktc_mvps_lift
    (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)
    (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) ι cY2 ψh
    (fun i => φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i)))) hx
  have hΨ₀C' : ∀ a, Ψ₀ (MvPowerSeries.C a) = ψh a := fun a => RingHom.congr_fun hΨ₀C a
  have he' : ∀ p, e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.C
      (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p))) =
      algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) (γ p) := by
    intro p
    rw [RingEquiv.symm_apply_eq]
    exact (RingHom.congr_fun he p).symm
  have hcommon : ∀ p, ψh (ρh (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p)) =
      algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) (ψ (ρ' p)) := by
    intro p
    have h1 := RingHom.congr_fun hρh p
    have h2 := RingHom.congr_fun hψh (ρ' p)
    simp only [RingHom.comp_apply] at h1 h2
    rw [h1, h2]
  have hcommon2 : ∀ p, φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.C
      (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p)))) =
      algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) (ψ (ρ' p)) := by
    intro p
    have h1 := RingHom.congr_fun hφh (γ p)
    have h2 := RingHom.congr_fun hsq p
    simp only [RingHom.comp_apply] at h1 h2
    rw [he', h1, h2]
  have hconstL : ((Ψ₀.comp (MvPowerSeries.map ρh)).comp MvPowerSeries.C).comp
      (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) =
      ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ).comp ρ' := by
    refine RingHom.ext fun p => ?_
    show Ψ₀ (MvPowerSeries.map ρh (MvPowerSeries.C
      (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p))) = _
    rw [MvPowerSeries.map_C, hΨ₀C', hcommon]
    rfl
  have hconstR : ((φh.comp (e.symm.toRingHom.comp (Ideal.Quotient.mk (Ideal.span {F})))).comp
      MvPowerSeries.C).comp (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) =
      ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ).comp ρ' := by
    refine RingHom.ext fun p => ?_
    show φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.C
      (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p)))) = _
    rw [hcommon2]
    rfl
  have hΦ : Ψ₀.comp (MvPowerSeries.map ρh) =
      φh.comp (e.symm.toRingHom.comp (Ideal.Quotient.mk (Ideal.span {F}))) := by
    apply wcpa_dj_stc_ktc_mvps_ext (AdicCompletion (IsLocalRing.maximalIdeal P) P) _ ι cY2
    · apply wcpa_dj_stc_ktc_compl_ext P _ cY2
      · rw [hconstL, hconstR]
      · rw [hconstL]
        infer_instance
    · intro i
      show Ψ₀ (MvPowerSeries.map ρh (MvPowerSeries.X i)) =
        φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i)))
      rw [MvPowerSeries.map_X, hΨ₀X]
    · intro i
      show Ψ₀ (MvPowerSeries.map ρh (MvPowerSeries.X i)) ∈ _
      rw [MvPowerSeries.map_X, hΨ₀X]
      exact hx i
  have hkill : ∀ a ∈ Ideal.span {MvPowerSeries.map ρh F}, Ψ₀ a = 0 := by
    intro a ha
    obtain ⟨K, rfl⟩ := Ideal.mem_span_singleton'.mp ha
    have h1 := RingHom.congr_fun hΦ F
    have h2 : Ideal.Quotient.mk (Ideal.span {F}) F = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (Set.mem_singleton _))
    have h3 : Ψ₀ (MvPowerSeries.map ρh F) = 0 := by
      refine h1.trans ?_
      show φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) F)) = 0
      rw [h2, map_zero, map_zero]
    rw [map_mul, h3, mul_zero]
  obtain ⟨Ψ, hΨ⟩ : ∃ Ψ : (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) ⧸
        Ideal.span {MvPowerSeries.map ρh F}) →+* AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2,
      ∀ H, Ψ (Ideal.Quotient.mk _ H) = Ψ₀ H :=
    ⟨Ideal.Quotient.lift _ Ψ₀ hkill, fun H => Ideal.Quotient.lift_mk _ _ _⟩
  have hΨl : IsLocalHom Ψ := by
    refine ⟨fun q hq => ?_⟩
    obtain ⟨H, rfl⟩ := Ideal.Quotient.mk_surjective q
    rw [hΨ] at hq
    have h1 : IsUnit (ψh (MvPowerSeries.constantCoeff H)) := by
      by_contra hn
      have h2 := Ideal.add_mem _ (hΨ₀c H) ((hmax _).mpr hn)
      rw [sub_add_cancel] at h2
      exact (hmax _).mp h2 hq
    have h3 := (isUnit_map_iff ψh _).mp h1
    exact (MvPowerSeries.isUnit_iff_constantCoeff.mpr h3).map _
  haveI := hΨl
  have hΨmapQ : ∀ q, Ψ (mapQ q) = φh (e.symm q) := by
    intro q
    obtain ⟨H, rfl⟩ := Ideal.Quotient.mk_surjective q
    rw [hmapQ, hΨ]
    exact RingHom.congr_fun hΦ H

  have hab : (mapQ.comp (e.toRingHom.comp
      (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr)))).comp γ =
      ((Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F})).comp (MvPowerSeries.C.comp
        (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)))).comp ρ' := by
    refine RingHom.ext fun p => ?_
    have h1 := RingHom.congr_fun he p
    have h2 := RingHom.congr_fun hρh p
    simp only [RingHom.comp_apply] at h1 h2 ⊢
    rw [h1, hmapQ, MvPowerSeries.map_C, h2]
  obtain ⟨χ, hχl, hχφ, hχψ, -⟩ := hUP
    (MvPowerSeries ι (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) ⧸
      Ideal.span {MvPowerSeries.map ρh F})
    (mapQ.comp (e.toRingHom.comp
      (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr))))
    ((Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F})).comp (MvPowerSeries.C.comp
        (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2))))
    inferInstance hbl hab
  haveI := hχl
  obtain ⟨Θ, hΘl, hΘ⟩ := wcpa_dj_stc_ktc_compl_lift Y2 _ cQ χ hχl
  haveI := hΘl

  have hΘψh0 : (Θ.comp ψh).comp (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2)) =
      (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F})).comp (MvPowerSeries.C.comp
        (algebraMap S2 (AdicCompletion (IsLocalRing.maximalIdeal S2) S2))) := by
    refine RingHom.ext fun s => ?_
    have h1 := RingHom.congr_fun hψh s
    have h2 := RingHom.congr_fun hΘ (ψ s)
    have h3 := RingHom.congr_fun hχψ s
    simp only [RingHom.comp_apply] at h1 h2 h3 ⊢
    rw [h1, h2, h3]
  have hΘψh : Θ.comp ψh = (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F})).comp
      MvPowerSeries.C := by
    apply wcpa_dj_stc_ktc_compl_ext S2 _ cQ
    · rw [hΘψh0]
      rfl
    · rw [hΘψh0]
      exact hbl
  have hΘφh0 : (Θ.comp φh).comp (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr)) =
      mapQ.comp (e.toRingHom.comp
        (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr))) := by
    refine RingHom.ext fun y => ?_
    have h1 := RingHom.congr_fun hφh y
    have h2 := RingHom.congr_fun hΘ (φ y)
    have h3 := RingHom.congr_fun hχφ y
    simp only [RingHom.comp_apply] at h1 h2 h3 ⊢
    rw [h1, h2, h3]
  have hΘφh : Θ.comp φh = mapQ.comp e.toRingHom := by
    apply wcpa_dj_stc_ktc_compl_ext Yr _ cQ
    · rw [hΘφh0]
      rfl
    · rw [hΘφh0]
      infer_instance
  have hΘx : ∀ i, Θ (Ψ₀ (MvPowerSeries.X i)) =
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F}) (MvPowerSeries.X i) := by
    intro i
    rw [hΨ₀X]
    show Θ (φh (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i)))) = _
    have h1 := RingHom.congr_fun hΘφh
      (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i)))
    refine h1.trans ?_
    show mapQ (e (e.symm (Ideal.Quotient.mk (Ideal.span {F}) (MvPowerSeries.X i)))) = _
    rw [RingEquiv.apply_symm_apply, hmapQ, MvPowerSeries.map_X]
  have hΘΨ₀ : Θ.comp Ψ₀ = Ideal.Quotient.mk (Ideal.span {MvPowerSeries.map ρh F}) := by
    apply wcpa_dj_stc_ktc_mvps_ext (AdicCompletion (IsLocalRing.maximalIdeal S2) S2) _ ι cQ
    · rw [RingHom.comp_assoc, hΨ₀C, hΘψh]
    · intro i
      exact hΘx i
    · intro i
      show Θ (Ψ₀ (MvPowerSeries.X i)) ∈ _
      rw [hΘx]
      exact (hmax _).mpr (hXQ'' i)
  have hΘΨ : Θ.comp Ψ = RingHom.id _ := by
    apply Ideal.Quotient.ringHom_ext
    refine RingHom.ext fun H => ?_
    show Θ (Ψ (Ideal.Quotient.mk _ H)) = Ideal.Quotient.mk _ H
    rw [hΨ]
    exact RingHom.congr_fun hΘΨ₀ H

  have hab2 : ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp φ).comp γ =
      ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ).comp ρ' := by
    refine RingHom.ext fun p => ?_
    have h := RingHom.congr_fun hsq p
    simp only [RingHom.comp_apply] at h ⊢
    rw [h]
  obtain ⟨χ₀, -, -, -, huniq⟩ := hUP (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)
    ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp φ)
    ((algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ)
    inferInstance inferInstance hab2
  have hΨχφ : (Ψ.comp χ).comp φ =
      (algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp φ := by
    refine RingHom.ext fun y => ?_
    have h3 := RingHom.congr_fun hχφ y
    have h4 := RingHom.congr_fun hφh y
    simp only [RingHom.comp_apply] at h3 h4 ⊢
    rw [h3, hΨmapQ]
    show φh (e.symm (e (algebraMap Yr (AdicCompletion (IsLocalRing.maximalIdeal Yr) Yr) y))) = _
    rw [RingEquiv.symm_apply_apply]
    exact h4
  have hΨχψ : (Ψ.comp χ).comp ψ =
      (algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2)).comp ψ := by
    refine RingHom.ext fun s => ?_
    have h3 := RingHom.congr_fun hχψ s
    have h4 := RingHom.congr_fun hψh s
    simp only [RingHom.comp_apply] at h3 h4 ⊢
    rw [h3, hΨ, hΨ₀C']
    exact h4
  have hΨχ : Ψ.comp χ = algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) := by
    have h1 := huniq (Ψ.comp χ) inferInstance hΨχφ hΨχψ
    have h2 := huniq (algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2))
      inferInstance rfl rfl
    exact h1.trans h2.symm
  have hΨΘ : Ψ.comp Θ = RingHom.id _ := by
    apply wcpa_dj_stc_ktc_compl_ext Y2 _ cY2
    · rw [RingHom.comp_assoc, hΘ, hΨχ, RingHom.id_comp]
    · rw [RingHom.comp_assoc, hΘ, hΨχ]
      exact oY2

  refine ⟨ρh, φh, RingEquiv.ofRingHom Θ Ψ hΘΨ hΨΘ, hρh, hφh, ?_, ?_⟩
  · refine RingHom.ext fun s => ?_
    show Θ (algebraMap Y2 (AdicCompletion (IsLocalRing.maximalIdeal Y2) Y2) (ψ s)) = _
    exact (RingHom.congr_fun hΘ (ψ s)).trans (RingHom.congr_fun hχψ s)
  · intro i
    rw [RingEquiv.ofRingHom_symm_apply, hΨ, hΨ₀X]

theorem wcpa_dj_stc_kt_completed_transport : ∀ (k : Type u) [Field k] (S Y S'' : Scheme.{u})
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (ρ : S'' ⟶ S),
    wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (g ≫ sS) → wcpaDjIsProjOver k (ρ ≫ sS) →
    ∀ (y : ↥(Limits.pullback g ρ))
      (hp : g (Limits.pullback.fst g ρ y) = ρ (Limits.pullback.snd g ρ y))
      (ι : Type) [Finite ι]
      (F : MvPowerSeries ι (AdicCompletion
        (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
        (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))))
      (e : AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
          (Y.presheaf.stalk (Limits.pullback.fst g ρ y)) ≃+*
        (MvPowerSeries ι (AdicCompletion
          (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
          (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))) ⧸ Ideal.span {F})),
      e.toRingHom.comp ((algebraMap (Y.presheaf.stalk (Limits.pullback.fst g ρ y))
          (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))).comp
          (g.stalkMap (Limits.pullback.fst g ρ y)).hom) =
        (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
          (algebraMap (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))
            (AdicCompletion
              (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
              (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))))) →
      ∃ (ρh : AdicCompletion
            (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
            (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))) →+*
          AdicCompletion (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
            (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
        (φh : AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)) →+*
          AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))
        (e'' : AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y) ≃+*
          (MvPowerSeries ι (AdicCompletion
            (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
            (S''.presheaf.stalk (Limits.pullback.snd g ρ y))) ⧸
              Ideal.span {MvPowerSeries.map ρh F})),
        ρh.comp (algebraMap (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))
            (AdicCompletion
              (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
              (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))) =
          (algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
            (AdicCompletion
              (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))).comp
            ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom.comp
              (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom) ∧
        φh.comp (algebraMap (Y.presheaf.stalk (Limits.pullback.fst g ρ y))
            (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
              (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))) =
          (algebraMap ((Limits.pullback g ρ).presheaf.stalk y)
            (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
              ((Limits.pullback g ρ).presheaf.stalk y))).comp
            ((Limits.pullback.fst g ρ).stalkMap y).hom ∧
        e''.toRingHom.comp ((algebraMap ((Limits.pullback g ρ).presheaf.stalk y)
            (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
              ((Limits.pullback g ρ).presheaf.stalk y))).comp
            ((Limits.pullback.snd g ρ).stalkMap y).hom) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
              (AdicCompletion
                (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
                (S''.presheaf.stalk (Limits.pullback.snd g ρ y))))) ∧
        ∀ i, e''.symm (Ideal.Quotient.mk _ (MvPowerSeries.X i)) =
          φh (e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X i))) :=
by
  intro k _ S Y S'' sS g ρ hS hY hρS y hp ι _ F e he

  haveI : IsProper sS := wcpa_dj_proj_proper k sS hS
  haveI : IsProper (g ≫ sS) := wcpa_dj_proj_proper k _ hY
  haveI : IsProper (ρ ≫ sS) := wcpa_dj_proj_proper k _ hρS
  haveI : IsLocallyNoetherian S := LocallyOfFiniteType.isLocallyNoetherian sS
  haveI : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian (g ≫ sS)
  haveI : IsLocallyNoetherian S'' := LocallyOfFiniteType.isLocallyNoetherian (ρ ≫ sS)
  haveI : LocallyOfFiniteType g := locallyOfFiniteType_of_comp g sS
  haveI : IsLocallyNoetherian (Limits.pullback g ρ) :=
    LocallyOfFiniteType.isLocallyNoetherian (Limits.pullback.snd g ρ)

  have hsq : ((Limits.pullback.fst g ρ).stalkMap y).hom.comp
        (g.stalkMap (Limits.pullback.fst g ρ y)).hom =
      ((Limits.pullback.snd g ρ).stalkMap y).hom.comp
        ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom.comp
          (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom) := by
    refine RingHom.ext fun b => ?_
    have key := Scheme.Hom.stalkMap_congr_hom _ _ (Limits.pullback.condition (f := g) (g := ρ)) y
    rw [Scheme.Hom.stalkMap_comp, Scheme.Hom.stalkMap_comp] at key
    exact congrArg (fun φ => φ.hom b) key
  haveI : IsLocalHom (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom :=
    isLocalHom_of_isIso _
  haveI hρ'loc : IsLocalHom ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom.comp
      (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom) := inferInstance

  have hres := wcpa_dj_stc_ktc_res_surj _ _ (g.stalkMap (Limits.pullback.fst g ρ y)).hom ι F e he
  have huniq := wcpa_dj_stc_ktc_unique_point S Y S'' g ρ y hres
  have hUP := wcpa_dj_stc_ktc_stalk_up S Y S'' g ρ y hp huniq

  exact wcpa_dj_stc_ktc_ring_transport _ _ _ _ _ _ _ _ inferInstance hρ'loc inferInstance
    inferInstance hsq hUP ι F e he

theorem wcpa_dj_stc_km_transport : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjStcKmHyp k S Y sS g m τ W mD Dc N I O a →
    ∀ (B₀ d B : ℕ) (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S)
      (D'' : Set S'') (hτ : ∀ j, τ j ≫ g = 𝟙 S),
      wcpaDjIsProjOver k (ρ ≫ sS) → IsProper ρ → Surjective ρ →
      (∃ V : S.Opens, V ≠ ⊥ ∧ IsFinite (ρ ∣_ V)) →
      (∀ s : S'', IsRegularLocalRing (S''.presheaf.stalk s)) → wcpaDjSNCSet S'' D'' →
      ⇑ρ ⁻¹' (⋃ i, Dc i) ⊆ D'' → wcpaDjKummerOrd ρ mD Dc D'' d B →
      ∀ i₀ ∈ I, ∀ y : ↥(Limits.pullback g ρ),
      ∀ (n : ℕ) (t : Fin n → S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))
        (e : {i // g (Limits.pullback.fst g ρ y) ∈ Dc i} → Fin n) (J : Finset (Fin n)),
        wcpaDjStcSNCSys S mD Dc (g (Limits.pullback.fst g ρ y)) n t e →
        (∀ l, l ∈ J ↔ ∃ i, e i = l) →
        wcpaDjStcBaseMono k g m τ mD Dc I O a i₀ B₀ (Limits.pullback.fst g ρ y) n t J →
        ∃ (n : ℕ) (t : Fin n → S''.presheaf.stalk (Limits.pullback.snd g ρ y))
          (J : Finset (Fin n)) (α : Fin (N + 1) → ℤ) (r : ℕ) (β₀ : Fin (N + 1) → Fin r → ℤ)
          (c₀ : Fin r → ℕ) (M : Fin r → Fin n → ℕ),
          (∀ i, |α i| ≤ (B₀ : ℤ)) ∧ (∀ i j, |β₀ i j| ≤ (B₀ : ℤ)) ∧ (∀ j, c₀ j ≤ B₀) ∧
          (∀ j l, d ∣ M j l) ∧
          (∀ γ γ' : Fin r → ℕ, (∀ j, γ j ≤ B) → (∀ j, γ' j ≤ B) →
            (∀ l, ∑ j, γ j * M j l ≤ ∑ j, γ' j * M j l) ∨
              (∀ l, ∑ j, γ' j * M j l ≤ ∑ j, γ j * M j l)) ∧
          wcpaDjStcMonoData (Limits.pullback.snd g ρ) m (wcpaDjStcLift g ρ τ hτ) D'' I
            (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
              ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) y n t J α
            (fun i l => ∑ j, β₀ i j * (M j l : ℤ)) (fun l => ∑ j, c₀ j * M j l) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hH B₀ d B S'' _ ρ D'' hτ hρS hρp hρs hρf
    hreg'' hsnc'' hD'' hK i₀ hi₀ y n t e J hsys hJ hbase
  classical
  obtain ⟨hS, hY, hss, -, -, hW, hWsm, hWgc, -, -, -, -, -, -, -⟩ := hH
  obtain ⟨hgflat, hgprop, -⟩ := hss

  have RS : ∀ {T' : Type u} [CommRing T'] {n n'' r : ℕ} (a : Fin n → T')
      (s'' : Fin n'' → T') (E : Fin r → Fin n), Function.Injective E →
      ∀ (f : Fin n → ℕ), (∀ l, f l ≠ 0 → ∃ j, E j = l) →
      ∀ (u : Fin r → T'ˣ) (M : Fin r → Fin n'' → ℕ),
      (∀ j, a (E j) = u j * ∏ k, s'' k ^ M j k) →
      ∏ l, a l ^ f l = ((∏ j, u j ^ f (E j) : T'ˣ) : T') *
        ∏ k, s'' k ^ (∑ j, f (E j) * M j k) := by
    intro T' _ n n'' r a s'' E hE f hf u M hu
    have h1 : ∏ l, a l ^ f l = ∏ j, a (E j) ^ f (E j) := by
      rw [← Finset.prod_image (s := Finset.univ) (g := E) (f := fun l => a l ^ f l)
        (fun x _ y _ h => hE h)]
      symm
      apply Finset.prod_subset (Finset.subset_univ _)
      intro l _ hl
      by_cases h0 : f l = 0
      · simp [h0]
      · obtain ⟨j, rfl⟩ := hf l h0
        exact absurd (Finset.mem_image_of_mem _ (Finset.mem_univ j)) hl
    rw [h1]
    simp_rw [hu, mul_pow, Finset.prod_mul_distrib, Units.coe_prod, Units.val_pow_eq_pow_val]
    congr 1
    simp_rw [← Finset.prod_pow, ← pow_mul]
    rw [Finset.prod_comm]
    refine Finset.prod_congr rfl (fun k _ => ?_)
    rw [Finset.prod_pow_eq_pow_sum]
    congr 1
    exact Finset.sum_congr rfl (fun j _ => mul_comm _ _)
  have T6 : ∀ {T T' : Type u} [CommRing T] [CommRing T'] (φ : T →+* T') {n n'' r : ℕ}
      (x num den : T) (s : Fin n → T) (s'' : Fin n'' → T') (E : Fin r → Fin n),
      Function.Injective E → ∀ (α : ℤ) (β : Fin n → ℤ), (∀ l, β l ≠ 0 → ∃ j, E j = l) →
      ∀ (u : Fin r → T'ˣ) (M : Fin r → Fin n'' → ℕ),
      (∀ j, φ (s (E j)) = u j * ∏ k, s'' k ^ M j k) →
      wcpaDjStcMonRel x s num den α β →
      ∃ mm : Fin n'' → ℕ, wcpaDjStcMonRel (φ x) s'' (φ num * ∏ k, s'' k ^ mm k)
        (φ den * ∏ k, s'' k ^ mm k) α (fun k => ∑ j, β (E j) * (M j k : ℤ)) := by
    intro T T' _ _ φ n n'' r x num den s s'' E hE α β hβ u M hu hrel
    unfold wcpaDjStcMonRel at hrel ⊢
    obtain ⟨w, hw⟩ := hrel
    have hp := RS (fun l => φ (s l)) s'' E hE (fun l => (β l).toNat)
      (fun l hl => hβ l (by omega)) u M hu
    have hm := RS (fun l => φ (s l)) s'' E hE (fun l => (-(β l)).toNat)
      (fun l hl => hβ l (by omega)) u M hu
    set Pp : Fin n'' → ℕ := fun k => ∑ j, (β (E j)).toNat * M j k with hPp
    set Pm : Fin n'' → ℕ := fun k => ∑ j, (-(β (E j))).toNat * M j k with hPm
    set Q : Fin n'' → ℤ := fun k => ∑ j, β (E j) * (M j k : ℤ) with hQ
    have hQPP : ∀ k, Q k = (Pp k : ℤ) - (Pm k : ℤ) := by
      intro k
      simp only [hQ, hPp, hPm]
      push_cast
      rw [← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      have := Int.toNat_sub_toNat_neg (β (E j))
      linear_combination (-(M j k : ℤ)) * this
    refine ⟨fun k => Pm k - (-(Q k)).toNat, ?_⟩
    have e1 : ∀ k, (Pm k - (-(Q k)).toNat) + (-(Q k)).toNat = Pm k := by
      intro k; have := hQPP k; omega
    have e2 : ∀ k, (Pm k - (-(Q k)).toNat) + (Q k).toNat = Pp k := by
      intro k; have := hQPP k; omega
    set Up := (∏ j, u j ^ (β (E j)).toNat : T'ˣ)
    set Um := (∏ j, u j ^ (-(β (E j))).toNat : T'ˣ)
    have hw' := congrArg φ hw
    simp only [map_mul, map_pow, map_prod] at hw'
    rw [hp, hm] at hw'
    set A := ∏ k, s'' k ^ (Pm k - (-(Q k)).toNat) with hA
    have hBm : ∏ k, s'' k ^ Pm k = A * ∏ k, s'' k ^ (-(Q k)).toNat := by
      rw [hA, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl (fun k _ => ?_)
      rw [← pow_add, e1 k]
    have hBp : ∏ k, s'' k ^ Pp k = A * ∏ k, s'' k ^ (Q k).toNat := by
      rw [hA, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl (fun k _ => ?_)
      rw [← pow_add, e2 k]
    rw [hBm, hBp] at hw'
    refine ⟨Um⁻¹ * Units.map φ.toMonoidHom w * Up, ?_⟩
    have hinv : ((Um⁻¹ : T'ˣ) : T') * (Um : T') = 1 := Units.inv_mul Um
    simp only [Units.val_mul, Units.coe_map, RingHom.toMonoidHom_eq_coe, MonoidHom.coe_coe]
    linear_combination ((Um⁻¹ : T'ˣ) : T') * hw' -
      (φ num * A * φ x ^ (-α).toNat * ∏ k, s'' k ^ (-(Q k)).toNat) * hinv
  have hloc : ∀ {R R' : Type u} [CommRing R] [CommRing R'] [IsLocalRing R] [IsLocalRing R']
      (φ : R →+* R') [IsLocalHom φ] (x : R),
      φ x ∈ IsLocalRing.maximalIdeal R' ↔ x ∈ IsLocalRing.maximalIdeal R := by
    intro R R' _ _ _ _ φ _ x
    simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
  have hlinkmul : ∀ {Z : Scheme.{u}} {V : Z.Opens} (rr : Γ(Z, V)) (z : Z)
      (num den c : Z.presheaf.stalk z),
      wcpaDjStcRatioLink rr z num den → den * c ∈ nonZeroDivisors (Z.presheaf.stalk z) →
      wcpaDjStcRatioLink rr z (num * c) (den * c) := by
    intro Z V rr z num den c h hc
    refine ⟨hc, fun w hw hs => ?_⟩
    rw [map_mul, map_mul, ← mul_assoc, h.2 w hw hs]
  have hBq : ∀ (R : Type u) [CommRing R], ∃ Bq : PowerSeries R ≃+*
      (MvPowerSeries Unit R ⧸ Ideal.span {(0 : MvPowerSeries Unit R)}),
      ∀ p, Bq p = Ideal.Quotient.mk _ p := by
    intro R _
    refine ⟨(RingEquiv.quotientBot _).symm.trans
      (Ideal.quotEquivOfEq (Ideal.span_singleton_eq_bot.mpr rfl).symm), fun p => ?_⟩
    rw [RingEquiv.trans_apply]
    have : (RingEquiv.quotientBot (MvPowerSeries Unit R)).symm p = Ideal.Quotient.mk ⊥ p := by
      rw [RingEquiv.symm_apply_eq, RingEquiv.quotientBot_mk]
    rw [this, Ideal.quotEquivOfEq_mk]

  have hp : g (Limits.pullback.fst g ρ y) = ρ (Limits.pullback.snd g ρ y) := by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, Limits.pullback.condition]
  have hsq : ∀ b : S.presheaf.stalk (g (Limits.pullback.fst g ρ y)),
      ((Limits.pullback.fst g ρ).stalkMap y).hom ((g.stalkMap (Limits.pullback.fst g ρ y)).hom b) =
      ((Limits.pullback.snd g ρ).stalkMap y).hom ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom
        ((S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom b)) := by
    intro b
    have key := Scheme.Hom.stalkMap_congr_hom _ _ (Limits.pullback.condition (f := g) (g := ρ)) y
    rw [Scheme.Hom.stalkMap_comp, Scheme.Hom.stalkMap_comp] at key
    exact congrArg (fun φ => φ.hom b) key
  have T11 : ∀ (p q : S) (h : p = q) (n : ℕ) (t : Fin n → S.presheaf.stalk p)
      (e : {i // p ∈ Dc i} → Fin n), wcpaDjStcSNCSys S mD Dc p n t e →
      wcpaDjStcSNCSys S mD Dc q n
        (fun l => (S.presheaf.stalkCongr (Inseparable.of_eq h)).hom.hom (t l))
        (fun i => e ⟨i.1, h ▸ i.2⟩) := by
    intro p q h n t e hs
    subst h
    have hid : ∀ x, (S.presheaf.stalkCongr (Inseparable.of_eq (rfl : p = p))).hom.hom x = x := by
      intro x; simp
    simp only [hid]
    exact hs
  obtain ⟨hdomY, hfinj, hsinj⟩ :=
    wcpa_dj_stc_kt_pullback_stalks S Y S'' g ρ W hgflat hgprop hρp hρs hW hWsm hWgc y
  haveI := hdomY
  obtain ⟨t', ht'⟩ : ∃ t' : Fin n → S.presheaf.stalk (ρ (Limits.pullback.snd g ρ y)),
      ∀ l, t' l = (S.presheaf.stalkCongr (Inseparable.of_eq hp)).hom.hom (t l) :=
    ⟨_, fun _ => rfl⟩
  obtain ⟨a', ha'⟩ : ∃ a' : {i // ρ (Limits.pullback.snd g ρ y) ∈ Dc i} → Fin n,
      ∀ i, a' i = e ⟨i.1, by rw [hp]; exact i.2⟩ := ⟨_, fun _ => rfl⟩
  have hsys' : wcpaDjStcSNCSys S mD Dc (ρ (Limits.pullback.snd g ρ y)) n t' a' := by
    rw [show t' = _ from funext ht', show a' = _ from funext ha']
    exact T11 _ _ hp n t e hsys
  obtain ⟨hdim', hspan', hinj', hiff'⟩ := hsys'
  obtain ⟨n'', t'', J'', MK, hdim'', hspan'', hD''iff, hMsupp, hMd, hMv, hMcmp⟩ :=
    hK (Limits.pullback.snd g ρ y) n t' a' hdim' hspan' hinj' hiff'
  choose v hv using hMv
  obtain ⟨r, ⟨σ⟩⟩ : ∃ r : ℕ, Nonempty (Fin r ≃ {i // ρ (Limits.pullback.snd g ρ y) ∈ Dc i}) :=
    ⟨_, ⟨(Fintype.equivFin _).symm⟩⟩
  obtain ⟨E, hE⟩ : ∃ E : Fin r → Fin n, ∀ j, E j = a' (σ j) := ⟨_, fun _ => rfl⟩
  obtain ⟨M, hM⟩ : ∃ M : Fin r → Fin n'' → ℕ, ∀ j l, M j l = MK (σ j) l := ⟨_, fun _ _ => rfl⟩
  have hEinj : Function.Injective E := by
    intro j j' hjj
    rw [hE, hE] at hjj
    exact σ.injective (hinj' hjj)
  have hEcov : ∀ l, l ∈ J → ∃ j, E j = l := by
    intro l hl
    obtain ⟨i, rfl⟩ := (hJ l).mp hl
    exact ⟨σ.symm ⟨i.1, by rw [← hp]; exact i.2⟩,
      (hE _).trans ((congrArg a' (σ.apply_symm_apply _)).trans (ha' _))⟩
  obtain ⟨u, hu⟩ : ∃ u : Fin r → ((Limits.pullback g ρ).presheaf.stalk y)ˣ,
      ∀ j, (u j : (Limits.pullback g ρ).presheaf.stalk y) =
        ((Limits.pullback.snd g ρ).stalkMap y).hom (v (σ j)) :=
    ⟨fun j => Units.map ((Limits.pullback.snd g ρ).stalkMap y).hom.toMonoidHom (v (σ j)),
      fun j => rfl⟩
  have KS : ∀ j, ((Limits.pullback.fst g ρ).stalkMap y).hom
      ((g.stalkMap (Limits.pullback.fst g ρ y)).hom (t (E j))) =
      (u j : (Limits.pullback g ρ).presheaf.stalk y) *
        ∏ l, (((Limits.pullback.snd g ρ).stalkMap y).hom (t'' l)) ^ M j l := by
    intro j
    rw [hsq, ← ht', hE, hv, map_mul, map_prod, hu]
    simp only [map_pow, hM]
  have hsupp : ∀ (f : Fin r → ℤ) l, ∑ j, f j * (M j l : ℤ) ≠ 0 → l ∈ J'' := by
    intro f l h
    obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero h
    refine hMsupp (σ j) l ?_
    rw [← hM]; intro h0; apply hj; rw [h0]; simp
  have hsuppN : ∀ (f : Fin r → ℕ) l, ∑ j, f j * M j l ≠ 0 → l ∈ J'' := by
    intro f l h
    obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero h
    refine hMsupp (σ j) l ?_
    rw [← hM]; intro h0; apply hj; rw [h0]; simp
  haveI := hreg'' (Limits.pullback.snd g ρ y)
  have ht''ne : ∀ l, t'' l ≠ 0 := fun l =>
    ((wcpa_dj_bko_regular_params _ n'' t'' hdim'' hspan'').2.1 l).ne_zero
  have hden : ∀ (den : Y.presheaf.stalk (Limits.pullback.fst g ρ y)) (mm : Fin n'' → ℕ),
      den ∈ nonZeroDivisors _ →
      ((Limits.pullback.fst g ρ).stalkMap y).hom den *
        ∏ k, (((Limits.pullback.snd g ρ).stalkMap y).hom (t'' k)) ^ mm k ∈
          nonZeroDivisors _ := by
    intro den mm hd
    apply mem_nonZeroDivisors_of_ne_zero
    refine mul_ne_zero ?_ ?_
    · exact (map_ne_zero_iff _ hfinj).mpr (nonZeroDivisors.ne_zero hd)
    · exact Finset.prod_ne_zero_iff.mpr
        (fun k _ => pow_ne_zero _ ((map_ne_zero_iff _ hsinj).mpr (ht''ne k)))
  have hsmooth : ∀ W' : Y.Opens, SmoothOfRelativeDimension 1 (W'.ι ≫ g) →
      SmoothOfRelativeDimension 1
        ((Limits.pullback.fst g ρ ⁻¹ᵁ W').ι ≫ Limits.pullback.snd g ρ) := by
    intro W' h
    exact MorphismProperty.of_isPullback (P := @SmoothOfRelativeDimension 1)
      ((isPullback_morphismRestrict (Limits.pullback.fst g ρ) W').paste_vert
        (IsPullback.of_hasPullback g ρ)) h
  have hlift_fst : ∀ j q, Limits.pullback.fst g ρ (wcpaDjStcLift g ρ τ hτ j q) = τ j (ρ q) := by
    intro j q
    show (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.fst g ρ) q = _
    simp only [wcpaDjStcLift, Limits.pullback.lift_fst, Scheme.Hom.comp_apply]

  obtain ⟨α, β, c, hα, hβ, hc, hmd⟩ := hbase
  obtain ⟨-, -, -, hβJ, hcJ, hcase⟩ := hmd
  have hβcov : ∀ i l, β i l ≠ 0 → ∃ j, E j = l := fun i l h => hEcov l (hβJ i l h)
  have hccov : ∀ l, c l ≠ 0 → ∃ j, E j = l := fun l h => hEcov l (hcJ l h)
  have hcmp : ∀ γ γ' : Fin r → ℕ, (∀ j, γ j ≤ B) → (∀ j, γ' j ≤ B) →
      (∀ l, ∑ j, γ j * M j l ≤ ∑ j, γ' j * M j l) ∨
        (∀ l, ∑ j, γ' j * M j l ≤ ∑ j, γ j * M j l) := by
    intro γ γ' hγ hγ'
    have hre : ∀ γ : Fin r → ℕ, ∀ l, ∑ j, γ j * M j l = ∑ i, γ (σ.symm i) * MK i l := by
      intro γ l; rw [← Equiv.sum_comp σ]; simp only [Equiv.symm_apply_apply, hM]
    rcases hMcmp (fun i => γ (σ.symm i)) (fun i => γ' (σ.symm i)) (fun i => hγ _)
      (fun i => hγ' _) with h | h
    · left; intro l; rw [hre γ, hre γ']; exact h l
    · right; intro l; rw [hre γ, hre γ']; exact h l

  have hcompl : ∀ (φh : AdicCompletion (IsLocalRing.maximalIdeal
          (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) (Y.presheaf.stalk (Limits.pullback.fst g ρ y))
        →+* AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
          ((Limits.pullback g ρ).presheaf.stalk y)),
      φh.comp (algebraMap (Y.presheaf.stalk (Limits.pullback.fst g ρ y))
          (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))) =
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk y)
          (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))).comp
          ((Limits.pullback.fst g ρ).stalkMap y).hom →
      ∀ (i : Fin (N + 1)) (x : AdicCompletion (IsLocalRing.maximalIdeal
          (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
        (num den : Y.presheaf.stalk (Limits.pullback.fst g ρ y)),
      wcpaDjStcMonRel x
        (fun l => algebraMap (Y.presheaf.stalk (Limits.pullback.fst g ρ y)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            ((g.stalkMap (Limits.pullback.fst g ρ y)).hom (t l)))
        (algebraMap (Y.presheaf.stalk (Limits.pullback.fst g ρ y)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) num)
        (algebraMap (Y.presheaf.stalk (Limits.pullback.fst g ρ y)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) den)
        (α i) (β i) →
      ∃ mm : Fin n'' → ℕ, wcpaDjStcMonRel (φh x)
        (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))
            (((Limits.pullback.snd g ρ).stalkMap y).hom (t'' l)))
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))
          (((Limits.pullback.fst g ρ).stalkMap y).hom num *
            ∏ k, (((Limits.pullback.snd g ρ).stalkMap y).hom (t'' k)) ^ mm k))
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))
          (((Limits.pullback.fst g ρ).stalkMap y).hom den *
            ∏ k, (((Limits.pullback.snd g ρ).stalkMap y).hom (t'' k)) ^ mm k))
        (α i) (fun k => ∑ j, β i (E j) * (M j k : ℤ)) := by
    intro φh hφh i x num den hrel
    have hφ : ∀ z, φh (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal
          (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) z) =
        algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y)) (((Limits.pullback.fst g ρ).stalkMap y).hom z) :=
      fun z => RingHom.congr_fun hφh z
    obtain ⟨mm, hmm⟩ := T6 φh x _ _ _
      (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))
            (((Limits.pullback.snd g ρ).stalkMap y).hom (t'' l))) E hEinj (α i) (β i) (hβcov i)
      (fun j => Units.map (algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
            ((Limits.pullback g ρ).presheaf.stalk y))).toMonoidHom (u j)) M
      (fun j => by
        rw [hφ, KS j, map_mul, map_prod]
        simp only [map_pow, Units.coe_map, RingHom.toMonoidHom_eq_coe, MonoidHom.coe_coe]) hrel
    refine ⟨mm, ?_⟩
    simp only [map_mul, map_prod, map_pow]
    rw [← hφ num, ← hφ den]
    exact hmm

  refine ⟨n'', t'', J'', α, r, fun i j => β i (E j), fun j => c (E j), M,
    hα, fun i j => hβ i (E j), fun j => hc (E j), fun j l => by rw [hM]; exact hMd _ _, hcmp, ?_⟩
  refine ⟨hdim'', hspan'', hD''iff, fun i l h => hsupp (fun j => β i (E j)) l h,
    fun l h => hsuppN (fun j => c (E j)) l h, ?_⟩
  beta_reduce
  rcases hcase with ⟨⟨l₀, hl₀⟩, v₀, eb, heb, hrels⟩ |
    ⟨hc0, ⟨W', hyW', hW'sm⟩, j₀, z, hyτ, hziff, eb, heb1, heb2, hrels⟩ |
    ⟨hc0, ⟨W', hyW', hW'sm⟩, hnot, hα0, hrels⟩
  ·
    left
    obtain ⟨j₀, hj₀⟩ := hccov l₀ hl₀
    have hMpos : ∃ k, M j₀ k ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      have hmem := (hiff' (σ j₀) _ (specializes_refl _)).mp (σ j₀).2
      simp only [TopCat.Presheaf.stalkSpecializes_refl, CommRingCat.hom_id, RingHom.id_apply]
        at hmem
      have hmem2 := (hloc (ρ.stalkMap (Limits.pullback.snd g ρ y)).hom _).mpr hmem
      rw [hv, Finset.prod_eq_one (fun k _ => by rw [← hM, hcon, pow_zero]), mul_one,
        IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hmem2
      exact hmem2 (v _).isUnit
    obtain ⟨k₀, hk₀⟩ := hMpos
    obtain ⟨ρh, φh, e'', hρh, hφh, he''1, he''2⟩ :=
      wcpa_dj_stc_kt_completed_transport k S Y S'' sS g ρ hS hY hρS y hp (Fin 2) _ eb heb
    have hρt : ∀ l, ρh (algebraMap _ (AdicCompletion
          (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
          (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))) (t l)) =
        algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y)) (AdicCompletion
          (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom (t' l)) := by
      intro l; rw [ht']; exact RingHom.congr_fun hρh (t l)
    have hprod := RS (fun l => algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
        (AdicCompletion (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          ((ρ.stalkMap (Limits.pullback.snd g ρ y)).hom (t' l)))
      (fun l => algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
        (AdicCompletion (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          (S''.presheaf.stalk (Limits.pullback.snd g ρ y))) (t'' l)) E hEinj c hccov
      (fun j => Units.map (algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
        (AdicCompletion (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))).toMonoidHom (v (σ j))) M
      (fun j => by
        rw [hE, hv, map_mul, map_prod]
        simp only [map_pow, hM, Units.coe_map, RingHom.toMonoidHom_eq_coe, MonoidHom.coe_coe])
    obtain ⟨v'', hv''⟩ : ∃ v'' : (AdicCompletion
        (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
          (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))ˣ,
        (v'' : AdicCompletion
          (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
            (S''.presheaf.stalk (Limits.pullback.snd g ρ y))) =
          ρh ↑v₀ * ↑(∏ j, (Units.map (algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
            (AdicCompletion (IsLocalRing.maximalIdeal
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))).toMonoidHom (v (σ j))) ^ c (E j)) :=
      ⟨Units.map ρh.toMonoidHom v₀ * ∏ j, (Units.map (algebraMap
          (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
          (AdicCompletion (IsLocalRing.maximalIdeal
            (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
            (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))).toMonoidHom (v (σ j))) ^ c (E j),
        by simp only [Units.val_mul, Units.coe_map, RingHom.toMonoidHom_eq_coe,
          MonoidHom.coe_coe]⟩
    have hC : ρh (↑v₀ * ∏ l, (algebraMap (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))
          (AdicCompletion (IsLocalRing.maximalIdeal
            (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
            (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))) (t l) ^ c l) =
        ↑v'' * ∏ l, (algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
            (AdicCompletion (IsLocalRing.maximalIdeal
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))) (t'' l) ^
            (∑ j, c (E j) * M j l) := by
      rw [map_mul, map_prod]
      simp only [map_pow, hρt]
      rw [hprod, hv'', mul_assoc]
    have hF : MvPowerSeries.map (σ := Fin 2) ρh (MvPowerSeries.X (0 : Fin 2) * MvPowerSeries.X 1 -
        MvPowerSeries.C (↑v₀ * ∏ l, (algebraMap (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))
          (AdicCompletion (IsLocalRing.maximalIdeal
            (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
            (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))) (t l) ^ c l)) =
        MvPowerSeries.X (0 : Fin 2) * MvPowerSeries.X 1 - MvPowerSeries.C (↑v'' *
          ∏ l, (algebraMap (S''.presheaf.stalk (Limits.pullback.snd g ρ y))
            (AdicCompletion (IsLocalRing.maximalIdeal
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
              (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))) (t'' l) ^
            (∑ j, c (E j) * M j l)) := by
      rw [map_sub, map_mul, MvPowerSeries.map_X, MvPowerSeries.map_X, MvPowerSeries.map_C, hC]
    refine ⟨⟨k₀, fun h0 => ?_⟩, v'', e''.trans (Ideal.quotEquivOfEq (congrArg
      (fun x => Ideal.span {x}) hF)), ?_, fun i hi => ?_⟩
    · have := (Finset.sum_eq_zero_iff.mp h0) j₀ (Finset.mem_univ _)
      rw [hj₀] at this
      exact (mul_ne_zero hl₀ hk₀) this
    · refine RingHom.ext (fun b => ?_)
      have := RingHom.congr_fun he''1 b
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
        at this ⊢
      rw [RingEquiv.trans_apply, this, Ideal.quotEquivOfEq_mk]
    · obtain ⟨num, den, hlink, hrel⟩ := hrels i hi
      obtain ⟨mm, hmm⟩ := hcompl φh hφh i _ num den hrel
      refine ⟨_, _, hlinkmul _ _ _ _ _ (wcpa_dj_stc_kt_ratio_link_transport k _ O a i₀ i y num
        den hdomY hfinj hlink) (hden den mm hlink.1), ?_⟩
      rw [RingEquiv.symm_trans_apply, Ideal.quotEquivOfEq_symm, Ideal.quotEquivOfEq_mk, he''2]
      exact hmm
  ·
    right; left
    have hc'' : (fun l => ∑ j, c (E j) * M j l) = 0 := by funext l; simp [hc0]
    refine ⟨hc'', ⟨_, (Scheme.Hom.mem_preimage _).mpr hyW', hsmooth W' hW'sm⟩, j₀,
      ((Limits.pullback.fst g ρ).stalkMap y).hom z,
      ⟨_, wcpa_dj_stc_kt_section_point S Y S'' g ρ m τ hτ j₀ y hyτ⟩, ?_, ?_⟩
    · intro y' h
      rw [← Scheme.Hom.stalkSpecializes_stalkMap_apply, hloc,
        ← hziff (Limits.pullback.fst g ρ y') (h.map (Limits.pullback.fst g ρ).continuous)]
      constructor
      · rintro ⟨q, rfl⟩; exact ⟨ρ q, (hlift_fst j₀ q).symm⟩
      · intro hy'; exact ⟨_, wcpa_dj_stc_kt_section_point S Y S'' g ρ m τ hτ j₀ y' hy'⟩
    · obtain ⟨Bq, hBq1⟩ := hBq (AdicCompletion
        (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
        (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
      obtain ⟨Bq'', hBq2⟩ := hBq (AdicCompletion
        (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
        (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
      have he1 : (eb.trans Bq).toRingHom.comp ((algebraMap (Y.presheaf.stalk
          (Limits.pullback.fst g ρ y)) (AdicCompletion (IsLocalRing.maximalIdeal
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))).comp
            (g.stalkMap (Limits.pullback.fst g ρ y)).hom) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))
              (AdicCompletion
                (IsLocalRing.maximalIdeal (S.presheaf.stalk (g (Limits.pullback.fst g ρ y))))
                (S.presheaf.stalk (g (Limits.pullback.fst g ρ y)))))) := by
        refine RingHom.ext (fun b => ?_)
        have := RingHom.congr_fun heb1 b
        simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
          at this ⊢
        rw [RingEquiv.trans_apply, this, hBq1]
        rfl
      obtain ⟨ρh, φh, e'', hρh, hφh, he''1, he''2⟩ :=
        wcpa_dj_stc_kt_completed_transport k S Y S'' sS g ρ hS hY hρS y hp Unit 0
          (eb.trans Bq) he1
      have h0 : Ideal.span {MvPowerSeries.map ρh (0 : MvPowerSeries Unit _)} =
          Ideal.span {(0 : MvPowerSeries Unit (AdicCompletion
            (IsLocalRing.maximalIdeal (S''.presheaf.stalk (Limits.pullback.snd g ρ y)))
            (S''.presheaf.stalk (Limits.pullback.snd g ρ y))))} := by rw [map_zero]
      have hφz : φh (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) z) =
          algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
            (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
              ((Limits.pullback g ρ).presheaf.stalk y))
            (((Limits.pullback.fst g ρ).stalkMap y).hom z) := RingHom.congr_fun hφh z
      have hz1 : (eb.trans Bq) (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y)))
            (Y.presheaf.stalk (Limits.pullback.fst g ρ y))) z) =
          Ideal.Quotient.mk _ (MvPowerSeries.X ()) := by
        rw [RingEquiv.trans_apply, heb2, hBq1]; rfl
      have hz2 : algebraMap ((Limits.pullback g ρ).presheaf.stalk y) (AdicCompletion
            (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y))
              ((Limits.pullback g ρ).presheaf.stalk y))
            (((Limits.pullback.fst g ρ).stalkMap y).hom z) =
          e''.symm (Ideal.Quotient.mk _ (MvPowerSeries.X ())) := by
        rw [he''2, ← hz1, RingEquiv.symm_apply_apply, hφz]
      refine ⟨(e''.trans (Ideal.quotEquivOfEq h0)).trans Bq''.symm, ?_, ?_, fun i hi => ?_⟩
      · refine RingHom.ext (fun b => ?_)
        have := RingHom.congr_fun he''1 b
        simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
          at this ⊢
        rw [RingEquiv.trans_apply, RingEquiv.trans_apply, this, Ideal.quotEquivOfEq_mk,
          RingEquiv.symm_apply_eq, hBq2]
        rfl
      · rw [RingEquiv.trans_apply, RingEquiv.trans_apply, hz2, RingEquiv.apply_symm_apply,
          Ideal.quotEquivOfEq_mk, RingEquiv.symm_apply_eq, hBq2]
        rfl
      · obtain ⟨num, den, hlink, hrel⟩ := hrels i hi
        obtain ⟨mm, hmm⟩ := hcompl φh hφh i _ num den hrel
        refine ⟨_, _, hlinkmul _ _ _ _ _ (wcpa_dj_stc_kt_ratio_link_transport k _ O a i₀ i y num
          den hdomY hfinj hlink) (hden den mm hlink.1), ?_⟩
        rw [← hφz]
        exact hmm
  ·
    right; right
    have hc'' : (fun l => ∑ j, c (E j) * M j l) = 0 := by funext l; simp [hc0]
    refine ⟨hc'', ⟨_, (Scheme.Hom.mem_preimage _).mpr hyW', hsmooth W' hW'sm⟩, ?_, hα0,
      fun i hi => ?_⟩
    · intro h
      obtain ⟨j, q, hq⟩ := Set.mem_iUnion.mp h
      apply hnot
      exact Set.mem_iUnion.mpr ⟨j, ρ q, by rw [← hlift_fst, hq]⟩
    · obtain ⟨num, den, hlink, hrel⟩ := hrels i hi
      obtain ⟨mm, hmm⟩ := T6 ((Limits.pullback.fst g ρ).stalkMap y).hom 1 num den
        (fun l => (g.stalkMap (Limits.pullback.fst g ρ y)).hom (t l))
        (fun l => ((Limits.pullback.snd g ρ).stalkMap y).hom (t'' l)) E hEinj 0 (β i)
        (hβcov i) u M KS hrel
      refine ⟨_, _, hlinkmul _ _ _ _ _ (wcpa_dj_stc_kt_ratio_link_transport k _ O a i₀ i y num
        den hdomY hfinj hlink) (hden den mm hlink.1), ?_⟩
      rw [map_one] at hmm
      exact hmm

theorem wcpa_dj_stc_kummer_mono : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (g ≫ sS) → wcpaDjSplitSemistable g →
    wcpaDjMonoNodeForm g (⋃ i, Dc i) → wcpaDjSections g m τ → W ≠ ⊥ →
    SmoothOfRelativeDimension 1 (g ∣_ W) → GeometricallyConnected (g ∣_ W) →
    (∀ s : S, IsRegularLocalRing (S.presheaf.stalk s)) → wcpaDjSNCComps S mD Dc →
    (W : Set S)ᶜ ⊆ ⋃ i, Dc i → g ⁻¹ᵁ W ≤ O →
    a ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
      O.ι ≫ g ≫ sS →
    (∀ c (i : Fin (N + 1)), i ∉ I →
      a c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
    (∀ c, (∃ i ∈ I, a c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
      O.ι c ∈ (⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((W : Set S)ᶜ)) →
    ∃ B₀ : ℕ, ∀ (d B : ℕ) (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S)
      (D'' : Set S'') (hτ : ∀ j, τ j ≫ g = 𝟙 S),
      wcpaDjIsProjOver k (ρ ≫ sS) → IsProper ρ → Surjective ρ →
      (∃ V : S.Opens, V ≠ ⊥ ∧ IsFinite (ρ ∣_ V)) →
      (∀ s : S'', IsRegularLocalRing (S''.presheaf.stalk s)) → wcpaDjSNCSet S'' D'' →
      ⇑ρ ⁻¹' (⋃ i, Dc i) ⊆ D'' → wcpaDjKummerOrd ρ mD Dc D'' d B →
      ∀ i₀ ∈ I, ∀ y : ↥(Limits.pullback g ρ),
        ∃ (n : ℕ) (t : Fin n → S''.presheaf.stalk (Limits.pullback.snd g ρ y))
          (J : Finset (Fin n)) (α : Fin (N + 1) → ℤ) (r : ℕ) (β₀ : Fin (N + 1) → Fin r → ℤ)
          (c₀ : Fin r → ℕ) (M : Fin r → Fin n → ℕ),
          (∀ i, |α i| ≤ (B₀ : ℤ)) ∧ (∀ i j, |β₀ i j| ≤ (B₀ : ℤ)) ∧ (∀ j, c₀ j ≤ B₀) ∧
          (∀ j l, d ∣ M j l) ∧
          (∀ γ γ' : Fin r → ℕ, (∀ j, γ j ≤ B) → (∀ j, γ' j ≤ B) →
            (∀ l, ∑ j, γ j * M j l ≤ ∑ j, γ' j * M j l) ∨
              (∀ l, ∑ j, γ' j * M j l ≤ ∑ j, γ j * M j l)) ∧
          wcpaDjStcMonoData (Limits.pullback.snd g ρ) m (wcpaDjStcLift g ρ τ hτ) D'' I
            (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
              ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) y n t J α
            (fun i l => ∑ j, β₀ i j * (M j l : ℤ)) (fun l => ∑ j, c₀ j * M j l) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15
  have hH : wcpaDjStcKmHyp k S Y sS g m τ W mD Dc N I O a :=
    ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15⟩
  obtain ⟨B₁, hB₁⟩ := wcpa_dj_stc_km_base_offsec k S Y sS g m τ W mD Dc N I O a hH
  obtain ⟨B₂, hB₂⟩ := wcpa_dj_stc_km_base_section k S Y sS g m τ W mD Dc N I O a hH
  obtain ⟨B₃, hB₃⟩ :=
    wcpa_dj_stc_km_base_node (fun A _ _ => wcpa_dj_stc_toric_unit A) k S Y sS g m τ W mD Dc N I O a hH
  refine ⟨max B₁ (max B₂ B₃), ?_⟩
  intro d B S'' _ ρ D'' hτ hρS hρp hρs hρf hreg'' hsnc'' hD'' hK i₀ hi₀ y
  classical
  obtain ⟨n, t, hn, ht, e, he, hiff⟩ := h10.2 (g (Limits.pullback.fst g ρ y))
  have hsys : wcpaDjStcSNCSys S mD Dc (g (Limits.pullback.fst g ρ y)) n t e :=
    ⟨hn, ht, he, hiff⟩
  have hJ : ∀ l, l ∈ Finset.univ.filter (fun l => ∃ i, e i = l) ↔ ∃ i, e i = l := by
    intro l
    simp
  have hmono : ∀ B' : ℕ, B' ≤ max B₁ (max B₂ B₃) →
      wcpaDjStcBaseMono k g m τ mD Dc I O a i₀ B' (Limits.pullback.fst g ρ y) n t
        (Finset.univ.filter (fun l => ∃ i, e i = l)) →
      wcpaDjStcBaseMono k g m τ mD Dc I O a i₀ (max B₁ (max B₂ B₃))
        (Limits.pullback.fst g ρ y) n t (Finset.univ.filter (fun l => ∃ i, e i = l)) := by
    intro B' hB' hb
    obtain ⟨α, β, c, hα, hβ, hc, hd⟩ := hb
    have hB'z : (B' : ℤ) ≤ ((max B₁ (max B₂ B₃) : ℕ) : ℤ) := by exact_mod_cast hB'
    exact ⟨α, β, c, fun i => (hα i).trans hB'z, fun i l => (hβ i l).trans hB'z,
      fun l => (hc l).trans hB', hd⟩
  have hbase : wcpaDjStcBaseMono k g m τ mD Dc I O a i₀ (max B₁ (max B₂ B₃))
      (Limits.pullback.fst g ρ y) n t (Finset.univ.filter (fun l => ∃ i, e i = l)) := by
    by_cases hsec : Limits.pullback.fst g ρ y ∈ ⋃ j, Set.range ⇑(τ j)
    · exact hmono B₂ (le_max_of_le_right (le_max_left _ _))
        (hB₂ i₀ hi₀ _ hsec n t e _ hsys hJ)
    · by_cases hsm : ∃ W' : Y.Opens, Limits.pullback.fst g ρ y ∈ W' ∧
          SmoothOfRelativeDimension 1 (W'.ι ≫ g)
      · exact hmono B₁ (le_max_left _ _) (hB₁ i₀ hi₀ _ hsm hsec n t e _ hsys hJ)
      · exact hmono B₃ (le_max_of_le_right (le_max_right _ _))
          (hB₃ i₀ hi₀ _ hsm n t e _ hsys hJ)
  exact wcpa_dj_stc_km_transport k S Y sS g m τ W mD Dc N I O a hH _ d B S'' ρ D'' hτ hρS
    hρp hρs hρf hreg'' hsnc'' hD'' hK i₀ hi₀ y n t e _ hsys hJ hbase

theorem wcpa_dj_stc_order_arith : ∀ (B₀ r n : ℕ) {ι : Type} (I : Finset ι) (α : ι → ℤ)
    (β₀ : ι → Fin r → ℤ) (c₀ : Fin r → ℕ) (M : Fin r → Fin n → ℕ),
    (∀ i ∈ I, |α i| ≤ (B₀ : ℤ)) → (∀ i ∈ I, ∀ j, |β₀ i j| ≤ (B₀ : ℤ)) → (∀ j, c₀ j ≤ B₀) →
    (∀ j l, (2 * B₀).factorial ∣ M j l) →
    (∀ γ γ' : Fin r → ℕ, (∀ j, γ j ≤ 8 * B₀ ^ 2 + 4 * B₀ + 1) →
      (∀ j, γ' j ≤ 8 * B₀ ^ 2 + 4 * B₀ + 1) →
      (∀ l, ∑ j, γ j * M j l ≤ ∑ j, γ' j * M j l) ∨
        (∀ l, ∑ j, γ' j * M j l ≤ ∑ j, γ j * M j l)) →
    (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l,
      (α i - α j) ∣ ((fun i l => ∑ j, β₀ i j * (M j l : ℤ)) j l -
        (fun i l => ∑ j, β₀ i j * (M j l : ℤ)) i l)) ∧
    (∀ v ∈ wcpaDjStcBreaks I α (fun i l => ∑ j, β₀ i j * (M j l : ℤ))
        (fun l => ∑ j, c₀ j * M j l),
      ∀ w ∈ wcpaDjStcBreaks I α (fun i l => ∑ j, β₀ i j * (M j l : ℤ))
        (fun l => ∑ j, c₀ j * M j l), v ≤ w ∨ w ≤ v) :=
by
  intro B₀ r n ι I α β₀ c₀ M hα hβ hc hd hcmp
  have hB : (0 : ℤ) ≤ (B₀ : ℤ) := Nat.cast_nonneg _

  have hdvdM : ∀ a b : ℤ, |a| ≤ (B₀ : ℤ) → |b| ≤ (B₀ : ℤ) → a ≠ b →
      ∀ j l, (a - b) ∣ (M j l : ℤ) := by
    intro a b ha hb hab j l
    have h1 := abs_le.mp ha
    have h2 := abs_le.mp hb
    have hpos : 0 < (a - b).natAbs := Int.natAbs_pos.mpr (sub_ne_zero.mpr hab)
    have hle : (a - b).natAbs ≤ 2 * B₀ := by
      have : ((a - b).natAbs : ℤ) ≤ 2 * (B₀ : ℤ) := by
        rw [Int.natCast_natAbs]
        exact abs_le.mpr ⟨by linarith, by linarith⟩
      exact_mod_cast this
    have h3 : (a - b).natAbs ∣ M j l := (Nat.dvd_factorial hpos hle).trans (hd j l)
    have h4 : ((a - b).natAbs : ℤ) ∣ (M j l : ℤ) := Int.natCast_dvd_natCast.mpr h3
    exact Int.natAbs_dvd.mp h4

  have hnum : ∀ a b : ι, ∀ l, (∑ k, (β₀ a k - β₀ b k) * (M k l : ℤ)) =
      (∑ k, β₀ a k * (M k l : ℤ)) - ∑ k, β₀ b k * (M k l : ℤ) := by
    intro a b l
    rw [← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl (fun k _ => sub_mul _ _ _)
  have hubd : ∀ a ∈ I, ∀ b ∈ I, ∀ k, |β₀ a k - β₀ b k| ≤ 2 * (B₀ : ℤ) := by
    intro a ha b hb k
    have h1 := abs_le.mp (hβ a ha k)
    have h2 := abs_le.mp (hβ b hb k)
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  refine ⟨?_, ?_⟩
  · intro i hi j hj hij l
    show (α i - α j) ∣ (∑ k, β₀ j k * (M k l : ℤ)) - ∑ k, β₀ i k * (M k l : ℤ)
    rw [← hnum]
    apply Finset.dvd_sum
    intro k _
    exact Dvd.dvd.mul_left (hdvdM _ _ (hα i hi) (hα j hj) hij k l) _
  ·
    have hrepr : ∀ v ∈ wcpaDjStcBreaks I α (fun i l => ∑ j, β₀ i j * (M j l : ℤ))
        (fun l => ∑ j, c₀ j * M j l),
        ∃ (q : ℕ) (u : Fin r → ℤ), 1 ≤ q ∧ q ≤ 2 * B₀ + 1 ∧ (∀ j, |u j| ≤ 2 * (B₀ : ℤ)) ∧
          v = fun l => ((∑ j, u j * (M j l : ℤ) : ℤ) : ℚ) / (q : ℚ) := by
      intro v hv
      simp only [wcpaDjStcBreaks, Set.mem_union, Set.mem_insert_iff, Set.mem_singleton_iff,
        Set.mem_setOf_eq] at hv
      rcases hv with ((rfl | rfl) | ⟨i, hi, j, hj, hij, rfl⟩) | ⟨i, hi, j, hj, hij, rfl⟩
      · refine ⟨1, 0, le_rfl, by omega, fun j => by simp [hB], ?_⟩
        funext l
        simp
      · refine ⟨1, fun j => (c₀ j : ℤ), le_rfl, by omega, fun j => ?_, ?_⟩
        · rw [abs_of_nonneg (Nat.cast_nonneg _)]
          have h1 : (c₀ j : ℤ) ≤ B₀ := by exact_mod_cast hc j
          linarith
        · funext l
          simp
      · have h1 := abs_le.mp (hα i hi)
        have h2 := abs_le.mp (hα j hj)
        rcases lt_or_gt_of_ne (sub_ne_zero.mpr hij) with hneg | hpos
        ·
          have hq : ((α j - α i).toNat : ℤ) = α j - α i := Int.toNat_of_nonneg (by linarith)
          refine ⟨(α j - α i).toNat, fun k => β₀ i k - β₀ j k, ?_, ?_,
            fun k => hubd i hi j hj k, ?_⟩
          · have : (1 : ℤ) ≤ ((α j - α i).toNat : ℤ) := by rw [hq]; linarith
            exact_mod_cast this
          · have : ((α j - α i).toNat : ℤ) ≤ 2 * (B₀ : ℤ) + 1 := by rw [hq]; linarith
            exact_mod_cast this
          · funext l
            simp only [hnum]
            have e1 : (((α j - α i).toNat : ℕ) : ℚ) = ((α j - α i : ℤ) : ℚ) := by
              rw [← hq]; exact (Int.cast_natCast _).symm
            rw [e1, ← neg_div_neg_eq]
            congr 1 <;> push_cast <;> ring
        ·
          have hq : ((α i - α j).toNat : ℤ) = α i - α j := Int.toNat_of_nonneg (by linarith)
          refine ⟨(α i - α j).toNat, fun k => β₀ j k - β₀ i k, ?_, ?_,
            fun k => hubd j hj i hi k, ?_⟩
          · have : (1 : ℤ) ≤ ((α i - α j).toNat : ℤ) := by rw [hq]; linarith
            exact_mod_cast this
          · have : ((α i - α j).toNat : ℤ) ≤ 2 * (B₀ : ℤ) + 1 := by rw [hq]; linarith
            exact_mod_cast this
          · funext l
            simp only [hnum]
            have e1 : (((α i - α j).toNat : ℕ) : ℚ) = ((α i - α j : ℤ) : ℚ) := by
              rw [← hq]; exact (Int.cast_natCast _).symm
            rw [e1]
      · refine ⟨1, fun k => β₀ i k - β₀ j k, le_rfl, by omega, fun k => hubd i hi j hj k, ?_⟩
        funext l
        simp only [hnum]
        rw [Nat.cast_one, div_one]

    have hdiv : ∀ (X X' : ℤ) (a b : ℕ), 1 ≤ a → 1 ≤ b → X * b ≤ X' * a →
        (X : ℚ) / (a : ℚ) ≤ (X' : ℚ) / (b : ℚ) := by
      intro X X' a b ha hb h
      have ha' : (0 : ℚ) < a := by exact_mod_cast ha
      have hb' : (0 : ℚ) < b := by exact_mod_cast hb
      rw [div_le_div_iff₀ ha' hb']
      exact_mod_cast h
    have hcomp : ∀ (q q' : ℕ) (u u' : Fin r → ℤ), 1 ≤ q → q ≤ 2 * B₀ + 1 → 1 ≤ q' →
        q' ≤ 2 * B₀ + 1 → (∀ j, |u j| ≤ 2 * (B₀ : ℤ)) → (∀ j, |u' j| ≤ 2 * (B₀ : ℤ)) →
        (fun l : Fin n => ((∑ j, u j * (M j l : ℤ) : ℤ) : ℚ) / (q : ℚ)) ≤
            (fun l => ((∑ j, u' j * (M j l : ℤ) : ℤ) : ℚ) / (q' : ℚ)) ∨
          (fun l : Fin n => ((∑ j, u' j * (M j l : ℤ) : ℤ) : ℚ) / (q' : ℚ)) ≤
            (fun l => ((∑ j, u j * (M j l : ℤ) : ℤ) : ℚ) / (q : ℚ)) := by
      intro q q' u u' hq1 hq2 hq1' hq2' hu hu'
      obtain ⟨w, hw⟩ : ∃ w : Fin r → ℤ, ∀ j, w j = (q' : ℤ) * u j - (q : ℤ) * u' j :=
        ⟨_, fun j => rfl⟩
      have hq1z : (1 : ℤ) ≤ q := by exact_mod_cast hq1
      have hq2z : (q : ℤ) ≤ 2 * B₀ + 1 := by exact_mod_cast hq2
      have hq1z' : (1 : ℤ) ≤ q' := by exact_mod_cast hq1'
      have hq2z' : (q' : ℤ) ≤ 2 * B₀ + 1 := by exact_mod_cast hq2'
      have hwb : ∀ j, w j ≤ 8 * (B₀ : ℤ) ^ 2 + 4 * B₀ ∧ -(8 * (B₀ : ℤ) ^ 2 + 4 * B₀) ≤ w j := by
        intro j
        have h1 := abs_le.mp (hu j)
        have h2 := abs_le.mp (hu' j)
        rw [hw j]
        constructor
        · nlinarith [mul_nonneg (by linarith : (0 : ℤ) ≤ q') (by linarith : (0 : ℤ) ≤ 2 * B₀ - u j),
            mul_nonneg (by linarith : (0 : ℤ) ≤ q) (by linarith : (0 : ℤ) ≤ u' j + 2 * B₀),
            mul_nonneg (by linarith : (0 : ℤ) ≤ 2 * B₀ + 1 - q') hB,
            mul_nonneg (by linarith : (0 : ℤ) ≤ 2 * B₀ + 1 - q) hB]
        · nlinarith [mul_nonneg (by linarith : (0 : ℤ) ≤ q') (by linarith : (0 : ℤ) ≤ u j + 2 * B₀),
            mul_nonneg (by linarith : (0 : ℤ) ≤ q) (by linarith : (0 : ℤ) ≤ 2 * B₀ - u' j),
            mul_nonneg (by linarith : (0 : ℤ) ≤ 2 * B₀ + 1 - q') hB,
            mul_nonneg (by linarith : (0 : ℤ) ≤ 2 * B₀ + 1 - q) hB]
      have hγ : ∀ j, (w j).toNat ≤ 8 * B₀ ^ 2 + 4 * B₀ + 1 := by
        intro j
        rw [Int.toNat_le]
        push_cast
        linarith [(hwb j).1]
      have hγ' : ∀ j, (-w j).toNat ≤ 8 * B₀ ^ 2 + 4 * B₀ + 1 := by
        intro j
        rw [Int.toNat_le]
        push_cast
        linarith [(hwb j).2]
      have hsplit : ∀ l, ∑ j, w j * (M j l : ℤ) =
          (∑ j, ((w j).toNat : ℤ) * (M j l : ℤ)) - ∑ j, ((-w j).toNat : ℤ) * (M j l : ℤ) := by
        intro l
        rw [← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [← sub_mul, Int.toNat_sub_toNat_neg]
      have hwq : ∀ l, ∑ j, w j * (M j l : ℤ) =
          (q' : ℤ) * (∑ j, u j * (M j l : ℤ)) - (q : ℤ) * ∑ j, u' j * (M j l : ℤ) := by
        intro l
        rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [hw j]
        ring
      rcases hcmp (fun j => (w j).toNat) (fun j => (-w j).toNat) hγ hγ' with hA | hA
      · left
        intro l
        have h1 : ((∑ j, (w j).toNat * M j l : ℕ) : ℤ) ≤ ((∑ j, (-w j).toNat * M j l : ℕ) : ℤ) := by
          exact_mod_cast hA l
        push_cast at h1
        have e1 := hsplit l
        have e2 := hwq l
        exact hdiv _ _ q q' hq1 hq1' (by linarith)
      · right
        intro l
        have h1 : ((∑ j, (-w j).toNat * M j l : ℕ) : ℤ) ≤ ((∑ j, (w j).toNat * M j l : ℕ) : ℤ) := by
          exact_mod_cast hA l
        push_cast at h1
        have e1 := hsplit l
        have e2 := hwq l
        exact hdiv _ _ q' q hq1' hq1 (by linarith)
    intro v hv w hw
    obtain ⟨q, u, hq1, hq2, hu, rfl⟩ := hrepr v hv
    obtain ⟨q', u', hq1', hq2', hu', rfl⟩ := hrepr w hw
    exact hcomp q q' u u' hq1 hq2 hq1' hq2' hu hu'

end GRWTSK.FiniteFieldWeil
