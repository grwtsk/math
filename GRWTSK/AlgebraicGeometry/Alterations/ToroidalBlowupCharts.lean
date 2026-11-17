import GRWTSK.AlgebraicGeometry.Alterations.SemistableReduction

/-!
# Toroidal node models, regular locus and blowup chart construction

Source candidate split from `weil_conjecture_main.lean`, lines 21901–23219.
See the adjacent `ToroidalBlowupCharts.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_sp_torpt_of_params : ∀ (Z : Scheme.{u}) (B : Set Z) (z : Z) (n : ℕ) (w : Fin n → Z.presheaf.stalk z) (J : Finset (Fin n)), (n : WithBot ℕ∞) = ringKrullDim (Z.presheaf.stalk z) → Ideal.span (Set.range w) = IsLocalRing.maximalIdeal (Z.presheaf.stalk z) → (∀ (z' : Z) (hz : z' ⤳ z), (z' ∈ B ↔ ∃ j ∈ J, (Z.presheaf.stalkSpecializes hz).hom (w j) ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk z'))) → wcpaDjTorPt Z B z :=
by
  intro Z B z n w J hdim hspan hB
  classical
  refine ⟨n, n, fun j => algebraMap (Z.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (w j),
    fun j => if j ∈ J then w j else 1, fun j => if j ∈ J then {j} else ∅,
    hdim, ?_, ?_, ?_, ?_⟩
  · rw [← hspan, Ideal.map_span, ← Set.range_comp]
    rfl
  · intro i i' hii'
    dsimp only
    split_ifs
    · exact Finset.disjoint_singleton.mpr hii'
    · exact Finset.disjoint_empty_right _
    · exact Finset.disjoint_empty_left _
    · exact Finset.disjoint_empty_left _
  · intro i
    dsimp only
    split_ifs with hi
    · rw [Finset.prod_singleton]
      all_goals exact Associated.refl _
    · rw [Finset.prod_empty, map_one]
      all_goals exact Associated.refl _
  · intro z' hz
    rw [hB z' hz]
    constructor
    · rintro ⟨j, hj, hmem⟩
      refine ⟨j, ?_⟩
      dsimp only
      rw [if_pos hj]
      exact hmem
    · rintro ⟨i, hmem⟩
      dsimp only at hmem
      by_cases hi : i ∈ J
      · rw [if_pos hi] at hmem
        exact ⟨i, hi, hmem⟩
      · rw [if_neg hi, map_one] at hmem
        exact absurd hmem (IsLocalRing.notMem_maximalIdeal.mpr isUnit_one)

theorem wcpa_dj_ts_smooth_pt : ∀ (S Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral S] (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (D : Set S) (y : Y), IsProper g → wcpaDjSections g m τ → (∀ p : S, IsRegularLocalRing (S.presheaf.stalk p)) → wcpaDjSNCSet S D → (∃ W : Y.Opens, y ∈ W ∧ SmoothOfRelativeDimension 1 (W.ι ≫ g)) → wcpaDjTorPt Y (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)) y :=
by
  intro S Y _ g m τ D y hprop hsec hreg hD hy
  classical
  haveI := hprop
  obtain ⟨hτg, hdisj, -⟩ := hsec
  obtain ⟨mD, Dc, hDc, hDeq, hloc⟩ := hD
  subst hDeq
  obtain ⟨n, t, hn, ht, a, -, hiff⟩ := hloc (g y)
  haveI := hreg (g y)

  obtain ⟨hNoeth, Q, hQ, β, hQc, hβc, hβl, hβf, hβm⟩ :=
    wcpa_dj_sp_smooth_stalk_model S Y g y inferInstance hy
  haveI := hNoeth
  haveI := hQ

  obtain ⟨e, f, he1, he0, hspanQ, hdimQ⟩ :=
    wcpa_dj_sp_poly_prime_params (S.presheaf.stalk (g y)) n t hn ht Q hQc

  obtain ⟨hspanO, hdimO⟩ := wcpa_dj_sp_flat_unram_params (Localization.AtPrime Q)
    (Y.presheaf.stalk y) β hβl hβf hβm (n + e) _ hspanQ hdimQ
  obtain ⟨w, hw⟩ : ∃ w : Fin (n + e) → Y.presheaf.stalk y,
      w = Fin.append (fun i => (g.stalkMap y).hom (t i))
        (fun k => β (algebraMap (Polynomial (S.presheaf.stalk (g y))) (Localization.AtPrime Q)
          (f k))) := ⟨_, rfl⟩
  have hspanO' : Ideal.span (Set.range w) = IsLocalRing.maximalIdeal (Y.presheaf.stalk y) := by
    rw [← hspanO]
    congr 2
    funext i
    rw [hw]
    induction i using Fin.addCases with
    | left i =>
      simp only [Fin.append_left]
      exact (RingHom.congr_fun hβc (t i)).symm
    | right k =>
      simp only [Fin.append_right]

  have hDpart := wcpa_dj_sp_snc_pullback_iff S Y g y mD Dc n t a hDc hiff

  have hcl : ∀ j, IsClosed (Set.range ⇑(τ j)) := fun j =>
    (wcpa_dj_sp_section_stalk S Y g (τ j) (g y) inferInstance (hτg j)).1
  by_cases hA : ∃ j p₀, τ j p₀ = y
  swap
  ·
    push_neg at hA
    have hnot : ∀ (z' : Y), z' ⤳ y → ∀ j, z' ∉ Set.range ⇑(τ j) := by
      intro z' hz j hz'
      obtain ⟨p, hp⟩ := hz.mem_closed (hcl j) hz'
      exact hA j p hp
    refine wcpa_dj_sp_torpt_of_params Y _ y (n + e) w
      (Finset.univ.image (fun i => Fin.castAdd e (a i))) hdimO hspanO' ?_
    intro z' hz
    have hD' := hDpart z' hz
    rw [Set.mem_union]
    constructor
    · rintro (h | h)
      · obtain ⟨i, hi⟩ := hD'.mp h
        refine ⟨Fin.castAdd e (a i), Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩, ?_⟩
        rw [hw, Fin.append_left]
        exact hi
      · obtain ⟨j, hj⟩ := Set.mem_iUnion.mp h
        exact absurd hj (hnot z' hz j)
    · rintro ⟨k, hk, hk'⟩
      obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp hk
      rw [hw, Fin.append_left] at hk'
      exact Or.inl (hD'.mpr ⟨i, hk'⟩)
  ·
    obtain ⟨j, p₀, rfl⟩ := hA
    obtain ⟨-, ψ, hψ, hψiff⟩ := wcpa_dj_sp_section_stalk S Y g (τ j) p₀ inferInstance (hτg j)

    have he : e = 1 := by
      rcases Nat.lt_or_ge e 1 with h | h
      · exfalso
        have he0' : e = 0 := by omega
        refine wcpa_dj_sp_no_retraction _ Q (he0 he0') (ψ.comp β) ?_
        rw [RingHom.comp_assoc, hβc, hψ]
      · omega
    subst he

    obtain ⟨hspan'', hker⟩ := wcpa_dj_sp_retraction_kernel (S.presheaf.stalk (g (τ j p₀)))
      (Y.presheaf.stalk (τ j p₀)) (g.stalkMap (τ j p₀)).hom ψ hψ n 1 t
      (fun k => β (algebraMap (Polynomial (S.presheaf.stalk (g (τ j p₀))))
        (Localization.AtPrime Q) (f k))) ht (by rw [hw] at hspanO'; exact hspanO')
    obtain ⟨wd, hwd⟩ : ∃ wd : Fin 1 → Y.presheaf.stalk (τ j p₀),
        wd = fun k => β (algebraMap (Polynomial (S.presheaf.stalk (g (τ j p₀))))
            (Localization.AtPrime Q) (f k)) -
          (g.stalkMap (τ j p₀)).hom (ψ (β (algebraMap (Polynomial (S.presheaf.stalk (g (τ j p₀))))
            (Localization.AtPrime Q) (f k)))) := ⟨_, rfl⟩
    have hker' : RingHom.ker ψ = Ideal.span (Set.range wd) := by
      rw [hwd]; exact hker
    have hspanW : Ideal.span (Set.range (Fin.append (fun i => (g.stalkMap (τ j p₀)).hom (t i)) wd)) =
        IsLocalRing.maximalIdeal (Y.presheaf.stalk (τ j p₀)) := by
      rw [hwd]; exact hspan''
    have hsecIff : ∀ (z' : Y) (hz : z' ⤳ τ j p₀), (z' ∈ ⋃ j', Set.range ⇑(τ j') ↔
        (Y.presheaf.stalkSpecializes hz).hom (wd 0) ∈
          IsLocalRing.maximalIdeal (Y.presheaf.stalk z')) := by
      intro z' hz
      constructor
      · intro h
        obtain ⟨j', hj'⟩ := Set.mem_iUnion.mp h
        by_cases hjj : j' = j
        · subst hjj
          have hmem : wd 0 ∈ RingHom.ker ψ := by
            rw [hker']; exact Ideal.subset_span ⟨0, rfl⟩
          exact Ideal.mem_comap.mp ((hψiff z' hz).mp hj' hmem)
        · exfalso
          obtain ⟨q, hq⟩ := hz.mem_closed (hcl j') hj'
          exact hdisj j' j q p₀ hjj hq
      · intro h
        refine Set.mem_iUnion.mpr ⟨j, (hψiff z' hz).mpr ?_⟩
        rw [hker', Ideal.span_le]
        rintro _ ⟨k, rfl⟩
        rw [Fin.fin_one_eq_zero k]
        exact SetLike.mem_coe.mpr (Ideal.mem_comap.mpr h)
    refine wcpa_dj_sp_torpt_of_params Y _ (τ j p₀) (n + 1)
      (Fin.append (fun i => (g.stalkMap (τ j p₀)).hom (t i)) wd)
      ((Finset.univ.image (fun i => Fin.castAdd 1 (a i))) ∪ {Fin.natAdd n 0}) hdimO hspanW ?_
    intro z' hz
    have hD' := hDpart z' hz
    have hS' := hsecIff z' hz
    rw [Set.mem_union]
    constructor
    · rintro (h | h)
      · obtain ⟨i, hi⟩ := hD'.mp h
        refine ⟨Fin.castAdd 1 (a i), Finset.mem_union_left _
          (Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩), ?_⟩
        rw [Fin.append_left]
        exact hi
      · refine ⟨Fin.natAdd n 0, Finset.mem_union_right _ (Finset.mem_singleton_self _), ?_⟩
        rw [Fin.append_right]
        exact hS'.mp h
    · rintro ⟨k, hk, hk'⟩
      rcases Finset.mem_union.mp hk with hk | hk
      · obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp hk
        rw [Fin.append_left] at hk'
        exact Or.inl (hD'.mpr ⟨i, hk'⟩)
      · rw [Finset.mem_singleton.mp hk, Fin.append_right] at hk'
        exact Or.inr (hS'.mpr hk')

theorem wcpa_dj_npr_psr_complete : ∀ (Λ : Type u) [CommRing Λ] (I₀ : Ideal Λ), IsAdicComplete I₀ Λ → IsAdicComplete (Ideal.map (MvPowerSeries.C : Λ →+* MvPowerSeries (Fin 2) Λ) I₀ ⊔ Ideal.span {MvPowerSeries.X 0, MvPowerSeries.X 1}) (MvPowerSeries (Fin 2) Λ) :=
by
  intro Λ _ I₀ hc
  classical
  set I : Ideal (MvPowerSeries (Fin 2) Λ) := Ideal.map (MvPowerSeries.C : Λ →+* MvPowerSeries (Fin 2) Λ) I₀ ⊔ Ideal.span {MvPowerSeries.X 0, MvPowerSeries.X 1} with hI

  let Φ : ℕ → Ideal (MvPowerSeries (Fin 2) Λ) := fun k =>
    { carrier := {f | ∀ e : Fin 2 →₀ ℕ, MvPowerSeries.coeff e f ∈ I₀ ^ (k - (e 0 + e 1))}
      add_mem' := by
        intro a b ha hb e
        rw [LinearMap.map_add]; exact Ideal.add_mem _ (ha e) (hb e)
      zero_mem' := by
        intro e; rw [LinearMap.map_zero]; exact Ideal.zero_mem _
      smul_mem' := by
        intro g f hf e
        rw [smul_eq_mul, MvPowerSeries.coeff_mul]
        refine Ideal.sum_mem _ (fun q hq => ?_)
        rw [Finset.HasAntidiagonal.mem_antidiagonal] at hq
        have h0 : q.1 0 + q.2 0 = e 0 := by rw [← hq, Finsupp.add_apply]
        have h1 : q.1 1 + q.2 1 = e 1 := by rw [← hq, Finsupp.add_apply]
        exact Ideal.mul_mem_left _ _ (Ideal.pow_le_pow_right (by omega) (hf q.2)) }
  have hΦ : ∀ k f, f ∈ Φ k ↔ ∀ e : Fin 2 →₀ ℕ, MvPowerSeries.coeff e f ∈ I₀ ^ (k - (e 0 + e 1)) :=
    fun k f => Iff.rfl
  have htop : ∀ (J : Ideal Λ) (x : Λ), x ∈ J ^ 0 := by
    intro J x; rw [pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top

  have hmul : ∀ a b, Φ a * Φ b ≤ Φ (a + b) := by
    intro a b
    rw [Ideal.mul_le]
    intro r hr s hs
    refine (hΦ _ _).2 fun e => ?_
    rw [MvPowerSeries.coeff_mul]
    refine Ideal.sum_mem _ (fun q hq => ?_)
    rw [Finset.HasAntidiagonal.mem_antidiagonal] at hq
    have h0 : q.1 0 + q.2 0 = e 0 := by rw [← hq, Finsupp.add_apply]
    have h1 : q.1 1 + q.2 1 = e 1 := by rw [← hq, Finsupp.add_apply]
    have hm := Ideal.mul_mem_mul ((hΦ _ _).1 hr q.1) ((hΦ _ _).1 hs q.2)
    rw [← pow_add] at hm
    exact Ideal.pow_le_pow_right (by omega) hm

  have hgen : I ≤ Φ 1 := by
    rw [hI]
    refine sup_le ?_ ?_
    · rw [Ideal.map_le_iff_le_comap]
      intro c hc
      rw [Ideal.mem_comap]
      refine (hΦ _ _).2 fun e => ?_
      rw [MvPowerSeries.coeff_C]
      split_ifs with he
      · subst he; simpa using hc
      · exact Ideal.zero_mem _
    · rw [Ideal.span_le]
      intro x hx
      have hX : ∀ i : Fin 2, MvPowerSeries.X i ∈ Φ 1 := by
        intro i
        refine (hΦ _ _).2 fun e => ?_
        rw [MvPowerSeries.coeff_X]
        split_ifs with he
        · subst he
          have h2 : (Finsupp.single i 1 : Fin 2 →₀ ℕ) 0 + (Finsupp.single i 1 : Fin 2 →₀ ℕ) 1 = 1 := by
            fin_cases i <;> simp
          rw [h2, Nat.sub_self]
          exact htop _ _
        · exact Ideal.zero_mem _
      rcases hx with rfl | rfl
      · exact hX 0
      · exact hX 1

  have s1 : ∀ k, I ^ k ≤ Φ k := by
    intro k
    induction k with
    | zero =>
      intro f _
      refine (hΦ _ _).2 fun e => ?_
      rw [Nat.zero_sub]; exact htop _ _
    | succ k ih =>
      rw [pow_succ]
      exact (Ideal.mul_mono ih hgen).trans (hmul k 1)
  have hXI : ∀ i : Fin 2, MvPowerSeries.X i ∈ I := by
    intro i
    rw [hI]
    refine Submodule.mem_sup_right (Ideal.subset_span ?_)
    fin_cases i <;> simp

  have s2 : ∀ k f, f ∈ Φ k → f ∈ I ^ k := by
    intro k
    induction k with
    | zero => intro f _; rw [pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top
    | succ k ih =>
      intro f hf
      have hf' := (hΦ _ _).1 hf
      let T0 : MvPowerSeries (Fin 2) Λ := fun e => MvPowerSeries.coeff (e + Finsupp.single 0 1) f
      let T1 : MvPowerSeries (Fin 2) Λ := fun e =>
        if e 0 = 0 then MvPowerSeries.coeff (e + Finsupp.single 1 1) f else 0
      have hT0 : ∀ e, MvPowerSeries.coeff e T0 = MvPowerSeries.coeff (e + Finsupp.single 0 1) f :=
        fun e => rfl
      have hT1 : ∀ e, MvPowerSeries.coeff e T1 =
          if e 0 = 0 then MvPowerSeries.coeff (e + Finsupp.single 1 1) f else 0 := fun e => rfl
      have hs0 : ∀ e : Fin 2 →₀ ℕ, (e + Finsupp.single 0 1 : Fin 2 →₀ ℕ) 0 + (e + Finsupp.single 0 1 : Fin 2 →₀ ℕ) 1
          = e 0 + e 1 + 1 := by
        intro e; simp; omega
      have hs1 : ∀ e : Fin 2 →₀ ℕ, (e + Finsupp.single 1 1 : Fin 2 →₀ ℕ) 0 + (e + Finsupp.single 1 1 : Fin 2 →₀ ℕ) 1
          = e 0 + e 1 + 1 := by
        intro e; simp; omega
      have hid : f = MvPowerSeries.C (MvPowerSeries.coeff 0 f) + MvPowerSeries.X 0 * T0 +
          MvPowerSeries.X 1 * T1 := by
        refine MvPowerSeries.ext fun e => ?_
        rw [map_add, map_add, MvPowerSeries.coeff_C, MvPowerSeries.X_def, MvPowerSeries.X_def,
          MvPowerSeries.coeff_monomial_mul, MvPowerSeries.coeff_monomial_mul, hT0, hT1]
        have hsub1 : (e - Finsupp.single 1 1 : Fin 2 →₀ ℕ) 0 = e 0 := by simp
        by_cases h0 : e 0 = 0
        · have hn0 : ¬ (Finsupp.single (0 : Fin 2) 1 ≤ e) := fun h => by
            have := Finsupp.single_le_iff.1 h; omega
          by_cases h1 : e 1 = 0
          · have he : e = 0 := by
              ext i; fin_cases i
              · exact h0
              · exact h1
            subst he
            simp
          · have he : e ≠ 0 := fun he => h1 (by rw [he]; rfl)
            rw [if_neg he, if_neg hn0, if_pos (Finsupp.single_le_iff.2 (by omega)), hsub1, if_pos h0,
              tsub_add_cancel_of_le (Finsupp.single_le_iff.2 (by omega))]
            simp
        · have he : e ≠ 0 := fun he => h0 (by rw [he]; rfl)
          rw [if_neg he, if_pos (Finsupp.single_le_iff.2 (by omega)),
            tsub_add_cancel_of_le (Finsupp.single_le_iff.2 (by omega))]
          by_cases h1 : Finsupp.single (1 : Fin 2) 1 ≤ e
          · rw [if_pos h1, hsub1, if_neg h0]; simp
          · rw [if_neg h1]; simp
      rw [hid]
      refine Ideal.add_mem _ (Ideal.add_mem _ ?_ ?_) ?_
      · have hc0 : MvPowerSeries.coeff 0 f ∈ I₀ ^ (k + 1) := by simpa using hf' 0
        have := Ideal.mem_map_of_mem (MvPowerSeries.C : Λ →+* MvPowerSeries (Fin 2) Λ) hc0
        rw [Ideal.map_pow] at this
        rw [hI]
        exact Ideal.pow_right_mono le_sup_left _ this
      · rw [pow_succ']
        refine Ideal.mul_mem_mul (hXI 0) (ih _ ((hΦ _ _).2 fun e => ?_))
        have := hf' (e + Finsupp.single 0 1)
        rw [hs0, show k + 1 - (e 0 + e 1 + 1) = k - (e 0 + e 1) by omega] at this
        rw [hT0]; exact this
      · rw [pow_succ']
        refine Ideal.mul_mem_mul (hXI 1) (ih _ ((hΦ _ _).2 fun e => ?_))
        rw [hT1]
        split_ifs with h0
        · have := hf' (e + Finsupp.single 1 1)
          rw [hs1, show k + 1 - (e 0 + e 1 + 1) = k - (e 0 + e 1) by omega] at this
          exact this
        · exact Ideal.zero_mem _

  have smod : ∀ {R : Type u} [CommRing R] (J : Ideal R) (n : ℕ) (x y : R),
      x ≡ y [SMOD J ^ n • (⊤ : Submodule R R)] ↔ x - y ∈ J ^ n := by
    intro R _ J n x y
    rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top]
  have hH : IsHausdorff I₀ Λ := hc.toIsHausdorff
  have hP : IsPrecomplete I₀ Λ := hc.toIsPrecomplete
  have hA : IsHausdorff I (MvPowerSeries (Fin 2) Λ) := by
    refine ⟨fun x hx => ?_⟩
    refine MvPowerSeries.ext fun e => ?_
    rw [map_zero]
    refine IsHausdorff.haus' (I := I₀) _ (fun j => ?_)
    refine (smod I₀ j _ _).2 ?_
    have h1 := (smod I _ _ _).1 (hx (j + (e 0 + e 1)))
    rw [sub_zero] at h1
    have h2 := (hΦ _ _).1 (s1 _ h1) e
    rw [Nat.add_sub_cancel] at h2
    rw [sub_zero]; exact h2
  have hB : IsPrecomplete I (MvPowerSeries (Fin 2) Λ) := by
    refine ⟨fun F hF => ?_⟩
    have hcoef : ∀ e : Fin 2 →₀ ℕ, ∃ L : Λ, ∀ j,
        MvPowerSeries.coeff e (F (j + (e 0 + e 1))) ≡ L [SMOD I₀ ^ j • (⊤ : Submodule Λ Λ)] := by
      intro e
      refine IsPrecomplete.prec' (I := I₀) (fun j => MvPowerSeries.coeff e (F (j + (e 0 + e 1))))
        (fun {m n} hmn => ?_)
      refine (smod I₀ m _ _).2 ?_
      have h1 := (smod I _ _ _).1 (hF (show m + (e 0 + e 1) ≤ n + (e 0 + e 1) by omega))
      have h2 := (hΦ _ _).1 (s1 _ h1) e
      rw [map_sub, Nat.add_sub_cancel] at h2
      exact h2
    choose L hL using hcoef
    let L' : MvPowerSeries (Fin 2) Λ := L
    have hL' : ∀ e, MvPowerSeries.coeff e L' = L e := fun e => rfl
    refine ⟨L', fun n => ?_⟩
    refine (smod I _ _ _).2 (s2 n _ ((hΦ _ _).2 fun e => ?_))
    rw [LinearMap.map_sub, hL']
    by_cases hn : n ≤ e 0 + e 1
    · rw [Nat.sub_eq_zero_of_le hn]; exact htop _ _
    · have h := (smod I₀ _ _ _).1 (hL e (n - (e 0 + e 1)))
      rw [Nat.sub_add_cancel (by omega)] at h
      exact h
  exact { toIsHausdorff := hA, toIsPrecomplete := hB }

theorem wcpa_dj_npr_boundary_iff : ∀ (S Y : Scheme.{u}) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (D : Set S) (y : Y) (n : ℕ) (t : Fin n → S.presheaf.stalk (g y)) (J : Finset (Fin n)), IsProper g → wcpaDjSections g m τ → (¬ ∃ W : Y.Opens, y ∈ W ∧ SmoothOfRelativeDimension 1 (W.ι ≫ g)) → (∀ (p' : S) (h : p' ⤳ g y), (p' ∈ D ↔ ∃ j ∈ J, (S.presheaf.stalkSpecializes h).hom (t j) ∈ IsLocalRing.maximalIdeal (S.presheaf.stalk p'))) → ∀ (z' : Y) (hz : z' ⤳ y), (z' ∈ ⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j) ↔ ∃ j ∈ J, (Y.presheaf.stalkSpecializes hz).hom ((g.stalkMap y).hom (t j)) ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk z')) :=
by
  intro S Y g m τ D y n t J hprop hsec hns hiff z' hz
  have hnot : ∀ j, z' ∉ Set.range ⇑(τ j) := by
    intro j hz'
    haveI : IsClosedImmersion (τ j ≫ g) := by rw [hsec.1 j]; infer_instance
    haveI := IsClosedImmersion.of_comp (τ j) g
    have hcl : IsClosed (Set.range ⇑(τ j)) := (τ j).isClosedEmbedding.isClosed_range
    obtain ⟨p₁, hp₁⟩ := hz.mem_closed hcl hz'
    obtain ⟨W, hW, hsm⟩ := hsec.2.2 j p₁
    rw [hp₁] at hW
    exact hns ⟨W, hW, hsm⟩
  have hL : z' ∈ ⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j) ↔ g z' ∈ D := by
    constructor
    · rintro (h | h)
      · exact h
      · obtain ⟨j, hj⟩ := Set.mem_iUnion.mp h
        exact absurd hj (hnot j)
    · intro h
      exact Or.inl h
  have hgz : g z' ⤳ g y := hz.map g.continuous
  rw [hL, hiff (g z') hgz]
  apply exists_congr
  intro j
  apply and_congr_right
  intro _
  have key := Scheme.Hom.stalkSpecializes_stalkMap_apply g z' y hz (t j)
  rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, IsLocalRing.mem_maximalIdeal,
    mem_nonunits_iff, ← key, isUnit_map_iff (g.stalkMap z').hom]

theorem wcpa_dj_ts_node_pt_sgl : ∀ (S Y : Scheme.{u}) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (D : Set S) (y : Y), IsProper g → wcpaDjSections g m τ → (∀ p : S, IsRegularLocalRing (S.presheaf.stalk p)) → wcpaDjMonoNodeForm g D → (¬ ∃ W : Y.Opens, y ∈ W ∧ SmoothOfRelativeDimension 1 (W.ι ≫ g)) → wcpaDjTorNodeSgl Y (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)) y :=
by
  intro S Y g m τ D y hprop hsec hreg hMN hns
  classical
  rcases hMN y with hsm | ⟨n, t, J, a, hn, hspan, hiff, ha, e₀, hcomp⟩
  · exact absurd hsm hns
  haveI hRnoeth : IsNoetherianRing (S.presheaf.stalk (g y)) := by
    haveI := hreg (g y)
    infer_instance
  obtain ⟨hRloc, hRnoeth', hRcomp, hRgen, hRdim⟩ :=
    wcpa_dj_npr_completion_data (S.presheaf.stalk (g y)) n t hn hspan
  haveI := hRloc
  haveI := hRnoeth'
  haveI hAloc : IsLocalRing (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))) := MvPowerSeries.instIsLocalRing
  haveI hAnoeth : IsNoetherianRing (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))) :=
    MvPowerSeries.isNoetherianRing
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y)))
  have hmax := wcpa_dj_npr_psr_maximalIdeal
    (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y)))
  have hgens : Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ Set.range (fun l =>
      (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)) →+* MvPowerSeries (Fin 2)
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))))
        (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l)))) =
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2)
        (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)))) := by
    rw [hmax, hRgen, Ideal.map_span, Ideal.span_union, sup_comm, ← Set.range_comp]
    rfl
  have hdimA := wcpa_dj_npr_psr_dim_ge
    (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y)))
    n hRdim.le
  have hGfin : ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ Set.range (fun l =>
      (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)) →+* MvPowerSeries (Fin 2)
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))))
        (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l)))).Finite :=
    ((Set.finite_singleton _).insert _).union (Set.finite_range _)
  have hrange : ∀ {β : Type u} (f : Fin n → β), (Set.range f).ncard ≤ n := by
    intro β f
    rw [← Set.image_univ]
    calc _ ≤ (Set.univ : Set (Fin n)).ncard := Set.ncard_image_le Set.finite_univ
      _ = n := by rw [Set.ncard_univ, Nat.card_fin]
  have hcard : ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ Set.range (fun l =>
      (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)) →+* MvPowerSeries (Fin 2)
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))))
        (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l)))).ncard ≤ n + 2 := by
    refine (Set.ncard_union_le _ _).trans ?_
    have h2 : ({MvPowerSeries.X 0, MvPowerSeries.X 1} : Set (MvPowerSeries (Fin 2)
        (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y))))).ncard ≤ 2 := by
      refine (Set.ncard_insert_le _ _).trans ?_
      rw [Set.ncard_singleton]
    have h3 := hrange (fun l =>
      (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)) →+* MvPowerSeries (Fin 2)
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))))
        (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l)))
    omega
  have hsf : Submodule.spanFinrank (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y))))) ≤ n + 2 := by
    rw [← hgens]
    exact (Submodule.spanFinrank_span_le_ncard_of_finite hGfin).trans hcard
  have hup := ringKrullDim_le_spanFinrank_maximalIdeal (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y))))
  have hdimeq : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))) :=
    le_antisymm hdimA (hup.trans (Nat.mono_cast hsf))
  have hregA : IsRegularLocalRing (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))) :=
    IsRegularLocalRing.mk (le_antisymm ((Nat.mono_cast hsf).trans hdimA) hup)
  have hcompA : IsAdicComplete (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y))))) (MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))) := by
    rw [hmax]
    exact wcpa_dj_npr_psr_complete _ _ hRcomp
  have hI : Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (∏ j,
      (algebraMap (S.presheaf.stalk (g y)) (AdicCompletion (IsLocalRing.maximalIdeal
        (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y))) (t j)) ^ a j)} =
      Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - 1 * ∏ l,
        ((MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)) →+* MvPowerSeries (Fin 2)
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))))
          (algebraMap (S.presheaf.stalk (g y))
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))) (t l))) ^ a l} := by
    simp only [one_mul, map_prod, map_pow]
  refine ⟨n, J.card, MvPowerSeries (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y))),
    inferInstance, hregA, hcompA, MvPowerSeries.X 0, MvPowerSeries.X 1, 1,
    fun l => (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y)) →+* MvPowerSeries (Fin 2)
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))))
        (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l)),
    a, e₀.trans (Ideal.quotEquivOfEq hI),
    fun i => (g.stalkMap y).hom (t (J.equivFin.symm i).1),
    fun i => {(J.equivFin.symm i).1}, isUnit_one, hdimeq, hgens, ?_, ?_, ?_, ?_, ?_⟩
  · intro i i' hii'
    exact Finset.disjoint_singleton.mpr (fun h => hii' (J.equivFin.symm.injective (Subtype.ext h)))
  · intro i
    exact (Finset.card_singleton _).le
  · intro l hl
    refine ⟨J.equivFin ⟨l, ha l hl⟩, ?_⟩
    have he : (J.equivFin.symm (J.equivFin ⟨l, ha l hl⟩)).1 = l := by
      rw [Equiv.symm_apply_apply]
    show l ∈ ({(J.equivFin.symm (J.equivFin ⟨l, ha l hl⟩)).1} : Finset (Fin n))
    rw [he]
    exact Finset.mem_singleton_self l
  · intro i
    have key := RingHom.congr_fun hcomp (t (J.equivFin.symm i).1)
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at key
    rw [Finset.prod_singleton, RingEquiv.trans_apply, key, Ideal.quotEquivOfEq_mk]
  · intro z' hz
    rw [wcpa_dj_npr_boundary_iff S Y g m τ D y n t J hprop hsec hns hiff z' hz]
    constructor
    · rintro ⟨j, hj, hmem⟩
      refine ⟨J.equivFin ⟨j, hj⟩, ?_⟩
      have he : (J.equivFin.symm (J.equivFin ⟨j, hj⟩)).1 = j := by
        rw [Equiv.symm_apply_apply]
      show (Y.presheaf.stalkSpecializes hz).hom
          ((g.stalkMap y).hom (t (J.equivFin.symm (J.equivFin ⟨j, hj⟩)).1)) ∈
        IsLocalRing.maximalIdeal (Y.presheaf.stalk z')
      rw [he]
      exact hmem
    · rintro ⟨i, hmem⟩
      exact ⟨(J.equivFin.symm i).1, (J.equivFin.symm i).2, hmem⟩

theorem wcpa_dj_rts_terminal : ∀ (Z : Scheme.{u}) (B : Set Z) (z : Z), wcpaDjTorNodeSgl Z B z → IsRegularLocalRing (Z.presheaf.stalk z) → wcpaDjTorPt Z B z :=
by
  classical

  have hcard : ∀ {α : Type u} {k : ℕ} (g : Fin k → α), (Set.range g).ncard ≤ k := by
    intro α k g
    rw [← Set.image_univ]
    refine (Set.ncard_image_le Set.finite_univ).trans ?_
    rw [Set.ncard_univ, Nat.card_eq_fintype_card, Fintype.card_fin]

  have hS10 : ∀ (Ô A : Type u) [CommRing Ô] [CommRing A] (ε : A →+* Ô) (n₀ : ℕ) (x y v : A)
      (σ : Fin (n₀ + 1) → A) (l₀ : Fin (n₀ + 1)), IsUnit (ε v) →
      ε x * ε y = ε v * ε (σ l₀) →
      Ideal.span (Set.range (fun j => ε ((Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) :
        Fin (n₀ + 2) → A) j))) = Ideal.map ε (Ideal.span ({x, y} ∪ Set.range σ)) := by
    intro Ô A _ _ ε n₀ x y v σ l₀ hv hrel
    have hL : Ideal.span (Set.range (fun j => ε ((Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) :
        Fin (n₀ + 2) → A) j))) = Ideal.map ε (Ideal.span (Set.range
          (Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) : Fin (n₀ + 2) → A))) := by
      rw [Ideal.map_span, ← Set.range_comp]
      rfl
    rw [hL]
    have hw2 : ∀ k : Fin n₀, (Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) :
        Fin (n₀ + 2) → A) k.succ.succ = σ (l₀.succAbove k) := fun k => rfl
    apply le_antisymm
    · apply Ideal.map_mono
      apply Ideal.span_mono
      rintro _ ⟨j, rfl⟩
      refine Fin.cases ?_ (fun j' => Fin.cases ?_ (fun k => ?_) j') j
      · exact Or.inl (Set.mem_insert x {y})
      · exact Or.inl (Set.mem_insert_of_mem x rfl)
      · rw [hw2]; exact Or.inr ⟨_, rfl⟩
    · rw [Ideal.map_le_iff_le_comap]
      have hmem : ∀ j, ε ((Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) :
          Fin (n₀ + 2) → A) j) ∈ Ideal.map ε (Ideal.span (Set.range
            (Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) : Fin (n₀ + 2) → A))) :=
        fun j => Ideal.mem_map_of_mem _ (Ideal.subset_span ⟨j, rfl⟩)
      apply Ideal.span_le.mpr
      rintro g (hg | ⟨l, rfl⟩)
      · rcases hg with rfl | hg
        · exact hmem 0
        · rw [Set.mem_singleton_iff] at hg
          subst hg
          exact hmem (Fin.succ 0)
      · show σ l ∈ Ideal.comap ε (Ideal.map ε (Ideal.span (Set.range
            (Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) : Fin (n₀ + 2) → A))))
        rw [Ideal.mem_comap]
        by_cases hl : l = l₀
        · subst hl
          obtain ⟨u, hu⟩ := hv
          have : ε (σ l) = ↑u⁻¹ * (ε x * ε y) := by
            rw [hrel, ← hu, ← mul_assoc, Units.inv_mul, one_mul]
          rw [this]
          exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (hmem 0))
        · obtain ⟨k, rfl⟩ := Fin.exists_succAbove_eq hl
          have := hmem k.succ.succ
          rwa [hw2] at this
  have hS11 : ∀ (Ô A : Type u) [CommRing Ô] [CommRing A] (ε : A →+* Ô) (n₀ : ℕ) (x y v : A)
      (σ : Fin (n₀ + 1) → A) (l₀ : Fin (n₀ + 1)), IsUnit (ε v) →
      ε x * ε y = ε v * ε (σ l₀) → ∀ (q : ℕ) (J : Fin q → Finset (Fin (n₀ + 1)))
      (c : Fin q → Ô), (∀ i i', i ≠ i' → Disjoint (J i) (J i')) →
      (∀ i, Associated (c i) (ε (∏ l ∈ J i, σ l))) →
      ∃ J' : Fin q → Finset (Fin (n₀ + 2)), (∀ i i', i ≠ i' → Disjoint (J' i) (J' i')) ∧
        ∀ i, Associated (c i) (∏ j ∈ J' i,
          ε ((Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) : Fin (n₀ + 2) → A) j)) := by
    intro Ô A _ _ ε n₀ x y v σ l₀ hv hrel q J c hdisj hass
    set w : Fin (n₀ + 2) → A := Fin.cons x (Fin.cons y (fun k => σ (l₀.succAbove k))) with hw
    set g : Fin (n₀ + 2) → Fin (n₀ + 1) := Fin.cons l₀ (Fin.cons l₀ l₀.succAbove) with hg
    refine ⟨fun i => Finset.univ.filter (fun j => g j ∈ J i), ?_, ?_⟩
    · intro i i' hii'
      rw [Finset.disjoint_left]
      intro j hj hj'
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hj hj'
      exact Finset.disjoint_left.mp (hdisj i i' hii') hj hj'
    · intro i
      have hG : ∀ l, Associated (ε (σ l))
          (∏ j ∈ Finset.univ.filter (fun j => g j = l), ε (w j)) := by
        intro l
        rw [Finset.prod_filter, Fin.prod_univ_succ, Fin.prod_univ_succ]
        have e0 : g 0 = l₀ := rfl
        have e1 : g (Fin.succ 0) = l₀ := rfl
        have e2 : ∀ k : Fin n₀, g k.succ.succ = l₀.succAbove k := fun k => rfl
        have f0 : w 0 = x := rfl
        have f1 : w (Fin.succ 0) = y := rfl
        have f2 : ∀ k : Fin n₀, w k.succ.succ = σ (l₀.succAbove k) := fun k => rfl
        simp only [e0, e1, e2, f0, f1, f2]
        by_cases hl : l = l₀
        · subst hl
          have hne : ∀ k : Fin n₀, ¬ (l.succAbove k = l) := fun k => Fin.succAbove_ne l k
          simp only [hne, if_false, Finset.prod_const_one, if_true, mul_one]
          obtain ⟨u, hu⟩ := hv
          rw [hrel, ← hu]
          exact (associated_unit_mul_left _ _ u.isUnit).symm
        · have hl' : ¬ (l₀ = l) := fun h => hl h.symm
          simp only [hl', if_false, one_mul]
          obtain ⟨k₀, rfl⟩ := Fin.exists_succAbove_eq hl
          rw [Finset.prod_eq_single k₀]
          · simp
          · intro k _ hk
            rw [if_neg]
            intro h
            exact hk (Fin.succAbove_right_injective h)
          · intro h; exact absurd (Finset.mem_univ k₀) h
      refine (hass i).trans ?_
      rw [map_prod]
      rw [← Finset.prod_fiberwise_of_maps_to (s := Finset.univ.filter (fun j => g j ∈ J i))
        (t := J i) (g := g) (fun j hj => (Finset.mem_filter.mp hj).2)]
      apply Associated.prod
      intro l hl
      refine (hG l).trans ?_
      rw [Finset.filter_filter]
      apply Associated.of_eq
      apply Finset.prod_congr _ (fun _ _ => rfl)
      ext j
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      constructor
      · intro h; exact ⟨h ▸ hl, h⟩
      · intro h; exact h.2

  have hS13 : ∀ (Ô A : Type u) [CommRing Ô] [CommRing A] (ε : A →+* Ô) (n : ℕ) (x y : A)
      (σ : Fin n → A) (q : ℕ) (J : Fin q → Finset (Fin n)) (c : Fin q → Ô),
      (∀ i i', i ≠ i' → Disjoint (J i) (J i')) →
      (∀ i, Associated (c i) (ε (∏ l ∈ J i, σ l))) →
      (∃ J' : Fin q → Finset (Fin (n + 2)), (∀ i i', i ≠ i' → Disjoint (J' i) (J' i')) ∧
        ∀ i, Associated (c i) (∏ j ∈ J' i, ε ((Fin.cons x (Fin.cons y σ) : Fin (n + 2) → A) j))) ∧
      Ideal.span (Set.range (fun j => ε ((Fin.cons x (Fin.cons y σ) : Fin (n + 2) → A) j))) =
        Ideal.map ε (Ideal.span ({x, y} ∪ Set.range σ)) := by
    intro Ô A _ _ ε n x y σ q J c hdisj hass
    refine ⟨⟨fun i => (J i).map ((Fin.succEmb _).trans (Fin.succEmb _)),
      fun i i' hii' => ?_, fun i => ?_⟩, ?_⟩
    · rw [Finset.disjoint_map]; exact hdisj i i' hii'
    · rw [Finset.prod_map]
      refine (hass i).trans (Associated.of_eq ?_)
      rw [map_prod]
      rfl
    · rw [Ideal.map_span]
      congr 1
      rw [show (fun j => ε ((Fin.cons x (Fin.cons y σ) : Fin (n + 2) → A) j)) =
        ⇑ε ∘ (Fin.cons x (Fin.cons y σ) : Fin (n + 2) → A) from rfl, Set.range_comp,
        Fin.range_cons, Fin.range_cons, Set.insert_union, Set.singleton_union]

  have main : ∀ (Ô A : Type u) [CommRing Ô] [IsLocalRing Ô] [IsNoetherianRing Ô] [CommRing A]
      [IsRegularLocalRing A] (n q d : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ)
      (e : Ô ≃+* A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (c : Fin q → Ô)
      (J : Fin q → Finset (Fin n)) (u : Fin d → Ô), IsUnit v →
      ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A →
      Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A →
      (∀ i i', i ≠ i' → Disjoint (J i) (J i')) →
      (∀ i, Associated (e (c i))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (∏ l ∈ J i, σ l))) →
      (d : WithBot ℕ∞) = ringKrullDim Ô →
      Ideal.span (Set.range u) = IsLocalRing.maximalIdeal Ô →
      ∃ (n' : ℕ) (s : Fin n' → Ô) (J' : Fin q → Finset (Fin n')),
        (n' : WithBot ℕ∞) = ringKrullDim Ô ∧ Ideal.span (Set.range s) = IsLocalRing.maximalIdeal Ô ∧
        (∀ i i', i ≠ i' → Disjoint (J' i) (J' i')) ∧ ∀ i, Associated (c i) (∏ j ∈ J' i, s j) := by
    intro Ô A _ _ _ _ _ n q d x y v σ b e c J u hv hdimA hspan hdisj hass hdÔ hu
    let ε : A →+* Ô :=
      e.symm.toRingHom.comp (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
    have hεapp : ∀ a, ε a = e.symm (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) a) :=
      fun a => rfl
    have hεsurj : Function.Surjective ε := e.symm.surjective.comp Ideal.Quotient.mk_surjective
    have hker : RingHom.ker ε = Ideal.span {x * y - v * ∏ l, σ l ^ b l} := by
      ext a
      rw [RingHom.mem_ker, hεapp, EmbeddingLike.map_eq_zero_iff, Ideal.Quotient.eq_zero_iff_mem]
    have hεf : ε (x * y - v * ∏ l, σ l ^ b l) = 0 := by
      rw [← RingHom.mem_ker, hker]; exact Ideal.mem_span_singleton_self _
    have hassε : ∀ i, Associated (c i) (ε (∏ l ∈ J i, σ l)) := by
      intro i
      have := (hass i).map e.symm
      rw [RingEquiv.symm_apply_apply] at this
      exact this
    have hx : x ∈ IsLocalRing.maximalIdeal A :=
      hspan ▸ Ideal.subset_span (Or.inl (Set.mem_insert x {y}))
    have hy : y ∈ IsLocalRing.maximalIdeal A :=
      hspan ▸ Ideal.subset_span (Or.inl (Set.mem_insert_of_mem x rfl))
    have hσ : ∀ l, σ l ∈ IsLocalRing.maximalIdeal A :=
      fun l => hspan ▸ Ideal.subset_span (Or.inr ⟨l, rfl⟩)
    have hM : Ideal.comap ε (IsLocalRing.maximalIdeal Ô) = IsLocalRing.maximalIdeal A :=
      IsLocalRing.eq_maximalIdeal (Ideal.comap_isMaximal_of_surjective ε hεsurj)
    have hM' : Ideal.map ε (IsLocalRing.maximalIdeal A) = IsLocalRing.maximalIdeal Ô := by
      rw [← hM, Ideal.map_comap_of_surjective ε hεsurj]
    have hfm : x * y - v * ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A := by
      rw [← hM, Ideal.mem_comap, hεf]; exact zero_mem _
    have hA_bound : ∀ (k : ℕ) (g : Fin k → A),
        Ideal.span (Set.range g) = IsLocalRing.maximalIdeal A → n + 2 ≤ k := by
      intro k g hg
      have h1 : (IsLocalRing.maximalIdeal A).spanFinrank ≤ (Set.range g).ncard := by
        rw [← hg]; exact Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range g)
      have h3 : (((IsLocalRing.maximalIdeal A).spanFinrank : ℕ) : WithBot ℕ∞) =
          ((n + 2 : ℕ) : WithBot ℕ∞) := by
        rw [hdimA]; exact IsRegularLocalRing.spanFinrank_maximalIdeal
      have h4 : (IsLocalRing.maximalIdeal A).spanFinrank = n + 2 := by exact_mod_cast h3
      have := hcard g
      omega
    have hÔ_bound : ∀ (k : ℕ) (g : Fin k → Ô),
        Ideal.span (Set.range g) = IsLocalRing.maximalIdeal Ô → d ≤ k := by
      intro k g hg
      have h1 : (IsLocalRing.maximalIdeal Ô).spanFinrank ≤ k := by
        rw [← hg]
        exact (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range g)).trans (hcard g)
      have h2 := Ideal.height_le_spanFinrank (IsLocalRing.maximalIdeal Ô)
        (inferInstance : (IsLocalRing.maximalIdeal Ô).IsMaximal).ne_top
      have h3 := IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := Ô)
      rw [← hdÔ] at h3
      have h4 : (IsLocalRing.maximalIdeal Ô).height = (d : ℕ∞) := by exact_mod_cast h3
      have h5 : (d : ℕ∞) ≤ (k : ℕ∞) := h4 ▸ h2.trans (by exact_mod_cast h1)
      exact_mod_cast h5

    choose a ha using fun j => hεsurj (u j)
    have hmapa : IsLocalRing.maximalIdeal Ô = Ideal.map ε (Ideal.span (Set.range a)) := by
      rw [← hu, Ideal.map_span, ← Set.range_comp]
      have : (⇑ε ∘ a) = u := funext ha
      rw [this]
    have ha_mem : ∀ j, a j ∈ IsLocalRing.maximalIdeal A := by
      intro j
      rw [← hM, Ideal.mem_comap, ha, ← hu]
      exact Ideal.subset_span ⟨j, rfl⟩
    have hle : IsLocalRing.maximalIdeal A ≤
        Ideal.span (Set.range a) ⊔ Ideal.span {x * y - v * ∏ l, σ l ^ b l} := by
      intro m hm
      rw [← hM, Ideal.mem_comap, hmapa] at hm
      have := Ideal.comap_map_of_surjective ε hεsurj (Ideal.span (Set.range a))
      rw [← RingHom.ker_eq_comap_bot, hker] at this
      rw [← this]
      exact hm
    have hspanA : Ideal.span (Set.range (Fin.cons (x * y - v * ∏ l, σ l ^ b l) a :
        Fin (d + 1) → A)) = IsLocalRing.maximalIdeal A := by
      rw [Fin.range_cons, Ideal.span_insert]
      apply le_antisymm
      · exact sup_le ((Ideal.span_singleton_le_iff_mem _).mpr hfm)
          (Ideal.span_le.mpr (by rintro _ ⟨j, rfl⟩; exact ha_mem j))
      · exact hle.trans (le_of_eq (sup_comm _ _))
    have hlow : n + 1 ≤ d := by have := hA_bound _ _ hspanA; omega
    rcases Nat.lt_or_ge (∑ l, b l) 2 with hlt | hge
    · rcases Nat.lt_or_ge (∑ l, b l) 1 with h0 | h1
      ·
        exfalso
        have hb0 : ∀ l, b l = 0 := fun l =>
          (Finset.sum_eq_zero_iff.mp (by omega)) l (Finset.mem_univ l)
        have hprod : ∏ l, σ l ^ b l = 1 :=
          Finset.prod_eq_one (fun l _ => by rw [hb0 l, pow_zero])
        have hvm : v ∈ IsLocalRing.maximalIdeal A := by
          have hv' : v = x * y - (x * y - v * ∏ l, σ l ^ b l) := by rw [hprod]; ring
          rw [hv']
          exact sub_mem (Ideal.mul_mem_right _ _ hx) hfm
        exact ((IsLocalRing.mem_maximalIdeal v).mp hvm) hv
      ·
        obtain ⟨l₀, -, hl₀⟩ := Finset.exists_ne_zero_of_sum_ne_zero (by omega : ∑ l, b l ≠ 0)
        have hbl₀ : b l₀ = 1 := by
          have := Finset.single_le_sum (fun l _ => Nat.zero_le (b l)) (Finset.mem_univ l₀)
          omega
        have hb0 : ∀ l, l ≠ l₀ → b l = 0 := by
          intro l hl
          have h2 : ∑ i ∈ ({l, l₀} : Finset _), b i ≤ ∑ i, b i :=
            Finset.sum_le_sum_of_subset (Finset.subset_univ _)
          rw [Finset.sum_pair hl] at h2
          omega
        obtain ⟨n₀, rfl⟩ : ∃ n₀, n = n₀ + 1 := ⟨n - 1, by have := l₀.pos; omega⟩
        have hprod : ∏ l, σ l ^ b l = σ l₀ := by
          rw [Finset.prod_eq_single_of_mem l₀ (Finset.mem_univ _)
            (fun l _ hl => by rw [hb0 l hl, pow_zero]), hbl₀, pow_one]
        have hrel : ε x * ε y = ε v * ε (σ l₀) := by
          have := hεf
          rw [hprod, map_sub, map_mul, map_mul, sub_eq_zero] at this
          exact this
        have hv' : IsUnit (ε v) := hv.map ε
        have hs := hS10 Ô A ε n₀ x y v σ l₀ hv' hrel
        rw [hspan, hM'] at hs
        have hdn : d = n₀ + 2 := by have := hÔ_bound _ _ hs; omega
        obtain ⟨J', hJ'd, hJ'a⟩ := hS11 Ô A ε n₀ x y v σ l₀ hv' hrel q J c hdisj hassε
        exact ⟨n₀ + 2, _, J', by rw [← hdÔ, hdn], hs, hJ'd, hJ'a⟩
    ·
      have hf2 : x * y - v * ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A ^ 2 := by
        refine Ideal.sub_mem _ ?_ ?_
        · rw [pow_two]; exact Ideal.mul_mem_mul hx hy
        · apply Ideal.mul_mem_left
          have h1 : ∏ l, σ l ^ b l ∈ ∏ l : Fin n, IsLocalRing.maximalIdeal A ^ b l :=
            Ideal.prod_mem_prod (fun l _ => Ideal.pow_mem_pow (hσ l) _)
          rw [Finset.prod_pow_eq_pow_sum] at h1
          exact Ideal.pow_le_pow_right hge h1
      have hle2 : IsLocalRing.maximalIdeal A ≤
          Ideal.span (Set.range a) ⊔ IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A := by
        refine hle.trans (sup_le_sup_left ?_ _)
        rw [Ideal.span_singleton_le_iff_mem, Ideal.smul_eq_mul, ← pow_two]
        exact hf2
      have hfg : (IsLocalRing.maximalIdeal A).FG := IsNoetherian.noetherian _
      have hle3 : IsLocalRing.maximalIdeal A ≤ Ideal.span (Set.range a) :=
        Submodule.le_of_le_smul_of_le_jacobson_bot hfg
          (IsLocalRing.maximalIdeal_le_jacobson _) hle2
      have hm_eq : Ideal.span (Set.range a) = IsLocalRing.maximalIdeal A :=
        le_antisymm (Ideal.span_le.mpr (by rintro _ ⟨j, rfl⟩; exact ha_mem j)) hle3
      have hd2 : n + 2 ≤ d := hA_bound d a hm_eq
      obtain ⟨⟨J', hJ'd, hJ'a⟩, hs⟩ := hS13 Ô A ε n x y σ q J c hdisj hassε
      rw [hspan, hM'] at hs
      have hdn : d = n + 2 := by have := hÔ_bound _ _ hs; omega
      exact ⟨n + 2, _, J', by rw [← hdÔ, hdn], hs, hJ'd, hJ'a⟩
  intro Z B z hnode hreg
  obtain ⟨n, q, A, iA, iAreg, _, x, y, v, σ, b, e, h, J, hv, hdimA, hspan, hdisj, _, _, hass,
    hiff⟩ := hnode
  obtain ⟨d, t, hd, ht⟩ : ∃ (d : ℕ) (t : Fin d → Z.presheaf.stalk z),
      (d : WithBot ℕ∞) = ringKrullDim (Z.presheaf.stalk z) ∧
      Ideal.span (Set.range t) = IsLocalRing.maximalIdeal (Z.presheaf.stalk z) := by
    have hfg : (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)).FG := IsNoetherian.noetherian _
    obtain ⟨S, hS, hSspan⟩ := Submodule.FG.exists_span_set_encard_eq_spanFinrank hfg
    have hfin : S.Finite := Set.finite_of_encard_eq_coe hS
    obtain ⟨d, f, hf⟩ := hfin.fin_embedding
    have hd : d = (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)).spanFinrank := by
      have h1 : S.ncard = d := by
        rw [← hf, Set.ncard_range_of_injective f.injective, Nat.card_eq_fintype_card,
          Fintype.card_fin]
      have h2 := hfin.cast_ncard_eq
      rw [hS, h1] at h2
      exact_mod_cast h2
    refine ⟨d, f, ?_, ?_⟩
    · rw [hd]; exact IsRegularLocalRing.spanFinrank_maximalIdeal
    · rw [hf]; exact hSspan
  obtain ⟨iloc, iNoeth, _, hmÔ, hdÔ⟩ := wcpa_dj_npr_completion_data (Z.presheaf.stalk z) d t hd ht
  obtain ⟨n', s, J', h1, h2, h3, h4⟩ := main _ A n q d x y v σ b e
    (fun i => algebraMap _ _ (h i)) J (fun i => algebraMap _ _ (t i)) hv hdimA hspan hdisj hass
    hdÔ hmÔ.symm
  refine ⟨n', q, s, h, J', ?_, ?_, h3, h4, hiff⟩
  · rw [h1, ← hdÔ, hd]
  · rw [h2, hmÔ, ← ht, Ideal.map_span, ← Set.range_comp]
    rfl

theorem wcpa_dj_rnb_blowup_charts : ∀ (k : Type u) [Field k] (Y P : Scheme.{u}) (sY : Y ⟶ Spec (.of k)) (I : Y.IdealSheafData) (π : P ⟶ Y), IsSeparated sY → wcCsdIsBlowup I π → ∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = I.ideal U → ∃ V : Fin (r + 1) → P.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(P, V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a :=
by
  intro k _ Y P sY I π hsep hbl U r f hf
  classical

  have n6 : ∀ (X : Scheme.{u}) [IsAffine X] (J : X.IdealSheafData) (T : Ideal Γ(X, ⊤)),
      J.ideal ⟨⊤, isAffineOpen_top X⟩ = T → J = Scheme.IdealSheafData.ofIdealTop T := by
    intro X _ J T h
    subst h
    rw [← Scheme.IdealSheafData.equivOfIsAffine_symm_apply,
      ← Scheme.IdealSheafData.equivOfIsAffine_apply]
    exact (Scheme.IdealSheafData.equivOfIsAffine.symm_apply_apply J).symm

  have n5 : ∀ (Y : Scheme.{u}) (U : Y.Opens),
      Function.Bijective (U.ι.appLE U ⊤ (Scheme.Opens.ι_preimage_self U).ge).hom := by
    intro Y U
    rw [Scheme.Opens.ι_appLE]
    have key : ∀ {V W : Y.Opens} (h : V ≤ W), V = W →
        Function.Bijective (Y.presheaf.map (homOfLE h).op).hom := by
      intro V W h e
      subst e
      have : homOfLE h = 𝟙 V := Subsingleton.elim _ _
      rw [this, op_id, Y.presheaf.map_id, CommRingCat.hom_id, RingHom.coe_id]
      exact Function.bijective_id
    exact key _ (Scheme.Opens.ι_image_top U)

  have n4 : ∀ (P0 Y' Y : Scheme.{u}) (κ : P0 ⟶ Y') [IsOpenImmersion κ] (π : Y' ⟶ Y)
      (ρ : P0 ⟶ Y) (U : Y.Opens) (W : P0.Opens), κ ≫ π = ρ → ∀ (hW : W ≤ ρ ⁻¹ᵁ U)
      (hV : κ ''ᵁ W ≤ π ⁻¹ᵁ U) (a : Γ(Y, U)),
      (κ.appIso W).hom.hom ((π.appLE U (κ ''ᵁ W) hV).hom a) = (ρ.appLE U W hW).hom a := by
    intro P0 Y' Y κ _ π ρ U W hκ hW hV a
    subst hκ
    have : π.appLE U (κ ''ᵁ W) hV ≫ (κ.appIso W).hom = (κ ≫ π).appLE U W hW := by
      rw [Scheme.Hom.appIso_hom, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map,
        Scheme.Hom.appLE_comp_appLE]
    exact congrArg (fun h => h.hom a) this

  have n1 : ∀ (A A0 B : Type u) [CommRing A] [CommRing A0] [CommRing B] (τ : A →+* A0) (r : ℕ)
      (f : Fin (r + 1) → A) (a : Fin (r + 1)) (φ : A0 →+* B) (t : Fin (r + 1) → B)
      (ψ : B →+* Localization.Away (τ (f a))), Function.Bijective τ → Function.Injective ψ →
      (∀ x, ψ (φ x) = algebraMap A0 (Localization.Away (τ (f a))) x) →
      (∀ j, φ (τ (f j)) = t j * φ (τ (f a))) →
      (∀ b : B, b ∈ Subring.closure (Set.range φ ∪ Set.range t)) →
      ∃ e : B ≃+* (Algebra.adjoin A (Set.range fun l => IsLocalization.mk'
        (Localization.Away (f a)) (f l) (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a)))),
        ∀ x : A, e (φ (τ x)) = algebraMap A _ x := by
    intro A A0 B _ _ _ τ r f a φ t ψ hτ hψ hψφ hc3 hgen
    set T := RingEquiv.ofBijective τ hτ with hT
    have hTa : ∀ x, T x = τ x := fun x => rfl
    have hH : Submonoid.map T.symm.toMonoidHom (Submonoid.powers (τ (f a))) =
        Submonoid.powers (f a) := by
      rw [Submonoid.map_powers]
      congr 1
      rw [← hTa]
      exact T.symm_apply_apply (f a)
    let κ := IsLocalization.ringEquivOfRingEquiv (Localization.Away (τ (f a)))
      (Localization.Away (f a)) T.symm hH
    have hκ : ∀ y, κ (algebraMap A0 _ y) = algebraMap A _ (T.symm y) := fun y =>
      IsLocalization.ringEquivOfRingEquiv_eq hH y
    let Ψ : B →+* Localization.Away (f a) := κ.toRingHom.comp ψ
    have hΨinj : Function.Injective Ψ := κ.injective.comp hψ
    have hΨφ : ∀ x : A, Ψ (φ (τ x)) = algebraMap A _ x := by
      intro x
      show κ (ψ (φ (τ x))) = _
      rw [hψφ, hκ, ← hTa, T.symm_apply_apply]
    have hΨt : ∀ j, Ψ (t j) = IsLocalization.mk' (Localization.Away (f a)) (f j)
        (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a)) := by
      intro j
      rw [IsLocalization.eq_mk'_iff_mul_eq]
      show Ψ (t j) * algebraMap A _ (f a) = algebraMap A _ (f j)
      rw [← hΨφ, ← hΨφ, ← map_mul, ← hc3]
    set S := Algebra.adjoin A (Set.range fun l => IsLocalization.mk' (Localization.Away (f a))
        (f l) (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a))) with hS
    have hmem : ∀ b, Ψ b ∈ S := by
      intro b
      have hle : Subring.closure (Set.range φ ∪ Set.range t) ≤ S.toSubring.comap Ψ := by
        rw [Subring.closure_le]
        rintro _ (⟨y, rfl⟩ | ⟨j, rfl⟩)
        · show Ψ (φ y) ∈ S
          obtain ⟨x, rfl⟩ := hτ.2 y
          rw [hΨφ]; exact S.algebraMap_mem x
        · show Ψ (t j) ∈ S
          rw [hΨt]; exact Algebra.subset_adjoin ⟨j, rfl⟩
      exact hle (hgen b)
    have hsurj : S.toSubring ≤ Ψ.range := by
      rw [Algebra.adjoin_eq_ring_closure, Subring.closure_le]
      rintro _ (⟨x, rfl⟩ | ⟨j, rfl⟩)
      · exact ⟨φ (τ x), hΨφ x⟩
      · exact ⟨t j, hΨt j⟩
    refine ⟨RingEquiv.ofBijective (Ψ.codRestrict S hmem) ⟨?_, ?_⟩, ?_⟩
    · intro x y h
      apply hΨinj
      exact congrArg Subtype.val h
    · rintro ⟨s, hs⟩
      obtain ⟨b, hb⟩ := hsurj hs
      exact ⟨b, Subtype.ext hb⟩
    · intro x
      apply Subtype.ext
      show Ψ (φ (τ x)) = _
      rw [hΨφ]
      rfl

  have n2 : ∀ (X X' : Scheme.{u}) [IsAffine X] (r : X' ⟶ X) (W : X'.Opens) (c : Γ(X, ⊤))
      (e : W ≤ r ⁻¹ᵁ ⊤), IsAffineOpen W → (r.appLE ⊤ W e).hom c ∈ nonZeroDivisors Γ(X', W) →
      r ⁻¹ᵁ X.basicOpen c ≤ W → IsIso (r ∣_ X.basicOpen c) →
      ∃ ψ : Γ(X', W) →+* Localization.Away c, Function.Injective ψ ∧
        ∀ x : Γ(X, ⊤), ψ ((r.appLE ⊤ W e).hom x) =
          algebraMap Γ(X, ⊤) (Localization.Away c) x := by
    intro X X' _ r W c e hW hnzd hOW hiso
    set D := X.basicOpen c with hD
    set D' := D.ι ''ᵁ ⊤ with hD'
    have hDD : D' = D := Scheme.Opens.ι_image_top D
    have hOW' : r ⁻¹ᵁ D' ≤ W := by rw [hDD]; exact hOW
    have hisoD : IsIso (r.app D') := by
      have h1 : IsIso ((r ∣_ D).app ⊤) := inferInstance
      rw [morphismRestrict_app] at h1
      exact @IsIso.of_isIso_comp_right _ _ _ _ _ _ _ (Functor.map_isIso _ _) h1
    have hbo : r ⁻¹ᵁ D' = X'.basicOpen ((r.appLE ⊤ W e).hom c) := by
      rw [Scheme.basicOpen_appLE, hDD]
      exact (inf_eq_right.mpr hOW).symm
    let ρ : Γ(X', W) →+* Γ(X', r ⁻¹ᵁ D') := (X'.presheaf.map (homOfLE hOW').op).hom
    have hρinj : Function.Injective ρ := by
      letI : Algebra Γ(X', W) Γ(X', r ⁻¹ᵁ D') := ρ.toAlgebra
      haveI : IsLocalization.Away ((r.appLE ⊤ W e).hom c) Γ(X', r ⁻¹ᵁ D') :=
        hW.isLocalization_of_eq_basicOpen _ (homOfLE hOW') hbo
      exact IsLocalization.injective (M := Submonoid.powers ((r.appLE ⊤ W e).hom c))
        Γ(X', r ⁻¹ᵁ D') (Submonoid.powers_le.mpr hnzd)
    let res : Γ(X, ⊤) →+* Γ(X, D') := (X.presheaf.map (homOfLE le_top : D' ⟶ ⊤).op).hom
    letI : Algebra Γ(X, ⊤) Γ(X, D') := res.toAlgebra
    haveI : IsLocalization.Away c Γ(X, D') :=
      (isAffineOpen_top X).isLocalization_of_eq_basicOpen c (homOfLE le_top) hDD
    let lam := IsLocalization.algEquiv (Submonoid.powers c) Γ(X, D') (Localization.Away c)
    let e1 := (asIso (r.app D')).commRingCatIsoToRingEquiv
    have he1 : ∀ y, e1 y = (r.app D').hom y := fun y => rfl
    have hcomm : ∀ x, ρ ((r.appLE ⊤ W e).hom x) = e1 (res x) := by
      intro x
      rw [he1]
      have : r.appLE ⊤ W e ≫ X'.presheaf.map (homOfLE hOW').op =
          X.presheaf.map (homOfLE le_top : D' ⟶ ⊤).op ≫ r.app D' := by
        rw [Scheme.Hom.appLE_map, Scheme.Hom.app_eq_appLE, Scheme.Hom.map_appLE]
      exact congrArg (fun h => h.hom x) this
    refine ⟨lam.toRingEquiv.toRingHom.comp (e1.symm.toRingHom.comp ρ), ?_, ?_⟩
    · exact lam.injective.comp (e1.symm.injective.comp hρinj)
    · intro x
      show lam (e1.symm (ρ _)) = _
      rw [hcomm, RingEquiv.symm_apply_apply]
      exact lam.commutes x

  haveI hUaff : IsAffine U.1.toScheme := U.2
  obtain ⟨PU, ιU, κ', -, hκoi, hκ, hrange, hblU, hidl, -⟩ :=
    wc_beq_affine_blowup_model k Y sY hsep I U r f hf.symm P π hbl
  haveI := hκoi
  have hJ := n6 U.1.toScheme (I.comap U.1.ι) _ hidl
  rw [hJ] at hblU
  obtain ⟨W, t, hc1, hc2, hc3, hc4, hc5, hc6⟩ := wc_bp_blowup_charts (wcBeqGU U f)
    (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) hblU
  have hrng : κ'.opensRange = π ⁻¹ᵁ (U : Y.Opens) := by
    apply TopologicalSpace.Opens.ext
    apply Set.ext
    intro x
    rw [Scheme.Hom.coe_opensRange]
    exact hrange x
  have hcov : (⨆ i, κ' ''ᵁ W i) = π ⁻¹ᵁ (U : Y.Opens) := by
    rw [← Scheme.Hom.image_iSup, hc1, Scheme.Hom.image_top_eq_opensRange, hrng]
  have hV : ∀ i, κ' ''ᵁ W i ≤ π ⁻¹ᵁ (U : Y.Opens) := fun i =>
    (κ'.image_le_opensRange (W i)).trans hrng.le
  have hle : ∀ a, (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) ⁻¹ᵁ
      (U.1.toScheme).basicOpen (wcBeqGU U f a) ≤ W a := by
    intro a x hx
    have hx' : x ∈ ⨆ l, W l := by rw [hc1]; trivial
    obtain ⟨k', hk⟩ := TopologicalSpace.Opens.mem_iSup.mp hx'
    have h1 : x ∈ PU.basicOpen (((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY)
        (wcProjKStr k r)).appLE ⊤ (W k') (by simp)).hom (wcBeqGU U f a)) := by
      have e := Scheme.basicOpen_appLE (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r))
        (W k') ⊤ (by simp) (wcBeqGU U f a)
      exact (congrArg (fun O : PU.Opens => x ∈ O) e).mpr ⟨hk, hx⟩
    rw [hc3 k' a, Scheme.basicOpen_mul] at h1
    exact hc6 k' a h1.1
  refine ⟨fun i => κ' ''ᵁ W i, hcov, fun i => ⟨hV i, (hc2 i).image_of_isOpenImmersion κ', ?_⟩⟩
  have hdisj : ((Scheme.IdealSheafData.ofIdealTop (Ideal.span (Set.range (wcBeqGU U f)))).support
      : Set U.1.toScheme) ∩ ((U.1.toScheme).basicOpen (wcBeqGU U f i) : Set U.1.toScheme) = ∅ := by
    rw [Set.eq_empty_iff_forall_notMem]
    rintro x ⟨hx1, hx2⟩
    rw [Scheme.IdealSheafData.coe_support_ofIdealTop] at hx1
    exact (Scheme.mem_zeroLocus_iff _ _ x).mp hx1 (wcBeqGU U f i)
      (Ideal.subset_span ⟨i, rfl⟩) hx2
  have hiso := wc_csd_blowup_iso_off_center U.1.toScheme PU _
    (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) _ hblU hdisj
  obtain ⟨ψ, hψinj, hψ⟩ := n2 U.1.toScheme PU
    (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) (W i) (wcBeqGU U f i)
    (by simp) (hc2 i) (hc4 i) (hle i) hiso
  obtain ⟨e₀, he₀⟩ := n1 Γ(Y, U) Γ(U.1.toScheme, ⊤) Γ(PU, W i)
    (U.1.ι.appLE U.1 ⊤ (Scheme.Opens.ι_preimage_self U.1).ge).hom r f i
    ((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)).appLE ⊤ (W i) (by simp)).hom
    (t i) ψ (n5 Y U.1) hψinj hψ (hc3 i) (hc5 i)
  have hκρ : κ' ≫ π = (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) ≫ U.1.ι :=
    hκ.trans (Category.assoc _ _ _).symm
  have hW : W i ≤ ((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) ≫ U.1.ι) ⁻¹ᵁ
      (U : Y.Opens) := by
    intro x _
    show U.1.ι ((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) x) ∈ U.1
    exact ((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) x).2
  have hρa : ∀ a : Γ(Y, U),
      (((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) ≫ U.1.ι).appLE
        (U : Y.Opens) (W i) hW).hom a =
      ((ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)).appLE ⊤ (W i) (by simp)).hom
        ((U.1.ι.appLE U.1 ⊤ (Scheme.Opens.ι_preimage_self U.1).ge).hom a) := by
    intro a
    have h := (Scheme.Hom.appLE_comp_appLE
      (ιU ≫ Limits.pullback.fst (U.1.ι ≫ sY) (wcProjKStr k r)) U.1.ι U.1 ⊤ (W i)
      (Scheme.Opens.ι_preimage_self U.1).ge (by simp)).symm
    exact congrArg (fun h => h.hom a) h
  refine ⟨(κ'.appIso (W i)).commRingCatIsoToRingEquiv.trans e₀, ?_⟩
  intro a
  show e₀ ((κ'.appIso (W i)).hom.hom ((π.appLE (U : Y.Opens) (κ' ''ᵁ W i) (hV i)).hom a)) = _
  rw [n4 PU P Y κ' π _ (U : Y.Opens) (W i) hκρ hW (hV i) a, hρa, he₀]

theorem wcpa_dj_rnb_integral_of_charts : ∀ (P Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (r : P ⟶ Y) (U₀ : Y.Opens), U₀ ≠ ⊥ → IsIso (r ∣_ U₀) → (∀ p : P, ∃ (V : P.Opens) (s : Γ(P, V)), p ∈ V ∧ IsAffineOpen V ∧ IsDomain Γ(P, V) ∧ s ≠ 0 ∧ P.basicOpen s ≤ r ⁻¹ᵁ U₀) → AlgebraicGeometry.IsIntegral P :=
by
  intro P Y _ r U₀ hU₀ hiso hloc
  classical
  have s2 : ∀ (V : P.Opens), IsAffineOpen V → IsDomain Γ(P, V) → IsIrreducible (V : Set P) := by
    intro V hV hdom
    have h1 := IrreducibleSpace.isIrreducible_univ (Spec Γ(P, V))
    have h2 := h1.image hV.fromSpec hV.fromSpec.continuous.continuousOn
    rwa [Set.image_univ, hV.range_fromSpec] at h2
  have s3 : ∀ (V : P.Opens) (s : Γ(P, V)), IsAffineOpen V → IsDomain Γ(P, V) → s ≠ 0 →
      ((P.basicOpen s : P.Opens) : Set P).Nonempty := by
    intro V s hV hdom hs
    let 𝔭 : PrimeSpectrum Γ(P, V) := ⟨⊥, Ideal.isPrime_bot⟩
    have hmem : 𝔭 ∈ hV.fromSpec ⁻¹ᵁ P.basicOpen s := by
      rw [hV.fromSpec_preimage_basicOpen]
      exact (PrimeSpectrum.mem_basicOpen s 𝔭).mpr (by simpa [𝔭] using hs)
    exact ⟨hV.fromSpec 𝔭, hmem⟩
  have s4 : ∀ (V : P.Opens) (p : P), p ∈ V → IsAffineOpen V → IsDomain Γ(P, V) →
      IsDomain (P.presheaf.stalk p) := by
    intro V p hp hV hdom
    letI : Algebra Γ(P, V) (P.presheaf.stalk p) :=
      TopCat.Presheaf.algebra_section_stalk P.presheaf ⟨p, hp⟩
    haveI := hV.isLocalization_stalk ⟨p, hp⟩
    exact IsLocalization.isDomain_of_le_nonZeroDivisors (P.presheaf.stalk p)
      (M := (hV.primeIdealOf ⟨p, hp⟩).asIdeal.primeCompl) (Ideal.primeCompl_le_nonZeroDivisors _)
  have s5 : IsIrreducible ((r ⁻¹ᵁ U₀ : P.Opens) : Set P) := by
    obtain ⟨u, hu⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty U₀).mp hU₀
    haveI : Nonempty U₀ := ⟨⟨u, hu⟩⟩
    haveI : Nonempty (r ⁻¹ᵁ U₀).toScheme := ⟨(r ∣_ U₀).homeomorph.symm ⟨u, hu⟩⟩
    haveI : AlgebraicGeometry.IsIntegral (r ⁻¹ᵁ U₀).toScheme :=
      isIntegral_of_isOpenImmersion (r ∣_ U₀)
    have h1 := IrreducibleSpace.isIrreducible_univ (r ⁻¹ᵁ U₀).toScheme
    have h2 := h1.image (r ⁻¹ᵁ U₀).ι (r ⁻¹ᵁ U₀).ι.continuous.continuousOn
    rwa [Set.image_univ, Scheme.Opens.range_ι] at h2
  set O : Set P := ((r ⁻¹ᵁ U₀ : P.Opens) : Set P) with hO
  have hOo : IsOpen O := (r ⁻¹ᵁ U₀).isOpen
  have hall : ∀ p : P, p ∈ closure O := by
    intro p
    obtain ⟨V, s, hp, hV, hdom, hs, hle⟩ := hloc p
    obtain ⟨x, hx⟩ := s3 V s hV hdom hs
    by_contra hpc
    have hpre := (s2 V hV hdom).isPreirreducible
    obtain ⟨y, _, hyc, hyO⟩ := hpre (closure O)ᶜ O isClosed_closure.isOpen_compl hOo
      ⟨p, hp, hpc⟩ ⟨x, P.basicOpen_le s hx, hle hx⟩
    exact hyc (subset_closure hyO)
  have hcl : closure O = Set.univ := Set.eq_univ_of_forall hall
  have hirr : IsIrreducible (Set.univ : Set P) := hcl ▸ s5.closure
  haveI : IrreducibleSpace P := (irreducibleSpace_def P).mpr hirr
  haveI : ∀ x : P, _root_.IsReduced (P.presheaf.stalk x) := by
    intro x
    obtain ⟨V, s, hx, hV, hdom, -, -⟩ := hloc x
    haveI := s4 V x hx hV hdom
    infer_instance
  haveI := isReduced_of_isReduced_stalk P
  exact isIntegral_of_irreducibleSpace_of_isReduced P

theorem wcpa_dj_rnb_nonzero_generators : ∀ (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] [IsLocallyNoetherian Y] (I : Y.IdealSheafData) (U : Y.affineOpens), genericPoint Y ∉ (I.support : Set Y) → ((U : Y.Opens) : Set Y).Nonempty → ∃ (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = I.ideal U ∧ ∀ i, f i ≠ 0 :=
by
  intro Y _ _ I U hη hU
  classical
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

theorem wcpa_dj_rnb_chart_domain : ∀ (A B : Type u) [CommRing A] [IsDomain A] [CommRing B] (r : ℕ) (f : Fin (r + 1) → A) (i : Fin (r + 1)) (φ : A →+* B) (e : B ≃+* (Algebra.adjoin A (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))))), (∀ a, e (φ a) = algebraMap A _ a) → f i ≠ 0 → IsDomain B ∧ φ (f i) ≠ 0 :=
by
  intro A B _ _ _ r f i φ e he hfi
  haveI hL : IsDomain (Localization.Away (f i)) :=
    IsLocalization.Away.isDomain (Localization.Away (f i)) hfi
  haveI hS : IsDomain (Algebra.adjoin A (Set.range fun l => IsLocalization.mk'
      (Localization.Away (f i)) (f l)
      (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))) := inferInstance
  refine ⟨MulEquiv.isDomain _ e.toMulEquiv, ?_⟩
  intro h
  have h1 := he (f i)
  rw [h, map_zero] at h1
  have h2 := congrArg Subtype.val h1
  have h3 : (0 : Localization.Away (f i)) = algebraMap A (Localization.Away (f i)) (f i) := h2
  exact (IsLocalization.map_units (Localization.Away (f i))
    (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))).ne_zero h3.symm

theorem wcpa_dj_rn_blowup : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) (I : Y.IdealSheafData), wcpaDjIsProjOver k sY → (I.support : Set Y) ≠ Set.univ → ∃ (Y' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Y') (π : Y' ⟶ Y), IsProper π ∧ Surjective π ∧ wcpaDjIsProjOver k (π ≫ sY) ∧ IsIso (π ∣_ (⟨(I.support : Set Y)ᶜ, I.support.isClosed.isOpen_compl⟩ : Y.Opens)) ∧ ∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = I.ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a :=
by
  intro k _ Y _ sY I hproj hsupp
  classical
  haveI hsYp : IsProper sY := wcpa_dj_proj_proper k sY hproj
  haveI : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian sY

  have hproj' := hproj
  obtain ⟨N, j, hj, -⟩ := hproj'
  haveI := hj
  obtain ⟨m, g, w, hgen, hunit, hcoc⟩ := wc_csd_blowup_chart_generators k N Y j I hj
  have hUa : ∀ J, IsAffineOpen (j ⁻¹ᵁ wcSgD k N J) := fun J =>
    IsAffineOpen.preimage (Proj.isAffineOpen_basicOpen _ (MvPolynomial.X J)
      ((MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X k J))
      one_pos) j
  have hcover : (⨆ J, j ⁻¹ᵁ wcSgD k N J) = ⊤ := by
    have h0 : (⨆ J, wcSgD k N J) = ⊤ := wc_pp_basicOpen_cover k N
    rw [← Scheme.Hom.preimage_iSup, h0, Scheme.Hom.preimage_top]
  obtain ⟨P, r, ιb, hιb, hιbr, hbl⟩ := wc_csd_blowup_model k Y sY I N m
    (fun J => j ⁻¹ᵁ wcSgD k N J) hUa g w hcover (fun J => hgen J (hUa J)) hunit hcoc
  haveI := hιb

  haveI := wc_proj_space_isProper k m
  haveI hrp : IsProper r := by rw [← hιbr]; infer_instance

  set U₀ : Y.Opens := ⟨(I.support : Set Y)ᶜ, I.support.isClosed.isOpen_compl⟩ with hU₀def
  have hη : genericPoint Y ∉ (I.support : Set Y) := by
    intro h
    apply hsupp
    apply Set.eq_univ_of_forall
    intro y
    exact ((genericPoint_spec Y).specializes (Set.mem_univ y)).mem_closed I.support.isClosed h
  have hηU : genericPoint Y ∈ (U₀ : Set Y) := hη
  have hU₀ : U₀ ≠ ⊥ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨_, hηU⟩
  haveI hiso : IsIso (r ∣_ U₀) :=
    wc_csd_blowup_iso_off_center Y P I r U₀ hbl (Set.inter_compl_self _)

  have hcharts := wcpa_dj_rnb_blowup_charts k Y P sY I r inferInstance hbl

  have hloc : ∀ p : P, ∃ (V : P.Opens) (s : Γ(P, V)), p ∈ V ∧ IsAffineOpen V ∧
      IsDomain Γ(P, V) ∧ s ≠ 0 ∧ P.basicOpen s ≤ r ⁻¹ᵁ U₀ := by
    intro p
    obtain ⟨W, hW, hpW, -⟩ := exists_isAffineOpen_mem_and_subset
      (show r p ∈ (⊤ : Y.Opens) from trivial)
    let U : Y.affineOpens := ⟨W, hW⟩
    obtain ⟨n, f, hspan, hf0⟩ := wcpa_dj_rnb_nonzero_generators Y I U hη ⟨r p, hpW⟩
    obtain ⟨V, hVsup, hVi⟩ := hcharts U n f hspan
    have hpV : p ∈ r ⁻¹ᵁ (U : Y.Opens) := hpW
    rw [← hVsup] at hpV
    obtain ⟨a, ha⟩ := TopologicalSpace.Opens.mem_iSup.mp hpV
    obtain ⟨hV, hVaff, e, he⟩ := hVi a
    haveI : Nonempty (U : Y.Opens) := ⟨⟨r p, hpW⟩⟩
    haveI := IsIntegral.component_integral (X := Y) (U : Y.Opens)
    obtain ⟨hdom, hs0⟩ := wcpa_dj_rnb_chart_domain Γ(Y, U) Γ(P, V a) n f a
      (r.appLE (U : Y.Opens) (V a) hV).hom e he (hf0 a)
    refine ⟨V a, (r.appLE (U : Y.Opens) (V a) hV).hom (f a), ha, hVaff, hdom, hs0, ?_⟩
    rw [Scheme.basicOpen_appLE]
    intro x hx
    have hx2 : r x ∈ Y.basicOpen (f a) := hx.2
    show r x ∈ (U₀ : Set Y)
    intro hsx
    have hxU : r x ∈ ((U : Y.Opens) : Set Y) := Y.basicOpen_le (f a) hx2
    have hmem : r x ∈ (I.support : Set Y) ∩ ((U : Y.Opens) : Set Y) := ⟨hsx, hxU⟩
    rw [Scheme.IdealSheafData.coe_support_inter] at hmem
    have hfa : f a ∈ (I.ideal U : Set Γ(Y, U)) := by
      rw [← hspan]; exact Ideal.subset_span ⟨a, rfl⟩
    exact (Scheme.mem_zeroLocus_iff Y _ (r x)).mp hmem.1 (f a) hfa hx2
  haveI hPint : AlgebraicGeometry.IsIntegral P :=
    wcpa_dj_rnb_integral_of_charts P Y r U₀ hU₀ hiso hloc

  have hsub : (U₀ : Set Y) ⊆ Set.range ⇑r := by
    intro u hu
    obtain ⟨w', hw'⟩ := (r ∣_ U₀).surjective ⟨u, hu⟩
    have hw1 : r w'.1 = u := by
      have := congrArg Subtype.val hw'
      rw [morphismRestrict_base_coe] at this
      exact this
    exact ⟨w'.1, hw1⟩
  have hsurj : Surjective r := by
    have hcl : IsClosed (Set.range ⇑r) := r.isClosedMap.isClosed_range
    have hd : Dense (U₀ : Set Y) := U₀.isOpen.dense ⟨_, hηU⟩
    have hc : closure (U₀ : Set Y) ⊆ Set.range ⇑r := hcl.closure_subset_iff.mpr hsub
    rw [hd.closure_eq] at hc
    exact ⟨fun x => hc (Set.mem_univ x)⟩

  have hPk : wcpaDjIsProjOver k (wcProjKStr k m ≫ 𝟙 (Spec (.of k))) := by
    unfold wcpaDjIsProjOver
    exact ⟨m, 𝟙 _, inferInstance, by rw [Category.id_comp, Category.comp_id]⟩
  have hP8 := wcpa_dj_ssm_proj_fibre_product k Y (Spec (.of k)) (wcProjK k m) P (𝟙 _) sY
    (wcProjKStr k m) ιb inferInstance (by rwa [Category.comp_id]) hPk hιb
  have heq : ιb ≫ Limits.pullback.snd sY (wcProjKStr k m) ≫ wcProjKStr k m ≫
      𝟙 (Spec (.of k)) = r ≫ sY := by
    rw [Category.comp_id, ← Limits.pullback.condition, ← hιbr]
    simp only [Category.assoc]
  rw [heq] at hP8
  exact ⟨P, hPint, r, hrp, hsurj, hP8, hiso, fun U n f hspan _ => hcharts U n f hspan⟩

end GRWTSK.FiniteFieldWeil
