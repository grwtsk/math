import GRWTSK.AlgebraicGeometry.Alterations.ToroidalResolutionDescent

/-!
# Control of boundaries and conversion to strict normal crossings

Source candidate split from `weil_conjecture_main.lean`, lines 46063–50943.
See the adjacent `StrictNormalCrossings.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_rn_toroidal_snc : ∀ (k : Type u) [Field k] (S Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y] (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (D : Set S), wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (g ≫ sS) → Flat g → IsProper g → wcpaDjSections g m τ → IsClosed D → D ≠ Set.univ → (∀ p : S, IsRegularLocalRing (S.presheaf.stalk p)) → wcpaDjMonoNodeForm g D → wcpaDjSNCSet S D → ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (φ : Z ⟶ Y), IsProper φ ∧ Surjective φ ∧ (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (φ ∣_ V)) ∧ (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) ∧ wcpaDjIsProjOver k (φ ≫ g ≫ sS) ∧ ∃ B : Set Z, wcpaDjFmlNCSet Z B ∧ ⇑φ ⁻¹' (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)) ⊆ B :=
by
  intro k _ S Y _ _ sS g m τ D hS hY hflat hprop hsec hDcl hDne hreg hMN hD
  classical
  obtain ⟨hB₀cl, hη⟩ := wcpa_dj_ts_boundary S Y g m τ D hflat hprop hsec hDcl hDne
  have hloc : ∀ y : Y, wcpaDjTorPt Y (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)) y ∨
      wcpaDjTorNodeSgl Y (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)) y := by
    intro y
    by_cases hy : ∃ W : Y.Opens, y ∈ W ∧ SmoothOfRelativeDimension 1 (W.ι ≫ g)
    · exact Or.inl (wcpa_dj_ts_smooth_pt S Y g m τ D y hprop hsec hreg hD hy)
    · exact Or.inr (wcpa_dj_ts_node_pt_sgl S Y g m τ D y hprop hsec hreg hMN hy)
  obtain ⟨Z, iZ, φ, hφp, hφs, ⟨V, hV, hVi⟩, hreg', hproj, htor⟩ :=
    wcpa_dj_ts_resolve_tor_sgl k Y (g ≫ sS) _ hY hB₀cl hloc
  haveI := iZ
  refine ⟨Z, iZ, φ, hφp, hφs, ⟨V, ?_, ?_⟩, hreg', hproj,
    ⇑φ ⁻¹' (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)), ⟨hB₀cl.preimage φ.continuous, ?_⟩, le_rfl⟩
  · rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
    refine ⟨genericPoint Y, ?_⟩
    show genericPoint Y ∈ (V : Set Y)
    rw [hV]
    exact hη
  · haveI := hVi
    infer_instance
  · intro z
    obtain ⟨n, q, s, h, J, hn, hspan, hdisj, hass, hiff⟩ := htor z
    refine ⟨n, s, Finset.univ.biUnion J, ∏ i, h i, hn, hspan, ?_, ?_⟩
    · rw [map_prod, Finset.prod_biUnion]
      · apply Associated.prod
        intro i _
        exact hass i
      · intro i _ i' _ hii'
        exact hdisj i i' hii'
    · intro z' hz
      rw [hiff z' hz, map_prod, Ideal.IsPrime.prod_mem_iff]
      simp

theorem wcpa_dj_sf_components : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] (sZ : Z ⟶ Spec (.of k)) (B : Set Z), wcpaDjIsProjOver k sZ → (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → wcpaDjFmlNCSet Z B → ∃ (m : ℕ) (Dc : Fin m → Set Z) (μ : Fin m → Z → ℕ) (M : ℕ), wcpaDjCompNC Z m Dc μ ∧ B = ⋃ i, Dc i ∧ ∀ i z, μ i z ≤ M :=
by
  intro k _ Z _ sZ B hproj hreg hB
  classical
  obtain ⟨hBcl, hB2⟩ := hB
  choose n s J f hdim hspan hass hiff using hB2
  haveI : IsProper sZ := wcpa_dj_proj_proper k sZ hproj
  obtain ⟨d, hd⟩ := wcpa_dj_dim_finite k Z sZ
  have hstalk : ∀ z : Z, ringKrullDim (Z.presheaf.stalk z) ≤ topologicalKrullDim Z := by
    intro z
    obtain ⟨W, hW, hzW, -⟩ :=
      AlgebraicGeometry.exists_isAffineOpen_mem_and_subset (U := ⊤) (x := z) trivial
    let x : W := ⟨z, hzW⟩
    letI : Algebra Γ(Z, W) (Z.presheaf.stalk (x : Z)) :=
      TopCat.Presheaf.algebra_section_stalk Z.presheaf x
    haveI : IsLocalization.AtPrime (Z.presheaf.stalk (x : Z)) (hW.primeIdealOf x).asIdeal :=
      hW.isLocalization_stalk x
    have h1 : ringKrullDim (Z.presheaf.stalk (x : Z)) =
        ((hW.primeIdealOf x).asIdeal.height : WithBot ℕ∞) :=
      IsLocalization.AtPrime.ringKrullDim_eq_height (hW.primeIdealOf x).asIdeal
        (Z.presheaf.stalk (x : Z))
    have h2 : ((hW.primeIdealOf x).asIdeal.height : WithBot ℕ∞) ≤ ringKrullDim Γ(Z, W) :=
      Ideal.height_le_ringKrullDim_of_ne_top (hW.primeIdealOf x).isPrime.ne_top
    have h3 : ringKrullDim Γ(Z, W) = topologicalKrullDim (PrimeSpectrum Γ(Z, W)) :=
      (PrimeSpectrum.topologicalKrullDim_eq_ringKrullDim _).symm
    have h4 : topologicalKrullDim (PrimeSpectrum Γ(Z, W)) ≤ topologicalKrullDim Z :=
      hW.fromSpec.isOpenEmbedding.isInducing.topologicalKrullDim_le
    calc ringKrullDim (Z.presheaf.stalk z) = ringKrullDim (Z.presheaf.stalk (x : Z)) := rfl
      _ = ((hW.primeIdealOf x).asIdeal.height : WithBot ℕ∞) := h1
      _ ≤ ringKrullDim Γ(Z, W) := h2
      _ = topologicalKrullDim (PrimeSpectrum Γ(Z, W)) := h3
      _ ≤ topologicalKrullDim Z := h4
  have hn : ∀ z, n z ≤ d := fun z =>
    Nat.cast_le.mp ((hdim z).trans_le ((hstalk z).trans hd.le))
  refine ⟨1, fun _ => B, fun _ z => if z ∈ B then (J z).card else 0, d,
    ⟨fun _ => hBcl, ?_⟩, ?_, ?_⟩
  · intro z
    refine ⟨n z, s z, fun _ => f z, fun _ => if z ∈ B then J z else ∅, hdim z, hspan z,
      ?_, ?_, ?_⟩
    · intro i l hil
      exact absurd (Subsingleton.elim i l) hil
    · intro i hz
      exact ⟨if_neg hz, if_neg hz⟩
    · intro i hz
      refine ⟨?_, ?_, hiff z⟩
      · simp only [if_pos hz]
      · simp only [if_pos hz]
        exact hass z
  · exact (Set.iUnion_const B).symm
  · intro i z
    dsimp only
    split_ifs
    · exact (Finset.card_le_univ _).trans ((Fintype.card_fin _).le.trans (hn z))
    · exact Nat.zero_le _

theorem wcpa_dj_sf_terminal : ∀ (Z : Scheme.{u}) (m : ℕ) (Dc : Fin m → Set Z) (μ : Fin m → Z → ℕ), (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → wcpaDjCompNC Z m Dc μ → (∀ i z, μ i z ≤ 1) → wcpaDjZarNCSet Z (⋃ i, Dc i) :=
by
  classical

  have hE : ∀ (R : Type u) [CommRing R] [IsLocalRing R] (k : ℕ) (x : R),
      AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) k
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x) =
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal R ^ k) x := by
    intro R _ _ k x
    rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq]

  have s1 : ∀ (R : Type u) [CommRing R] [IsLocalRing R] (x : R),
      x ∈ IsLocalRing.maximalIdeal R →
      ¬ IsUnit (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x) := by
    intro R _ _ x hx hu
    have hu' := hu.map (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) 1)
    have hx1 : x ∈ IsLocalRing.maximalIdeal R ^ 1 := by rw [pow_one]; exact hx
    rw [hE R 1 x, Ideal.Quotient.eq_zero_iff_mem.mpr hx1, isUnit_zero_iff,
      Ideal.Quotient.zero_eq_one_iff, pow_one] at hu'
    exact (IsLocalRing.maximalIdeal.isMaximal R).ne_top hu'

  have s2 : ∀ (R : Type u) [CommRing R] [IsLocalRing R]
      (y : AdicCompletion (IsLocalRing.maximalIdeal R) R),
      y ∈ (IsLocalRing.maximalIdeal R).map
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) →
      ∃ L ∈ IsLocalRing.maximalIdeal R,
        AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) 2 y =
          Ideal.Quotient.mk (IsLocalRing.maximalIdeal R ^ 2) L := by
    intro R _ _ y hy
    have hle : (IsLocalRing.maximalIdeal R).map
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) ≤
        Ideal.comap (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) 2)
          ((IsLocalRing.maximalIdeal R).map
            (Ideal.Quotient.mk (IsLocalRing.maximalIdeal R ^ 2))) := by
      rw [Ideal.map_le_iff_le_comap]
      intro a ha
      rw [Ideal.mem_comap, Ideal.mem_comap, hE R 2 a]
      exact Ideal.mem_map_of_mem _ ha
    have h1 := hle hy
    rw [Ideal.mem_comap] at h1
    obtain ⟨L, hLm, hLq⟩ :=
      (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).mp h1
    exact ⟨L, hLm, hLq.symm⟩

  have s3 : ∀ (R : Type u) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (n : ℕ)
      (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal R) R) (t : Fin n → R),
      Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal R).map
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) →
      (∀ j, t j ∈ IsLocalRing.maximalIdeal R) →
      (∀ j, ∃ v : R ⧸ (IsLocalRing.maximalIdeal R) ^ 2,
        AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) 2 (s j) =
          Ideal.Quotient.mk ((IsLocalRing.maximalIdeal R) ^ 2) (t j) * v) →
      Ideal.span (Set.range t) = IsLocalRing.maximalIdeal R := by
    intro R _ _ _ n s t hs ht hv
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨j, rfl⟩
      exact ht j
    · have hfg : (IsLocalRing.maximalIdeal R).FG := IsNoetherian.noetherian _
      have hjac : IsLocalRing.maximalIdeal R ≤ (⊥ : Ideal R).jacobson :=
        (IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top).ge
      apply Submodule.le_of_le_smul_of_le_jacobson_bot hfg hjac
      intro x hx
      have hx' : algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x ∈
          Ideal.span (Set.range s) := by
        rw [hs]; exact Ideal.mem_map_of_mem _ hx
      obtain ⟨c, hc⟩ := (Ideal.mem_span_range_iff_exists_fun).mp hx'
      choose v hv using hv
      choose d hd using fun j => Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) 2 (c j) * v j)
      have hq : Ideal.Quotient.mk (IsLocalRing.maximalIdeal R ^ 2) x =
          Ideal.Quotient.mk (IsLocalRing.maximalIdeal R ^ 2) (∑ j, d j * t j) := by
        rw [← hE R 2 x, ← hc, map_sum, map_sum]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [map_mul, map_mul, hd j, hv j]
        ring
      have hmem : x - ∑ j, d j * t j ∈ IsLocalRing.maximalIdeal R ^ 2 :=
        Ideal.Quotient.eq.mp hq
      have hN : ∑ j, d j * t j ∈ Ideal.span (Set.range t) :=
        Ideal.sum_mem _ (fun j _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨j, rfl⟩))
      have h2 : x - ∑ j, d j * t j ∈
          IsLocalRing.maximalIdeal R • IsLocalRing.maximalIdeal R := by
        rw [Ideal.smul_eq_mul, ← pow_two]
        exact hmem
      have h3 := Submodule.add_mem_sup hN h2
      convert h3 using 1
      ring

  intro Z m Dc μ hreg hC hμ
  unfold wcpaDjCompNC at hC
  unfold wcpaDjZarNCSet
  obtain ⟨hcl, hloc⟩ := hC
  refine ⟨isClosed_iUnion_of_finite hcl, fun z => ?_⟩
  obtain ⟨n, s, g, J, hn, hspan, hdisj, hout, hin⟩ := hloc z
  haveI : IsRegularLocalRing (Z.presheaf.stalk z) := hreg z
  have hgm : ∀ i, z ∈ Dc i → g i ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk z) := by
    intro i hi
    have h1 := ((hin i hi).2.2 z (specializes_refl z)).mp hi
    rw [TopCat.Presheaf.stalkSpecializes_refl] at h1
    exact h1
  have hJne : ∀ i, z ∈ Dc i → J i ≠ ∅ := by
    intro i hi hJ
    have hass := (hin i hi).2.1
    rw [hJ, Finset.prod_empty] at hass
    exact s1 _ (g i) (hgm i hi) (associated_one_iff_isUnit.mp hass)
  have hJcard : ∀ i, z ∈ Dc i → (J i).card = 1 := by
    intro i hi
    have h1 := (hin i hi).1
    have h2 := hμ i z
    have h3 : (J i).card ≠ 0 := by
      rw [Ne, Finset.card_eq_zero]; exact hJne i hi
    omega
  have hmemD : ∀ i j, j ∈ J i → z ∈ Dc i := by
    intro i j hj
    by_contra hz
    rw [(hout i hz).1] at hj
    simp at hj
  have huniq : ∀ i i' j, j ∈ J i → j ∈ J i' → i = i' := by
    intro i i' j h h'
    by_contra hne
    exact Finset.disjoint_left.mp (hdisj i i' hne) h h'
  have hlift : ∀ j, ∃ L ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk z),
      AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) 2 (s j) =
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal (Z.presheaf.stalk z) ^ 2) L := by
    intro j
    apply s2
    rw [← hspan]
    exact Ideal.subset_span ⟨j, rfl⟩
  choose L hLm hL using hlift
  let t : Fin n → Z.presheaf.stalk z := fun j =>
    if h : ∃ i, j ∈ J i then g (Classical.choose h) else L j
  have ht_in : ∀ i j, j ∈ J i → t j = g i := by
    intro i j hj
    have h : ∃ i, j ∈ J i := ⟨i, hj⟩
    simp only [t, dif_pos h]
    exact congrArg g (huniq _ _ j (Classical.choose_spec h) hj)
  have ht_out : ∀ j, (¬ ∃ i, j ∈ J i) → t j = L j := by
    intro j h
    simp only [t, dif_neg h]
  have htm : ∀ j, t j ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk z) := by
    intro j
    by_cases h : ∃ i, j ∈ J i
    · obtain ⟨i, hi⟩ := h
      rw [ht_in i j hi]
      exact hgm i (hmemD i j hi)
    · rw [ht_out j h]
      exact hLm j
  have htv : ∀ j, ∃ v : Z.presheaf.stalk z ⧸ (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) ^ 2,
      AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) 2 (s j) =
        Ideal.Quotient.mk ((IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) ^ 2) (t j) * v := by
    intro j
    by_cases h : ∃ i, j ∈ J i
    · obtain ⟨i, hi⟩ := h
      have hz := hmemD i j hi
      obtain ⟨j0, hj0⟩ := Finset.card_eq_one.mp (hJcard i hz)
      have hjj : j = j0 := by
        rw [hj0] at hi; exact Finset.mem_singleton.mp hi
      obtain ⟨u, hu⟩ := (hin i hz).2.1
      rw [hj0, Finset.prod_singleton, ← hjj] at hu
      refine ⟨AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) 2
        (u : AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
          (Z.presheaf.stalk z)), ?_⟩
      rw [← hu, map_mul, hE (Z.presheaf.stalk z), ht_in i j hi]
    · exact ⟨1, by rw [ht_out j h, mul_one, hL j]⟩
  refine ⟨n, t, hn, s3 _ n s t hspan htm htv, Finset.univ.biUnion J, ?_⟩
  intro z' h
  constructor
  · intro hz'
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hz'
    have hz : z ∈ Dc i := h.mem_closed (hcl i) hi
    obtain ⟨j0, hj0⟩ := Finset.card_eq_one.mp (hJcard i hz)
    have hj0J : j0 ∈ J i := by rw [hj0]; exact Finset.mem_singleton_self j0
    refine ⟨j0, Finset.mem_biUnion.mpr ⟨i, Finset.mem_univ _, hj0J⟩, ?_⟩
    rw [ht_in i j0 hj0J]
    exact ((hin i hz).2.2 z' h).mp hi
  · rintro ⟨j, hj, hgerm⟩
    obtain ⟨i, -, hji⟩ := Finset.mem_biUnion.mp hj
    have hz := hmemD i j hji
    rw [ht_in i j hji] at hgerm
    exact Set.mem_iUnion.mpr ⟨i, ((hin i hz).2.2 z' h).mpr hgerm⟩

theorem wcpa_dj_sfc_order_transfer : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] [Algebra A B] [IsLocalHom (algebraMap A B)] [Module.Flat A B], IsRegularLocalRing A → IsRegularLocalRing (B ⧸ Ideal.map (algebraMap A B) (IsLocalRing.maximalIdeal A)) → ∀ (a : A) (d : ℕ), a ∉ IsLocalRing.maximalIdeal A ^ (d + 1) → algebraMap A B a ∉ IsLocalRing.maximalIdeal B ^ (d + 1) :=
by

  have gd_lift : ∀ (R : Type u) [CommRing R] (S : Type u) [CommRing S] [Algebra R S]
      [Algebra.HasGoingDown R S] (l : LTSeries (PrimeSpectrum R)) (Q : PrimeSpectrum S),
      PrimeSpectrum.comap (algebraMap R S) Q = RelSeries.last l →
      ∃ l' : LTSeries (PrimeSpectrum S), l'.length = l.length ∧ RelSeries.last l' = Q ∧
        PrimeSpectrum.comap (algebraMap R S) (RelSeries.head l') = RelSeries.head l := by
    intro R _ S _ _ _ l
    induction l using RelSeries.inductionOn with
    | singleton x =>
      intro Q hQ
      exact ⟨RelSeries.singleton _ Q, rfl, rfl, hQ⟩
    | cons p x hx ih =>
      intro Q hQ
      rw [RelSeries.last_cons] at hQ
      obtain ⟨p', hlen, hlast, hhead⟩ := ih Q hQ
      have hlt : x.asIdeal < (RelSeries.head p).asIdeal := hx
      have : (RelSeries.head p').asIdeal.LiesOver (RelSeries.head p).asIdeal :=
        ⟨by rw [← hhead]; rfl⟩
      obtain ⟨P, hPlt, hPprime, hPover⟩ :=
        Ideal.exists_ideal_lt_liesOver_of_lt (R := R) (S := S) (RelSeries.head p').asIdeal hlt
      have hlt' : (⟨P, hPprime⟩ : PrimeSpectrum S) < RelSeries.head p' := hPlt
      refine ⟨p'.cons ⟨P, hPprime⟩ hlt', ?_, ?_, ?_⟩
      · rw [RelSeries.cons_length, RelSeries.cons_length, hlen]
      · rw [RelSeries.last_cons, hlast]
      · rw [RelSeries.head_cons, RelSeries.head_cons]
        ext1
        rw [PrimeSpectrum.comap_asIdeal]
        exact hPover.over.symm

  have chain : ∀ (R : Type u) [CommRing R] [IsLocalRing R] (n : ℕ),
      (n : WithBot ℕ∞) ≤ ringKrullDim R →
      ∃ l : LTSeries (PrimeSpectrum R), l.length = n ∧
        RelSeries.last l = IsLocalRing.closedPoint R := by
    intro R _ _ n hn
    have htop : ∀ a : PrimeSpectrum R, a ≤ IsLocalRing.closedPoint R := fun a =>
      (PrimeSpectrum.asIdeal_le_asIdeal _ _).mp (IsLocalRing.le_maximalIdeal a.isPrime.ne_top)
    have hdim : ringKrullDim R ≤ (Order.height (IsLocalRing.closedPoint R) : WithBot ℕ∞) := by
      rw [ringKrullDim.eq_def, Order.krullDim_eq_iSup_height]
      exact iSup_le fun a => WithBot.coe_le_coe.mpr (Order.height_mono (htop a))
    have h2 : ((n : ℕ∞) : WithBot ℕ∞) ≤ (Order.height (IsLocalRing.closedPoint R) : WithBot ℕ∞) :=
      hn.trans hdim
    obtain ⟨l, hl, hlen⟩ := Order.exists_series_of_le_height _ (WithBot.coe_le_coe.mp h2)
    exact ⟨l, hlen, hl⟩

  have finGen : ∀ (R : Type u) [CommRing R] (J : Ideal R), J.FG →
      ∃ x : Fin (Submodule.spanFinrank J) → R, Ideal.span (Set.range x) = J := by
    intro R _ J hJ
    obtain ⟨S, hScard, hSspan⟩ := Submodule.FG.exists_span_set_encard_eq_spanFinrank hJ
    have hSfin : S.Finite := Set.finite_of_encard_eq_coe hScard
    have hSn : S.ncard = Submodule.spanFinrank J := by
      have := hSfin.cast_ncard_eq
      rw [hScard] at this
      exact_mod_cast this
    haveI := hSfin.to_subtype
    have hcard : Nat.card S = Submodule.spanFinrank J := by
      rw [Nat.card_coe_set_eq]; exact hSn
    let ε : S ≃ Fin (Submodule.spanFinrank J) := Finite.equivFinOfCardEq hcard
    refine ⟨Subtype.val ∘ ε.symm, ?_⟩
    rw [ε.symm.surjective.range_comp, Subtype.range_coe]
    exact hSspan


  have homRepr : ∀ (R : Type u) [CommRing R] (d : ℕ) (x : Fin d → R) (I : Ideal R) (n : ℕ) (z : R),
      z ∈ I * Ideal.span (Set.range x) ^ n ↔ ∃ G : MvPolynomial (Fin d) R, G.IsHomogeneous n ∧
        (∀ α, G.coeff α ∈ I) ∧ MvPolynomial.eval x G = z := by
    classical
    intro R _ d x I n z
    constructor
    · intro hz
      induction n generalizing z with
      | zero =>
        rw [pow_zero, mul_one] at hz
        refine ⟨MvPolynomial.C z, MvPolynomial.isHomogeneous_C _ _, fun α => ?_,
          MvPolynomial.eval_C _⟩
        rw [MvPolynomial.coeff_C]
        split_ifs
        · exact hz
        · exact I.zero_mem
      | succ n ih =>
        rw [pow_succ, ← mul_assoc] at hz
        refine Submodule.mul_induction_on
          (C := fun w => ∃ G : MvPolynomial (Fin d) R, G.IsHomogeneous (n + 1) ∧
            (∀ α, G.coeff α ∈ I) ∧ MvPolynomial.eval x G = w) hz ?_ ?_
        · intro u hu v hv
          obtain ⟨Gu, hGu, hcu, heu⟩ := ih u hu
          obtain ⟨c, hc⟩ := (Ideal.mem_span_range_iff_exists_fun).mp hv
          refine ⟨∑ i, MvPolynomial.C (c i) * (MvPolynomial.X i * Gu), ?_, ?_, ?_⟩
          · apply MvPolynomial.IsHomogeneous.sum
            intro i _
            have h1 : (MvPolynomial.X i * Gu).IsHomogeneous (1 + n) :=
              (MvPolynomial.isHomogeneous_X R i).mul hGu
            rw [add_comm] at h1
            exact h1.C_mul _
          · intro α
            rw [MvPolynomial.coeff_sum]
            apply Ideal.sum_mem
            intro i _
            rw [MvPolynomial.coeff_C_mul, MvPolynomial.coeff_X_mul']
            apply Ideal.mul_mem_left
            split_ifs
            · exact hcu _
            · exact I.zero_mem
          · rw [map_sum]
            simp only [map_mul, MvPolynomial.eval_C, MvPolynomial.eval_X, heu]
            rw [← hc, Finset.mul_sum]
            exact Finset.sum_congr rfl fun i _ => by ring
        · rintro a b ⟨Ga, hGa, hca, hea⟩ ⟨Gb, hGb, hcb, heb⟩
          refine ⟨Ga + Gb, hGa.add hGb, fun α => ?_, by rw [map_add, hea, heb]⟩
          rw [MvPolynomial.coeff_add]
          exact I.add_mem (hca α) (hcb α)
    · rintro ⟨G, hG, hc, rfl⟩
      rw [MvPolynomial.eval_eq']
      apply Ideal.sum_mem
      intro α hα
      apply Ideal.mul_mem_mul (hc α)
      have hdeg : ∑ i, α i = n := by
        have h1 : Finsupp.degree α = n := by
          by_contra hne
          exact (MvPolynomial.mem_support_iff.mp hα) (hG.coeff_eq_zero hne)
        rwa [Finsupp.degree_eq_sum] at h1
      rw [← hdeg, ← Finset.prod_pow_eq_pow_sum]
      apply Ideal.prod_mem_prod
      intro i _
      exact Ideal.pow_mem_pow (Ideal.subset_span (Set.mem_range_self i)) _
  intro A _ _ _ B _ _ _ _ _ _ hA hF a d had
  classical
  set I := Ideal.map (algebraMap A B) (IsLocalRing.maximalIdeal A) with hIdef
  haveI : IsLocalRing (B ⧸ I) := hF.toIsLocalRing
  haveI : IsNoetherianRing (B ⧸ I) := Ideal.Quotient.isNoetherianRing _
  set π : B →+* B ⧸ I := Ideal.Quotient.mk I with hπdef
  have hπ : Function.Surjective π := Ideal.Quotient.mk_surjective
  set m := Submodule.spanFinrank (IsLocalRing.maximalIdeal A) with hm
  set e := Submodule.spanFinrank (IsLocalRing.maximalIdeal (B ⧸ I)) with he
  have hdA : (m : WithBot ℕ∞) = ringKrullDim A := hA.spanFinrank_maximalIdeal
  have heF : (e : WithBot ℕ∞) = ringKrullDim (B ⧸ I) := hF.spanFinrank_maximalIdeal
  obtain ⟨x, hx⟩ := finGen A (IsLocalRing.maximalIdeal A) (IsNoetherian.noetherian _)
  obtain ⟨yb, hyb⟩ := finGen (B ⧸ I) (IsLocalRing.maximalIdeal (B ⧸ I))
    (IsNoetherian.noetherian _)
  let y : Fin e → B := fun i => Function.surjInv hπ (yb i)
  have hy : ∀ i, π (y i) = yb i := fun i => Function.surjInv_eq hπ (yb i)
  let t : Fin (m + e) → B := Fin.append (fun i => algebraMap A B (x i)) y
  have htl : ∀ i, t (Fin.castAdd e i) = algebraMap A B (x i) := fun i => Fin.append_left _ _ i
  have htr : ∀ j, t (Fin.natAdd m j) = y j := fun j => Fin.append_right _ _ j
  have hIspan : I = Ideal.span (Set.range (fun i => algebraMap A B (x i))) := by
    have h0 := congrArg (Ideal.map (algebraMap A B)) hx
    rw [Ideal.map_span, ← Set.range_comp] at h0
    exact h0.symm

  have hspan : Ideal.span (Set.range t) = IsLocalRing.maximalIdeal B := by
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      induction i using Fin.addCases with
      | left i =>
        rw [htl]
        have hs' : x i ∈ IsLocalRing.maximalIdeal A := by
          rw [← hx]; exact Ideal.subset_span ⟨i, rfl⟩
        exact map_nonunit (algebraMap A B) _ hs'
      | right j =>
        rw [htr]
        have ht' : yb j ∈ IsLocalRing.maximalIdeal (B ⧸ I) := by
          rw [← hyb]; exact Ideal.subset_span ⟨j, rfl⟩
        rw [SetLike.mem_coe, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        intro hu
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at ht'
        apply ht'
        rw [← hy j]
        exact hu.map π
    · intro b hb
      have hb1 : π b ∈ IsLocalRing.maximalIdeal (B ⧸ I) := by
        rw [← IsLocalRing.map_maximalIdeal_of_surjective π hπ]
        exact Ideal.mem_map_of_mem _ hb
      have hb2 : π b ∈ Ideal.map π (Ideal.span (Set.range y)) := by
        rw [Ideal.map_span, ← Set.range_comp]
        have hcomp : (⇑π ∘ y) = yb := funext hy
        rw [hcomp, hyb]
        exact hb1
      obtain ⟨z, hz, hzb⟩ := (Ideal.mem_map_iff_of_surjective π hπ).mp hb2
      have hbz : b - z ∈ I := Ideal.Quotient.eq.mp hzb.symm
      rw [hIspan] at hbz
      have e1 : b - z ∈ Ideal.span (Set.range t) := by
        refine Ideal.span_mono ?_ hbz
        rintro _ ⟨i, rfl⟩
        exact ⟨Fin.castAdd e i, htl i⟩
      have e2 : z ∈ Ideal.span (Set.range t) := by
        refine Ideal.span_mono ?_ hz
        rintro _ ⟨j, rfl⟩
        exact ⟨Fin.natAdd m j, htr j⟩
      have := add_mem e1 e2
      rwa [sub_add_cancel] at this

  have h2 : ((m + e : ℕ) : WithBot ℕ∞) ≤ ringKrullDim B := by
    have : Algebra.HasGoingDown A B := Algebra.HasGoingDown.of_flat
    obtain ⟨lF, hlFlen, -⟩ := chain (B ⧸ I) e heF.le
    let g : PrimeSpectrum (B ⧸ I) → PrimeSpectrum B := PrimeSpectrum.comap π
    have hgmono : Monotone g := fun a b hab =>
      (PrimeSpectrum.asIdeal_le_asIdeal _ _).mp
        (Ideal.comap_mono ((PrimeSpectrum.asIdeal_le_asIdeal _ _).mpr hab))
    have hg : StrictMono g :=
      hgmono.strictMono_of_injective (PrimeSpectrum.comap_injective_of_surjective π hπ)
    let lB := lF.map g hg
    have hP₀ : PrimeSpectrum.comap (algebraMap A B) (RelSeries.head lB) =
        IsLocalRing.closedPoint A := by
      ext1
      have := (RelSeries.head lF).isPrime
      rw [PrimeSpectrum.comap_asIdeal, LTSeries.head_map, PrimeSpectrum.comap_asIdeal]
      symm
      apply Ideal.IsMaximal.eq_of_le (IsLocalRing.maximalIdeal.isMaximal A)
        (Ideal.IsPrime.ne_top inferInstance)
      intro a ha
      rw [Ideal.mem_comap, Ideal.mem_comap,
        Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_map_of_mem _ ha)]
      exact zero_mem _
    obtain ⟨lA, hlAlen, hlAlast⟩ := chain A m hdA.le
    obtain ⟨l', hl'len, hl'last, -⟩ :=
      gd_lift A B lA (RelSeries.head lB) (by rw [hP₀, hlAlast])
    have hlen : (l'.smash lB hl'last).length = m + e := by
      rw [RelSeries.smash_length, hl'len, hlAlen, LTSeries.map_length, hlFlen]
    rw [← hlen, ringKrullDim.eq_def]
    exact Order.LTSeries.length_le_krullDim _
  have h3 : ringKrullDim B ≤ ((m + e : ℕ) : WithBot ℕ∞) := by
    refine (ringKrullDim_le_spanFinrank_maximalIdeal B).trans ?_
    have h4 : Submodule.spanFinrank (IsLocalRing.maximalIdeal B) ≤ m + e := by
      rw [← hspan]
      calc Submodule.spanFinrank (Ideal.span (Set.range t)) ≤ (Set.range t).ncard :=
            Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range t)
        _ ≤ m + e := by
            rw [← Set.image_univ]
            refine (Set.ncard_image_le Set.finite_univ).trans ?_
            rw [Set.ncard_univ, Nat.card_fin]
    exact_mod_cast h4
  have hdim : ringKrullDim B = ((m + e : ℕ) : WithBot ℕ∞) := le_antisymm h3 h2

  have H : ∃ n, a ∉ IsLocalRing.maximalIdeal A ^ (n + 1) := ⟨d, had⟩
  have hk1 : a ∉ IsLocalRing.maximalIdeal A ^ (Nat.find H + 1) := Nat.find_spec H
  have hkd : Nat.find H ≤ d := Nat.find_min' H had
  have hk0 : a ∈ IsLocalRing.maximalIdeal A ^ (Nat.find H) := by
    rcases Nat.eq_zero_or_pos (Nat.find H) with h0 | hpos
    · rw [h0, pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top
    · obtain ⟨j, hj⟩ : ∃ j, Nat.find H = j + 1 := ⟨Nat.find H - 1, by omega⟩
      have hmin := Nat.find_min H (show j < Nat.find H by omega)
      rw [hj]
      exact not_not.mp hmin
  generalize Nat.find H = k at hk1 hkd hk0

  have hk0' : a ∈ (⊤ : Ideal A) * Ideal.span (Set.range x) ^ k := by
    rw [Ideal.top_mul, hx]; exact hk0
  obtain ⟨Φ, hΦh, -, hΦe⟩ := (homRepr A m x ⊤ k a).mp hk0'
  have hunit : ∃ α, Φ.coeff α ∉ IsLocalRing.maximalIdeal A := by
    by_contra hcon
    push_neg at hcon
    apply hk1
    have hh := (homRepr A m x (IsLocalRing.maximalIdeal A) k a).mpr
      ⟨Φ, hΦh, hcon, hΦe⟩
    rw [hx, ← pow_succ'] at hh
    exact hh
  obtain ⟨α, hα⟩ := hunit
  intro hmem

  let Ψ : MvPolynomial (Fin (m + e)) B :=
    MvPolynomial.rename (Fin.castAdd e) (MvPolynomial.map (algebraMap A B) Φ)
  have hΨh : Ψ.IsHomogeneous k := (hΦh.map (algebraMap A B)).rename_isHomogeneous
  have hΨe : MvPolynomial.eval t Ψ = algebraMap A B a := by
    simp only [Ψ, MvPolynomial.eval_rename]
    have hcomp : t ∘ Fin.castAdd e = ⇑(algebraMap A B) ∘ x := funext htl
    rw [hcomp, ← MvPolynomial.map_eval, hΦe]
  have hcoef : Ψ.coeff (Finsupp.mapDomain (Fin.castAdd e) α) ∉ IsLocalRing.maximalIdeal B := by
    simp only [Ψ]
    rw [MvPolynomial.coeff_rename_mapDomain _ (Fin.castAdd_injective m e), MvPolynomial.coeff_map]
    intro hc
    have hu : IsUnit (Φ.coeff α) := by
      by_contra hnu
      exact hα ((IsLocalRing.mem_maximalIdeal _).mpr hnu)
    exact (IsLocalRing.mem_maximalIdeal _).mp hc (hu.map _)
  have hmem' : MvPolynomial.eval t Ψ ∈ IsLocalRing.maximalIdeal B ^ (k + 1) := by
    rw [hΨe]
    exact Ideal.pow_le_pow_right (by omega) hmem
  exact hcoef (wc_rl_param_quasi_regular B (m + e) t hspan.symm hdim k Ψ hΨh hmem' _)

theorem wcpa_dj_sfc_formal_order_closed : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (J : Finset (Fin n)) (g : O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → Associated (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) (∏ j ∈ J, s j) → g ∈ IsLocalRing.maximalIdeal O ^ J.card ∧ g ∉ IsLocalRing.maximalIdeal O ^ (J.card + 1) :=
by
  intro O _ _ n s J g hreg hn hs hass
  classical
  haveI := hreg
  haveI hNO : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  have hmaxmap : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      (IsLocalRing.maximalIdeal O).map
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) :=
    AdicCompletion.maximalIdeal_eq_map
  have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      Ideal.span (Set.range s) := hmaxmap.trans hs.symm
  have hdim : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = n :=
    (wc_lfi_flat_local_dim_eq O (AdicCompletion (IsLocalRing.maximalIdeal O) O)
      hmaxmap.symm).trans hn.symm
  have hpow : ∀ k : ℕ, IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ k
      = (IsLocalRing.maximalIdeal O ^ k).map
          (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) := by
    intro k
    rw [Ideal.map_pow, ← hmaxmap]
  obtain ⟨u, hu⟩ := hass
  have hsm : ∀ j, s j ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    intro j
    rw [hmax]
    exact Ideal.subset_span ⟨j, rfl⟩
  refine ⟨?_, ?_⟩
  · have hprod : ∏ j ∈ J, s j ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ J.card := by
      rw [← Finset.prod_const]
      exact Ideal.prod_mem_prod (fun j _ => hsm j)
    rw [← hu] at hprod
    have h2 := (Ideal.mul_unit_mem_iff_mem _ u.isUnit).mp hprod
    rw [hpow] at h2
    exact (wc_hnas_hs_completion_levels O).2 _ g h2
  · intro hg
    have h1 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ (J.card + 1) := by
      rw [hpow]
      exact Ideal.mem_map_of_mem _ hg
    have h2 := Ideal.mul_mem_right (↑u) _ h1
    rw [hu] at h2
    set α₀ : Fin n →₀ ℕ := ∑ j ∈ J, Finsupp.single j 1 with hα₀
    have hF : (∏ j ∈ J, (MvPolynomial.X j :
        MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O))).IsHomogeneous
          J.card := by
      have := MvPolynomial.IsHomogeneous.prod J
        (fun j => (MvPolynomial.X j :
          MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O)))
        (fun _ => 1) (fun j _ => MvPolynomial.isHomogeneous_X _ j)
      simpa using this
    have hev : MvPolynomial.eval s (∏ j ∈ J, (MvPolynomial.X j :
        MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O))) = ∏ j ∈ J, s j := by
      simp [map_prod]
    have hFm : (∏ j ∈ J, (MvPolynomial.X j :
        MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O))) =
        MvPolynomial.monomial α₀ 1 := by
      rw [hα₀, MvPolynomial.monomial_sum_one]
      rfl
    rw [← hev] at h2
    have hc := wc_rl_param_quasi_regular _ n s hmax hdim J.card _ hF h2 α₀
    rw [hFm, MvPolynomial.coeff_monomial, if_pos rfl] at hc
    exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top ((Ideal.eq_top_iff_one _).mpr hc)

theorem wcpa_dj_sfc_span_prime : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (J : Finset (Fin n)), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → (Ideal.span (s '' (J : Set (Fin n)))).IsPrime :=
by
  intro O _ _ n s J hreg hdim hspan
  classical
  haveI := hreg
  haveI hN : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      Ideal.span (Set.range s) := by
    rw [hspan, AdicCompletion.maximalIdeal_eq_map]
  have hd : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = ringKrullDim O :=
    wc_lfi_flat_local_dim_eq O _ AdicCompletion.maximalIdeal_eq_map.symm
  have hdimO : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = (n : WithBot ℕ∞) :=
    hd.trans hdim.symm
  have h1 : (Ideal.span (Set.range s)).spanFinrank ≤ (Set.range s).ncard :=
    Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range s)
  have h2 : (Set.range s).ncard ≤ n := by
    rw [← Set.image_univ]
    refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
    rw [Set.ncard_univ, Nat.card_fin]
  have hrk : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal
      (AdicCompletion (IsLocalRing.maximalIdeal O) O)) : ℕ) : WithBot ℕ∞) ≤
      ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    rw [hd, ← hdim, hmax]
    exact_mod_cast h1.trans h2
  haveI hRegC := IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _ hrk
  have hf : ∀ i, s i ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    intro i
    rw [hmax]
    exact Ideal.subset_span ⟨i, rfl⟩
  have hli := wc_lpkt_cotangent_indep _ n s hmax.symm hdimO hf
  set e : Fin J.card ↪o Fin n := J.orderEmbOfFin rfl with he
  let x : Fin J.card → IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    fun j => ⟨s (e j), hf (e j)⟩
  have hlix : LinearIndependent
      (IsLocalRing.ResidueField (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (fun j => (IsLocalRing.maximalIdeal
        (AdicCompletion (IsLocalRing.maximalIdeal O) O)).toCotangent (x j)) :=
    hli.comp e e.injective
  have hq := (wcpa_rs_quotient_regular _ J.card x hlix).1
  have hdom := wcpa_regular_isDomain _ wcpa_rs_quotient_regular hq
  have hset : Set.range (fun j => ((x j : IsLocalRing.maximalIdeal
      (AdicCompletion (IsLocalRing.maximalIdeal O) O)) :
        AdicCompletion (IsLocalRing.maximalIdeal O) O)) = s '' (J : Set (Fin n)) := by
    show Set.range (s ∘ ⇑e) = _
    rw [Set.range_comp, he, Finset.range_orderEmbOfFin]
  rw [hset] at hdom
  exact (Ideal.Quotient.isDomain_iff_prime _).mp hdom

theorem wcpa_dj_sfcgb_quot_loc_regular : ∀ (A : Type u) [CommRing A] (P Q : Ideal A) [P.IsPrime] [Q.IsPrime] [(Q.map (Ideal.Quotient.mk P)).IsPrime], P ≤ Q → IsRegularLocalRing (Localization.AtPrime (Q.map (Ideal.Quotient.mk P))) → IsRegularLocalRing (Localization.AtPrime Q ⧸ P.map (algebraMap A (Localization.AtPrime Q))) :=
by
  intro A _ P Q _ _ _ hPQ hreg
  have s1 : (Q.map (Ideal.Quotient.mk P)).comap (Ideal.Quotient.mk P) = Q := by
    rw [Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective, Ideal.mk_ker]
    exact sup_eq_left.mpr hPQ
  have hM : Algebra.algebraMapSubmonoid (A ⧸ P) Q.primeCompl =
      (Q.map (Ideal.Quotient.mk P)).primeCompl := by
    have h := Ideal.map_primeCompl_comap_of_surjective (Ideal.Quotient.mk P)
      Ideal.Quotient.mk_surjective (Q.map (Ideal.Quotient.mk P))
    have hc : ((Q.map (Ideal.Quotient.mk P)).comap (Ideal.Quotient.mk P)).primeCompl =
        Q.primeCompl := by
      ext x
      rw [Ideal.mem_primeCompl_iff, Ideal.mem_primeCompl_iff, s1]
    rw [hc] at h
    exact h
  haveI hloc0 : IsLocalization (Algebra.algebraMapSubmonoid (A ⧸ P) Q.primeCompl)
      (Localization.AtPrime Q ⧸ P.map (algebraMap A (Localization.AtPrime Q))) := inferInstance
  haveI hloc : IsLocalization (Q.map (Ideal.Quotient.mk P)).primeCompl
      (Localization.AtPrime Q ⧸ P.map (algebraMap A (Localization.AtPrime Q))) := hM ▸ hloc0
  haveI := hreg
  let e := IsLocalization.algEquiv (Q.map (Ideal.Quotient.mk P)).primeCompl
    (Localization.AtPrime (Q.map (Ideal.Quotient.mk P)))
    (Localization.AtPrime Q ⧸ P.map (algebraMap A (Localization.AtPrime Q)))
  exact IsRegularLocalRing.of_ringEquiv e.toRingEquiv

theorem wcpa_dj_sfcgb_partial_quasi_regular : ∀ (R : Type u) [CommRing R] [IsRegularLocalRing R] (h : ℕ) (x : Fin h → R), (∀ i, x i ∈ IsLocalRing.maximalIdeal R) → (∀ r : Fin h → R, ∑ i, r i * x i ∈ IsLocalRing.maximalIdeal R ^ 2 → ∀ i, r i ∈ IsLocalRing.maximalIdeal R) → ∀ (e : ℕ) (Φ : MvPolynomial (Fin h) R), Φ.IsHomogeneous e → (∃ α, IsUnit (Φ.coeff α)) → MvPolynomial.eval x Φ ∉ IsLocalRing.maximalIdeal R ^ (e + 1) :=
by
  intro R _ _ h x hx hind e Φ hΦ ⟨α, hα⟩ H
  classical

  have hli : LinearIndependent (IsLocalRing.ResidueField R)
      (fun i => (IsLocalRing.maximalIdeal R).toCotangent ⟨x i, hx i⟩) := by
    rw [Fintype.linearIndependent_iff]
    intro g hg i₀
    choose r hr using fun i => IsLocalRing.residue_surjective (g i)
    have hsum : ∑ i, g i • (IsLocalRing.maximalIdeal R).toCotangent ⟨x i, hx i⟩ =
        (IsLocalRing.maximalIdeal R).toCotangent
          (∑ i, r i • (⟨x i, hx i⟩ : IsLocalRing.maximalIdeal R)) := by
      rw [map_sum]
      refine Finset.sum_congr rfl (fun i _ => ?_)
      rw [map_smul, ← hr i, ← IsLocalRing.ResidueField.algebraMap_eq,
        IsScalarTower.algebraMap_smul]
    rw [hsum, Ideal.toCotangent_eq_zero] at hg
    have hc : ((∑ i, r i • (⟨x i, hx i⟩ : IsLocalRing.maximalIdeal R) :
        IsLocalRing.maximalIdeal R) : R) = ∑ i, r i * x i := by
      simp [smul_eq_mul]
    rw [hc] at hg
    rw [← hr i₀]
    exact (IsLocalRing.residue_eq_zero_iff _).mpr (hind r hg i₀)

  have hext : ∀ (j h' : ℕ) (v : Fin h' → IsLocalRing.CotangentSpace R),
      LinearIndependent (IsLocalRing.ResidueField R) v →
      h' + j = Module.finrank (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) →
      ∃ w : Fin j → IsLocalRing.CotangentSpace R,
        LinearIndependent (IsLocalRing.ResidueField R) (Fin.append v w) := by
    intro j
    induction j with
    | zero =>
      intro h' v hv _
      refine ⟨Fin.elim0, ?_⟩
      rw [Fin.append_elim0]
      exact hv.comp _ (Fin.cast_injective _)
    | succ j ih =>
      intro h' v hv hcard
      have hlt : h' < Module.finrank (IsLocalRing.ResidueField R)
          (IsLocalRing.CotangentSpace R) := by omega
      obtain ⟨z, hz⟩ := exists_linearIndependent_snoc_of_lt_finrank hv hlt
      obtain ⟨w', hw'⟩ := ih (h' + 1) (Fin.snoc v z) hz (by omega)
      refine ⟨Fin.cons z w', ?_⟩
      rw [Fin.append_right_cons]
      exact hw'.comp _ (Fin.cast_injective _)
  set N := Module.finrank (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) with hN
  have hle : h ≤ N := by simpa using hli.fintype_card_le_finrank
  obtain ⟨w, hw⟩ := hext (N - h) h _ hli (by omega)
  choose y' hy' using fun k => Ideal.toCotangent_surjective (IsLocalRing.maximalIdeal R) (w k)
  set t : Fin (h + (N - h)) → R := Fin.append x (fun k => (y' k : R)) with htdef
  have ht : ∀ i, t i ∈ IsLocalRing.maximalIdeal R := by
    intro i
    refine Fin.addCases (fun i => ?_) (fun k => ?_) i
    · simp only [t, Fin.append_left]; exact hx i
    · simp only [t, Fin.append_right]; exact (y' k).2
  have hfam : (fun i => (IsLocalRing.maximalIdeal R).toCotangent ⟨t i, ht i⟩) =
      Fin.append (fun i => (IsLocalRing.maximalIdeal R).toCotangent ⟨x i, hx i⟩) w := by
    funext i
    refine Fin.addCases (fun i => ?_) (fun k => ?_) i
    · rw [Fin.append_left]
      exact congrArg _ (Subtype.ext (by simp [t]))
    · rw [Fin.append_right, ← hy' k]
      exact congrArg _ (Subtype.ext (by simp [t]))
  have hli' : LinearIndependent (IsLocalRing.ResidueField R)
      (fun i => (IsLocalRing.maximalIdeal R).toCotangent ⟨t i, ht i⟩) := by
    rw [hfam]; exact hw

  have hspanV : Submodule.span (IsLocalRing.ResidueField R)
      (Set.range (fun i => (IsLocalRing.maximalIdeal R).toCotangent ⟨t i, ht i⟩)) = ⊤ :=
    hli'.span_eq_top_of_card_eq_finrank' (by
      rw [Fintype.card_fin]
      have : h + (N - h) = N := by omega
      exact this)
  have hspanR : Submodule.span R
      (Set.range (fun i => (⟨t i, ht i⟩ : IsLocalRing.maximalIdeal R))) = ⊤ := by
    rw [← IsLocalRing.CotangentSpace.span_image_eq_top_iff, ← Set.range_comp]
    exact hspanV
  have hmt : IsLocalRing.maximalIdeal R = Ideal.span (Set.range t) := by
    have h1 := congrArg (Submodule.map (IsLocalRing.maximalIdeal R).subtype) hspanR
    rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp] at h1
    exact h1.symm

  have hdim : ringKrullDim R = ((h + (N - h) : ℕ) : WithBot ℕ∞) := by
    have h1 := (IsRegularLocalRing.iff_finrank_cotangentSpace R).mp inferInstance
    rw [← h1]
    congr 2
    omega

  have hF := wc_rl_param_quasi_regular R (h + (N - h)) t hmt hdim e
    (MvPolynomial.rename (Fin.castAdd (N - h)) Φ)
    hΦ.rename_isHomogeneous (by
      rw [MvPolynomial.eval_rename]
      have : t ∘ Fin.castAdd (N - h) = x := by
        funext i; simp [t]
      rw [this]; exact H)
    (Finsupp.mapDomain (Fin.castAdd (N - h)) α)
  rw [MvPolynomial.coeff_rename_mapDomain _ (Fin.castAdd_injective h (N - h))] at hF
  exact (IsLocalRing.mem_maximalIdeal _).mp hF hα

theorem wcpa_dj_sfc_formal_order_prime : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (J : Finset (Fin n)) (g : O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → Associated (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) (∏ j ∈ J, s j) → ∀ (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal O) O)) [Q.IsPrime] (J₀ : Finset (Fin n)), J₀ ⊆ J → (∀ j ∈ J, (j ∈ J₀ ↔ s j ∈ Q)) → algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) (Localization.AtPrime Q) (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ J₀.card ∧ algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) (Localization.AtPrime Q) (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) ∉ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (J₀.card + 1) :=
by
  intro O _ _ n s J g hreg hn hs
  classical


  have key : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (t : Fin n → A),
      Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A →
      ringKrullDim A = (n : WithBot ℕ∞) →
      (∀ T : Finset (Fin n), (Ideal.span (t '' (T : Set (Fin n)))).IsPrime) →
      ∀ (a : A), Associated a (∏ j ∈ J, t j) →
      ∀ (Q : Ideal A) [Q.IsPrime] (J₀ : Finset (Fin n)), J₀ ⊆ J →
      (∀ j ∈ J, (j ∈ J₀ ↔ t j ∈ Q)) →
      algebraMap A (Localization.AtPrime Q) a ∈
          IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ J₀.card ∧
        algebraMap A (Localization.AtPrime Q) a ∉
          IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (J₀.card + 1) := by
    intro A _ _ t hmax hdim hprime a hass Q _ J₀ hJ₀ hiff
    have hf : ∀ i, t i ∈ IsLocalRing.maximalIdeal A := by
      intro i; rw [← hmax]; exact Ideal.subset_span ⟨i, rfl⟩
    have hli := wc_lpkt_cotangent_indep A n t hmax hdim hf

    have hs2 : ∀ (T : Set (Fin n)) (i : Fin n), i ∉ T → t i ∉ Ideal.span (t '' T) := by
      intro T i hi hmem
      let W : Submodule A (IsLocalRing.maximalIdeal A).Cotangent :=
        (Submodule.span (IsLocalRing.ResidueField A)
          ((fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨t k, hf k⟩) '' T)).restrictScalars A
      let U : Ideal A :=
        (W.comap (IsLocalRing.maximalIdeal A).toCotangent).map (IsLocalRing.maximalIdeal A).subtype
      have hle : Ideal.span (t '' T) ≤ U := by
        refine Ideal.span_le.mpr ?_
        rintro _ ⟨k, hk, rfl⟩
        refine ⟨⟨t k, hf k⟩, ?_, rfl⟩
        show (IsLocalRing.maximalIdeal A).toCotangent ⟨t k, hf k⟩ ∈
          Submodule.span (IsLocalRing.ResidueField A)
            ((fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨t k, hf k⟩) '' T)
        exact Submodule.subset_span ⟨k, hk, rfl⟩
      obtain ⟨m, hm, hmeq⟩ := Submodule.mem_map.mp (hle hmem)
      have hm' : m = ⟨t i, hf i⟩ := Subtype.ext hmeq
      subst hm'
      exact hli.notMem_span_image hi hm

    set e : Fin J₀.card ↪o Fin n := J₀.orderEmbOfFin rfl with he
    have he_mem : ∀ i, e i ∈ J₀ := fun i => Finset.orderEmbOfFin_mem J₀ rfl i
    set x : Fin J₀.card → A := fun i => t (e i) with hx
    have hxQ : ∀ i, x i ∈ Q := fun i => (hiff (e i) (hJ₀ (he_mem i))).mp (he_mem i)
    have hset : Set.range x = t '' (J₀ : Set (Fin n)) := by
      show Set.range (t ∘ ⇑e) = _
      rw [Set.range_comp, he, Finset.range_orderEmbOfFin]

    haveI hPprime : (Ideal.span (Set.range x)).IsPrime := by rw [hset]; exact hprime J₀
    have hPQ : Ideal.span (Set.range x) ≤ Q := by
      refine Ideal.span_le.mpr ?_
      rintro _ ⟨i, rfl⟩
      exact hxQ i
    have hPreg : IsRegularLocalRing (A ⧸ Ideal.span (Set.range x)) :=
      (wcpa_rs_quotient_regular A J₀.card
        (fun i => (⟨x i, hf (e i)⟩ : IsLocalRing.maximalIdeal A)) (hli.comp e e.injective)).1
    haveI := hPreg
    haveI hQbarP : (Q.map (Ideal.Quotient.mk (Ideal.span (Set.range x)))).IsPrime :=
      Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective (by rw [Ideal.mk_ker]; exact hPQ)
    have hQbar := wc_hnas_pfc_regular_localization (A ⧸ Ideal.span (Set.range x)) hPreg
      (Q.map (Ideal.Quotient.mk (Ideal.span (Set.range x))))
    have hBP := wcpa_dj_sfcgb_quot_loc_regular A (Ideal.span (Set.range x)) Q hPQ hQbar
    have hBreg := wc_hnas_pfc_regular_localization A inferInstance Q
    haveI := hBreg
    have hconI := wcpa_regular_quotient_conormal (Localization.AtPrime Q)
      (fun T _ hT => wcpa_regular_isDomain T wcpa_rs_quotient_regular hT) wcpa_rs_quotient_regular
      ((Ideal.span (Set.range x)).map (algebraMap A (Localization.AtPrime Q))) hBP
    set y : Fin J₀.card → Localization.AtPrime Q := fun i => algebraMap A (Localization.AtPrime Q) (x i)
      with hy
    have hImap : (Ideal.span (Set.range x)).map (algebraMap A (Localization.AtPrime Q)) =
        Ideal.span (Set.range y) := by
      rw [Ideal.map_span, ← Set.range_comp]; rfl

    have hconorm : ∀ r : Fin J₀.card → Localization.AtPrime Q,
        ∑ i, r i * y i ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ 2 →
        ∀ k, r k ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
      intro r hr k
      by_contra hk
      have hzI : ∑ i, r i * y i ∈ (Ideal.span (Set.range x)).map (algebraMap A (Localization.AtPrime Q)) := by
        rw [hImap]
        exact Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, rfl⟩))
      have hz := hconI _ hzI hr
      rw [hImap, ← Ideal.smul_eq_mul] at hz
      obtain ⟨a', ha'm, ha'sum⟩ := (Submodule.mem_ideal_smul_span_iff_exists_sum _ y _).mp hz
      rw [Finsupp.sum_fintype _ _ (by intro i; exact zero_smul _ _)] at ha'sum
      have hrel : ∑ i, (r i - a' i) * y i = 0 := by
        simp only [sub_mul, Finset.sum_sub_distrib]
        rw [← ha'sum]
        simp only [smul_eq_mul, sub_self]
      have hmu : r k - a' k ∉ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
        intro hmu
        have := add_mem hmu (ha'm k)
        rw [sub_add_cancel] at this
        exact hk this
      have hunit : IsUnit (r k - a' k) := by
        by_contra hnu
        exact hmu ((IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hnu))
      rw [Fintype.sum_eq_add_sum_compl k] at hrel
      have hmemk : (r k - a' k) * y k ∈
          (Ideal.span (x '' ({k}ᶜ : Set (Fin J₀.card)))).map (algebraMap A (Localization.AtPrime Q)) := by
        rw [eq_neg_of_add_eq_zero_left hrel]
        refine neg_mem (Ideal.sum_mem _ (fun i hi => Ideal.mul_mem_left _ _
          (Ideal.mem_map_of_mem _ (Ideal.subset_span ⟨i, ?_, rfl⟩))))
        simpa using hi
      have hyk := (Ideal.unit_mul_mem_iff_mem _ hunit).mp hmemk
      have himg : x '' ({k}ᶜ : Set (Fin J₀.card)) =
          t '' ((J₀.erase (e k) : Finset (Fin n)) : Set (Fin n)) := by
        ext z
        simp only [Set.mem_image, Set.mem_compl_singleton_iff, Finset.mem_coe, Finset.mem_erase]
        constructor
        · rintro ⟨i, hik, rfl⟩
          exact ⟨e i, ⟨fun h => hik (e.injective h), he_mem i⟩, rfl⟩
        · rintro ⟨j, ⟨hjk, hj⟩, rfl⟩
          have hjr : j ∈ Set.range e := by
            rw [he, Finset.range_orderEmbOfFin]; exact hj
          obtain ⟨i, rfl⟩ := hjr
          exact ⟨i, fun h => hjk (by rw [h]), rfl⟩
      have hPkprime : (Ideal.span (x '' ({k}ᶜ : Set (Fin J₀.card)))).IsPrime := by
        rw [himg]; exact hprime _
      have hPkQ : Ideal.span (x '' ({k}ᶜ : Set (Fin J₀.card))) ≤ Q := by
        refine Ideal.span_le.mpr ?_
        rintro _ ⟨i, _, rfl⟩
        exact hxQ i
      have hdisj : Disjoint (Q.primeCompl : Set A)
          (Ideal.span (x '' ({k}ᶜ : Set (Fin J₀.card))) : Set A) :=
        Set.disjoint_left.mpr (fun z hz hzP => hz (hPkQ hzP))
      have hcomap := IsLocalization.under_map_of_isPrime_disjoint Q.primeCompl
        (Localization.AtPrime Q) hPkprime hdisj
      rw [Ideal.under_def] at hcomap
      have hxk : x k ∈ Ideal.span (x '' ({k}ᶜ : Set (Fin J₀.card))) := by
        rw [← hcomap]; exact hyk
      have hnot := hs2 (e '' ({k}ᶜ : Set (Fin J₀.card))) (e k) (by
        rintro ⟨i, hi, hik⟩; exact hi (e.injective hik))
      rw [Set.image_image] at hnot
      exact hnot hxk

    have hyM : ∀ i, y i ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := fun i =>
      (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q (x i)).mpr (hxQ i)
    have hprod : ∏ i, y i ∉ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (J₀.card + 1) := by
      have hhom : (∏ i : Fin J₀.card,
          (MvPolynomial.X i : MvPolynomial (Fin J₀.card) (Localization.AtPrime Q))).IsHomogeneous
            J₀.card := by
        have := MvPolynomial.IsHomogeneous.prod Finset.univ
          (fun i : Fin J₀.card => (MvPolynomial.X i : MvPolynomial (Fin J₀.card) (Localization.AtPrime Q)))
          (fun _ => 1) (fun i _ => MvPolynomial.isHomogeneous_X _ i)
        simpa using this
      have hcoeff : ∃ α, IsUnit ((∏ i : Fin J₀.card,
          (MvPolynomial.X i : MvPolynomial (Fin J₀.card) (Localization.AtPrime Q))).coeff α) := by
        refine ⟨∑ i : Fin J₀.card, Finsupp.single i 1, ?_⟩
        have hX : (∏ i : Fin J₀.card,
            (MvPolynomial.X i : MvPolynomial (Fin J₀.card) (Localization.AtPrime Q))) =
            MvPolynomial.monomial (∑ i : Fin J₀.card, Finsupp.single i 1) 1 := by
          rw [MvPolynomial.monomial_sum_one]; rfl
        rw [hX, MvPolynomial.coeff_monomial, if_pos rfl]
        exact isUnit_one
      have := wcpa_dj_sfcgb_partial_quasi_regular (Localization.AtPrime Q) J₀.card y hyM hconorm
        J₀.card _ hhom hcoeff
      rw [map_prod] at this
      simp only [MvPolynomial.eval_X] at this
      exact this

    obtain ⟨u, hu⟩ := hass
    have hsplit := Finset.prod_sdiff (f := t) hJ₀
    have hw : IsUnit (algebraMap A (Localization.AtPrime Q) (∏ j ∈ J \ J₀, t j)) := by
      rw [map_prod]
      refine Finset.prod_induction _ IsUnit (fun _ _ h1 h2 => h1.mul h2) isUnit_one ?_
      intro j hj
      rw [Finset.mem_sdiff] at hj
      have hjQ : t j ∉ Q := fun h => hj.2 ((hiff j hj.1).mpr h)
      exact IsLocalization.map_units (Localization.AtPrime Q) (⟨t j, hjQ⟩ : Q.primeCompl)
    have hreidx : ∏ j ∈ J₀, algebraMap A (Localization.AtPrime Q) (t j) = ∏ i, y i := by
      have h := Finset.prod_map (Finset.univ : Finset (Fin J₀.card)) e.toEmbedding
        (fun j => algebraMap A (Localization.AtPrime Q) (t j))
      rw [he, Finset.map_orderEmbOfFin_univ] at h
      exact h
    have hu' : algebraMap A (Localization.AtPrime Q) a * algebraMap A (Localization.AtPrime Q) (u : A) =
        algebraMap A (Localization.AtPrime Q) (∏ j ∈ J \ J₀, t j) * ∏ i, y i := by
      have h1 : algebraMap A (Localization.AtPrime Q) (a * u) =
          algebraMap A (Localization.AtPrime Q) ((∏ j ∈ J \ J₀, t j) * ∏ j ∈ J₀, t j) := by
        rw [hu, hsplit]
      rw [map_mul, map_mul, map_prod (algebraMap A (Localization.AtPrime Q)) t J₀, hreidx] at h1
      exact h1
    have hv : IsUnit (algebraMap A (Localization.AtPrime Q) (u : A)) :=
      u.isUnit.map (algebraMap A (Localization.AtPrime Q))
    have key2 : ∀ I : Ideal (Localization.AtPrime Q),
        algebraMap A (Localization.AtPrime Q) a ∈ I ↔ ∏ i, y i ∈ I := by
      intro I
      rw [← Ideal.mul_unit_mem_iff_mem I hv, hu', Ideal.unit_mul_mem_iff_mem I hw]
    refine ⟨(key2 _).mpr ?_, fun h => hprod ((key2 _).mp h)⟩
    have hpm := Ideal.prod_mem_prod (s := (Finset.univ : Finset (Fin J₀.card)))
      (I := fun _ => IsLocalRing.maximalIdeal (Localization.AtPrime Q)) (x := y) (fun i _ => hyM i)
    rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin] at hpm
    exact hpm

  haveI hN : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      Ideal.span (Set.range s) := by
    rw [hs, AdicCompletion.maximalIdeal_eq_map]
  have hd : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = ringKrullDim O :=
    wc_lfi_flat_local_dim_eq O _ AdicCompletion.maximalIdeal_eq_map.symm
  have hdimO : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = (n : WithBot ℕ∞) :=
    hd.trans hn.symm
  have h1 : (Ideal.span (Set.range s)).spanFinrank ≤ (Set.range s).ncard :=
    Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range s)
  have h2 : (Set.range s).ncard ≤ n := by
    rw [← Set.image_univ]
    refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
    rw [Set.ncard_univ, Nat.card_fin]
  have hrk : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal
      (AdicCompletion (IsLocalRing.maximalIdeal O) O)) : ℕ) : WithBot ℕ∞) ≤
      ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    rw [hd, ← hn, hmax]
    exact_mod_cast h1.trans h2
  haveI hRegC := IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _ hrk
  intro hass Q _ J₀ hJ₀ hiff
  exact key _ s hmax.symm hdimO (fun T => wcpa_dj_sfc_span_prime O n s T hreg hn hs) _ hass Q J₀
    hJ₀ hiff

theorem wcpa_dj_sfc_radical_principal : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (J : Finset (Fin n)) (g : O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → Associated (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) (∏ j ∈ J, s j) → (Ideal.span {g}).IsRadical :=
by
  intro O _ _ n s J g hreg hdim hspan hass
  classical
  haveI := hreg
  haveI hN : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      Ideal.span (Set.range s) := by
    rw [hspan, AdicCompletion.maximalIdeal_eq_map]
  have hd : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = ringKrullDim O :=
    wc_lfi_flat_local_dim_eq O _ AdicCompletion.maximalIdeal_eq_map.symm
  have hdimA : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = (n : WithBot ℕ∞) :=
    hd.trans hdim.symm
  have hf : ∀ i, s i ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    intro i
    rw [hmax]
    exact Ideal.subset_span ⟨i, rfl⟩
  have hli := wc_lpkt_cotangent_indep _ n s hmax.symm hdimA hf

  have hprime : ∀ j, (Ideal.span {s j}).IsPrime := by
    intro j
    have := wcpa_dj_sfc_span_prime O n s {j} hreg hdim hspan
    rwa [Finset.coe_singleton, Set.image_singleton] at this

  have hndvd : ∀ j l : Fin n, j ≠ l → s l ∉ Ideal.span {s j} := by
    intro j l hjl hmem
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp hmem
    have hv : (IsLocalRing.maximalIdeal
          (AdicCompletion (IsLocalRing.maximalIdeal O) O)).toCotangent ⟨s l, hf l⟩ =
        (IsLocalRing.residue _ c) • (IsLocalRing.maximalIdeal
          (AdicCompletion (IsLocalRing.maximalIdeal O) O)).toCotangent ⟨s j, hf j⟩ := by
      have e1 : (⟨s l, hf l⟩ : IsLocalRing.maximalIdeal
          (AdicCompletion (IsLocalRing.maximalIdeal O) O)) = c • ⟨s j, hf j⟩ := by
        apply Subtype.ext
        rw [Submodule.coe_smul, smul_eq_mul, hc]
      rw [e1, map_smul, ← IsLocalRing.ResidueField.algebraMap_eq, algebraMap_smul]
    have key := linearIndependent_iff'.mp hli {l, j}
      (fun i => if i = l then 1 else if i = j then -(IsLocalRing.residue _ c) else 0) ?_ l
      (by simp)
    · simp at key
    · rw [Finset.sum_pair hjl.symm]
      simp [hjl, hv]

  have hrad : ∀ T : Finset (Fin n), (Ideal.span {∏ j ∈ T, s j}).IsRadical := by
    intro T
    induction T using Finset.induction_on with
    | empty =>
      rw [Finset.prod_empty, Ideal.span_singleton_one]
      exact fun x _ => Submodule.mem_top
    | insert a T haT ih =>
      rw [Finset.prod_insert haT]
      intro x hx
      obtain ⟨e, he⟩ := hx
      have hsub1 : Ideal.span {s a * ∏ j ∈ T, s j} ≤ Ideal.span {∏ j ∈ T, s j} :=
        Ideal.span_singleton_le_span_singleton.mpr (dvd_mul_left _ _)
      have hsub2 : Ideal.span {s a * ∏ j ∈ T, s j} ≤ Ideal.span {s a} :=
        Ideal.span_singleton_le_span_singleton.mpr (dvd_mul_right _ _)
      have hxP := ih ⟨e, hsub1 he⟩
      obtain ⟨y, rfl⟩ := Ideal.mem_span_singleton'.mp hxP
      have hxa : y * ∏ j ∈ T, s j ∈ Ideal.span {s a} :=
        (hprime a).mem_of_pow_mem e (hsub2 he)
      rcases (hprime a).mem_or_mem hxa with hy | hP
      · obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hy
        exact Ideal.mem_span_singleton'.mpr ⟨c, by ring⟩
      · haveI := hprime a
        obtain ⟨j, hj, hjm⟩ := Ideal.IsPrime.prod_mem_iff.mp hP
        exact absurd hjm (hndvd a j (fun h => haT (h ▸ hj)))
  have heq : Ideal.span {algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g} =
      Ideal.span {∏ j ∈ J, s j} :=
    le_antisymm (Ideal.span_singleton_le_span_singleton.mpr hass.symm.dvd)
      (Ideal.span_singleton_le_span_singleton.mpr hass.dvd)
  haveI : Module.FaithfullyFlat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    Module.FaithfullyFlat.of_flat_of_isLocalHom
  have hc := Ideal.comap_map_eq_self_of_faithfullyFlat
    (B := AdicCompletion (IsLocalRing.maximalIdeal O) O) (Ideal.span {g})
  rw [Ideal.map_span, Set.image_singleton, heq] at hc
  rw [← hc]
  exact (hrad J).comap _

theorem wcpa_dj_sfc_equation_assoc : ∀ (Z : Scheme.{u}) (D : Set Z) (z z' : Z) (h : z' ⤳ z) (g : Z.presheaf.stalk z) (g' : Z.presheaf.stalk z'), (Ideal.span {g}).IsRadical → (Ideal.span {g'}).IsRadical → (∀ (y : Z) (hy : y ⤳ z), (y ∈ D ↔ (Z.presheaf.stalkSpecializes hy).hom g ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk y))) → (∀ (y : Z) (hy : y ⤳ z'), (y ∈ D ↔ (Z.presheaf.stalkSpecializes hy).hom g' ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk y))) → Ideal.span {g'} = Ideal.span {(Z.presheaf.stalkSpecializes h).hom g} :=
by
  intro Z D z z' h g g' hg hg' hiff hiff'
  classical
  have key : ∀ q : Ideal (Z.presheaf.stalk z'), q.IsPrime →
      (g' ∈ q ↔ (Z.presheaf.stalkSpecializes h).hom g ∈ q) := by
    intro q hq
    obtain ⟨hsp, hspiff⟩ := wcpa_dj_mn_generization Z z' ⟨q, hq⟩
    have hcomp : (Z.presheaf.stalkSpecializes (hsp.trans h)).hom g =
        (Z.presheaf.stalkSpecializes hsp).hom ((Z.presheaf.stalkSpecializes h).hom g) := by
      rw [← TopCat.Presheaf.stalkSpecializes_comp Z.presheaf hsp h]
      rfl
    have e1 := hspiff g'
    have e2 := hspiff ((Z.presheaf.stalkSpecializes h).hom g)
    have e3 := hiff' _ hsp
    have e4 := hiff _ (hsp.trans h)
    rw [hcomp] at e4
    exact e1.symm.trans (e3.symm.trans (e4.trans e2))
  have hK : (Ideal.span {(Z.presheaf.stalkSpecializes h).hom g}).IsRadical := by
    letI : Algebra (Z.presheaf.stalk z) (Z.presheaf.stalk z') :=
      (Z.presheaf.stalkSpecializes h).hom.toAlgebra
    haveI := wc_ldp_nc_stalkSpecializes_isLocalization Z z' z h
    have hmap : Ideal.map (algebraMap (Z.presheaf.stalk z) (Z.presheaf.stalk z'))
        (Ideal.span {g}) = Ideal.span {(Z.presheaf.stalkSpecializes h).hom g} := by
      rw [Ideal.map_span, Set.image_singleton]
      rfl
    have hr := IsLocalization.map_radical
      (M := ((IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).comap
        (Z.presheaf.stalkSpecializes h).hom).primeCompl) (S := Z.presheaf.stalk z')
      (Ideal.span {g})
    rw [hg.radical, hmap] at hr
    exact hr.symm.le
  rw [← hg'.radical, ← hK.radical, Ideal.radical_eq_sInf, Ideal.radical_eq_sInf]
  congr 1
  ext J
  simp only [Set.mem_setOf_eq]
  constructor
  · rintro ⟨h1, h2⟩
    refine ⟨?_, h2⟩
    rw [Ideal.span_singleton_le_iff_mem] at h1 ⊢
    exact (key J h2).mp h1
  · rintro ⟨h1, h2⟩
    refine ⟨?_, h2⟩
    rw [Ideal.span_singleton_le_iff_mem] at h1 ⊢
    exact (key J h2).mpr h1

theorem wcpa_dj_sfc_formal_local_map : ∀ (Z : Scheme.{u}) (z z' : Z) (h : z' ⤳ z) (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) [Q.IsPrime], IsNoetherianRing (Z.presheaf.stalk z) → Q.comap (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) = (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).comap (Z.presheaf.stalkSpecializes h).hom → ∃ β : Z.presheaf.stalk z' →+* Localization.AtPrime Q, β.comp (Z.presheaf.stalkSpecializes h).hom = (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) ∧ IsLocalHom β ∧ β.Flat ∧ Ideal.map β (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')) = (Q.comap (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)))).map ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (Localization.AtPrime Q)).comp (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)))) :=
by
  intro Z z z' h Q _ hNoeth hQc
  have key_alg : ∀ (A B C : Type u) [CommRing A] [CommRing B] [CommRing C] [IsLocalRing B]
      (σ : A →+* B) (ι : A →+* C) (Q : Ideal C) [Q.IsPrime],
      (letI := σ.toAlgebra; IsLocalization.AtPrime B ((IsLocalRing.maximalIdeal B).comap σ)) →
      ι.Flat → Q.comap ι = (IsLocalRing.maximalIdeal B).comap σ →
      ∃ β : B →+* Localization.AtPrime Q, β.comp σ = (algebraMap C (Localization.AtPrime Q)).comp ι ∧
        IsLocalHom β ∧ β.Flat ∧
        Ideal.map β (IsLocalRing.maximalIdeal B) =
          (Q.comap ι).map ((algebraMap C (Localization.AtPrime Q)).comp ι) := by
    intro A B C _ _ _ _ σ ι Q _ hloc hflat hQ
    letI : Algebra A B := σ.toAlgebra
    set p := (IsLocalRing.maximalIdeal B).comap σ with hpdef
    haveI : p.IsPrime := Ideal.comap_isPrime σ _
    haveI : IsLocalization.AtPrime B p := hloc
    let e : B ≃ₐ[A] Localization.AtPrime p :=
      IsLocalization.algEquiv p.primeCompl B (Localization.AtPrime p)
    have hp : p = Q.comap ι := hQ.symm
    let lam := Localization.localRingHom p Q ι hp
    have hcomp : (lam.comp (e : B →+* Localization.AtPrime p)).comp σ =
        (algebraMap C (Localization.AtPrime Q)).comp ι := by
      ext a
      simp only [RingHom.comp_apply]
      have h1 : σ a = algebraMap A B a := rfl
      rw [h1]
      have h2 : (e : B →+* Localization.AtPrime p) (algebraMap A B a) =
          algebraMap A (Localization.AtPrime p) a := e.commutes a
      rw [h2]
      exact Localization.localRingHom_to_map p Q ι hp a
    refine ⟨lam.comp (e : B →+* Localization.AtPrime p), hcomp, ?_, ?_, ?_⟩
    · haveI : IsLocalHom lam := Localization.isLocalHom_localRingHom p Q ι hp
      haveI : IsLocalHom (e : B →+* Localization.AtPrime p) := by
        refine ⟨fun a ha => ?_⟩
        have h3 := ha.map (e.symm : Localization.AtPrime p →+* B)
        have h4 : (e.symm : Localization.AtPrime p →+* B)
            ((e : B →+* Localization.AtPrime p) a) = a := e.symm_apply_apply a
        rwa [h4] at h3
      exact RingHom.isLocalHom_comp _ _
    · exact RingHom.Flat.comp (RingHom.Flat.of_bijective e.bijective)
        (RingHom.Flat.localRingHom hflat Q p hp)
    · have hm : IsLocalRing.maximalIdeal B = Ideal.map σ p :=
        (IsLocalization.AtPrime.map_eq_maximalIdeal p B).symm
      rw [hm, Ideal.map_map, hcomp, hp]
  haveI := hNoeth
  have hflat : (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal
      (Z.presheaf.stalk z)) (Z.presheaf.stalk z))).Flat := by
    rw [RingHom.flat_algebraMap_iff]
    exact AdicCompletion.flat_of_isNoetherian _
  have stalk_loc : ∀ (X : Scheme.{u}) (x z : X) (h : x ⤳ z),
      letI := (X.presheaf.stalkSpecializes h).hom.toAlgebra
      IsLocalization.AtPrime (X.presheaf.stalk x)
        ((IsLocalRing.maximalIdeal (X.presheaf.stalk x)).comap (X.presheaf.stalkSpecializes h).hom) := by
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
  exact key_alg _ _ _ (Z.presheaf.stalkSpecializes h).hom _ Q
    (stalk_loc Z z' z h) hflat hQc

theorem wcpa_dj_sfc_key_count : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (D : Set Z) (z z' : Z) (h : z' ⤳ z) (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (g : Z.presheaf.stalk z) (J : Finset (Fin n)) (n' : ℕ) (s' : Fin n' → AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')) (Z.presheaf.stalk z')) (g' : Z.presheaf.stalk z') (J' : Finset (Fin n')) (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) [Q.IsPrime], IsRegularLocalRing (Z.presheaf.stalk z) → IsRegularLocalRing (Z.presheaf.stalk z') → (n : WithBot ℕ∞) = ringKrullDim (Z.presheaf.stalk z) → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)).map (algebraMap _ _) → Associated (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) g) (∏ j ∈ J, s j) → (∀ (y : Z) (hy : y ⤳ z), (y ∈ D ↔ (Z.presheaf.stalkSpecializes hy).hom g ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk y))) → (n' : WithBot ℕ∞) = ringKrullDim (Z.presheaf.stalk z') → Ideal.span (Set.range s') = (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).map (algebraMap _ _) → Associated (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')) (Z.presheaf.stalk z')) g') (∏ j ∈ J', s' j) → (∀ (y : Z) (hy : y ⤳ z'), (y ∈ D ↔ (Z.presheaf.stalkSpecializes hy).hom g' ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk y))) → z' ∈ D → Q.comap (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) = (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).comap (Z.presheaf.stalkSpecializes h).hom → ∃ J₀ ⊆ J, J'.card = J₀.card ∧ ∀ j ∈ J, (j ∈ J₀ ↔ s j ∈ Q) :=
by
  intro k _ Z sZ _ D z z' h n s g J n' s' g' J' Q _ hreg hreg' hn hs hass hiff hn' hs' hass'
    hiff' _ hQc
  classical
  haveI := hreg
  haveI := hreg'

  have hJ₀ : ∀ j ∈ J, (j ∈ J.filter (fun j => s j ∈ Q) ↔ s j ∈ Q) := by
    intro j hj
    simp [Finset.mem_filter, hj]
  refine ⟨J.filter (fun j => s j ∈ Q), Finset.filter_subset _ _, ?_, hJ₀⟩

  have h3 := wcpa_dj_sfc_formal_order_closed _ n' s' J' g' hreg' hn' hs' hass'

  have hr := wcpa_dj_sfc_radical_principal _ n s J g hreg hn hs hass
  have hr' := wcpa_dj_sfc_radical_principal _ n' s' J' g' hreg' hn' hs' hass'

  have h6 := wcpa_dj_sfc_equation_assoc Z D z z' h g g' hr hr' hiff hiff'
  have hmem : ∀ I : Ideal (Z.presheaf.stalk z'),
      g' ∈ I ↔ (Z.presheaf.stalkSpecializes h).hom g ∈ I := by
    intro I
    rw [← Ideal.span_singleton_le_iff_mem, ← Ideal.span_singleton_le_iff_mem, h6]
  have hsg1 : (Z.presheaf.stalkSpecializes h).hom g ∈
      IsLocalRing.maximalIdeal (Z.presheaf.stalk z') ^ J'.card := (hmem _).mp h3.1
  have hsg2 : (Z.presheaf.stalkSpecializes h).hom g ∉
      IsLocalRing.maximalIdeal (Z.presheaf.stalk z') ^ (J'.card + 1) :=
    fun hh => h3.2 ((hmem _).mpr hh)

  obtain ⟨β, hβc, hβl, hβf, hβm⟩ :=
    wcpa_dj_sfc_formal_local_map Z z z' h Q inferInstance hQc

  have h1 := wcpa_dj_sfc_gring_fibres k Z sZ z Q
  rw [← hβm] at h1

  letI : Algebra (Z.presheaf.stalk z') (Localization.AtPrime Q) := β.toAlgebra
  haveI : IsLocalHom (algebraMap (Z.presheaf.stalk z') (Localization.AtPrime Q)) := hβl
  haveI : Module.Flat (Z.presheaf.stalk z') (Localization.AtPrime Q) := hβf
  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
      (Z.presheaf.stalk z)) := wc_hnas_completion_noetherian _
  haveI : IsNoetherianRing (Localization.AtPrime Q) :=
    IsLocalization.isNoetherianRing Q.primeCompl _ inferInstance
  have h2 := wcpa_dj_sfc_order_transfer (Z.presheaf.stalk z') (Localization.AtPrime Q) hreg' h1
    _ J'.card hsg2

  have hmemB : β ((Z.presheaf.stalkSpecializes h).hom g) ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ J'.card := by
    have hle : Ideal.map β (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')) ≤
        IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
      rw [Ideal.map_le_iff_le_comap]
      intro x hx
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      exact (IsLocalRing.mem_maximalIdeal x).mp hx (isUnit_of_map_unit β x hu)
    have hle' : Ideal.map β (IsLocalRing.maximalIdeal (Z.presheaf.stalk z') ^ J'.card) ≤
        IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ J'.card := by
      rw [Ideal.map_pow]
      exact Ideal.pow_right_mono hle _
    exact hle' (Ideal.mem_map_of_mem β hsg1)

  have hβg : β ((Z.presheaf.stalkSpecializes h).hom g) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
        (Z.presheaf.stalk z)) (Localization.AtPrime Q)
        (algebraMap (Z.presheaf.stalk z) (AdicCompletion (IsLocalRing.maximalIdeal
          (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) g) := by
    rw [← RingHom.comp_apply, hβc, RingHom.comp_apply]
  have h2' : β ((Z.presheaf.stalkSpecializes h).hom g) ∉
      IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (J'.card + 1) := h2
  rw [hβg] at h2' hmemB

  have h4 := wcpa_dj_sfc_formal_order_prime _ n s J g hreg hn hs hass Q
    (J.filter (fun j => s j ∈ Q)) (Finset.filter_subset _ _) hJ₀

  rcases lt_trichotomy J'.card (J.filter (fun j => s j ∈ Q)).card with hlt | heq | hgt
  · exact absurd (Ideal.pow_le_pow_right (by omega) h4.1) h2'
  · exact heq
  · exact absurd (Ideal.pow_le_pow_right (by omega) hmemB) h4.2

theorem wcpa_dj_sfcgb_local_divides : ∀ (X : Scheme.{u}) (y : X) (g h : X.presheaf.stalk y) (D : Set X), (Ideal.span {g}).IsRadical → (∀ (z : X) (hz : z ⤳ y), (z ∈ D ↔ (X.presheaf.stalkSpecializes hz).hom g ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk z))) → (∀ (z : X) (hz : z ⤳ y), z ∈ D → (X.presheaf.stalkSpecializes hz).hom h ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk z)) → h ∈ Ideal.span {g} :=
by
  intro X y g h D H1 H2 H3
  have hgen : ∀ (x : X) (q : PrimeSpectrum (X.presheaf.stalk x)), ∃ hsp : X.fromSpecStalk x q ⤳ x, ∀ a : X.presheaf.stalk x, (X.presheaf.stalkSpecializes hsp).hom a ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk (X.fromSpecStalk x q)) ↔ a ∈ q.asIdeal := by
    intro x q
    have hsp : X.fromSpecStalk x q ⤳ x := by
      first
      | exact (Scheme.range_fromSpecStalk (X := X) (x := x)).subset ⟨q, rfl⟩
      | (have h : X.fromSpecStalk x q ∈ Set.range (X.fromSpecStalk x) := ⟨q, rfl⟩
         rwa [Scheme.range_fromSpecStalk] at h)
      | (have h1 : q ⤳ IsLocalRing.closedPoint (X.presheaf.stalk x) :=
           (PrimeSpectrum.le_iff_specializes _ _).mp (IsLocalRing.le_maximalIdeal q.isPrime.ne_top)
         have h2 := h1.map (X.fromSpecStalk x).continuous
         rwa [Scheme.fromSpecStalk_closedPoint] at h2)
    refine ⟨hsp, fun a => ?_⟩
    have key : (Spec.map (X.presheaf.stalkSpecializes hsp))
        (IsLocalRing.closedPoint (X.presheaf.stalk (X.fromSpecStalk x q))) = q := by
      apply (X.fromSpecStalk x).isEmbedding.injective
      first
      | (rw [← Scheme.Hom.comp_apply, Scheme.SpecMap_stalkSpecializes_fromSpecStalk,
          Scheme.fromSpecStalk_closedPoint])
      | (show (Spec.map (X.presheaf.stalkSpecializes hsp) ≫ X.fromSpecStalk x)
            (IsLocalRing.closedPoint (X.presheaf.stalk (X.fromSpecStalk x q))) = _
         rw [Scheme.SpecMap_stalkSpecializes_fromSpecStalk, Scheme.fromSpecStalk_closedPoint])
      | (have e := congrArg (fun k : Spec (X.presheaf.stalk (X.fromSpecStalk x q)) ⟶ X =>
            k (IsLocalRing.closedPoint (X.presheaf.stalk (X.fromSpecStalk x q))))
            (Scheme.SpecMap_stalkSpecializes_fromSpecStalk hsp)
         simp only [Scheme.Hom.comp_apply] at e
         rw [e, Scheme.fromSpecStalk_closedPoint])
    have h2 : a ∈ q.asIdeal ↔ a ∈ ((Spec.map (X.presheaf.stalkSpecializes hsp))
        (IsLocalRing.closedPoint (X.presheaf.stalk (X.fromSpecStalk x q)))).asIdeal := by
      rw [key]
    rw [h2]
    first
    | exact Iff.rfl
    | (rw [Spec.map_base_apply]; exact Iff.rfl)
    | (rw [Scheme.Spec_map_base]; exact Iff.rfl)
    | simp [PrimeSpectrum.comap_asIdeal, Ideal.mem_comap, IsLocalRing.closedPoint]
  rw [← H1.radical, Ideal.radical_eq_sInf, Ideal.mem_sInf]
  rintro J ⟨hle, hJ⟩
  have hgJ : g ∈ J := hle (Ideal.mem_span_singleton_self g)
  obtain ⟨hsp, hspiff⟩ := hgen y ⟨J, hJ⟩
  have hzD : X.fromSpecStalk y ⟨J, hJ⟩ ∈ D := (H2 _ hsp).mpr ((hspiff g).mpr hgJ)
  exact (hspiff h).mp (H3 _ hsp hzD)

theorem wcpa_dj_sfcgb_spread_avoid : ∀ (X : Scheme.{u}) [IsLocallyNoetherian X] (F O : Set X) (w : X), IsClosed F → IsOpen O → (∀ y : X, y ⤳ w → y ∈ F → y ∉ O) → ∃ U : Set X, IsOpen U ∧ w ∈ U ∧ ∀ y ∈ U, y ∈ F → y ∉ O :=
by
  intro X _ F O w hF hO hH
  classical
  obtain ⟨W, hW, hwW, -⟩ :=
    AlgebraicGeometry.exists_isAffineOpen_mem_and_subset (U := (⊤ : X.Opens)) (x := w) trivial
  haveI : IsNoetherianRing Γ(X, W) := IsLocallyNoetherian.component_noetherian ⟨W, hW⟩
  haveI : TopologicalSpace.NoetherianSpace ((W : Set X)) := noetherianSpace_of_isAffineOpen W hW
  set w' : ((W : Set X)) := ⟨w, hwW⟩ with hw'
  have hF'cl : IsClosed ((Subtype.val : ((W : Set X)) → X) ⁻¹' F) := hF.preimage continuous_subtype_val
  obtain ⟨S, hSfin, hScl, hSirr, hFS⟩ :=
    TopologicalSpace.NoetherianSpace.exists_finite_set_isClosed_irreducible hF'cl
  have key : ∀ t ∈ S, w' ∈ t → ∀ y' ∈ t, (y' : X) ∉ O := by
    intro t ht hwt y' hy' hyO
    have hirr : IsIrreducible ((Subtype.val : ((W : Set X)) → X) '' t) :=
      (hSirr t ht).image _ continuous_subtype_val.continuousOn
    have hgen := hirr.isGenericPoint_genericPoint_closure
    have hsub : (Subtype.val : ((W : Set X)) → X) '' t ⊆ F := by
      rintro _ ⟨z, hz, rfl⟩
      have : z ∈ (Subtype.val : ((W : Set X)) → X) ⁻¹' F := by
        rw [hFS]; exact Set.mem_sUnion_of_mem hz ht
      exact this
    have hclF : closure ((Subtype.val : ((W : Set X)) → X) '' t) ⊆ F := closure_minimal hsub hF
    have hηF : hirr.genericPoint ∈ F := hclF hgen.mem
    have hηy : hirr.genericPoint ⤳ (y' : X) :=
      hgen.specializes (subset_closure ⟨y', hy', rfl⟩)
    have hηO : hirr.genericPoint ∈ O := hηy.mem_open hO hyO
    have hηw : hirr.genericPoint ⤳ w :=
      hgen.specializes (subset_closure ⟨w', hwt, rfl⟩)
    exact hH _ hηw hηF hηO
  set B : Set ((W : Set X)) := ⋃ t ∈ {t ∈ S | w' ∉ t}, t with hB
  have hBcl : IsClosed B :=
    Set.Finite.isClosed_biUnion (hSfin.subset (Set.sep_subset _ _)) (fun t ht => hScl t ht.1)
  have hU₀ : IsOpen Bᶜ := hBcl.isOpen_compl
  have hwB : w' ∉ B := by
    intro h
    rw [hB, Set.mem_iUnion₂] at h
    obtain ⟨t, ht, hwt⟩ := h
    exact ht.2 hwt
  refine ⟨(Subtype.val : ((W : Set X)) → X) '' Bᶜ, W.isOpen.isOpenMap_subtype_val _ hU₀, ⟨w', hwB, rfl⟩, ?_⟩
  rintro _ ⟨y', hy'B, rfl⟩ hyF
  have hy'F : y' ∈ ⋃₀ S := by
    rw [← hFS]; exact hyF
  obtain ⟨t, ht, hy't⟩ := Set.mem_sUnion.mp hy'F
  by_cases hwt : w' ∈ t
  · exact key t ht hwt y' hy't
  · exfalso
    apply hy'B
    rw [hB, Set.mem_iUnion₂]
    exact ⟨t, ⟨ht, hwt⟩, hy't⟩

theorem wcpa_dj_sfcgb_formal_order : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (J : Finset (Fin n)) (g : O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → Associated (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) (∏ j ∈ J, s j) → g ∈ IsLocalRing.maximalIdeal O ^ J.card ∧ g ∉ IsLocalRing.maximalIdeal O ^ (J.card + 1) :=
by
  intro O _ _ n s J g hreg hn hs hass
  classical
  haveI := hreg
  haveI hNÔ : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  haveI : Module.FaithfullyFlat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    Module.FaithfullyFlat.of_flat_of_isLocalHom
  have hmapm : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      (IsLocalRing.maximalIdeal O).map
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) :=
    AdicCompletion.maximalIdeal_eq_map
  have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) =
      Ideal.span (Set.range s) := by
    rw [hs]; exact hmapm
  have hpow : ∀ k : ℕ, IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ k =
      Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O ^ k) := by
    intro k
    rw [Ideal.map_pow, hmapm]
  have hf : ∀ i, s i ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    intro i
    rw [hmax]
    exact Ideal.subset_span ⟨i, rfl⟩
  have hcm : ∀ I : Ideal O, Ideal.comap (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) I) = I :=
    fun I => Ideal.comap_map_eq_self_of_faithfullyFlat I
  have hd : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = ringKrullDim O :=
    wc_lfi_flat_local_dim_eq O (AdicCompletion (IsLocalRing.maximalIdeal O) O) hmapm.symm
  have hdimÔ : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = (n : WithBot ℕ∞) :=
    hd.trans hn.symm
  have hprod : ∏ j ∈ J, s j ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ J.card := by
    have h0 := Ideal.prod_mem_prod (s := J)
      (I := fun _ => IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (x := s) (fun j _ => hf j)
    rwa [Finset.prod_const] at h0
  refine ⟨?_, ?_⟩
  · have h1 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ J.card :=
      Ideal.mem_of_dvd _ hass.symm.dvd hprod
    rw [hpow] at h1
    rw [← hcm (IsLocalRing.maximalIdeal O ^ J.card), Ideal.mem_comap]
    exact h1
  · intro hg
    have h1 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ (J.card + 1) := by
      rw [hpow]; exact Ideal.mem_map_of_mem _ hg
    have h2 : ∏ j ∈ J, s j ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ^ (J.card + 1) :=
      Ideal.mem_of_dvd _ hass.dvd h1
    have hFh : (∏ j ∈ J, MvPolynomial.X j :
        MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O)).IsHomogeneous
          J.card := by
      have h0 := MvPolynomial.IsHomogeneous.prod J
        (fun j => (MvPolynomial.X j :
          MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O)))
        (fun _ => 1) (fun j _ => MvPolynomial.isHomogeneous_X _ j)
      simpa using h0
    have hFe : MvPolynomial.eval s (∏ j ∈ J, MvPolynomial.X j :
        MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
          ∏ j ∈ J, s j := by
      simp [map_prod]
    have hFm : (∏ j ∈ J, MvPolynomial.X j :
        MvPolynomial (Fin n) (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
          MvPolynomial.monomial (∑ j ∈ J, Finsupp.single j 1) 1 := by
      rw [MvPolynomial.monomial_sum_one]
      rfl
    have hq := wc_rl_param_quasi_regular (AdicCompletion (IsLocalRing.maximalIdeal O) O) n s hmax
      hdimÔ J.card _ hFh (by rw [hFe]; exact h2) (∑ j ∈ J, Finsupp.single j 1)
    rw [hFm, MvPolynomial.coeff_monomial, if_pos rfl] at hq
    exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top ((Ideal.eq_top_iff_one _).mpr hq)

theorem wcpa_dj_sfcgb_scheme_transport : ∀ (k : Type u) [Field k], (∀ (A : Type u) [CommRing A] [Algebra k A] [Algebra.FiniteType k A], (∀ (Q : Ideal A) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q)) → ∀ (P : Ideal A) [P.IsPrime] (a : A) (d : ℕ), algebraMap A (Localization.AtPrime P) a ∉ IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ (d + 1) → ∃ b : A, b ∉ P ∧ ∀ (Q : Ideal A) [Q.IsPrime], P ≤ Q → b ∉ Q → algebraMap A (Localization.AtPrime Q) a ∉ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (d + 1)) → ∀ (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ], (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → ∀ (V : Z.Opens) (G : Γ(Z, V)) (w : Z) (hw : w ∈ V) (d : ℕ), Z.presheaf.germ V w hw G ∉ IsLocalRing.maximalIdeal (Z.presheaf.stalk w) ^ (d + 1) → ∃ U : Set Z, IsOpen U ∧ w ∈ U ∧ ∀ (y : Z) (hy : y ∈ V), y ∈ U → w ⤳ y → Z.presheaf.germ V y hy G ∉ IsLocalRing.maximalIdeal (Z.presheaf.stalk y) ^ (d + 1) :=
by
  intro k _ Haff Z sZ _ hreg V G w hw d hord
  classical
  obtain ⟨W, hW, hwW, hWV⟩ := exists_isAffineOpen_mem_and_subset hw
  have hWV' : W ≤ V := hWV
  have eW : W ≤ sZ ⁻¹ᵁ ⊤ := by rw [Scheme.Hom.preimage_top]; exact le_top
  let ι := Scheme.ΓSpecIso (CommRingCat.of k)
  have hιx : ∀ x, ι.inv.hom (ι.hom.hom x) = x := by
    intro x
    show (ι.hom ≫ ι.inv).hom x = x
    rw [Iso.hom_inv_id]; rfl
  let φ : k →+* Γ(Z, W) := (sZ.appLE ⊤ W eW).hom.comp ι.inv.hom
  have hft : RingHom.FiniteType φ := by
    have h1 : RingHom.FiniteType (sZ.appLE ⊤ W eW).hom :=
      HasRingHomProperty.appLE @LocallyOfFiniteType sZ inferInstance ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ eW
    have h2 : RingHom.FiniteType ι.inv.hom := by
      apply RingHom.FiniteType.of_surjective
      intro y
      exact ⟨ι.hom.hom y, hιx y⟩
    exact h1.comp h2
  have hq : ∀ (q : Ideal Γ(Z, W)) [q.IsPrime], IsRegularLocalRing (Localization.AtPrime q) := by
    intro q hqp
    let y : PrimeSpectrum Γ(Z, W) := ⟨q, hqp⟩
    have hx : hW.fromSpec y ∈ W := by
      have h0 : hW.fromSpec y ∈ Set.range hW.fromSpec := ⟨y, rfl⟩
      rw [hW.range_fromSpec] at h0
      exact h0
    letI : Algebra Γ(Z, W) (Z.presheaf.stalk (hW.fromSpec y)) :=
      TopCat.Presheaf.algebra_section_stalk Z.presheaf ⟨hW.fromSpec y, hx⟩
    haveI : IsLocalization q.primeCompl (Z.presheaf.stalk (hW.fromSpec y)) :=
      hW.isLocalization_stalk' y hx
    haveI := hreg (hW.fromSpec y)
    exact IsRegularLocalRing.of_ringEquiv
      (IsLocalization.algEquiv q.primeCompl (Z.presheaf.stalk (hW.fromSpec y))
        (Localization.AtPrime q)).toRingEquiv
  have dict : ∀ (x : Z) (hx : x ∈ W),
      (∀ (a : Γ(Z, W)) (n : ℕ), algebraMap Γ(Z, W)
          (Localization.AtPrime (hW.primeIdealOf ⟨x, hx⟩).asIdeal) a ∈
          IsLocalRing.maximalIdeal (Localization.AtPrime (hW.primeIdealOf ⟨x, hx⟩).asIdeal) ^ n ↔
        Z.presheaf.germ W x hx a ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk x) ^ n) ∧
      (∀ a : Γ(Z, W), a ∈ (hW.primeIdealOf ⟨x, hx⟩).asIdeal ↔ x ∉ Z.basicOpen a) := by
    intro x hx
    letI : Algebra Γ(Z, W) (Z.presheaf.stalk x) :=
      TopCat.Presheaf.algebra_section_stalk Z.presheaf ⟨x, hx⟩
    haveI : IsLocalization.AtPrime (Z.presheaf.stalk x) (hW.primeIdealOf ⟨x, hx⟩).asIdeal :=
      hW.isLocalization_stalk ⟨x, hx⟩
    have halg : ∀ a : Γ(Z, W), algebraMap Γ(Z, W) (Z.presheaf.stalk x) a =
        Z.presheaf.germ W x hx a := fun a => rfl
    let f : Localization.AtPrime (hW.primeIdealOf ⟨x, hx⟩).asIdeal ≃+* Z.presheaf.stalk x :=
      (IsLocalization.algEquiv (hW.primeIdealOf ⟨x, hx⟩).asIdeal.primeCompl
        (Localization.AtPrime (hW.primeIdealOf ⟨x, hx⟩).asIdeal) (Z.presheaf.stalk x)).toRingEquiv
    have hf : ∀ a, f (algebraMap _ _ a) = Z.presheaf.germ W x hx a := by
      intro a
      rw [← halg]
      exact AlgEquiv.commutes _ a
    have hmax : Ideal.map f (IsLocalRing.maximalIdeal
        (Localization.AtPrime (hW.primeIdealOf ⟨x, hx⟩).asIdeal)) =
        IsLocalRing.maximalIdeal (Z.presheaf.stalk x) := by
      haveI := Ideal.map_isMaximal_of_equiv f
        (p := IsLocalRing.maximalIdeal (Localization.AtPrime (hW.primeIdealOf ⟨x, hx⟩).asIdeal))
      exact IsLocalRing.eq_maximalIdeal this
    refine ⟨fun a n => ?_, fun a => ?_⟩
    · rw [← hf, ← hmax, ← Ideal.map_pow]
      constructor
      · intro h
        exact Ideal.mem_map_of_mem f h
      · intro h
        obtain ⟨s, hs, hse⟩ := (Ideal.mem_map_of_equiv f _).mp h
        rw [← f.injective hse]
        exact hs
    · rw [Scheme.mem_basicOpen Z a x hx, ← halg, IsLocalization.AtPrime.isUnit_to_map_iff
        (Z.presheaf.stalk x) (hW.primeIdealOf ⟨x, hx⟩).asIdeal a, Ideal.mem_primeCompl_iff, not_not]
  letI : Algebra k Γ(Z, W) := φ.toAlgebra
  haveI : Algebra.FiniteType k Γ(Z, W) := hft
  let a : Γ(Z, W) := (Z.presheaf.map (homOfLE hWV').op).hom G
  have hres : ∀ (x : Z) (hx : x ∈ W),
      Z.presheaf.germ W x hx a = Z.presheaf.germ V x (hWV' hx) G := fun x hx =>
    TopCat.Presheaf.germ_res_apply Z.presheaf (homOfLE hWV') x hx G
  have had : algebraMap Γ(Z, W) (Localization.AtPrime (hW.primeIdealOf ⟨w, hwW⟩).asIdeal) a ∉
      IsLocalRing.maximalIdeal (Localization.AtPrime (hW.primeIdealOf ⟨w, hwW⟩).asIdeal) ^ (d + 1) := by
    rw [(dict w hwW).1 a (d + 1), hres]
    exact hord
  obtain ⟨b, hbP, hb⟩ := Haff Γ(Z, W) hq (hW.primeIdealOf ⟨w, hwW⟩).asIdeal a d had
  refine ⟨(Z.basicOpen b : Set Z), (Z.basicOpen b).isOpen, ?_, ?_⟩
  · by_contra h
    exact hbP (((dict w hwW).2 b).mpr h)
  · intro y hy hyU hwy
    have hyW : y ∈ W := Z.basicOpen_le b hyU
    have hPQ : (hW.primeIdealOf ⟨w, hwW⟩).asIdeal ≤ (hW.primeIdealOf ⟨y, hyW⟩).asIdeal := by
      intro c hc
      rw [(dict y hyW).2 c]
      intro hyc
      exact ((dict w hwW).2 c).mp hc (hwy.mem_open (Z.basicOpen c).isOpen hyc)
    have hbQ : b ∉ (hW.primeIdealOf ⟨y, hyW⟩).asIdeal := fun h => ((dict y hyW).2 b).mp h hyU
    have := hb _ hPQ hbQ
    rw [(dict y hyW).1 a (d + 1), hres] at this
    exact this

theorem wcpa_dj_sfcgb_affine_core : ∀ (A : Type u) [CommRing A] [IsNoetherianRing A], (∀ (R : Type u) [CommRing R] [IsRegularLocalRing R] (h : ℕ) (x : Fin h → R), (∀ i, x i ∈ IsLocalRing.maximalIdeal R) → (∀ r : Fin h → R, ∑ i, r i * x i ∈ IsLocalRing.maximalIdeal R ^ 2 → ∀ i, r i ∈ IsLocalRing.maximalIdeal R) → ∀ (e : ℕ) (Φ : MvPolynomial (Fin h) R), Φ.IsHomogeneous e → (∃ α, IsUnit (Φ.coeff α)) → MvPolynomial.eval x Φ ∉ IsLocalRing.maximalIdeal R ^ (e + 1)) → (∀ (R : Type u) [CommRing R] [IsRegularLocalRing R] (I : Ideal R) [I.IsPrime], IsRegularLocalRing (R ⧸ I) → ∀ (h : ℕ) (x : Fin h → R), Ideal.span (Set.range x) = I → (h : WithBot ℕ∞) = ringKrullDim (Localization.AtPrime I) → ∀ r : Fin h → R, ∑ i, r i * x i ∈ IsLocalRing.maximalIdeal R ^ 2 → ∀ i, r i ∈ IsLocalRing.maximalIdeal R) → (∀ (Q : Ideal A) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q)) → ∀ (P : Ideal A) [P.IsPrime] (b₁ : A), b₁ ∉ P → (∀ (Q : Ideal A) [Q.IsPrime], P ≤ Q → b₁ ∉ Q → IsRegularLocalRing (Localization.AtPrime Q ⧸ P.map (algebraMap A (Localization.AtPrime Q)))) → ∀ (a : A) (d : ℕ), algebraMap A (Localization.AtPrime P) a ∉ IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ (d + 1) → ∃ b : A, b ∉ P ∧ ∀ (Q : Ideal A) [Q.IsPrime], P ≤ Q → b ∉ Q → algebraMap A (Localization.AtPrime Q) a ∉ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (d + 1) :=
by
  intro A _ _ H7 H8 Hreg P _ b₁ hb₁P Hb₁ a d had
  classical

  obtain ⟨h, x, b₂, hxP, hdim, hb₂P, hb₂⟩ : ∃ (h : ℕ) (x : Fin h → A) (b₂ : A), (∀ i, x i ∈ P) ∧
      (h : WithBot ℕ∞) = ringKrullDim (Localization.AtPrime P) ∧ b₂ ∉ P ∧
      ∀ p ∈ P, b₂ * p ∈ Ideal.span (Set.range x) := by
    haveI := Hreg P
    have hfg : (IsLocalRing.maximalIdeal (Localization.AtPrime P)).FG := IsNoetherian.noetherian _
    obtain ⟨s, hsc, hsspan⟩ := Submodule.FG.exists_span_set_encard_eq_spanFinrank hfg
    have hsfin : s.Finite := Set.finite_of_encard_eq_coe hsc
    have hcard : hsfin.toFinset.card =
        (IsLocalRing.maximalIdeal (Localization.AtPrime P)).spanFinrank := by
      have h1 := hsfin.encard_eq_coe_toFinset_card
      rw [hsc] at h1
      exact_mod_cast h1.symm
    let e := hsfin.toFinset.equivFinOfCardEq hcard
    let u : Fin (IsLocalRing.maximalIdeal (Localization.AtPrime P)).spanFinrank →
        Localization.AtPrime P := fun i => (e.symm i : Localization.AtPrime P)
    have hu_mem : ∀ i, u i ∈ s := fun i => hsfin.mem_toFinset.mp (e.symm i).2
    have hrange : Set.range u = s := by
      ext y
      constructor
      · rintro ⟨i, rfl⟩
        exact hu_mem i
      · intro hy
        refine ⟨e ⟨y, hsfin.mem_toFinset.mpr hy⟩, ?_⟩
        simp [u]
    have hspanu : Ideal.span (Set.range u) = IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
      rw [hrange]
      exact hsspan
    choose xs hxs using fun i => IsLocalization.mk'_surjective P.primeCompl (u i)
    have hιx : ∀ i, algebraMap A (Localization.AtPrime P) (xs i).1 =
        u i * algebraMap A (Localization.AtPrime P) (xs i).2 := by
      intro i
      rw [← hxs i]
      exact (IsLocalization.mk'_spec _ _ _).symm
    have humem : ∀ i, u i ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P) := fun i => by
      rw [← hsspan]
      exact Submodule.subset_span (hu_mem i)
    have hιxm : ∀ i, algebraMap A (Localization.AtPrime P) (xs i).1 ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime P) := fun i => by
      rw [hιx]
      exact Ideal.mul_mem_right _ _ (humem i)
    have hxP : ∀ i, (xs i).1 ∈ P := fun i =>
      (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P) P _).mp (hιxm i)
    have hunit : ∀ i, IsUnit (algebraMap A (Localization.AtPrime P) (xs i).2) := fun i =>
      (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime P) P _).mpr (xs i).2.2
    let x : Fin (IsLocalRing.maximalIdeal (Localization.AtPrime P)).spanFinrank → A :=
      fun i => (xs i).1
    have hspan : Ideal.span (Set.range (fun i => algebraMap A (Localization.AtPrime P) (x i))) =
        IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        exact hιxm i
      · refine hspanu.symm.le.trans ?_
        rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        have : u i = algebraMap A (Localization.AtPrime P) (x i) * ↑(hunit i).unit⁻¹ := by
          show u i = algebraMap A (Localization.AtPrime P) (xs i).1 * ↑(hunit i).unit⁻¹
          rw [hιx, mul_assoc, IsUnit.mul_val_inv, mul_one]
        rw [this]
        exact Ideal.mul_mem_right _ _ (Ideal.subset_span ⟨i, rfl⟩)
    have hmap : (Ideal.span (Set.range x)).map (algebraMap A (Localization.AtPrime P)) =
        P.map (algebraMap A (Localization.AtPrime P)) := by
      rw [Ideal.map_span, ← Set.range_comp, Localization.AtPrime.map_eq_maximalIdeal]
      exact hspan
    obtain ⟨S, hS⟩ : P.FG := IsNoetherian.noetherian P
    have key : ∀ T : Finset A, (T : Set A) ⊆ P → ∃ m, m ∉ P ∧
        ∀ p ∈ T, m * p ∈ Ideal.span (Set.range x) := by
      intro T
      induction T using Finset.induction_on with
      | empty =>
        intro _
        refine ⟨1, fun h1 => ?_, by simp⟩
        exact (inferInstance : P.IsPrime).ne_top ((Ideal.eq_top_iff_one _).mpr h1)
      | insert q T hq ih =>
        intro hT
        obtain ⟨m, hm, hmT⟩ := ih (fun y hy => hT (Finset.mem_insert_of_mem hy))
        have hqP : q ∈ P := hT (Finset.mem_insert_self q T)
        have hq' : algebraMap A (Localization.AtPrime P) q ∈
            (Ideal.span (Set.range x)).map (algebraMap A (Localization.AtPrime P)) := by
          rw [hmap]
          exact Ideal.mem_map_of_mem _ hqP
        obtain ⟨m', hm', hm'q⟩ :=
          (IsLocalization.algebraMap_mem_map_algebraMap_iff P.primeCompl _ _ _).mp hq'
        refine ⟨m * m', ?_, ?_⟩
        · intro hmm
          rcases (inferInstance : P.IsPrime).mem_or_mem hmm with h2 | h2
          · exact hm h2
          · exact hm' h2
        · intro p hp
          rcases Finset.mem_insert.mp hp with rfl | hp
          · rw [mul_assoc]
            exact Ideal.mul_mem_left _ _ hm'q
          · rw [mul_comm m m', mul_assoc]
            exact Ideal.mul_mem_left _ _ (hmT p hp)
    obtain ⟨b₂, hb₂, hb₂S⟩ := key S (by rw [← hS]; exact Submodule.subset_span)
    refine ⟨_, x, b₂, hxP, IsRegularLocalRing.spanFinrank_maximalIdeal, hb₂, ?_⟩
    intro p hp
    rw [← hS] at hp
    induction hp using Submodule.span_induction with
    | mem y hy => exact hb₂S y hy
    | zero => simp
    | add y z _ _ hy hz =>
      rw [mul_add]
      exact Ideal.add_mem _ hy hz
    | smul r y _ hy =>
      rw [smul_eq_mul, mul_left_comm]
      exact Ideal.mul_mem_left _ _ hy

  have hex : ∃ e, algebraMap A (Localization.AtPrime P) a ∉
      IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ (e + 1) := ⟨d, had⟩
  have hd'spec := Nat.find_spec hex
  have hd'le : Nat.find hex ≤ d := Nat.find_min' hex had
  have hmem : algebraMap A (Localization.AtPrime P) a ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ (Nat.find hex) := by
    by_cases h0 : Nat.find hex = 0
    · rw [h0, pow_zero, Ideal.one_eq_top]
      exact Submodule.mem_top
    · obtain ⟨e, he⟩ := Nat.exists_eq_succ_of_ne_zero h0
      have h1 := Nat.find_min hex (show e < Nat.find hex by omega)
      rw [he]
      exact not_not.mp h1
  generalize Nat.find hex = d' at hd'spec hd'le hmem

  obtain ⟨c, Φ, hcP, hΦ, hΦeval⟩ : ∃ (c : A) (Φ : MvPolynomial (Fin h) A), c ∉ P ∧
      Φ.IsHomogeneous d' ∧ MvPolynomial.eval x Φ = c * a := by
    have h1 : algebraMap A (Localization.AtPrime P) a ∈
        (P ^ d').map (algebraMap A (Localization.AtPrime P)) := by
      rw [Ideal.map_pow, Localization.AtPrime.map_eq_maximalIdeal]
      exact hmem
    obtain ⟨c₁, hc₁, hc₁a⟩ :=
      (IsLocalization.algebraMap_mem_map_algebraMap_iff P.primeCompl _ _ _).mp h1
    have hle : Ideal.span {b₂} * P ≤ Ideal.span (Set.range x) := by
      rw [Ideal.mul_le]
      intro r hr p hp
      obtain ⟨t, rfl⟩ := Ideal.mem_span_singleton'.mp hr
      rw [mul_assoc]
      exact Ideal.mul_mem_left _ _ (hb₂ p hp)
    have hle' : (Ideal.span {b₂} * P) ^ d' ≤ Ideal.span (Set.range x) ^ d' :=
      Ideal.pow_right_mono hle d'
    rw [mul_pow, Ideal.span_singleton_pow] at hle'
    have hmem2 : b₂ ^ d' * (c₁ * a) ∈ Ideal.span (Set.range x) ^ d' :=
      hle' (Ideal.mul_mem_mul (Ideal.mem_span_singleton_self _) hc₁a)
    obtain ⟨Φ, hΦ, hev⟩ := (Ideal.mem_span_pow_iff_exists_isHomogeneous x _).mp hmem2
    refine ⟨b₂ ^ d' * c₁, Φ, ?_, hΦ, by rw [hev, mul_assoc]⟩
    exact Ideal.mem_primeCompl_iff.mp
      (P.primeCompl.mul_mem (P.primeCompl.pow_mem (Ideal.mem_primeCompl_iff.mpr hb₂P) d') hc₁)

  obtain ⟨α₀, hα₀⟩ : ∃ α, Φ.coeff α ∉ P := by
    by_contra hall
    push_neg at hall
    have h3 : MvPolynomial.eval x Φ ∈ P ^ (d' + 1) := by
      rw [MvPolynomial.eval_eq]
      refine Ideal.sum_mem _ fun δ hδ => ?_
      have hdeg : ∑ i ∈ δ.support, δ i = d' := by
        rw [← Finsupp.degree_apply]
        by_contra hne
        exact (MvPolynomial.mem_support_iff.mp hδ) (hΦ.coeff_eq_zero hne)
      rw [pow_succ']
      refine Ideal.mul_mem_mul (hall δ) ?_
      rw [← hdeg, ← Finset.prod_pow_eq_pow_sum]
      exact Ideal.prod_mem_prod fun i _ => Ideal.pow_mem_pow (hxP i) _
    apply hd'spec
    have h4 : algebraMap A (Localization.AtPrime P) (c * a) ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ (d' + 1) := by
      rw [← Localization.AtPrime.map_eq_maximalIdeal, ← Ideal.map_pow, ← hΦeval]
      exact Ideal.mem_map_of_mem _ h3
    rw [map_mul] at h4
    exact (Ideal.unit_mul_mem_iff_mem _
      ((IsLocalization.AtPrime.isUnit_to_map_iff _ P c).mpr hcP)).mp h4

  refine ⟨b₁ * b₂ * c * Φ.coeff α₀, ?_, ?_⟩
  · exact Ideal.mem_primeCompl_iff.mp (P.primeCompl.mul_mem (P.primeCompl.mul_mem
      (P.primeCompl.mul_mem (Ideal.mem_primeCompl_iff.mpr hb₁P) (Ideal.mem_primeCompl_iff.mpr hb₂P))
      (Ideal.mem_primeCompl_iff.mpr hcP)) (Ideal.mem_primeCompl_iff.mpr hα₀))
  intro Q _ hPQ hbQ
  have hb₁Q : b₁ ∉ Q := fun h1 => hbQ
    (Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ h1)))
  have hb₂Q : b₂ ∉ Q := fun h1 => hbQ
    (Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ h1)))
  have hcQ : c ∉ Q := fun h1 => hbQ (Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ h1))
  have hc₀Q : Φ.coeff α₀ ∉ Q := fun h1 => hbQ (Ideal.mul_mem_left _ _ h1)
  haveI := Hreg Q
  have hdisj : Disjoint (Q.primeCompl : Set A) P :=
    Set.disjoint_left.mpr fun s hs hsP => hs (hPQ hsP)
  haveI hI : (P.map (algebraMap A (Localization.AtPrime Q))).IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint Q.primeCompl _ P inferInstance hdisj
  have hquot := Hb₁ Q hPQ hb₁Q

  have hspanQ : Ideal.span (Set.range fun i => algebraMap A (Localization.AtPrime Q) (x i)) =
      P.map (algebraMap A (Localization.AtPrime Q)) := by
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      exact Ideal.mem_map_of_mem _ (hxP i)
    · rw [Ideal.map_le_iff_le_comap]
      intro p hp
      rw [Ideal.mem_comap]
      have h1 : algebraMap A (Localization.AtPrime Q) (b₂ * p) ∈
          Ideal.span (Set.range fun i => algebraMap A (Localization.AtPrime Q) (x i)) := by
        have := Ideal.mem_map_of_mem (algebraMap A (Localization.AtPrime Q)) (hb₂ p hp)
        rwa [Ideal.map_span, ← Set.range_comp] at this
      rw [map_mul] at h1
      exact (Ideal.unit_mul_mem_iff_mem _
        ((IsLocalization.AtPrime.isUnit_to_map_iff _ Q b₂).mpr hb₂Q)).mp h1

  have hdimQ : (h : WithBot ℕ∞) =
      ringKrullDim (Localization.AtPrime (P.map (algebraMap A (Localization.AtPrime Q)))) := by
    rw [hdim, IsLocalization.AtPrime.ringKrullDim_eq_height (P.map (algebraMap A (Localization.AtPrime Q)))
      (Localization.AtPrime (P.map (algebraMap A (Localization.AtPrime Q)))),
      IsLocalization.height_map_of_disjoint (S := Localization.AtPrime Q) Q.primeCompl P hdisj,
      IsLocalization.AtPrime.ringKrullDim_eq_height P (Localization.AtPrime P)]
  have hindep := H8 (Localization.AtPrime Q) (P.map (algebraMap A (Localization.AtPrime Q))) hquot h
    (fun i => algebraMap A (Localization.AtPrime Q) (x i)) hspanQ hdimQ
  have hym : ∀ i, algebraMap A (Localization.AtPrime Q) (x i) ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime Q) := fun i =>
    (IsLocalization.AtPrime.to_map_mem_maximal_iff _ Q _).mpr (hPQ (hxP i))
  have hunit0 : IsUnit ((MvPolynomial.map (algebraMap A (Localization.AtPrime Q)) Φ).coeff α₀) := by
    rw [MvPolynomial.coeff_map]
    exact (IsLocalization.AtPrime.isUnit_to_map_iff _ Q _).mpr hc₀Q
  have h7 := H7 (Localization.AtPrime Q) h (fun i => algebraMap A (Localization.AtPrime Q) (x i)) hym
    hindep d' (MvPolynomial.map (algebraMap A (Localization.AtPrime Q)) Φ)
    (hΦ.map (algebraMap A (Localization.AtPrime Q))) ⟨α₀, hunit0⟩
  have hev : MvPolynomial.eval (fun i => algebraMap A (Localization.AtPrime Q) (x i))
      (MvPolynomial.map (algebraMap A (Localization.AtPrime Q)) Φ) =
      algebraMap A (Localization.AtPrime Q) c * algebraMap A (Localization.AtPrime Q) a := by
    rw [← map_mul, ← hΦeval, MvPolynomial.map_eval]
    rfl
  rw [hev] at h7
  intro ha
  apply h7
  exact Ideal.mul_mem_left _ _ (Ideal.pow_le_pow_right (by omega) ha)

theorem wcpa_dj_sfcgb_conormal_indep : ∀ (R : Type u) [CommRing R] [IsRegularLocalRing R] (I : Ideal R) [I.IsPrime], IsRegularLocalRing (R ⧸ I) → ∀ (h : ℕ) (x : Fin h → R), Ideal.span (Set.range x) = I → (h : WithBot ℕ∞) = ringKrullDim (Localization.AtPrime I) → ∀ r : Fin h → R, ∑ i, r i * x i ∈ IsLocalRing.maximalIdeal R ^ 2 → ∀ i, r i ∈ IsLocalRing.maximalIdeal R :=
by
  intro R _ _ I _ hRI h x hspan hdim r hr2 i
  classical
  by_contra hri
  have hunit : IsUnit (r i) := by
    by_contra hnu
    exact hri ((IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hnu))
  obtain ⟨u, hu⟩ := hunit.exists_left_inv

  have hsI : ∑ k, r k * x k ∈ I := by
    rw [← hspan]
    exact Ideal.mem_span_range_iff_exists_fun.mpr ⟨r, rfl⟩
  have hsmI : ∑ k, r k * x k ∈ IsLocalRing.maximalIdeal R * I :=
    wcpa_regular_quotient_conormal R
      (fun T _ hT => wcpa_regular_isDomain T wcpa_rs_quotient_regular hT)
      wcpa_rs_quotient_regular I hRI _ hsI hr2

  have hNI : Ideal.span (x '' {k | k ≠ i}) ≤ I := by
    rw [← hspan]; exact Ideal.span_mono (Set.image_subset_range _ _)
  have hIle : I ≤ Ideal.span (x '' {k | k ≠ i}) ⊔ IsLocalRing.maximalIdeal R • I := by
    rw [Ideal.smul_eq_mul]
    conv_lhs => rw [← hspan]
    rw [Ideal.span_le, Set.range_subset_iff]
    intro k
    show x k ∈ Ideal.span (x '' {k | k ≠ i}) ⊔ IsLocalRing.maximalIdeal R * I
    by_cases hk : k = i
    · rw [hk]
      have hsplit : ∑ l, r l * x l = r i * x i + ∑ l ∈ Finset.univ.erase i, r l * x l :=
        (Finset.add_sum_erase _ _ (Finset.mem_univ i)).symm
      have hmul : u * ∑ l ∈ Finset.univ.erase i, r l * x l =
          ∑ l ∈ Finset.univ.erase i, u * r l * x l := by
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl (fun l _ => by ring)
      have hxk : x i = u * ∑ l, r l * x l - ∑ l ∈ Finset.univ.erase i, u * r l * x l := by
        linear_combination (-u) * hsplit - x i * hu - hmul
      rw [hxk]
      refine Ideal.sub_mem _ (Submodule.mem_sup_right (Ideal.mul_mem_left _ u hsmI))
        (Submodule.mem_sup_left (Ideal.sum_mem _ fun l hl => Ideal.mul_mem_left _ _
          (Ideal.subset_span ⟨l, (Finset.mem_erase.mp hl).1, rfl⟩)))
    · exact Submodule.mem_sup_left (Ideal.subset_span ⟨k, hk, rfl⟩)
  have hIN : I ≤ Ideal.span (x '' {k | k ≠ i}) :=
    Submodule.le_of_le_smul_of_le_jacobson_bot (IsNoetherian.noetherian I)
      (IsLocalRing.maximalIdeal_le_jacobson ⊥) hIle
  have hIeq : Ideal.span (x '' {k | k ≠ i}) = I := le_antisymm hNI hIN

  let S : Finset R := (Finset.univ.erase i).image x
  have hS : (S : Set R) = x '' {k | k ≠ i} := by
    ext y; simp [S]
  have hspanS : Ideal.span (S : Set R) = I := by rw [hS]; exact hIeq
  have hmin : I ∈ (Ideal.span (S : Set R)).minimalPrimes := by
    rw [hspanS, Ideal.minimalPrimes_eq_subsingleton_self]; exact Set.mem_singleton I
  have hht := Ideal.height_le_card_of_mem_minimalPrimes_span_finset hmin
  have hcard : S.card ≤ h - 1 := by
    refine Finset.card_image_le.trans ?_
    rw [Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, Fintype.card_fin]
  have hd := IsLocalization.AtPrime.ringKrullDim_eq_height I (Localization.AtPrime I)
  rw [hd] at hdim
  have hhI : I.height = (h : ℕ∞) := by
    have := hdim.symm
    exact_mod_cast this
  have hpos : 0 < h := Fin.pos i
  rw [hhI] at hht
  have hle : h ≤ S.card := by exact_mod_cast hht
  omega

theorem wcpa_dj_sfc_generic_regular : ∀ (k : Type u) [Field k] (A : Type u) [CommRing A] [IsDomain A] [Algebra k A] [Algebra.FiniteType k A], ∃ b : A, b ≠ 0 ∧ ∀ (Q : Ideal A) [Q.IsPrime], b ∉ Q → IsRegularLocalRing (Localization.AtPrime Q) :=
by
  intro k _ A _ _ _ _
  classical
  obtain ⟨n, ψ, hψ⟩ :=
    Algebra.FiniteType.iff_quotient_mvPolynomial''.mp (inferInstance : Algebra.FiniteType k A)
  let π : MvPolynomial (Fin n) k →+* A := ψ.toRingHom
  have hπ : Function.Surjective π := hψ
  haveI hbot : (⊥ : Ideal A).IsPrime := Ideal.isPrime_bot
  have hreg0 : IsRegularLocalRing (Localization.AtPrime (⊥ : Ideal A)) := by
    haveI : IsLocalization (nonZeroDivisors A) (Localization.AtPrime (⊥ : Ideal A)) := by
      rw [← Ideal.primeCompl_bot]; exact Localization.isLocalization
    let e : Localization.AtPrime (⊥ : Ideal A) ≃ₐ[A] FractionRing A :=
      IsLocalization.algEquiv (nonZeroDivisors A) _ _
    exact IsRegularLocalRing.of_ringEquiv e.symm.toRingEquiv
  obtain ⟨h, f, c, x, hf, hc, hker, hx, hind⟩ :=
    wcpa_dj_rss_jacobian_hard_select wcpa_dj_rss_poly_field_regular wcpa_dj_rss_quot_localization
      k n A π hπ ⊥ hreg0
  obtain ⟨D, hD⟩ := wcpa_dj_rss_jacobian_hard_det
    (wcpa_dj_rss_dual_derivations wcpa_dj_rss_coeff_section)
    wcpa_dj_rss_derivation_span wcpa_dj_rss_left_inverse_minor k n h ((⊥ : Ideal A).comap π) f x
    hx hind
  have hc' : π c ≠ 0 := fun h0 => hc (by rw [h0]; exact Ideal.zero_mem _)
  have hD' : π (Matrix.of fun i j => D j (f i)).det ≠ 0 := fun h0 =>
    hD (by rw [Ideal.mem_comap, h0]; exact Ideal.zero_mem _)
  refine ⟨π c * π (Matrix.of fun i j => D j (f i)).det, mul_ne_zero hc' hD', ?_⟩
  intro Q _ hb
  have h1 : π c ∉ Q := fun hm => hb (Ideal.mul_mem_right _ _ hm)
  have h2 : π (Matrix.of fun i j => D j (f i)).det ∉ Q := fun hm => hb (Ideal.mul_mem_left _ _ hm)
  exact wcpa_dj_rss_jacobian_easy wcpa_dj_rss_poly_field_regular wcpa_dj_rss_quot_localization
    k n A π hπ h f c D hf hker Q h1 h2

theorem wcpa_dj_sfc_generic_bound : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (m : ℕ) (Dc : Fin m → Set Z) (μ : Fin m → Z → ℕ), (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → wcpaDjCompNC Z m Dc μ → ∀ (i : Fin m) (w : Z), w ∈ Dc i → ∃ U : Set Z, IsOpen U ∧ w ∈ U ∧ ∀ y ∈ U, w ⤳ y → y ∈ Dc i → μ i y ≤ μ i w :=
by
  intro k _ Z _ sZ _ m Dc μ hreg hC i w hw
  classical
  haveI : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian sZ

  have Haff : ∀ (A : Type u) [CommRing A] [Algebra k A] [Algebra.FiniteType k A],
      (∀ (Q : Ideal A) [Q.IsPrime], IsRegularLocalRing (Localization.AtPrime Q)) →
      ∀ (P : Ideal A) [P.IsPrime] (a : A) (d : ℕ),
      algebraMap A (Localization.AtPrime P) a ∉
        IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ (d + 1) →
      ∃ b : A, b ∉ P ∧ ∀ (Q : Ideal A) [Q.IsPrime], P ≤ Q → b ∉ Q →
        algebraMap A (Localization.AtPrime Q) a ∉
          IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ (d + 1) := by
    intro A _ _ _ hregA P _ a d had
    haveI : IsNoetherianRing A := Algebra.FiniteType.isNoetherianRing k A
    haveI : Algebra.FiniteType k (A ⧸ P) :=
      Algebra.FiniteType.of_surjective (Ideal.Quotient.mkₐ k P)
        (Ideal.Quotient.mkₐ_surjective k P)
    obtain ⟨b₀, hb₀, hb₀reg⟩ := wcpa_dj_sfc_generic_regular k (A ⧸ P)
    obtain ⟨b₁, rfl⟩ := Ideal.Quotient.mk_surjective b₀
    have hb₁P : b₁ ∉ P := fun h => hb₀ (Ideal.Quotient.eq_zero_iff_mem.mpr h)
    refine wcpa_dj_sfcgb_affine_core A wcpa_dj_sfcgb_partial_quasi_regular
      wcpa_dj_sfcgb_conormal_indep hregA P b₁ hb₁P ?_ a d had
    intro Q _ hPQ hb₁Q
    have hker : RingHom.ker (Ideal.Quotient.mk P) ≤ Q := by rw [Ideal.mk_ker]; exact hPQ
    haveI : (Q.map (Ideal.Quotient.mk P)).IsPrime :=
      Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
    apply wcpa_dj_sfcgb_quot_loc_regular A P Q hPQ
    apply hb₀reg
    intro hmem
    exact hb₁Q ((Ideal.mem_quotient_iff_mem hPQ).mp hmem)

  obtain ⟨n, s, g, J, hn, hs, -, -, hin⟩ := hC.2 w
  obtain ⟨hcard, hass, hiff⟩ := hin i hw
  obtain ⟨V, hwV, G, hG⟩ := TopCat.Presheaf.exists_germ_eq Z.presheaf (g i)
  have hGw : Z.presheaf.germ V w hwV G = g i := hG
  have hord : Z.presheaf.germ V w hwV G ∉
      IsLocalRing.maximalIdeal (Z.presheaf.stalk w) ^ (μ i w + 1) := by
    rw [hGw, ← hcard]
    exact (wcpa_dj_sfcgb_formal_order _ n s (J i) (g i) (hreg w) hn hs hass).2
  obtain ⟨U₁, hU₁, hwU₁, hU₁b⟩ :=
    wcpa_dj_sfcgb_scheme_transport k Haff Z sZ hreg V G w hwV (μ i w) hord
  obtain ⟨U₂, hU₂, hwU₂, hU₂b⟩ := wcpa_dj_sfcgb_spread_avoid Z (Dc i)
    ((Z.basicOpen G : Z.Opens) : Set Z) w (hC.1 i) (Z.basicOpen G).isOpen (by
      intro y hyw hyD hyO
      have hyV : y ∈ V := Z.basicOpen_le G hyO
      have hu := (Scheme.mem_basicOpen Z G y hyV).mp hyO
      have hm := (hiff y hyw).mp hyD
      rw [← hGw, TopCat.Presheaf.germ_stalkSpecializes_apply] at hm
      exact (mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hm)) hu)
  refine ⟨(V : Set Z) ∩ U₁ ∩ U₂, (V.isOpen.inter hU₁).inter hU₂, ⟨⟨hwV, hwU₁⟩, hwU₂⟩, ?_⟩
  rintro y ⟨⟨hyV, hyU₁⟩, hyU₂⟩ hwy hyD
  obtain ⟨n', s', g', J', hn', hs', -, -, hin'⟩ := hC.2 y
  obtain ⟨hcard', hass', -⟩ := hin' i hyD
  have hiff' := (hin' i hyD).2.2
  have h2 := (wcpa_dj_sfcgb_formal_order _ n' s' (J' i) (g' i) (hreg y) hn' hs' hass').1
  have h3 := wcpa_dj_sfc_radical_principal _ n' s' (J' i) (g' i) (hreg y) hn' hs' hass'
  have hGy : Z.presheaf.germ V y hyV G ∈ Ideal.span {g' i} := by
    refine wcpa_dj_sfcgb_local_divides Z y (g' i) _ (Dc i) h3 hiff' ?_
    intro z hz hzD
    have hzV : z ∈ V := hz.mem_open V.isOpen hyV
    have hzU₂ : z ∈ U₂ := hz.mem_open hU₂ hyU₂
    have hnb := hU₂b z hzU₂ hzD
    rw [TopCat.Presheaf.germ_stalkSpecializes_apply, IsLocalRing.mem_maximalIdeal,
      mem_nonunits_iff]
    intro hu
    exact hnb ((Scheme.mem_basicOpen Z G z hzV).mpr hu)
  have hb := hU₁b y hyV hyU₁ hwy
  by_contra hlt
  push_neg at hlt
  apply hb
  have hle : Ideal.span {g' i} ≤
      IsLocalRing.maximalIdeal (Z.presheaf.stalk y) ^ (μ i w + 1) := by
    rw [Ideal.span_singleton_le_iff_mem]
    rw [hcard'] at h2
    exact Ideal.pow_le_pow_right (by omega) h2
  exact hle hGy

theorem wcpa_dj_sfc_nagata_closed : ∀ (X : Scheme.{u}) [IsLocallyNoetherian X] (F : Set X), StableUnderSpecialization F → (∀ w ∉ F, ∃ U : Set X, IsOpen U ∧ w ∈ U ∧ ∀ y ∈ U, w ⤳ y → y ∉ F) → IsClosed F :=
by
  intro X _ F hF hLoc
  have s1 : ∀ (Y : Type u) [TopologicalSpace Y] [TopologicalSpace.NoetherianSpace Y] [QuasiSober Y]
      (G : Set Y), StableUnderSpecialization G →
      (∀ w ∉ G, ∃ U : Set Y, IsOpen U ∧ w ∈ U ∧ ∀ y ∈ U, w ⤳ y → y ∉ G) → IsClosed G := by
    intro Y _ _ _ G hG hL
    have key : ∀ C : TopologicalSpace.Closeds Y, closure (G ∩ (C : Set Y)) ⊆ G := by
      intro C
      induction C using WellFoundedLT.induction with
      | _ C ih =>
      have hR : ∀ C' : TopologicalSpace.Closeds Y, C' < C → G ∩ (C : Set Y) ⊆ C' →
          closure (G ∩ (C : Set Y)) ⊆ G := by
        intro C' hlt hsub
        have heq : G ∩ (C : Set Y) = G ∩ (C' : Set Y) := by
          apply Set.Subset.antisymm
          · intro x hx; exact ⟨hx.1, hsub hx⟩
          · intro x hx; exact ⟨hx.1, (le_of_lt hlt : C' ≤ C) hx.2⟩
        rw [heq]; exact ih C' hlt
      by_cases hirr : IsIrreducible (C : Set Y)
      · obtain ⟨η, hη⟩ := QuasiSober.sober hirr C.isClosed
        have hηs : ∀ y, η ⤳ y ↔ y ∈ (C : Set Y) := fun y => isGenericPoint_iff_specializes.mp hη y
        by_cases hηG : η ∈ G
        · have hCG : (C : Set Y) ⊆ G := fun y hy => hG ((hηs y).mpr hy) hηG
          calc closure (G ∩ (C : Set Y)) ⊆ closure (C : Set Y) := closure_mono Set.inter_subset_right
            _ = C := C.isClosed.closure_eq
            _ ⊆ G := hCG
        · obtain ⟨U, hU, hηU, hUG⟩ := hL η hηG
          let C' : TopologicalSpace.Closeds Y := ⟨(C : Set Y) \ U, C.isClosed.sdiff hU⟩
          apply hR C'
          · rw [SetLike.lt_iff_le_and_exists]
            exact ⟨fun x hx => hx.1, η, (hηs η).mp (specializes_refl η), fun h => h.2 hηU⟩
          · intro x hx
            exact ⟨hx.2, fun hxU => hUG x hxU ((hηs x).mpr hx.2) hx.1⟩
      · by_cases hne : (C : Set Y).Nonempty
        · have hpre : ¬ IsPreirreducible (C : Set Y) := fun h => hirr ⟨hne, h⟩
          rw [isPreirreducible_iff_isClosed_union_isClosed] at hpre
          push_neg at hpre
          obtain ⟨z₁, z₂, hz₁, hz₂, hsub, hn1, hn2⟩ := hpre
          let A : TopologicalSpace.Closeds Y := ⟨(C : Set Y) ∩ z₁, C.isClosed.inter hz₁⟩
          let B : TopologicalSpace.Closeds Y := ⟨(C : Set Y) ∩ z₂, C.isClosed.inter hz₂⟩
          have hA : A < C := by
            rw [SetLike.lt_iff_le_and_exists]
            obtain ⟨x, hxC, hx⟩ := Set.not_subset.mp hn1
            exact ⟨fun y hy => hy.1, x, hxC, fun h => hx h.2⟩
          have hB : B < C := by
            rw [SetLike.lt_iff_le_and_exists]
            obtain ⟨x, hxC, hx⟩ := Set.not_subset.mp hn2
            exact ⟨fun y hy => hy.1, x, hxC, fun h => hx h.2⟩
          have hsplit : G ∩ (C : Set Y) = (G ∩ (A : Set Y)) ∪ (G ∩ (B : Set Y)) := by
            ext x
            constructor
            · rintro ⟨hxG, hxC⟩
              rcases hsub hxC with h | h
              · exact Or.inl ⟨hxG, hxC, h⟩
              · exact Or.inr ⟨hxG, hxC, h⟩
            · rintro (⟨hxG, hxC, _⟩ | ⟨hxG, hxC, _⟩)
              · exact ⟨hxG, hxC⟩
              · exact ⟨hxG, hxC⟩
          rw [hsplit, closure_union]
          exact Set.union_subset (ih A hA) (ih B hB)
        · rw [Set.not_nonempty_iff_eq_empty] at hne
          rw [hne, Set.inter_empty, closure_empty]
          exact Set.empty_subset _
    have h := key ⊤
    rw [TopologicalSpace.Closeds.coe_top, Set.inter_univ] at h
    exact closure_subset_iff_isClosed.mp h
  have hcover : TopologicalSpace.IsOpenCover (fun U : X.affineOpens => (U : X.Opens)) :=
    iSup_affineOpens_eq_top X
  rw [hcover.isClosed_iff_coe_preimage]
  intro i
  haveI := IsLocallyNoetherian.component_noetherian i
  haveI : TopologicalSpace.NoetherianSpace ((i : X.Opens) : Set X) :=
    noetherianSpace_of_isAffineOpen (i : X.Opens) i.2
  haveI : QuasiSober ((i : X.Opens) : Set X) :=
    (i : X.Opens).isOpen.isOpenEmbedding_subtypeVal.quasiSober
  apply s1 _ _ (hF.preimage continuous_subtype_val)
  intro w hw
  obtain ⟨U, hU, hwU, hUF⟩ := hLoc w hw
  exact ⟨Subtype.val ⁻¹' U, hU.preimage continuous_subtype_val, hwU,
    fun y hy hwy => hUF y hy (hwy.map continuous_subtype_val)⟩

theorem wcpa_dj_sfc_nakayama_generators : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (n R : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (J : Finset (Fin n)) (𝔭 : Ideal O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → J.card = R → 𝔭.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) = Ideal.span (s '' (J : Set (Fin n))) → ∃ x : Fin R → O, Ideal.span (Set.range x) = 𝔭 ∧ Ideal.span (Set.range (fun r => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r))) = Ideal.span (s '' (J : Set (Fin n))) :=
by
  intro O _ _ n R s J 𝔭 hreg _ _ hJ h𝔭
  classical
  haveI : IsNoetherianRing O := hreg.toIsNoetherian
  have hfg : (IsLocalRing.maximalIdeal O).FG := IsNoetherian.noetherian _
  haveI hcompl := AdicCompletion.isAdicComplete_self (IsLocalRing.maximalIdeal O) hfg
  have hjac : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (IsLocalRing.maximalIdeal O) ≤ (⊥ : Ideal (AdicCompletion (IsLocalRing.maximalIdeal O) O)).jacobson :=
    IsAdicComplete.le_jacobson_bot _

  have hmem : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal O) O,
      b ∈ Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O) ↔
      AdicCompletion.eval (IsLocalRing.maximalIdeal O) O 1 b = 0 := by
    intro b
    have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := O) (n := 1) hfg
    have h2 := Ideal.smul_top_eq_map (S := AdicCompletion (IsLocalRing.maximalIdeal O) O)
      (IsLocalRing.maximalIdeal O ^ 1)
    have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
    rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
    have e : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O ^ 1) =
        Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O) := by rw [pow_one]
    rw [e] at h3
    exact h3

  have hlift : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal O) O, ∃ a : O,
      b - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a ∈
        Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
          (IsLocalRing.maximalIdeal O) := by
    intro b
    obtain ⟨a, ha⟩ := Submodule.Quotient.mk_surjective _
      (AdicCompletion.eval (IsLocalRing.maximalIdeal O) O 1 b)
    refine ⟨a, (hmem _).mpr ?_⟩
    rw [map_sub]
    have : AdicCompletion.eval (IsLocalRing.maximalIdeal O) O 1
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a) =
        Submodule.Quotient.mk a := by
      change AdicCompletion.eval (IsLocalRing.maximalIdeal O) O 1
        (AdicCompletion.of (IsLocalRing.maximalIdeal O) O a) = _
      rw [AdicCompletion.eval_of]
      rfl
    rw [this, ha, sub_self]

  have hone : (1 : AdicCompletion (IsLocalRing.maximalIdeal O) O) ∉
      Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O) := by
    intro h
    rw [hmem, ← map_one (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))] at h
    change AdicCompletion.eval (IsLocalRing.maximalIdeal O) O 1
      (AdicCompletion.of (IsLocalRing.maximalIdeal O) O 1) = 0 at h
    rw [AdicCompletion.eval_of, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at h
    have hle : IsLocalRing.maximalIdeal O ^ 1 • (⊤ : Submodule O O) ≤
        IsLocalRing.maximalIdeal O := by
      rw [pow_one, Ideal.smul_eq_mul, Ideal.mul_top]
    exact (IsLocalRing.maximalIdeal.isMaximal O).ne_top ((Ideal.eq_top_iff_one _).mpr (hle h))

  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal O)
  haveI hff : Module.FaithfullyFlat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    refine Module.FaithfullyFlat.mk ?_
    intro m hm htop
    have hm' : m = IsLocalRing.maximalIdeal O := IsLocalRing.eq_maximalIdeal hm
    subst hm'
    rw [Ideal.smul_top_eq_map] at htop
    apply hone
    have h1 : (1 : AdicCompletion (IsLocalRing.maximalIdeal O) O) ∈
        Submodule.restrictScalars O (Ideal.map (algebraMap O
          (AdicCompletion (IsLocalRing.maximalIdeal O) O)) (IsLocalRing.maximalIdeal O)) := by
      rw [htop]; trivial
    exact h1

  obtain ⟨m, p, hp⟩ := Submodule.fg_iff_exists_fin_generating_family.mp
    (IsNoetherian.noetherian 𝔭)
  have hp' : Ideal.span (Set.range p) = 𝔭 := hp
  have hpmem : ∀ i, p i ∈ 𝔭 := fun i => hp' ▸ Ideal.subset_span ⟨i, rfl⟩
  have hmapp : 𝔭.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
      Ideal.span (Set.range (fun i =>
        algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (p i))) := by
    rw [← hp', Ideal.map_span, ← Set.range_comp]; rfl

  let e := Finset.equivFinOfCardEq hJ
  let t : Fin R → AdicCompletion (IsLocalRing.maximalIdeal O) O := fun r => s (e.symm r)
  have hrange : Set.range t = s '' (J : Set (Fin n)) := by
    ext y
    constructor
    · rintro ⟨r, rfl⟩
      exact ⟨(e.symm r : Fin n), (e.symm r).2, rfl⟩
    · rintro ⟨j, hj, rfl⟩
      refine ⟨e ⟨j, hj⟩, ?_⟩
      simp only [t, Equiv.symm_apply_apply]

  have htmem : ∀ r, t r ∈ Ideal.span (Set.range (fun i =>
      algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (p i))) := by
    intro r
    rw [← hmapp, h𝔭, ← hrange]
    exact Ideal.subset_span ⟨r, rfl⟩
  choose c hc using fun r => (Ideal.mem_span_range_iff_exists_fun).mp (htmem r)
  choose a ha using fun r i => hlift (c r i)
  let x : Fin R → O := fun r => ∑ i, a r i * p i
  have hxmem : ∀ r, x r ∈ 𝔭 := fun r =>
    Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (hpmem i))
  have herr : ∀ r, t r - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r) ∈
      Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O) *
      𝔭.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) := by
    intro r
    have h1 : t r - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r) =
        ∑ i, (c r i - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (a r i)) *
          algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (p i) := by
      rw [← hc r]
      simp only [x, map_sum, map_mul, sub_mul, Finset.sum_sub_distrib]
    rw [h1]
    exact Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_mul (ha r i) (Ideal.mem_map_of_mem _ (hpmem i)))

  have hN : Ideal.span (Set.range (fun r =>
      algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r))) =
      𝔭.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) := by
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨r, rfl⟩
      exact Ideal.mem_map_of_mem _ (hxmem r)
    · have hFG : (𝔭.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))).FG := by
        rw [hmapp]
        exact Submodule.fg_span (Set.finite_range _)
      refine Submodule.le_of_le_smul_of_le_jacobson_bot hFG hjac ?_
      rw [h𝔭, ← hrange, Ideal.span_le]
      rintro _ ⟨r, rfl⟩
      have h1 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r) ∈
          Ideal.span (Set.range (fun r =>
            algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r))) :=
        Ideal.subset_span ⟨r, rfl⟩
      have h2 : t r - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r) ∈
          Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
            (IsLocalRing.maximalIdeal O) • Ideal.span (Set.range t) := by
        rw [Ideal.smul_eq_mul, hrange, ← h𝔭]
        exact herr r
      have h3 := Submodule.add_mem_sup h1 h2
      rwa [add_sub_cancel] at h3
  refine ⟨x, ?_, ?_⟩
  · have hmx : (Ideal.span (Set.range x)).map
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
        𝔭.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) := by
      rw [Ideal.map_span, ← Set.range_comp]
      exact hN
    rw [← Ideal.comap_map_eq_self_of_faithfullyFlat
      (B := AdicCompletion (IsLocalRing.maximalIdeal O) O) (Ideal.span (Set.range x)), hmx,
      Ideal.comap_map_eq_self_of_faithfullyFlat]
  · rw [hN, h𝔭]

theorem wcpa_dj_sf_centre : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (m : ℕ) (Dc : Fin m → Set Z) (μ : Fin m → Z → ℕ) (R : ℕ) (i₀ : Fin m), (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → wcpaDjCompNC Z m Dc μ → (∀ i z, μ i z ≤ R) → IsClosed {z : Z | z ∈ Dc i₀ ∧ μ i₀ z = R} ∧ ∀ z ∈ {z : Z | z ∈ Dc i₀ ∧ μ i₀ z = R}, ∀ (n : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (g : Z.presheaf.stalk z) (J : Finset (Fin n)), (n : WithBot ℕ∞) = ringKrullDim (Z.presheaf.stalk z) → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)).map (algebraMap _ _) → J.card = R → Associated (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) g) (∏ j ∈ J, s j) → (∀ (z' : Z) (h : z' ⤳ z), (z' ∈ Dc i₀ ↔ (Z.presheaf.stalkSpecializes h).hom g ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk z'))) → ∃ x : Fin R → Z.presheaf.stalk z, Ideal.span (Set.range x) = (⨅ (z' : Z) (h : z' ⤳ z) (_ : z' ∈ Dc i₀ ∧ μ i₀ z' = R), (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).comap (Z.presheaf.stalkSpecializes h).hom) ∧ Ideal.span (Set.range (fun r => algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) (x r))) = Ideal.span (s '' (J : Set (Fin n))) :=
by
  intro k _ Z _ sZ _ m Dc μ R i₀ hreg hC hle
  classical
  haveI : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian sZ

  have hover : ∀ (z : Z) (P : Ideal (Z.presheaf.stalk z)), P.IsPrime →
      ∃ Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)),
        Q.IsPrime ∧ Q.comap (algebraMap (Z.presheaf.stalk z)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) = P := by
    intro z P hP
    haveI := hreg z
    haveI := AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
      (R := Z.presheaf.stalk z)
    haveI : Module.FaithfullyFlat (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) :=
      Module.FaithfullyFlat.of_flat_of_isLocalHom
    obtain ⟨Q, hQ⟩ := PrimeSpectrum.comap_surjective_of_faithfullyFlat (A := Z.presheaf.stalk z)
      (B := AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))
      ⟨P, hP⟩
    refine ⟨Q.asIdeal, Q.isPrime, ?_⟩
    rw [← PrimeSpectrum.comap_asIdeal, hQ]
  have hker : ∀ (x y : Z) (h : x ⤳ y) (a : Z.presheaf.stalk y),
      a ∈ RingHom.ker (Z.presheaf.stalkSpecializes h ≫ Z.residue x).hom ↔
        a ∈ (IsLocalRing.maximalIdeal _).comap (Z.presheaf.stalkSpecializes h).hom := by
    intro x y h a
    rw [RingHom.mem_ker, Ideal.mem_comap, CommRingCat.hom_comp, RingHom.comp_apply]
    exact IsLocalRing.residue_eq_zero_iff _
  set C : Set Z := {z : Z | z ∈ Dc i₀ ∧ μ i₀ z = R} with hCdef

  have hspec : ∀ (z' z : Z), z' ⤳ z → z' ∈ C → z ∈ C := by
    intro z' z h hz'
    obtain ⟨hz'D, hz'μ⟩ := hz'
    have hzD : z ∈ Dc i₀ := h.mem_closed (hC.1 i₀) hz'D
    obtain ⟨n, s, g, J, hn, hs, -, -, hin⟩ := hC.2 z
    obtain ⟨n', s', g', J', hn', hs', -, -, hin'⟩ := hC.2 z'
    obtain ⟨Q, hQ, hQc⟩ := hover z ((IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).comap
      (Z.presheaf.stalkSpecializes h).hom) (Ideal.comap_isPrime _ _)
    haveI := hQ
    obtain ⟨J₀, hJ₀, hcard, -⟩ := wcpa_dj_sfc_key_count k Z sZ (Dc i₀) z z' h n s (g i₀) (J i₀)
      n' s' (g' i₀) (J' i₀) Q (hreg z) (hreg z') hn hs (hin i₀ hzD).2.1 (hin i₀ hzD).2.2
      hn' hs' (hin' i₀ hz'D).2.1 (hin' i₀ hz'D).2.2 hz'D hQc
    refine ⟨hzD, ?_⟩
    have h1 := (hin i₀ hzD).1
    have h2 := (hin' i₀ hz'D).1
    have h3 := Finset.card_le_card hJ₀
    have h4 := hle i₀ z
    omega

  have hCcl : IsClosed C := by
    refine wcpa_dj_sfc_nagata_closed Z C (by intro x y h hx; exact hspec x y h hx) ?_
    intro w hw
    by_cases hwD : w ∈ Dc i₀
    · obtain ⟨U, hU, hwU, hUb⟩ := wcpa_dj_sfc_generic_bound k Z sZ m Dc μ hreg hC i₀ w hwD
      refine ⟨U, hU, hwU, fun y hy hwy hyC => ?_⟩
      have h1 := hUb y hy hwy hyC.1
      have h2 : μ i₀ w ≠ R := fun h => hw ⟨hwD, h⟩
      have h3 := hle i₀ w
      have h4 := hyC.2
      omega
    · exact ⟨(Dc i₀)ᶜ, (hC.1 i₀).isOpen_compl, hwD, fun y hy _ hyC => hy hyC.1⟩
  refine ⟨hCcl, ?_⟩

  intro z hzC n s g J hn hs hJ hass hiff
  haveI := hreg z
  have hzD : z ∈ Dc i₀ := hzC.1
  have hgm : g ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk z) := by
    have h0 := (hiff z (specializes_refl z)).mp hzD
    rw [TopCat.Presheaf.stalkSpecializes_refl] at h0
    exact h0
  have hJne : J.Nonempty := by
    rw [Finset.nonempty_iff_ne_empty]
    intro hJe
    rw [hJe, Finset.prod_empty] at hass
    have hu : IsUnit (algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)) g) :=
      associated_one_iff_isUnit.mp hass
    rw [isUnit_map_iff] at hu
    exact (mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hgm)) hu
  set 𝔭 : Ideal (Z.presheaf.stalk z) := ⨅ (z' : Z) (h : z' ⤳ z) (_ : z' ∈ Dc i₀ ∧ μ i₀ z' = R),
    (IsLocalRing.maximalIdeal (Z.presheaf.stalk z')).comap (Z.presheaf.stalkSpecializes h).hom
    with h𝔭def
  have h𝔭rad : 𝔭.IsRadical := by
    apply Ideal.isRadical_iInf; intro z'
    apply Ideal.isRadical_iInf; intro h
    apply Ideal.isRadical_iInf; intro _
    exact (Ideal.comap_isPrime _ _).isRadical

  have hQchar : ∀ (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
      (Z.presheaf.stalk z))), Q.IsPrime →
      (𝔭.map (algebraMap (Z.presheaf.stalk z)
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) ≤ Q ↔
        ∀ j ∈ J, s j ∈ Q) := by
    intro Q hQ
    obtain ⟨q, hq⟩ : ∃ q : PrimeSpectrum (Z.presheaf.stalk z), q.asIdeal = Q.comap
        (algebraMap (Z.presheaf.stalk z)
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) :=
      ⟨⟨_, Ideal.comap_isPrime _ _⟩, rfl⟩
    obtain ⟨hsp, hspiff⟩ := wcpa_dj_mn_generization Z z q
    have hPz' : (IsLocalRing.maximalIdeal (Z.presheaf.stalk (Z.fromSpecStalk z q))).comap
        (Z.presheaf.stalkSpecializes hsp).hom = q.asIdeal := by
      ext a
      rw [Ideal.mem_comap]
      exact hspiff a
    have hD : Z.fromSpecStalk z q ∈ Dc i₀ ↔ ∃ j ∈ J, s j ∈ Q := by
      rw [hiff _ hsp, hspiff, hq, Ideal.mem_comap, ← Ideal.IsPrime.prod_mem_iff]
      exact ⟨fun h => Ideal.mem_of_dvd _ hass.dvd h, fun h => Ideal.mem_of_dvd _ hass.symm.dvd h⟩
    have hCz' : Z.fromSpecStalk z q ∈ C ↔ ∀ j ∈ J, s j ∈ Q := by
      constructor
      · rintro ⟨hz'D, hz'μ⟩
        obtain ⟨n', s', g', J', hn', hs', -, -, hin'⟩ := hC.2 (Z.fromSpecStalk z q)
        obtain ⟨J₀, hJ₀, hcard, hJ₀iff⟩ := wcpa_dj_sfc_key_count k Z sZ (Dc i₀) z
          (Z.fromSpecStalk z q) hsp n s g J n' s' (g' i₀) (J' i₀) Q (hreg z)
          (hreg (Z.fromSpecStalk z q)) hn hs hass hiff hn' hs' (hin' i₀ hz'D).2.1
          (hin' i₀ hz'D).2.2 hz'D (hq.symm.trans hPz'.symm)
        have hJ'c := (hin' i₀ hz'D).1
        have hEq : J₀ = J := Finset.eq_of_subset_of_card_le hJ₀ (by omega)
        intro j hj
        exact (hJ₀iff j hj).mp (by rw [hEq]; exact hj)
      · intro hall
        obtain ⟨j₁, hj₁⟩ := hJne
        have hz'D : Z.fromSpecStalk z q ∈ Dc i₀ := hD.mpr ⟨j₁, hj₁, hall j₁ hj₁⟩
        obtain ⟨n', s', g', J', hn', hs', -, -, hin'⟩ := hC.2 (Z.fromSpecStalk z q)
        obtain ⟨J₀, hJ₀, hcard, hJ₀iff⟩ := wcpa_dj_sfc_key_count k Z sZ (Dc i₀) z
          (Z.fromSpecStalk z q) hsp n s g J n' s' (g' i₀) (J' i₀) Q (hreg z)
          (hreg (Z.fromSpecStalk z q)) hn hs hass hiff hn' hs' (hin' i₀ hz'D).2.1
          (hin' i₀ hz'D).2.2 hz'D (hq.symm.trans hPz'.symm)
        have hJ'c := (hin' i₀ hz'D).1
        have hEq : J₀ = J := Finset.Subset.antisymm hJ₀ (fun j hj => (hJ₀iff j hj).mpr (hall j hj))
        have hc := congrArg Finset.card hEq
        refine ⟨hz'D, ?_⟩
        omega
    have h𝔭q : 𝔭 ≤ q.asIdeal ↔ Z.fromSpecStalk z q ∈ C := by
      constructor
      · intro hle'
        apply wc_pcu_vanishing_ideal_le_prime C hCcl z q
        refine le_trans ?_ hle'
        refine le_iInf fun x => le_iInf fun hx => le_iInf fun hc => ?_
        refine iInf_le_of_le x (iInf_le_of_le hc (iInf_le_of_le hx ?_))
        intro a ha
        exact (hker _ _ _ a).mp ha
      · intro hz'C
        exact iInf_le_of_le (Z.fromSpecStalk z q) (iInf_le_of_le hsp
          (iInf_le_of_le hz'C (le_of_eq hPz')))
    rw [Ideal.map_le_iff_le_comap, ← hq, h𝔭q, hCz']
  have hIK : 𝔭.map (algebraMap (Z.presheaf.stalk z)
      (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) =
      Ideal.span (s '' (J : Set (Fin n))) := by
    have hIrad := wcpa_dj_sfc_radical_extend_geom k Z sZ z 𝔭 h𝔭rad
    have hKprime := wcpa_dj_sfc_span_prime _ n s J (hreg z) hn hs
    rw [← hIrad.radical, ← hKprime.isRadical.radical, Ideal.radical_eq_sInf, Ideal.radical_eq_sInf]
    congr 1
    ext Q
    simp only [Set.mem_setOf_eq]
    have hspan : Ideal.span (s '' (J : Set (Fin n))) ≤ Q ↔ ∀ j ∈ J, s j ∈ Q := by
      rw [Ideal.span_le, Set.image_subset_iff]
      exact ⟨fun h j hj => h hj, fun h j hj => h j hj⟩
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨hspan.mpr ((hQchar Q h2).mp h1), h2⟩
    · rintro ⟨h1, h2⟩
      exact ⟨(hQchar Q h2).mpr (hspan.mp h1), h2⟩
  obtain ⟨x, hx1, hx2⟩ := wcpa_dj_sfc_nakayama_generators _ n R s J 𝔭 (hreg z) hn hs hJ hIK
  exact ⟨x, hx1, hx2⟩

theorem wcpa_dj_sfb_offcentre : ∀ {X Y : Scheme.{u}} (π : X ⟶ Y) (V : Y.Opens) (m : ℕ) (Dc : Fin m → Set Y) (Dc' : Fin (m + 1) → Set X) (w : X) (n : ℕ) (J : Fin m → Finset (Fin n)), IsIso (π ∣_ V) → π w ∈ V → (∀ i, Dc' i.castSucc ∩ ⇑π ⁻¹' (V : Set Y) = ⇑π ⁻¹' (Dc i) ∩ ⇑π ⁻¹' (V : Set Y)) → w ∉ Dc' (Fin.last m) → wcpaDjNCData Y m Dc (π w) n J → IsRegularLocalRing (Y.presheaf.stalk (π w)) → wcpaDjNCData X (m + 1) Dc' w n (Fin.snoc (α := fun _ => Finset (Fin n)) J ∅) ∧ IsRegularLocalRing (X.presheaf.stalk w) :=
by
  intro X Y π V m Dc Dc' w n J hiso hw hpre hlast hJ hreg
  classical

  have hbij : Function.Bijective (π.stalkMap w).hom := by
    have hw' : w ∈ π ⁻¹ᵁ V := hw
    have eA := morphismRestrictStalkMap π V ⟨w, hw'⟩
    have h1 : IsIso ((π ∣_ V).stalkMap ⟨w, hw'⟩) :=
      ((AlgebraicGeometry.isIso_iff_isIso_stalkMap (π ∣_ V)).mp hiso).2 _
    have h2 : IsIso (π.stalkMap w) :=
      (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms CommRingCat) eA).mp h1
    exact ConcreteCategory.bijective_of_isIso (π.stalkMap w)

  have s2 : ∀ (O O' : Type u) [CommRing O] [IsLocalRing O] [CommRing O'] [IsLocalRing O']
      (ψ : O →+* O'), Function.Bijective ψ →
      ∃ Ψ : AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
          AdicCompletion (IsLocalRing.maximalIdeal O') O',
        (∀ c : O, Ψ (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) =
          algebraMap O' (AdicCompletion (IsLocalRing.maximalIdeal O') O') (ψ c)) ∧
        Ideal.map Ψ ((IsLocalRing.maximalIdeal O).map
          (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))) =
          (IsLocalRing.maximalIdeal O').map
            (algebraMap O' (AdicCompletion (IsLocalRing.maximalIdeal O') O')) := by
    intro O O' _ _ _ _ ψ hψ
    have hmax : Ideal.map ψ (IsLocalRing.maximalIdeal O) = IsLocalRing.maximalIdeal O' := by
      haveI := Ideal.IsMaximal.map_bijective ψ hψ (IsLocalRing.maximalIdeal.isMaximal O)
      exact IsLocalRing.eq_maximalIdeal this
    have hle : ∀ k : ℕ, (IsLocalRing.maximalIdeal O) ^ k ≤
        Ideal.comap ψ ((IsLocalRing.maximalIdeal O') ^ k) := by
      intro k
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow, hmax]
    let f : ∀ k : ℕ, AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
        O' ⧸ (IsLocalRing.maximalIdeal O') ^ k := fun k =>
      (Ideal.quotientMap _ ψ (hle k)).comp
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k).toRingHom
    have hf : ∀ {a b : ℕ} (hab : a ≤ b),
        (Ideal.Quotient.factorPow (IsLocalRing.maximalIdeal O') hab).comp (f b) = f a := by
      intro a b hab
      apply RingHom.ext
      intro x
      obtain ⟨c, rfl⟩ := AdicCompletion.mk_surjective (IsLocalRing.maximalIdeal O) O x
      have hc : c.1 b - c.1 a ∈ (IsLocalRing.maximalIdeal O) ^ a := by
        have h := c.2 hab
        rw [SModEq.sub_mem] at h
        have h2 : c.1 a - c.1 b ∈ (IsLocalRing.maximalIdeal O) ^ a := by
          simpa [smul_eq_mul, Ideal.mul_top] using h
        rw [← neg_sub]
        exact neg_mem h2
      simp only [f, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        AdicCompletion.evalₐ_mk, Ideal.quotientMap_mk]
      change Ideal.Quotient.mk _ (ψ (c.1 b)) = Ideal.Quotient.mk _ (ψ (c.1 a))
      rw [Ideal.Quotient.eq, ← map_sub]
      exact hle a hc
    refine ⟨AdicCompletion.liftRingHom _ f hf, ?_, ?_⟩
    · intro c
      apply AdicCompletion.ext_evalₐ
      intro k
      rw [AdicCompletion.evalₐ_liftRingHom]
      simp only [f, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Algebra.algebraMap_self, RingHom.id_apply]
      rw [Ideal.quotientMap_mk]
    · have hcomp : (AdicCompletion.liftRingHom _ f hf).comp
          (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
          (algebraMap O' (AdicCompletion (IsLocalRing.maximalIdeal O') O')).comp ψ := by
        apply RingHom.ext
        intro c
        apply AdicCompletion.ext_evalₐ
        intro k
        rw [RingHom.comp_apply, RingHom.comp_apply, AdicCompletion.evalₐ_liftRingHom]
        simp only [f, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
          AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Algebra.algebraMap_self, RingHom.id_apply]
        rw [Ideal.quotientMap_mk]
      rw [Ideal.map_map, hcomp, ← Ideal.map_map, hmax]
  obtain ⟨Ψ, hΨι, hΨ𝔪⟩ := s2 _ _ (π.stalkMap w).hom hbij
  let e : Y.presheaf.stalk (π w) ≃+* X.presheaf.stalk w := RingEquiv.ofBijective _ hbij

  have hT : ∀ (z : X), π z ∈ V → ∀ l, (z ∈ Dc' l.castSucc ↔ π z ∈ Dc l) := by
    intro z hz l
    constructor
    · intro h
      have h3 : z ∈ Dc' l.castSucc ∩ ⇑π ⁻¹' (V : Set Y) := ⟨h, hz⟩
      rw [hpre l] at h3
      exact h3.1
    · intro h
      have h3 : z ∈ ⇑π ⁻¹' (Dc l) ∩ ⇑π ⁻¹' (V : Set Y) := ⟨h, hz⟩
      rw [← hpre l] at h3
      exact h3.1
  have hloc_map : ∀ (y : X) (b : Y.presheaf.stalk (π y)),
      (π.stalkMap y).hom b ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk y) ↔
        b ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y)) := by
    intro y b
    simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact (isUnit_map_iff (π.stalkMap y).hom b).not
  obtain ⟨s, g, hn, hs, hdisj, hout, hin⟩ := hJ
  refine ⟨⟨fun j => Ψ (s j), Fin.snoc (α := fun _ => X.presheaf.stalk w)
    (fun l => (π.stalkMap w).hom (g l)) 1, ?_, ?_, ?_, ?_, ?_⟩, ?_⟩
  · rw [hn]; exact ringKrullDim_eq_of_ringEquiv e
  · have hr : Set.range (fun j => Ψ (s j)) = ⇑Ψ '' Set.range s := by
      ext y; simp
    rw [hr, ← Ideal.map_span, hs, hΨ𝔪]
  · intro i l hil
    induction i using Fin.lastCases with
    | last =>
      induction l using Fin.lastCases with
      | last => exact absurd rfl hil
      | cast l => simp only [Fin.snoc_last, Finset.disjoint_empty_left]
    | cast i =>
      induction l using Fin.lastCases with
      | last => simp only [Fin.snoc_last, Finset.disjoint_empty_right]
      | cast l =>
        simp only [Fin.snoc_castSucc]
        exact hdisj i l (fun h => hil (by rw [h]))
  · intro i hi
    induction i using Fin.lastCases with
    | last => simp only [Fin.snoc_last]
    | cast l =>
      simp only [Fin.snoc_castSucc]
      exact hout l (fun h => hi ((hT w hw l).mpr h))
  · intro i hi
    induction i using Fin.lastCases with
    | last => exact absurd hi hlast
    | cast l =>
      have hl : π w ∈ Dc l := (hT w hw l).mp hi
      obtain ⟨hass, hiff⟩ := hin l hl
      simp only [Fin.snoc_castSucc]
      refine ⟨?_, ?_⟩
      · rw [← hΨι, ← map_prod Ψ s (J l)]
        exact hass.map Ψ
      · intro z'' h
        have h' : π z'' ⤳ π w := h.map π.continuous
        have hz''V : π z'' ∈ V := h'.mem_open V.isOpen hw
        rw [hT z'' hz''V l, hiff (π z'') h', ← hloc_map z'',
          Scheme.Hom.stalkSpecializes_stalkMap_apply]
  · haveI := hreg
    exact IsRegularLocalRing.of_ringEquiv e

theorem wcpa_dj_sfb_local_generators : ∀ (Y : Scheme.{u}) [IsNoetherian Y] (C D : Set Y) (hC : IsClosed C), IsClosed D → ∀ (z : Y) (R : ℕ) (x : Fin R → Y.presheaf.stalk z) (g : Y.presheaf.stalk z), z ∈ C → Ideal.span (Set.range x) = (⨅ (z' : Y) (h : z' ⤳ z) (_ : z' ∈ C), (IsLocalRing.maximalIdeal (Y.presheaf.stalk z')).comap (Y.presheaf.stalkSpecializes h).hom) → g ∈ (Ideal.span (Set.range x)) ^ R → (∀ (z' : Y) (h : z' ⤳ z), (z' ∈ D ↔ (Y.presheaf.stalkSpecializes h).hom g ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk z'))) → ∃ (U : Y.affineOpens) (hz : z ∈ (U : Y.Opens)) (f : Fin R → Γ(Y, U)) (G : Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U ∧ Ideal.span (Set.range fun r => Y.presheaf.germ U z hz (f r)) = Ideal.span (Set.range x) ∧ Y.presheaf.germ U z hz G = g ∧ G ∈ (Ideal.span (Set.range f)) ^ R ∧ ∀ (y : Y) (hy : y ∈ (U : Y.Opens)), (y ∈ D ↔ Y.presheaf.germ U y hy G ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) :=
by
  intro Y _ C D hC hD z R x g _ hx hg hDiff
  classical

  have s1 : ∀ (U : Y.affineOpens) (hz : z ∈ (U : Y.Opens)) (a : Γ(Y, U)),
      Y.presheaf.germ U z hz a ∈ (⨅ (z' : Y) (h : z' ⤳ z) (_ : z' ∈ C),
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk z')).comap
          (Y.presheaf.stalkSpecializes h).hom) ↔
      ∀ 𝔮 : PrimeSpectrum Γ(Y, U), U.2.fromSpec 𝔮 ∈ C →
        𝔮.asIdeal ≤ (U.2.primeIdealOf ⟨z, hz⟩).asIdeal → a ∈ 𝔮.asIdeal := by
    intro U hz a
    have hiv : ∀ (y : Y) (hy : y ∈ (U : Y.Opens)) (b : Γ(Y, U)),
        Y.presheaf.germ U y hy b ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk y) ↔
          b ∈ (U.2.primeIdealOf ⟨y, hy⟩).asIdeal := by
      intro y hy b
      letI : Algebra Γ(Y, U) (Y.presheaf.stalk y) :=
        TopCat.Presheaf.algebra_section_stalk Y.presheaf ⟨y, hy⟩
      haveI := U.2.isLocalization_stalk ⟨y, hy⟩
      rw [← IsLocalization.AtPrime.under_maximalIdeal (Y.presheaf.stalk y)
        (U.2.primeIdealOf ⟨y, hy⟩).asIdeal]
      rfl
    haveI := U.2.isOpenImmersion_fromSpec
    have hinj : Function.Injective U.2.fromSpec := U.2.fromSpec.isOpenEmbedding.injective
    have hmemU : ∀ 𝔮 : PrimeSpectrum Γ(Y, U), U.2.fromSpec 𝔮 ∈ (U : Y.Opens) := by
      intro 𝔮
      have h : U.2.fromSpec 𝔮 ∈ Set.range U.2.fromSpec := ⟨𝔮, rfl⟩
      rwa [U.2.range_fromSpec] at h
    have hiii : ∀ 𝔮, U.2.primeIdealOf ⟨U.2.fromSpec 𝔮, hmemU 𝔮⟩ = 𝔮 :=
      fun 𝔮 => hinj (U.2.fromSpec_primeIdealOf _)
    have hzpt : U.2.fromSpec (U.2.primeIdealOf ⟨z, hz⟩) = z := U.2.fromSpec_primeIdealOf _
    constructor
    · intro hmem 𝔮 h𝔮C h𝔮le
      have hsp : U.2.fromSpec 𝔮 ⤳ z := by
        rw [← hzpt]
        exact ((PrimeSpectrum.le_iff_specializes 𝔮 _).mp h𝔮le).map U.2.fromSpec.continuous
      simp only [Ideal.mem_iInf, Ideal.mem_comap] at hmem
      have h2 := hmem _ hsp h𝔮C
      have e := TopCat.Presheaf.germ_stalkSpecializes_apply Y.presheaf hz hsp a
      rw [e] at h2
      have h3 := (hiv _ (hmemU 𝔮) a).mp h2
      have h4 := congrArg PrimeSpectrum.asIdeal (hiii 𝔮)
      rw [← h4]
      exact h3
    · intro H
      simp only [Ideal.mem_iInf, Ideal.mem_comap]
      intro y h hyC
      have hyU : y ∈ (U : Y.Opens) := h.mem_open (U : Y.Opens).isOpen hz
      have e := TopCat.Presheaf.germ_stalkSpecializes_apply Y.presheaf hz h a
      rw [e]
      apply (hiv y hyU a).mpr
      apply H
      · rw [U.2.fromSpec_primeIdealOf]; exact hyC
      · have h' : U.2.fromSpec (U.2.primeIdealOf ⟨y, hyU⟩) ⤳
            U.2.fromSpec (U.2.primeIdealOf ⟨z, hz⟩) := by
          rw [U.2.fromSpec_primeIdealOf, U.2.fromSpec_primeIdealOf]; exact h
        exact (PrimeSpectrum.le_iff_specializes _ _).mpr
          ((U.2.fromSpec.isOpenEmbedding.isInducing.specializes_iff).mp h')

  have s2 : ∀ (A : Type u) [CommRing A] [IsNoetherianRing A] (T : Set (PrimeSpectrum A)),
      IsClosed T → ∀ (𝔭 : Ideal A) [𝔭.IsPrime] (b : A),
      (∀ 𝔮 ∈ T, 𝔮.asIdeal ≤ 𝔭 → b ∈ 𝔮.asIdeal) →
      ∃ s : A, s ∉ 𝔭 ∧ s * b ∈ PrimeSpectrum.vanishingIdeal T := by
    intro A _ _ T hT 𝔭 _ b hb
    set 𝔞 := PrimeSpectrum.vanishingIdeal T with h𝔞
    have hfin := Ideal.finite_minimalPrimes_of_isNoetherianRing A 𝔞
    have hmemT : ∀ P (hP : P ∈ 𝔞.minimalPrimes), (⟨P, hP.1.1⟩ : PrimeSpectrum A) ∈ T := by
      intro P hP
      have h1 : (⟨P, hP.1.1⟩ : PrimeSpectrum A) ∈ PrimeSpectrum.zeroLocus (𝔞 : Set A) :=
        (PrimeSpectrum.mem_zeroLocus _ _).mpr hP.1.2
      rwa [PrimeSpectrum.zeroLocus_vanishingIdeal_eq_closure, hT.closure_eq] at h1
    let sf : Ideal A → A := fun P =>
      if h : ¬ P ≤ 𝔭 then (SetLike.not_le_iff_exists.mp h).choose else 1
    have hsf𝔭 : ∀ P, sf P ∉ 𝔭 := by
      intro P
      by_cases h : ¬ P ≤ 𝔭
      · simp only [sf, dif_pos h]
        exact (SetLike.not_le_iff_exists.mp h).choose_spec.2
      · simp only [sf, dif_neg h]
        exact (Ideal.ne_top_iff_one 𝔭).mp (Ideal.IsPrime.ne_top inferInstance)
    have hsfP : ∀ P, ¬ P ≤ 𝔭 → sf P ∈ P := by
      intro P h
      simp only [sf, dif_pos h]
      exact (SetLike.not_le_iff_exists.mp h).choose_spec.1
    refine ⟨∏ P ∈ hfin.toFinset, sf P, ?_, ?_⟩
    · intro hmem
      obtain ⟨P, _, hP⟩ := (Ideal.IsPrime.prod_mem_iff (p := 𝔭)).mp hmem
      exact hsf𝔭 P hP
    · have hrad : 𝔞 = sInf 𝔞.minimalPrimes := by
        rw [Ideal.sInf_minimalPrimes, (PrimeSpectrum.isRadical_vanishingIdeal T).radical]
      suffices hs : (∏ P ∈ hfin.toFinset, sf P) * b ∈ sInf 𝔞.minimalPrimes by
        rwa [← hrad] at hs
      rw [Ideal.mem_sInf]
      intro P hP
      by_cases h : P ≤ 𝔭
      · exact Ideal.mul_mem_left _ _ (hb _ (hmemT P hP) h)
      · apply Ideal.mul_mem_right
        have hd : sf P ∣ ∏ P ∈ hfin.toFinset, sf P :=
          Finset.dvd_prod_of_mem _ (hfin.mem_toFinset.mpr hP)
        exact Ideal.mem_of_dvd _ hd (hsfP P h)

  have s3 : ∀ (A : Type u) [CommRing A] [IsNoetherianRing A] (𝔭 : Ideal A) [𝔭.IsPrime]
      (O : Type u) [CommRing O] [Algebra A O] [IsLocalization.AtPrime O 𝔭] (𝔞 : Ideal A)
      (x : Fin R → O) (g : O), Ideal.map (algebraMap A O) 𝔞 = Ideal.span (Set.range x) →
      g ∈ (Ideal.span (Set.range x)) ^ R →
      ∃ (t : A) (c : Fin R → A), t ∉ 𝔭 ∧ ∀ (B : Type u) [CommRing B] (ρ : A →+* B)
        (σ : B →+* O), σ.comp ρ = algebraMap A O → IsUnit (ρ t) →
        Ideal.span (Set.range (fun r => ρ (c r))) = Ideal.map ρ 𝔞 ∧
        Ideal.span (Set.range (fun r => σ (ρ (c r)))) = Ideal.span (Set.range x) ∧
        ∃ G : B, σ G = g ∧ G ∈ (Ideal.span (Set.range (fun r => ρ (c r)))) ^ R := by
    intro A _ _ 𝔭 _ O _ _ _ 𝔞 x g hmap hg
    set M := 𝔭.primeCompl with hM
    set ι := algebraMap A O with hι
    have ha : ∀ r, ∃ c ∈ 𝔞, ∃ u ∈ M, x r * ι u = ι c := by
      intro r
      have hxr : x r ∈ Ideal.map ι 𝔞 := by
        rw [hmap]; exact Ideal.subset_span ⟨r, rfl⟩
      obtain ⟨⟨⟨c, hc⟩, ⟨u, hu⟩⟩, h⟩ := (IsLocalization.mem_map_algebraMap_iff M O).mp hxr
      exact ⟨c, hc, u, hu, h⟩
    choose c hc u hu hxu using ha
    set 𝔠 : Ideal A := Ideal.span (Set.range c) with h𝔠
    have hιu : ∀ r, IsUnit (ι (u r)) := fun r => IsLocalization.map_units O (⟨u r, hu r⟩ : M)
    have hmapc : ∀ {B : Type u} [CommRing B] (ρ : A →+* B),
        Ideal.map ρ 𝔠 = Ideal.span (Set.range (fun r => ρ (c r))) := by
      intro B _ ρ
      rw [h𝔠, Ideal.map_span, ← Set.range_comp]; rfl
    have hb : Ideal.map ι 𝔠 = Ideal.span (Set.range x) := by
      rw [hmapc]
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨r, rfl⟩
        show ι (c r) ∈ _
        rw [← hxu r]
        exact Ideal.mul_mem_right _ _ (Ideal.subset_span ⟨r, rfl⟩)
      · rw [Ideal.span_le]
        rintro _ ⟨r, rfl⟩
        rw [SetLike.mem_coe, ← Ideal.mul_unit_mem_iff_mem _ (hιu r), hxu r]
        exact Ideal.subset_span ⟨r, rfl⟩
    obtain ⟨S, hS⟩ := (IsNoetherian.noetherian 𝔞 : 𝔞.FG)
    have hS' : Ideal.span (S : Set A) = 𝔞 := hS
    have hw : ∀ a ∈ S, ∃ w ∈ M, w * a ∈ 𝔠 := by
      intro a haS
      have h1 : ι a ∈ Ideal.map ι 𝔠 := by
        rw [hb, ← hmap]
        exact Ideal.mem_map_of_mem _ (hS' ▸ Ideal.subset_span haS)
      obtain ⟨w, hwM, hw⟩ := (IsLocalization.algebraMap_mem_map_algebraMap_iff M O 𝔠 a).mp h1
      exact ⟨w, hwM, hw⟩
    choose! w hwM hwa using hw
    obtain ⟨⟨G₀, ⟨ug, hug⟩⟩, hG₀⟩ := IsLocalization.surj M g
    simp only at hG₀
    have hG₀mem : ι G₀ ∈ Ideal.map ι (𝔠 ^ R) := by
      rw [Ideal.map_pow, hb, ← hG₀]
      exact Ideal.mul_mem_right _ _ hg
    obtain ⟨w₀, hw₀M, hw₀⟩ :=
      (IsLocalization.algebraMap_mem_map_algebraMap_iff M O (𝔠 ^ R) G₀).mp hG₀mem
    refine ⟨(∏ r, u r) * (∏ a ∈ S, w a) * ug * w₀, c, ?_, ?_⟩
    · have : (∏ r, u r) * (∏ a ∈ S, w a) * ug * w₀ ∈ M :=
        mul_mem (mul_mem (mul_mem (prod_mem fun r _ => hu r) (prod_mem fun a ha => hwM a ha))
          hug) hw₀M
      exact this
    intro B _ ρ σ hσρ ht
    have hdvd : ∀ y : A, y ∣ (∏ r, u r) * (∏ a ∈ S, w a) * ug * w₀ → IsUnit (ρ y) :=
      fun y hy => isUnit_of_dvd_unit (map_dvd ρ hy) ht
    have hρu : IsUnit (ρ ug) := hdvd ug (Dvd.intro_left _ rfl |>.mul_right _)
    have hρw₀ : IsUnit (ρ w₀) := hdvd w₀ (Dvd.intro_left _ rfl)
    have hρw : ∀ a ∈ S, IsUnit (ρ (w a)) := by
      intro a haS
      apply hdvd
      exact ((Finset.dvd_prod_of_mem w haS).mul_left _ |>.mul_right _ |>.mul_right _)
    have hσρa : ∀ a, σ (ρ a) = ι a := fun a => RingHom.congr_fun hσρ a
    have h1 : Ideal.span (Set.range (fun r => ρ (c r))) = Ideal.map ρ 𝔞 := by
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨r, rfl⟩
        exact Ideal.mem_map_of_mem _ (hc r)
      · rw [← hS', Ideal.map_span, Ideal.span_le]
        rintro _ ⟨a, haS, rfl⟩
        rw [SetLike.mem_coe, ← Ideal.unit_mul_mem_iff_mem _ (hρw a haS), ← map_mul, ← hmapc]
        exact Ideal.mem_map_of_mem _ (hwa a haS)
    refine ⟨h1, ?_, ?_⟩
    · have : (fun r => σ (ρ (c r))) = fun r => ι (c r) := funext fun r => hσρa (c r)
      rw [this, ← hb, hmapc]
    · refine ⟨hρu.unit⁻¹ * ρ G₀, ?_, ?_⟩
      · have hιug : IsUnit (ι ug) := IsLocalization.map_units O (⟨ug, hug⟩ : M)
        rw [← hιug.mul_left_inj, hG₀, ← hσρa, ← hσρa, ← map_mul, mul_comm, ← mul_assoc,
          IsUnit.mul_val_inv, one_mul]
      · apply Ideal.mul_mem_left
        rw [← Ideal.unit_mul_mem_iff_mem _ hρw₀, ← map_mul, ← hmapc, ← Ideal.map_pow]
        exact Ideal.mem_map_of_mem _ hw₀

  have s4 : ∀ (D₁ D₂ : Set Y), IsClosed D₁ → IsClosed D₂ →
      (∀ y : Y, y ⤳ z → (y ∈ D₁ ↔ y ∈ D₂)) →
      ∃ W : Set Y, IsOpen W ∧ z ∈ W ∧ ∀ y ∈ W, (y ∈ D₁ ↔ y ∈ D₂) := by
    intro D₁ D₂ h1 h2 hz
    have claim : ∀ P Q : Set Y, IsClosed P → IsClosed Q → (∀ y, y ⤳ z → y ∈ P → y ∈ Q) →
        z ∉ closure (P \ Q) := by
      intro P Q hP hQ hPQ hzc
      obtain ⟨S, hSirr, hSeq⟩ := TopologicalSpace.NoetherianSpace.exists_finset_irreducible
        (⟨closure (P \ Q), isClosed_closure⟩ : TopologicalSpace.Closeds Y)
      have hsub : ∀ Z ∈ S, (Z : Set Y) ⊆ closure (P \ Q) := by
        intro Z hZ
        have h : Z ≤ S.sup id := Finset.le_sup (f := id) hZ
        rw [← hSeq] at h
        exact h
      have hcov : P \ Q ⊆ ⋃ Z ∈ S, (Z : Set Y) := by
        intro y hy
        have h : y ∈ ((S.sup id : TopologicalSpace.Closeds Y) : Set Y) := by
          rw [← hSeq]; exact subset_closure hy
        rw [TopologicalSpace.Closeds.coe_finset_sup] at h
        simpa using h
      have heq : P \ Q = ⋃ Z ∈ S, ((P \ Q) ∩ (Z : Set Y)) := by
        apply Set.Subset.antisymm
        · intro y hy
          have := hcov hy
          simp only [Set.mem_iUnion] at this ⊢
          obtain ⟨Z, hZ, hyZ⟩ := this
          exact ⟨Z, hZ, hy, hyZ⟩
        · intro y hy
          simp only [Set.mem_iUnion] at hy
          obtain ⟨Z, _, hyZ⟩ := hy
          exact hyZ.1
      rw [heq, Finset.closure_biUnion] at hzc
      simp only [Set.mem_iUnion] at hzc
      obtain ⟨Z, hZS, hzZ⟩ := hzc
      have hZirr : IsIrreducible (Z : Set Y) := hSirr ⟨Z, hZS⟩
      have hgen : IsGenericPoint hZirr.genericPoint (Z : Set Y) := by
        have := hZirr.isGenericPoint_genericPoint_closure
        rwa [Z.isClosed.closure_eq] at this
      have hzZ' : z ∈ (Z : Set Y) :=
        closure_minimal Set.inter_subset_right Z.isClosed hzZ
      have hsp : hZirr.genericPoint ⤳ z := hgen.specializes hzZ'
      have hηP : hZirr.genericPoint ∈ P :=
        closure_minimal Set.diff_subset hP (hsub Z hZS hgen.mem)
      have hne : ((P \ Q) ∩ (Z : Set Y)).Nonempty := closure_nonempty_iff.mp ⟨z, hzZ⟩
      have hηQ : hZirr.genericPoint ∈ Qᶜ := by
        rw [hgen.mem_open_set_iff hQ.isOpen_compl]
        obtain ⟨y, hy⟩ := hne
        exact ⟨y, hy.2, hy.1.2⟩
      exact hηQ (hPQ _ hsp hηP)
    have c1 := claim D₁ D₂ h1 h2 (fun y hy h => (hz y hy).mp h)
    have c2 := claim D₂ D₁ h2 h1 (fun y hy h => (hz y hy).mpr h)
    refine ⟨(closure (D₁ \ D₂))ᶜ ∩ (closure (D₂ \ D₁))ᶜ,
      isClosed_closure.isOpen_compl.inter isClosed_closure.isOpen_compl, ⟨c1, c2⟩, ?_⟩
    rintro y ⟨hy1, hy2⟩
    constructor
    · intro hy; by_contra h; exact hy1 (subset_closure ⟨hy, h⟩)
    · intro hy; by_contra h; exact hy2 (subset_closure ⟨hy, h⟩)

  have s5 : ∀ (U : Y.affineOpens) (hz : z ∈ (U : Y.Opens))
      (f : Fin R → Γ(Y, U)) (G : Γ(Y, U)) (t : Γ(Y, U)), z ∈ Y.basicOpen t →
      Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U →
      Ideal.span (Set.range fun r => Y.presheaf.germ U z hz (f r)) = Ideal.span (Set.range x) →
      G ∈ (Ideal.span (Set.range f)) ^ R →
      ∃ (hz' : z ∈ ((Y.affineBasicOpen t : Y.affineOpens) : Y.Opens)),
        Ideal.span (Set.range fun r =>
          (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom (f r)) =
          (Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal (Y.affineBasicOpen t) ∧
        Ideal.span (Set.range fun r => Y.presheaf.germ (Y.affineBasicOpen t) z hz'
          ((Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom (f r))) =
          Ideal.span (Set.range x) ∧
        (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom G ∈
          (Ideal.span (Set.range fun r =>
            (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom (f r))) ^ R ∧
        ∀ (y : Y) (hy : y ∈ ((Y.affineBasicOpen t : Y.affineOpens) : Y.Opens)),
          Y.presheaf.germ (Y.affineBasicOpen t) y hy
            ((Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom G) =
            Y.presheaf.germ U y (Y.basicOpen_le t hy) G := by
    intro U hz f G t hzt hf hfx hG
    have hz' : z ∈ ((Y.affineBasicOpen t : Y.affineOpens) : Y.Opens) := by
      rw [Scheme.affineBasicOpen_coe]; exact hzt
    refine ⟨hz', ?_, ?_, ?_, ?_⟩
    · rw [← Scheme.IdealSheafData.map_ideal_basicOpen, ← hf, Ideal.map_span, ← Set.range_comp]
      rfl
    · have : (fun r => Y.presheaf.germ (Y.affineBasicOpen t) z hz'
          ((Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom (f r))) =
          fun r => Y.presheaf.germ U z hz (f r) :=
        funext fun r =>
          TopCat.Presheaf.germ_res_apply Y.presheaf (homOfLE (Y.basicOpen_le t)) z hz' (f r)
      rw [this]; exact hfx
    · have h1 := Ideal.mem_map_of_mem (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom hG
      rw [Ideal.map_pow, Ideal.map_span, ← Set.range_comp] at h1
      exact h1
    · intro y hy
      exact TopCat.Presheaf.germ_res_apply Y.presheaf (homOfLE (Y.basicOpen_le t)) y hy G

  obtain ⟨W₀, hW₀, hzW₀, -⟩ := exists_isAffineOpen_mem_and_subset (x := z) (U := ⊤) trivial
  let U₀ : Y.affineOpens := ⟨W₀, hW₀⟩
  have hz₀ : z ∈ (U₀ : Y.Opens) := hzW₀
  haveI : IsNoetherianRing Γ(Y, U₀) := IsLocallyNoetherian.component_noetherian U₀
  letI : Algebra Γ(Y, U₀) (Y.presheaf.stalk z) :=
    TopCat.Presheaf.algebra_section_stalk Y.presheaf ⟨z, hz₀⟩
  haveI hloc : IsLocalization.AtPrime (Y.presheaf.stalk z) (U₀.2.primeIdealOf ⟨z, hz₀⟩).asIdeal :=
    U₀.2.isLocalization_stalk ⟨z, hz₀⟩
  have hι : ∀ a, algebraMap Γ(Y, U₀) (Y.presheaf.stalk z) a = Y.presheaf.germ U₀ z hz₀ a :=
    fun a => rfl
  have h𝔞 : (Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U₀ =
      PrimeSpectrum.vanishingIdeal (U₀.2.fromSpec ⁻¹' C) :=
    Scheme.IdealSheafData.vanishingIdeal_ideal _ _
  have hT : IsClosed (U₀.2.fromSpec ⁻¹' C) := hC.preimage U₀.2.fromSpec.continuous

  have hA2 : Ideal.map (algebraMap Γ(Y, U₀) (Y.presheaf.stalk z))
      ((Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U₀) = Ideal.span (Set.range x) := by
    rw [hx]
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro a ha
      rw [Ideal.mem_comap, hι]
      apply (s1 U₀ hz₀ a).mpr
      intro 𝔮 h𝔮C _
      rw [h𝔞] at ha
      exact (PrimeSpectrum.mem_vanishingIdeal _ _).mp ha 𝔮 h𝔮C
    · rw [← IsLocalization.map_under (U₀.2.primeIdealOf ⟨z, hz₀⟩).asIdeal.primeCompl
        (Y.presheaf.stalk z) (⨅ (z' : Y) (h : z' ⤳ z) (_ : z' ∈ C),
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk z')).comap
            (Y.presheaf.stalkSpecializes h).hom)]
      rw [Ideal.map_le_iff_le_comap]
      intro b hb
      have hb' : Y.presheaf.germ U₀ z hz₀ b ∈ (⨅ (z' : Y) (h : z' ⤳ z) (_ : z' ∈ C),
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk z')).comap
            (Y.presheaf.stalkSpecializes h).hom) := hb
      have H1 := (s1 U₀ hz₀ b).mp hb'
      obtain ⟨s, hs𝔭, hsb⟩ := s2 Γ(Y, U₀) (U₀.2.fromSpec ⁻¹' C) hT
        (U₀.2.primeIdealOf ⟨z, hz₀⟩).asIdeal b (fun 𝔮 h𝔮 hle => H1 𝔮 h𝔮 hle)
      rw [Ideal.mem_comap, IsLocalization.algebraMap_mem_map_algebraMap_iff
        (U₀.2.primeIdealOf ⟨z, hz₀⟩).asIdeal.primeCompl]
      exact ⟨s, hs𝔭, h𝔞 ▸ hsb⟩

  obtain ⟨t, c, ht, H⟩ := s3 Γ(Y, U₀) (U₀.2.primeIdealOf ⟨z, hz₀⟩).asIdeal (Y.presheaf.stalk z)
    ((Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U₀) x g hA2 hg
  have hzt : z ∈ Y.basicOpen t :=
    (Scheme.mem_basicOpen Y t z hz₀).mpr
      (IsLocalization.map_units (Y.presheaf.stalk z)
        (⟨t, ht⟩ : (U₀.2.primeIdealOf ⟨z, hz₀⟩).asIdeal.primeCompl))
  have hσρ : ((Y.presheaf.germ (Y.basicOpen t) z hzt).hom).comp
      (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom =
      algebraMap Γ(Y, U₀) (Y.presheaf.stalk z) := by
    ext a
    exact TopCat.Presheaf.germ_res_apply Y.presheaf (homOfLE (Y.basicOpen_le t)) z hzt a
  obtain ⟨h1, h2, G₁, hG₁g, hG₁⟩ := H Γ(Y, Y.basicOpen t)
    (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom
    (Y.presheaf.germ (Y.basicOpen t) z hzt).hom hσρ (Y.toRingedSpace.isUnit_res_basicOpen t)
  let U₁ : Y.affineOpens := Y.affineBasicOpen t
  have hz₁ : z ∈ (U₁ : Y.Opens) := hzt
  let f₁ : Fin R → Γ(Y, U₁) := fun r =>
    (Y.presheaf.map (homOfLE (Y.basicOpen_le t)).op).hom (c r)
  have hf₁ : Ideal.span (Set.range f₁) =
      (Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U₁ := by
    rw [← Scheme.IdealSheafData.map_ideal_basicOpen]
    exact h1
  have hf₁x : Ideal.span (Set.range fun r => Y.presheaf.germ U₁ z hz₁ (f₁ r)) =
      Ideal.span (Set.range x) := h2
  have hG₁' : (G₁ : Γ(Y, U₁)) ∈ (Ideal.span (Set.range f₁)) ^ R := hG₁

  have hE : ∀ (y : Y) (hy : y ∈ Y.basicOpen t),
      y ∈ ((Y.basicOpen G₁ : Set Y)ᶜ) ↔
        Y.presheaf.germ (Y.basicOpen t) y hy G₁ ∈
          IsLocalRing.maximalIdeal (Y.presheaf.stalk y) := by
    intro y hy
    rw [Set.mem_compl_iff, SetLike.mem_coe, Scheme.mem_basicOpen Y G₁ y hy,
      IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
  obtain ⟨W, hWo, hzW, hWiff⟩ := s4 D ((Y.basicOpen G₁ : Set Y)ᶜ) hD
    (Y.basicOpen G₁).isOpen.isClosed_compl (by
      intro y h
      have hyt : y ∈ Y.basicOpen t := h.mem_open (Y.basicOpen t).isOpen hzt
      rw [hDiff y h, hE y hyt, ← hG₁g]
      rw [TopCat.Presheaf.germ_stalkSpecializes_apply Y.presheaf hzt h G₁])

  obtain ⟨t', ht'V, hzt'⟩ := U₁.2.exists_basicOpen_le
    (V := (⟨W, hWo⟩ : Y.Opens) ⊓ Y.basicOpen t) ⟨z, ⟨hzW, hzt⟩⟩ hz₁
  obtain ⟨hz'', e1, e2, e3, e4⟩ := s5 U₁ hz₁ f₁ G₁ t' hzt' hf₁ hf₁x hG₁'
  refine ⟨Y.affineBasicOpen t', hz'', _, _, e1, e2, ?_, e3, ?_⟩
  · rw [e4 z hz'']
    exact hG₁g
  · intro y hy
    have hyV : y ∈ (⟨W, hWo⟩ : Y.Opens) ⊓ Y.basicOpen t := ht'V hy
    rw [e4 y hy, hWiff y hyV.1]
    exact hE y _

theorem wcpa_dj_scr_params : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (n r : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (A₀ : Finset (Fin n)) (x : Fin (r + 1) → O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → A₀.card = r + 1 → Ideal.span (Set.range fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x l)) = Ideal.span (s '' (A₀ : Set (Fin n))) → ∃ hx : ∀ l, x l ∈ IsLocalRing.maximalIdeal O, LinearIndependent (IsLocalRing.ResidueField O) (fun l => (IsLocalRing.maximalIdeal O).toCotangent ⟨x l, hx l⟩) :=
by
  intro O _ _ _ n r s A₀ x hreg hn hs hA hx
  classical
  set ι := algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) with hι
  set π : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* O ⧸ (IsLocalRing.maximalIdeal O) ^ 2 :=
    (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) 2).toRingHom with hπ
  have hπι : ∀ a : O, π (ι a) = Ideal.Quotient.mk ((IsLocalRing.maximalIdeal O) ^ 2) a := by
    intro a
    show (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) 2) (algebraMap O _ a) = _
    rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq]
  have hcomp : π.comp ι = Ideal.Quotient.mk ((IsLocalRing.maximalIdeal O) ^ 2) := RingHom.ext hπι
  have hK : ∀ c ∈ (IsLocalRing.maximalIdeal O).map ι, ∃ p ∈ IsLocalRing.maximalIdeal O,
      π c = Ideal.Quotient.mk ((IsLocalRing.maximalIdeal O) ^ 2) p := by
    intro c hc
    have h1 : π c ∈ ((IsLocalRing.maximalIdeal O).map ι).map π := Ideal.mem_map_of_mem π hc
    rw [Ideal.map_map, hcomp,
      Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective] at h1
    obtain ⟨p, hp, hpc⟩ := h1
    exact ⟨p, hp, hpc.symm⟩
  have hsq : (IsLocalRing.maximalIdeal O) ^ 2 ≤ IsLocalRing.maximalIdeal O :=
    Ideal.pow_le_self two_ne_zero
  have hmemK : ∀ y : O, ι y ∈ (IsLocalRing.maximalIdeal O).map ι →
      y ∈ IsLocalRing.maximalIdeal O := by
    intro y hy
    obtain ⟨p, hp, hpe⟩ := hK _ hy
    rw [hπι, Ideal.Quotient.eq] at hpe
    have := (IsLocalRing.maximalIdeal O).add_mem (hsq hpe) hp
    simpa using this
  have hsle : ∀ j, s j ∈ (IsLocalRing.maximalIdeal O).map ι := by
    intro j; rw [← hs]; exact Ideal.subset_span (Set.mem_range_self j)
  have hxι : ∀ l, ι (x l) ∈ (IsLocalRing.maximalIdeal O).map ι := by
    intro l
    rw [← hs]
    apply Ideal.span_mono (Set.image_subset_range _ _)
    rw [← hx]
    exact Ideal.subset_span (Set.mem_range_self l)
  have hxm : ∀ l, x l ∈ IsLocalRing.maximalIdeal O := fun l => hmemK _ (hxι l)
  choose p hp hps using fun j => hK (s j) (hsle j)
  refine ⟨hxm, ?_⟩
  have hcot : ∀ (k : ℕ) (a : Fin k → O) (w : Fin k → O) (hw : ∀ i, w i ∈ IsLocalRing.maximalIdeal O)
      (m : O) (hm : m ∈ IsLocalRing.maximalIdeal O),
      m - ∑ i, a i * w i ∈ (IsLocalRing.maximalIdeal O) ^ 2 →
      (IsLocalRing.maximalIdeal O).toCotangent ⟨m, hm⟩ ∈
        Submodule.span (IsLocalRing.ResidueField O)
        (Set.range fun i => (IsLocalRing.maximalIdeal O).toCotangent ⟨w i, hw i⟩) := by
    intro k a w hw m hm hrel
    have hmem : ∑ i, a i * w i ∈ IsLocalRing.maximalIdeal O :=
      Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (hw i))
    have e1 : (IsLocalRing.maximalIdeal O).toCotangent ⟨m, hm⟩ =
        (IsLocalRing.maximalIdeal O).toCotangent ⟨_, hmem⟩ :=
      ((IsLocalRing.maximalIdeal O).toCotangent_eq).mpr hrel
    have e2 : (⟨_, hmem⟩ : IsLocalRing.maximalIdeal O) =
        ∑ i, a i • (⟨w i, hw i⟩ : IsLocalRing.maximalIdeal O) := by
      ext; simp [smul_eq_mul]
    rw [e1, e2, map_sum]
    refine Submodule.sum_mem _ (fun i _ => ?_)
    rw [map_smul]
    exact Submodule.smul_of_tower_mem _ (a i) (Submodule.subset_span (Set.mem_range_self i))
  let b : Fin n → (IsLocalRing.maximalIdeal O).Cotangent :=
    fun j => (IsLocalRing.maximalIdeal O).toCotangent ⟨p j, hp j⟩
  let v : Fin (r + 1) → (IsLocalRing.maximalIdeal O).Cotangent :=
    fun l => (IsLocalRing.maximalIdeal O).toCotangent ⟨x l, hxm l⟩
  have hspan : Submodule.span (IsLocalRing.ResidueField O) (Set.range b) = ⊤ := by
    rw [eq_top_iff]
    intro z _
    obtain ⟨⟨m, hm⟩, rfl⟩ := (IsLocalRing.maximalIdeal O).toCotangent_surjective z
    have h1 : ι m ∈ Ideal.span (Set.range s) := by rw [hs]; exact Ideal.mem_map_of_mem ι hm
    obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.mp h1
    choose a ha using fun j =>
      Ideal.Quotient.mk_surjective (I := (IsLocalRing.maximalIdeal O) ^ 2) (π (c j))
    apply hcot n a p hp m hm
    have e := hπι m
    rw [← hc, map_sum] at e
    simp only [map_mul, hps, ← ha] at e
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_sum, ← e]
    simp [map_mul]
  have hrel : ∀ j, b (A₀.orderEmbOfFin hA j) ∈
      Submodule.span (IsLocalRing.ResidueField O) (Set.range v) := by
    intro j
    have h1 : s (A₀.orderEmbOfFin hA j) ∈ Ideal.span (Set.range fun l => ι (x l)) := by
      rw [hx]
      exact Ideal.subset_span (Set.mem_image_of_mem s (A₀.orderEmbOfFin_mem hA j))
    obtain ⟨N, hN⟩ := Ideal.mem_span_range_iff_exists_fun.mp h1
    choose a ha using fun l =>
      Ideal.Quotient.mk_surjective (I := (IsLocalRing.maximalIdeal O) ^ 2) (π (N l))
    apply hcot (r + 1) a x hxm (p (A₀.orderEmbOfFin hA j)) (hp _)
    have e := hps (A₀.orderEmbOfFin hA j)
    rw [← hN, map_sum] at e
    simp only [map_mul, hπι, ← ha] at e
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_sum, ← e]
    simp [map_mul]
  have hfin : Module.finrank (IsLocalRing.ResidueField O)
      (IsLocalRing.maximalIdeal O).Cotangent = n := by
    have h1 := hreg.spanFinrank_maximalIdeal
    rw [← hn] at h1
    have h2 : Submodule.spanFinrank (IsLocalRing.maximalIdeal O) = n := by exact_mod_cast h1
    exact (IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace O).symm.trans h2
  have hbli : LinearIndependent (IsLocalRing.ResidueField O) b :=
    linearIndependent_of_top_le_span_of_card_eq_finrank hspan.ge (by rw [Fintype.card_fin, hfin])
  have hbe : LinearIndependent (IsLocalRing.ResidueField O) (b ∘ A₀.orderEmbOfFin hA) :=
    hbli.comp _ (A₀.orderEmbOfFin hA).injective
  have hle : Submodule.span (IsLocalRing.ResidueField O) (Set.range (b ∘ A₀.orderEmbOfFin hA)) ≤
      Submodule.span (IsLocalRing.ResidueField O) (Set.range v) := by
    rw [Submodule.span_le]; rintro _ ⟨j, rfl⟩; exact hrel j
  have : FiniteDimensional (IsLocalRing.ResidueField O)
      (Submodule.span (IsLocalRing.ResidueField O) (Set.range v)) :=
    FiniteDimensional.span_of_finite _ (Set.finite_range v)
  have h1 := Submodule.finrank_mono hle
  rw [finrank_span_eq_card hbe, Fintype.card_fin] at h1
  have h2 := finrank_range_le_card (R := IsLocalRing.ResidueField O) v
  rw [Fintype.card_fin] at h2
  show LinearIndependent (IsLocalRing.ResidueField O) v
  rw [linearIndependent_iff_card_eq_finrank_span, Fintype.card_fin]
  exact le_antisymm h1 h2

theorem wcpa_dj_scr_matrices : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (n r : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (A₀ : Finset (Fin n)) (x : Fin (r + 1) → O) (hA : A₀.card = r + 1), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → Ideal.span (Set.range fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x l)) = Ideal.span (s '' (A₀ : Set (Fin n))) → ∃ (Mh Nh : Matrix (Fin (r + 1)) (Fin (r + 1)) (AdicCompletion (IsLocalRing.maximalIdeal O) O)) (Nl : Matrix (Fin (r + 1)) (Fin (r + 1)) O), (∀ l, algebraMap O _ (x l) = ∑ k, Mh l k * s (A₀.orderEmbOfFin hA k)) ∧ (∀ j, s (A₀.orderEmbOfFin hA j) = ∑ l, Nh j l * algebraMap O _ (x l)) ∧ (∀ j l, Nh j l - algebraMap O _ (Nl j l) ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O)) ∧ IsUnit (Nl.map (IsLocalRing.residue O)).det :=
by
  intro O _ _ _ n r s A₀ x hA hreg hn hs hspan
  classical
  obtain ⟨hx, hli⟩ := wcpa_dj_scr_params O n r s A₀ x hreg hn hs hA hspan
  obtain ⟨hlev1, hlev2⟩ := wc_hnas_hs_completion_levels O
  set ι := algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) with hι
  have hrange : Set.range (fun k => s (A₀.orderEmbOfFin hA k)) = s '' (A₀ : Set (Fin n)) := by
    rw [← Finset.range_orderEmbOfFin A₀ hA, ← Set.range_comp]
    rfl
  have hspan' : Ideal.span (Set.range fun l => ι (x l)) =
      Ideal.span (Set.range fun k => s (A₀.orderEmbOfFin hA k)) := by
    rw [hrange]; exact hspan
  have hMex : ∀ l, ∃ c : Fin (r + 1) → AdicCompletion (IsLocalRing.maximalIdeal O) O,
      ∑ k, c k * s (A₀.orderEmbOfFin hA k) = ι (x l) := by
    intro l
    have hmem : ι (x l) ∈ Ideal.span (Set.range fun k => s (A₀.orderEmbOfFin hA k)) := by
      rw [← hspan']; exact Ideal.subset_span ⟨l, rfl⟩
    exact Ideal.mem_span_range_iff_exists_fun.mp hmem
  have hNex : ∀ j, ∃ c : Fin (r + 1) → AdicCompletion (IsLocalRing.maximalIdeal O) O,
      ∑ l, c l * ι (x l) = s (A₀.orderEmbOfFin hA j) := by
    intro j
    have hmem : s (A₀.orderEmbOfFin hA j) ∈ Ideal.span (Set.range fun l => ι (x l)) := by
      rw [hspan']; exact Ideal.subset_span ⟨j, rfl⟩
    exact Ideal.mem_span_range_iff_exists_fun.mp hmem
  choose Mh hMh using hMex
  choose Nh hNh using hNex
  choose ap hap using hlev1 1
  have hap' : ∀ c, c - ι (ap c) ∈ (IsLocalRing.maximalIdeal O).map ι := fun c => by
    simpa only [pow_one] using hap c
  have hJtop : (IsLocalRing.maximalIdeal O).map ι ≠ ⊤ := by
    intro htop
    have h1 : ι 1 ∈ Ideal.map ι (IsLocalRing.maximalIdeal O ^ 1) := by
      rw [pow_one, htop]; exact Submodule.mem_top
    have h2 := hlev2 1 1 h1
    rw [pow_one] at h2
    exact (inferInstance : (IsLocalRing.maximalIdeal O).IsMaximal).ne_top
      ((Ideal.eq_top_iff_one _).mpr h2)
  have hJle : (IsLocalRing.maximalIdeal O).map ι ≤
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    IsLocalRing.le_maximalIdeal hJtop
  have hQ : ∀ l, ι (x l) = ∑ j, (∑ k, Mh l k * Nh k j) * ι (x j) := by
    intro l
    rw [← hMh l]
    simp_rw [Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [← hNh k, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    ring
  obtain ⟨Ml, hMl⟩ : ∃ M : Matrix (Fin (r + 1)) (Fin (r + 1)) O, ∀ i k, M i k = ap (Mh i k) :=
    ⟨Matrix.of fun i k => ap (Mh i k), fun _ _ => rfl⟩
  obtain ⟨Nl, hNl⟩ : ∃ M : Matrix (Fin (r + 1)) (Fin (r + 1)) O, ∀ i k, M i k = ap (Nh i k) :=
    ⟨Matrix.of fun i k => ap (Nh i k), fun _ _ => rfl⟩
  have hres : ∀ l, x l - ∑ j, (Ml * Nl) l j * x j ∈ IsLocalRing.maximalIdeal O ^ 2 := by
    intro l
    apply hlev2 2
    have heq : ι (x l - ∑ j, (Ml * Nl) l j * x j) =
        ∑ j, (∑ k, (Mh l k * Nh k j - ι (ap (Mh l k) * ap (Nh k j)))) * ι (x j) := by
      rw [map_sub, map_sum, hQ l, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rw [Matrix.mul_apply, map_mul, map_sum, Finset.sum_sub_distrib]
      simp only [hMl, hNl]
      ring
    rw [heq, Ideal.map_pow, pow_two]
    refine Ideal.sum_mem _ (fun j _ => Ideal.mul_mem_mul ?_ (Ideal.mem_map_of_mem _ (hx j)))
    refine Ideal.sum_mem _ (fun k _ => ?_)
    have e : Mh l k * Nh k j - ι (ap (Mh l k) * ap (Nh k j)) =
        Mh l k * (Nh k j - ι (ap (Nh k j))) + (Mh l k - ι (ap (Mh l k))) * ι (ap (Nh k j)) := by
      rw [map_mul]; ring
    rw [e]
    exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ (hap' _)) (Ideal.mul_mem_right _ _ (hap' _))
  have hresid : ∀ l j, IsLocalRing.residue O ((Ml * Nl) l j) =
      (1 : Matrix (Fin (r + 1)) (Fin (r + 1)) (IsLocalRing.ResidueField O)) l j := by
    intro l
    obtain ⟨c, hc⟩ : ∃ c : Fin (r + 1) → O,
        ∀ j, c j = (Ml * Nl) l j - (1 : Matrix (Fin (r + 1)) (Fin (r + 1)) O) l j :=
      ⟨fun j => (Ml * Nl) l j - (1 : Matrix (Fin (r + 1)) (Fin (r + 1)) O) l j, fun _ => rfl⟩
    have hcsum : ∑ j, c j * x j = -(x l - ∑ j, (Ml * Nl) l j * x j) := by
      simp only [hc, sub_mul, Finset.sum_sub_distrib, Matrix.one_apply, ite_mul, one_mul,
        zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
      ring
    have hmem : ∑ j, c j * x j ∈ IsLocalRing.maximalIdeal O ^ 2 := by
      rw [hcsum]; exact Submodule.neg_mem _ (hres l)
    have hcm : ∑ j, c j * x j ∈ IsLocalRing.maximalIdeal O :=
      Ideal.sum_mem _ (fun j _ => Ideal.mul_mem_left _ _ (hx j))
    have h0 := (Ideal.toCotangent_eq_zero (IsLocalRing.maximalIdeal O) ⟨_, hcm⟩).mpr hmem
    have hsub : (⟨∑ j, c j * x j, hcm⟩ : IsLocalRing.maximalIdeal O) =
        ∑ j, c j • (⟨x j, hx j⟩ : IsLocalRing.maximalIdeal O) := by
      apply Subtype.ext
      simp [Submodule.coe_sum]
    rw [hsub, map_sum] at h0
    have key : ∑ j, IsLocalRing.residue O (c j) •
        (IsLocalRing.maximalIdeal O).toCotangent ⟨x j, hx j⟩ = 0 := by
      rw [← h0]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rw [map_smul]
      exact algebraMap_smul (IsLocalRing.ResidueField O) (c j) _
    intro j
    have hz := (Fintype.linearIndependent_iff.mp hli) (fun j => IsLocalRing.residue O (c j)) key j
    simp only [hc, map_sub] at hz
    rw [sub_eq_zero] at hz
    rw [hz, Matrix.one_apply, Matrix.one_apply]
    split_ifs <;> simp
  have hinv : Ml.map (IsLocalRing.residue O) * Nl.map (IsLocalRing.residue O) = 1 := by
    rw [← Matrix.map_mul]
    ext l j
    rw [Matrix.map_apply, hresid l j]
  refine ⟨Matrix.of Mh, Matrix.of Nh, Nl, fun l => (hMh l).symm, fun j => (hNh j).symm,
    fun j l => hJle ?_, Matrix.isUnit_det_of_left_inverse hinv⟩
  rw [hNl]
  exact hap' (Nh j l)

theorem wcpa_dj_scr_chart_B_regular : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] [IsDomain B] (r : ℕ) (x : Fin (r + 1) → O) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B), IsRegularLocalRing O → ∀ (hx : ∀ l, x l ∈ IsLocalRing.maximalIdeal O), LinearIndependent (IsLocalRing.ResidueField O) (fun l => (IsLocalRing.maximalIdeal O).toCotangent ⟨x l, hx l⟩) → Function.Injective φ → (∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O) → y a = 1 → (∀ l, φ (x l) = φ (x a) * y l) → (∀ b : B, ∃ G H : MvPolynomial (Fin (r + 1)) O, IsUnit (MvPolynomial.eval₂ φ y H) ∧ b * MvPolynomial.eval₂ φ y H = MvPolynomial.eval₂ φ y G) → (∀ G : MvPolynomial (Fin (r + 1)) O, MvPolynomial.eval₂ φ y G = 0 → G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) ⊔ Ideal.span {MvPolynomial.X a - 1}) → IsRegularLocalRing B :=
by
  intro O _ _ _ B _ _ _ _ r x a φ y hreg hx hli hφinj hφloc hya hy hfrac hker
  haveI := hreg
  have hxa0 : x a ≠ 0 := by
    intro h
    apply hli.ne_zero a
    have h' : (⟨x a, hx a⟩ : IsLocalRing.maximalIdeal O) = 0 := Subtype.ext h
    rw [h', map_zero]
  have hξ0 : φ (x a) ≠ 0 := fun h => hxa0 (hφinj (h.trans (map_zero φ).symm))
  have hξnzd : φ (x a) ∈ nonZeroDivisors B := mem_nonZeroDivisors_of_ne_zero hξ0
  have hξm : φ (x a) ∈ IsLocalRing.maximalIdeal B := (hφloc (x a)).mpr (hx a)
  have hIm : Ideal.span (Set.range x) ≤ IsLocalRing.maximalIdeal O := by
    rw [Ideal.span_le]
    rintro _ ⟨l, rfl⟩
    exact hx l
  obtain ⟨hC, -⟩ := wcpa_rs_quotient_regular O (r + 1) (fun l => ⟨x l, hx l⟩) hli
  have hC' : IsRegularLocalRing (O ⧸ Ideal.span (Set.range x)) := hC
  haveI := hC'
  have hM : (IsLocalRing.maximalIdeal O).map (Ideal.Quotient.mk (Ideal.span (Set.range x))) =
      IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x)) :=
    IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective
  have hIξ : (Ideal.span (Set.range x)).map φ = Ideal.span {φ (x a)} := by
    apply le_antisymm
    · rw [Ideal.map_span, Ideal.span_le]
      rintro _ ⟨_, ⟨l, rfl⟩, rfl⟩
      rw [SetLike.mem_coe, hy l]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
    · rw [Ideal.span_singleton_le_iff_mem]
      exact Ideal.mem_map_of_mem φ (Ideal.subset_span ⟨a, rfl⟩)
  obtain ⟨Q, hQ, e, hQc, -, -⟩ := wcpa_dj_scr_fibre_loc O B r x a φ y (Ideal.span (Set.range x))
    le_rfl hIm hφloc hya hy hfrac hker
  have hQc' : Q.comap MvPolynomial.C = IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x)) :=
    hQc.trans hM
  haveI := wcpa_dj_scr_poly_loc_regular (O ⧸ Ideal.span (Set.range x)) r Q hC' hQc'
  have e' : Localization.AtPrime Q ≃+* (B ⧸ Ideal.span {φ (x a)}) :=
    e.symm.trans (Ideal.quotEquivOfEq hIξ)
  have hBξ : IsRegularLocalRing (B ⧸ Ideal.span {φ (x a)}) :=
    IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q) e'
  haveI := hBξ
  have hd := IsRegularLocalRing.spanFinrank_maximalIdeal (R := B ⧸ Ideal.span {φ (x a)})
  exact (wc_odp_regular_lift_nzd B (φ (x a)) _ hξm hξnzd hBξ hd.symm).1

theorem wcpa_dj_sfp_nu_of_linindep : ∀ (R : Type u) [CommRing R] [IsLocalRing R] (p : ℕ) (g : Fin p → R) (hg : ∀ j, g j ∈ IsLocalRing.maximalIdeal R), LinearIndependent (IsLocalRing.ResidueField R) (fun j => (IsLocalRing.maximalIdeal R).toCotangent ⟨g j, hg j⟩) → ∀ ν : Fin p → R, ∑ j ∈ Finset.univ, ν j * g j ∈ IsLocalRing.maximalIdeal R ^ 2 → ∀ j ∈ Finset.univ, ν j ∈ IsLocalRing.maximalIdeal R :=
by
  intro R _ _ p g hg hli ν hν j _
  have hmem : (∑ i, ν i * g i) ∈ IsLocalRing.maximalIdeal R :=
    Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (hg i))
  have hsum : ∑ i, IsLocalRing.residue R (ν i) •
      (IsLocalRing.maximalIdeal R).toCotangent ⟨g i, hg i⟩ = 0 := by
    have h1 : ∀ i, IsLocalRing.residue R (ν i) •
        (IsLocalRing.maximalIdeal R).toCotangent ⟨g i, hg i⟩
        = (IsLocalRing.maximalIdeal R).toCotangent (ν i • ⟨g i, hg i⟩) := by
      intro i
      rw [map_smul]
      exact algebraMap_smul (IsLocalRing.ResidueField R) (ν i) _
    rw [Finset.sum_congr rfl (fun i _ => h1 i), ← map_sum]
    have h2 : (∑ i, ν i • (⟨g i, hg i⟩ : IsLocalRing.maximalIdeal R)) =
        ⟨∑ i, ν i * g i, hmem⟩ := by
      apply Subtype.ext
      simp [smul_eq_mul]
    rw [h2]
    exact (Ideal.toCotangent_eq_zero _ _).mpr hν
  have h3 := (Fintype.linearIndependent_iff.mp hli) (fun i => IsLocalRing.residue R (ν i)) hsum j
  exact (IsLocalRing.residue_eq_zero_iff _).mp h3

theorem wcpa_dj_sfp_fibre_eval : ∀ (O : Type u) [CommRing O] (B : Type u) [CommRing B] [IsLocalRing B] (r : ℕ) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B) (J : Ideal O) (Q : Ideal (MvPolynomial (Fin r) (O ⧸ J))) [Q.IsPrime] (e : (B ⧸ J.map φ) ≃+* Localization.AtPrime Q), J.map φ ≤ IsLocalRing.maximalIdeal B → y a = 1 → (∀ c : O, e (Ideal.Quotient.mk (J.map φ) (φ c)) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q) (MvPolynomial.C (Ideal.Quotient.mk J c))) → (∀ i : Fin r, e (Ideal.Quotient.mk (J.map φ) (y (a.succAbove i))) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q) (MvPolynomial.X i)) → (∀ c : Fin (r + 1) → O, e (Ideal.Quotient.mk (J.map φ) (∑ l, φ (c l) * y l)) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q) (∑ l, MvPolynomial.C (Ideal.Quotient.mk J (c l)) * Fin.insertNth (α := fun _ => MvPolynomial (Fin r) (O ⧸ J)) a 1 MvPolynomial.X l)) ∧ ∀ b : B, b ∈ IsLocalRing.maximalIdeal B ↔ e (Ideal.Quotient.mk (J.map φ) b) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) :=
by
  intro O _ B _ _ r a φ y J Q _ e _ hya hC hX
  obtain ⟨ψ, hψa⟩ : ∃ ψ : B →+* Localization.AtPrime Q,
      ∀ b, ψ b = e (Ideal.Quotient.mk (J.map φ) b) :=
    ⟨(e : B ⧸ J.map φ →+* Localization.AtPrime Q).comp (Ideal.Quotient.mk (J.map φ)),
      fun b => rfl⟩
  have hψsurj : Function.Surjective ψ := by
    intro z
    obtain ⟨w, rfl⟩ := e.surjective z
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective w
    exact ⟨b, hψa b⟩
  have hy : ∀ l, ψ (y l) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q)
      (Fin.insertNth (α := fun _ => MvPolynomial (Fin r) (O ⧸ J)) a 1 MvPolynomial.X l) := by
    intro l
    rcases Fin.eq_self_or_eq_succAbove a l with h | ⟨i, h⟩
    · rw [h, Fin.insertNth_apply_same, hya, map_one, map_one]
    · rw [h, Fin.insertNth_apply_succAbove, hψa, hX i]
  refine ⟨fun c => ?_, fun b => ⟨fun hb => ?_, fun hb => ?_⟩⟩
  · rw [← hψa, map_sum, map_sum]
    refine Finset.sum_congr rfl (fun l _ => ?_)
    rw [map_mul, map_mul, hy l, hψa, hC]
  · rw [← hψa]
    by_contra hn
    obtain ⟨v, hv⟩ := IsLocalRing.notMem_maximalIdeal.mp hn
    obtain ⟨c, hc⟩ := hψsurj (↑v⁻¹ : Localization.AtPrime Q)
    have hbc : b * c ∈ IsLocalRing.maximalIdeal B := Ideal.mul_mem_right c _ hb
    have h1 : (1 - b * c) ∉ IsLocalRing.maximalIdeal B := by
      intro h1
      apply (IsLocalRing.maximalIdeal.isMaximal B).ne_top
      rw [Ideal.eq_top_iff_one]
      have := Ideal.add_mem _ h1 hbc
      rwa [sub_add_cancel] at this
    have hu := (IsLocalRing.notMem_maximalIdeal.mp h1).map ψ
    have h0 : ψ (1 - b * c) = 0 := by
      rw [map_sub, map_one, map_mul, hc, ← hv, Units.mul_inv, sub_self]
    rw [h0] at hu
    exact not_isUnit_zero hu
  · by_contra hn
    rw [← hψa] at hb
    exact IsLocalRing.notMem_maximalIdeal.mpr ((IsLocalRing.notMem_maximalIdeal.mp hn).map ψ) hb

theorem wcpa_dj_sfp_j0 : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (B : Type u) [CommRing B] [IsLocalRing B] (r : ℕ) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B) (Nl : Matrix (Fin (r + 1)) (Fin (r + 1)) O), (∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O) → y a = 1 → IsUnit (Nl.map (IsLocalRing.residue O)).det → ∃ j₀ : Fin (r + 1), ∑ l, φ (Nl j₀ l) * y l ∉ IsLocalRing.maximalIdeal B :=
by
  intro O _ _ B _ _ r a φ y Nl hφ hya hdet
  by_contra hcon
  push_neg at hcon
  have hw : ∀ j, ((Nl.map φ).mulVec y) j ∈ IsLocalRing.maximalIdeal B := fun j => hcon j
  have key : ((Nl.map φ).adjugate.mulVec ((Nl.map φ).mulVec y)) a = (Nl.map φ).det := by
    rw [Matrix.mulVec_mulVec, Matrix.adjugate_mul]
    show ∑ j, ((Nl.map φ).det • (1 : Matrix (Fin (r + 1)) (Fin (r + 1)) B)) a j * y j = _
    simp [Matrix.smul_apply, Matrix.one_apply, hya]
  have hmem : ((Nl.map φ).adjugate.mulVec ((Nl.map φ).mulVec y)) a ∈
      IsLocalRing.maximalIdeal B := by
    show ∑ j, (Nl.map φ).adjugate a j * ((Nl.map φ).mulVec y) j ∈ IsLocalRing.maximalIdeal B
    exact Ideal.sum_mem _ (fun j _ => Ideal.mul_mem_left _ _ (hw j))
  have e1 : (Nl.map φ).det = φ Nl.det := (RingHom.map_det φ Nl).symm
  rw [key, e1] at hmem
  have h1 : Nl.det ∈ IsLocalRing.maximalIdeal O := (hφ _).mp hmem
  have e2 : (Nl.map (IsLocalRing.residue O)).det = IsLocalRing.residue O Nl.det :=
    (RingHom.map_det (IsLocalRing.residue O) Nl).symm
  rw [e2, (IsLocalRing.residue_eq_zero_iff _).mpr h1] at hdet
  exact not_isUnit_zero hdet

theorem wcpa_dj_scr_fibre_params : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (n r : ℕ) (x : Fin (r + 1) → O) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B) (Nl : Matrix (Fin (r + 1)) (Fin (r + 1)) O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → ∀ (hx : ∀ l, x l ∈ IsLocalRing.maximalIdeal O), LinearIndependent (IsLocalRing.ResidueField O) (fun l => (IsLocalRing.maximalIdeal O).toCotangent ⟨x l, hx l⟩) → IsRegularLocalRing B → φ (x a) ∈ nonZeroDivisors B → (∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O) → y a = 1 → (∀ l, φ (x l) = φ (x a) * y l) → (∀ b : B, ∃ G H : MvPolynomial (Fin (r + 1)) O, IsUnit (MvPolynomial.eval₂ φ y H) ∧ b * MvPolynomial.eval₂ φ y H = MvPolynomial.eval₂ φ y G) → (∀ G : MvPolynomial (Fin (r + 1)) O, MvPolynomial.eval₂ φ y G = 0 → G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) ⊔ Ideal.span {MvPolynomial.X a - 1}) → IsUnit (Nl.map (IsLocalRing.residue O)).det → ∃ (j₀ : Fin (r + 1)) (A'' : Finset (Fin (r + 1))) (q : ℕ) (u : Fin q → B), j₀ ∉ A'' ∧ (∀ j, j ∈ A'' ↔ ∑ l, φ (Nl j l) * y l ∈ IsLocalRing.maximalIdeal B) ∧ ringKrullDim B = ((1 + (n - (r + 1)) + A''.card + q : ℕ) : WithBot ℕ∞) ∧ IsLocalRing.maximalIdeal B = Ideal.map φ (IsLocalRing.maximalIdeal O) ⊔ Ideal.span ((fun j => ∑ l, φ (Nl j l) * y l) '' (A'' : Set (Fin (r + 1)))) ⊔ Ideal.span (Set.range u) :=
by
  intro O _ _ _ B _ _ _ n r x a φ y Nl hO hn hx hli _ hξnzd hφloc hya hy hfrac hker hNl
  classical
  have := hO

  have hI : Ideal.span (Set.range x) ≤ IsLocalRing.maximalIdeal O := by
    rw [Ideal.span_le]
    rintro _ ⟨l, rfl⟩
    exact hx l
  have hsn : Submodule.spanFinrank (IsLocalRing.maximalIdeal O) = n := by
    have h := (IsRegularLocalRing.spanFinrank_maximalIdeal (R := O)).trans hn.symm
    exact_mod_cast h
  have hnu := wcpa_dj_sfp_nu_of_linindep O (r + 1) x hx hli
  obtain ⟨m, t, hmc, ht𝔪, h𝔪⟩ :=
    wcpa_dj_sfp_cot_extend O (r + 1) x Finset.univ (fun j _ => hx j) hnu
  rw [Finset.card_univ, Fintype.card_fin, hsn] at hmc
  have hm : r + 1 + m = n := hmc
  have h𝔪' : IsLocalRing.maximalIdeal O = Ideal.span (Set.range x) ⊔ Ideal.span (Set.range t) := by
    rw [h𝔪, Finset.coe_univ, Set.image_univ]
  have hreg_t := wcpa_dj_sfp_quot_regseq O n r m x t hO hn hx hli hm h𝔪'
  have hξ𝔪 : φ (x a) ∈ IsLocalRing.maximalIdeal B := (hφloc (x a)).mpr (hx a)

  have hIξ : (Ideal.span (Set.range x)).map φ = Ideal.span {φ (x a)} := by
    apply le_antisymm
    · rw [Ideal.map_span, Ideal.span_le]
      rintro _ ⟨_, ⟨l, rfl⟩, rfl⟩
      rw [SetLike.mem_coe, hy l]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
    · rw [Ideal.span_singleton_le_iff_mem]
      exact Ideal.mem_map_of_mem φ (Ideal.subset_span ⟨a, rfl⟩)
  have h𝔪B : (IsLocalRing.maximalIdeal O).map φ =
      Ideal.span {φ (x a)} ⊔ Ideal.span (Set.range fun i => φ (t i)) := by
    rw [h𝔪', Ideal.map_sup, hIξ, Ideal.map_span, ← Set.range_comp]
    rfl

  obtain ⟨QI, hQI, eI, -, hCI, -⟩ := wcpa_dj_scr_fibre_loc O B r x a φ y
    (Ideal.span (Set.range x)) le_rfl hI hφloc hya hy hfrac hker
  have hξle : Ideal.span {φ (x a)} ≤ IsLocalRing.maximalIdeal B :=
    (Ideal.span_singleton_le_iff_mem _).mpr hξ𝔪
  haveI : Nontrivial (B ⧸ Ideal.span {φ (x a)}) :=
    Ideal.Quotient.nontrivial_iff.mpr (ne_top_of_le_ne_top (IsLocalRing.maximalIdeal.isMaximal B).ne_top hξle)
  haveI : IsLocalRing (B ⧸ Ideal.span {φ (x a)}) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective
  have hmapD : (IsLocalRing.maximalIdeal B).map (Ideal.Quotient.mk (Ideal.span {φ (x a)})) =
      IsLocalRing.maximalIdeal (B ⧸ Ideal.span {φ (x a)}) :=
    IsLocalRing.map_maximalIdeal_of_surjective _ Ideal.Quotient.mk_surjective
  have hdimD := wcpa_dj_sfp_regseq_dim (O ⧸ Ideal.span (Set.range x)) r m
    (fun i => Ideal.Quotient.mk _ (t i)) QI (B ⧸ Ideal.span {φ (x a)})
    ((Ideal.quotEquivOfEq hIξ).symm.trans eI)
    (fun i => Ideal.Quotient.mk _ (φ (t i))) hreg_t
    (by
      intro i
      rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_symm, Ideal.quotEquivOfEq_mk]
      exact hCI (t i))
    (by
      intro i
      rw [← hmapD]
      exact Ideal.mem_map_of_mem _ ((hφloc (t i)).mpr (ht𝔪 i)))
  have h1 := ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors
    hξnzd hξ𝔪
  have h2 : ringKrullDim ((B ⧸ Ideal.span {φ (x a)}) ⧸ Ideal.span (Set.range fun i =>
      Ideal.Quotient.mk (Ideal.span {φ (x a)}) (φ (t i)))) =
      ringKrullDim (B ⧸ (IsLocalRing.maximalIdeal O).map φ) := by
    have e1 : Ideal.span (Set.range fun i => Ideal.Quotient.mk (Ideal.span {φ (x a)}) (φ (t i))) =
        (Ideal.span (Set.range fun i => φ (t i))).map (Ideal.Quotient.mk _) := by
      rw [Ideal.map_span, ← Set.range_comp]
      rfl
    rw [e1]
    exact ringKrullDim_eq_of_ringEquiv
      ((DoubleQuot.quotQuotEquivQuotSup _ _).trans (Ideal.quotEquivOfEq h𝔪B.symm))
  have hDim : ringKrullDim B = ringKrullDim (B ⧸ (IsLocalRing.maximalIdeal O).map φ) +
      ((m + 1 : ℕ) : WithBot ℕ∞) := by
    rw [← h1, ← hdimD, h2, Nat.cast_add, Nat.cast_one, add_assoc]

  obtain ⟨Q', hQ', e', hQ'c, hC', hX'⟩ := wcpa_dj_scr_fibre_loc O B r x a φ y
    (IsLocalRing.maximalIdeal O) hI le_rfl hφloc hya hy hfrac hker
  haveI hκ : IsRegularLocalRing (O ⧸ IsLocalRing.maximalIdeal O) :=
    inferInstanceAs (IsRegularLocalRing (IsLocalRing.ResidueField O))
  have hmax : (IsLocalRing.maximalIdeal O).map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O)) =
      IsLocalRing.maximalIdeal (O ⧸ IsLocalRing.maximalIdeal O) :=
    IsLocalRing.map_maximalIdeal_of_surjective _ Ideal.Quotient.mk_surjective
  haveI hFreg := wcpa_dj_scr_poly_loc_regular (O ⧸ IsLocalRing.maximalIdeal O) r Q' hκ
    (hQ'c.trans hmax)
  have hK𝔪 : (IsLocalRing.maximalIdeal O).map φ ≤ IsLocalRing.maximalIdeal B :=
    Ideal.map_le_iff_le_comap.mpr (fun c hc => (hφloc c).mpr hc)
  obtain ⟨hev, hmem⟩ := wcpa_dj_sfp_fibre_eval O B r a φ y (IsLocalRing.maximalIdeal O) Q' e'
    hK𝔪 hya hC' hX'
  obtain ⟨j₀, hj₀⟩ := wcpa_dj_sfp_j0 O B r a φ y Nl hφloc hya hNl
  obtain ⟨A'', hA''⟩ : ∃ A'' : Finset (Fin (r + 1)), A'' = Finset.univ.filter
      (fun j => ∑ l, φ (Nl j l) * y l ∈ IsLocalRing.maximalIdeal B) := ⟨_, rfl⟩
  have hA''iff : ∀ j, j ∈ A'' ↔ ∑ l, φ (Nl j l) * y l ∈ IsLocalRing.maximalIdeal B := by
    intro j
    rw [hA'', Finset.mem_filter]
    simp

  have hNb : IsUnit (Nl.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O))).det := hNl
  have hevj : ∀ j, e' (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal O).map φ)
      (∑ l, φ (Nl j l) * y l)) =
      algebraMap (MvPolynomial (Fin r) (O ⧸ IsLocalRing.maximalIdeal O)) (Localization.AtPrime Q')
        (∑ l, MvPolynomial.C ((Nl.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O))) j l) *
          Fin.insertNth (α := fun _ => MvPolynomial (Fin r) (O ⧸ IsLocalRing.maximalIdeal O))
            a 1 MvPolynomial.X l) :=
    fun j => hev (Nl j)
  have hwQ : ∀ j ∈ A'', (∑ l, MvPolynomial.C ((Nl.map (Ideal.Quotient.mk
      (IsLocalRing.maximalIdeal O))) j l) *
      Fin.insertNth (α := fun _ => MvPolynomial (Fin r) (O ⧸ IsLocalRing.maximalIdeal O))
        a 1 MvPolynomial.X l) ∈ Q' := by
    intro j hj
    have h := (hmem _).mp ((hA''iff j).mp hj)
    rw [hevj j] at h
    exact (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q') Q' _).mp h
  have hnuF := wcpa_dj_sfp_fibre_cot_indep (O ⧸ IsLocalRing.maximalIdeal O) r a
    (Nl.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O))) Q' A'' hNb hwQ
  have hFnoeth : IsNoetherianRing (Localization.AtPrime Q') := hFreg.toIsNoetherian
  have hce := wcpa_dj_sfp_cot_extend (Localization.AtPrime Q') (r + 1)
    (fun j => algebraMap (MvPolynomial (Fin r) (O ⧸ IsLocalRing.maximalIdeal O))
      (Localization.AtPrime Q')
        (∑ l, MvPolynomial.C ((Nl.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O))) j l) *
          Fin.insertNth (α := fun _ => MvPolynomial (Fin r) (O ⧸ IsLocalRing.maximalIdeal O))
            a 1 MvPolynomial.X l)) A''
    (fun j hj => (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q') Q' _).mpr
      (hwQ j hj)) hnuF
  choose q wF hcard hwF𝔪 hspanF using hce
  obtain ⟨u, hu⟩ := wcpa_dj_sfp_lift_gens B (Localization.AtPrime Q')
    ((IsLocalRing.maximalIdeal O).map φ) e' (r + 1) (fun j => ∑ l, φ (Nl j l) * y l) _ A'' q wF
    hK𝔪 hevj (fun j hj => (hA''iff j).mp hj) hwF𝔪 hspanF

  have hdF : ringKrullDim (Localization.AtPrime Q') = ((A''.card + q : ℕ) : WithBot ℕ∞) := by
    rw [← @IsRegularLocalRing.spanFinrank_maximalIdeal _ _ hFreg, ← hcard]
  have hdB𝔪 : ringKrullDim (B ⧸ (IsLocalRing.maximalIdeal O).map φ) =
      ringKrullDim (Localization.AtPrime Q') := ringKrullDim_eq_of_ringEquiv e'
  refine ⟨j₀, A'', q, u, fun h => hj₀ ((hA''iff j₀).mp h), hA''iff, ?_, hu⟩
  rw [hDim, hdB𝔪, hdF, ← Nat.cast_add]
  congr 1
  omega

theorem wcpa_dj_scr_completion_coords : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (n r : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (A₀ : Finset (Fin n)) (hA : A₀.card = r + 1) (x : Fin (r + 1) → O) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B) (Nh : Matrix (Fin (r + 1)) (Fin (r + 1)) (AdicCompletion (IsLocalRing.maximalIdeal O) O)) (Nl : Matrix (Fin (r + 1)) (Fin (r + 1)) O) (j₀ : Fin (r + 1)) (A'' : Finset (Fin (r + 1))) (q : ℕ) (u : Fin q → B), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → (∀ l, x l ∈ IsLocalRing.maximalIdeal O) → (∀ j, s (A₀.orderEmbOfFin hA j) = ∑ l, Nh j l * algebraMap O _ (x l)) → (∀ j l, Nh j l - algebraMap O _ (Nl j l) ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → (∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O) → φ (x a) ∈ nonZeroDivisors B → (∀ l, φ (x l) = φ (x a) * y l) → j₀ ∉ A'' → (∀ j, j ∈ A'' ↔ ∑ l, φ (Nl j l) * y l ∈ IsLocalRing.maximalIdeal B) → ringKrullDim B = ((1 + (n - (r + 1)) + A''.card + q : ℕ) : WithBot ℕ∞) → IsLocalRing.maximalIdeal B = Ideal.map φ (IsLocalRing.maximalIdeal O) ⊔ Ideal.span ((fun j => ∑ l, φ (Nl j l) * y l) '' (A'' : Set (Fin (r + 1)))) ⊔ Ideal.span (Set.range u) → ∃ (φh : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* AdicCompletion (IsLocalRing.maximalIdeal B) B) (n' : ℕ) (s' : Fin n' → AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ : Fin n → Fin n') (e : Fin n') (A' : Finset (Fin n')), (∀ c : O, φh (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) = algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (φ c)) ∧ (n' : WithBot ℕ∞) = ringKrullDim B ∧ Ideal.span (Set.range s') = (IsLocalRing.maximalIdeal B).map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) ∧ (∀ j, j ∉ A₀ → s' (τ j) = φh (s j)) ∧ Set.InjOn τ (↑A₀)ᶜ ∧ e ∉ τ '' (↑A₀)ᶜ ∧ e ∉ A' ∧ Disjoint (A' : Set (Fin n')) (τ '' (↑A₀)ᶜ) ∧ A'.card ≤ r ∧ Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (φ (x a))) (s' e) ∧ ∀ h : B, Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (φ (x a) ^ (r + 1) * h)) (φh (∏ j ∈ A₀, s j)) → Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) h) (∏ k ∈ A', s' k) :=
by
  intro O _ _ _ B _ _ _ n r s A₀ hA x a φ y Nh Nl j₀ A'' q u _ _ hs hx hNh hNhl hloc hnzd hy hj₀
    hA'' hdim hmax
  classical

  have L2 : ∀ (P : Type u) [CommRing P] [IsLocalRing P] [IsNoetherianRing P],
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) =
        (IsLocalRing.maximalIdeal P).map
          (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) := by
    intro P _ _ _
    have hsup : (IsLocalRing.maximalIdeal P).map
        (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) ≤
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
      rw [Ideal.map_le_iff_le_comap]
      intro p hp
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      have h1 := hu.map (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal P) 1)
      have hp1 : p ∈ IsLocalRing.maximalIdeal P ^ 1 := by rw [pow_one]; exact hp
      rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem.mpr hp1,
        isUnit_zero_iff, Ideal.Quotient.zero_eq_one_iff, pow_one] at h1
      exact (IsLocalRing.maximalIdeal.isMaximal P).ne_top h1
    refine le_antisymm ?_ hsup
    intro c hc
    obtain ⟨p, hp⟩ : ∃ p : P, c - algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p ∈
        Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
          (IsLocalRing.maximalIdeal P ^ 1) := by
      have hfg : (IsLocalRing.maximalIdeal P).FG := IsNoetherian.noetherian _
      have hmem1 : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal P) P,
          AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1 b = 0 →
          b ∈ Ideal.map (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P))
            (IsLocalRing.maximalIdeal P ^ 1) := by
        intro b hb
        have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := P) (n := 1) hfg
        have h2 := Ideal.smul_top_eq_map (S := AdicCompletion (IsLocalRing.maximalIdeal P) P)
          (IsLocalRing.maximalIdeal P ^ 1)
        have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
        rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
        exact h3.mpr hb
      have hof : ∀ p : P, AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1
          (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p) =
          Submodule.Quotient.mk p := by
        intro p
        change AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1
          (AdicCompletion.of (IsLocalRing.maximalIdeal P) P p) = _
        rw [AdicCompletion.eval_of]
        rfl
      obtain ⟨p, hp⟩ := Submodule.Quotient.mk_surjective _
        (AdicCompletion.eval (IsLocalRing.maximalIdeal P) P 1 c)
      refine ⟨p, hmem1 _ ?_⟩
      rw [map_sub, hof, hp, sub_self]
    rw [pow_one] at hp
    have hpm : p ∈ IsLocalRing.maximalIdeal P := by
      by_contra hpn
      have hu : IsUnit p := by
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, not_not] at hpn; exact hpn
      have hmem : algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P) p ∈
          IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
        have h2 := sub_mem hc (hsup hp)
        rwa [sub_sub_cancel] at h2
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hmem
      exact hmem (hu.map _)
    have h3 := add_mem hp
      (Ideal.mem_map_of_mem (algebraMap P (AdicCompletion (IsLocalRing.maximalIdeal P) P)) hpm)
    rwa [sub_add_cancel] at h3

  have hφm : (IsLocalRing.maximalIdeal O).map φ ≤ IsLocalRing.maximalIdeal B := by
    rw [Ideal.map_le_iff_le_comap]
    intro c hc
    exact (hloc c).mpr hc
  obtain ⟨φh, hφh⟩ : ∃ φh : AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
      AdicCompletion (IsLocalRing.maximalIdeal B) B, ∀ c : O,
      φh (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) =
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (φ c) := by
    have hk : ∀ k : ℕ, IsLocalRing.maximalIdeal O ^ k ≤
        (IsLocalRing.maximalIdeal B ^ k).comap φ := fun k => by
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
      exact Ideal.pow_right_mono hφm k
    let f : (k : ℕ) → AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
        B ⧸ IsLocalRing.maximalIdeal B ^ k := fun k =>
      (Ideal.quotientMap (IsLocalRing.maximalIdeal B ^ k) φ (hk k)).comp
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k).toRingHom
    have hf : ∀ {m k : ℕ} (hle : m ≤ k),
        (Ideal.Quotient.factorPow (IsLocalRing.maximalIdeal B) hle).comp (f k) = f m := by
      intro m k hle
      refine RingHom.ext fun z => ?_
      obtain ⟨c, rfl⟩ := AdicCompletion.mk_surjective (IsLocalRing.maximalIdeal O) O z
      show Ideal.Quotient.factorPow (IsLocalRing.maximalIdeal B) hle
          (Ideal.quotientMap _ φ (hk k) (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k
            (AdicCompletion.mk _ _ c))) =
        Ideal.quotientMap _ φ (hk m) (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) m
          (AdicCompletion.mk _ _ c))
      rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk,
        ← AdicCompletion.Ideal.mk_eq_mk _ hle c, Ideal.quotientMap_mk, Ideal.quotientMap_mk]
      rfl
    refine ⟨AdicCompletion.liftRingHom (IsLocalRing.maximalIdeal B) f hf, fun c => ?_⟩
    apply AdicCompletion.ext_evalₐ
    intro k
    rw [AdicCompletion.evalₐ_liftRingHom]
    show Ideal.quotientMap _ φ (hk k) (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k
      (algebraMap O _ c)) = _
    rw [AlgHom.commutes, AlgHom.commutes, Ideal.Quotient.algebraMap_eq,
      Ideal.Quotient.algebraMap_eq, Ideal.quotientMap_mk]

  obtain ⟨ζ, hζ⟩ : ∃ ζ : AdicCompletion (IsLocalRing.maximalIdeal B) B,
      ζ = algebraMap B _ (φ (x a)) := ⟨_, rfl⟩
  obtain ⟨t, ht⟩ : ∃ t : Fin n → AdicCompletion (IsLocalRing.maximalIdeal B) B,
      ∀ j, t j = φh (s j) := ⟨_, fun _ => rfl⟩
  obtain ⟨V, hV⟩ : ∃ V : Fin (r + 1) → AdicCompletion (IsLocalRing.maximalIdeal B) B,
      ∀ k, V k = ∑ l, φh (Nh k l) * algebraMap B _ (y l) := ⟨_, fun _ => rfl⟩
  obtain ⟨W, hW⟩ : ∃ W : Fin (r + 1) → AdicCompletion (IsLocalRing.maximalIdeal B) B,
      ∀ k, W k = algebraMap B _ (∑ l, φ (Nl k l) * y l) := ⟨_, fun _ => rfl⟩

  have hφhι : φh.comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)).comp φ := RingHom.ext hφh
  have hrt : Set.range t = φh '' Set.range s := by
    ext z; constructor
    · rintro ⟨j, rfl⟩; exact ⟨s j, ⟨j, rfl⟩, (ht j).symm⟩
    · rintro ⟨_, ⟨j, rfl⟩, rfl⟩; exact ⟨j, ht j⟩
  have hK1 : Ideal.span (Set.range t) = Ideal.map φh
      (Ideal.map (algebraMap O _) (IsLocalRing.maximalIdeal O)) := by
    rw [hrt, ← Ideal.map_span, hs]
  have hK : Ideal.span (Set.range t) = Ideal.map
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))
      (Ideal.map φ (IsLocalRing.maximalIdeal O)) := by
    rw [hK1, Ideal.map_map, hφhι, ← Ideal.map_map]
  have hKO : ∀ d ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O),
      φh d ∈ Ideal.span (Set.range t) := by
    intro d hd
    rw [L2 O] at hd
    rw [hK1]
    exact Ideal.mem_map_of_mem _ hd
  have hKm : Ideal.span (Set.range t) ≤
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal B) B) := by
    rw [hK, L2 B]
    exact Ideal.map_mono hφm
  have hζK : ζ ∈ Ideal.span (Set.range t) := by
    rw [hK, hζ]
    exact Ideal.mem_map_of_mem _ (Ideal.mem_map_of_mem _ (hx a))
  have htV : ∀ k, t (A₀.orderEmbOfFin hA k) = ζ * V k := by
    intro k
    rw [ht, hNh k, map_sum, hV, Finset.mul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [map_mul, hφh, hy l, map_mul, hζ]; ring
  have hVW : ∀ k, V k - W k ∈ Ideal.span (Set.range t) := by
    intro k
    have hdiff : V k - W k = ∑ l, φh (Nh k l - algebraMap O _ (Nl k l)) *
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (y l) := by
      rw [hV, hW, map_sum, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [map_sub, hφh, map_mul, sub_mul]
    rw [hdiff]
    exact Ideal.sum_mem _ fun l _ => Ideal.mul_mem_right _ _ (hKO _ (hNhl k l))
  have hVunit : ∀ k, k ∉ A'' → IsUnit (V k) := by
    intro k hk
    have hv : IsUnit (∑ l, φ (Nl k l) * y l) := by
      have h0 := (hA'' k).not.mp hk
      rwa [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, not_not] at h0
    have hWu : IsUnit (W k) := by rw [hW]; exact hv.map _
    by_contra hVn
    have hVm : V k ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal B) B) := by
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]; exact hVn
    have hWm : W k ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal B) B) := by
      have h0 := sub_mem hVm (hKm (hVW k))
      rwa [sub_sub_cancel] at h0
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hWm
    exact hWm hWu
  have hcancel : ∀ z₁ z₂ : AdicCompletion (IsLocalRing.maximalIdeal B) B,
      ζ ^ (r + 1) * z₁ = ζ ^ (r + 1) * z₂ → z₁ = z₂ := by
    intro z₁ z₂ hz
    have h1 : IsSMulRegular (AdicCompletion (IsLocalRing.maximalIdeal B) B) (φ (x a)) :=
      Module.Flat.isSMulRegular_of_nonZeroDivisors hnzd
    have hreg' := h1.pow (r + 1)
    have h2 : (φ (x a) ^ (r + 1)) • z₁ = (φ (x a) ^ (r + 1)) • z₂ := by
      rw [Algebra.smul_def, Algebra.smul_def, map_pow, ← hζ]; exact hz
    exact hreg' h2

  obtain ⟨c, hc⟩ : ∃ c, A₀ᶜ.card = c := ⟨_, rfl⟩
  have hcn : c = n - (r + 1) := by rw [← hc, Finset.card_compl, Fintype.card_fin, hA]
  obtain ⟨s', hs'⟩ : ∃ s' : Fin (1 + c + A''.card + q) →
      AdicCompletion (IsLocalRing.maximalIdeal B) B,
      s' = Fin.append (Fin.append (Fin.append (fun _ : Fin 1 => ζ)
        (fun i : Fin c => t ((A₀ᶜ.orderIsoOfFin hc i : Fin n))))
        (fun i : Fin A''.card => V ((A''.orderIsoOfFin rfl i : Fin (r + 1)))))
        (fun i : Fin q => algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (u i)) :=
    ⟨_, rfl⟩
  let e : Fin (1 + c + A''.card + q) :=
    Fin.castAdd q (Fin.castAdd A''.card (Fin.castAdd c (0 : Fin 1)))
  let it : Fin c → Fin (1 + c + A''.card + q) := fun i =>
    Fin.castAdd q (Fin.castAdd A''.card (Fin.natAdd 1 i))
  let iV : Fin A''.card → Fin (1 + c + A''.card + q) := fun i =>
    Fin.castAdd q (Fin.natAdd (1 + c) i)
  let iw : Fin q → Fin (1 + c + A''.card + q) := fun i => Fin.natAdd (1 + c + A''.card) i
  have hve : (e : ℕ) = 0 := by simp [e]
  have hvit : ∀ i, (it i : ℕ) = 1 + i := by intro i; simp [it]
  have hviV : ∀ i, (iV i : ℕ) = 1 + c + i := by intro i; simp [iV]
  have hs'e : s' e = ζ := by rw [hs']; simp [e]
  have hs'it : ∀ i, s' (it i) = t ((A₀ᶜ.orderIsoOfFin hc i : Fin n)) := by
    intro i; rw [hs']; simp [it]
  have hs'iV : ∀ i, s' (iV i) = V ((A''.orderIsoOfFin rfl i : Fin (r + 1))) := by
    intro i; rw [hs']; simp [iV]
  have hs'iw : ∀ i, s' (iw i) =
      algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (u i) := by
    intro i; rw [hs']; simp [iw]
  let τ : Fin n → Fin (1 + c + A''.card + q) := fun j =>
    if hj : j ∈ A₀ then e else it ((A₀ᶜ.orderIsoOfFin hc).symm ⟨j, Finset.mem_compl.mpr hj⟩)
  have hτ : ∀ j (hj : j ∉ A₀),
      τ j = it ((A₀ᶜ.orderIsoOfFin hc).symm ⟨j, Finset.mem_compl.mpr hj⟩) := by
    intro j hj; simp only [τ, dif_neg hj]
  have hs'τ : ∀ j, j ∉ A₀ → s' (τ j) = t j := by
    intro j hj
    rw [hτ j hj, hs'it, OrderIso.apply_symm_apply]
  have hτlt : ∀ j, j ∉ A₀ → 1 ≤ (τ j : ℕ) ∧ (τ j : ℕ) < 1 + c := by
    intro j hj
    rw [hτ j hj, hvit]
    have := ((A₀ᶜ.orderIsoOfFin hc).symm ⟨j, Finset.mem_compl.mpr hj⟩).isLt
    exact ⟨by omega, by omega⟩
  let A' : Finset (Fin (1 + c + A''.card + q)) := Finset.univ.image iV
  have hiVinj : Function.Injective iV := by
    intro i₁ i₂ h
    have h0 := congrArg Fin.val h
    rw [hviV, hviV] at h0
    exact Fin.ext (by omega)
  have hA'mem : ∀ z ∈ A', 1 + c ≤ (z : ℕ) := by
    intro z hz
    obtain ⟨i, -, rfl⟩ := Finset.mem_image.mp hz
    rw [hviV]; omega
  refine ⟨φh, 1 + c + A''.card + q, s', τ, e, A', hφh, ?_, ?_,
    fun j hj => (hs'τ j hj).trans (ht j), ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hdim, hcn]
  ·
    have hmapB := congrArg
      (Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))) hmax
    rw [hmapB, Ideal.map_sup, Ideal.map_sup, Ideal.map_span, Ideal.map_span, ← hK]
    have hζL : ζ ∈ Ideal.span (Set.range s') := by
      rw [← hs'e]; exact Ideal.subset_span ⟨e, rfl⟩
    have htL : Ideal.span (Set.range t) ≤ Ideal.span (Set.range s') := by
      rw [Ideal.span_le]
      rintro _ ⟨j, rfl⟩
      by_cases hj : j ∈ A₀
      · have hjr : j ∈ Set.range (A₀.orderEmbOfFin hA) := by
          rw [Finset.range_orderEmbOfFin]; exact hj
        obtain ⟨k, rfl⟩ := hjr
        rw [htV]
        exact Ideal.mul_mem_right _ _ hζL
      · rw [← hs'τ j hj]
        exact Ideal.subset_span ⟨τ j, rfl⟩
    have hVL : ∀ k ∈ A'', V k ∈ Ideal.span (Set.range s') := by
      intro k hk
      have hk' : V k = s' (iV ((A''.orderIsoOfFin rfl).symm ⟨k, hk⟩)) := by
        rw [hs'iV, OrderIso.apply_symm_apply]
      rw [hk']; exact Ideal.subset_span ⟨_, rfl⟩
    have hVR : ∀ k ∈ A'', V k ∈ Ideal.span (Set.range t) ⊔
        Ideal.span (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) ''
          ((fun j => ∑ l, φ (Nl j l) * y l) '' (A'' : Set (Fin (r + 1))))) ⊔
        Ideal.span (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) ''
          Set.range u) := by
      intro k hk
      have hWmem : W k ∈ Ideal.span (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) ''
          ((fun j => ∑ l, φ (Nl j l) * y l) '' (A'' : Set (Fin (r + 1))))) := by
        rw [hW]
        exact Ideal.subset_span (Set.mem_image_of_mem _
          (Set.mem_image_of_mem _ (Finset.mem_coe.mpr hk)))
      have hsplit : V k = W k + (V k - W k) := by ring
      rw [hsplit]
      exact add_mem (Ideal.mem_sup_left (Ideal.mem_sup_right hWmem))
        (Ideal.mem_sup_left (Ideal.mem_sup_left (hVW k)))
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      rw [hs']
      induction i using Fin.addCases with
      | left i =>
        induction i using Fin.addCases with
        | left i =>
          induction i using Fin.addCases with
          | left i =>
            simp only [Fin.append_left]
            exact Ideal.mem_sup_left (Ideal.mem_sup_left hζK)
          | right i =>
            simp only [Fin.append_left, Fin.append_right]
            exact Ideal.mem_sup_left (Ideal.mem_sup_left (Ideal.subset_span ⟨_, rfl⟩))
        | right i =>
          simp only [Fin.append_left, Fin.append_right]
          exact hVR _ (A''.orderIsoOfFin rfl i).2
      | right i =>
        simp only [Fin.append_right]
        exact Ideal.mem_sup_right (Ideal.subset_span (Set.mem_image_of_mem _ ⟨i, rfl⟩))
    · refine sup_le (sup_le htL ?_) ?_
      · rw [Ideal.span_le]
        rintro _ ⟨_, ⟨k, hk, rfl⟩, rfl⟩
        have hk2 : algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)
            (∑ l, φ (Nl k l) * y l) = V k - (V k - W k) := by rw [hW]; ring
        rw [hk2]
        exact sub_mem (hVL k hk) (htL (hVW k))
      · rw [Ideal.span_le]
        rintro _ ⟨_, ⟨i, rfl⟩, rfl⟩
        rw [← hs'iw]
        exact Ideal.subset_span ⟨_, rfl⟩
  ·
    intro j₁ hj₁ j₂ hj₂ h
    have hj₁' : j₁ ∉ A₀ := hj₁
    have hj₂' : j₂ ∉ A₀ := hj₂
    rw [hτ j₁ hj₁', hτ j₂ hj₂'] at h
    have h1 := congrArg Fin.val h
    rw [hvit, hvit] at h1
    have h2 : (A₀ᶜ.orderIsoOfFin hc).symm ⟨j₁, Finset.mem_compl.mpr hj₁'⟩ =
        (A₀ᶜ.orderIsoOfFin hc).symm ⟨j₂, Finset.mem_compl.mpr hj₂'⟩ := Fin.ext (by omega)
    exact congrArg Subtype.val ((A₀ᶜ.orderIsoOfFin hc).symm.injective h2)
  · rintro ⟨j, hj, hje⟩
    have h1 := (hτlt j hj).1
    rw [hje, hve] at h1; omega
  · intro he
    have h1 := hA'mem e he
    rw [hve] at h1; omega
  · rw [Set.disjoint_left]
    rintro z hz ⟨j, hj, rfl⟩
    have h1 := hA'mem _ (Finset.mem_coe.mp hz)
    have h2 := (hτlt j hj).2
    omega
  · have hsub : A'' ⊆ Finset.univ.erase j₀ := fun k hk =>
      Finset.mem_erase.mpr ⟨fun h => hj₀ (h ▸ hk), Finset.mem_univ _⟩
    have h1 := Finset.card_le_card hsub
    rw [Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, Fintype.card_fin] at h1
    have h2 : A'.card ≤ A''.card := by
      refine Finset.card_image_le.trans ?_
      rw [Finset.card_univ, Fintype.card_fin]
    omega
  · rw [hs'e, hζ]
  · intro h hh
    rw [map_mul, map_pow, ← hζ, map_prod] at hh
    have hprodA : ∏ j ∈ A₀, φh (s j) = ζ ^ (r + 1) * ∏ k, V k := by
      have e1 : ∏ j ∈ A₀, φh (s j) = ∏ k, t (A₀.orderEmbOfFin hA k) := by
        rw [← Finset.prod_coe_sort A₀]
        refine (Equiv.prod_comp (A₀.orderIsoOfFin hA).toEquiv
          (fun j : A₀ => φh (s j))).symm.trans ?_
        refine Finset.prod_congr rfl fun k _ => ?_
        rw [ht]
        simp [Finset.coe_orderIsoOfFin_apply]
      rw [e1]
      simp only [htV]
      rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
    rw [hprodA, ← Finset.prod_mul_prod_compl A'' V] at hh
    have hU : IsUnit (∏ k ∈ A''ᶜ, V k) :=
      Finset.prod_induction V IsUnit (fun _ _ h1 h2 => h1.mul h2) isUnit_one
        (fun k hk => hVunit k (Finset.mem_compl.mp hk))
    obtain ⟨w, hw⟩ := hh
    have h1 : algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) h * ↑w =
        (∏ k ∈ A'', V k) * ∏ k ∈ A''ᶜ, V k := hcancel _ _ (by rw [← hw]; ring)
    have hassoc : Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) h)
        ((∏ k ∈ A'', V k) * ∏ k ∈ A''ᶜ, V k) := ⟨w, h1⟩
    have hprodA' : ∏ k ∈ A', s' k = ∏ k ∈ A'', V k := by
      rw [Finset.prod_image (fun i₁ _ i₂ _ h => hiVinj h)]
      simp only [hs'iV]
      rw [← Finset.prod_coe_sort A'' V]
      exact Equiv.prod_comp (A''.orderIsoOfFin rfl).toEquiv (fun k : A'' => V k)
    rw [hprodA']
    exact hassoc.trans (associated_mul_unit_left _ _ hU)

theorem wcpa_dj_sfb_chart_regular : ∀ (A : Type u) [CommRing A] [IsDomain A] [IsNoetherianRing A] (𝔭 : Ideal A) [𝔭.IsPrime] (O : Type u) [CommRing O] [IsLocalRing O] [Algebra A O] [IsLocalization.AtPrime O 𝔭] (n r : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (A₀ : Finset (Fin n)) (f : Fin (r + 1) → A), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → Ideal.span (Set.range s) = (IsLocalRing.maximalIdeal O).map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) → A₀.card = r + 1 → Ideal.span (Set.range fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (algebraMap A O (f l))) = Ideal.span (s '' (A₀ : Set (Fin n))) → (∀ l, f l ≠ 0) ∧ ∀ (a : Fin (r + 1)) (𝔮 : Ideal (wcpaDjChart A f a)) [𝔮.IsPrime] (B : Type u) [CommRing B] [IsLocalRing B] [Algebra (wcpaDjChart A f a) B] [IsLocalization.AtPrime B 𝔮] (φ : O →+* B), 𝔮.comap (algebraMap A (wcpaDjChart A f a)) = 𝔭 → (∀ c : A, φ (algebraMap A O c) = algebraMap (wcpaDjChart A f a) B (algebraMap A (wcpaDjChart A f a) c)) → IsRegularLocalRing B ∧ ∃ (φh : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* AdicCompletion (IsLocalRing.maximalIdeal B) B) (n' : ℕ) (s' : Fin n' → AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ : Fin n → Fin n') (e : Fin n') (A' : Finset (Fin n')), (∀ c : O, φh (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) = algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (φ c)) ∧ (n' : WithBot ℕ∞) = ringKrullDim B ∧ Ideal.span (Set.range s') = (IsLocalRing.maximalIdeal B).map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) ∧ (∀ j, j ∉ A₀ → s' (τ j) = φh (s j)) ∧ Set.InjOn τ (↑A₀)ᶜ ∧ e ∉ τ '' (↑A₀)ᶜ ∧ e ∉ A' ∧ Disjoint (A' : Set (Fin n')) (τ '' (↑A₀)ᶜ) ∧ A'.card ≤ r ∧ Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (algebraMap (wcpaDjChart A f a) B (algebraMap A (wcpaDjChart A f a) (f a)))) (s' e) ∧ ∀ h : B, Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (algebraMap (wcpaDjChart A f a) B (algebraMap A (wcpaDjChart A f a) (f a)) ^ (r + 1) * h)) (φh (∏ j ∈ A₀, s j)) → Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) h) (∏ k ∈ A', s' k) :=
by
  intro A _ _ _ 𝔭 _ O _ _ _ _ n r s A₀ f hreg hn hs hA hspan
  haveI : IsNoetherianRing O := IsLocalization.isNoetherianRing 𝔭.primeCompl O inferInstance
  set x : Fin (r + 1) → O := fun l => algebraMap A O (f l) with hxdef
  obtain ⟨hx, hli⟩ := wcpa_dj_scr_params O n r s A₀ x hreg hn hs hA hspan
  have hx0 : ∀ l, x l ≠ 0 := by
    intro l h
    apply hli.ne_zero l
    have h' : (⟨x l, hx l⟩ : IsLocalRing.maximalIdeal O) = 0 := Subtype.ext h
    rw [h', map_zero]
  have hf0 : ∀ l, f l ≠ 0 := fun l h => hx0 l (by simp only [hxdef, h, map_zero])
  refine ⟨hf0, ?_⟩
  intro a 𝔮 _ B _ _ _ _ φ hcomap hφ
  obtain ⟨hBdom, hBnoeth, hφinj, hφloc, y, hya, hy, hfrac⟩ :=
    wcpa_dj_scr_chart_present A 𝔭 O r f a 𝔮 B φ (hf0 a) hcomap hφ
  haveI := hBdom
  haveI := hBnoeth
  haveI := hreg
  have hwr : RingTheory.Sequence.IsWeaklyRegular O (List.ofFn x) :=
    wcpa_dj_scr_weakly_regular O (r + 1) (fun l => ⟨x l, hx l⟩) hli
  have hqr := wcpa_dj_scr_quasi_regular O (r + 1) x hwr
  have hξ0 : φ (x a) ≠ 0 := fun h => hx0 a (hφinj (h.trans (map_zero φ).symm))
  have hnzd : ∀ b : B, φ (x a) * b = 0 → b = 0 := fun b hb =>
    (mul_eq_zero.mp hb).resolve_left hξ0
  have hker := wcpa_dj_scr_chart_kernel O B r x a φ y hφinj hnzd hya hy hqr
  have hBreg := wcpa_dj_scr_chart_B_regular O B r x a φ y hreg hx hli hφinj hφloc hya hy hfrac hker
  obtain ⟨Mh, Nh, Nl, -, hNh, hNhl, hNl⟩ :=
    wcpa_dj_scr_matrices O n r s A₀ x hA hreg hn hs hspan
  obtain ⟨j₀, A'', q, u, hj₀, hA'', hdim, hmax⟩ :=
    wcpa_dj_scr_fibre_params O B n r x a φ y Nl hreg hn hx hli hBreg
      (mem_nonZeroDivisors_of_ne_zero hξ0) hφloc hya hy hfrac hker hNl
  have hξeq : algebraMap (wcpaDjChart A f a) B (algebraMap A (wcpaDjChart A f a) (f a)) =
      φ (x a) := (hφ (f a)).symm
  rw [hξeq]
  exact ⟨hBreg, wcpa_dj_scr_completion_coords O B n r s A₀ hA x a φ y Nh Nl j₀ A'' q u hreg hn hs
    hx hNh hNhl hφloc (mem_nonZeroDivisors_of_ne_zero hξ0) hy hj₀ hA'' hdim hmax⟩

theorem wcpa_dj_sfb_exceptional_locus : ∀ {Y Y' : Scheme.{u}} (π : Y' ⟶ Y) (C : Set Y) (hC : IsClosed C) (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).ideal U → ∀ (V : Y'.Opens) (hVU : V ≤ π ⁻¹ᵁ (U : Y.Opens)) (a : Fin (r + 1)), (∀ l, ∃ c : Γ(Y', V), (π.appLE U V hVU).hom (f l) = (π.appLE U V hVU).hom (f a) * c) → ∀ (y : Y') (hy : y ∈ V), (π y ∈ C ↔ Y'.presheaf.germ V y hy ((π.appLE U V hVU).hom (f a)) ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk y)) :=
by
  intro Y Y' π C hC U r f hspan V hVU a hdiv y hy
  have hp : π y ∈ (U : Y.Opens) := hVU hy
  have hcompat : ∀ s : Γ(Y, U), (π.stalkMap y).hom (Y.presheaf.germ U (π y) hp s) =
      Y'.presheaf.germ V y hy ((π.appLE U V hVU).hom s) := by
    intro s
    rw [Scheme.Hom.germ_stalkMap_apply]
    rw [← TopCat.Presheaf.germ_res_apply Y'.presheaf (homOfLE hVU) y hy]
    rfl
  have hloc : ∀ b, (π.stalkMap y).hom b ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk y) ↔
      b ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y)) := by
    intro b
    simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact (isUnit_map_iff (π.stalkMap y).hom b).not
  have hC1 : π y ∈ C ↔ ∀ l, Y.presheaf.germ U (π y) hp (f l) ∈
      IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y)) := by
    have e1 : π y ∈ C ↔
        π y ∈ ((Scheme.IdealSheafData.vanishingIdeal ⟨C, hC⟩).support : Set Y) := by
      rw [Scheme.IdealSheafData.coe_support_vanishingIdeal]; rfl
    rw [e1, SetLike.mem_coe, Scheme.IdealSheafData.mem_support_iff_of_mem hp,
      Scheme.mem_zeroLocus_iff, ← hspan]
    constructor
    · intro h l
      have := h (f l) (Ideal.subset_span ⟨l, rfl⟩)
      rw [Scheme.mem_basicOpen _ _ _ hp] at this
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]; exact this
    · intro h g hg
      rw [Scheme.mem_basicOpen _ _ _ hp]
      have hle : Ideal.span (Set.range f) ≤ Ideal.comap (Y.presheaf.germ U (π y) hp).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y))) := by
        rw [Ideal.span_le]; rintro _ ⟨l, rfl⟩; exact h l
      have := hle hg
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at this
      exact this
  rw [hC1]
  constructor
  · intro h; rw [← hcompat, hloc]; exact h a
  · intro h l
    rw [← hloc, hcompat]
    obtain ⟨c, hc⟩ := hdiv l
    rw [hc, map_mul]
    exact Ideal.mul_mem_right _ _ h

theorem wcpa_dj_sfb_power_mem : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (n R : ℕ) (s : Fin n → AdicCompletion (IsLocalRing.maximalIdeal O) O) (A₀ : Finset (Fin n)) (x : Fin R → O) (g : O), A₀.card = R → Ideal.span (Set.range fun r => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (x r)) = Ideal.span (s '' (A₀ : Set (Fin n))) → Associated (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (g)) (∏ j ∈ A₀, s j) → g ∈ (Ideal.span (Set.range x)) ^ R :=
by
  intro O _ _ _ n R s A₀ x g hcard hspan hassoc
  have hprod : (∏ j ∈ A₀, s j) ∈ Ideal.span (s '' (A₀ : Set (Fin n))) ^ A₀.card := by
    rw [← Finset.prod_const]
    apply Ideal.prod_mem_prod
    intro j hj
    exact Ideal.subset_span (Set.mem_image_of_mem s (Finset.mem_coe.mpr hj))
  have hg1 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g ∈
      Ideal.span (s '' (A₀ : Set (Fin n))) ^ A₀.card := by
    obtain ⟨u, hu⟩ := hassoc
    have : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g =
        (∏ j ∈ A₀, s j) * ↑u⁻¹ := by rw [← hu, Units.mul_inv_cancel_right]
    rw [this]; exact Ideal.mul_mem_right _ _ hprod
  have hmap : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (Ideal.span (Set.range x)) = Ideal.span (s '' (A₀ : Set (Fin n))) := by
    rw [← hspan, Ideal.map_span, ← Set.range_comp]; rfl
  have hg2 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g ∈
      Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        ((Ideal.span (Set.range x)) ^ R) := by
    rw [Ideal.map_pow, hmap, ← hcard]; exact hg1
  generalize (Ideal.span (Set.range x)) ^ R = K at hg2 ⊢
  have hsup : ∀ k : ℕ, g ∈ K ⊔ IsLocalRing.maximalIdeal O ^ k := by
    intro k
    let e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* O ⧸ IsLocalRing.maximalIdeal O ^ k :=
      (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k).toRingHom
    have h1 : e.comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) =
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal O ^ k) := by
      ext a
      simp only [RingHom.comp_apply, e]
      exact (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) k).commutes a
    have h2 := Ideal.mem_map_of_mem e hg2
    rw [Ideal.map_map, h1] at h2
    have h3 : e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) g) =
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal O ^ k) g := by
      rw [← RingHom.comp_apply, h1]
    rw [h3, Ideal.mem_quotient_iff_mem_sup] at h2
    exact h2
  have hKrull := Ideal.iInf_pow_smul_eq_bot_of_isLocalRing (M := O ⧸ K)
    (IsLocalRing.maximalIdeal O) (IsLocalRing.maximalIdeal.isMaximal O).ne_top
  have hmem : (Ideal.Quotient.mk K g) ∈
      ⨅ i : ℕ, IsLocalRing.maximalIdeal O ^ i • (⊤ : Submodule O (O ⧸ K)) := by
    rw [Submodule.mem_iInf]
    intro i
    obtain ⟨a, ha, b, hb, hab⟩ := Submodule.mem_sup.mp (hsup i)
    have : Ideal.Quotient.mk K g = b • Ideal.Quotient.mk K 1 := by
      rw [← hab, map_add, Ideal.Quotient.eq_zero_iff_mem.mpr ha, zero_add, Algebra.smul_def,
        Ideal.Quotient.algebraMap_eq, ← map_mul, mul_one]
    rw [this]
    exact Submodule.smul_mem_smul hb Submodule.mem_top
  rw [hKrull, Submodule.mem_bot, Ideal.Quotient.eq_zero_iff_mem] at hmem
  exact hmem

theorem wcpa_dj_sfb_avoid : ∀ (X : Scheme.{u}) (w : X) (ξ h : X.presheaf.stalk w) (n' : ℕ) (s' : Fin n' → AdicCompletion (IsLocalRing.maximalIdeal (X.presheaf.stalk w)) (X.presheaf.stalk w)) (e : Fin n') (A' : Finset (Fin n')), IsRegularLocalRing (X.presheaf.stalk w) → (n' : WithBot ℕ∞) = ringKrullDim (X.presheaf.stalk w) → Ideal.span (Set.range s') = (IsLocalRing.maximalIdeal (X.presheaf.stalk w)).map (algebraMap _ _) → e ∉ A' → Associated (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal (X.presheaf.stalk w)) (X.presheaf.stalk w)) ξ) (s' e) → Associated (algebraMap _ (AdicCompletion (IsLocalRing.maximalIdeal (X.presheaf.stalk w)) (X.presheaf.stalk w)) h) (∏ k ∈ A', s' k) → ∀ (z'' : X) (hz : z'' ⤳ w), (X.presheaf.stalkSpecializes hz).hom h ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk z'') → ∃ (z₃ : X) (h₃ : z₃ ⤳ w), z₃ ⤳ z'' ∧ (X.presheaf.stalkSpecializes h₃).hom h ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk z₃) ∧ (X.presheaf.stalkSpecializes h₃).hom ξ ∉ IsLocalRing.maximalIdeal (X.presheaf.stalk z₃) :=
by
  intro X w ξ h n' s' e A' hreg hdim hspan heA hξ hh z'' hz hmem
  classical

  have s1 : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (n' : ℕ)
      (s' : Fin n' → AdicCompletion (IsLocalRing.maximalIdeal B) B), IsRegularLocalRing B →
      (n' : WithBot ℕ∞) = ringKrullDim B →
      Ideal.span (Set.range s') = (IsLocalRing.maximalIdeal B).map
        (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) →
      (∀ k, Prime (s' k)) ∧ (∀ k l, k ≠ l → ¬ s' k ∣ s' l) := by
    intro B _ _ _ n' s' _ hdim hspan
    haveI hN : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal B) B) :=
      wc_hnas_completion_noetherian B
    have hmax : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal B) B) =
        Ideal.span (Set.range s') := by
      rw [hspan, AdicCompletion.maximalIdeal_eq_map]
    have hd : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal B) B) = ringKrullDim B :=
      wc_lfi_flat_local_dim_eq B _ AdicCompletion.maximalIdeal_eq_map.symm
    have h1 : (Ideal.span (Set.range s')).spanFinrank ≤ (Set.range s').ncard :=
      Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range s')
    have h2 : (Set.range s').ncard ≤ n' := by
      rw [← Set.image_univ]
      refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
      rw [Set.ncard_univ, Nat.card_fin]
    have hrk : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal
        (AdicCompletion (IsLocalRing.maximalIdeal B) B)) : ℕ) : WithBot ℕ∞) ≤
        ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal B) B) := by
      rw [hd, ← hdim, hmax]
      exact_mod_cast h1.trans h2
    haveI := IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _ hrk
    obtain ⟨-, hp, hnd⟩ := wcpa_dj_bko_regular_params _ n' s' (hdim.trans hd.symm) hmax.symm
    exact ⟨hp, hnd⟩

  have s2 : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (ξ h : B) (n' : ℕ)
      (s' : Fin n' → AdicCompletion (IsLocalRing.maximalIdeal B) B) (e : Fin n')
      (A' : Finset (Fin n')), (∀ k, Prime (s' k)) → (∀ k l, k ≠ l → ¬ s' k ∣ s' l) → e ∉ A' →
      Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) ξ) (s' e) →
      Associated (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) h)
        (∏ k ∈ A', s' k) →
      ∀ P : Ideal B, P.IsPrime → h ∈ P →
        ∃ P' : Ideal B, P'.IsPrime ∧ P' ≤ P ∧ h ∈ P' ∧ ξ ∉ P' := by
    intro B _ _ _ ξ h n' s' e A' hp hnd heA hξ hh P hP hhP
    haveI : Module.FaithfullyFlat B (AdicCompletion (IsLocalRing.maximalIdeal B) B) :=
      Module.FaithfullyFlat.of_flat_of_isLocalHom
    obtain ⟨Q, hQ, hQP⟩ := Ideal.exists_isPrime_liesOver_of_faithfullyFlat
      (B := AdicCompletion (IsLocalRing.maximalIdeal B) B) P
    haveI := hQ
    have hPQ : P = Q.comap (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) :=
      hQP.over
    have hιh : algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) h ∈ Q := by
      rw [hPQ] at hhP; exact hhP
    obtain ⟨u, hu⟩ := hh
    have hprod : ∏ k ∈ A', s' k ∈ Q := by rw [← hu]; exact Q.mul_mem_right _ hιh
    obtain ⟨k, hkA, hkQ⟩ := (Ideal.IsPrime.prod_mem_iff).mp hprod
    refine ⟨(Ideal.span {s' k}).comap (algebraMap B _), ?_, ?_, ?_, ?_⟩
    · haveI := (Ideal.span_singleton_prime (hp k).ne_zero).mpr (hp k)
      exact Ideal.comap_isPrime _ _
    · rw [hPQ]; exact Ideal.comap_mono ((Ideal.span_singleton_le_iff_mem _).mpr hkQ)
    · rw [Ideal.mem_comap, Ideal.mem_span_singleton]
      exact (Associated.dvd_iff_dvd_right ⟨u, hu⟩).mpr (Finset.dvd_prod_of_mem s' hkA)
    · rw [Ideal.mem_comap, Ideal.mem_span_singleton]
      intro hd
      have hke : k ≠ e := fun h' => heA (h' ▸ hkA)
      exact hnd k e hke ((Associated.dvd_iff_dvd_right hξ).mp hd)

  have s3 : ∀ (P' : Ideal (X.presheaf.stalk w)), P'.IsPrime →
      P' ≤ Ideal.comap (X.presheaf.stalkSpecializes hz).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk z'')) →
      ∃ (z₃ : X) (h₃ : z₃ ⤳ w), z₃ ⤳ z'' ∧ ∀ a : X.presheaf.stalk w,
        (X.presheaf.stalkSpecializes h₃).hom a ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk z₃) ↔
          a ∈ P' := by
    intro P' hP' hle
    obtain ⟨h₃, hiff⟩ := wcpa_dj_mn_generization X w ⟨P', hP'⟩
    refine ⟨_, h₃, ?_, hiff⟩
    let q : PrimeSpectrum (X.presheaf.stalk w) :=
      ⟨Ideal.comap (X.presheaf.stalkSpecializes hz).hom
        (IsLocalRing.maximalIdeal (X.presheaf.stalk z'')), Ideal.comap_isPrime _ _⟩
    have hq0 : (Spec.map (X.presheaf.stalkSpecializes hz))
        (IsLocalRing.closedPoint (X.presheaf.stalk z'')) = q := rfl
    have e0 := congrArg (fun k : Spec (X.presheaf.stalk z'') ⟶ X =>
      k (IsLocalRing.closedPoint (X.presheaf.stalk z'')))
      (Scheme.SpecMap_stalkSpecializes_fromSpecStalk hz)
    simp only [Scheme.fromSpecStalk_closedPoint] at e0
    have hzA : X.fromSpecStalk w ((Spec.map (X.presheaf.stalkSpecializes hz))
        (IsLocalRing.closedPoint (X.presheaf.stalk z''))) = z'' := e0
    have hz0 : X.fromSpecStalk w q = z'' := by
      calc X.fromSpecStalk w q = X.fromSpecStalk w ((Spec.map (X.presheaf.stalkSpecializes hz))
            (IsLocalRing.closedPoint (X.presheaf.stalk z''))) := by rw [hq0]
        _ = z'' := hzA
    have hq : (⟨P', hP'⟩ : PrimeSpectrum (X.presheaf.stalk w)) ≤ q := hle
    have hsp := ((PrimeSpectrum.le_iff_specializes _ _).mp hq).map (X.fromSpecStalk w).continuous
    rw [hz0] at hsp
    exact hsp

  haveI := hreg
  obtain ⟨hp, hnd⟩ := s1 _ n' s' hreg hdim hspan
  obtain ⟨P', hP', hP'le, hhP', hξP'⟩ := s2 _ ξ h n' s' e A' hp hnd heA hξ hh
    (Ideal.comap (X.presheaf.stalkSpecializes hz).hom
      (IsLocalRing.maximalIdeal (X.presheaf.stalk z''))) (Ideal.comap_isPrime _ _)
    (Ideal.mem_comap.mpr hmem)
  obtain ⟨z₃, h₃, h3z, hiff⟩ := s3 P' hP' hP'le
  exact ⟨z₃, h₃, h3z, (hiff h).2 hhP', fun H => hξP' ((hiff ξ).1 H)⟩

theorem wcpa_dj_sf_blowup_step : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] (sZ : Z ⟶ Spec (.of k)) (m : ℕ) (Dc : Fin m → Set Z) (μ : Fin m → Z → ℕ) (R : ℕ) (i₀ : Fin m), wcpaDjIsProjOver k sZ → (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → wcpaDjCompNC Z m Dc μ → 2 ≤ R → (∀ i z, μ i z ≤ R) → ∃ (Z' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z') (π : Z' ⟶ Z) (Dc' : Fin (m + 1) → Set Z') (μ' : Fin (m + 1) → Z' → ℕ), IsProper π ∧ Surjective π ∧ (∃ V : Z.Opens, V ≠ ⊥ ∧ IsIso (π ∣_ V)) ∧ (∀ w : Z', IsRegularLocalRing (Z'.presheaf.stalk w)) ∧ wcpaDjIsProjOver k (π ≫ sZ) ∧ wcpaDjCompNC Z' (m + 1) Dc' μ' ∧ ⇑π ⁻¹' (⋃ i, Dc i) ⊆ ⋃ i, Dc' i ∧ (∀ w, μ' (Fin.last m) w ≤ 1) ∧ (∀ (i : Fin m) w, μ' i.castSucc w ≤ μ i (π w)) ∧ (∀ w, μ' i₀.castSucc w < R) :=
by
  intro k _ Z _ sZ m Dc μ R i₀ hproj hreg hC hR hle
  classical
  haveI hsZp : IsProper sZ := wcpa_dj_proj_proper k sZ hproj
  have hNC : ∀ z : Z, ∃ (n : ℕ) (J : Fin m → Finset (Fin n)),
      wcpaDjNCData Z m Dc z n J ∧ ∀ i, (J i).card = μ i z := by
    intro z
    obtain ⟨n, s, g, J, hn, hs, hdisj, hout, hin⟩ := hC.2 z
    refine ⟨n, J, ⟨s, g, hn, hs, hdisj, fun i hi => (hout i hi).1,
      fun i hi => ⟨(hin i hi).2.1, (hin i hi).2.2⟩⟩, ?_⟩
    intro i
    by_cases hi : z ∈ Dc i
    · exact (hin i hi).1
    · rw [(hout i hi).1, (hout i hi).2]; rfl
  have hfin : ∀ (Z' : Scheme.{u}) (Dc' : Fin (m + 1) → Set Z')
      (Q : Z' → (Fin (m + 1) → ℕ) → Prop), (∀ i, IsClosed (Dc' i)) →
      (∀ w, ∃ (n : ℕ) (J : Fin (m + 1) → Finset (Fin n)),
        wcpaDjNCData Z' (m + 1) Dc' w n J ∧ Q w (fun i => (J i).card)) →
      ∃ μ' : Fin (m + 1) → Z' → ℕ, wcpaDjCompNC Z' (m + 1) Dc' μ' ∧
        ∀ w, Q w (fun i => μ' i w) := by
    intro Z' Dc' Q hcl hP
    choose n J hJ hQ using hP
    refine ⟨fun i w => (J w i).card, ⟨hcl, fun w => ?_⟩, hQ⟩
    obtain ⟨s, g, h1, h2, h3, h4, h5⟩ := hJ w
    refine ⟨n w, s, g, J w, h1, h2, h3, fun i hi => ⟨h4 i hi, ?_⟩,
      fun i hi => ⟨rfl, (h5 i hi).1, (h5 i hi).2⟩⟩
    show (J w i).card = 0
    rw [h4 i hi]; rfl
  set C : Set Z := {z : Z | z ∈ Dc i₀ ∧ μ i₀ z = R} with hCdef
  have hoff : ∀ z, z ∉ C → μ i₀ z < R := by
    intro z hz
    by_cases hd : z ∈ Dc i₀
    · have h1 := hle i₀ z
      have hne : μ i₀ z ≠ R := fun h => hz ⟨hd, h⟩
      omega
    · obtain ⟨n, s, g, J, -, -, -, hout, -⟩ := hC.2 z
      rw [(hout i₀ hd).2]; omega
  have hcentre := wcpa_dj_sf_centre k Z sZ m Dc μ R i₀ hreg hC hle
  have hCcl : IsClosed C := hcentre.1
  have hgen : genericPoint Z ∉ C := by
    rintro ⟨hd, hμ⟩
    obtain ⟨n, s, g, J, hn, -, -, -, hin⟩ := hC.2 (genericPoint Z)
    have h0 : ringKrullDim (Z.presheaf.stalk (genericPoint Z)) = 0 := by
      change ringKrullDim Z.functionField = 0
      exact ringKrullDim_eq_zero_of_field _
    rw [h0] at hn
    have hn0 : n = 0 := by exact_mod_cast hn
    subst hn0
    have hc := (hin i₀ hd).1
    rw [Finset.eq_empty_of_isEmpty (J i₀), Finset.card_empty] at hc
    omega
  have hIsupp : ((Scheme.IdealSheafData.vanishingIdeal ⟨C, hCcl⟩ : Z.IdealSheafData).support :
      Set Z) = C := Scheme.IdealSheafData.coe_support_vanishingIdeal _
  have hsuppne : ((Scheme.IdealSheafData.vanishingIdeal ⟨C, hCcl⟩ : Z.IdealSheafData).support :
      Set Z) ≠ Set.univ := by
    rw [hIsupp]; intro h; apply hgen; rw [h]; trivial
  obtain ⟨Z', iZ', π, hπp, hπs, hπproj, hπiso, hcharts⟩ :=
    wcpa_dj_rn_blowup k Z sZ (Scheme.IdealSheafData.vanishingIdeal ⟨C, hCcl⟩) hproj hsuppne
  haveI := iZ'
  set V0 : Z.Opens := ⟨((Scheme.IdealSheafData.vanishingIdeal ⟨C, hCcl⟩ :
      Z.IdealSheafData).support : Set Z)ᶜ, (Scheme.IdealSheafData.vanishingIdeal ⟨C, hCcl⟩ :
      Z.IdealSheafData).support.isClosed.isOpen_compl⟩ with hV0
  have hset : (V0 : Set Z) = Cᶜ := by
    show ((Scheme.IdealSheafData.vanishingIdeal ⟨C, hCcl⟩ :
      Z.IdealSheafData).support : Set Z)ᶜ = Cᶜ
    rw [hIsupp]
  let Dc' : Fin (m + 1) → Set Z' := Fin.snoc (α := fun _ => Set Z')
    (fun l => closure (⇑π ⁻¹' Dc l ∩ ⇑π ⁻¹' Cᶜ)) (⇑π ⁻¹' C)
  have hDcast : ∀ l, Dc' l.castSucc = closure (⇑π ⁻¹' Dc l ∩ ⇑π ⁻¹' Cᶜ) := by
    intro l; simp only [Dc', Fin.snoc_castSucc]
  have hDlast : Dc' (Fin.last m) = ⇑π ⁻¹' C := by
    simp only [Dc', Fin.snoc_last]
  have hcl : ∀ i, IsClosed (Dc' i) := by
    intro i
    induction i using Fin.lastCases with
    | last => rw [hDlast]; exact hCcl.preimage π.continuous
    | cast i => rw [hDcast]; exact isClosed_closure
  have hK : ∀ l, Dc' l.castSucc ∩ ⇑π ⁻¹' Cᶜ = ⇑π ⁻¹' Dc l ∩ ⇑π ⁻¹' Cᶜ := by
    intro l
    rw [hDcast]
    apply Set.Subset.antisymm
    · rintro x ⟨hx1, hx2⟩
      refine ⟨?_, hx2⟩
      have h3 := closure_mono
        (Set.inter_subset_left : ⇑π ⁻¹' Dc l ∩ ⇑π ⁻¹' Cᶜ ⊆ ⇑π ⁻¹' Dc l) hx1
      rwa [((hC.1 l).preimage π.continuous).closure_eq] at h3
    · intro x hx
      exact ⟨subset_closure hx, hx.2⟩
  have hon : ∀ w, π w ∈ C → ∃ (n : ℕ) (J : Fin (m + 1) → Finset (Fin n)),
      wcpaDjNCData Z' (m + 1) Dc' w n J ∧ ((J (Fin.last m)).card ≤ 1 ∧
        (∀ i : Fin m, (J i.castSucc).card ≤ μ i (π w)) ∧
        (J i₀.castSucc).card < R ∧ IsRegularLocalRing (Z'.presheaf.stalk w)) := by
    intro w hw
    obtain ⟨r, rfl⟩ : ∃ r, R = r + 1 := ⟨R - 1, by omega⟩
    obtain ⟨hd, hμ⟩ := hw
    obtain ⟨n, s, g, J, hn, hs, hdisj, hout, hin⟩ := hC.2 (π w)
    have hcardJ : ∀ i, (J i).card = μ i (π w) := by
      intro i
      by_cases hi : π w ∈ Dc i
      · exact (hin i hi).1
      · rw [(hout i hi).1, (hout i hi).2]; rfl
    have hA₀ : (J i₀).card = r + 1 := (hin i₀ hd).1.trans hμ
    obtain ⟨x, hxspan, hxι⟩ := hcentre.2 (π w) ⟨hd, hμ⟩ n s (g i₀) (J i₀) hn hs hA₀
      (hin i₀ hd).2.1 (hin i₀ hd).2.2
    haveI := hreg (π w)
    haveI : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian sZ
    haveI : CompactSpace Z := QuasiCompact.compactSpace_of_compactSpace sZ
    haveI : IsNoetherian Z := {}
    have hgx := wcpa_dj_sfb_power_mem (Z.presheaf.stalk (π w)) n (r + 1) s (J i₀) x (g i₀) hA₀ hxι
      (hin i₀ hd).2.1
    obtain ⟨U, hzU, f, G, hfspan, hgerm_f, hGg, hGpow, hGiff⟩ :=
      wcpa_dj_sfb_local_generators Z C (Dc i₀) hCcl (hC.1 i₀) (π w) (r + 1) x (g i₀) ⟨hd, hμ⟩
        hxspan hgx (hin i₀ hd).2.2
    haveI : Nonempty (U : Z.Opens) := ⟨⟨π w, hzU⟩⟩
    haveI := IsLocallyNoetherian.component_noetherian U
    letI : Algebra Γ(Z, (U : Z.Opens)) (Z.presheaf.stalk (π w)) :=
      TopCat.Presheaf.algebra_section_stalk Z.presheaf ⟨π w, hzU⟩
    haveI : IsLocalization.AtPrime (Z.presheaf.stalk (π w)) (U.2.primeIdealOf ⟨π w, hzU⟩).asIdeal :=
      U.2.isLocalization_stalk ⟨π w, hzU⟩
    have hspan5 : Ideal.span (Set.range fun l => algebraMap (Z.presheaf.stalk (π w))
        (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk (π w))) (Z.presheaf.stalk (π w)))
        (algebraMap Γ(Z, (U : Z.Opens)) (Z.presheaf.stalk (π w)) (f l))) =
        Ideal.span (s '' (J i₀ : Set (Fin n))) := by
      rw [← hxι]
      have e1 : (Set.range fun l => algebraMap (Z.presheaf.stalk (π w))
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk (π w))) (Z.presheaf.stalk (π w)))
          (algebraMap Γ(Z, (U : Z.Opens)) (Z.presheaf.stalk (π w)) (f l))) =
          (algebraMap (Z.presheaf.stalk (π w))
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk (π w))) (Z.presheaf.stalk (π w)))) ''
          Set.range (fun l => Z.presheaf.germ (U : Z.Opens) (π w) hzU (f l)) := by
        rw [← Set.range_comp]; rfl
      have e2 : (Set.range fun l => algebraMap (Z.presheaf.stalk (π w))
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk (π w))) (Z.presheaf.stalk (π w)))
          (x l)) = (algebraMap (Z.presheaf.stalk (π w))
          (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk (π w))) (Z.presheaf.stalk (π w)))) ''
          Set.range x := by
        rw [← Set.range_comp]; rfl
      rw [e1, e2, ← Ideal.map_span, ← Ideal.map_span, hgerm_f]
    obtain ⟨hfne, hchart⟩ := wcpa_dj_sfb_chart_regular Γ(Z, (U : Z.Opens))
      (U.2.primeIdealOf ⟨π w, hzU⟩).asIdeal (Z.presheaf.stalk (π w)) n r s (J i₀) f (hreg _) hn hs
      hA₀ hspan5
    obtain ⟨V, hVsup, hVi⟩ := hcharts U r f hfspan hfne
    have hwU : w ∈ π ⁻¹ᵁ (U : Z.Opens) := hzU
    rw [← hVsup] at hwU
    obtain ⟨a, ha⟩ := TopologicalSpace.Opens.mem_iSup.mp hwU
    obtain ⟨hVU, hVaff, e, he⟩ := hVi a
    obtain ⟨𝔮, h𝔮, alg, hloc𝔮, hcomap, hgerm_e, hstalk⟩ :=
      wcpa_dj_sfb_chart_stalk π (U : Z.Opens) U.2 (V a) hVaff hVU (wcpaDjChart Γ(Z, (U : Z.Opens)) f a)
        e he w ha
    letI := alg
    obtain ⟨hregw, φh, n', s', τ, e₀, A', hφh, hn', hs', hτ, hτinj, he₀τ, he₀A', hA'τ, hA'card,
      hξ, hstrict⟩ := hchart a 𝔮 (Z'.presheaf.stalk w) (π.stalkMap w).hom hcomap
        (fun c => (hstalk c).symm)

    have hsm : ∀ (y : Z') (hy : y ∈ V a) (c : Γ(Z, (U : Z.Opens))),
        (π.stalkMap y).hom (Z.presheaf.germ (U : Z.Opens) (π y) (hVU hy) c) =
          Z'.presheaf.germ (V a) y hy ((π.appLE (U : Z.Opens) (V a) hVU).hom c) := by
      intro y hy c
      obtain ⟨_, _, alg', _, _, hge', hst'⟩ :=
        wcpa_dj_sfb_chart_stalk π (U : Z.Opens) U.2 (V a) hVaff hVU
          (wcpaDjChart Γ(Z, (U : Z.Opens)) f a) e he y hy
      letI := alg'
      rw [← hst' c, ← he c, hge']
    have hloc_map : ∀ (y : Z') (b : Z.presheaf.stalk (π y)),
        (π.stalkMap y).hom b ∈ IsLocalRing.maximalIdeal (Z'.presheaf.stalk y) ↔
          b ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk (π y)) := by
      intro y b
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      exact (isUnit_map_iff (π.stalkMap y).hom b).not
    have hcomm : ∀ (y z'' : Z') (h : z'' ⤳ y) (b : Z.presheaf.stalk (π y)),
        (Z'.presheaf.stalkSpecializes h).hom ((π.stalkMap y).hom b) =
          (π.stalkMap z'').hom ((Z.presheaf.stalkSpecializes (h.map π.continuous)).hom b) :=
      fun y z'' h b => (Scheme.Hom.stalkSpecializes_stalkMap_apply π z'' y h b).symm
    have hspec : ∀ (y : Z') (hy : y ∈ V a) (z'' : Z') (h : z'' ⤳ y) (b : Γ(Z', V a)),
        (Z'.presheaf.stalkSpecializes h).hom (Z'.presheaf.germ (V a) y hy b) =
          Z'.presheaf.germ (V a) z'' (h.mem_open (V a).isOpen hy) b :=
      fun y hy z'' h b => TopCat.Presheaf.germ_stalkSpecializes_apply Z'.presheaf hy h b
    have hdivA : ∀ l, ∃ t : Γ(Z', V a), (π.appLE (U : Z.Opens) (V a) hVU).hom (f l) =
        (π.appLE (U : Z.Opens) (V a) hVU).hom (f a) * t := by
      intro l
      refine ⟨e.symm ⟨IsLocalization.mk' (Localization.Away (f a)) (f l)
        (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a)), Algebra.subset_adjoin ⟨l, rfl⟩⟩, ?_⟩
      apply e.injective
      rw [map_mul, RingEquiv.apply_symm_apply, he, he]
      apply Subtype.ext
      simp only [MulMemClass.coe_mul, Subalgebra.coe_algebraMap]
      exact (IsLocalization.mk'_spec' (Localization.Away (f a)) (f l) _).symm
    have hIle : Ideal.map (π.appLE (U : Z.Opens) (V a) hVU).hom (Ideal.span (Set.range f)) ≤
        Ideal.span {(π.appLE (U : Z.Opens) (V a) hVU).hom (f a)} := by
      rw [Ideal.map_span, Ideal.span_le]
      rintro _ ⟨_, ⟨l, rfl⟩, rfl⟩
      obtain ⟨t, ht⟩ := hdivA l
      rw [SetLike.mem_coe, ht]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
    have hGm : (π.appLE (U : Z.Opens) (V a) hVU).hom G ∈
        Ideal.span {(π.appLE (U : Z.Opens) (V a) hVU).hom (f a) ^ (r + 1)} := by
      rw [← Ideal.span_singleton_pow]
      refine Ideal.pow_right_mono hIle (r + 1) ?_
      rw [← Ideal.map_pow]
      exact Ideal.mem_map_of_mem _ hGpow
    obtain ⟨H, hH⟩ := Ideal.mem_span_singleton'.mp hGm
    have hGH : (π.appLE (U : Z.Opens) (V a) hVU).hom G =
        (π.appLE (U : Z.Opens) (V a) hVU).hom (f a) ^ (r + 1) * H := by
      rw [← hH, mul_comm]
    have hexc := wcpa_dj_sfb_exceptional_locus π C hCcl U r f hfspan (V a) hVU a hdivA
    set ξ : Z'.presheaf.stalk w := Z'.presheaf.germ (V a) w ha
      ((π.appLE (U : Z.Opens) (V a) hVU).hom (f a)) with hξdef
    have hξeq : algebraMap (wcpaDjChart Γ(Z, (U : Z.Opens)) f a) (Z'.presheaf.stalk w)
        (algebraMap Γ(Z, (U : Z.Opens)) (wcpaDjChart Γ(Z, (U : Z.Opens)) f a) (f a)) = ξ := by
      rw [← he (f a), hgerm_e]
    have hξ' : Associated (algebraMap (Z'.presheaf.stalk w) (AdicCompletion
        (IsLocalRing.maximalIdeal (Z'.presheaf.stalk w)) (Z'.presheaf.stalk w)) ξ) (s' e₀) := by
      rw [← hξeq]; exact hξ
    have hchar : ∀ (y : Z') (hy : y ∈ V a), π y ∈ Dc i₀ ↔
        Z'.presheaf.germ (V a) y hy ((π.appLE (U : Z.Opens) (V a) hVU).hom (f a)) ^ (r + 1) *
          Z'.presheaf.germ (V a) y hy H ∈ IsLocalRing.maximalIdeal (Z'.presheaf.stalk y) := by
      intro y hy
      rw [hGiff (π y) (hVU hy), ← hloc_map y, hsm y hy G, hGH, map_mul, map_pow]
    have hDsub : ∀ l, Dc' l.castSucc ⊆ ⇑π ⁻¹' Dc l := by
      intro l; rw [hDcast]
      exact closure_minimal Set.inter_subset_left ((hC.1 l).preimage π.continuous)

    let K : Fin m → Finset (Fin n') := fun l => if l = i₀ then A' else (J l).image τ
    let Kf : Fin (m + 1) → Finset (Fin n') := Fin.snoc (α := fun _ => Finset (Fin n')) K {e₀}
    let J' : Fin (m + 1) → Finset (Fin n') := fun i => if w ∈ Dc' i then Kf i else ∅
    let gK : Fin m → Z'.presheaf.stalk w := fun l =>
      if l = i₀ then Z'.presheaf.germ (V a) w ha H else (π.stalkMap w).hom (g l)
    let g' : Fin (m + 1) → Z'.presheaf.stalk w := Fin.snoc (α := fun _ => Z'.presheaf.stalk w) gK ξ
    have hKf_last : Kf (Fin.last m) = {e₀} := by simp only [Kf, Fin.snoc_last]
    have hKf_cast : ∀ l, Kf l.castSucc = K l := by intro l; simp only [Kf, Fin.snoc_castSucc]
    have hg_last : g' (Fin.last m) = ξ := by simp only [g', Fin.snoc_last]
    have hg_cast : ∀ l, g' l.castSucc = gK l := by intro l; simp only [g', Fin.snoc_castSucc]
    have hJl : ∀ l, l ≠ i₀ → ∀ j ∈ J l, j ∉ J i₀ :=
      fun l hl j hj => Finset.disjoint_left.mp (hdisj l i₀ hl) hj
    have hKne : ∀ l, l ≠ i₀ → K l = (J l).image τ := fun l hl => if_neg hl
    have hK0 : K i₀ = A' := if_pos rfl
    have he₀K : ∀ l, e₀ ∉ K l := by
      intro l
      by_cases hl : l = i₀
      · rw [hl, hK0]; exact he₀A'
      · rw [hKne l hl]
        intro hm
        obtain ⟨j, hj, hje⟩ := Finset.mem_image.mp hm
        exact he₀τ ⟨j, hJl l hl j hj, hje⟩
    have hKdisj : ∀ i l, i ≠ l → Disjoint (K i) (K l) := by
      have hA'img : ∀ l, l ≠ i₀ → Disjoint A' ((J l).image τ) := by
        intro l hl
        rw [Finset.disjoint_left]
        intro k hkA hkI
        obtain ⟨j, hj, hjk⟩ := Finset.mem_image.mp hkI
        exact Set.disjoint_left.mp hA'τ (Finset.mem_coe.mpr hkA) ⟨j, hJl l hl j hj, hjk⟩
      intro i l hil
      by_cases hi : i = i₀
      · have hl : l ≠ i₀ := fun h => hil (hi.trans h.symm)
        rw [hi, hK0, hKne l hl]; exact hA'img l hl
      · by_cases hl : l = i₀
        · rw [hl, hK0, hKne i hi]; exact (hA'img i hi).symm
        · rw [hKne i hi, hKne l hl, Finset.disjoint_left]
          intro k hk1 hk2
          obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hk1
          obtain ⟨j', hj', hjj⟩ := Finset.mem_image.mp hk2
          have : j' = j := hτinj (hJl l hl j' hj') (hJl i hi j hj) hjj
          subst this
          exact Finset.disjoint_left.mp (hdisj i l hil) hj hj'
    have hKfdisj : ∀ i l, i ≠ l → Disjoint (Kf i) (Kf l) := by
      intro i l hil
      induction i using Fin.lastCases with
      | last =>
        induction l using Fin.lastCases with
        | last => exact absurd rfl hil
        | cast l => rw [hKf_last, hKf_cast]; exact Finset.disjoint_singleton_left.mpr (he₀K l)
      | cast i =>
        induction l using Fin.lastCases with
        | last => rw [hKf_last, hKf_cast]; exact Finset.disjoint_singleton_right.mpr (he₀K i)
        | cast l =>
          rw [hKf_cast, hKf_cast]
          exact hKdisj i l (fun h => hil (by rw [h]))
    have hJ'sub : ∀ i, J' i ⊆ Kf i := by
      intro i
      by_cases hi : w ∈ Dc' i
      · simp only [J', if_pos hi, subset_refl]
      · simp only [J', if_neg hi]; exact Finset.empty_subset _

    have hcl_other : ∀ l, l ≠ i₀ → w ∈ Dc' l.castSucc →
        Associated (algebraMap (Z'.presheaf.stalk w) (AdicCompletion
          (IsLocalRing.maximalIdeal (Z'.presheaf.stalk w)) (Z'.presheaf.stalk w)) (gK l))
          (∏ k ∈ K l, s' k) ∧ ∀ (z'' : Z') (h : z'' ⤳ w), (z'' ∈ Dc' l.castSucc ↔
            (Z'.presheaf.stalkSpecializes h).hom (gK l) ∈
              IsLocalRing.maximalIdeal (Z'.presheaf.stalk z'')) := by
      intro l hl hwl
      have hgl : gK l = (π.stalkMap w).hom (g l) := if_neg hl
      have hzl : π w ∈ Dc l := hDsub l hwl
      have hinj : Set.InjOn τ (J l : Set (Fin n)) := hτinj.mono (fun j hj => hJl l hl j hj)
      have hassoc : Associated (algebraMap (Z'.presheaf.stalk w) (AdicCompletion
          (IsLocalRing.maximalIdeal (Z'.presheaf.stalk w)) (Z'.presheaf.stalk w))
          ((π.stalkMap w).hom (g l))) (∏ k ∈ (J l).image τ, s' k) := by
        rw [← hφh, Finset.prod_image hinj]
        have h1 := (hin l hzl).2.1.map φh
        rw [map_prod, Finset.prod_congr rfl (fun j hj => (hτ j (hJl l hl j hj)).symm)] at h1
        exact h1
      rw [hgl, hKne l hl]
      refine ⟨hassoc, fun z'' h => ⟨fun hz'' => ?_, fun hmem => ?_⟩⟩
      · rw [hcomm, hloc_map]
        exact ((hin l hzl).2.2 _ _).mp (hDsub l hz'')
      · have he₀I : e₀ ∉ (J l).image τ := by rw [← hKne l hl]; exact he₀K l
        obtain ⟨z₃, h₃, h3'', hh3, hξ3⟩ := wcpa_dj_sfb_avoid Z' w ξ ((π.stalkMap w).hom (g l)) n' s'
          e₀ ((J l).image τ) hregw hn' hs' he₀I hξ' hassoc z'' h hmem
        have hz3V : z₃ ∈ V a := h₃.mem_open (V a).isOpen ha
        have hz3D : π z₃ ∈ Dc l := by
          rw [hcomm, hloc_map] at hh3
          exact ((hin l hzl).2.2 _ _).mpr hh3
        have hz3C : π z₃ ∉ C := by
          rw [hξdef, hspec w ha z₃ h₃] at hξ3
          exact fun hc => hξ3 ((hexc z₃ hz3V).mp hc)
        rw [hDcast]
        exact h3''.mem_closed isClosed_closure (subset_closure ⟨hz3D, hz3C⟩)

    have hcl_zero : w ∈ Dc' i₀.castSucc →
        Associated (algebraMap (Z'.presheaf.stalk w) (AdicCompletion
          (IsLocalRing.maximalIdeal (Z'.presheaf.stalk w)) (Z'.presheaf.stalk w)) (gK i₀))
          (∏ k ∈ K i₀, s' k) ∧ ∀ (z'' : Z') (h : z'' ⤳ w), (z'' ∈ Dc' i₀.castSucc ↔
            (Z'.presheaf.stalkSpecializes h).hom (gK i₀) ∈
              IsLocalRing.maximalIdeal (Z'.presheaf.stalk z'')) := by
      intro _
      have hg0 : gK i₀ = Z'.presheaf.germ (V a) w ha H := if_pos rfl
      have hφg : (π.stalkMap w).hom (g i₀) = ξ ^ (r + 1) * Z'.presheaf.germ (V a) w ha H := by
        rw [← hGg, hsm w ha G, hGH, map_mul, map_pow]
      have hassoc0 : Associated (algebraMap (Z'.presheaf.stalk w) (AdicCompletion
          (IsLocalRing.maximalIdeal (Z'.presheaf.stalk w)) (Z'.presheaf.stalk w))
          (Z'.presheaf.germ (V a) w ha H)) (∏ k ∈ A', s' k) :=
        hstrict _ (by rw [hξeq, ← hφg, ← hφh]; exact (hin i₀ hd).2.1.map φh)
      rw [hg0, hK0]
      refine ⟨hassoc0, fun z'' h => ⟨fun hz'' => ?_, fun hmem => ?_⟩⟩
      · have hzV : z'' ∈ V a := h.mem_open (V a).isOpen ha
        rw [hspec w ha z'' h]
        by_contra hnot
        have hu : IsUnit (Z'.presheaf.germ (V a) z'' hzV H) := by
          rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, not_not] at hnot; exact hnot
        have hbo : z'' ∈ Z'.basicOpen H := (Scheme.mem_basicOpen Z' H z'' hzV).mpr hu
        rw [hDcast] at hz''
        obtain ⟨y, hyB, hyS⟩ := mem_closure_iff.mp hz'' _ (Z'.basicOpen H).isOpen hbo
        have hyV : y ∈ V a := Z'.basicOpen_le H hyB
        have huy : IsUnit (Z'.presheaf.germ (V a) y hyV H) :=
          (Scheme.mem_basicOpen Z' H y hyV).mp hyB
        have hξy : IsUnit (Z'.presheaf.germ (V a) y hyV
            ((π.appLE (U : Z.Opens) (V a) hVU).hom (f a))) := by
          have h1 := (hexc y hyV).not.mp hyS.2
          rwa [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, not_not] at h1
        have hp := (hchar y hyV).mp hyS.1
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hp
        exact hp ((hξy.pow _).mul huy)
      · obtain ⟨z₃, h₃, h3'', hh3, hξ3⟩ := wcpa_dj_sfb_avoid Z' w ξ (Z'.presheaf.germ (V a) w ha H)
          n' s' e₀ A' hregw hn' hs' he₀A' hξ' hassoc0 z'' h hmem
        have hz3V : z₃ ∈ V a := h₃.mem_open (V a).isOpen ha
        rw [hspec w ha z₃ h₃] at hh3
        rw [hξdef, hspec w ha z₃ h₃] at hξ3
        have hz3C : π z₃ ∉ C := fun hc => hξ3 ((hexc z₃ hz3V).mp hc)
        have hz3D : π z₃ ∈ Dc i₀ := (hchar z₃ hz3V).mpr (Ideal.mul_mem_left _ _ hh3)
        rw [hDcast]
        exact h3''.mem_closed isClosed_closure (subset_closure ⟨hz3D, hz3C⟩)
    refine ⟨n', J', ⟨s', g', hn', hs', ?_, ?_, ?_⟩, ?_, ?_, ?_, hregw⟩
    · intro i l hil
      exact (hKfdisj i l hil).mono (hJ'sub i) (hJ'sub l)
    · intro i hi
      simp only [J', if_neg hi]
    · intro i hi
      have hJi : J' i = Kf i := if_pos hi
      rw [hJi]
      induction i using Fin.lastCases with
      | last =>
        rw [hKf_last, hg_last, Finset.prod_singleton]
        refine ⟨hξ', fun z'' h => ?_⟩
        rw [hDlast, hξdef, hspec w ha z'' h]
        exact hexc z'' _
      | cast l =>
        rw [hKf_cast, hg_cast]
        by_cases hl : l = i₀
        · subst hl; exact hcl_zero hi
        · exact hcl_other l hl hi
    · have : J' (Fin.last m) ⊆ {e₀} := hKf_last ▸ hJ'sub (Fin.last m)
      exact (Finset.card_le_card this).trans (by simp)
    · intro i
      refine (Finset.card_le_card (hJ'sub i.castSucc)).trans ?_
      rw [hKf_cast]
      by_cases hi : i = i₀
      · rw [hi, hK0, hμ]; omega
      · rw [hKne i hi, ← hcardJ i]; exact Finset.card_image_le
    · refine lt_of_le_of_lt (Finset.card_le_card (hJ'sub i₀.castSucc)) ?_
      rw [hKf_cast, hK0]; omega
  have hpt : ∀ w, ∃ (n : ℕ) (J : Fin (m + 1) → Finset (Fin n)),
      wcpaDjNCData Z' (m + 1) Dc' w n J ∧ ((J (Fin.last m)).card ≤ 1 ∧
        (∀ i : Fin m, (J i.castSucc).card ≤ μ i (π w)) ∧
        (J i₀.castSucc).card < R ∧ IsRegularLocalRing (Z'.presheaf.stalk w)) := by
    intro w
    by_cases hw : π w ∈ C
    · exact hon w hw
    · obtain ⟨n, J, hJ, hcard⟩ := hNC (π w)
      have hmem : π w ∈ V0 := by
        show π w ∈ (V0 : Set Z)
        rw [hset]; exact hw
      have hpre : ∀ i, Dc' i.castSucc ∩ ⇑π ⁻¹' (V0 : Set Z) =
          ⇑π ⁻¹' (Dc i) ∩ ⇑π ⁻¹' (V0 : Set Z) := by
        intro i; rw [hset]; exact hK i
      have hlast : w ∉ Dc' (Fin.last m) := by
        rw [hDlast]; exact hw
      obtain ⟨hJ', hr'⟩ :=
        wcpa_dj_sfb_offcentre π V0 m Dc Dc' w n J hπiso hmem hpre hlast hJ (hreg _)
      refine ⟨n, _, hJ', ?_, ?_, ?_, hr'⟩
      · simp
      · intro i; simp only [Fin.snoc_castSucc, hcard, le_refl]
      · simp only [Fin.snoc_castSucc, hcard]; exact hoff _ hw
  obtain ⟨μ', hμ'C, hμ'Q⟩ := hfin Z' Dc' (fun w ν => ν (Fin.last m) ≤ 1 ∧
    (∀ i : Fin m, ν i.castSucc ≤ μ i (π w)) ∧ ν i₀.castSucc < R ∧
    IsRegularLocalRing (Z'.presheaf.stalk w)) hcl hpt
  refine ⟨Z', iZ', π, Dc', μ', hπp, hπs, ⟨V0, ?_, hπiso⟩, fun w => (hμ'Q w).2.2.2, hπproj,
    hμ'C, ?_, fun w => (hμ'Q w).1, fun i w => (hμ'Q w).2.1 i, fun w => (hμ'Q w).2.2.1⟩
  · rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
    refine ⟨genericPoint Z, ?_⟩
    show genericPoint Z ∈ (V0 : Set Z)
    rw [hset]; exact hgen
  · intro w hw
    simp only [Set.mem_preimage, Set.mem_iUnion] at hw ⊢
    obtain ⟨l, hl⟩ := hw
    by_cases hwC : π w ∈ C
    · refine ⟨Fin.last m, ?_⟩
      rw [hDlast]; exact hwC
    · refine ⟨l.castSucc, ?_⟩
      rw [hDcast]
      exact subset_closure ⟨hl, hwC⟩

theorem wcpa_dj_rn_strictify : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] (sZ : Z ⟶ Spec (.of k)) (B : Set Z), wcpaDjIsProjOver k sZ → (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) → wcpaDjFmlNCSet Z B → B ≠ Set.univ → ∃ (Z' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z') (φ : Z' ⟶ Z), IsProper φ ∧ Surjective φ ∧ (∃ V : Z.Opens, V ≠ ⊥ ∧ IsFinite (φ ∣_ V)) ∧ (∀ z : Z', IsRegularLocalRing (Z'.presheaf.stalk z)) ∧ wcpaDjIsProjOver k (φ ≫ sZ) ∧ ∃ B' : Set Z', wcpaDjZarNCSet Z' B' ∧ ⇑φ ⁻¹' B ⊆ B' :=
by
  intro k _ Z _ sZ B hproj hreg hB _
  classical
  have key : ∀ (R N : ℕ) (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k))
      (m : ℕ) (Dc : Fin m → Set Y) (μ : Fin m → Y → ℕ) (S : Finset (Fin m)),
      wcpaDjIsProjOver k sY → (∀ y : Y, IsRegularLocalRing (Y.presheaf.stalk y)) →
      wcpaDjCompNC Y m Dc μ → (∀ i y, μ i y ≤ R) → (∀ i y, μ i y = R → i ∈ S) → S.card ≤ N →
      ∃ (Y' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Y') (φ : Y' ⟶ Y), IsProper φ ∧
        Surjective φ ∧ (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (φ ∣_ V)) ∧
        (∀ y : Y', IsRegularLocalRing (Y'.presheaf.stalk y)) ∧ wcpaDjIsProjOver k (φ ≫ sY) ∧
        ∃ B' : Set Y', wcpaDjZarNCSet Y' B' ∧ ⇑φ ⁻¹' (⋃ i, Dc i) ⊆ B' := by
    intro R
    induction R using Nat.strong_induction_on with
    | _ R ihR =>
      intro N
      induction N using Nat.strong_induction_on with
      | _ N ihN =>
        intro Y _ sY m Dc μ S hYp hYr hC hle hS hSN
        by_cases hR : R ≤ 1
        · refine ⟨Y, inferInstance, 𝟙 Y, inferInstance, inferInstance, ⟨⊤, ?_, inferInstance⟩,
            hYr, ?_, ⋃ i, Dc i,
            wcpa_dj_sf_terminal Y m Dc μ hYr hC (fun i y => (hle i y).trans hR), ?_⟩
          · rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
            obtain ⟨y⟩ := (inferInstance : Nonempty Y)
            exact ⟨y, trivial⟩
          · rw [Category.id_comp]; exact hYp
          · intro y hy; simpa using hy
        · push_neg at hR
          by_cases hatt : ∃ i y, μ i y = R
          · obtain ⟨i₀, y₀, hi₀⟩ := hatt
            have hi₀S : i₀ ∈ S := hS i₀ y₀ hi₀
            obtain ⟨Y₁, iY₁, π, Dc', μ', hπp, hπs, ⟨V, hV, hVi⟩, hY₁r, hY₁p, hC', hsub, hlast,
              hcast, hi₀'⟩ := wcpa_dj_sf_blowup_step k Y sY m Dc μ R i₀ hYp hYr hC (by omega) hle
            haveI := iY₁
            have hle' : ∀ i w, μ' i w ≤ R := by
              intro i w
              induction i using Fin.lastCases with
              | last => exact (hlast w).trans (by omega)
              | cast i => exact (hcast i w).trans (hle i (π w))
            obtain ⟨S', hS'⟩ : ∃ S' : Finset (Fin (m + 1)),
                S' = (S.erase i₀).map Fin.castSuccEmb := ⟨_, rfl⟩
            have hS'att : ∀ i w, μ' i w = R → i ∈ S' := by
              intro i w h
              induction i using Fin.lastCases with
              | last => have := hlast w; omega
              | cast i =>
                have h1 := hcast i w
                have h2 := hle i (π w)
                have hne : i ≠ i₀ := by
                  intro hii
                  rw [hii] at h
                  have := hi₀' w
                  omega
                have hiS : i ∈ S := hS i (π w) (by omega)
                rw [hS']
                exact Finset.mem_map_of_mem _ (Finset.mem_erase.mpr ⟨hne, hiS⟩)
            have hS'card : S'.card < N := by
              rw [hS', Finset.card_map, Finset.card_erase_of_mem hi₀S]
              have := Finset.card_pos.mpr ⟨i₀, hi₀S⟩
              omega
            obtain ⟨Y₂, iY₂, φ', hφ'p, hφ's, hφ'f, hY₂r, hY₂p, B', hB', hsub'⟩ :=
              ihN S'.card hS'card Y₁ (π ≫ sY) (m + 1) Dc' μ' S' hY₁p hY₁r hC' hle' hS'att le_rfl
            haveI := iY₂
            have hVf : IsFinite (π ∣_ V) := by haveI := hVi; infer_instance
            obtain ⟨hsurj, hfin⟩ := wcpa_dj_alteration_comp π φ' hπp hπs hφ's ⟨V, hV, hVf⟩ hφ'f
            refine ⟨Y₂, iY₂, φ' ≫ π, ?_, hsurj, hfin, hY₂r, ?_, B', hB', ?_⟩
            · haveI := hπp; haveI := hφ'p; infer_instance
            · rw [Category.assoc]; exact hY₂p
            · intro y hy
              apply hsub'
              apply hsub
              rw [Set.mem_preimage, Scheme.Hom.comp_apply] at hy
              exact hy
          · push_neg at hatt
            have hle1 : ∀ i y, μ i y ≤ R - 1 := fun i y => by
              have := hle i y; have := hatt i y; omega
            exact ihR (R - 1) (by omega) m Y sY m Dc μ Finset.univ hYp hYr hC hle1
              (fun i _ _ => Finset.mem_univ i) (by simp)
  obtain ⟨m, Dc, μ, M, hC, hBeq, hM⟩ := wcpa_dj_sf_components k Z sZ B hproj hreg hB
  obtain ⟨Z', iZ', φ, h1, h2, h3, h4, h5, B', hB', hsub⟩ :=
    key M m Z sZ m Dc μ Finset.univ hproj hreg hC hM (fun i _ _ => Finset.mem_univ i) (by simp)
  refine ⟨Z', iZ', φ, h1, h2, h3, h4, h5, B', hB', ?_⟩
  rw [hBeq]
  exact hsub

theorem wcpa_dj_tr_resolve_nc : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y] (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens) (D : Set S), wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (g ≫ sS) → wcpaDjSplitSemistable g → wcpaDjSections g m τ → SmoothOfRelativeDimension 1 (g ∣_ W) → (W : Set S)ᶜ ⊆ D → (∀ p : S, IsRegularLocalRing (S.presheaf.stalk p)) → wcpaDjSNCSet S D → ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (φ : Z ⟶ Y), IsProper φ ∧ Surjective φ ∧ (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (φ ∣_ V)) ∧ (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) ∧ wcpaDjIsProjOver k (φ ≫ g ≫ sS) ∧ ∃ B : Set Z, wcpaDjZarNCSet Z B ∧ ⇑φ ⁻¹' (⇑g ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ j)) ⊆ B :=
by
  intro k _ _ S Y _ _ sS g m τ W D hS hY hss hsec hsm hW hreg hD
  classical

  obtain ⟨mD, Dc, hDc, hDeq, hloc⟩ := id hD
  have hDcl : IsClosed D := by
    rw [hDeq]
    exact isClosed_iUnion_of_finite hDc
  have hgen : ∀ i, genericPoint S ∉ Dc i := by
    intro i hi
    obtain ⟨n, t, hn, -, a, -, -⟩ := hloc (genericPoint S)
    have h0 : ringKrullDim (S.presheaf.stalk (genericPoint S)) = 0 := by
      change ringKrullDim S.functionField = 0
      exact ringKrullDim_eq_zero_of_field _
    rw [h0] at hn
    have hn0 : n = 0 := by exact_mod_cast hn
    subst hn0
    exact Fin.elim0 (a ⟨i, hi⟩)
  have hDne : D ≠ Set.univ := by
    intro h
    have hmem : genericPoint S ∈ D := by rw [h]; trivial
    rw [hDeq, Set.mem_iUnion] at hmem
    obtain ⟨i, hi⟩ := hmem
    exact hgen i hi

  have hMN := wcpa_dj_rn_monomial_nodes S Y g W D hss hsm hW hreg hD

  obtain ⟨Z₁, iZ₁, φ₁, hp₁, hs₁, hf₁, hr₁, hproj₁, B₁, hB₁, hsub₁⟩ :=
    wcpa_dj_rn_toroidal_snc k S Y sS g m τ D hS hY hss.1 hss.2.1 hsec hDcl hDne hreg hMN hD
  haveI := iZ₁

  have hB₁ne : B₁ ≠ Set.univ := by
    intro h
    obtain ⟨-, hloc₁⟩ := hB₁
    obtain ⟨n, s, J, f, hn, -, hass, hiff⟩ := hloc₁ (genericPoint Z₁)
    have h0 : ringKrullDim (Z₁.presheaf.stalk (genericPoint Z₁)) = 0 := by
      change ringKrullDim Z₁.functionField = 0
      exact ringKrullDim_eq_zero_of_field _
    rw [h0] at hn
    have hn0 : n = 0 := by exact_mod_cast hn
    subst hn0
    rw [Finset.eq_empty_of_isEmpty J, Finset.prod_empty] at hass
    have hu := (associated_one_iff_isUnit.mp hass).map
      (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Z₁.presheaf.stalk (genericPoint Z₁))) 1)
    have hmem : genericPoint Z₁ ∈ B₁ := by rw [h]; trivial
    have hf := (hiff (genericPoint Z₁) (specializes_refl _)).mp hmem
    rw [TopCat.Presheaf.stalkSpecializes_refl] at hf
    have hf1 : f ∈ IsLocalRing.maximalIdeal (Z₁.presheaf.stalk (genericPoint Z₁)) ^ 1 := by
      rw [pow_one]; exact hf
    rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem.mpr hf1,
      isUnit_zero_iff, Ideal.Quotient.zero_eq_one_iff, pow_one] at hu
    exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top hu

  obtain ⟨Z, iZ, φ₂, hp₂, hs₂, hf₂, hr₂, hproj₂, B, hB, hsub₂⟩ :=
    wcpa_dj_rn_strictify k Z₁ (φ₁ ≫ g ≫ sS) B₁ hproj₁ hr₁ hB₁ hB₁ne
  haveI := iZ
  obtain ⟨hsurj, hfin⟩ := wcpa_dj_alteration_comp φ₁ φ₂ hp₁ hs₁ hs₂ hf₁ hf₂
  refine ⟨Z, iZ, φ₂ ≫ φ₁, ?_, hsurj, hfin, hr₂, ?_, B, hB, ?_⟩
  · haveI := hp₁
    haveI := hp₂
    infer_instance
  · rw [Category.assoc]
    exact hproj₂
  · intro z hz
    rw [Set.mem_preimage, Scheme.Hom.comp_apply] at hz
    exact hsub₂ (hsub₁ hz)

theorem wcpa_dj_tr_nc_is_snc : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) (B : Set Z), wcpaDjIsProjOver k sZ → wcpaDjZarNCSet Z B → wcpaDjSNCSet Z B :=
by
  classical

  have s1 : ∀ (R : Type u) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (n : ℕ)
      (t : Fin n → R), (n : WithBot ℕ∞) = ringKrullDim R →
      Ideal.span (Set.range t) = IsLocalRing.maximalIdeal R →
      ∀ j : Fin n, IsRegularLocalRing (R ⧸ Ideal.span {t j}) := by
    intro R _ _ _ n t hdim hspan j
    set I := Ideal.span {t j} with hI
    have htj : t j ∈ IsLocalRing.maximalIdeal R := hspan ▸ Ideal.subset_span ⟨j, rfl⟩
    have hIm : I ≤ IsLocalRing.maximalIdeal R := (Ideal.span_singleton_le_iff_mem _).mpr htj
    have hIne : I ≠ ⊤ := fun h =>
      (IsLocalRing.maximalIdeal.isMaximal R).ne_top (top_le_iff.mp (h ▸ hIm))
    haveI : Nontrivial (R ⧸ I) := Ideal.Quotient.nontrivial_iff.mpr hIne
    haveI : IsLocalRing (R ⧸ I) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
    haveI : IsNoetherianRing (R ⧸ I) := Ideal.Quotient.isNoetherianRing I
    have hk : Ideal.comap (Ideal.Quotient.mk I) ⊥ = I := by
      rw [← RingHom.ker_eq_comap_bot, Ideal.mk_ker]
    have hmax : IsLocalRing.maximalIdeal (R ⧸ I) =
        Ideal.map (Ideal.Quotient.mk I) (IsLocalRing.maximalIdeal R) := by
      rcases Ideal.map_eq_top_or_isMaximal_of_surjective (Ideal.Quotient.mk I)
        Ideal.Quotient.mk_surjective (IsLocalRing.maximalIdeal.isMaximal R) with h | h
      · exfalso
        have := Ideal.comap_map_of_surjective (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
          (IsLocalRing.maximalIdeal R)
        rw [h, Ideal.comap_top, hk, sup_eq_left.mpr hIm] at this
        exact (IsLocalRing.maximalIdeal.isMaximal R).ne_top this.symm
      · exact (IsLocalRing.eq_maximalIdeal h).symm
    set S : Finset (R ⧸ I) := (Finset.univ.erase j).image (fun i => Ideal.Quotient.mk I (t i))
      with hS
    have hspanS : IsLocalRing.maximalIdeal (R ⧸ I) = Ideal.span (S : Set (R ⧸ I)) := by
      rw [hmax, ← hspan, Ideal.map_span]
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro x ⟨r, ⟨i, rfl⟩, rfl⟩
        by_cases hij : i = j
        · subst hij
          have : Ideal.Quotient.mk I (t i) = 0 :=
            Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span rfl)
          rw [this]
          exact (Ideal.span _).zero_mem
        · apply Ideal.subset_span
          rw [hS, Finset.coe_image]
          exact ⟨i, by simp [hij], rfl⟩
      · apply Ideal.span_mono
        intro x hx
        rw [hS, Finset.coe_image] at hx
        obtain ⟨i, _, rfl⟩ := hx
        exact ⟨t i, ⟨i, rfl⟩, rfl⟩
    have hsf : Submodule.spanFinrank (IsLocalRing.maximalIdeal (R ⧸ I)) ≤ n - 1 := by
      rw [hspanS]
      refine (Submodule.spanFinrank_span_le_ncard_of_finite (S.finite_toSet)).trans ?_
      rw [Set.ncard_coe_finset]
      refine Finset.card_image_le.trans ?_
      rw [Finset.card_erase_of_mem (Finset.mem_univ j), Finset.card_univ, Fintype.card_fin]
    have hd1 := ringKrullDim_le_spanFinrank_maximalIdeal (R ⧸ I)
    have hjac : (({t j} : Finset R) : Set R) ⊆ (Ring.jacobson R : Set R) := by
      rw [Finset.coe_singleton, Set.singleton_subset_iff, ← Ideal.jacobson_bot]
      exact IsLocalRing.maximalIdeal_le_jacobson ⊥ htj
    have hd2 := ringKrullDim_le_ringKrullDim_quotient_add_card ({t j} : Finset R) hjac
    rw [Finset.coe_singleton, Finset.card_singleton, ← hdim] at hd2
    change (n : WithBot ℕ∞) ≤ ringKrullDim (R ⧸ I) + ((1 : ℕ) : WithBot ℕ∞) at hd2
    have h0 : (0 : WithBot ℕ∞) ≤ ringKrullDim (R ⧸ I) := ringKrullDim_nonneg_of_nontrivial
    have hne_bot : ringKrullDim (R ⧸ I) ≠ ⊥ := by
      intro h
      rw [h] at h0
      exact absurd h0 (by simp)
    obtain ⟨e, he⟩ := WithBot.ne_bot_iff_exists.mp hne_bot
    rw [← he] at hd1 hd2
    have he_top : e ≠ ⊤ := by
      rintro rfl
      have h' : ((⊤ : ℕ∞) : WithBot ℕ∞) ≤
          ((Submodule.spanFinrank (IsLocalRing.maximalIdeal (R ⧸ I)) : ℕ∞) : WithBot ℕ∞) := hd1
      rw [WithBot.coe_le_coe] at h'
      exact absurd h' (by simp)
    obtain ⟨d, rfl⟩ := ENat.ne_top_iff_exists.mp he_top
    have ed : ((d : ℕ∞) : WithBot ℕ∞) = (d : WithBot ℕ∞) := by norm_cast
    rw [ed] at hd1 hd2
    have hd1' : d ≤ Submodule.spanFinrank (IsLocalRing.maximalIdeal (R ⧸ I)) := by
      exact_mod_cast hd1
    have hd2' : n ≤ d + 1 := by exact_mod_cast hd2
    have hn := j.pos
    have hfin : Submodule.spanFinrank (IsLocalRing.maximalIdeal (R ⧸ I)) = d := by omega
    refine IsRegularLocalRing.mk ?_
    rw [← he, ed, hfin]

  have s3 : ∀ (X : Scheme.{u}) (y : X) (P : Ideal (X.presheaf.stalk y)), P.IsPrime →
      ∃ η : X, η ⤳ y ∧ ∀ (y' : X) (h : y' ⤳ y), (η ⤳ y' ↔ P ≤ Ideal.comap
        (X.presheaf.stalkSpecializes h).hom (IsLocalRing.maximalIdeal (X.presheaf.stalk y'))) := by
    intro X y P hP
    have hind : Topology.IsInducing (X.fromSpecStalk y) :=
      (Scheme.Hom.isEmbedding (X.fromSpecStalk y)).isInducing
    let p : Spec (X.presheaf.stalk y) := (⟨P, hP⟩ : PrimeSpectrum (X.presheaf.stalk y))
    refine ⟨X.fromSpecStalk y p, ?_, ?_⟩
    · have : X.fromSpecStalk y p ∈ Set.range (X.fromSpecStalk y) := ⟨_, rfl⟩
      rw [Scheme.range_fromSpecStalk] at this
      exact this
    · intro y' h
      let c : Spec (X.presheaf.stalk y') := IsLocalRing.closedPoint (X.presheaf.stalk y')
      let q : Spec (X.presheaf.stalk y) := Spec.map (X.presheaf.stalkSpecializes h) c
      have hfq : X.fromSpecStalk y q = y' := by
        have := Scheme.Hom.comp_apply (Spec.map (X.presheaf.stalkSpecializes h))
          (X.fromSpecStalk y) c
        rw [Scheme.SpecMap_stalkSpecializes_fromSpecStalk] at this
        rw [← this]
        exact Scheme.fromSpecStalk_closedPoint
      have hqI : (q : PrimeSpectrum (X.presheaf.stalk y)).asIdeal = Ideal.comap
          (X.presheaf.stalkSpecializes h).hom (IsLocalRing.maximalIdeal (X.presheaf.stalk y')) := by
        have e1 : q = PrimeSpectrum.comap (X.presheaf.stalkSpecializes h).hom c :=
          Spec.map_apply (X.presheaf.stalkSpecializes h) c
        rw [e1, PrimeSpectrum.comap_asIdeal]
        rfl
      have key : p ⤳ q ↔ P ≤ Ideal.comap
          (X.presheaf.stalkSpecializes h).hom (IsLocalRing.maximalIdeal (X.presheaf.stalk y')) := by
        rw [← hqI]
        exact (PrimeSpectrum.le_iff_specializes (⟨P, hP⟩ : PrimeSpectrum (X.presheaf.stalk y))
          (q : PrimeSpectrum (X.presheaf.stalk y))).symm.trans
          (PrimeSpectrum.asIdeal_le_asIdeal _ _).symm
      rw [← key, ← hind.specializes_iff, hfq]

  have s4 : ∀ (X : Type u) [TopologicalSpace X] [TopologicalSpace.NoetherianSpace X]
      [QuasiSober X] (B : Set X), IsClosed B → ∃ (m : ℕ) (Dc : Fin m → Set X) (ξ : Fin m → X),
      (∀ i, IsClosed (Dc i)) ∧ B = ⋃ i, Dc i ∧ (∀ i w, ξ i ⤳ w ↔ w ∈ Dc i) ∧
      (∀ i i', Dc i ⊆ Dc i' → i = i') := by
    intro X _ _ _ B hB
    obtain ⟨S, hSf, hScl, hSirr, hBS⟩ :=
      TopologicalSpace.NoetherianSpace.exists_finite_set_isClosed_irreducible hB
    set S' : Set (Set X) := {t | t ∈ S ∧ Maximal (· ∈ S) t} with hS'
    have hS'f : S'.Finite := hSf.subset (fun t ht => ht.1)
    haveI := hS'f.fintype
    let e := Fintype.equivFin S'
    refine ⟨Fintype.card S', fun i => (e.symm i).1,
      fun i => (hSirr _ (e.symm i).2.1).genericPoint, fun i => hScl _ (e.symm i).2.1, ?_, ?_, ?_⟩
    · ext x
      simp only [Set.mem_iUnion]
      constructor
      · intro hx
        rw [hBS] at hx
        obtain ⟨t, ht, hxt⟩ := Set.mem_sUnion.mp hx
        obtain ⟨t', htt', ht'max⟩ := hSf.exists_le_maximal ht
        refine ⟨e ⟨t', ht'max.prop, ht'max⟩, ?_⟩
        rw [Equiv.symm_apply_apply]
        exact htt' hxt
      · rintro ⟨i, hi⟩
        rw [hBS]
        exact Set.mem_sUnion.mpr ⟨_, (e.symm i).2.1, hi⟩
    · intro i w
      exact isGenericPoint_iff_specializes.mp
        ((hSirr _ (e.symm i).2.1).isGenericPoint_genericPoint (hScl _ (e.symm i).2.1)) w
    · intro i i' hii'
      have h1 := (e.symm i).2.2.2 (e.symm i').2.1 hii'
      have : e.symm i = e.symm i' := Subtype.ext (le_antisymm hii' h1)
      exact e.symm.injective this

  have s5 : ∀ (X : Type u) [TopologicalSpace X] [T0Space X] (m n : ℕ) (Dc : Fin m → Set X)
      (ξ : Fin m → X) (y : X) (Q : (y' : X) → y' ⤳ y → Fin n → Prop) (η : Fin n → X)
      (J : Finset (Fin n)), (∀ i w, ξ i ⤳ w ↔ w ∈ Dc i) → (∀ i i', Dc i ⊆ Dc i' → i = i') →
      (∀ j, η j ⤳ y) → (∀ j (y' : X) (h : y' ⤳ y), (η j ⤳ y' ↔ Q y' h j)) →
      (∀ (y' : X) (h : y' ⤳ y), (y' ∈ ⋃ i, Dc i ↔ ∃ j ∈ J, Q y' h j)) →
      ∃ a : {i : Fin m // y ∈ Dc i} → Fin n, Function.Injective a ∧
        ∀ (i : {i : Fin m // y ∈ Dc i}) (y' : X) (h : y' ⤳ y), (y' ∈ Dc i.1 ↔ Q y' h (a i)) := by
    intro X _ _ m n Dc ξ y Q η J hξ hinc hηy hη hB
    have gi : ∀ i : {i : Fin m // y ∈ Dc i}, ξ i.1 ⤳ y := fun i => (hξ i.1 y).mpr i.2
    have hex : ∀ i : {i : Fin m // y ∈ Dc i}, ∃ j ∈ J, Q (ξ i.1) (gi i) j := by
      intro i
      apply (hB (ξ i.1) (gi i)).mp
      exact Set.mem_iUnion.mpr ⟨i.1, (hξ i.1 (ξ i.1)).mp specializes_rfl⟩
    choose a haJ ha using hex
    have hA : ∀ i, ξ i.1 = η (a i) := by
      intro i
      have h1 : η (a i) ⤳ ξ i.1 := (hη (a i) (ξ i.1) (gi i)).mpr (ha i)
      have h2 : η (a i) ∈ ⋃ i, Dc i := (hB (η (a i)) (hηy (a i))).mpr
        ⟨a i, haJ i, (hη (a i) (η (a i)) (hηy (a i))).mp specializes_rfl⟩
      obtain ⟨i', hi'⟩ := Set.mem_iUnion.mp h2
      have hsub : Dc i.1 ⊆ Dc i' := by
        intro w hw
        exact (hξ i' w).mp ((((hξ i' (η (a i))).mpr hi').trans h1).trans ((hξ i.1 w).mpr hw))
      have hii' := hinc _ _ hsub
      rw [← hii'] at hi'
      exact (((hξ i.1 _).mpr hi').antisymm h1).eq
    refine ⟨a, ?_, ?_⟩
    · intro i₁ i₂ h12
      have he : ξ i₁.1 = ξ i₂.1 := by rw [hA i₁, hA i₂, h12]
      apply Subtype.ext
      apply hinc
      intro w hw
      have : ξ i₁.1 ⤳ w := (hξ i₁.1 w).mpr hw
      rw [he] at this
      exact (hξ i₂.1 w).mp this
    · intro i y' h
      rw [← hη (a i) y' h, ← hA i]
      exact (hξ i.1 y').symm

  intro k _ Z sZ B hproj hNC
  obtain ⟨hBcl, hNC⟩ := hNC
  haveI : IsProper sZ := wcpa_dj_proj_proper k sZ hproj
  haveI : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian sZ
  haveI : CompactSpace Z := QuasiCompact.compactSpace_of_compactSpace sZ
  haveI : AlgebraicGeometry.IsNoetherian Z := {}
  obtain ⟨m, Dc, ξ, hcl, hBU, hξ, hinc⟩ := s4 Z B hBcl
  refine ⟨m, Dc, hcl, hBU, fun y => ?_⟩
  obtain ⟨n, t, hdim, hspan, J, hiff⟩ := hNC y
  have hprime : ∀ j, (Ideal.span {t j}).IsPrime := fun j => by
    haveI hreg := s1 _ n t hdim hspan j
    haveI hdom := wcpa_regular_isDomain _ wcpa_rs_quotient_regular hreg
    exact (Ideal.Quotient.isDomain_iff_prime _).mp hdom
  choose η hηy hη' using fun j => s3 Z y _ (hprime j)
  refine ⟨n, t, hdim, hspan, ?_⟩
  exact s5 Z m n Dc ξ y
    (fun y' h j => (Z.presheaf.stalkSpecializes h).hom (t j) ∈
      IsLocalRing.maximalIdeal (Z.presheaf.stalk y')) η J hξ hinc hηy
    (fun j y' h => (hη' j y' h).trans
      ((Ideal.span_singleton_le_iff_mem _).trans Ideal.mem_comap))
    (fun y' h => by rw [← hBU]; exact hiff y' h)

theorem wcpa_dj_toroidal_resolution : ∀ (k : Type u) [Field k] [Finite k] (P' P'' C : Scheme.{u})
    [AlgebraicGeometry.IsIntegral P'] [AlgebraicGeometry.IsIntegral P'']
    [AlgebraicGeometry.IsIntegral C]
    (sP' : P' ⟶ Spec (.of k)) (sP'' : P'' ⟶ Spec (.of k)) (β : P'' ⟶ P') (g : C ⟶ P')
    (m : ℕ) (τ : Fin m → (P' ⟶ C)) (U' : P'.Opens) (D : Set P''),
    β ≫ sP' = sP'' → wcpaDjIsProjOver k sP' → wcpaDjIsProjOver k sP'' →
    wcpaDjIsProjOver k (g ≫ sP') →
    wcpaDjSplitSemistable g → wcpaDjSections g m τ → U' ≠ ⊥ →
    SmoothOfRelativeDimension 1 (g ∣_ U') → GeometricallyConnected (g ∣_ U') →
    (∀ p : P'', IsRegularLocalRing (P''.presheaf.stalk p)) →
    IsProper β → Surjective β → (∃ V : P'.Opens, V ≠ ⊥ ∧ IsFinite (β ∣_ V)) →
    wcpaDjSNCSet P'' D → ⇑β ⁻¹' ((U' : Set P')ᶜ) ⊆ D →
    ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (sZ : Z ⟶ Spec (.of k)) (ψ : Z ⟶ C),
      ψ ≫ g ≫ sP' = sZ ∧ IsProper sZ ∧ (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) ∧
      IsProper ψ ∧ Surjective ψ ∧ (∃ V : C.Opens, V ≠ ⊥ ∧ IsFinite (ψ ∣_ V)) ∧
      wcpaDjIsProjOver k sZ ∧ ∃ DZ : Set Z, wcpaDjSNCSet Z DZ ∧
        ⇑ψ ⁻¹' ((⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((U' : Set P')ᶜ)) ⊆ DZ :=
by
  intro k _ _ P' P'' C _ _ _ sP' sP'' β g m τ U' D hβ hP'proj hP''proj hCproj hss hsec hU'ne
    hU'sm hU'gc hreg'' hβprop hβsurj hβfin hD hDE
  classical

  haveI hC''int : AlgebraicGeometry.IsIntegral (Limits.pullback g β) :=
    wcpa_dj_tr_basechange_integral P' P'' C β g U' hss.1 hβsurj hU'ne hU'sm hU'gc
  obtain ⟨hprprop, hprsurj, hprfin⟩ :=
    wcpa_dj_tr_basechange_alteration P' P'' C β g hss.1 hβprop hβsurj hβfin
  have hss'' := wcpa_dj_tr_basechange_semistable P' P'' C β g hss
  obtain ⟨τ'', hsec'', hτpre⟩ := wcpa_dj_tr_basechange_sections P' P'' C β g m τ hsec
  have hsm'' := wcpa_dj_tr_basechange_smooth P' P'' C β g U' hU'sm
  have hC''proj := wcpa_dj_tr_basechange_proj k P' P'' C sP' sP'' β g hβ hP'proj hP''proj hCproj
  have hW : ((β ⁻¹ᵁ U' : P''.Opens) : Set P'')ᶜ ⊆ D := by
    intro p hp
    exact hDE hp

  obtain ⟨Z, iZ, φ₁, hφ₁prop, hφ₁surj, hφ₁fin, hregZ, hZproj, B, hB, hφ₁B⟩ :=
    wcpa_dj_tr_resolve_nc k P'' (Limits.pullback g β) sP'' (Limits.pullback.snd g β) m τ''
      (β ⁻¹ᵁ U') D hP''proj hC''proj hss'' hsec'' hsm'' hW hreg'' hD
  haveI := iZ

  have hBsnc : wcpaDjSNCSet Z B :=
    wcpa_dj_tr_nc_is_snc k Z (φ₁ ≫ Limits.pullback.snd g β ≫ sP'') B hZproj hB
  have heq : φ₁ ≫ Limits.pullback.snd g β ≫ sP'' =
      (φ₁ ≫ Limits.pullback.fst g β) ≫ g ≫ sP' := by
    rw [← hβ, ← Category.assoc (Limits.pullback.snd g β), ← Limits.pullback.condition]
    simp only [Category.assoc]
  have hZproj' : wcpaDjIsProjOver k ((φ₁ ≫ Limits.pullback.fst g β) ≫ g ≫ sP') := by
    rw [← heq]; exact hZproj
  have hsZprop : IsProper ((φ₁ ≫ Limits.pullback.fst g β) ≫ g ≫ sP') :=
    wcpa_dj_proj_proper k _ hZproj'
  have hψprop : IsProper (φ₁ ≫ Limits.pullback.fst g β) := by
    haveI := hφ₁prop
    haveI := hprprop
    infer_instance
  obtain ⟨hψsurj, hψfin⟩ :=
    wcpa_dj_alteration_comp (Limits.pullback.fst g β) φ₁ hprprop hprsurj hφ₁surj hprfin hφ₁fin
  refine ⟨Z, iZ, (φ₁ ≫ Limits.pullback.fst g β) ≫ g ≫ sP',
    φ₁ ≫ Limits.pullback.fst g β, rfl, hsZprop, hregZ, hψprop, hψsurj, hψfin, hZproj',
    B, hBsnc, ?_⟩
  intro z hz
  rw [Set.mem_preimage, Scheme.Hom.comp_apply] at hz
  have hmem : φ₁ z ∈ ⇑(Limits.pullback.snd g β) ⁻¹' D ∪ ⋃ j, Set.range ⇑(τ'' j) := by
    rcases hz with h | h
    · exact Or.inr (hτpre h)
    · left
      have hcond : (Limits.pullback.snd g β ≫ β) (φ₁ z) =
          (Limits.pullback.fst g β ≫ g) (φ₁ z) := by
        rw [Limits.pullback.condition]
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at hcond
      apply hDE
      show β (Limits.pullback.snd g β (φ₁ z)) ∈ (U' : Set P')ᶜ
      rw [hcond]
      exact h
  exact hφ₁B hmem

end GRWTSK.FiniteFieldWeil
