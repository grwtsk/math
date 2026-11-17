import GRWTSK.AlgebraicGeometry.Alterations.ToroidalBlowupChartClassification

/-!
# Dimension control, weight decrease, and termination of node resolution

Source candidate split from `weil_conjecture_main.lean`, lines 34948–46062.
See the adjacent `ToroidalResolutionDescent.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_rtsxs_d_param_prime : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (d : ℕ) (t : Fin d → A), (d : WithBot ℕ∞) = ringKrullDim A → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A → ∀ S : Finset (Fin d), (Ideal.span (t '' (S : Set (Fin d)))).IsPrime ∧ (S.card : ℕ∞) ≤ (Ideal.span (t '' (S : Set (Fin d)))).height :=
by
  intro A _ _ d t hn hspan
  classical
  have ht : ∀ l, t l ∈ IsLocalRing.maximalIdeal A := fun l => by
    rw [← hspan]; exact Ideal.subset_span (Set.mem_range_self l)
  set t' : Fin d → IsLocalRing.maximalIdeal A := fun l => ⟨t l, ht l⟩ with ht'
  have hfin : Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.CotangentSpace A) = d := by
    have h1 := IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace A
    have h2 := IsRegularLocalRing.spanFinrank_maximalIdeal (R := A)
    rw [← hn, h1] at h2
    exact_mod_cast h2
  have htop : Submodule.span A (Set.range t') = ⊤ := by
    apply Submodule.map_injective_of_injective (f := (IsLocalRing.maximalIdeal A).subtype)
      Subtype.val_injective
    rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp]
    exact hspan
  have hcot : Submodule.span (IsLocalRing.ResidueField A)
      (Set.range (fun l => (IsLocalRing.maximalIdeal A).toCotangent (t' l))) = ⊤ := by
    rw [Set.range_comp']
    exact (IsLocalRing.CotangentSpace.span_image_eq_top_iff (s := Set.range t')).mpr htop
  have L : LinearIndependent (IsLocalRing.ResidueField A)
      (fun l => (IsLocalRing.maximalIdeal A).toCotangent (t' l)) := by
    apply linearIndependent_of_top_le_span_of_card_eq_finrank hcot.ge
    rw [Fintype.card_fin]
    exact hfin.symm

  have pkg : ∀ S : Finset (Fin d), (Ideal.span (t '' (S : Set (Fin d)))).IsPrime ∧
      ringKrullDim (A ⧸ Ideal.span (t '' (S : Set (Fin d)))) + (S.card : WithBot ℕ∞) =
        (d : WithBot ℕ∞) := by
    intro S
    have LS := L.comp (S.orderEmbOfFin rfl) (S.orderEmbOfFin rfl).injective
    have hq := wcpa_rs_quotient_regular A S.card (fun i => t' (S.orderEmbOfFin rfl i)) LS
    have hr : Set.range (fun i => ((t' (S.orderEmbOfFin rfl i) : IsLocalRing.maximalIdeal A) : A)) =
        t '' (S : Set (Fin d)) := by
      show Set.range (fun i => t (S.orderEmbOfFin rfl i)) = _
      rw [Set.range_comp' t (S.orderEmbOfFin rfl), Finset.range_orderEmbOfFin]
    rw [hr] at hq
    obtain ⟨hreg, hdim⟩ := hq
    have hdom := @wcpa_regular_isDomain _ _ wcpa_rs_quotient_regular hreg
    exact ⟨(Ideal.Quotient.isDomain_iff_prime _).mp hdom, hdim.trans hn.symm⟩
  have H : ∀ S : Finset (Fin d), (S.card : ℕ∞) ≤ (Ideal.span (t '' (S : Set (Fin d)))).height := by
    intro S
    induction S using Finset.induction_on with
    | empty => simp
    | insert j T hj ih =>
      haveI hI := (pkg T).1
      haveI hJ := (pkg (insert j T)).1
      have hle : Ideal.span (t '' (T : Set (Fin d))) ≤
          Ideal.span (t '' ((insert j T : Finset (Fin d)) : Set (Fin d))) :=
        Ideal.span_mono (Set.image_mono (Finset.coe_subset.mpr (Finset.subset_insert j T)))
      have hne : Ideal.span (t '' (T : Set (Fin d))) ≠
          Ideal.span (t '' ((insert j T : Finset (Fin d)) : Set (Fin d))) := by
        intro heq
        have h1 := (pkg T).2
        have h2 := (pkg (insert j T)).2
        rw [Finset.card_insert_of_notMem hj, ← heq] at h2
        rw [Nat.cast_add, Nat.cast_one, ← add_assoc, h1] at h2
        have h3 : d + 1 = d := by exact_mod_cast h2
        omega
      have hlt := lt_of_le_of_ne hle hne
      have hstep := Ideal.height_add_one_le_of_lt_of_isPrime hlt
      rw [Finset.card_insert_of_notMem hj, Nat.cast_add, Nat.cast_one]
      calc (T.card : ℕ∞) + 1 ≤ (Ideal.span (t '' (T : Set (Fin d)))).height + 1 := by gcongr
        _ ≤ _ := hstep
  intro S
  exact ⟨(pkg S).1, H S⟩

theorem wcpa_dj_rtsxs_d_phase1_centre : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] {q : ℕ} (h : Fin q → O) (p : Ideal O) [p.IsPrime], wcpaDjTorNodeCentre O h p → (p.height : WithBot ℕ∞) = ((2 : ℕ) : WithBot ℕ∞) → ∃ (n : ℕ) (A : Type u) (_ : CommRing A) (_ : IsRegularLocalRing A) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (l₀ : Fin n), IsUnit v ∧ ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A ∧ Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A ∧ 2 ≤ b l₀ ∧ Ideal.map e (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (Ideal.span {x, y, σ l₀}) :=
by
  intro O _ _ _ q h p _ hTNC hp2
  classical
  obtain ⟨n, A, iA, iReg, -, x, y, v, σ, b, e, J, T, hv, hdim, hspan, -, -, -, -, hE, hB, -⟩ :=
    hTNC
  letI := iA
  haveI := iReg

  have hTne : ∃ l ∈ T, b l ≠ 0 := by
    rcases hB with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · obtain ⟨l, hl⟩ := Finset.card_pos.mp (by omega : 0 < T.card)
      exact ⟨l, hl, by have := h2 l hl; omega⟩
    · obtain ⟨l, hl⟩ := Finset.card_pos.mp (by omega : 0 < T.card)
      exact ⟨l, hl, by have := h2 l hl; omega⟩
  obtain ⟨l₁, hl₁T, hbl₁⟩ := hTne

  have hFP : x * y - v * ∏ l, σ l ^ b l ∈ Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n))) := by
    apply Ideal.sub_mem
    · apply Ideal.mul_mem_right
      exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert x {y}))
    · apply Ideal.mul_mem_left
      have hσ : σ l₁ ∈ Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n))) :=
        Ideal.subset_span (Set.mem_union_right _ ⟨l₁, hl₁T, rfl⟩)
      obtain ⟨c, hc⟩ := (dvd_pow_self (σ l₁) hbl₁).trans
        (Finset.dvd_prod_of_mem (fun m => σ m ^ b m) (Finset.mem_univ l₁))
      rw [hc]
      exact Ideal.mul_mem_right _ _ hσ

  let t : Fin (n + 2) → A := Matrix.vecCons x (Matrix.vecCons y σ)
  let S : Finset (Fin (n + 2)) :=
    insert 0 ((insert 0 (T.map (Fin.succEmb n))).map (Fin.succEmb (n + 1)))
  have hrange : Set.range t = {x, y} ∪ Set.range σ := by
    simp only [t, Matrix.range_cons, Set.insert_union, Set.singleton_union]
  have himage : t '' (S : Set (Fin (n + 2))) = {x, y} ∪ σ '' (T : Set (Fin n)) := by
    simp only [S, t, Finset.coe_insert, Finset.coe_map, Set.image_insert_eq, Set.image_image,
      Fin.coe_succEmb, Matrix.cons_val_zero, Matrix.cons_val_succ, Set.insert_union,
      Set.singleton_union]
  have hcard : S.card = T.card + 2 := by
    simp only [S]
    rw [Finset.card_insert_of_notMem, Finset.card_map, Finset.card_insert_of_notMem,
      Finset.card_map]
    · simp [Fin.succ_ne_zero]
    · simp [Fin.succ_ne_zero]
  obtain ⟨hPprime, hPht⟩ :=
    wcpa_dj_rtsxs_d_param_prime A (n + 2) t hdim (by rw [hrange]; exact hspan) S
  rw [himage] at hPprime hPht
  rw [hcard] at hPht
  haveI := hPprime

  have hker : RingHom.ker (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) ≤
      Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n))) := by
    rw [Ideal.mk_ker, Ideal.span_le, Set.singleton_subset_iff]
    exact hFP
  haveI hPbar : (Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
      (Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n))))).IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
  have hQeq : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p =
      Ideal.comap e (Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        (Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n))))) := by
    rw [← hE, Ideal.comap_map_of_bijective e e.bijective]
  haveI hQprime : (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      p).IsPrime := by
    rw [hQeq]
    exact Ideal.IsPrime.comap e

  obtain ⟨hloc, -, hlh, -⟩ := wc_hnas_completion_local_complete O
  haveI := hloc
  haveI := hlh
  haveI := wc_hnas_completion_noetherian O
  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal O)
  haveI : Module.FaithfullyFlat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    Module.FaithfullyFlat.of_flat_of_isLocalHom
  haveI : Algebra.HasGoingDown O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    Algebra.HasGoingDown.of_flat
  haveI : (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p).LiesOver
      p := Ideal.LiesOver.mk (by rw [Ideal.under_def, Ideal.comap_map_eq_self_of_faithfullyFlat])
  have hQht : (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      p).height = p.height := by
    rw [Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown p
      (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p),
      Ideal.map_quotient_self]
    haveI : Nontrivial (AdicCompletion (IsLocalRing.maximalIdeal O) O ⧸
        Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p) :=
      Ideal.Quotient.nontrivial_iff.mpr hQprime.ne_top
    rw [Ideal.height_bot, add_zero]

  have hp2' : p.height = ((2 : ℕ) : ℕ∞) := by
    rw [← WithBot.coe_natCast] at hp2
    exact WithBot.coe_injective hp2
  have hKrull := Ideal.height_le_height_add_one_of_mem
    (p := Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n)))) hFP
  rw [← hE, RingEquiv.height_map, hQht, hp2'] at hKrull
  have hle : ((T.card + 2 : ℕ) : ℕ∞) ≤ ((2 : ℕ) : ℕ∞) + 1 := hPht.trans hKrull
  have hT1 : T.card ≤ 1 := by
    have : T.card + 2 ≤ 2 + 1 := by exact_mod_cast hle
    omega

  rcases hB with ⟨h1, h2⟩ | ⟨h1, -⟩
  swap
  · omega
  obtain ⟨l₀, rfl⟩ := Finset.card_eq_one.mp h1
  refine ⟨n, A, iA, iReg, x, y, v, σ, b, e, l₀, hv, hdim, hspan,
    h2 l₀ (Finset.mem_singleton_self _), ?_⟩
  rw [hE, Finset.coe_singleton, Set.image_singleton, Set.insert_union, Set.singleton_union]

theorem wcpa_dj_rtsxs_d_node_dim : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})), IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → ringKrullDim O = ((n + 1 : ℕ) : WithBot ℕ∞) :=
by
  intro O _ _ _ A _ _ n x y v σ b e hv hdim hspan
  classical

  obtain ⟨hÔloc, -, hloc, -⟩ := wc_hnas_completion_local_complete O
  haveI := hÔloc
  haveI := hloc
  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal O)
  have hle : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (IsLocalRing.maximalIdeal O) ≤
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    rw [Ideal.map_le_iff_le_comap]
    intro p hp
    rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact (IsLocalRing.mem_maximalIdeal _).mp hp (isUnit_of_map_unit _ p hu)
  have hmap : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (IsLocalRing.maximalIdeal O) =
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    refine le_antisymm hle ?_
    intro c hc
    obtain ⟨p, hp⟩ := (wc_hnas_hs_completion_levels O).1 1 c
    rw [pow_one] at hp
    have h1 : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
      have := sub_mem hc (hle hp)
      rwa [sub_sub_cancel] at this
    have hp𝔪 : p ∈ IsLocalRing.maximalIdeal O := by
      by_contra h
      have hu := (IsLocalRing.notMem_maximalIdeal.mp h).map
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      exact (IsLocalRing.mem_maximalIdeal _).mp h1 hu
    have hc' : c = algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p +
        (c - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p) := by ring
    rw [hc']
    exact add_mem (Ideal.mem_map_of_mem _ hp𝔪) hp
  have hL1 : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = ringKrullDim O :=
    wc_lfi_flat_local_dim_eq O (AdicCompletion (IsLocalRing.maximalIdeal O) O) hmap

  have hsf : Submodule.spanFinrank (IsLocalRing.maximalIdeal A) = n + 2 := by
    have h := (IsRegularLocalRing.spanFinrank_maximalIdeal (R := A))
    rw [← hdim] at h
    exact_mod_cast h
  have hcount : ∀ T : Set A, T.Finite → Ideal.span T = IsLocalRing.maximalIdeal A →
      n + 2 ≤ T.ncard := by
    intro T hT hTs
    rw [← hsf, ← hTs]
    exact Submodule.spanFinrank_span_le_ncard_of_finite hT
  have hgen : ∀ z ∈ ({x, y} ∪ Set.range σ : Set A), z ∈ IsLocalRing.maximalIdeal A := by
    intro z hz
    rw [← hspan]
    exact Ideal.subset_span hz
  have hx𝔪 : x ∈ IsLocalRing.maximalIdeal A := hgen x (by simp)
  have hy𝔪 : y ∈ IsLocalRing.maximalIdeal A := hgen y (by simp)
  have hσ𝔪 : ∀ l, σ l ∈ IsLocalRing.maximalIdeal A := fun l => hgen _ (Or.inr ⟨l, rfl⟩)
  have hrange : (Set.range σ).ncard ≤ n := by
    rw [← Set.image_univ]
    refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
    simp [Set.ncard_univ]
  have hx2 : x ∉ IsLocalRing.maximalIdeal A ^ 2 := by
    intro hx2
    have hle2 : IsLocalRing.maximalIdeal A ≤ Ideal.span (insert y (Set.range σ)) ⊔
        IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A := by
      conv_lhs => rw [← hspan]
      rw [Ideal.span_le]
      intro z hz
      rcases hz with hz | hz
      · rcases hz with rfl | rfl
        · apply Ideal.mem_sup_right
          rw [Ideal.smul_eq_mul, ← pow_two]
          exact hx2
        · apply Ideal.mem_sup_left
          exact Ideal.subset_span (Set.mem_insert _ _)
      · apply Ideal.mem_sup_left
        exact Ideal.subset_span (Set.mem_insert_of_mem _ hz)
    have hN := Submodule.le_of_le_smul_of_le_jacobson_bot
      (IsNoetherian.noetherian (IsLocalRing.maximalIdeal A))
      (IsLocalRing.maximalIdeal_le_jacobson ⊥) hle2
    have hS'span : Ideal.span (insert y (Set.range σ)) = IsLocalRing.maximalIdeal A := by
      refine le_antisymm ?_ hN
      rw [Ideal.span_le]
      rintro z (rfl | ⟨l, rfl⟩)
      · exact hy𝔪
      · exact hσ𝔪 l
    have hc := hcount _ ((Set.finite_range σ).insert y) hS'span
    have hc1 := Set.ncard_insert_le y (Set.range σ)
    omega
  have hσx : ∀ l, σ l ∉ Ideal.span {x} := by
    intro l hl
    obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.mp hl
    have hTspan : Ideal.span (insert x (insert y (σ '' (Set.univ \ {l})))) =
        IsLocalRing.maximalIdeal A := by
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro z (rfl | rfl | ⟨m, -, rfl⟩)
        · exact hx𝔪
        · exact hy𝔪
        · exact hσ𝔪 m
      · rw [← hspan, Ideal.span_le]
        intro z hz
        rcases hz with (rfl | rfl) | ⟨m, rfl⟩
        · exact Ideal.subset_span (Set.mem_insert _ _)
        · exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
        · by_cases hm : m = l
          · rw [hm, ← ha]
            exact Ideal.mul_mem_left _ _ (Ideal.subset_span (Set.mem_insert _ _))
          · exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
              ⟨m, ⟨Set.mem_univ _, hm⟩, rfl⟩))
    have hc := hcount _ (Set.toFinite _) hTspan
    have hc1 := Set.ncard_insert_le x (insert y (σ '' (Set.univ \ {l})))
    have hc2 := Set.ncard_insert_le y (σ '' (Set.univ \ {l}))
    have hc3 : (σ '' (Set.univ \ {l})).ncard ≤ (Set.univ \ {l} : Set (Fin n)).ncard :=
      Set.ncard_image_le (Set.toFinite _)
    have hc4 : (Set.univ \ {l} : Set (Fin n)).ncard < (Set.univ : Set (Fin n)).ncard :=
      Set.ncard_diff_singleton_lt_of_mem (Set.mem_univ l) (Set.toFinite _)
    have hc5 : (Set.univ : Set (Fin n)).ncard = n := by simp [Set.ncard_univ]
    omega
  have hregx := wc_rl_quot_regular wc_rl_quot_embdim A ‹IsRegularLocalRing A› x hx𝔪 hx2
  haveI : IsRegularLocalRing (A ⧸ Ideal.span {x}) := hregx.1
  haveI hdomx : IsDomain (A ⧸ Ideal.span {x}) :=
    wc_rl_isDomain wc_rl_quot_embdim (wc_rl_quot_regular wc_rl_quot_embdim)
      (A ⧸ Ideal.span {x}) hregx.1
  haveI hdomA : IsDomain A :=
    wc_rl_isDomain wc_rl_quot_embdim (wc_rl_quot_regular wc_rl_quot_embdim) A
      ‹IsRegularLocalRing A›
  have hF0 : x * y - v * ∏ l, σ l ^ b l ≠ 0 := by
    intro hF
    have h1 : (Ideal.Quotient.mk (Ideal.span {x})) (x * y - v * ∏ l, σ l ^ b l) = 0 := by
      rw [hF, map_zero]
    have hxq : Ideal.Quotient.mk (Ideal.span {x}) x = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self x)
    rw [map_sub, map_mul, hxq, zero_mul, zero_sub, neg_eq_zero, map_mul, map_prod] at h1
    have h2 : ∏ l, (Ideal.Quotient.mk (Ideal.span {x})) (σ l ^ b l) = 0 :=
      (hv.map (Ideal.Quotient.mk (Ideal.span {x}))).mul_right_eq_zero.mp h1
    obtain ⟨l, -, hl⟩ := Finset.prod_eq_zero_iff.mp h2
    rw [map_pow] at hl
    exact hσx l (Ideal.Quotient.eq_zero_iff_mem.mp (IsNilpotent.eq_zero ⟨_, hl⟩))

  have hF𝔪 : (x * y - v * ∏ l, σ l ^ b l) ∈ IsLocalRing.maximalIdeal A := by
    by_contra h
    have hu := IsLocalRing.notMem_maximalIdeal.mp h
    have htop : Ideal.span {x * y - v * ∏ l, σ l ^ b l} = ⊤ := Ideal.span_singleton_eq_top.mpr hu
    haveI : Subsingleton (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
      Ideal.Quotient.subsingleton_iff.mpr htop
    haveI : Subsingleton (AdicCompletion (IsLocalRing.maximalIdeal O) O) := e.injective.subsingleton
    exact not_subsingleton (AdicCompletion (IsLocalRing.maximalIdeal O) O) inferInstance
  have hFreg : IsSMulRegular A (x * y - v * ∏ l, σ l ^ b l) :=
    (IsRegular.of_ne_zero hF0).left.isSMulRegular
  have hq := ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim hFreg hF𝔪
  rw [← hdim] at hq
  have hd : ringKrullDim (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) =
      ((n + 1 : ℕ) : WithBot ℕ∞) := by
    generalize ringKrullDim (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) = d at hq ⊢
    induction d using WithBot.recBotCoe with
    | bot =>
      exfalso
      rw [WithBot.bot_add] at hq
      exact WithBot.bot_ne_coe hq
    | coe d =>
      induction d using ENat.recTopCoe with
      | top =>
        exfalso
        have h3 : ((⊤ : ℕ∞) : WithBot ℕ∞) + 1 = ((⊤ : ℕ∞) : WithBot ℕ∞) := by
          rw [← WithBot.coe_one, ← WithBot.coe_add, top_add]
        rw [h3] at hq
        exact absurd hq (by
          intro h4
          have h5 : ((n + 2 : ℕ) : WithBot ℕ∞) = (((n + 2 : ℕ) : ℕ∞) : WithBot ℕ∞) := rfl
          rw [h5] at h4
          exact ENat.coe_ne_top _ (WithBot.coe_injective h4).symm)
      | coe m =>
        have h6' : (((m + 1 : ℕ) : ℕ∞) : WithBot ℕ∞) = (((n + 2 : ℕ) : ℕ∞) : WithBot ℕ∞) := by
          first
            | exact_mod_cast hq
            | (rw [← hq]; rfl)
            | (push_cast at hq ⊢; exact hq)
        have h6 : m + 1 = n + 2 := by
          have h8 := WithBot.coe_injective h6'
          exact_mod_cast h8
        have h7 : m = n + 1 := by omega
        subst h7
        rfl
  calc ringKrullDim O = ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) := hL1.symm
    _ = ringKrullDim (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) := ringKrullDim_eq_of_ringEquiv e
    _ = ((n + 1 : ℕ) : WithBot ℕ∞) := hd

theorem wcpa_dj_rtsxs_d_chart_flat_bc : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [IsDomain O] (R : Type u) [CommRing R] [IsLocalRing R] (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* R) (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i)) [P.IsPrime], f i ≠ 0 → P.comap (algebraMap O (wcpaDjChartAlg O f i)) = IsLocalRing.maximalIdeal O → e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)) ∈ nonZeroDivisors R ∧ ∃ (P' : Ideal (wcpaDjChartAlg R (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)) (_ : P'.IsPrime), P'.comap (algebraMap R _) = IsLocalRing.maximalIdeal R ∧ ringKrullDim (Localization.AtPrime P) = ringKrullDim (Localization.AtPrime P') ∧ (IsRegularLocalRing (Localization.AtPrime P') → IsRegularLocalRing (Localization.AtPrime P)) :=
by
  intro O _ _ _ _ R _ _ e r f i P _ hfi hPmax


  have key : ∀ (S : Type u) [CommRing S] [IsLocalRing S] [IsNoetherianRing S] [Algebra O S]
      [Module.FaithfullyFlat O S] (I : Ideal O),
      P.comap (algebraMap O (wcpaDjChartAlg O f i)) = I →
      Ideal.map (algebraMap O S) I = IsLocalRing.maximalIdeal S →
      (∀ x : S, ∃ a : O, x - algebraMap O S a ∈ Ideal.map (algebraMap O S) I) →
      ∃ (P' : Ideal (wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i)) (_ : P'.IsPrime),
        P'.comap (algebraMap S _) = IsLocalRing.maximalIdeal S ∧
        ringKrullDim (Localization.AtPrime P) = ringKrullDim (Localization.AtPrime P') ∧
        (IsRegularLocalRing (Localization.AtPrime P') →
          IsRegularLocalRing (Localization.AtPrime P)) := by
    intro S _ _ _ _ _ I hPI hmax hres
    open TensorProduct in
    focus
        classical
        letI : Algebra S (Localization.Away (f i) ⊗[O] S) := Algebra.TensorProduct.rightAlgebra
        let T := IsLocalization.Away.tensorRightEquiv S (f i) (Localization.Away (f i))
        let ψ : Localization.Away (f i) →+* Localization.Away (algebraMap O S (f i)) :=
          T.toRingEquiv.toRingHom.comp Algebra.TensorProduct.includeLeftRingHom
        have hT1 : ∀ x : S, T (1 ⊗ₜ x) = algebraMap S (Localization.Away (algebraMap O S (f i))) x :=
          fun x => T.commutes x
        have hψalg : ∀ a : O, ψ (algebraMap O (Localization.Away (f i)) a) =
            algebraMap S (Localization.Away (algebraMap O S (f i))) (algebraMap O S a) := by
          intro a
          have h1 : (algebraMap O (Localization.Away (f i)) a) ⊗ₜ[O] (1 : S) =
              (1 : Localization.Away (f i)) ⊗ₜ[O] (algebraMap O S a) := by
            rw [Algebra.algebraMap_eq_smul_one (A := Localization.Away (f i)),
              Algebra.algebraMap_eq_smul_one (A := S), TensorProduct.smul_tmul]
          show T ((algebraMap O (Localization.Away (f i)) a) ⊗ₜ[O] (1 : S)) = _
          rw [h1]
          exact hT1 _
        have hψgen : ∀ l, ψ (IsLocalization.mk' (Localization.Away (f i)) (f l)
            (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) =
            IsLocalization.mk' (Localization.Away (algebraMap O S (f i))) (algebraMap O S (f l))
            (⟨algebraMap O S (f i), Submonoid.mem_powers _⟩ :
              Submonoid.powers (algebraMap O S (f i))) := by
          intro l
          rw [IsLocalization.eq_mk'_iff_mul_eq]
          have h := IsLocalization.mk'_spec (Localization.Away (f i)) (f l)
            (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))
          calc ψ (IsLocalization.mk' (Localization.Away (f i)) (f l)
                (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) *
                algebraMap S (Localization.Away (algebraMap O S (f i))) (algebraMap O S (f i))
              = ψ (IsLocalization.mk' (Localization.Away (f i)) (f l)
                (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) *
                algebraMap O (Localization.Away (f i)) (f i)) := by rw [map_mul, hψalg]
            _ = ψ (algebraMap O (Localization.Away (f i)) (f l)) := congrArg ψ h
            _ = _ := hψalg _
        have hψC : ∀ x ∈ wcpaDjChartAlg O f i,
            ψ x ∈ wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i := by
          intro x hx
          induction hx using Algebra.adjoin_induction with
          | mem x hx =>
            obtain ⟨l, rfl⟩ := hx
            rw [hψgen]
            exact Algebra.subset_adjoin ⟨l, rfl⟩
          | algebraMap a =>
            rw [hψalg]
            exact Subalgebra.algebraMap_mem _ _
          | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
          | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy

        let ιC : wcpaDjChartAlg O f i ⊗[O] S →ₐ[O] Localization.Away (f i) ⊗[O] S :=
          Algebra.TensorProduct.map (wcpaDjChartAlg O f i).val (AlgHom.id O S)
        have hιC : Function.Injective ιC := by
          have h := Module.Flat.rTensor_preserves_injective_linearMap (M := S)
            ((wcpaDjChartAlg O f i).val.toLinearMap) Subtype.val_injective
          have heq : ⇑ιC = ⇑(LinearMap.rTensor S (wcpaDjChartAlg O f i).val.toLinearMap) := by
            funext x
            induction x using TensorProduct.induction_on with
            | zero => simp
            | tmul c s => simp [ιC]
            | add x y hx hy => simp only [map_add, hx, hy]
          rw [heq]; exact h
        let Φ : wcpaDjChartAlg O f i ⊗[O] S →+* Localization.Away (algebraMap O S (f i)) :=
          T.toRingEquiv.toRingHom.comp ιC.toRingHom
        have hΦinj : Function.Injective Φ := T.injective.comp hιC
        have hΦtmul : ∀ (c : wcpaDjChartAlg O f i) (s : S),
            Φ (c ⊗ₜ s) = ψ c * algebraMap S _ s := by
          intro c s
          have h1 : ιC (c ⊗ₜ s) = ((c : Localization.Away (f i)) ⊗ₜ[O] (1:S)) *
              ((1 : Localization.Away (f i)) ⊗ₜ[O] s) := by
            simp [ιC, Algebra.TensorProduct.tmul_mul_tmul]
          show T (ιC (c ⊗ₜ s)) = _
          rw [h1, map_mul, hT1]
          rfl
        have hΦD : ∀ t, Φ t ∈ wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i := by
          intro t
          induction t using TensorProduct.induction_on with
          | zero => rw [map_zero]; exact zero_mem _
          | tmul c s =>
            rw [hΦtmul]
            exact mul_mem (hψC c c.2) (Subalgebra.algebraMap_mem _ s)
          | add x y hx hy => rw [map_add]; exact add_mem hx hy
        have hΦsurj : ∀ y ∈ wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i, ∃ t, Φ t = y := by
          intro y hy
          induction hy using Algebra.adjoin_induction with
          | mem x hx =>
            obtain ⟨l, rfl⟩ := hx
            refine ⟨(⟨_, Algebra.subset_adjoin ⟨l, rfl⟩⟩ : wcpaDjChartAlg O f i) ⊗ₜ (1 : S), ?_⟩
            rw [hΦtmul, map_one, mul_one]
            exact hψgen l
          | algebraMap s =>
            refine ⟨(1 : wcpaDjChartAlg O f i) ⊗ₜ s, ?_⟩
            rw [hΦtmul]
            show ψ 1 * _ = _
            rw [map_one, one_mul]
          | add x y _ _ hx hy =>
            obtain ⟨t1, h1⟩ := hx
            obtain ⟨t2, h2⟩ := hy
            exact ⟨t1 + t2, by rw [map_add, h1, h2]⟩
          | mul x y _ _ hx hy =>
            obtain ⟨t1, h1⟩ := hx
            obtain ⟨t2, h2⟩ := hy
            exact ⟨t1 * t2, by rw [map_mul, h1, h2]⟩
        let Θ : wcpaDjChartAlg O f i ⊗[O] S ≃+* wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i :=
          RingEquiv.ofBijective (Φ.codRestrict (wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i) hΦD)
            ⟨fun a b h => hΦinj (congrArg Subtype.val h), fun y => by
              obtain ⟨t, ht⟩ := hΦsurj y.1 y.2
              exact ⟨t, Subtype.ext ht⟩⟩
        let β : wcpaDjChartAlg O f i →+* wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i :=
          Θ.toRingHom.comp Algebra.TensorProduct.includeLeftRingHom
        have hβval : ∀ c, (β c : Localization.Away (algebraMap O S (f i))) = ψ c := by
          intro c
          show Φ (c ⊗ₜ 1) = ψ c
          rw [hΦtmul, map_one, mul_one]
        have hβff : β.FaithfullyFlat := by
          have h0 : Module.FaithfullyFlat (wcpaDjChartAlg O f i) (wcpaDjChartAlg O f i ⊗[O] S) :=
            Module.FaithfullyFlat.instTensorProduct O S (wcpaDjChartAlg O f i)
          letI := β.toAlgebra
          have hsm : ∀ (c : wcpaDjChartAlg O f i) (t : wcpaDjChartAlg O f i ⊗[O] S),
              c • t = (c ⊗ₜ[O] (1 : S)) * t := by
            intro c t
            induction t using TensorProduct.induction_on with
            | zero => rw [smul_zero, mul_zero]
            | tmul c' s =>
              rw [TensorProduct.smul_tmul', Algebra.TensorProduct.tmul_mul_tmul, one_mul, smul_eq_mul]
            | add x y hx hy => rw [smul_add, mul_add, hx, hy]
          let L : wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i ≃ₗ[wcpaDjChartAlg O f i]
              (wcpaDjChartAlg O f i ⊗[O] S) :=
            { Θ.symm.toAddEquiv with
              map_smul' := fun c d => by
                show Θ.symm (β c * d) = c • Θ.symm d
                rw [hsm, map_mul]
                congr 1
                exact Θ.symm_apply_apply _ }
          first
            | exact Module.FaithfullyFlat.of_linearEquiv (wcpaDjChartAlg O f i)
                (wcpaDjChartAlg O f i ⊗[O] S) L
            | exact @Module.FaithfullyFlat.of_linearEquiv (wcpaDjChartAlg O f i)
                (wcpaDjChartAlg O f i ⊗[O] S) _ _ _ _ _ _ h0 L
            | exact (Module.FaithfullyFlat.of_linearEquiv (wcpaDjChartAlg O f i)
                (wcpaDjChartAlg O f i ⊗[O] S) (L : _ ≃ₗ[wcpaDjChartAlg O f i] _) :)
        have hβalg : ∀ a : O, β (algebraMap O (wcpaDjChartAlg O f i) a) =
            algebraMap S (wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i) (algebraMap O S a) := by
          intro a
          apply Subtype.ext
          rw [hβval]
          exact hψalg a

        have hsw : ∀ (a : O) (c : wcpaDjChartAlg O f i),
            (algebraMap O (wcpaDjChartAlg O f i) a * c) ⊗ₜ[O] (1:S) = c ⊗ₜ[O] (algebraMap O S a) := by
          intro a c
          rw [← Algebra.smul_def, TensorProduct.smul_tmul, Algebra.algebraMap_eq_smul_one (A := S)]
        have hdecT : ∀ t : wcpaDjChartAlg O f i ⊗[O] S, ∃ c : wcpaDjChartAlg O f i,
            t - c ⊗ₜ (1:S) ∈ Ideal.map (Algebra.TensorProduct.includeLeftRingHom :
              wcpaDjChartAlg O f i →+* wcpaDjChartAlg O f i ⊗[O] S)
              (Ideal.map (algebraMap O (wcpaDjChartAlg O f i)) I) := by
          have hR : ∀ m ∈ Ideal.map (algebraMap O S) I, (1 : wcpaDjChartAlg O f i) ⊗ₜ[O] m ∈
              Ideal.map (Algebra.TensorProduct.includeLeftRingHom :
                wcpaDjChartAlg O f i →+* wcpaDjChartAlg O f i ⊗[O] S)
                (Ideal.map (algebraMap O (wcpaDjChartAlg O f i)) I) := by
            have hle : Ideal.map (algebraMap O S) I ≤ Ideal.comap
                (Algebra.TensorProduct.includeRight : S →ₐ[O] wcpaDjChartAlg O f i ⊗[O] S).toRingHom
                (Ideal.map (Algebra.TensorProduct.includeLeftRingHom :
                  wcpaDjChartAlg O f i →+* wcpaDjChartAlg O f i ⊗[O] S)
                  (Ideal.map (algebraMap O (wcpaDjChartAlg O f i)) I)) := by
              rw [Ideal.map_le_iff_le_comap]
              intro a ha
              rw [Ideal.mem_comap, Ideal.mem_comap]
              change (1 : wcpaDjChartAlg O f i) ⊗ₜ[O] (algebraMap O S a) ∈ _
              rw [← hsw a 1, mul_one]
              exact Ideal.mem_map_of_mem _ (Ideal.mem_map_of_mem _ ha)
            intro m hm
            exact hle hm
          intro t
          induction t using TensorProduct.induction_on with
          | zero => exact ⟨0, by simp⟩
          | tmul c s =>
            obtain ⟨a, ha⟩ := hres s
            refine ⟨algebraMap O (wcpaDjChartAlg O f i) a * c, ?_⟩
            rw [hsw, ← TensorProduct.tmul_sub]
            have : c ⊗ₜ[O] (s - algebraMap O S a) =
                (c ⊗ₜ[O] (1:S)) * ((1 : wcpaDjChartAlg O f i) ⊗ₜ[O] (s - algebraMap O S a)) := by
              rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
            rw [this]
            exact Ideal.mul_mem_left _ _ (hR _ ha)
          | add x y hx hy =>
            obtain ⟨c1, h1⟩ := hx
            obtain ⟨c2, h2⟩ := hy
            refine ⟨c1 + c2, ?_⟩
            have : x + y - (c1 + c2) ⊗ₜ[O] (1:S) = (x - c1 ⊗ₜ 1) + (y - c2 ⊗ₜ 1) := by
              rw [TensorProduct.add_tmul]; abel
            rw [this]
            exact add_mem h1 h2
        have hdec : ∀ d : wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i,
            ∃ c, d - β c ∈ Ideal.map β (Ideal.map (algebraMap O (wcpaDjChartAlg O f i)) I) := by
          intro d
          obtain ⟨t, rfl⟩ := Θ.surjective d
          obtain ⟨c, hc⟩ := hdecT t
          refine ⟨c, ?_⟩
          have h1 : Θ t - β c = Θ (t - c ⊗ₜ 1) := by rw [map_sub]; rfl
          rw [h1]
          have h2 := Ideal.mem_map_of_mem (Θ : wcpaDjChartAlg O f i ⊗[O] S →+*
            wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i) hc
          rw [Ideal.map_map] at h2
          exact h2

        have hcm : ∀ K : Ideal (wcpaDjChartAlg O f i), Ideal.comap β (Ideal.map β K) = K := by
          intro K
          letI := β.toAlgebra
          haveI : Module.FaithfullyFlat (wcpaDjChartAlg O f i)
            (wcpaDjChartAlg S (fun l => algebraMap O S (f l)) i) := hβff
          exact Ideal.comap_map_eq_self_of_faithfullyFlat K
        have hJP : Ideal.map (algebraMap O (wcpaDjChartAlg O f i)) I ≤ P :=
          Ideal.map_le_iff_le_comap.mpr (le_of_eq hPI.symm)
        have hP'prime : (Ideal.map β P).IsPrime := by
          rw [Ideal.isPrime_iff]
          have hJ' : Ideal.map β (Ideal.map (algebraMap O (wcpaDjChartAlg O f i)) I) ≤
              Ideal.map β P := Ideal.map_mono hJP
          refine ⟨?_, ?_⟩
          · intro htop
            apply (inferInstance : P.IsPrime).ne_top
            rw [← hcm P, htop, Ideal.comap_top]
          · intro x y hxy
            obtain ⟨c1, h1⟩ := hdec x
            obtain ⟨c2, h2⟩ := hdec y
            have hm1 := hJ' h1
            have hm2 := hJ' h2
            have hc : β (c1 * c2) ∈ Ideal.map β P := by
              have : β (c1 * c2) = x * y - ((x - β c1) * y + β c1 * (y - β c2)) := by
                rw [map_mul]; ring
              rw [this]
              exact sub_mem hxy (add_mem (Ideal.mul_mem_right _ _ hm1) (Ideal.mul_mem_left _ _ hm2))
            have hc' : c1 * c2 ∈ P := by
              have := Ideal.mem_comap.mpr hc
              rwa [hcm P] at this
            rcases (inferInstance : P.IsPrime).mem_or_mem hc' with h | h
            · left
              have : x = (x - β c1) + β c1 := by ring
              rw [this]; exact add_mem hm1 (Ideal.mem_map_of_mem _ h)
            · right
              have : y = (y - β c2) + β c2 := by ring
              rw [this]; exact add_mem hm2 (Ideal.mem_map_of_mem _ h)
        haveI := hP'prime
        have hNoeth : ∀ (A : Type u) [CommRing A] [IsNoetherianRing A] (h : Fin (r + 1) → A),
            IsNoetherianRing (wcpaDjChartAlg A h i) := by
          intro A _ _ h
          haveI : Algebra.FiniteType A (wcpaDjChartAlg A h i) := by
            rw [← Subalgebra.fg_iff_finiteType, Subalgebra.fg_def]
            exact ⟨_, Set.finite_range _, rfl⟩
          exact Algebra.FiniteType.isNoetherianRing A _
        haveI := hNoeth O f
        haveI := hNoeth S (fun l => algebraMap O S (f l))
        letI : Algebra (Localization.AtPrime P) (Localization.AtPrime (Ideal.map β P)) :=
          (Localization.localRingHom P (Ideal.map β P) β (hcm P).symm).toAlgebra
        haveI : Module.Flat (Localization.AtPrime P) (Localization.AtPrime (Ideal.map β P)) :=
          RingHom.Flat.localRingHom hβff.flat (Ideal.map β P) P (hcm P).symm
        haveI : IsLocalHom (algebraMap (Localization.AtPrime P)
            (Localization.AtPrime (Ideal.map β P))) :=
          Localization.isLocalHom_localRingHom _ _ _ _
        haveI : IsNoetherianRing (Localization.AtPrime P) :=
          IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
        haveI : IsNoetherianRing (Localization.AtPrime (Ideal.map β P)) :=
          IsLocalization.isNoetherianRing (Ideal.map β P).primeCompl _ inferInstance
        have hmm : Ideal.map (algebraMap (Localization.AtPrime P)
            (Localization.AtPrime (Ideal.map β P))) (IsLocalRing.maximalIdeal (Localization.AtPrime P)) =
            IsLocalRing.maximalIdeal (Localization.AtPrime (Ideal.map β P)) := by
          rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P),
            ← Localization.AtPrime.map_eq_maximalIdeal (I := Ideal.map β P), Ideal.map_map,
            Ideal.map_map]
          congr 1
          exact RingHom.ext fun c => Localization.localRingHom_to_map _ _ _ (hcm P).symm c
        refine ⟨Ideal.map β P, hP'prime, ?_, ?_, ?_⟩
        · apply le_antisymm
          · exact IsLocalRing.le_maximalIdeal (Ideal.comap_ne_top _ hP'prime.ne_top)
          · rw [← hmax, Ideal.map_le_iff_le_comap, Ideal.comap_comap]
            intro a ha
            rw [Ideal.mem_comap, RingHom.comp_apply, ← hβalg]
            rw [← hPI] at ha
            exact Ideal.mem_map_of_mem _ ha
        · exact (wc_lfi_flat_local_dim_eq (Localization.AtPrime P)
            (Localization.AtPrime (Ideal.map β P)) hmm).symm
        · intro hreg
          exact wc_hnas_pfc_regular_flat_descent (Localization.AtPrime P)
            (Localization.AtPrime (Ideal.map β P)) hreg

  obtain ⟨hlocÔ, -, hlocι, hresÔ⟩ := wc_hnas_completion_local_complete O
  haveI := hlocÔ
  haveI := hlocι
  haveI hNÔ := wc_hnas_completion_noetherian O
  have hlev := (wc_hnas_hs_completion_levels O).1
  let g : O →+* R := e.toRingHom.comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
  letI : Algebra O R := g.toAlgebra
  haveI : IsNoetherianRing R := isNoetherianRing_of_ringEquiv _ e
  have hem : ∀ y : R, y ∈ IsLocalRing.maximalIdeal R ↔
      e.symm y ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    intro y
    rw [IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
      mem_nonunits_iff, MulEquiv.isUnit_map e.symm]
  have hglocal : IsLocalHom (algebraMap O R) := ⟨fun a ha => by
    have h2 : IsUnit (e.symm (g a)) := (MulEquiv.isUnit_map e.symm).mpr ha
    have h3 : e.symm (g a) = algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a :=
      e.symm_apply_apply _
    rw [h3] at h2
    exact isUnit_of_map_unit _ a h2⟩
  haveI := hglocal
  have hflat : Module.Flat O R := by
    have h1 : (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)).Flat :=
      RingHom.flat_algebraMap_iff.mpr (AdicCompletion.flat_of_isNoetherian _)
    have h2 : (e.toRingHom).Flat := RingHom.Flat.of_bijective e.bijective
    have h3 : g.Flat := RingHom.Flat.comp h1 h2
    exact h3
  haveI := hflat
  haveI : Module.FaithfullyFlat O R := Module.FaithfullyFlat.of_flat_of_isLocalHom
  have hle : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (IsLocalRing.maximalIdeal O) ≤
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    rw [Ideal.map_le_iff_le_comap]
    intro p hp
    rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact (IsLocalRing.mem_maximalIdeal _).mp hp (isUnit_of_map_unit _ p hu)
  have hιm : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (IsLocalRing.maximalIdeal O) =
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    apply le_antisymm hle
    intro c hc
    obtain ⟨p, hp⟩ := hlev 1 c
    rw [pow_one] at hp
    have hιp : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
      have := sub_mem hc (hle hp)
      rwa [sub_sub_cancel] at this
    have hpm : p ∈ IsLocalRing.maximalIdeal O := by
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      exact (IsLocalRing.mem_maximalIdeal _).mp hιp (hu.map _)
    have hc' : c = (c - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p) +
        algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p := by ring
    rw [hc']
    exact add_mem hp (Ideal.mem_map_of_mem _ hpm)
  have hmax : Ideal.map (algebraMap O R) (IsLocalRing.maximalIdeal O) =
      IsLocalRing.maximalIdeal R := by
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro p hp
      rw [Ideal.mem_comap, hem]
      have h1 : e.symm (algebraMap O R p) =
          algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p :=
        e.symm_apply_apply _
      rw [h1]
      exact hle (Ideal.mem_map_of_mem _ hp)
    · intro y hy
      rw [hem, ← hιm] at hy
      have h1 := Ideal.mem_map_of_mem e.toRingHom hy
      rw [Ideal.map_map] at h1
      have h2 : e.toRingHom (e.symm y) = y := e.apply_symm_apply y
      rw [h2] at h1
      exact h1
  have hres : ∀ x : R, ∃ a : O, x - algebraMap O R a ∈
      Ideal.map (algebraMap O R) (IsLocalRing.maximalIdeal O) := by
    intro x
    obtain ⟨a, ha⟩ := hresÔ (e.symm x)
    refine ⟨a, ?_⟩
    rw [hmax, hem]
    have h1 : e.symm (x - algebraMap O R a) =
        e.symm x - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a := by
      rw [map_sub]
      congr 1
      exact e.symm_apply_apply _
    rw [h1]
    exact ha
  have hA : e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)) ∈
      nonZeroDivisors R := by
    have hnzd : f i ∈ nonZeroDivisors O := mem_nonZeroDivisors_of_ne_zero hfi
    have hreg := Module.Flat.isSMulRegular_of_nonZeroDivisors (M := R) hnzd
    rw [mem_nonZeroDivisors_iff_right]
    intro x hx
    apply hreg
    show f i • x = f i • (0 : R)
    rw [smul_zero, Algebra.smul_def, mul_comm]
    exact hx
  obtain ⟨P', hP', h1, h2, h3⟩ := key R (IsLocalRing.maximalIdeal O) hPmax hmax hres
  exact ⟨hA, P', hP', h1, h2, h3⟩

theorem wcpa_dj_rtsxs_switch_index : ∀ (R : Type u) [CommRing R] (r m : ℕ) (φ : Fin (r + 1) → R) (ψ : Fin (m + 1) → R) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg R φ i)) [P.IsPrime], Ideal.span (Set.range φ) = Ideal.span (Set.range ψ) → ∃ (j : Fin (m + 1)) (c : wcpaDjChartAlg R φ i), (c : Localization.Away (φ i)) * algebraMap R _ (φ i) = algebraMap R _ (ψ j) ∧ c ∉ P :=
by
  intro R _ r m φ ψ i P hP hspan
  classical
  have hφi : φ i ∈ Ideal.span (Set.range ψ) := hspan ▸ Ideal.subset_span ⟨i, rfl⟩
  obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun R).1 hφi
  have hψ : ∀ j, ∃ d : Fin (r + 1) → R, ∑ l, d l • φ l = ψ j := fun j =>
    (Submodule.mem_span_range_iff_exists_fun R).1
      (show ψ j ∈ Ideal.span (Set.range φ) from hspan ▸ Ideal.subset_span ⟨j, rfl⟩)
  choose d hd using hψ
  let g : Fin (r + 1) → wcpaDjChartAlg R φ i := fun l =>
    ⟨IsLocalization.mk' _ (φ l) ⟨φ i, Submonoid.mem_powers _⟩, Algebra.subset_adjoin ⟨l, rfl⟩⟩
  have hg : ∀ l, ((g l : wcpaDjChartAlg R φ i) : Localization.Away (φ i)) *
      algebraMap R _ (φ i) = algebraMap R _ (φ l) := fun l => IsLocalization.mk'_spec _ _ _
  let c : Fin (m + 1) → wcpaDjChartAlg R φ i := fun j => ∑ l, algebraMap R _ (d j l) * g l
  have hc : ∀ j, (c j : Localization.Away (φ i)) * algebraMap R _ (φ i) =
      algebraMap R _ (ψ j) := by
    intro j
    have e : (c j : Localization.Away (φ i)) =
        ∑ l, algebraMap R (Localization.Away (φ i)) (d j l) * (g l : Localization.Away (φ i)) := by
      simp only [c, AddSubmonoidClass.coe_finsetSum, Subalgebra.coe_mul,
        Subalgebra.coe_algebraMap]
    rw [e, Finset.sum_mul, ← hd j, map_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [mul_assoc, hg l, smul_eq_mul, map_mul]
  let w : wcpaDjChartAlg R φ i := ∑ j, algebraMap R _ (a j) * c j
  have hw : w = 1 := by
    apply Subtype.ext
    have e : (w : Localization.Away (φ i)) =
        ∑ j, algebraMap R (Localization.Away (φ i)) (a j) * (c j : Localization.Away (φ i)) := by
      simp only [w, AddSubmonoidClass.coe_finsetSum, Subalgebra.coe_mul,
        Subalgebra.coe_algebraMap]
    have h1 : (w : Localization.Away (φ i)) * algebraMap R _ (φ i) =
        1 * algebraMap R _ (φ i) := by
      have h2 : algebraMap R (Localization.Away (φ i)) (∑ j, a j • ψ j) =
          algebraMap R (Localization.Away (φ i)) (φ i) :=
        congrArg (algebraMap R (Localization.Away (φ i))) ha
      rw [e, Finset.sum_mul, one_mul]
      refine Eq.trans ?_ h2
      rw [map_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [mul_assoc, hc j, smul_eq_mul, map_mul]
    rw [(IsLocalization.Away.algebraMap_isUnit (φ i)).mul_left_inj.1 h1]
    rfl
  have hex : ∃ j, c j ∉ P := by
    by_contra h
    simp only [not_exists, not_not] at h
    apply hP.ne_top
    rw [Ideal.eq_top_iff_one, ← hw]
    exact Ideal.sum_mem _ fun j _ => Ideal.mul_mem_left _ _ (h j)
  obtain ⟨j, hj⟩ := hex
  exact ⟨j, c j, hc j, hj⟩

theorem wcpa_dj_rtsxs_d_node_nzd : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l₀ : Fin n), IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → 1 ≤ b l₀ → IsDomain A ∧ Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ∧ Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ∧ Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀) ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
by
  intro A _ _ n x y v σ b l₀ hv hdim hspan hb
  classical
  obtain ⟨hdom, hufd⟩ := wc_fco_regular_local_ufd A
  haveI := hdom
  haveI := hufd
  set m := IsLocalRing.maximalIdeal A with hm
  set F := x * y - v * ∏ l, σ l ^ b l with hF
  let τ : Fin (n + 2) → A := Fin.cons x (Fin.cons y σ)
  have hτ0 : τ 0 = x := by simp [τ]
  have hτ1 : τ 1 = y := by simp [τ]
  have hτs : ∀ l : Fin n, τ l.succ.succ = σ l := fun l => by simp [τ]
  have hrange : Set.range τ = {x, y} ∪ Set.range σ := by
    simp only [τ, Fin.range_cons, Set.insert_union, Set.singleton_union]
  have hspanτ : Ideal.span (Set.range τ) = m := by rw [hrange]; exact hspan
  have hτm : ∀ j, τ j ∈ m := fun j => hspanτ ▸ Ideal.subset_span (Set.mem_range_self j)

  have hkey : ∀ s : Set A, s.Finite → s.ncard ≤ n + 1 → s ⊆ m →
      ¬ (m ≤ Ideal.span s ⊔ m ^ 2) := by
    intro s hsf hsc hsm h
    have h1 : m ≤ Ideal.span s := by
      apply Submodule.le_of_le_smul_of_le_jacobson_bot (IsNoetherian.noetherian m)
        (IsLocalRing.maximalIdeal_le_jacobson ⊥)
      rw [Ideal.smul_eq_mul, ← pow_two]; exact h
    have h2 : Ideal.span s = m := le_antisymm (Ideal.span_le.mpr hsm) h1
    have h3 : Submodule.spanFinrank m ≤ n + 1 := by
      rw [← h2]; exact (Submodule.spanFinrank_span_le_ncard_of_finite hsf).trans hsc
    have h4 : m.height ≤ ((n + 1 : ℕ) : ℕ∞) :=
      (Ideal.height_le_spanFinrank m (IsLocalRing.maximalIdeal.isMaximal A).ne_top).trans
        (by exact_mod_cast h3)
    have h5 : m.height = ((n + 2 : ℕ) : ℕ∞) := by
      have e := IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := A)
      rw [← hdim] at e
      exact WithBot.coe_injective e
    rw [h5] at h4
    have h6 : n + 2 ≤ n + 1 := by exact_mod_cast h4
    omega
  have hindep : ∀ j, τ j ∉ Ideal.span (τ '' {j}ᶜ) ⊔ m ^ 2 := by
    intro j hj
    apply hkey (τ '' {j}ᶜ) (Set.toFinite _) ?_ ?_
    · refine hspanτ.symm.le.trans (Ideal.span_le.mpr ?_)
      rintro _ ⟨i, rfl⟩
      by_cases hij : i = j
      · subst hij; exact hj
      · exact Submodule.mem_sup_left (Ideal.subset_span ⟨i, hij, rfl⟩)
    · calc (τ '' {j}ᶜ).ncard ≤ ({j}ᶜ : Set (Fin (n + 2))).ncard :=
            Set.ncard_image_le (Set.toFinite _)
        _ = n + 1 := by
            rw [Set.ncard_compl, Set.ncard_singleton, Nat.card_eq_fintype_card, Fintype.card_fin]
            omega
    · rintro _ ⟨i, _, rfl⟩; exact hτm i
  have hnsq : ∀ j, τ j ∉ m ^ 2 := fun j h => hindep j (Submodule.mem_sup_right h)
  have hsep : ∀ j k, k ≠ j → τ k ∉ Ideal.span {τ j} := by
    intro j k hkj h
    exact hindep k (Submodule.mem_sup_left
      ((Ideal.span_singleton_le_iff_mem _).mpr
        (Ideal.subset_span (show τ j ∈ τ '' {k}ᶜ from ⟨j, fun e => hkj e.symm, rfl⟩)) h))
  have hprime : ∀ j, Prime (τ j) := by
    intro j
    rw [← UniqueFactorizationMonoid.irreducible_iff_prime]
    refine ⟨fun hu => (IsLocalRing.mem_maximalIdeal _).mp (hτm j) hu, fun a c hac => ?_⟩
    by_contra hne
    push_neg at hne
    apply hnsq j
    rw [hac, pow_two]
    exact Ideal.mul_mem_mul ((IsLocalRing.mem_maximalIdeal _).mpr hne.1)
      ((IsLocalRing.mem_maximalIdeal _).mpr hne.2)
  have hpI : ∀ j, (Ideal.span {τ j}).IsPrime := fun j =>
    (Ideal.span_singleton_prime (hprime j).ne_zero).mpr (hprime j)

  have swap : ∀ t g : A, t ∈ nonZeroDivisors A →
      Ideal.Quotient.mk (Ideal.span {t}) g ∈ nonZeroDivisors (A ⧸ Ideal.span {t}) →
      Ideal.Quotient.mk (Ideal.span {g}) t ∈ nonZeroDivisors (A ⧸ Ideal.span {g}) := by
    intro t g ht hg
    rw [mem_nonZeroDivisors_iff_right]
    intro z hz
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective z
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at hz
    obtain ⟨c, hc⟩ := hz
    have h1 : Ideal.Quotient.mk (Ideal.span {t}) c * Ideal.Quotient.mk (Ideal.span {t}) g = 0 := by
      rw [← map_mul, hc, Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self t)
    have h2 := (mem_nonZeroDivisors_iff_right.mp hg) _ h1
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at h2
    obtain ⟨c', hc'⟩ := h2
    have h3 : (a - c' * g) * t = 0 := by linear_combination -hc - g * hc'
    have h4 := (mem_nonZeroDivisors_iff_right.mp ht) _ h3
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton']
    exact ⟨c', by linear_combination -h4⟩
  have hmodF : ∀ j, F ∉ Ideal.span {τ j} →
      Ideal.Quotient.mk (Ideal.span {F}) (τ j) ∈ nonZeroDivisors (A ⧸ Ideal.span {F}) := by
    intro j hFj
    apply swap _ _ (mem_nonZeroDivisors_of_ne_zero (hprime j).ne_zero)
    haveI := hpI j
    haveI : IsDomain (A ⧸ Ideal.span {τ j}) := (Ideal.Quotient.isDomain_iff_prime _).mpr (hpI j)
    apply mem_nonZeroDivisors_of_ne_zero
    rw [Ne, Ideal.Quotient.eq_zero_iff_mem]
    exact hFj
  have hprodmem : ∀ j, F ∈ Ideal.span {τ j} → x * y ∈ Ideal.span {τ j} →
      ∃ l, σ l ∈ Ideal.span {τ j} := by
    intro j hFj hxy
    haveI := hpI j
    have h2 : v * ∏ l, σ l ^ b l ∈ Ideal.span {τ j} := by
      have e : v * ∏ l, σ l ^ b l = x * y - F := by rw [hF]; ring
      rw [e]; exact Ideal.sub_mem _ hxy hFj
    rw [Ideal.unit_mul_mem_iff_mem _ hv, Ideal.IsPrime.prod_mem_iff] at h2
    obtain ⟨l, -, hl⟩ := h2
    exact ⟨l, (hpI j).mem_of_pow_mem _ hl⟩
  have hX : F ∉ Ideal.span {τ 0} := by
    intro hF0
    have hxy : x * y ∈ Ideal.span {τ 0} := by
      rw [hτ0]; exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self x)
    obtain ⟨l, hl⟩ := hprodmem 0 hF0 hxy
    rw [← hτs l] at hl
    exact hsep 0 l.succ.succ (Fin.succ_ne_zero _) hl
  have hY : F ∉ Ideal.span {τ 1} := by
    intro hF1
    have hxy : x * y ∈ Ideal.span {τ 1} := by
      rw [hτ1]; exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self y)
    obtain ⟨l, hl⟩ := hprodmem 1 hF1 hxy
    rw [← hτs l] at hl
    have hne : l.succ.succ ≠ (1 : Fin (n + 2)) := by
      intro h
      have := congrArg Fin.val h
      simp [Fin.val_succ] at this
    exact hsep 1 l.succ.succ hne hl
  have hS : F ∉ Ideal.span {τ l₀.succ.succ} := by
    intro hFs
    haveI := hpI l₀.succ.succ
    have hpr : v * ∏ l, σ l ^ b l ∈ Ideal.span {τ l₀.succ.succ} := by
      rw [hτs]
      apply Ideal.mul_mem_left
      rw [Ideal.mem_span_singleton]
      exact dvd_trans (dvd_pow_self _ (by omega)) (Finset.dvd_prod_of_mem _ (Finset.mem_univ l₀))
    have hxy : x * y ∈ Ideal.span {τ l₀.succ.succ} := by
      have e : x * y = F + v * ∏ l, σ l ^ b l := by rw [hF]; ring
      rw [e]; exact Ideal.add_mem _ hFs hpr
    rcases (hpI l₀.succ.succ).mem_or_mem hxy with h | h
    · rw [← hτ0] at h
      exact hsep l₀.succ.succ 0 (Fin.succ_ne_zero _).symm h
    · rw [← hτ1] at h
      have hne : (1 : Fin (n + 2)) ≠ l₀.succ.succ := by
        intro h'
        have := congrArg Fin.val h'
        simp [Fin.val_succ] at this
      exact hsep l₀.succ.succ 1 hne h
  have r0 := hmodF 0 hX
  have r1 := hmodF 1 hY
  have r2 := hmodF l₀.succ.succ hS
  rw [hτ0] at r0
  rw [hτ1] at r1
  rw [hτs] at r2
  exact ⟨hdom, r0, r1, r2⟩

theorem wcpa_dj_rtsxs_d_axis_chart_present : ∀ (A : Type u) [CommRing A] (I : Ideal A) (a c s w : A) (β : ℕ) (ψ : Fin 3 → A ⧸ I) (j ls : Fin 3), I = Ideal.span {a * c - w * s ^ β} → 2 ≤ β → ψ j = Ideal.Quotient.mk I a → ψ ls = Ideal.Quotient.mk I s → (∀ l, ψ l = Ideal.Quotient.mk I a ∨ ψ l = Ideal.Quotient.mk I c ∨ ψ l = Ideal.Quotient.mk I s) → ∃ θ : Polynomial A →+* wcpaDjChartAlg (A ⧸ I) ψ j, Function.Surjective θ ∧ (∀ r : A, θ (Polynomial.C r) = algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ψ j) (Ideal.Quotient.mk I r)) ∧ θ (Polynomial.C a * Polynomial.X - Polynomial.C s) = 0 ∧ θ (Polynomial.C c - Polynomial.C w * Polynomial.C a ^ (β - 1) * Polynomial.X ^ β) = 0 ∧ ∀ p ∈ RingHom.ker θ, ∃ N : ℕ, Polynomial.C a ^ N * p ∈ Ideal.span {Polynomial.C a * Polynomial.X - Polynomial.C s, Polynomial.C c - Polynomial.C w * Polynomial.C a ^ (β - 1) * Polynomial.X ^ β} :=
by
  intro A _ I a c s w β ψ j ls hI hβ hψj hψls hψ
  classical
  obtain ⟨k, rfl⟩ : ∃ k, β = k + 2 := ⟨β - 2, by omega⟩
  have hk1 : k + 2 - 1 = k + 1 := by omega
  rw [hk1]
  let φ : A →+* Localization.Away (ψ j) :=
    (algebraMap (A ⧸ I) (Localization.Away (ψ j))).comp (Ideal.Quotient.mk I)
  let gen : Fin 3 → Localization.Away (ψ j) := fun l =>
    IsLocalization.mk' (Localization.Away (ψ j)) (ψ l)
      (⟨ψ j, Submonoid.mem_powers _⟩ : Submonoid.powers (ψ j))
  let S : Subalgebra (A ⧸ I) (Localization.Away (ψ j)) := Algebra.adjoin (A ⧸ I) (Set.range gen)
  have hu : gen ls ∈ S := Algebra.subset_adjoin ⟨ls, rfl⟩
  let θ : Polynomial A →+* S :=
    Polynomial.eval₂RingHom ((algebraMap (A ⧸ I) S).comp (Ideal.Quotient.mk I)) ⟨gen ls, hu⟩
  have hφ : ∀ r, φ r = algebraMap (A ⧸ I) (Localization.Away (ψ j)) (Ideal.Quotient.mk I r) :=
    fun r => rfl
  have hCF : ∀ q : Polynomial A, ((θ q : S) : Localization.Away (ψ j)) = q.eval₂ φ (gen ls) := by
    intro q
    have h := Polynomial.hom_eval₂ q ((algebraMap (A ⧸ I) S).comp (Ideal.Quotient.mk I))
      (S.val : S →+* Localization.Away (ψ j)) ⟨gen ls, hu⟩
    have hc : ((S.val : S →+* Localization.Away (ψ j)).comp
        ((algebraMap (A ⧸ I) S).comp (Ideal.Quotient.mk I))) = φ := by
      apply RingHom.ext
      intro r
      simp [φ]
    rw [hc] at h
    exact h
  have hZT : ∀ q : Polynomial A, θ q = 0 ↔ q.eval₂ φ (gen ls) = 0 := by
    intro q
    rw [← hCF]
    exact ⟨fun h => by simp [h], fun h => Subtype.ext h⟩
  have hunit : IsUnit (φ a) := by
    rw [hφ, ← hψj]
    exact IsLocalization.Away.algebraMap_isUnit (ψ j)
  have hgen : ∀ l, φ a * gen l = algebraMap (A ⧸ I) (Localization.Away (ψ j)) (ψ l) := by
    intro l
    rw [hφ, ← hψj]
    exact IsLocalization.mk'_spec' (Localization.Away (ψ j)) (ψ l) _
  have huu : φ a * gen ls = φ s := by rw [hgen ls, hψls, ← hφ]
  have hpow : (φ a * gen ls) ^ (k + 2) = φ s ^ (k + 2) := by rw [huu]
  have hF : φ a * φ c = φ w * φ s ^ (k + 2) := by
    have h0 : Ideal.Quotient.mk I (a * c - w * s ^ (k + 2)) = 0 := by
      rw [Ideal.Quotient.eq_zero_iff_mem, hI]
      exact Ideal.mem_span_singleton_self _
    have h1 : φ (a * c - w * s ^ (k + 2)) = 0 := by rw [hφ, h0, map_zero]
    rw [map_sub, map_mul, map_mul, map_pow] at h1
    exact sub_eq_zero.mp h1
  have hg1e : (Polynomial.C a * Polynomial.X - Polynomial.C s).eval₂ φ (gen ls) = 0 := by
    simp only [Polynomial.eval₂_sub, Polynomial.eval₂_mul, Polynomial.eval₂_C, Polynomial.eval₂_X]
    rw [huu, sub_self]
  have hg2e : (Polynomial.C c - Polynomial.C w * Polynomial.C a ^ (k + 1) * Polynomial.X ^ (k + 2)).eval₂
      φ (gen ls) = 0 := by
    simp only [Polynomial.eval₂_sub, Polynomial.eval₂_mul, Polynomial.eval₂_C, Polynomial.eval₂_X,
      Polynomial.eval₂_pow]
    apply hunit.mul_left_cancel
    linear_combination hF - φ w * hpow
  have hgenq : ∀ l, ∃ q : Polynomial A, q.eval₂ φ (gen ls) = gen l := by
    intro l
    rcases hψ l with h | h | h
    · refine ⟨1, ?_⟩
      apply hunit.mul_left_cancel
      rw [Polynomial.eval₂_one, mul_one, hgen l, h, ← hφ]
    · refine ⟨Polynomial.C (w * a ^ k) * Polynomial.X ^ (k + 2), ?_⟩
      apply hunit.mul_left_cancel
      rw [hgen l, h, ← hφ]
      apply hunit.mul_left_cancel
      simp only [Polynomial.eval₂_mul, Polynomial.eval₂_C, Polynomial.eval₂_X, Polynomial.eval₂_pow,
        map_mul, map_pow]
      linear_combination φ w * hpow - hF
    · refine ⟨Polynomial.X, ?_⟩
      apply hunit.mul_left_cancel
      rw [Polynomial.eval₂_X, hgen l, h, ← hφ, huu]
  have hsurj : Function.Surjective θ := by
    have key : ∀ x ∈ S, ∃ q : Polynomial A, q.eval₂ φ (gen ls) = x := by
      intro x hx
      induction hx using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        exact hgenq l
      | algebraMap r =>
        obtain ⟨r', rfl⟩ := Ideal.Quotient.mk_surjective r
        exact ⟨Polynomial.C r', by rw [Polynomial.eval₂_C]; rfl⟩
      | add x y _ _ hx hy =>
        obtain ⟨q1, h1⟩ := hx
        obtain ⟨q2, h2⟩ := hy
        exact ⟨q1 + q2, by rw [Polynomial.eval₂_add, h1, h2]⟩
      | mul x y _ _ hx hy =>
        obtain ⟨q1, h1⟩ := hx
        obtain ⟨q2, h2⟩ := hy
        exact ⟨q1 * q2, by rw [Polynomial.eval₂_mul, h1, h2]⟩
    intro z
    obtain ⟨q, hq⟩ := key (z : Localization.Away (ψ j)) z.2
    exact ⟨q, Subtype.ext ((hCF q).trans hq)⟩
  have hθg1 : θ (Polynomial.C a * Polynomial.X - Polynomial.C s) = 0 := (hZT _).mpr hg1e
  have hθg2 : θ (Polynomial.C c - Polynomial.C w * Polynomial.C a ^ (k + 1) * Polynomial.X ^ (k + 2))
      = 0 := (hZT _).mpr hg2e
  refine ⟨θ, hsurj, fun r => Polynomial.eval₂_C _ _, hθg1, hθg2, ?_⟩
  intro p hp
  have hp0 : p.eval₂ φ (gen ls) = 0 := (hZT p).mp (RingHom.mem_ker.mp hp)
  obtain ⟨d, hd⟩ : ∃ d, p.natDegree = d := ⟨_, rfl⟩
  obtain ⟨P, hPdef⟩ : ∃ P : A, P = ∑ i ∈ Finset.range (d + 1), p.coeff i * s ^ i * a ^ (d - i) :=
    ⟨_, rfl⟩
  have hhom : Polynomial.C a ^ d * p - Polynomial.C P ∈
      Ideal.span {Polynomial.C a * Polynomial.X - Polynomial.C s} := by
    have hexp : p = ∑ i ∈ Finset.range (d + 1), Polynomial.C (p.coeff i) * Polynomial.X ^ i := by
      rw [← hd]; exact Polynomial.as_sum_range_C_mul_X_pow p
    have e : Polynomial.C a ^ d * p - Polynomial.C P = ∑ i ∈ Finset.range (d + 1),
        (Polynomial.C (p.coeff i) * Polynomial.C a ^ (d - i)) *
          ((Polynomial.C a * Polynomial.X) ^ i - (Polynomial.C s) ^ i) := by
      conv_lhs => rw [hexp]
      rw [hPdef, map_sum, Finset.mul_sum, ← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro i hi
      have hi' : i ≤ d := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
      have hpw : Polynomial.C a ^ d = Polynomial.C a ^ (d - i) * Polynomial.C a ^ i := by
        rw [← pow_add, Nat.sub_add_cancel hi']
      rw [hpw]
      simp only [map_mul, map_pow]
      ring
    rw [e]
    refine Ideal.sum_mem _ (fun i _ => ?_)
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton.mpr (sub_dvd_pow_sub_pow _ _ _))
  obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp hhom
  have hφP : φ P = 0 := by
    have h := congrArg (Polynomial.eval₂ φ (gen ls)) hr
    rw [Polynomial.eval₂_mul, hg1e, Polynomial.eval₂_sub, Polynomial.eval₂_mul, hp0,
      Polynomial.eval₂_C] at h
    linear_combination h
  have hmk : algebraMap (A ⧸ I) (Localization.Away (ψ j)) (Ideal.Quotient.mk I P) = 0 := hφP
  obtain ⟨m, hm⟩ :=
    (IsLocalization.map_eq_zero_iff (Submonoid.powers (ψ j)) (Localization.Away (ψ j)) _).mp hmk
  obtain ⟨M, hM⟩ := (Submonoid.mem_powers_iff _ _).mp m.2
  have hIa : a ^ M * P ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow, ← hψj, hM]
    exact hm
  rw [hI] at hIa
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.mp hIa
  have hCF' : Polynomial.C (a * c - w * s ^ (k + 2)) ∈ Ideal.span {Polynomial.C a * Polynomial.X -
      Polynomial.C s, Polynomial.C c - Polynomial.C w * Polynomial.C a ^ (k + 1) *
        Polynomial.X ^ (k + 2)} := by
    obtain ⟨q, hq⟩ := sub_dvd_pow_sub_pow (Polynomial.C a * Polynomial.X) (Polynomial.C s) (k + 2)
    rw [Ideal.mem_span_pair]
    refine ⟨Polynomial.C w * q, Polynomial.C a, ?_⟩
    simp only [map_sub, map_mul, map_pow]
    linear_combination (-(Polynomial.C w)) * hq
  refine ⟨M + d, ?_⟩
  have h2 : Polynomial.C t * Polynomial.C (a * c - w * s ^ (k + 2)) =
      Polynomial.C a ^ M * Polynomial.C P := by
    rw [← map_mul, ht, map_mul, map_pow]
  have e2 : Polynomial.C a ^ (M + d) * p = Polynomial.C a ^ M * r *
      (Polynomial.C a * Polynomial.X - Polynomial.C s) +
      Polynomial.C t * Polynomial.C (a * c - w * s ^ (k + 2)) := by
    linear_combination (-(Polynomial.C a ^ M)) * hr - h2
  rw [e2]
  exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ (Ideal.subset_span (Set.mem_insert _ _)))
    (Ideal.mul_mem_left _ _ hCF')

theorem wcpa_dj_rtsxs_d_axis_poly_gens : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (m : ℕ) (t : Fin m → A) (ia ic is : Fin m) (w : A) (β : ℕ) (Q : Ideal (Polynomial A)) [Q.IsPrime], (m : WithBot ℕ∞) = ringKrullDim A → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A → ia ≠ ic → ia ≠ is → ic ≠ is → 2 ≤ β → Q.comap Polynomial.C = IsLocalRing.maximalIdeal A → Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is) ∈ Q → Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β ∈ Q → ∃ U : Finset (Localization.AtPrime Q), IsLocalRing.maximalIdeal (Localization.AtPrime Q) = Ideal.span ({algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C (t ia)), algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is)), algebraMap (Polynomial A) (Localization.AtPrime Q) (Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β)} ∪ (U : Set (Localization.AtPrime Q))) ∧ ((U.card + 3 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime Q) :=
by
  intro A _ _ _ m t ia ic is w β Q _ hm hspan h1 h2 h3 hβ hQ _ _
  classical
  have hle : Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) ≤ Q := by
    rw [← hQ]; exact Ideal.map_comap_le

  obtain ⟨F, hF1, hQF, hstrict⟩ : ∃ F : Finset (Polynomial A), F.card ≤ 1 ∧
      Q = Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span (F : Set (Polynomial A)) ∧
      (F.Nonempty → Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) < Q) := by
    set ρ := Polynomial.mapRingHom (IsLocalRing.residue A) with hρ
    have hsurj : Function.Surjective ρ := by
      rw [hρ, Polynomial.coe_mapRingHom]
      exact Polynomial.map_surjective _ IsLocalRing.residue_surjective
    have hker : RingHom.ker ρ = Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) := by
      rw [hρ, Polynomial.ker_mapRingHom, IsLocalRing.ker_residue]
    obtain ⟨g, hg⟩ := (IsPrincipalIdealRing.principal (Ideal.map ρ Q)).principal
    obtain ⟨f, rfl⟩ := hsurj g
    have hQeq : Q = Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {f} := by
      have e1 : Ideal.comap ρ (Ideal.map ρ Q) = Q := by
        rw [Ideal.comap_map_of_surjective' ρ hsurj, hker, sup_eq_left.mpr hle]
      have e2 : Ideal.map ρ Q = Ideal.map ρ (Ideal.span {f}) := by
        rw [Ideal.map_span, Set.image_singleton, hg]
      rw [← e1, e2, Ideal.comap_map_of_surjective' ρ hsurj, hker, sup_comm]
    by_cases hEq : Q = Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A)
    · refine ⟨∅, by simp, ?_, fun h => absurd h (by simp)⟩
      rw [Finset.coe_empty, Ideal.span_empty, sup_bot_eq]
      exact hEq
    · refine ⟨{f}, by simp, ?_, fun _ => lt_of_le_of_ne hle (Ne.symm hEq)⟩
      rw [Finset.coe_singleton]
      exact hQeq

  have hdim : ((m : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime Q) ∧
      (Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) < Q →
        ((m + 1 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime Q)) := by
    have hPh : (Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A)).height = (m : ℕ∞) := by
      rw [Polynomial.height_map_C]
      have := IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := A)
      rw [← hm] at this
      exact_mod_cast this
    have hL : ringKrullDim (Localization.AtPrime Q) = (Q.height : WithBot ℕ∞) :=
      IsLocalization.AtPrime.ringKrullDim_eq_height Q _
    rw [hL]
    constructor
    · have := Ideal.height_mono hle
      rw [hPh] at this
      exact_mod_cast this
    · intro hlt
      have hPprime : (Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A)).IsPrime :=
        Ideal.isPrime_map_C_of_isPrime
      have hgt : (m : ℕ∞) < Q.height := by
        by_contra hcon
        rw [not_lt] at hcon
        have := (Ideal.height_le_iff (p := Q) (n := m)).mp hcon _ hPprime hlt
        rw [hPh] at this
        exact lt_irrefl _ this
      have := Order.add_one_le_of_lt hgt
      exact_mod_cast this

  set Rest : Finset (Fin m) := Finset.univ.filter (fun i => i ≠ ia ∧ i ≠ ic ∧ i ≠ is) with hRest
  set T₀ : Finset (Polynomial A) := Rest.image (fun i => Polynomial.C (t i)) with hT₀
  have hmapC : Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) =
      Ideal.span (Set.range (fun i => Polynomial.C (t i))) := by
    rw [← hspan, Ideal.map_span, ← Set.range_comp]
    rfl
  have hs1 : Ideal.span ({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
      Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
      (T₀ : Set (Polynomial A))) = Ideal.span (Set.range (fun i => Polynomial.C (t i))) := by
    apply le_antisymm
    · rw [Ideal.span_le]
      have hmem : ∀ i, Polynomial.C (t i) ∈ Ideal.span (Set.range (fun i => Polynomial.C (t i))) :=
        fun i => Ideal.subset_span ⟨i, rfl⟩
      intro z hz
      rcases hz with hz | hz
      · rcases hz with rfl | rfl | rfl
        · exact hmem ia
        · exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (hmem ia)) (hmem is)
        · exact Ideal.sub_mem _ (hmem ic) (Ideal.mul_mem_right _ _
            (Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ (hmem ia) _ (by omega))))
      · rw [hT₀, Finset.coe_image] at hz
        obtain ⟨i, -, rfl⟩ := hz
        exact hmem i
    · rw [Ideal.span_le]
      rintro z ⟨i, rfl⟩
      have ha : Polynomial.C (t ia) ∈ Ideal.span ({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
          Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
          (T₀ : Set (Polynomial A))) := Ideal.subset_span (Set.mem_union_left _ (by simp))
      have hg1 : Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is) ∈ Ideal.span ({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
          Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
          (T₀ : Set (Polynomial A))) := Ideal.subset_span (Set.mem_union_left _ (by simp))
      have hg2 : Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β ∈ Ideal.span ({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
          Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
          (T₀ : Set (Polynomial A))) := Ideal.subset_span (Set.mem_union_left _ (by simp))
      have hT : ∀ j ∈ Rest, Polynomial.C (t j) ∈ Ideal.span ({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
          Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
          (T₀ : Set (Polynomial A))) := fun j hj =>
        Ideal.subset_span (Set.mem_union_right _ (Finset.mem_coe.mpr (Finset.mem_image_of_mem _ hj)))
      show Polynomial.C (t i) ∈ _
      generalize Ideal.span ({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
          Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
          (T₀ : Set (Polynomial A))) = J at ha hg1 hg2 hT ⊢
      by_cases hia : i = ia
      · rw [hia]; exact ha
      by_cases his : i = is
      · rw [his]
        have e : Polynomial.C (t is) = Polynomial.C (t ia) * Polynomial.X -
            (Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is)) := by ring
        rw [e]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ ha) hg1
      by_cases hic : i = ic
      · rw [hic]
        have e : Polynomial.C (t ic) = (Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β) +
            Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β := by ring
        rw [e]
        exact Ideal.add_mem _ hg2 (Ideal.mul_mem_right _ _
          (Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ ha _ (by omega))))
      · exact hT i (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hia, hic, his⟩)

  have hQspan : Q = Ideal.span (({Polynomial.C (t ia), Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t is),
      Polynomial.C (t ic) - Polynomial.C w * Polynomial.C (t ia) ^ (β - 1) * Polynomial.X ^ β} ∪
      (T₀ : Set (Polynomial A))) ∪ (F : Set (Polynomial A))) := by
    rw [Ideal.span_union, hs1, ← hmapC]
    exact hQF
  have hmax : IsLocalRing.maximalIdeal (Localization.AtPrime Q) =
      Ideal.map (algebraMap (Polynomial A) (Localization.AtPrime Q)) Q :=
    (Localization.AtPrime.map_eq_maximalIdeal).symm
  refine ⟨(T₀ ∪ F).image (algebraMap (Polynomial A) (Localization.AtPrime Q)), ?_, ?_⟩
  · rw [hmax, congrArg (Ideal.map (algebraMap (Polynomial A) (Localization.AtPrime Q))) hQspan,
      Ideal.map_span]
    congr 1
    simp only [hT₀, Finset.coe_image, Finset.coe_union, Set.image_union, Set.image_insert_eq,
      Set.image_singleton, Set.union_assoc]
  · have hcard3 : ({ia, ic, is} : Finset (Fin m)).card = 3 := by
      rw [Finset.card_insert_of_notMem (by simp [h1, h2]), Finset.card_pair h3]
    have hdisj : Disjoint Rest {ia, ic, is} := by
      rw [Finset.disjoint_left]
      intro i hi hi'
      rw [hRest, Finset.mem_filter] at hi
      simp only [Finset.mem_insert, Finset.mem_singleton] at hi'
      rcases hi' with h | h | h
      · exact hi.2.1 h
      · exact hi.2.2.1 h
      · exact hi.2.2.2 h
    have hu := Finset.card_union_of_disjoint hdisj
    have hle' := Finset.card_le_univ (Rest ∪ {ia, ic, is})
    rw [Fintype.card_fin] at hle'
    have hU : ((T₀ ∪ F).image (algebraMap (Polynomial A) (Localization.AtPrime Q))).card ≤
        Rest.card + F.card :=
      Finset.card_image_le.trans ((Finset.card_union_le _ _).trans
        (Nat.add_le_add_right Finset.card_image_le _))
    have hdimF : ((m + F.card : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime Q) := by
      rcases Nat.le_one_iff_eq_zero_or_eq_one.mp hF1 with h0 | h1'
      · rw [h0, add_zero]; exact hdim.1
      · rw [h1']; exact hdim.2 (hstrict (Finset.card_pos.mp (by omega)))
    refine le_trans ?_ hdimF
    exact_mod_cast (by omega : ((T₀ ∪ F).image (algebraMap (Polynomial A) (Localization.AtPrime Q))).card + 3 ≤ m + F.card)

theorem wcpa_dj_rtsxs_d_axis_chart_regular : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l₀ : Fin n) (j : Fin 3) (Q : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] j)) [Q.IsPrime], IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → 2 ≤ b l₀ → j ≠ 2 → Q.comap (algebraMap (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) _) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (IsLocalRing.maximalIdeal A) → IsRegularLocalRing (Localization.AtPrime Q) :=
by
  intro A _ _ n x y v σ b l₀ j
  generalize hI : Ideal.span {x * y - v * ∏ l, σ l ^ b l} = I
  generalize hψ : (![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I (σ l₀)] :
    Fin 3 → A ⧸ I) = ψ
  intro Q _ hv hdim hspan hb hj hQ
  classical

  have L3 : ∀ (S E : Type u) [CommRing S] [CommRing E] [Algebra S E] (J₀ K : Ideal S) (a : S),
      J₀ ≤ K → (∀ p ∈ K, ∃ N : ℕ, a ^ N * p ∈ J₀) →
      IsDomain (E ⧸ Ideal.map (algebraMap S E) J₀) →
      Ideal.Quotient.mk (Ideal.map (algebraMap S E) J₀) (algebraMap S E a) ≠ 0 →
      Ideal.map (algebraMap S E) K = Ideal.map (algebraMap S E) J₀ := by
    intro S E _ _ _ J₀ K a hle hsat hdom ha
    refine le_antisymm ?_ (Ideal.map_mono hle)
    rw [Ideal.map_le_iff_le_comap]
    intro p hp
    obtain ⟨N, hN⟩ := hsat p hp
    rw [Ideal.mem_comap, ← Ideal.Quotient.eq_zero_iff_mem]
    have h1 : Ideal.Quotient.mk (Ideal.map (algebraMap S E) J₀) (algebraMap S E (a ^ N * p)) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_map_of_mem _ hN)
    rw [map_mul, map_mul, map_pow, map_pow] at h1
    exact (mul_eq_zero.mp h1).resolve_left (pow_ne_zero _ ha)

  have L2a : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (a g₁ g₂ : E)
      (U : Finset E), IsLocalRing.maximalIdeal E = Ideal.span ({a, g₁, g₂} ∪ (U : Set E)) →
      ((U.card + 3 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim E →
      IsRegularLocalRing (E ⧸ Ideal.span {g₁, g₂}) ∧
        Ideal.Quotient.mk (Ideal.span {g₁, g₂}) a ≠ 0 := by
    intro E _ _ _ a g₁ g₂ U hm hd
    have hg1 : g₁ ∈ IsLocalRing.maximalIdeal E := hm ▸ Ideal.subset_span (by simp)
    have hg2 : g₂ ∈ IsLocalRing.maximalIdeal E := hm ▸ Ideal.subset_span (by simp)
    have hJle : Ideal.span {g₁, g₂} ≤ IsLocalRing.maximalIdeal E := by
      rw [Ideal.span_le]
      intro z hz
      rcases hz with rfl | rfl
      · exact hg1
      · exact hg2
    haveI : Nontrivial (E ⧸ Ideal.span {g₁, g₂}) :=
      Ideal.Quotient.nontrivial_iff.mpr
        (ne_top_of_le_ne_top (IsLocalRing.maximalIdeal.isMaximal E).ne_top hJle)
    haveI : IsLocalRing (E ⧸ Ideal.span {g₁, g₂}) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective
    have hmk1 : Ideal.Quotient.mk (Ideal.span {g₁, g₂}) g₁ = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (by simp))
    have hmk2 : Ideal.Quotient.mk (Ideal.span {g₁, g₂}) g₂ = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (by simp))
    have hcomap : Ideal.comap (Ideal.Quotient.mk (Ideal.span {g₁, g₂}))
        (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂})) = IsLocalRing.maximalIdeal E := by
      haveI := Ideal.comap_isMaximal_of_surjective (Ideal.Quotient.mk (Ideal.span {g₁, g₂}))
        Ideal.Quotient.mk_surjective (K := IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂}))
        (H := IsLocalRing.maximalIdeal.isMaximal _)
      exact IsLocalRing.eq_maximalIdeal this
    have hmq : IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂}) =
        Ideal.span (insert (Ideal.Quotient.mk (Ideal.span {g₁, g₂}) a)
          ((Ideal.Quotient.mk (Ideal.span {g₁, g₂})) '' (U : Set E))) := by
      rw [← Ideal.map_comap_of_surjective _ Ideal.Quotient.mk_surjective
        (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂})), hcomap, hm, Ideal.map_span,
        Set.image_union, Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton, hmk1, hmk2,
        Set.insert_union, Set.insert_union, Set.singleton_union, Set.insert_comm _ (0 : E ⧸ _),
        Ideal.span_insert_zero, Set.insert_comm _ (0 : E ⧸ _), Ideal.span_insert_zero]
    have hfinU : ((Ideal.Quotient.mk (Ideal.span {g₁, g₂})) '' (U : Set E)).Finite :=
      U.finite_toSet.image _
    have hncU : ((Ideal.Quotient.mk (Ideal.span {g₁, g₂})) '' (U : Set E)).ncard ≤ U.card := by
      have := Set.ncard_image_le (f := Ideal.Quotient.mk (Ideal.span {g₁, g₂})) U.finite_toSet
      rwa [Set.ncard_coe_finset] at this
    have hemb : Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂})) ≤
        U.card + 1 := by
      rw [hmq]
      refine (Submodule.spanFinrank_span_le_ncard_of_finite (hfinU.insert _)).trans ?_
      exact (Set.ncard_insert_le _ _).trans (by omega)
    have hjac : (↑({g₁, g₂} : Finset E) : Set E) ⊆ ↑(Ring.jacobson E) := by
      have hj' : Ring.jacobson E = IsLocalRing.maximalIdeal E := by
        rw [← Ideal.jacobson_bot]
        exact IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top
      rw [hj', Finset.coe_pair]
      intro z hz
      rcases hz with rfl | rfl
      · exact hg1
      · exact hg2
    have hK := ringKrullDim_le_ringKrullDim_quotient_add_card ({g₁, g₂} : Finset E) hjac
    rw [Finset.coe_pair] at hK
    have hc2 : (({g₁, g₂} : Finset E).card : WithBot ℕ∞) ≤ ((2 : ℕ) : WithBot ℕ∞) := by
      exact_mod_cast Finset.card_le_two
    have hK' : ((U.card + 3 : ℕ) : WithBot ℕ∞) ≤
        ringKrullDim (E ⧸ Ideal.span {g₁, g₂}) + ((2 : ℕ) : WithBot ℕ∞) :=
      hd.trans (hK.trans (by gcongr))
    have hk1 : ((U.card + 1 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (E ⧸ Ideal.span {g₁, g₂}) := by
      have h0 := ringKrullDim_nonneg_of_nontrivial (R := E ⧸ Ideal.span {g₁, g₂})
      obtain ⟨d, hdq⟩ : ∃ d : ℕ∞, ringKrullDim (E ⧸ Ideal.span {g₁, g₂}) = d := by
        refine WithBot.ne_bot_iff_exists.mp ?_ |>.imp fun d hd => hd.symm
        intro hb'
        rw [hb'] at h0
        exact absurd h0 (by simp)
      rw [hdq] at hK' ⊢
      induction d using ENat.recTopCoe with
      | top => exact WithBot.coe_le_coe.mpr le_top
      | coe d =>
        have e : ((d : ℕ∞) : WithBot ℕ∞) = ((d : ℕ) : WithBot ℕ∞) := by
          first | rfl | simp | exact (WithBot.coe_natCast d)
        rw [e] at hK' ⊢
        have h3 : U.card + 3 ≤ d + 2 := by exact_mod_cast hK'
        exact_mod_cast (by omega : U.card + 1 ≤ d)
    refine ⟨IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _ ?_, ?_⟩
    · exact (by exact_mod_cast hemb : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal
        (E ⧸ Ideal.span {g₁, g₂})) : ℕ) : WithBot ℕ∞) ≤ ((U.card + 1 : ℕ) : WithBot ℕ∞)).trans hk1
    · intro h0
      rw [h0, Ideal.span_insert_zero] at hmq
      have hemb0 : Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂})) ≤
          U.card := by
        rw [hmq]
        exact (Submodule.spanFinrank_span_le_ncard_of_finite hfinU).trans hncU
      have hht := Ideal.height_le_spanFinrank
        (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂}))
        (IsLocalRing.maximalIdeal.isMaximal _).ne_top
      have hdimq := IsLocalRing.maximalIdeal_height_eq_ringKrullDim
        (R := E ⧸ Ideal.span {g₁, g₂})
      have h1 : ringKrullDim (E ⧸ Ideal.span {g₁, g₂}) ≤ ((U.card : ℕ) : WithBot ℕ∞) := by
        rw [← hdimq]
        have h2 : (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {g₁, g₂})).height ≤
            ((U.card : ℕ) : ℕ∞) := hht.trans (by exact_mod_cast hemb0)
        exact_mod_cast h2
      have h3 := hk1.trans h1
      have h4 : U.card + 1 ≤ U.card := by exact_mod_cast h3
      omega

  obtain ⟨t, ht0, ht1, hts, hrange⟩ : ∃ t : Fin (n + 2) → A, t 0 = x ∧ t 1 = y ∧
      t l₀.succ.succ = σ l₀ ∧ Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A := by
    refine ⟨Matrix.vecCons x (Matrix.vecCons y σ), by simp, by simp, by simp, ?_⟩
    rw [← hspan, Matrix.range_cons, Matrix.range_cons, ← Set.union_assoc, ← Set.insert_eq]
  have d01 : (0 : Fin (n + 2)) ≠ 1 := by simp [Fin.ext_iff]
  have d0s : (0 : Fin (n + 2)) ≠ l₀.succ.succ := (Fin.succ_ne_zero _).symm
  have d1s : (1 : Fin (n + 2)) ≠ l₀.succ.succ := by
    rw [Ne, Fin.ext_iff]; simp

  obtain ⟨ia, ic, hxy, hψj, hψl, hne1, hne2, hne3⟩ : ∃ ia ic : Fin (n + 2),
      x * y = t ia * t ic ∧ ψ j = Ideal.Quotient.mk I (t ia) ∧
      (∀ l, ψ l = Ideal.Quotient.mk I (t ia) ∨ ψ l = Ideal.Quotient.mk I (t ic) ∨
        ψ l = Ideal.Quotient.mk I (t l₀.succ.succ)) ∧
      ia ≠ ic ∧ ia ≠ l₀.succ.succ ∧ ic ≠ l₀.succ.succ := by
    rw [← hψ]
    have key : ∀ j' : Fin 3, j' ≠ 2 → ∃ ia ic : Fin (n + 2),
        x * y = t ia * t ic ∧
        (![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I (σ l₀)] :
          Fin 3 → A ⧸ I) j' = Ideal.Quotient.mk I (t ia) ∧
        (∀ l, (![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I (σ l₀)] :
            Fin 3 → A ⧸ I) l = Ideal.Quotient.mk I (t ia) ∨
          (![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I (σ l₀)] :
            Fin 3 → A ⧸ I) l = Ideal.Quotient.mk I (t ic) ∨
          (![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I (σ l₀)] :
            Fin 3 → A ⧸ I) l = Ideal.Quotient.mk I (t l₀.succ.succ)) ∧
        ia ≠ ic ∧ ia ≠ l₀.succ.succ ∧ ic ≠ l₀.succ.succ := by
      intro j' hj'
      fin_cases j'
      · refine ⟨0, 1, by rw [ht0, ht1], by simp [ht0], ?_, d01, d0s, d1s⟩
        intro l
        fin_cases l <;> simp [ht0, ht1, hts]
      · refine ⟨1, 0, by rw [ht0, ht1, mul_comm], by simp [ht1], ?_, d01.symm, d1s, d0s⟩
        intro l
        fin_cases l <;> simp [ht0, ht1, hts]
      · exact absurd rfl hj'
    exact key j hj

  have hprod : ∏ l, σ l ^ b l = σ l₀ ^ b l₀ * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l :=
    (Finset.mul_prod_erase Finset.univ (fun l => σ l ^ b l) (Finset.mem_univ l₀)).symm
  have hI' : I = Ideal.span {t ia * t ic - (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) *
      t l₀.succ.succ ^ b l₀} := by
    have e : x * y - v * ∏ l, σ l ^ b l = t ia * t ic - (v * ∏ l ∈ Finset.univ.erase l₀,
        σ l ^ b l) * t l₀.succ.succ ^ b l₀ := by
      rw [hprod, hxy, hts]; ring
    rw [← hI, e]
  have hψ2 : ψ 2 = Ideal.Quotient.mk I (t l₀.succ.succ) := by
    rw [← hψ, hts]; simp

  obtain ⟨θ, hsurj, hC, hg1, hg2, hsat⟩ := wcpa_dj_rtsxs_d_axis_chart_present A I (t ia) (t ic)
    (t l₀.succ.succ) (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) (b l₀) ψ j 2 hI' hb hψj hψ2 hψl

  haveI hQt : (Q.comap θ).IsPrime := Ideal.IsPrime.comap θ
  have hmemA : ∀ i, t i ∈ IsLocalRing.maximalIdeal A := fun i =>
    hrange ▸ Ideal.subset_span ⟨i, rfl⟩
  have hIle : I ≤ IsLocalRing.maximalIdeal A := by
    rw [hI', Ideal.span_le, Set.singleton_subset_iff]
    exact sub_mem (Ideal.mul_mem_right _ _ (hmemA ia))
      (Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ (hmemA _) _ (by omega)))
  have hQC : (Q.comap θ).comap Polynomial.C = IsLocalRing.maximalIdeal A := by
    rw [Ideal.comap_comap]
    have hcomp : θ.comp Polynomial.C = (algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ψ j)).comp
        (Ideal.Quotient.mk I) := RingHom.ext hC
    rw [hcomp, ← Ideal.comap_comap, hQ,
      Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective, Ideal.mk_ker]
    exact sup_eq_left.mpr hIle
  have hg1Q : Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t l₀.succ.succ) ∈ Q.comap θ := by
    rw [Ideal.mem_comap, hg1]; exact Q.zero_mem
  have hg2Q : Polynomial.C (t ic) - Polynomial.C (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) *
      Polynomial.C (t ia) ^ (b l₀ - 1) * Polynomial.X ^ (b l₀) ∈ Q.comap θ := by
    rw [Ideal.mem_comap, hg2]; exact Q.zero_mem

  obtain ⟨U, hmE, hcard⟩ := wcpa_dj_rtsxs_d_axis_poly_gens A (n + 2) t ia ic l₀.succ.succ
    (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) (b l₀) (Q.comap θ) hdim hrange hne1 hne2 hne3 hb
    hQC hg1Q hg2Q
  obtain ⟨hreg, hne⟩ := L2a _ _ _ _ U hmE hcard
  haveI := hreg
  have hdom := wc_rl_isDomain wc_rl_quot_embdim (wc_rl_quot_regular wc_rl_quot_embdim) _ hreg

  have hJ : Ideal.map (algebraMap (Polynomial A) (Localization.AtPrime (Q.comap θ)))
      (Ideal.span {Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t l₀.succ.succ),
        Polynomial.C (t ic) - Polynomial.C (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) *
          Polynomial.C (t ia) ^ (b l₀ - 1) * Polynomial.X ^ (b l₀)}) =
      Ideal.span {algebraMap (Polynomial A) (Localization.AtPrime (Q.comap θ))
          (Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t l₀.succ.succ)),
        algebraMap (Polynomial A) (Localization.AtPrime (Q.comap θ))
          (Polynomial.C (t ic) - Polynomial.C (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) *
            Polynomial.C (t ia) ^ (b l₀ - 1) * Polynomial.X ^ (b l₀))} := by
    rw [Ideal.map_span, Set.image_pair]
  have hJle : Ideal.span {Polynomial.C (t ia) * Polynomial.X - Polynomial.C (t l₀.succ.succ),
      Polynomial.C (t ic) - Polynomial.C (v * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) *
        Polynomial.C (t ia) ^ (b l₀ - 1) * Polynomial.X ^ (b l₀)} ≤ RingHom.ker θ := by
    rw [Ideal.span_le]
    intro z hz
    rcases hz with rfl | rfl
    · exact RingHom.mem_ker.mpr hg1
    · exact RingHom.mem_ker.mpr hg2
  have hker := L3 (Polynomial A) (Localization.AtPrime (Q.comap θ)) _ (RingHom.ker θ)
    (Polynomial.C (t ia)) hJle hsat (by rw [hJ]; exact hdom) (by rw [hJ]; exact hne)
  obtain ⟨Φ⟩ := wcpa_dj_rss_quot_localization (Polynomial A) (wcpaDjChartAlg (A ⧸ I) ψ j) θ hsurj Q
  haveI : IsRegularLocalRing (Localization.AtPrime (Q.comap θ) ⧸
      Ideal.map (algebraMap (Polynomial A) (Localization.AtPrime (Q.comap θ))) (RingHom.ker θ)) := by
    rw [hker, hJ]; exact hreg
  exact IsRegularLocalRing.of_ringEquiv Φ

theorem wcpa_dj_rtsxs_oc_presentation : ∀ (A : Type u) [CommRing A] (n : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l₀ : Fin n), 2 ≤ b l₀ → ∃ φ : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2, Function.Surjective φ ∧ (∀ a : A, φ (MvPolynomial.C a) = algebraMap (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2) (Ideal.Quotient.mk _ a)) ∧ φ (MvPolynomial.X 0) = wcpaDjChartGen _ ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2 0 ∧ φ (MvPolynomial.X 1) = wcpaDjChartGen _ ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2 1 ∧ φ (MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x) = 0 ∧ φ (MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y) = 0 ∧ φ (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C (v * σ l₀ ^ (b l₀ - 2) * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l)) = 0 ∧ ∀ f : MvPolynomial (Fin 2) A, φ f = 0 → ∃ k : ℕ, MvPolynomial.C (σ l₀) ^ k * f ∈ Ideal.span {MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y, MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C (v * σ l₀ ^ (b l₀ - 2) * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l)} :=
by
  intro A _ n x y v σ b l₀ hb
  classical
  have key : ∀ (s c : A), ∃ φ : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ Ideal.span {x * y - s ^ 2 * c}) ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ s] 2, Function.Surjective φ ∧ (∀ a : A, φ (MvPolynomial.C a) = algebraMap (A ⧸ Ideal.span {x * y - s ^ 2 * c}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - s ^ 2 * c}) ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ s] 2) (Ideal.Quotient.mk _ a)) ∧ φ (MvPolynomial.X 0) = wcpaDjChartGen _ ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ s] 2 0 ∧ φ (MvPolynomial.X 1) = wcpaDjChartGen _ ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ s] 2 1 ∧ φ (MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x) = 0 ∧ φ (MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y) = 0 ∧ φ (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c) = 0 ∧ ∀ f : MvPolynomial (Fin 2) A, φ f = 0 → ∃ k : ℕ, MvPolynomial.C s ^ k * f ∈ Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y, MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c} := by
    intro s c
    have hFI : x * y - s ^ 2 * c ∈ Ideal.span {x * y - s ^ 2 * c} := Ideal.mem_span_singleton_self _
    generalize hIdef : Ideal.span {x * y - s ^ 2 * c} = I at hFI ⊢
    have hxy : Ideal.Quotient.mk I x * Ideal.Quotient.mk I y =
        Ideal.Quotient.mk I s ^ 2 * Ideal.Quotient.mk I c := by
      rw [← map_mul, ← map_pow, ← map_mul, Ideal.Quotient.eq]
      exact hFI
    let φ : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 :=
      MvPolynomial.eval₂Hom ((algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2)).comp (Ideal.Quotient.mk I))
        ![wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 0,
          wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 1]
    have hC : ∀ a : A, φ (MvPolynomial.C a) = algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2) (Ideal.Quotient.mk I a) := by
      intro a
      exact MvPolynomial.eval₂Hom_C _ _ _
    have hX0 : φ (MvPolynomial.X 0) = wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 0 := by
      exact MvPolynomial.eval₂Hom_X' _ _ _
    have hX1 : φ (MvPolynomial.X 1) = wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 1 := by
      exact MvPolynomial.eval₂Hom_X' _ _ _
    have hv0 : (wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 0).val = IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) := rfl
    have hv1 : (wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 1).val = IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) := rfl
    have hva : ∀ r : A ⧸ I, (algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2) r).val = algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) r := fun r => rfl
    have hg1 : φ (MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x) = 0 := by
      apply Subtype.ext
      rw [map_sub, map_mul, hC, hC, hX0, Subalgebra.coe_sub, Subalgebra.coe_mul, hva, hva, hv0,
        ZeroMemClass.coe_zero]
      show (algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I s) * IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) - algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) : Localization.Away (Ideal.Quotient.mk I s)) = 0
      rw [sub_eq_zero]
      exact IsLocalization.mk'_spec' (M := Submonoid.powers (Ideal.Quotient.mk I s)) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) ⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩
    have hg2 : φ (MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y) = 0 := by
      apply Subtype.ext
      rw [map_sub, map_mul, hC, hC, hX1, Subalgebra.coe_sub, Subalgebra.coe_mul, hva, hva, hv1,
        ZeroMemClass.coe_zero]
      show (algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I s) * IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) - algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) : Localization.Away (Ideal.Quotient.mk I s)) = 0
      rw [sub_eq_zero]
      exact IsLocalization.mk'_spec' (M := Submonoid.powers (Ideal.Quotient.mk I s)) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) ⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩
    have hg3 : φ (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c) = 0 := by
      apply Subtype.ext
      rw [map_sub, map_mul, hC, hX0, hX1, Subalgebra.coe_sub, Subalgebra.coe_mul, hva, hv0, hv1,
        ZeroMemClass.coe_zero]
      show (IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) * IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) - algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I c) : Localization.Away (Ideal.Quotient.mk I s)) = 0
      rw [sub_eq_zero, ← IsLocalization.mk'_mul,
        IsLocalization.mk'_eq_iff_eq_mul, hxy, Submonoid.coe_mul, ← map_mul]
      congr 1
      show Ideal.Quotient.mk I s ^ 2 * Ideal.Quotient.mk I c =
        Ideal.Quotient.mk I c * (Ideal.Quotient.mk I s * Ideal.Quotient.mk I s)
      ring
    refine ⟨φ, ?_, hC, hX0, hX1, hg1, hg2, hg3, ?_⟩
    ·
      rintro ⟨z, hz⟩
      induction hz using Algebra.adjoin_induction with
      | mem z hz' =>
        obtain ⟨l, rfl⟩ := hz'
        fin_cases l
        · exact ⟨MvPolynomial.X 0, by rw [hX0]; rfl⟩
        · exact ⟨MvPolynomial.X 1, by rw [hX1]; rfl⟩
        · refine ⟨1, ?_⟩
          apply Subtype.ext
          rw [map_one, OneMemClass.coe_one]
          exact (IsLocalization.mk'_self' _).symm
      | algebraMap r =>
        obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective r
        exact ⟨MvPolynomial.C a, by rw [hC]; rfl⟩
      | add z₁ z₂ h₁ h₂ ih₁ ih₂ =>
        obtain ⟨p₁, hp₁⟩ := ih₁
        obtain ⟨p₂, hp₂⟩ := ih₂
        exact ⟨p₁ + p₂, by rw [map_add, hp₁, hp₂]; rfl⟩
      | mul z₁ z₂ h₁ h₂ ih₁ ih₂ =>
        obtain ⟨p₁, hp₁⟩ := ih₁
        obtain ⟨p₂, hp₂⟩ := ih₂
        exact ⟨p₁ * p₂, by rw [map_mul, hp₁, hp₂]; rfl⟩
    ·
      intro f hf
      have hred : ∀ f : MvPolynomial (Fin 2) A, ∃ (d : ℕ) (a : A),
          MvPolynomial.C s ^ d * f - MvPolynomial.C a ∈
            Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
              MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} := by
        intro f
        refine MvPolynomial.induction_on (motive := fun f : MvPolynomial (Fin 2) A => ∃ (d : ℕ) (a : A),
          MvPolynomial.C s ^ d * f - MvPolynomial.C a ∈
            Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
              MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y}) f ?_ ?_ ?_
        · intro a
          exact ⟨0, a, by rw [pow_zero, one_mul, sub_self]; exact Ideal.zero_mem _⟩
        · rintro p q ⟨d₁, a₁, h₁⟩ ⟨d₂, a₂, h₂⟩
          refine ⟨d₁ + d₂, s ^ d₂ * a₁ + s ^ d₁ * a₂, ?_⟩
          have e : MvPolynomial.C s ^ (d₁ + d₂) * (p + q) - MvPolynomial.C (s ^ d₂ * a₁ + s ^ d₁ * a₂)
              = MvPolynomial.C s ^ d₂ * (MvPolynomial.C s ^ d₁ * p - MvPolynomial.C a₁)
                + MvPolynomial.C s ^ d₁ * (MvPolynomial.C s ^ d₂ * q - MvPolynomial.C a₂) := by
            simp only [map_add, map_mul, map_pow]
            ring
          rw [e]
          exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ h₁) (Ideal.mul_mem_left _ _ h₂)
        · rintro p i ⟨d, a, h⟩
          have hgi : MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C (![x, y] i) ∈
              Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
                MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} := by
            fin_cases i
            · exact Ideal.subset_span (Set.mem_insert _ _)
            · exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_singleton _))
          refine ⟨d + 1, a * ![x, y] i, ?_⟩
          have e : MvPolynomial.C s ^ (d + 1) * (p * MvPolynomial.X i) - MvPolynomial.C (a * ![x, y] i)
              = (MvPolynomial.C s ^ d * p - MvPolynomial.C a) * (MvPolynomial.C s * MvPolynomial.X i)
                + MvPolynomial.C a * (MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C (![x, y] i)) := by
            rw [map_mul]
            ring
          rw [e]
          exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ h) (Ideal.mul_mem_left _ _ hgi)
      obtain ⟨d, a, h⟩ := hred f
      have hJ1 : Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} ≤ RingHom.ker φ := by
        rw [Ideal.span_le]
        intro p hp
        rcases hp with rfl | rfl
        · exact RingHom.mem_ker.mpr hg1
        · exact RingHom.mem_ker.mpr hg2
      have hφa : φ (MvPolynomial.C a) = 0 := by
        have h0 := RingHom.mem_ker.mp (hJ1 h)
        rw [map_sub, map_mul, hf, mul_zero, zero_sub, neg_eq_zero] at h0
        exact h0
      have hL : algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I a) = 0 := by
        have h0 := congrArg Subtype.val hφa
        rw [hC, hva] at h0
        exact h0
      obtain ⟨⟨_, m, rfl⟩, hm⟩ :=
        (IsLocalization.map_eq_zero_iff (Submonoid.powers (Ideal.Quotient.mk I s))
          (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I a)).mp hL
      have hmem : s ^ m * a ∈ I := by
        rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow]
        exact hm
      have hJ : ∀ p ∈ ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c} : Set (MvPolynomial (Fin 2) A)),
          p ∈ Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
            MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y,
            MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c} := fun p hp => Ideal.subset_span hp
      have hJ1J : Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ≤
          Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
            MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y,
            MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c} : Set (MvPolynomial (Fin 2) A)) := by
        apply Ideal.span_mono
        intro p hp
        rcases hp with rfl | rfl
        · exact Set.mem_insert _ _
        · exact Set.mem_insert_of_mem _ (Set.mem_insert _ _)
      rw [← hIdef] at hmem
      obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp hmem
      refine ⟨m + d, ?_⟩
      have e : MvPolynomial.C s ^ (m + d) * f =
          MvPolynomial.C s ^ m * (MvPolynomial.C s ^ d * f - MvPolynomial.C a) +
          MvPolynomial.C r * (MvPolynomial.C s ^ 2 * (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c)
            - MvPolynomial.C x * (MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y)
            - MvPolynomial.C s * MvPolynomial.X 1 * (MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x)) := by
        have h2 : MvPolynomial.C (s ^ m * a) = (MvPolynomial.C (r * (x * y - s ^ 2 * c)) : MvPolynomial (Fin 2) A) := by
          rw [hr]
        simp only [map_mul, map_pow, map_sub] at h2
        linear_combination h2
      rw [e]
      refine Ideal.add_mem _ (Ideal.mul_mem_left _ _ (hJ1J h)) (Ideal.mul_mem_left _ _ ?_)
      refine Ideal.sub_mem _ (Ideal.sub_mem _ (Ideal.mul_mem_left _ _ ?_) (Ideal.mul_mem_left _ _ ?_))
        (Ideal.mul_mem_left _ _ ?_)
      · exact hJ _ (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
      · exact hJ _ (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
      · exact hJ _ (Set.mem_insert _ _)
  have hsplit : v * ∏ l, σ l ^ b l = σ l₀ ^ 2 * (v * σ l₀ ^ (b l₀ - 2) * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) := by
    obtain ⟨m, hm⟩ : ∃ m, b l₀ = m + 2 := ⟨b l₀ - 2, by omega⟩
    rw [← Finset.mul_prod_erase Finset.univ (fun l => σ l ^ b l) (Finset.mem_univ l₀)]
    rw [hm, Nat.add_sub_cancel]
    ring
  rw [hsplit]
  exact key _ _

theorem wcpa_dj_rtsxs_oc_origin_maximal : ∀ (A : Type u) [CommRing A] [IsLocalRing A], (RingHom.ker (MvPolynomial.eval₂Hom (IsLocalRing.residue A) (fun _ : Fin 2 => (0 : IsLocalRing.ResidueField A)))).IsMaximal ∧ RingHom.ker (MvPolynomial.eval₂Hom (IsLocalRing.residue A) (fun _ : Fin 2 => (0 : IsLocalRing.ResidueField A))) = Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} :=
by
  intro A _ _
  have hstar : ∀ p : MvPolynomial (Fin 2) A,
      MvPolynomial.eval₂Hom (IsLocalRing.residue A) (fun _ : Fin 2 => (0 : IsLocalRing.ResidueField A)) p
        = IsLocalRing.residue A (MvPolynomial.constantCoeff p) :=
    fun p => MvPolynomial.eval₂Hom_zero'_apply _ p
  have hT : ∀ p : MvPolynomial (Fin 2) A,
      p - MvPolynomial.C (MvPolynomial.constantCoeff p) ∈
        Ideal.span {(MvPolynomial.X 0 : MvPolynomial (Fin 2) A), MvPolynomial.X 1} := by
    intro p
    induction p using MvPolynomial.induction_on with
    | C a => simp
    | add p q hp hq =>
      have e : p + q - MvPolynomial.C (MvPolynomial.constantCoeff (p + q))
          = (p - MvPolynomial.C (MvPolynomial.constantCoeff p))
            + (q - MvPolynomial.C (MvPolynomial.constantCoeff q)) := by
        rw [map_add, map_add]; ring
      rw [e]; exact Ideal.add_mem _ hp hq
    | mul_X p n _ =>
      have e : p * MvPolynomial.X n - MvPolynomial.C (MvPolynomial.constantCoeff (p * MvPolynomial.X n))
          = p * MvPolynomial.X n := by
        rw [map_mul, MvPolynomial.constantCoeff_X, mul_zero, map_zero, sub_zero]
      rw [e]
      apply Ideal.mul_mem_left
      apply Ideal.subset_span
      fin_cases n
      · exact Set.mem_insert _ _
      · exact Set.mem_insert_of_mem _ (Set.mem_singleton _)
  refine ⟨RingHom.ker_isMaximal_of_surjective _ ?_, le_antisymm ?_ ?_⟩
  · intro t
    obtain ⟨a, ha⟩ := IsLocalRing.residue_surjective t
    exact ⟨MvPolynomial.C a, by rw [hstar, MvPolynomial.constantCoeff_C, ha]⟩
  · intro f hf
    rw [RingHom.mem_ker, hstar, IsLocalRing.residue_eq_zero_iff] at hf
    rw [← add_sub_cancel (MvPolynomial.C (MvPolynomial.constantCoeff f)) f]
    exact Ideal.add_mem _ (Ideal.mem_sup_left (Ideal.mem_map_of_mem _ hf))
      (Ideal.mem_sup_right (hT f))
  · apply sup_le
    · rw [Ideal.map_le_iff_le_comap]
      intro a ha
      rw [Ideal.mem_comap, RingHom.mem_ker, hstar, MvPolynomial.constantCoeff_C,
        IsLocalRing.residue_eq_zero_iff]
      exact ha
    · rw [Ideal.span_le]
      intro p hp
      rcases hp with rfl | rfl
      · rw [SetLike.mem_coe, RingHom.mem_ker, hstar, MvPolynomial.constantCoeff_X, map_zero]
      · rw [SetLike.mem_coe, RingHom.mem_ker, hstar, MvPolynomial.constantCoeff_X, map_zero]

theorem wcpa_dj_rtsxs_oc_origin_height : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (M : Ideal (MvPolynomial (Fin 2) A)) [M.IsPrime], M.IsMaximal → M = Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} → ringKrullDim A + 2 ≤ ringKrullDim (Localization.AtPrime M) :=
by
  intro A _ _ _ M _ hMmax hMeq
  classical
  haveI := hMmax
  have hCM : ∀ a ∈ IsLocalRing.maximalIdeal A, MvPolynomial.C a ∈ M := by
    intro a ha
    rw [hMeq]
    exact Ideal.mem_sup_left (Ideal.mem_map_of_mem _ ha)
  have hX1M : (MvPolynomial.X 1 : MvPolynomial (Fin 2) A) ∈ M := by
    rw [hMeq]
    exact Ideal.mem_sup_right (Ideal.subset_span (by simp))
  let u : MvPolynomial (Fin 1) A ≃ₐ[A] Polynomial A := MvPolynomial.uniqueAlgEquiv A (Fin 1)
  let e : MvPolynomial (Fin 2) A ≃ₐ[A] Polynomial (Polynomial A) :=
    (MvPolynomial.finSuccEquiv A 1).trans (Polynomial.mapAlgEquiv u)
  have he1 : ∀ a : A, e.symm (Polynomial.C (Polynomial.C a)) = MvPolynomial.C a := by
    intro a
    have h := e.symm.commutes a
    rw [Polynomial.algebraMap_apply, Polynomial.algebraMap_eq, MvPolynomial.algebraMap_eq] at h
    exact h
  have he2 : e.symm (Polynomial.C Polynomial.X) = MvPolynomial.X 1 := by
    apply e.injective
    rw [AlgEquiv.apply_symm_apply]
    symm
    show Polynomial.mapAlgEquiv u (MvPolynomial.finSuccEquiv A 1 (MvPolynomial.X (Fin.succ 0))) = _
    rw [MvPolynomial.finSuccEquiv_X_succ, Polynomial.coe_mapAlgEquiv, Polynomial.map_C]
    congr 1
    show MvPolynomial.uniqueAlgEquiv A (Fin 1) (MvPolynomial.X 0) = Polynomial.X
    rw [MvPolynomial.uniqueAlgEquiv_apply, MvPolynomial.eval₂_X]
  let σe : Polynomial (Polynomial A) ≃+* MvPolynomial (Fin 2) A := e.symm.toRingEquiv
  have hσ : ∀ x, σe x = e.symm x := fun _ => rfl
  let P : Ideal (Polynomial (Polynomial A)) := M.comap σe
  have hPmax : P.IsMaximal := Ideal.comap_isMaximal_of_surjective σe σe.surjective
  haveI := hPmax
  have hPht : P.height = M.height := RingEquiv.height_comap σe M
  let p₁ : Ideal (Polynomial A) := P.comap Polynomial.C
  have hCp : ∀ a ∈ IsLocalRing.maximalIdeal A, Polynomial.C a ∈ p₁ := by
    intro a ha
    show σe (Polynomial.C (Polynomial.C a)) ∈ M
    rw [hσ, he1]
    exact hCM a ha
  have hXp : Polynomial.X ∈ p₁ := by
    show σe (Polynomial.C Polynomial.X) ∈ M
    rw [hσ, he2]
    exact hX1M
  have hp1ne : p₁ ≠ ⊤ := Ideal.comap_ne_top _ hPmax.ne_top
  have hp1max : p₁.IsMaximal := by
    let χ : Polynomial A →+* IsLocalRing.ResidueField A :=
      Polynomial.eval₂RingHom (IsLocalRing.residue A) 0
    have hχs : Function.Surjective χ := by
      intro z
      obtain ⟨a, rfl⟩ := IsLocalRing.residue_surjective z
      exact ⟨Polynomial.C a, by simp [χ]⟩
    have hK : (RingHom.ker χ).IsMaximal := RingHom.ker_isMaximal_of_surjective χ hχs
    have hKle : RingHom.ker χ ≤ p₁ := by
      intro f hf
      have h0 : f.coeff 0 ∈ IsLocalRing.maximalIdeal A := by
        rw [← IsLocalRing.residue_eq_zero_iff]
        have h : χ f = 0 := hf
        simpa [χ, Polynomial.eval₂_at_zero] using h
      obtain ⟨g, hg⟩ := Polynomial.X_dvd_sub_C (p := f)
      have hf' : f = Polynomial.X * g + Polynomial.C (f.coeff 0) := by
        rw [← hg]; ring
      rw [hf']
      exact p₁.add_mem (p₁.mul_mem_right g hXp) (hCp _ h0)
    have heq := hK.eq_of_le hp1ne hKle
    rw [← heq]
    exact hK
  haveI := hp1max
  have hq : Ideal.comap Polynomial.C p₁ = IsLocalRing.maximalIdeal A :=
    ((IsLocalRing.maximalIdeal.isMaximal A).eq_of_le (Ideal.comap_ne_top _ hp1ne)
      (fun a ha => hCp a ha)).symm
  haveI : P.LiesOver p₁ := ⟨by rw [Ideal.under_def, Polynomial.algebraMap_eq]⟩
  haveI : p₁.LiesOver (IsLocalRing.maximalIdeal A) :=
    ⟨by rw [Ideal.under_def, Polynomial.algebraMap_eq, hq]⟩
  have h1 := Polynomial.height_eq_height_add_one p₁ P
  have h2 := Polynomial.height_eq_height_add_one (IsLocalRing.maximalIdeal A) p₁
  rw [IsLocalization.AtPrime.ringKrullDim_eq_height M (Localization.AtPrime M),
    ← IsLocalRing.maximalIdeal_height_eq_ringKrullDim, ← hPht, h1, h2]
  apply le_of_eq
  rw [WithBot.coe_add, WithBot.coe_add, WithBot.coe_one, add_assoc, one_add_one_eq_two]

theorem wcpa_dj_rtsxs_oc_local_model : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (x y c : A) (σ : Fin n → A) (l₀ : Fin n) (M : Ideal (MvPolynomial (Fin 2) A)) [M.IsPrime], Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → c ∈ IsLocalRing.maximalIdeal A → M = Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} → ((n + 4 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime M) → ringKrullDim (Localization.AtPrime M ⧸ Ideal.map (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M)) (Ideal.span {MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y, MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c})) = ((n + 1 : ℕ) : WithBot ℕ∞) ∧ Ideal.Quotient.mk (Ideal.map (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M)) (Ideal.span {MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y, MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c})) (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.C (σ l₀))) ∈ nonZeroDivisors (Localization.AtPrime M ⧸ Ideal.map (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M)) (Ideal.span {MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y, MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c})) :=
by

  have s1 : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (S G : Set E) (r m : ℕ), S.Finite → G.Finite → S.ncard ≤ r → G.ncard ≤ m → S ⊆ ↑(IsLocalRing.maximalIdeal E) → Ideal.span S ⊔ Ideal.span G = IsLocalRing.maximalIdeal E → ((m + r : ℕ) : WithBot ℕ∞) ≤ ringKrullDim E → IsRegularLocalRing (E ⧸ Ideal.span S) ∧ ringKrullDim (E ⧸ Ideal.span S) = (m : WithBot ℕ∞) := by
    intro E _ _ _ S G r m hS hG hSr hGm hSm hspan hdim
    have hIle : Ideal.span S ≤ IsLocalRing.maximalIdeal E := Ideal.span_le.mpr hSm
    haveI : Nontrivial (E ⧸ Ideal.span S) := Ideal.Quotient.nontrivial_iff.mpr
      (ne_top_of_le_ne_top (IsLocalRing.maximalIdeal.isMaximal E).ne_top hIle)
    haveI : IsLocalRing (E ⧸ Ideal.span S) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective
    have hmR : IsLocalRing.maximalIdeal (E ⧸ Ideal.span S) =
        Ideal.span (Ideal.Quotient.mk (Ideal.span S) '' G) := by
      rw [← IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk (Ideal.span S))
        Ideal.Quotient.mk_surjective, ← hspan, Ideal.map_sup, Ideal.map_quotient_self, bot_sup_eq,
        Ideal.map_span]
    have hfr : Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ Ideal.span S)) ≤ m := by
      rw [hmR]
      calc _ ≤ (Ideal.Quotient.mk (Ideal.span S) '' G).ncard :=
            Submodule.spanFinrank_span_le_ncard_of_finite (hG.image _)
        _ ≤ G.ncard := Set.ncard_image_le hG
        _ ≤ m := hGm
    have hup : ringKrullDim (E ⧸ Ideal.span S) ≤ (m : WithBot ℕ∞) := by
      rw [← IsLocalRing.maximalIdeal_height_eq_ringKrullDim]
      have h1 := Ideal.height_le_spanFinrank (IsLocalRing.maximalIdeal (E ⧸ Ideal.span S))
        (IsLocalRing.maximalIdeal.isMaximal _).ne_top
      have h2 : (IsLocalRing.maximalIdeal (E ⧸ Ideal.span S)).height ≤ (m : ℕ∞) :=
        h1.trans (by exact_mod_cast hfr)
      exact_mod_cast h2
    have hlow : (m : WithBot ℕ∞) ≤ ringKrullDim (E ⧸ Ideal.span S) := by
      have hJ : (↑hS.toFinset : Set E) ⊆ ↑(Ring.jacobson E) := by
        rw [← Ideal.jacobson_bot, IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top,
          Set.Finite.coe_toFinset]
        exact hSm
      have h1 := ringKrullDim_le_ringKrullDim_quotient_add_card hS.toFinset hJ
      rw [Set.Finite.coe_toFinset] at h1
      have hcard : hS.toFinset.card ≤ r := by
        rw [← Set.ncard_eq_toFinset_card S hS]; exact hSr
      have h2 := hdim.trans h1
      generalize ringKrullDim (E ⧸ Ideal.span S) = d at h2 hup ⊢
      induction d using WithBot.recBotCoe with
      | bot => simp at h2
      | coe e =>
        induction e using ENat.recTopCoe with
        | top =>
          exfalso
          have h3 : (⊤ : ℕ∞) ≤ (m : ℕ∞) := by exact_mod_cast hup
          simp at h3
        | coe k =>
          have h3 : m + r ≤ k + hS.toFinset.card := by exact_mod_cast h2
          exact_mod_cast (by omega : m ≤ k)
    have hdimeq : ringKrullDim (E ⧸ Ideal.span S) = (m : WithBot ℕ∞) := le_antisymm hup hlow
    refine ⟨IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _ ?_, hdimeq⟩
    rw [hdimeq]; exact_mod_cast hfr

  have s2 : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (M : Ideal (MvPolynomial (Fin 2) A)) [M.IsPrime], M = Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} → ∃ (K : Type u) (_ : Field K) (χ : Localization.AtPrime M →+* K), (∀ a ∈ IsLocalRing.maximalIdeal A, χ (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.C a)) = 0) ∧ χ (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.X 0 * MvPolynomial.X 1)) ≠ 0 := by
    intro A _ _ M _ hM
    let χ₀ : MvPolynomial (Fin 2) A →+* FractionRing (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) :=
      (algebraMap (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) _).comp
        (MvPolynomial.map (IsLocalRing.residue A))
    have hunit : ∀ y : M.primeCompl, IsUnit (χ₀ y) := by
      intro ⟨f, hf⟩
      have hf' : f ∉ M := hf
      rw [isUnit_iff_ne_zero]
      intro h0
      apply hf'
      have h1 : MvPolynomial.map (IsLocalRing.residue A) f = 0 := by
        apply IsFractionRing.injective (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))
          (FractionRing (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)))
        rw [map_zero]; exact h0
      have h2 : f ∈ Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) := by
        rw [MvPolynomial.mem_map_C_iff]
        intro m
        rw [← IsLocalRing.residue_eq_zero_iff, ← MvPolynomial.coeff_map, h1]
        simp
      rw [hM]; exact Ideal.mem_sup_left h2
    refine ⟨FractionRing (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)), inferInstance,
      IsLocalization.lift (M := M.primeCompl) (S := Localization.AtPrime M) (g := χ₀) hunit, ?_, ?_⟩
    · intro a ha
      rw [IsLocalization.lift_eq]
      simp [χ₀, MvPolynomial.map_C, (IsLocalRing.residue_eq_zero_iff a).mpr ha]
    · rw [IsLocalization.lift_eq]
      simp only [χ₀, RingHom.comp_apply, map_mul, MvPolynomial.map_X]
      rw [← map_mul]
      intro h
      have := IsFractionRing.injective (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))
          (FractionRing (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))) (h.trans (map_zero _).symm)
      exact mul_ne_zero (MvPolynomial.X_ne_zero 0) (MvPolynomial.X_ne_zero 1) this

  have s3 : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (n : ℕ) (x y : A) (σ : Fin n → A) (M : Ideal (MvPolynomial (Fin 2) A)) [M.IsPrime], Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → M = Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} → IsLocalRing.maximalIdeal (Localization.AtPrime M) = Ideal.span ({algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.C x), algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.C y)} ∪ Set.range (fun l => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.C (σ l)))) ⊔ Ideal.span {algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.X 0), algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) (MvPolynomial.X 1)} := by
    intro A _ _ n x y σ M _ hspan hM
    have hmax : IsLocalRing.maximalIdeal (Localization.AtPrime M) =
        Ideal.map (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M)) M :=
      (Localization.AtPrime.map_eq_maximalIdeal).symm
    have e := congrArg (Ideal.map (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M))) hM
    rw [hmax, e, Ideal.map_sup, ← hspan, Ideal.map_map, Ideal.map_span, Ideal.map_span]
    congr 2
    · rw [Set.image_union, Set.image_insert_eq, Set.image_singleton, ← Set.range_comp]
      rfl
    · rw [Set.image_insert_eq, Set.image_singleton]

  have s4 : ∀ (E : Type u) [CommRing E] (n : ℕ) (I : Ideal E) (ax ay X0 X1 : E) (τ : Fin n → E) (l₀ : Fin n), I = Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} → Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay} ⊔ Ideal.span ({X0, X1} ∪ Set.range τ) = I ∧ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔ Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) = I := by
    intro E _ n I ax ay X0 X1 τ l₀ hI
    subst hI
    have hax : ax ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      Ideal.mem_sup_left (Ideal.subset_span (by simp))
    have hay : ay ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      Ideal.mem_sup_left (Ideal.subset_span (by simp))
    have hτ : ∀ l, τ l ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      fun l => Ideal.mem_sup_left (Ideal.subset_span (Or.inr ⟨l, rfl⟩))
    have hX0 : X0 ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      Ideal.mem_sup_right (Ideal.subset_span (by simp))
    have hX1 : X1 ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      Ideal.mem_sup_right (Ideal.subset_span (by simp))
    have hg1 : τ l₀ * X0 - ax ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (hτ l₀)) hax
    have hg2 : τ l₀ * X1 - ay ∈ Ideal.span ({ax, ay} ∪ Set.range τ) ⊔ Ideal.span {X0, X1} :=
      Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (hτ l₀)) hay
    constructor
    · apply le_antisymm
      · apply sup_le
        · rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with rfl | rfl
          · exact hg1
          · exact hg2
        · rw [Ideal.span_le]
          intro z hz
          rcases hz with hz | ⟨l, rfl⟩
          · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
            rcases hz with rfl | rfl
            · exact hX0
            · exact hX1
          · exact hτ l
      · have h1 : τ l₀ * X0 - ax ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay} ⊔
            Ideal.span ({X0, X1} ∪ Set.range τ) := Ideal.mem_sup_left (Ideal.subset_span (by simp))
        have h2 : τ l₀ * X1 - ay ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay} ⊔
            Ideal.span ({X0, X1} ∪ Set.range τ) := Ideal.mem_sup_left (Ideal.subset_span (by simp))
        have h3 : X0 ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay} ⊔
            Ideal.span ({X0, X1} ∪ Set.range τ) := Ideal.mem_sup_right (Ideal.subset_span (by simp))
        have h4 : X1 ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay} ⊔
            Ideal.span ({X0, X1} ∪ Set.range τ) := Ideal.mem_sup_right (Ideal.subset_span (by simp))
        have h5 : ∀ l, τ l ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay} ⊔
            Ideal.span ({X0, X1} ∪ Set.range τ) :=
          fun l => Ideal.mem_sup_right (Ideal.subset_span (Or.inr ⟨l, rfl⟩))
        apply sup_le
        · rw [Ideal.span_le]
          intro z hz
          rcases hz with hz | ⟨l, rfl⟩
          · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
            rcases hz with rfl | rfl
            · have := Ideal.sub_mem _ (Ideal.mul_mem_right X0 _ (h5 l₀)) h1
              rwa [sub_sub_cancel] at this
            · have := Ideal.sub_mem _ (Ideal.mul_mem_right X1 _ (h5 l₀)) h2
              rwa [sub_sub_cancel] at this
          · exact h5 l
        · rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with rfl | rfl
          · exact h3
          · exact h4
    · apply le_antisymm
      · apply sup_le
        · rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with rfl | rfl | rfl
          · exact hg1
          · exact hg2
          · exact hτ l₀
        · rw [Ideal.span_le]
          intro z hz
          rcases hz with hz | ⟨l, _, rfl⟩
          · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
            rcases hz with rfl | rfl
            · exact hX0
            · exact hX1
          · exact hτ l
      · have h1 : τ l₀ * X0 - ax ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔
            Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) :=
          Ideal.mem_sup_left (Ideal.subset_span (by simp))
        have h2 : τ l₀ * X1 - ay ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔
            Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) :=
          Ideal.mem_sup_left (Ideal.subset_span (by simp))
        have h3 : X0 ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔
            Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) :=
          Ideal.mem_sup_right (Ideal.subset_span (by simp))
        have h4 : X1 ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔
            Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) :=
          Ideal.mem_sup_right (Ideal.subset_span (by simp))
        have h6 : τ l₀ ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔
            Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) :=
          Ideal.mem_sup_left (Ideal.subset_span (by simp))
        have h5 : ∀ l, τ l ∈ Ideal.span {τ l₀ * X0 - ax, τ l₀ * X1 - ay, τ l₀} ⊔
            Ideal.span ({X0, X1} ∪ τ '' {l | l ≠ l₀}) := by
          intro l
          by_cases hl : l = l₀
          · rw [hl]; exact h6
          · exact Ideal.mem_sup_right (Ideal.subset_span (Or.inr ⟨l, hl, rfl⟩))
        apply sup_le
        · rw [Ideal.span_le]
          intro z hz
          rcases hz with hz | ⟨l, rfl⟩
          · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
            rcases hz with rfl | rfl
            · have := Ideal.sub_mem _ (Ideal.mul_mem_right X0 _ h6) h1
              rwa [sub_sub_cancel] at this
            · have := Ideal.sub_mem _ (Ideal.mul_mem_right X1 _ h6) h2
              rwa [sub_sub_cancel] at this
          · exact h5 l
        · rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with rfl | rfl
          · exact h3
          · exact h4

  have s5 : ∀ (E : Type u) (n : ℕ) (a b c X0 X1 : E) (τ : Fin n → E) (l₀ : Fin n), ({a, b} : Set E).Finite ∧ ({a, b} : Set E).ncard ≤ 2 ∧ ({a, b, c} : Set E).Finite ∧ ({a, b, c} : Set E).ncard ≤ 3 ∧ ({X0, X1} ∪ Set.range τ).Finite ∧ ({X0, X1} ∪ Set.range τ).ncard ≤ n + 2 ∧ ({X0, X1} ∪ τ '' {l | l ≠ l₀}).Finite ∧ ({X0, X1} ∪ τ '' {l | l ≠ l₀}).ncard ≤ n + 1 := by
    intro E n a b c X0 X1 τ l₀
    have h2 : ∀ p q : E, ({p, q} : Set E).ncard ≤ 2 := fun p q =>
      (Set.ncard_insert_le p {q}).trans (by rw [Set.ncard_singleton])
    have h3 : ({a, b, c} : Set E).ncard ≤ 3 :=
      (Set.ncard_insert_le a {b, c}).trans (by have := h2 b c; omega)
    have hr : (Set.range τ).ncard ≤ n := by
      rw [← Set.image_univ]
      refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
      rw [Set.ncard_univ, Nat.card_eq_fintype_card, Fintype.card_fin]
    have hc : (τ '' {l | l ≠ l₀}).ncard ≤ n - 1 := by
      refine (Set.ncard_image_le (Set.toFinite _)).trans ?_
      have : {l | l ≠ l₀} = ((Finset.univ.erase l₀ : Finset (Fin n)) : Set (Fin n)) := by
        ext l; simp
      rw [this, Set.ncard_coe_finset, Finset.card_erase_of_mem (Finset.mem_univ _),
        Finset.card_univ, Fintype.card_fin]
    have hn : 1 ≤ n := by have := l₀.isLt; omega
    refine ⟨Set.toFinite _, h2 a b, Set.toFinite _, h3, Set.toFinite _, ?_, Set.toFinite _, ?_⟩
    · exact (Set.ncard_union_le _ _).trans (by have := h2 X0 X1; omega)
    · exact (Set.ncard_union_le _ _).trans (by have := h2 X0 X1; omega)

  have s6 : ∀ (W : Type u) [CommRing W] (J : Ideal W) (t g : W), J.IsPrime → (J ⊔ Ideal.span {t}).IsPrime → t ∉ J → g ∉ J ⊔ Ideal.span {t} → Ideal.Quotient.mk (J ⊔ Ideal.span {g}) t ∈ nonZeroDivisors (W ⧸ (J ⊔ Ideal.span {g})) := by
    intro W _ J t g hJ hJt ht hg
    have key : ∀ z : W, t * z ∈ J ⊔ Ideal.span {g} → z ∈ J ⊔ Ideal.span {g} := by
      intro z hz
      obtain ⟨j, hj, ug, hug, he⟩ := Submodule.mem_sup.mp hz
      obtain ⟨u, rfl⟩ := Ideal.mem_span_singleton'.mp hug
      have hgu : g * u ∈ J ⊔ Ideal.span {t} := by
        have e : g * u = t * z - j := by rw [← he]; ring
        rw [e]
        exact Ideal.sub_mem _ (Ideal.mem_sup_right (Ideal.mul_mem_right _ _
          (Ideal.mem_span_singleton_self t))) (Ideal.mem_sup_left hj)
      have hu : u ∈ J ⊔ Ideal.span {t} := (hJt.mem_or_mem hgu).resolve_left hg
      obtain ⟨j', hj', wt, hwt, he'⟩ := Submodule.mem_sup.mp hu
      obtain ⟨w, rfl⟩ := Ideal.mem_span_singleton'.mp hwt
      have h1 : t * (z - w * g) ∈ J := by
        have e : t * (z - w * g) = j + j' * g := by linear_combination (-1 : W) * he - g * he'
        rw [e]
        exact J.add_mem hj (J.mul_mem_right _ hj')
      have h2 : z - w * g ∈ J := (hJ.mem_or_mem h1).resolve_left ht
      have h3 : (z - w * g) + w * g ∈ J ⊔ Ideal.span {g} := Ideal.add_mem _ (Ideal.mem_sup_left h2)
        (Ideal.mem_sup_right (Ideal.mul_mem_left _ w (Ideal.mem_span_singleton_self g)))
      rwa [sub_add_cancel] at h3
    have hl : ∀ y : W ⧸ (J ⊔ Ideal.span {g}), y * Ideal.Quotient.mk (J ⊔ Ideal.span {g}) t = 0 → y = 0 := by
      intro y hy
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective y
      rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem, mul_comm] at hy
      rw [Ideal.Quotient.eq_zero_iff_mem]
      exact key z hy
    exact mem_nonZeroDivisors_iff_right.mpr hl

  have s7 : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (J : Ideal E) (g : E) (k : ℕ), J.IsPrime → g ∉ J → g ∈ IsLocalRing.maximalIdeal E → ringKrullDim (E ⧸ J) = ((k + 1 : ℕ) : WithBot ℕ∞) → ringKrullDim (E ⧸ (J ⊔ Ideal.span {g})) = ((k : ℕ) : WithBot ℕ∞) := by
    intro E _ _ _ J g k hJ hg hgm hdim
    haveI : IsDomain (E ⧸ J) := by haveI := hJ; infer_instance
    haveI : IsLocalRing (E ⧸ J) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk J) Ideal.Quotient.mk_surjective
    have hne : Ideal.Quotient.mk J g ≠ 0 := by rwa [Ne, Ideal.Quotient.eq_zero_iff_mem]
    have hreg : IsSMulRegular (E ⧸ J) (Ideal.Quotient.mk J g) := IsSMulRegular.of_ne_zero hne
    have hmem : Ideal.Quotient.mk J g ∈ IsLocalRing.maximalIdeal (E ⧸ J) := by
      rw [← IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk J)
        Ideal.Quotient.mk_surjective]
      exact Ideal.mem_map_of_mem _ hgm
    have h1 := ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim hreg hmem
    have h2 : ringKrullDim (E ⧸ (J ⊔ Ideal.span {g})) =
        ringKrullDim ((E ⧸ J) ⧸ Ideal.span {Ideal.Quotient.mk J g}) := by
      have e : Ideal.map (Ideal.Quotient.mk J) (Ideal.span {g}) =
          Ideal.span {Ideal.Quotient.mk J g} := by
        rw [Ideal.map_span, Set.image_singleton]
      rw [← e]
      exact (ringKrullDim_eq_of_ringEquiv (DoubleQuot.quotQuotEquivQuotSup J (Ideal.span {g}))).symm
    rw [h2]
    rw [hdim] at h1
    generalize ringKrullDim ((E ⧸ J) ⧸ Ideal.span {Ideal.Quotient.mk J g}) = d at h1 ⊢
    induction d using WithBot.recBotCoe with
    | bot =>
      have h4 := h1.symm.le
      simp at h4
    | coe e =>
      induction e using ENat.recTopCoe with
      | top =>
        have h4 : ((⊤ : ℕ∞) + 1 : ℕ∞) = ((k + 1 : ℕ) : ℕ∞) := by exact_mod_cast h1
        rw [top_add] at h4
        exact absurd h4.symm (ENat.coe_ne_top _)
      | coe j =>
        have h3 : j + 1 = k + 1 := by exact_mod_cast h1
        exact_mod_cast (by omega : j = k)


  intro A _ _ n x y c σ l₀ M _ hspan hc hM hE
  set ι := algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime M) with hι
  set t : Localization.AtPrime M := ι (MvPolynomial.C (σ l₀)) with ht_def
  set X0h : Localization.AtPrime M := ι (MvPolynomial.X 0) with hX0h
  set X1h : Localization.AtPrime M := ι (MvPolynomial.X 1) with hX1h
  set ax : Localization.AtPrime M := ι (MvPolynomial.C x) with hax
  set ay : Localization.AtPrime M := ι (MvPolynomial.C y) with hay
  set g3 : Localization.AtPrime M := X0h * X1h - ι (MvPolynomial.C c) with hg3

  have hmE := s3 A n x y σ M hspan hM
  have hA := s4 (Localization.AtPrime M) n _ ax ay X0h X1h (fun l => ι (MvPolynomial.C (σ l))) l₀ hmE
  have hA1 : Ideal.span {t * X0h - ax, t * X1h - ay} ⊔
      Ideal.span ({X0h, X1h} ∪ Set.range (fun l => ι (MvPolynomial.C (σ l)))) =
      IsLocalRing.maximalIdeal (Localization.AtPrime M) := hA.1
  have hA2 : Ideal.span {t * X0h - ax, t * X1h - ay, t} ⊔
      Ideal.span ({X0h, X1h} ∪ (fun l => ι (MvPolynomial.C (σ l))) '' {l | l ≠ l₀}) =
      IsLocalRing.maximalIdeal (Localization.AtPrime M) := hA.2

  obtain ⟨hS1f, hS1c, hS2f, hS2c, hG1f, hG1c, hG2f, hG2c⟩ :=
    s5 (Localization.AtPrime M) n (t * X0h - ax) (t * X1h - ay) t X0h X1h
      (fun l => ι (MvPolynomial.C (σ l))) l₀

  have hE1 : ((n + 2 + 2 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime M) := by
    have e : n + 2 + 2 = n + 4 := by omega
    rw [e]; exact hE
  have hE2 : ((n + 1 + 3 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime M) := by
    have e : n + 1 + 3 = n + 4 := by omega
    rw [e]; exact hE
  obtain ⟨hreg1, hdim1⟩ := s1 (Localization.AtPrime M) _ _ 2 (n + 2) hS1f hG1f hS1c hG1c
    (fun z hz => by
      show z ∈ IsLocalRing.maximalIdeal (Localization.AtPrime M)
      rw [← hA1]; exact Ideal.mem_sup_left (Ideal.subset_span hz)) hA1 hE1
  obtain ⟨hreg2, hdim2⟩ := s1 (Localization.AtPrime M) _ _ 3 (n + 1) hS2f hG2f hS2c hG2c
    (fun z hz => by
      show z ∈ IsLocalRing.maximalIdeal (Localization.AtPrime M)
      rw [← hA2]; exact Ideal.mem_sup_left (Ideal.subset_span hz)) hA2 hE2

  have hP1 : (Ideal.span {t * X0h - ax, t * X1h - ay}).IsPrime := by
    haveI := hreg1
    have hd := (wc_fco_regular_local_ufd
      (Localization.AtPrime M ⧸ Ideal.span {t * X0h - ax, t * X1h - ay})).1
    rwa [Ideal.Quotient.isDomain_iff_prime] at hd
  have hP2 : (Ideal.span {t * X0h - ax, t * X1h - ay, t}).IsPrime := by
    haveI := hreg2
    have hd := (wc_fco_regular_local_ufd
      (Localization.AtPrime M ⧸ Ideal.span {t * X0h - ax, t * X1h - ay, t})).1
    rwa [Ideal.Quotient.isDomain_iff_prime] at hd

  have hI2 : Ideal.span {t * X0h - ax, t * X1h - ay, t} =
      Ideal.span {t * X0h - ax, t * X1h - ay} ⊔ Ideal.span {t} := by
    rw [← Ideal.span_union, Set.insert_union, Set.singleton_union]

  have htI1 : t ∉ Ideal.span {t * X0h - ax, t * X1h - ay} := by
    intro h
    have e : Ideal.span {t * X0h - ax, t * X1h - ay, t} =
        Ideal.span {t * X0h - ax, t * X1h - ay} := by
      rw [hI2]; exact sup_eq_left.mpr ((Ideal.span_singleton_le_iff_mem _).mpr h)
    have h' := hdim2
    rw [e, hdim1] at h'
    have h'' : n + 2 = n + 1 := by exact_mod_cast h'
    omega

  have hmemA : ∀ a ∈ ({x, y} ∪ Set.range σ : Set A), a ∈ IsLocalRing.maximalIdeal A := by
    intro a ha; rw [← hspan]; exact Ideal.subset_span ha
  have hxm : x ∈ IsLocalRing.maximalIdeal A := hmemA x (by simp)
  have hym : y ∈ IsLocalRing.maximalIdeal A := hmemA y (by simp)
  have hsm : σ l₀ ∈ IsLocalRing.maximalIdeal A := hmemA (σ l₀) (Or.inr ⟨l₀, rfl⟩)

  obtain ⟨K, _, χ, hχ0, hχ1⟩ := s2 A M hM
  have hle : Ideal.span {t * X0h - ax, t * X1h - ay, t} ≤ RingHom.ker χ := by
    rw [Ideal.span_le]
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    have h1 : χ t = 0 := hχ0 _ hsm
    have h2 : χ ax = 0 := hχ0 _ hxm
    have h3 : χ ay = 0 := hχ0 _ hym
    rcases hz with rfl | rfl | rfl
    · show χ _ = 0
      rw [map_sub, map_mul, h1, h2]; ring
    · show χ _ = 0
      rw [map_sub, map_mul, h1, h3]; ring
    · exact h1
  have hg3I2 : g3 ∉ Ideal.span {t * X0h - ax, t * X1h - ay, t} := by
    intro h
    have hk : χ g3 = 0 := hle h
    apply hχ1
    have e : ι (MvPolynomial.X 0 * MvPolynomial.X 1) = g3 + ι (MvPolynomial.C c) := by
      rw [hg3, map_mul]; ring
    rw [e, map_add, hk, hχ0 c hc, add_zero]
  have hg3I1 : g3 ∉ Ideal.span {t * X0h - ax, t * X1h - ay} := by
    intro h
    apply hg3I2
    rw [hI2]
    exact Ideal.mem_sup_left h

  have hg3m : g3 ∈ IsLocalRing.maximalIdeal (Localization.AtPrime M) := by
    have hX0m : X0h ∈ IsLocalRing.maximalIdeal (Localization.AtPrime M) := by
      rw [hmE]; exact Ideal.mem_sup_right (Ideal.subset_span (Set.mem_insert _ _))
    have hCm : ι (MvPolynomial.C c) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime M) := by
      rw [hι, IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime M) M]
      rw [hM]; exact Ideal.mem_sup_left (Ideal.mem_map_of_mem _ hc)
    exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hX0m) hCm

  have hJE : Ideal.map ι (Ideal.span {MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x,
      MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y,
      MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c}) =
      Ideal.span {t * X0h - ax, t * X1h - ay} ⊔ Ideal.span {g3} := by
    rw [Ideal.map_span, ← Ideal.span_union, Set.insert_union, Set.singleton_union]
    congr 1
    simp only [Set.image_insert_eq, Set.image_singleton, map_sub, map_mul]
    rfl
  rw [hJE]

  refine ⟨s7 (Localization.AtPrime M) _ g3 (n + 1) hP1 hg3I1 hg3m hdim1, ?_⟩
  exact s6 (Localization.AtPrime M) _ t g3 hP1 (hI2 ▸ hP2) htI1 (hI2 ▸ hg3I2)

theorem wcpa_dj_rtsxs_d_origin_chart_dim : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l₀ : Fin n) (Q : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2)) [Q.IsPrime], IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → 2 ≤ b l₀ → Q.comap (algebraMap (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) _) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (IsLocalRing.maximalIdeal A) → wcpaDjChartGen _ ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2 0 ∈ Q → wcpaDjChartGen _ ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l₀)] 2 1 ∈ Q → ringKrullDim (Localization.AtPrime Q) = ((n + 1 : ℕ) : WithBot ℕ∞) :=
by
  intro A _ _ n x y v σ b l₀ Q _ hv hdim hspan hb hQm h0 h1
  classical
  obtain ⟨φ, hsurj, hC, hX0, hX1, hg1, hg2, hg3, hker⟩ :=
    wcpa_dj_rtsxs_oc_presentation A n x y v σ b l₀ hb

  have hx : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert _ _))
  have hs : σ l₀ ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (Set.mem_union_right _ (Set.mem_range_self l₀))
  have hF : x * y - v * ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A := by
    have hprod : ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A := by
      rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ l₀)]
      exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ hs _ (by omega))
    exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hx) (Ideal.mul_mem_left _ _ hprod)
  have hcm : Ideal.comap (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
      (Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        (IsLocalRing.maximalIdeal A)) = IsLocalRing.maximalIdeal A := by
    rw [Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective, Ideal.mk_ker]
    exact sup_eq_left.mpr (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr hF))

  have hCM : ∀ a : A, MvPolynomial.C a ∈ Q.comap φ ↔ a ∈ IsLocalRing.maximalIdeal A := by
    intro a
    have e1 : MvPolynomial.C a ∈ Q.comap φ ↔
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) a ∈
          Q.comap (algebraMap (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) _) := by
      rw [Ideal.mem_comap, Ideal.mem_comap, hC a]
    rw [e1, hQm]
    constructor
    · intro h
      have h' : a ∈ Ideal.comap (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
          (Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
            (IsLocalRing.maximalIdeal A)) := h
      rwa [hcm] at h'
    · intro h
      exact Ideal.mem_map_of_mem _ h

  obtain ⟨hM0max, hM0eq⟩ := wcpa_dj_rtsxs_oc_origin_maximal A
  have hX0M : MvPolynomial.X 0 ∈ Q.comap φ := by
    rw [Ideal.mem_comap, hX0]; exact h0
  have hX1M : MvPolynomial.X 1 ∈ Q.comap φ := by
    rw [Ideal.mem_comap, hX1]; exact h1
  have hM0le : Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
      Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} ≤ Q.comap φ := by
    apply sup_le
    · rw [Ideal.map_le_iff_le_comap]
      intro a ha
      exact (hCM a).mpr ha
    · rw [Ideal.span_le]
      intro p hp
      rcases hp with rfl | rfl
      · exact hX0M
      · exact hX1M
  have hMeq : Q.comap φ = Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
      Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} := by
    rw [← hM0eq] at hM0le ⊢
    exact (hM0max.eq_of_le (inferInstance : (Q.comap φ).IsPrime).ne_top hM0le).symm
  have hMmax : (Q.comap φ).IsMaximal := by
    rw [hMeq, ← hM0eq]; exact hM0max

  have hc : v * σ l₀ ^ (b l₀ - 2) * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l ∈
      IsLocalRing.maximalIdeal A := by
    rw [← hCM]
    have hg3M : MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C
        (v * σ l₀ ^ (b l₀ - 2) * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l) ∈ Q.comap φ := by
      rw [Ideal.mem_comap, hg3]; exact Q.zero_mem
    have h := Ideal.sub_mem _ (Ideal.mul_mem_right (MvPolynomial.X 1) _ hX0M) hg3M
    rwa [sub_sub_cancel] at h

  have hE : ((n + 4 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime (Q.comap φ)) := by
    have h := wcpa_dj_rtsxs_oc_origin_height A (Q.comap φ) hMmax hMeq
    rw [← hdim] at h
    have e : ((n + 4 : ℕ) : WithBot ℕ∞) = ((n + 2 : ℕ) : WithBot ℕ∞) + 2 := by
      push_cast; ring
    rw [e]; exact h

  obtain ⟨hdimE, hnzd⟩ := wcpa_dj_rtsxs_oc_local_model A n x y _ σ l₀ (Q.comap φ) hspan hc hMeq hE

  have hsat : ∀ (W : Type u) [CommRing W] (I : Ideal W) (t f : W) (k : ℕ),
      Ideal.Quotient.mk I t ∈ nonZeroDivisors (W ⧸ I) → t ^ k * f ∈ I → f ∈ I := by
    intro W _ I t f k ht h
    rw [← Ideal.Quotient.eq_zero_iff_mem] at h ⊢
    rw [map_mul, map_pow] at h
    exact (mul_left_mem_nonZeroDivisors_eq_zero_iff (pow_mem ht k)).mp h
  have hker_eq : Ideal.map (algebraMap (MvPolynomial (Fin 2) A)
      (Localization.AtPrime (Q.comap φ))) (RingHom.ker φ) =
      Ideal.map (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (Q.comap φ)))
        (Ideal.span {MvPolynomial.C (σ l₀) * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C (σ l₀) * MvPolynomial.X 1 - MvPolynomial.C y,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C
            (v * σ l₀ ^ (b l₀ - 2) * ∏ l ∈ Finset.univ.erase l₀, σ l ^ b l)}) := by
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro f hf
      obtain ⟨k, hk⟩ := hker f (RingHom.mem_ker.mp hf)
      rw [Ideal.mem_comap]
      have h3 := Ideal.mem_map_of_mem (algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (Q.comap φ))) hk
      rw [RingHom.map_mul (algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (Q.comap φ))), RingHom.map_pow (algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (Q.comap φ)))] at h3
      exact hsat _ _ _ _ _ hnzd h3
    · apply Ideal.map_mono
      rw [Ideal.span_le]
      intro p hp
      rcases hp with rfl | rfl | rfl
      · exact RingHom.mem_ker.mpr hg1
      · exact RingHom.mem_ker.mpr hg2
      · exact RingHom.mem_ker.mpr hg3

  obtain ⟨Θ⟩ := wcpa_dj_rss_quot_localization (MvPolynomial (Fin 2) A) _ φ hsurj Q
  rw [hker_eq] at Θ
  rw [← ringKrullDim_eq_of_ringEquiv Θ]
  exact hdimE

theorem wcpa_dj_rtsxs_phase1_dim : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] [IsLocallyNoetherian Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ : Y) (Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] [IsLocallyNoetherian Y'] (π : Y' ⟶ Y), wcpaDjIsProjOver k sY → wcpaDjIsProjOver k (π ≫ sY) → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) → IsProper π → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ y' : Y', π y' ∈ closure {γ} → y' ∈ wcpaDjSing Y' → ringKrullDim (Y'.presheaf.stalk y') = ringKrullDim (Y.presheaf.stalk (π y')) :=
by
  intro k _ Y _ _ sY B γ Y' _ _ π hproj hproj' hB hloc hγ hdim2 hπp hcharts y' hy hsing
  classical

  have hγz : γ ⤳ π y' := specializes_iff_mem_closure.mpr hy

  have hgen : genericPoint Y ∉ closure {γ} := by
    intro h
    have h1 : γ ⤳ genericPoint Y := specializes_iff_mem_closure.mpr h
    have h2 : genericPoint Y ⤳ γ := (genericPoint_spec Y).specializes (Set.mem_univ _)
    have h3 : γ = genericPoint Y := (h1.antisymm h2).eq
    apply (show γ ∈ wcpaDjSing Y ∧ _ from hγ).1
    rw [h3]
    change IsRegularLocalRing Y.functionField
    infer_instance

  obtain ⟨q, h, -, hcent⟩ := wcpa_dj_rtsxc_centre_ideal k Y sY B γ (π y') hproj hB hloc hγ hγz

  have hpht : ((Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
      (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))).height : WithBot ℕ∞) =
      ((2 : ℕ) : WithBot ℕ∞) := by
    letI := (Y.presheaf.stalkSpecializes hγz).hom.toAlgebra
    haveI := wc_ldp_nc_stalkSpecializes_isLocalization Y γ (π y') hγz
    rw [← IsLocalization.AtPrime.ringKrullDim_eq_height _ (Y.presheaf.stalk γ)]
    exact hdim2

  obtain ⟨n, A, iA, iAreg, x, y, v, σ, b, e, l₀, hv, hdimA, hspanA, hb, hcent'⟩ :=
    wcpa_dj_rtsxs_d_phase1_centre _ h _ hcent hpht

  have hdimO := wcpa_dj_rtsxs_d_node_dim _ A n x y v σ b e hv hdimA hspanA

  obtain ⟨r, f, i, P, hPprime, Φ, hspanf, hfi, hPmax, -⟩ :=
    wcpa_dj_rtsxc_chart_stalk Y γ Y' π hgen hcharts y' hγz
  haveI := hPprime

  haveI hÔnt : Nontrivial (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
      (Y.presheaf.stalk (π y'))) := by
    haveI : Nontrivial (Y.presheaf.stalk (π y') ⧸
        IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')) ^ 1) :=
      Ideal.Quotient.nontrivial_iff.mpr (by
        rw [pow_one]; exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top)
    exact (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) 1).toRingHom.domain_nontrivial
  haveI hRnt : Nontrivial (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
    e.symm.toRingHom.domain_nontrivial
  haveI hRloc : IsLocalRing (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
      Ideal.Quotient.mk_surjective
  have hmR : IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) =
      Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        (IsLocalRing.maximalIdeal A) := by
    have h1 : Ideal.comap (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        (IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})) =
        IsLocalRing.maximalIdeal A := by
      haveI := Ideal.comap_isMaximal_of_surjective
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        Ideal.Quotient.mk_surjective
        (K := IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        (H := IsLocalRing.maximalIdeal.isMaximal _)
      exact IsLocalRing.eq_maximalIdeal this
    rw [← h1, Ideal.map_comap_of_surjective _ Ideal.Quotient.mk_surjective]
  obtain ⟨hφi, P', hP'prime, hP'max, hdimP, hregP⟩ :=
    wcpa_dj_rtsxs_d_chart_flat_bc _ (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) e r f i P hfi
      hPmax
  haveI := hP'prime

  have hspanφψ : Ideal.span (Set.range (fun l => e (algebraMap (Y.presheaf.stalk (π y'))
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
        (Y.presheaf.stalk (π y'))) (f l)))) =
      Ideal.span (Set.range ![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀)]) := by
    have e1 : Ideal.span (Set.range (fun l => e (algebraMap (Y.presheaf.stalk (π y'))
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
          (Y.presheaf.stalk (π y'))) (f l)))) =
        Ideal.map e (Ideal.map (algebraMap (Y.presheaf.stalk (π y'))
          (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
            (Y.presheaf.stalk (π y')))) (Ideal.span (Set.range f))) := by
      rw [Ideal.map_span, Ideal.map_span, Set.image_image, ← Set.range_comp]
      rfl
    rw [e1, hspanf, hcent', Ideal.map_span]
    congr 1
    ext t
    simp [eq_comm]
    tauto

  have hnotreg : ¬ IsRegularLocalRing (Localization.AtPrime P') := by
    intro hreg
    haveI := hregP hreg
    exact hsing (IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime P) Φ.symm)

  obtain ⟨j, c, hc, hcP⟩ := wcpa_dj_rtsxs_switch_index (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})
    r 2 (fun l => e (algebraMap (Y.presheaf.stalk (π y'))
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
        (Y.presheaf.stalk (π y'))) (f l)))
    ![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀)] i P' hspanφψ
  obtain ⟨-, hnx, hny, hns⟩ :=
    wcpa_dj_rtsxs_d_node_nzd A n x y v σ b l₀ hv hdimA hspanA (by omega)
  have hψnzd : ∀ j : Fin 3,
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀)] j ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) := by
    intro j
    fin_cases j
    · exact hnx
    · exact hny
    · exact hns
  obtain ⟨Q, hQprime, Θ, hQcomap, -⟩ :=
    wcpa_dj_rtsxs_switch_chart (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})
      r 2 (fun l => e (algebraMap (Y.presheaf.stalk (π y'))
        (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
          (Y.presheaf.stalk (π y'))) (f l)))
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀)] i j P' c hspanφψ hφi
      (hψnzd j) hc hcP
  haveI := hQprime
  have hQm : Q.comap (algebraMap _ _) = Ideal.map
      (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (IsLocalRing.maximalIdeal A) := by
    rw [hQcomap, hP'max, hmR]
  by_cases hj : j = 2
  · subst hj
    by_cases h0 : wcpaDjChartGen _ ![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀)] 2 0 ∈ Q
    · by_cases h1 : wcpaDjChartGen _ ![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) x,
          Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) y,
          Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l₀)] 2 1 ∈ Q
      ·
        have hd := wcpa_dj_rtsxs_d_origin_chart_dim A n x y v σ b l₀ Q hv hdimA hspanA hb hQm h0 h1
        calc ringKrullDim (Y'.presheaf.stalk y') = ringKrullDim (Localization.AtPrime P) :=
              ringKrullDim_eq_of_ringEquiv Φ
          _ = ringKrullDim (Localization.AtPrime P') := hdimP
          _ = ringKrullDim (Localization.AtPrime Q) := ringKrullDim_eq_of_ringEquiv Θ
          _ = ((n + 1 : ℕ) : WithBot ℕ∞) := hd
          _ = ringKrullDim (Y.presheaf.stalk (π y')) := hdimO.symm
      ·
        exfalso
        obtain ⟨Q₁, hQ₁prime, Θ₁, hQ₁comap, -⟩ := wcpa_dj_rtsxs_switch_chart _ 2 2 _ _ 2 1 Q
          (wcpaDjChartGen _ _ 2 1) rfl (hψnzd 2) (hψnzd 1)
          (IsLocalization.mk'_spec (Localization.Away _) _ _) h1
        haveI := hQ₁prime
        haveI := wcpa_dj_rtsxs_d_axis_chart_regular A n x y v σ b l₀ 1 Q₁ hv hdimA hspanA hb
          (by decide) (by rw [hQ₁comap, hQm])
        haveI : IsRegularLocalRing (Localization.AtPrime Q) :=
          IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q₁) Θ₁.symm
        exact hnotreg (IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q) Θ.symm)
    ·
      exfalso
      obtain ⟨Q₀, hQ₀prime, Θ₀, hQ₀comap, -⟩ := wcpa_dj_rtsxs_switch_chart _ 2 2 _ _ 2 0 Q
        (wcpaDjChartGen _ _ 2 0) rfl (hψnzd 2) (hψnzd 0)
        (IsLocalization.mk'_spec (Localization.Away _) _ _) h0
      haveI := hQ₀prime
      haveI := wcpa_dj_rtsxs_d_axis_chart_regular A n x y v σ b l₀ 0 Q₀ hv hdimA hspanA hb
        (by decide) (by rw [hQ₀comap, hQm])
      haveI : IsRegularLocalRing (Localization.AtPrime Q) :=
        IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q₀) Θ₀.symm
      exact hnotreg (IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q) Θ.symm)
  ·
    exfalso
    haveI := wcpa_dj_rtsxs_d_axis_chart_regular A n x y v σ b l₀ j Q hv hdimA hspanA hb hj hQm
    exact hnotreg (IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q) Θ.symm)

theorem wcpa_dj_rtsxs_completion_regular_iff : ∀ (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D], IsRegularLocalRing D ↔ IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal D) D) :=
by
  intro D _ _ _
  obtain ⟨hloc, hlh, hnoeth, _hff, hmax, -⟩ := wcpa_dj_glt_st_completion_facts D
  haveI := hloc
  haveI := hlh
  haveI := hnoeth
  haveI : Module.Flat D (AdicCompletion (IsLocalRing.maximalIdeal D) D) :=
    AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal D)
  have hdim : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal D) D) = ringKrullDim D :=
    wc_lfi_flat_local_dim_eq D (AdicCompletion (IsLocalRing.maximalIdeal D) D) hmax.symm
  have s3 : ∀ (A : Type u) (B : Type u) [CommRing A] [CommRing B] (f : A →+* B) (I : Ideal A),
      I.FG → Submodule.spanFinrank (Ideal.map f I) ≤ Submodule.spanFinrank I := by
    intro A B _ _ f I hI
    obtain ⟨s, hs, hspan⟩ := Submodule.FG.exists_span_set_encard_eq_spanFinrank hI
    have hsfin : s.Finite := Set.finite_of_encard_eq_coe hs
    have hI' : I = Ideal.span s := hspan.symm
    have hmap : Ideal.map f I = Ideal.span (f '' s) := by rw [hI', Ideal.map_span]
    have h1 : Submodule.spanFinrank (Ideal.map f I) ≤ (f '' s).ncard := by
      rw [hmap]; exact Submodule.spanFinrank_span_le_ncard_of_finite (hsfin.image f)
    have h2 : (f '' s).ncard ≤ s.ncard := Set.ncard_image_le hsfin
    have h3 : s.ncard = Submodule.spanFinrank I := by
      have := hsfin.cast_ncard_eq
      rw [hs] at this
      exact_mod_cast this
    omega
  constructor
  · intro hreg
    have hFG : (IsLocalRing.maximalIdeal D).FG := IsNoetherian.noetherian _
    have hle : Submodule.spanFinrank
        (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal D) D)) ≤
        Submodule.spanFinrank (IsLocalRing.maximalIdeal D) := by
      rw [hmax]
      exact s3 D _ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)) _ hFG
    have hlow := ringKrullDim_le_spanFinrank_maximalIdeal
      (AdicCompletion (IsLocalRing.maximalIdeal D) D)
    have hregD : (Submodule.spanFinrank (IsLocalRing.maximalIdeal D) : WithBot ℕ∞) =
        ringKrullDim D := hreg.spanFinrank_maximalIdeal
    have hup : ((Submodule.spanFinrank
        (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal D) D)) : ℕ) :
          WithBot ℕ∞) ≤ ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal D) D) := by
      rw [hdim, ← hregD]
      exact_mod_cast hle
    exact IsRegularLocalRing.mk (le_antisymm hup hlow)
  · intro hreg
    exact wc_hnas_pfc_regular_flat_descent D (AdicCompletion (IsLocalRing.maximalIdeal D) D) hreg

theorem wcpa_dj_rtsxs_adic_completion_congr : ∀ (D₁ D₂ : Type u) [CommRing D₁] [CommRing D₂] [IsLocalRing D₁] [IsLocalRing D₂] (θ : D₁ ≃+* D₂), ∃ θ' : AdicCompletion (IsLocalRing.maximalIdeal D₁) D₁ ≃+* AdicCompletion (IsLocalRing.maximalIdeal D₂) D₂, ∀ a : D₁, θ' (algebraMap _ _ a) = algebraMap _ _ (θ a) :=
by
  intro D₁ D₂ _ _ _ _ θ
  have mapC : ∀ (R S : Type u) [CommRing R] [CommRing S] (g : R →+* S) (I : Ideal R)
      (J : Ideal S), I ≤ Ideal.comap g J → ∃ φ : AdicCompletion I R →+* AdicCompletion J S,
      ∀ (n : ℕ) (x : AdicCompletion I R) (a : R),
        AdicCompletion.evalₐ I n x = Ideal.Quotient.mk (I ^ n) a →
        AdicCompletion.evalₐ J n (φ x) = Ideal.Quotient.mk (J ^ n) (g a) := by
    intro R S _ _ g I J hIJ
    have hlev : ∀ n : ℕ, I ^ n ≤ Ideal.comap g (J ^ n) := by
      intro n
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
      exact Ideal.pow_right_mono (Ideal.map_le_iff_le_comap.mpr hIJ) n
    have hfac : ∀ {m n : ℕ} (h : m ≤ n) (x : AdicCompletion I R),
        Ideal.Quotient.factorPow I h (AdicCompletion.evalₐ I n x) =
          AdicCompletion.evalₐ I m x := by
      intro m n h x
      obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective I R x
      rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
      exact AdicCompletion.Ideal.mk_eq_mk I h s
    let f : (n : ℕ) → AdicCompletion I R →+* S ⧸ J ^ n := fun n =>
      (Ideal.quotientMap (J ^ n) g (hlev n)).comp
        (AdicCompletion.evalₐ I n : AdicCompletion I R →+* R ⧸ I ^ n)
    have hf : ∀ (n : ℕ) (x : AdicCompletion I R) (a : R),
        AdicCompletion.evalₐ I n x = Ideal.Quotient.mk (I ^ n) a →
        f n x = Ideal.Quotient.mk (J ^ n) (g a) := by
      intro n x a hx
      show Ideal.quotientMap (J ^ n) g (hlev n) (AdicCompletion.evalₐ I n x) = _
      rw [hx, Ideal.quotientMap_mk]
    have hcompat : ∀ {m n : ℕ} (hle : m ≤ n),
        (Ideal.Quotient.factorPow J hle).comp (f n) = f m := by
      intro m n hle
      refine RingHom.ext fun x => ?_
      obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
      have hm : AdicCompletion.evalₐ I m x = Ideal.Quotient.mk (I ^ m) a := by
        rw [← hfac hle x, ← ha]
        rfl
      rw [RingHom.comp_apply, hf n x a ha.symm, hf m x a hm]
      rfl
    refine ⟨AdicCompletion.liftRingHom J f hcompat, fun n x a hx => ?_⟩
    rw [AdicCompletion.evalₐ_liftRingHom]
    exact hf n x a hx
  have hmax : ∀ (A B : Type u) [CommRing A] [CommRing B] [IsLocalRing A] [IsLocalRing B]
      (e : A ≃+* B), IsLocalRing.maximalIdeal A ≤
        Ideal.comap (e : A →+* B) (IsLocalRing.maximalIdeal B) := by
    intro A B _ _ _ _ e x hx
    rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hx
    intro hu
    apply hx
    have := hu.map (e.symm : B →+* A)
    simpa using this
  obtain ⟨φ, hφ⟩ := mapC D₁ D₂ θ _ _ (hmax D₁ D₂ θ)
  obtain ⟨ψ, hψ⟩ := mapC D₂ D₁ θ.symm _ _ (hmax D₂ D₁ θ.symm)
  have h1 : ψ.comp φ = RingHom.id _ := by
    refine RingHom.ext fun x => ?_
    refine AdicCompletion.ext_evalₐ (fun n => ?_)
    obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective
      (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal D₁) n x)
    have e1 := hφ n x a ha.symm
    have e2 := hψ n (φ x) (θ a) e1
    rw [RingHom.comp_apply, RingHom.id_apply, e2, ← ha]
    simp
  have h2 : φ.comp ψ = RingHom.id _ := by
    refine RingHom.ext fun x => ?_
    refine AdicCompletion.ext_evalₐ (fun n => ?_)
    obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective
      (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal D₂) n x)
    have e1 := hψ n x a ha.symm
    have e2 := hφ n (ψ x) (θ.symm a) e1
    rw [RingHom.comp_apply, RingHom.id_apply, e2, ← ha]
    simp
  refine ⟨RingEquiv.ofRingHom φ ψ h2 h1, fun a => ?_⟩
  show φ (algebraMap _ _ a) = _
  refine AdicCompletion.ext_evalₐ (fun n => ?_)
  have ha : AdicCompletion.evalₐ (IsLocalRing.maximalIdeal D₁) n
      (algebraMap D₁ (AdicCompletion (IsLocalRing.maximalIdeal D₁) D₁) a) =
      Ideal.Quotient.mk _ a := by
    rw [AdicCompletion.algebraMap_apply, AdicCompletion.evalₐ_of]
    rfl
  rw [hφ n _ a ha, AdicCompletion.algebraMap_apply, AdicCompletion.evalₐ_of]
  rfl

theorem wcpa_dj_rtsxs_p2_centre_height : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (p : Ideal O) [p.IsPrime] (L : Type u) [CommRing L] [Algebra O L] [IsLocalization.AtPrime L p] (n : ℕ) (A : Type u) [CommRing A] [IsRegularLocalRing A] [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (T : Finset (Fin n)), IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → Ideal.map e (Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n)))) → T.card = 1 → (∀ l ∈ T, 2 ≤ b l) → ringKrullDim L = ((2 : ℕ) : WithBot ℕ∞) :=
by
  intro O _ _ _ p _ L _ _ _ n A _ _ _ x y v σ b e T _hv hdim hspan hp hT1 hb
  classical
  obtain ⟨l, rfl⟩ := Finset.card_eq_one.mp hT1
  have hbl : 2 ≤ b l := hb l (Finset.mem_singleton_self l)
  have hset : ({x, y} ∪ σ '' (((({l} : Finset (Fin n))) : Set (Fin n)))) = ({x, y, σ l} : Set A) := by
    rw [Finset.coe_singleton, Set.image_singleton, Set.insert_union, Set.singleton_union]
  rw [hset] at hp

  let f : Fin (n + 2) → A := Fin.cons x (Fin.cons y σ)
  have hrange : Set.range f = {x, y} ∪ Set.range σ := by
    simp only [f, Fin.range_cons, Set.insert_union, Set.singleton_union]
  have hspanf : Ideal.span (Set.range f) = IsLocalRing.maximalIdeal A := by rw [hrange, hspan]
  have hf : ∀ i, f i ∈ IsLocalRing.maximalIdeal A := fun i =>
    hspanf ▸ Ideal.subset_span (Set.mem_range_self i)
  have hind := wc_lpkt_cotangent_indep A (n + 2) f hspanf hdim.symm hf
  let j : Fin 3 → Fin (n + 2) := ![0, (0 : Fin (n + 1)).succ, l.succ.succ]
  have hj : Function.Injective j := by
    intro a c h
    fin_cases a <;> fin_cases c <;> simp [j, Fin.ext_iff] at h ⊢ <;> omega
  let G : Fin 3 → IsLocalRing.maximalIdeal A := fun i => ⟨f (j i), hf (j i)⟩
  have hG : LinearIndependent (IsLocalRing.ResidueField A)
      (fun i => (IsLocalRing.maximalIdeal A).toCotangent (G i)) := hind.comp j hj
  let J : (r : ℕ) → r ≤ 3 → Ideal A := fun r hr =>
    Ideal.span (Set.range fun i : Fin r => (G (Fin.castLE hr i) : A))
  have key : ∀ (r : ℕ) (hr : r ≤ 3), (J r hr).IsPrime ∧
      ringKrullDim (A ⧸ J r hr) + (r : WithBot ℕ∞) = ringKrullDim A := by
    intro r hr
    have hli : LinearIndependent (IsLocalRing.ResidueField A)
        (fun i => (IsLocalRing.maximalIdeal A).toCotangent (G (Fin.castLE hr i))) :=
      hG.comp (Fin.castLE hr) (Fin.castLE_injective hr)
    obtain ⟨hreg, hd⟩ := wcpa_rs_quotient_regular A r (fun i => G (Fin.castLE hr i)) hli
    refine ⟨?_, hd⟩
    have hdom := wcpa_regular_isDomain (A ⧸ J r hr) (@wcpa_rs_quotient_regular) hreg
    exact (Ideal.Quotient.isDomain_iff_prime _).mp hdom
  have hfin : ∀ (d : WithBot ℕ∞) (r s : ℕ), d + (r : WithBot ℕ∞) = ((n + 2 : ℕ) : WithBot ℕ∞) →
      d + (s : WithBot ℕ∞) = ((n + 2 : ℕ) : WithBot ℕ∞) → r = s := by
    intro d r s h1 h2
    induction d using WithBot.recBotCoe with
    | bot =>
      rw [WithBot.bot_add] at h1
      exact absurd h1.symm (WithBot.natCast_ne_bot _)
    | coe d =>
      simp only [← WithBot.coe_natCast, ← WithBot.coe_add, WithBot.coe_inj] at h1 h2
      induction d using ENat.recTopCoe with
      | top =>
        rw [top_add] at h1
        exact absurd h1 (ENat.top_ne_natCast _)
      | coe d =>
        norm_cast at h1 h2
        omega
  have hmono : ∀ (r s : ℕ) (hr : r ≤ 3) (hs : s ≤ 3), r ≤ s → J r hr ≤ J s hs := by
    intro r s hr hs hrs
    apply Ideal.span_mono
    rintro _ ⟨i, rfl⟩
    exact ⟨Fin.castLE hrs i, rfl⟩
  have hlt : ∀ (r s : ℕ) (hr : r ≤ 3) (hs : s ≤ 3), r < s → (J r hr).height < (J s hs).height := by
    intro r s hr hs hrs
    haveI := (key r hr).1
    apply Ideal.height_strict_mono_of_isPrime
    refine lt_of_le_of_ne (hmono r s hr hs hrs.le) ?_
    intro heq
    have h1 := (key r hr).2
    have h2 := (key s hs).2
    rw [← heq] at h2
    rw [← hdim] at h1 h2
    have := hfin _ _ _ h1 h2
    omega
  have h01 := hlt 0 1 (by norm_num) (by norm_num) (by norm_num)
  have h12 := hlt 1 2 (by norm_num) (by norm_num) (by norm_num)
  have h23 := hlt 2 3 (by norm_num) (by norm_num) (by norm_num)
  have a1 := Order.add_one_le_of_lt h01
  have a2 := Order.add_one_le_of_lt h12
  have a3 := Order.add_one_le_of_lt h23
  have hJ3ge : (3 : ℕ∞) ≤ (J 3 le_rfl).height := by
    calc (3 : ℕ∞) = 0 + 1 + 1 + 1 := by norm_num
      _ ≤ (J 0 (by norm_num)).height + 1 + 1 + 1 := by gcongr; exact bot_le
      _ ≤ (J 1 (by norm_num)).height + 1 + 1 := by gcongr
      _ ≤ (J 2 (by norm_num)).height + 1 := by gcongr
      _ ≤ (J 3 le_rfl).height := a3
  have hG0 : (G 0 : A) = x := by simp [G, f, j]
  have hG1 : (G 1 : A) = y := by simp [G, f, j]
  have hG2 : (G 2 : A) = σ l := by simp [G, f, j]
  have hJ3 : J 3 le_rfl = Ideal.span {x, y, σ l} := by
    show Ideal.span (Set.range fun i : Fin 3 => (G (Fin.castLE le_rfl i) : A)) = _
    congr 1
    have hfun : (fun i : Fin 3 => (G (Fin.castLE le_rfl i) : A)) = ![x, y, σ l] := by
      funext i
      fin_cases i
      · exact hG0
      · exact hG1
      · exact hG2
    rw [hfun, Matrix.range_cons, Matrix.range_cons, Matrix.range_cons, Matrix.range_empty,
      Set.union_empty, Set.singleton_union, Set.singleton_union]
  set P : Ideal A := Ideal.span {x, y, σ l} with hPdef
  have hPprime : P.IsPrime := hJ3 ▸ (key 3 le_rfl).1
  have hP3 : (3 : ℕ∞) ≤ P.height := hJ3 ▸ hJ3ge

  have hxP : x ∈ P := Ideal.subset_span (by simp)
  have hyP : y ∈ P := Ideal.subset_span (by simp)
  have hσP : σ l ∈ P := Ideal.subset_span (by simp)
  obtain ⟨c, hc⟩ : σ l ∣ v * ∏ m, σ m ^ b m :=
    Dvd.dvd.mul_left (dvd_trans (dvd_pow_self _ (by omega))
      (Finset.dvd_prod_of_mem _ (Finset.mem_univ l))) v
  have hFP : x * y - v * ∏ m, σ m ^ b m ∈ P := by
    rw [hc]
    exact P.sub_mem (P.mul_mem_right y hxP) (P.mul_mem_right c hσP)
  set mk := Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) with hmk
  set Pbar : Ideal (A ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b m}) := Ideal.map mk P with hPbar
  haveI := hPprime
  have hPbarPrime : Pbar.IsPrime :=
    Ideal.isPrime_map_quotientMk_of_isPrime ((Ideal.span_singleton_le_iff_mem _).mpr hFP)
  have hlow : P.height ≤ Pbar.height + 1 := Ideal.height_le_height_add_one_of_mem hFP
  let s : Finset (A ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b m}) := {mk x + mk y, mk (σ l)}
  have hmin : Pbar ∈ (Ideal.span (s : Set _)).minimalPrimes := by
    refine ⟨⟨hPbarPrime, ?_⟩, fun q hq _ => ?_⟩
    · rw [Ideal.span_le]
      intro z hz
      simp only [s, Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl
      · exact Pbar.add_mem (Ideal.mem_map_of_mem _ hxP) (Ideal.mem_map_of_mem _ hyP)
      · exact Ideal.mem_map_of_mem _ hσP
    · obtain ⟨hqp, hqle⟩ := hq
      have h1 : mk x + mk y ∈ q := hqle (Ideal.subset_span (by simp [s]))
      have h2 : mk (σ l) ∈ q := hqle (Ideal.subset_span (by simp [s]))
      have h3 : mk x * mk y ∈ q := by
        have hxy : mk x * mk y = mk (σ l) * mk c := by
          rw [← map_mul, ← map_mul, hmk, Ideal.Quotient.eq, ← hc]
          exact Ideal.mem_span_singleton_self _
        rw [hxy]
        exact q.mul_mem_right _ h2
      have hxy : mk x ∈ q ∧ mk y ∈ q := by
        rcases hqp.mem_or_mem h3 with h | h
        · exact ⟨h, by simpa using q.sub_mem h1 h⟩
        · exact ⟨by simpa using q.sub_mem h1 h, h⟩
      rw [hPbar, hPdef, Ideal.map_span, Ideal.span_le]
      rintro z ⟨w, hw, rfl⟩
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hw
      rcases hw with rfl | rfl | rfl
      · exact hxy.1
      · exact hxy.2
      · exact h2
  have hup : Pbar.height ≤ 2 := by
    have := Ideal.height_le_card_of_mem_minimalPrimes_span_finset hmin
    refine this.trans ?_
    exact_mod_cast Finset.card_le_two
  have hPbar2 : Pbar.height = 2 := by
    have hne : Pbar.height ≠ ⊤ := ne_top_of_le_ne_top (by decide) hup
    obtain ⟨m, hm⟩ := ENat.ne_top_iff_exists.mp hne
    rw [← hm] at hup hlow ⊢
    have h3 := hP3.trans hlow
    norm_cast at hup h3 ⊢
    omega

  obtain ⟨hlocC, -, hlh, -⟩ := wc_hnas_completion_local_complete O
  haveI := hlocC
  haveI := hlh
  haveI := wc_hnas_completion_noetherian O
  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian _
  haveI : Module.FaithfullyFlat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    Module.FaithfullyFlat.of_flat_of_isLocalHom
  set Q := Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p with hQ
  have hQc : Q = Ideal.comap e Pbar := by
    rw [← hp, Ideal.comap_map_of_bijective _ e.bijective]
  haveI hQprime : Q.IsPrime := hQc ▸ Ideal.comap_isPrime e Pbar
  haveI : Q.LiesOver p := ⟨(Ideal.comap_map_eq_self_of_faithfullyFlat p).symm⟩
  have hgd := Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown p Q
  rw [← hQ, Ideal.map_mk_eq_bot_of_le le_rfl, Ideal.height_bot, add_zero] at hgd
  have hpP : p.height = Pbar.height := by
    rw [← RingEquiv.height_comap e, ← hQc, hgd]
  rw [IsLocalization.AtPrime.ringKrullDim_eq_height p L, hpP, hPbar2]
  rfl

theorem wcpa_dj_rtsxs_p2e_coeff_field : ∀ (k : Type u) [Field k] (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D], IsAdicComplete (IsLocalRing.maximalIdeal D) D → ∀ (ι : k →+* D), ∃ (K : Type u) (_ : Field K) (_ : Algebra K D), Function.Surjective ((IsLocalRing.residue D).comp (algebraMap K D)) :=
by
  intro k _ D _ _ _ hD ι
  classical
  rcases CharP.char_is_prime_or_zero (IsLocalRing.ResidueField D) (ringChar (IsLocalRing.ResidueField D)) with hp | h0
  ·
    set p := ringChar (IsLocalRing.ResidueField D) with hpdef
    haveI : CharP (IsLocalRing.ResidueField D) p := ringChar.charP _

    have hpm : (p : D) ∈ IsLocalRing.maximalIdeal D := by
      rw [← IsLocalRing.residue_eq_zero_iff, map_natCast]
      exact CharP.cast_eq_zero _ p
    have hpk : (p : k) = 0 := by
      by_contra hne
      have hu : IsUnit (ι (p : k)) := (Ne.isUnit hne).map ι
      rw [map_natCast] at hu
      exact ((IsLocalRing.mem_maximalIdeal _).mp hpm) hu
    have hpD : (p : D) = 0 := by
      rw [← map_natCast ι p, hpk, map_zero]
    obtain ⟨S, _, _, _, hSdom, hSm, hSp, ⟨α⟩⟩ :=
      wc_hnas_pfc_gcl_cf_unramified_dvr_exists p hp (IsLocalRing.ResidueField D)
    haveI := hSdom
    obtain ⟨Λ, _, _, _, hΛdom, hΛc, hΛm, hΛp, ⟨β⟩⟩ :=
      wc_hnas_pfc_gcl_cf_complete_unramified p hp S hSm hSp
    haveI := hΛdom
    set σ : IsLocalRing.ResidueField Λ →+* IsLocalRing.ResidueField D :=
      ((β.trans α : IsLocalRing.ResidueField Λ ≃+* IsLocalRing.ResidueField D) :
        IsLocalRing.ResidueField Λ →+* IsLocalRing.ResidueField D) with hσ
    have hσs : Function.Surjective σ := (β.trans α).surjective
    obtain ⟨φ, hφ⟩ := wc_hnas_pfc_gcl_cf_cohen_ring_lift p hp Λ hΛc hΛm hΛp D hD σ
    obtain ⟨K, hK, _, hAlg, hsurj⟩ :=
      wc_hnas_pfc_gcl_cf_coeff_field_char_p p hp Λ hΛm D hpD φ σ hσs hφ
    exact ⟨K, hK, hAlg, hsurj⟩
  ·
    apply wc_hnas_pfc_gcl_cf_coeff_field_char_zero D hD
    intro m hm hm0
    have h := (ringChar.spec (IsLocalRing.ResidueField D) m).mp hm0
    rw [h0, zero_dvd_iff] at h
    exact hm h

theorem wcpa_dj_rtsxs_p2e_node_poly_prime : ∀ (K : Type u) [Field K] (n : ℕ) (b : Fin n → ℕ), Prime (MvPolynomial.X 0 * MvPolynomial.X 1 - ∏ l : Fin n, MvPolynomial.X (Fin.addNat l 2) ^ b l : MvPolynomial (Fin (n + 2)) K) :=
by
  intro K _ n b
  classical
  set c : MvPolynomial (Fin (n+1)) K := ∏ l : Fin n, MvPolynomial.X (Fin.addNat l 1) ^ b l with hc
  have h1 : (1 : Fin (n+2)) = (0 : Fin (n+1)).succ := by ext; simp
  have h2 : ∀ l : Fin n, (Fin.addNat l 2 : Fin (n+2)) = (Fin.addNat l 1).succ := by
    intro l; ext; simp
  have hε : MvPolynomial.finSuccEquiv K (n+1)
      (MvPolynomial.X 0 * MvPolynomial.X 1 - ∏ l : Fin n, MvPolynomial.X (Fin.addNat l 2) ^ b l) =
      Polynomial.C (MvPolynomial.X 0) * Polynomial.X + Polynomial.C (-c) := by
    rw [map_sub, map_mul, map_prod, h1, MvPolynomial.finSuccEquiv_X_zero,
      MvPolynomial.finSuccEquiv_X_succ]
    simp_rw [map_pow, h2, MvPolynomial.finSuccEquiv_X_succ]
    rw [hc, map_neg, map_prod]
    simp_rw [map_pow]
    ring
  have hX0 : (MvPolynomial.X 0 : MvPolynomial (Fin (n+1)) K) ≠ 0 := MvPolynomial.X_ne_zero 0
  have hirr : Irreducible (MvPolynomial.X 0 : MvPolynomial (Fin (n+1)) K) :=
    (MvPolynomial.X_prime (i := (0 : Fin (n+1)))).irreducible
  have hnd : ∀ j : Fin (n+1), j ≠ 0 →
      ¬ (MvPolynomial.X 0 : MvPolynomial (Fin (n+1)) K) ∣ MvPolynomial.X j := by
    intro j hj hd
    have hm : (MvPolynomial.X j : MvPolynomial (Fin (n+1)) K) =
        MvPolynomial.monomial (Finsupp.single j 1) 1 := rfl
    rw [hm, MvPolynomial.X_dvd_monomial] at hd
    simp [hj] at hd
  have hrc : IsRelPrime (MvPolynomial.X 0 : MvPolynomial (Fin (n+1)) K) c := by
    rw [hc]
    apply IsRelPrime.prod_right
    intro l _
    apply IsRelPrime.pow_right
    apply (hirr.isRelPrime_iff_not_dvd).mpr
    apply hnd
    intro h
    have := congrArg Fin.val h
    simp at this
  set p : Polynomial (MvPolynomial (Fin (n+1)) K) :=
    Polynomial.C (MvPolynomial.X 0) * Polynomial.X + Polynomial.C (-c) with hp
  have hdeg : p.degree = 1 := Polynomial.degree_linear hX0
  have hc0 : p.coeff 0 = -c := by simp [hp]
  have hc1 : p.coeff 1 = MvPolynomial.X 0 := by simp [hp]
  have hpirr : Irreducible p := by
    apply Polynomial.irreducible_of_degree_eq_one_of_isRelPrime_coeff hdeg
    rw [hc0, hc1]
    exact hrc.neg_right.symm
  have hpp : Prime p := hpirr.prime
  rw [← hε] at hpp
  exact (MulEquiv.prime_iff (MvPolynomial.finSuccEquiv K (n+1))).mp hpp

theorem wcpa_dj_rtsxs_p2e_whom_series_prime : ∀ (K : Type u) [Field K] (N : ℕ) (w : Fin N → ℕ) (m : ℕ) (P : MvPolynomial (Fin N) K), (∀ i, 1 ≤ w i) → MvPolynomial.IsWeightedHomogeneous w P m → Prime P → Prime (P : MvPowerSeries (Fin N) K) :=
by
  intro K _ N w m P hw hhom hP
  classical
  have hwt : ∀ d₁ d₂ : Fin N →₀ ℕ, Finsupp.weight w (d₁ + d₂) =
      Finsupp.weight w d₁ + Finsupp.weight w d₂ := fun d₁ d₂ => map_add _ _ _

  have hcm : ∀ (g : MvPowerSeries (Fin N) K) (e : Fin N →₀ ℕ),
      MvPowerSeries.coeff e ((P : MvPowerSeries (Fin N) K) * g) =
        ∑ p ∈ Finset.HasAntidiagonal.antidiagonal e, P.coeff p.1 * MvPowerSeries.coeff p.2 g := by
    intro g e
    rw [MvPowerSeries.coeff_mul]
    simp only [MvPolynomial.coeff_coe]

  have s1 : (P : MvPowerSeries (Fin N) K) ≠ 0 := fun h =>
    hP.ne_zero (MvPolynomial.coe_inj.mp (h.trans MvPolynomial.coe_zero.symm))

  have s2 : ∀ (n : ℕ) (f : MvPowerSeries (Fin N) K), ∃ q : MvPolynomial (Fin N) K,
      (q : MvPowerSeries (Fin N) K) = MvPowerSeries.weightedHomogeneousComponent w n f := by
    intro n f
    have hS := Finsupp.finite_of_nat_weight_le w (fun x => by have := hw x; omega) n
    refine ⟨∑ d ∈ hS.toFinset, MvPolynomial.monomial d
      (MvPowerSeries.coeff d (MvPowerSeries.weightedHomogeneousComponent w n f)), ?_⟩
    ext e
    rw [MvPolynomial.coeff_coe, MvPolynomial.coeff_sum]
    simp only [MvPolynomial.coeff_monomial]
    rw [Finset.sum_ite_eq']
    split_ifs with he
    · rfl
    · rw [MvPowerSeries.coeff_weightedHomogeneousComponent, if_neg]
      intro h
      apply he
      rw [Set.Finite.mem_toFinset]
      show Finsupp.weight w e ≤ n
      omega

  have s3a : ∀ (h : MvPowerSeries (Fin N) K) (n : ℕ),
      MvPowerSeries.weightedHomogeneousComponent w (n + m) ((P : MvPowerSeries (Fin N) K) * h) =
        (P : MvPowerSeries (Fin N) K) * MvPowerSeries.weightedHomogeneousComponent w n h := by
    intro h n
    ext e
    rw [MvPowerSeries.coeff_weightedHomogeneousComponent, hcm, hcm]
    split_ifs with he
    · apply Finset.sum_congr rfl
      intro p hp
      rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
      by_cases hc : P.coeff p.1 = 0
      · rw [hc, zero_mul, zero_mul]
      · rw [MvPowerSeries.coeff_weightedHomogeneousComponent, if_pos]
        have h1 := hhom hc
        have h2 := hwt p.1 p.2
        rw [hp] at h2
        omega
    · symm
      apply Finset.sum_eq_zero
      intro p hp
      rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
      by_cases hc : P.coeff p.1 = 0
      · rw [hc, zero_mul]
      · rw [MvPowerSeries.coeff_weightedHomogeneousComponent, if_neg, mul_zero]
        intro h3
        have h1 := hhom hc
        have h2 := hwt p.1 p.2
        rw [hp] at h2
        omega
  have s3b : ∀ (h : MvPowerSeries (Fin N) K) (n : ℕ), n < m →
      MvPowerSeries.weightedHomogeneousComponent w n ((P : MvPowerSeries (Fin N) K) * h) = 0 := by
    intro h n hn
    ext e
    rw [MvPowerSeries.coeff_weightedHomogeneousComponent, hcm, map_zero]
    split_ifs with he
    · apply Finset.sum_eq_zero
      intro p hp
      rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
      by_cases hc : P.coeff p.1 = 0
      · rw [hc, zero_mul]
      · exfalso
        have h1 := hhom hc
        have h2 := hwt p.1 p.2
        rw [hp] at h2
        omega
    · rfl

  have s4 : ∀ F : MvPowerSeries (Fin N) K, (∀ n : ℕ, ∃ q : MvPolynomial (Fin N) K,
      MvPowerSeries.weightedHomogeneousComponent w n F =
        (P : MvPowerSeries (Fin N) K) * (q : MvPowerSeries (Fin N) K)) →
      (P : MvPowerSeries (Fin N) K) ∣ F := by
    intro F H
    choose q hq using H
    obtain ⟨h, hh⟩ : ∃ h : MvPowerSeries (Fin N) K, ∀ d,
        MvPowerSeries.coeff d h = (q (Finsupp.weight w d + m)).coeff d :=
      ⟨((fun d => (q (Finsupp.weight w d + m)).coeff d : (Fin N →₀ ℕ) → K)), fun d => rfl⟩
    refine ⟨h, ?_⟩
    ext e
    have hF : MvPowerSeries.coeff e F = MvPowerSeries.coeff e
        (MvPowerSeries.weightedHomogeneousComponent w (Finsupp.weight w e) F) := by
      rw [MvPowerSeries.coeff_weightedHomogeneousComponent, if_pos rfl]
    rw [hF, hq, hcm, hcm]
    apply Finset.sum_congr rfl
    intro p hp
    rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
    by_cases hc : P.coeff p.1 = 0
    · rw [hc, zero_mul, zero_mul]
    · have h1 := hhom hc
      have h2 := hwt p.1 p.2
      rw [hp] at h2
      have h3 : Finsupp.weight w p.2 + m = Finsupp.weight w e := by omega
      rw [MvPolynomial.coeff_coe, hh, h3]

  have s5coeff : ∀ (F : MvPowerSeries (Fin N) K) (a : ℕ) (d : Fin N →₀ ℕ),
      MvPowerSeries.coeff d (F - ∑ i ∈ Finset.range a,
        MvPowerSeries.weightedHomogeneousComponent w i F) =
        if Finsupp.weight w d < a then 0 else MvPowerSeries.coeff d F := by
    intro F a d
    rw [map_sub, map_sum]
    simp only [MvPowerSeries.coeff_weightedHomogeneousComponent]
    rw [Finset.sum_ite_eq]
    simp only [Finset.mem_range]
    split_ifs <;> simp
  have s5a : ∀ (F : MvPowerSeries (Fin N) K) (a : ℕ), (a : ℕ∞) ≤ MvPowerSeries.weightedOrder w
      (F - ∑ i ∈ Finset.range a, MvPowerSeries.weightedHomogeneousComponent w i F) := by
    intro F a
    exact MvPowerSeries.nat_le_weightedOrder w (fun d hd => by rw [s5coeff, if_pos hd])
  have s5b : ∀ (F : MvPowerSeries (Fin N) K) (a : ℕ), MvPowerSeries.weightedHomogeneousComponent w a
      (F - ∑ i ∈ Finset.range a, MvPowerSeries.weightedHomogeneousComponent w i F) =
        MvPowerSeries.weightedHomogeneousComponent w a F := by
    intro F a
    ext d
    rw [MvPowerSeries.coeff_weightedHomogeneousComponent,
      MvPowerSeries.coeff_weightedHomogeneousComponent, s5coeff]
    split_ifs <;> first | rfl | omega

  have s6 : ¬ IsUnit (P : MvPowerSeries (Fin N) K) := by
    intro hu
    have h0 := MvPowerSeries.isUnit_constantCoeff _ hu
    have hcc : MvPowerSeries.constantCoeff (P : MvPowerSeries (Fin N) K) = P.coeff 0 := by
      rw [← MvPolynomial.coeff_coe, MvPowerSeries.coeff_zero_eq_constantCoeff]
    rw [hcc] at h0
    have hc0 : P.coeff 0 ≠ 0 := h0.ne_zero
    have hm0 : m = 0 := by
      have := hhom hc0
      rw [map_zero] at this
      omega
    apply hP.not_isUnit
    rw [MvPolynomial.isUnit_iff]
    refine ⟨h0, fun i hi => ?_⟩
    have hci : P.coeff i = 0 := by
      by_contra hci
      have h1 := hhom hci
      obtain ⟨j, hj⟩ := DFunLike.ne_iff.mp hi
      have hj' : i j ≠ 0 := by simpa using hj
      have h2 := Finsupp.le_weight w (s := j) (by have := hw j; omega) i
      omega
    rw [hci]
    exact IsNilpotent.zero

  have s7 : ∀ F : MvPowerSeries (Fin N) K, (P : MvPowerSeries (Fin N) K) ∣ F →
      ∀ n, ∃ q : MvPolynomial (Fin N) K, MvPowerSeries.weightedHomogeneousComponent w n F =
        (P : MvPowerSeries (Fin N) K) * (q : MvPowerSeries (Fin N) K) := by
    rintro F ⟨h, rfl⟩ n
    by_cases hn : n < m
    · exact ⟨0, by rw [s3b h n hn, MvPolynomial.coe_zero, mul_zero]⟩
    · obtain ⟨q, hq⟩ := s2 (n - m) h
      refine ⟨q, ?_⟩
      have e : n = (n - m) + m := by omega
      rw [e, s3a, hq]

  refine ⟨s1, s6, ?_⟩
  intro F G hFG
  by_contra hcon
  rw [not_or] at hcon
  obtain ⟨hF, hG⟩ := hcon
  have exmin : ∀ H : MvPowerSeries (Fin N) K, ¬ (P : MvPowerSeries (Fin N) K) ∣ H →
      ∃ a, (¬ ∃ q : MvPolynomial (Fin N) K, MvPowerSeries.weightedHomogeneousComponent w a H =
          (P : MvPowerSeries (Fin N) K) * (q : MvPowerSeries (Fin N) K)) ∧
        ∀ i < a, ∃ q : MvPolynomial (Fin N) K, MvPowerSeries.weightedHomogeneousComponent w i H =
          (P : MvPowerSeries (Fin N) K) * (q : MvPowerSeries (Fin N) K) := by
    intro H hH
    have ex : ∃ n, ¬ ∃ q : MvPolynomial (Fin N) K,
        MvPowerSeries.weightedHomogeneousComponent w n H =
          (P : MvPowerSeries (Fin N) K) * (q : MvPowerSeries (Fin N) K) := by
      by_contra hc
      push_neg at hc
      exact hH (s4 H hc)
    exact ⟨Nat.find ex, Nat.find_spec ex, fun i hi => not_not.mp (Nat.find_min ex hi)⟩
  obtain ⟨a, haF, haMin⟩ := exmin F hF
  obtain ⟨b, hbG, hbMin⟩ := exmin G hG
  have hlow : ∀ (H : MvPowerSeries (Fin N) K) (c : ℕ), (∀ i < c, ∃ q : MvPolynomial (Fin N) K,
      MvPowerSeries.weightedHomogeneousComponent w i H =
        (P : MvPowerSeries (Fin N) K) * (q : MvPowerSeries (Fin N) K)) →
      (P : MvPowerSeries (Fin N) K) ∣
        ∑ i ∈ Finset.range c, MvPowerSeries.weightedHomogeneousComponent w i H := by
    intro H c hc
    apply Finset.dvd_sum
    intro i hi
    obtain ⟨q, hq⟩ := hc i (Finset.mem_range.mp hi)
    rw [hq]
    exact Dvd.intro _ rfl
  have hFLd := hlow F a haMin
  have hGLd := hlow G b hbMin
  have hprod : (P : MvPowerSeries (Fin N) K) ∣
      (F - ∑ i ∈ Finset.range a, MvPowerSeries.weightedHomogeneousComponent w i F) *
        (G - ∑ i ∈ Finset.range b, MvPowerSeries.weightedHomogeneousComponent w i G) := by
    have e : (F - ∑ i ∈ Finset.range a, MvPowerSeries.weightedHomogeneousComponent w i F) *
        (G - ∑ i ∈ Finset.range b, MvPowerSeries.weightedHomogeneousComponent w i G) =
        F * G - (∑ i ∈ Finset.range a, MvPowerSeries.weightedHomogeneousComponent w i F) * G -
          (F - ∑ i ∈ Finset.range a, MvPowerSeries.weightedHomogeneousComponent w i F) *
            (∑ i ∈ Finset.range b, MvPowerSeries.weightedHomogeneousComponent w i G) := by ring
    rw [e]
    exact dvd_sub (dvd_sub hFG (hFLd.mul_right G)) (hGLd.mul_left _)
  obtain ⟨q, hq⟩ := s7 _ hprod (a + b)
  rw [MvPowerSeries.weightedHomogeneousComponent_mul_of_le_weightedOrder (s5a F a) (s5a G b),
    s5b F a, s5b G b] at hq
  obtain ⟨ca, hca⟩ := s2 a F
  obtain ⟨cb, hcb⟩ := s2 b G
  rw [← hca, ← hcb, ← MvPolynomial.coe_mul, ← MvPolynomial.coe_mul, MvPolynomial.coe_inj] at hq
  rcases hP.dvd_or_dvd ⟨q, hq⟩ with ⟨r, hr⟩ | ⟨r, hr⟩
  · exact haF ⟨r, by rw [← hca, hr, MvPolynomial.coe_mul]⟩
  · exact hbG ⟨r, by rw [← hcb, hr, MvPolynomial.coe_mul]⟩

theorem wcpa_dj_rtsxs_p2e_ps_surj : ∀ (K : Type u) [Field K] (D : Type u) [CommRing D] [IsLocalRing D] [Algebra K D], IsAdicComplete (IsLocalRing.maximalIdeal D) D → Function.Surjective ((IsLocalRing.residue D).comp (algebraMap K D)) → ∀ (r : ℕ) (z : Fin r → D), Ideal.span (Set.range z) = IsLocalRing.maximalIdeal D → ∃ Φ : MvPowerSeries (Fin r) K →ₐ[K] D, (∀ i, Φ (MvPowerSeries.X i) = z i) ∧ Function.Surjective Φ :=
by
  intro K _ D _ _ _ hD hres r z hz
  classical
  have hzm : ∀ i, z i ∈ IsLocalRing.maximalIdeal D := fun i => by
    rw [← hz]; exact Ideal.subset_span ⟨i, rfl⟩
  obtain ⟨Φ, hΦX⟩ := wc_hnas_pfc_gcl_cf_power_series_eval K D hD r z hzm
  have hK0 : IsLocalRing.maximalIdeal K = Ideal.span {(0 : K)} := by
    rw [IsLocalRing.maximalIdeal_eq_bot, Ideal.span_singleton_eq_bot.mpr rfl]
  obtain ⟨-, -, hmS, -, -⟩ := wc_hnas_pfc_gcl_cf_power_series_regular K 0 hK0 r
  have hScomp := wc_hnas_pfc_gcl_cf_power_series_complete K 0 hK0 inferInstance r hmS
  have hXm : ∀ i, (MvPowerSeries.X i : MvPowerSeries (Fin r) K) ∈
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) := by
    intro i; rw [hmS]; exact Ideal.subset_span (Set.mem_insert_of_mem _ ⟨i, rfl⟩)
  have hmap : Ideal.map Φ (IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K)) ≤
      IsLocalRing.maximalIdeal D := by
    rw [hmS, Ideal.map_span, Ideal.span_le]
    rintro _ ⟨s, hs, rfl⟩
    rcases hs with rfl | ⟨i, rfl⟩
    · simp
    · rw [SetLike.mem_coe, hΦX]; exact hzm i
  have hmapn : ∀ n : ℕ, ∀ s ∈ IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) ^ n,
      Φ s ∈ IsLocalRing.maximalIdeal D ^ n := by
    intro n s hs
    have h1 : Ideal.map Φ (IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) ^ n) ≤
        IsLocalRing.maximalIdeal D ^ n := by
      rw [Ideal.map_pow]; exact pow_le_pow_left' hmap n
    exact h1 (Ideal.mem_map_of_mem _ hs)
  letI : Algebra (MvPowerSeries (Fin r) K) D := (Φ : MvPowerSeries (Fin r) K →+* D).toAlgebra
  have hsmul : ∀ (s : MvPowerSeries (Fin r) K) (d : D), s • d = Φ s * d := fun s d => by
    rw [Algebra.smul_def, RingHom.algebraMap_toAlgebra]; rfl
  have hDH : IsHausdorff (IsLocalRing.maximalIdeal D) D := hD.toIsHausdorff
  have hH : IsHausdorff (IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K)) D := by
    refine ⟨fun x hx => ?_⟩
    apply hDH.haus x
    intro n
    have h1 : x ∈ (IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) ^ n •
        (⊤ : Submodule (MvPowerSeries (Fin r) K) D)) := by
      have := hx n
      rw [SModEq.sub_mem, sub_zero] at this
      exact this
    have h2 : x ∈ IsLocalRing.maximalIdeal D ^ n := by
      refine Submodule.smul_induction_on h1 ?_ ?_
      · intro s hs d _
        rw [hsmul]; exact Ideal.mul_mem_right _ _ (hmapn n s hs)
      · intro a b ha hb; exact Ideal.add_mem _ ha hb
    rw [SModEq.sub_mem, sub_zero, Ideal.smul_eq_mul, Ideal.mul_top]
    exact h2
  have hgen : Submodule.span (MvPowerSeries (Fin r) K) (({1} : Finset D) : Set D) ⊔
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) •
        (⊤ : Submodule (MvPowerSeries (Fin r) K) D) = ⊤ := by
    rw [eq_top_iff]
    rintro b -
    obtain ⟨c, hc⟩ := hres (IsLocalRing.residue D b)
    rw [RingHom.comp_apply] at hc
    have hb' : b - algebraMap K D c ∈ IsLocalRing.maximalIdeal D := by
      rw [← IsLocalRing.residue_eq_zero_iff, map_sub, sub_eq_zero]; exact hc.symm
    have h1 : algebraMap K D c ∈
        Submodule.span (MvPowerSeries (Fin r) K) (({1} : Finset D) : Set D) := by
      rw [Finset.coe_singleton, Submodule.mem_span_singleton]
      refine ⟨algebraMap K (MvPowerSeries (Fin r) K) c, ?_⟩
      rw [hsmul, mul_one, AlgHom.commutes]
    have h2 : b - algebraMap K D c ∈ IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) •
        (⊤ : Submodule (MvPowerSeries (Fin r) K) D) := by
      rw [← hz] at hb'
      obtain ⟨a, ha⟩ := (Ideal.mem_span_range_iff_exists_fun).mp hb'
      rw [← ha]
      refine Submodule.sum_mem _ (fun i _ => ?_)
      have e : a i * z i = (MvPowerSeries.X i : MvPowerSeries (Fin r) K) • a i := by
        rw [hsmul, hΦX, mul_comm]
      rw [e]
      exact Submodule.smul_mem_smul (hXm i) Submodule.mem_top
    exact Submodule.mem_sup.mpr ⟨_, h1, _, h2, by abel⟩
  have hspan := wc_hnas_pfc_gcl_cf_complete_nakayama (MvPowerSeries (Fin r) K) _ hScomp D hH
    {1} hgen
  refine ⟨Φ, hΦX, fun b => ?_⟩
  have hb : b ∈ Submodule.span (MvPowerSeries (Fin r) K) (({1} : Finset D) : Set D) := by
    rw [hspan]; exact Submodule.mem_top
  rw [Finset.coe_singleton, Submodule.mem_span_singleton] at hb
  obtain ⟨s, hs⟩ := hb
  exact ⟨s, by rw [← hs, hsmul, mul_one]⟩

theorem wcpa_dj_rtsxs_p2_equichar_form : ∀ (k : Type u) [Field k] (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (ι₀ : k →+* O) (n : ℕ) (A : Type u) [CommRing A] [IsRegularLocalRing A] [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})), IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → ∃ (K : Type u) (_ : Field K) (V : MvPowerSeries (Fin (n + 2)) K) (e₁ : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l})), IsUnit V ∧ ∀ (T : Finset (Fin n)) (I : Ideal (AdicCompletion (IsLocalRing.maximalIdeal O) O)), Ideal.map e I = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n)))) → Ideal.map e₁ I = Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l})) (Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => MvPowerSeries.X (Fin.addNat l 2)) '' (T : Set (Fin n)))) :=
by
  intro k _ O _ _ _ ι₀ n A _ _ _ x y v σ b e hv hdim hspan
  classical

  have hc : ∀ a : WithBot ℕ∞, a = ⊥ ∨ a = ⊤ ∨ ∃ m : ℕ, a = (m : WithBot ℕ∞) := by
    intro a
    induction a using WithBot.recBotCoe with
    | bot => exact Or.inl rfl
    | coe a =>
      induction a using ENat.recTopCoe with
      | top => exact Or.inr (Or.inl rfl)
      | coe m => exact Or.inr (Or.inr ⟨m, rfl⟩)
  have hfin : ∀ N : ℕ, (N : WithBot ℕ∞) < ⊤ := fun N => WithBot.coe_lt_coe.mpr (ENat.coe_lt_top _)
  have htop : ∀ c : WithBot ℕ∞, c ≠ ⊥ → (⊤ : WithBot ℕ∞) + c = ⊤ := by
    intro c hc0
    induction c using WithBot.recBotCoe with
    | bot => exact absurd rfl hc0
    | coe c => rfl
  have wle : ∀ (N : ℕ) (t : WithBot ℕ∞), ((N + 2 : ℕ) : WithBot ℕ∞) ≤ t + 1 →
      ((N + 1 : ℕ) : WithBot ℕ∞) ≤ t := by
    intro N t h
    rcases hc t with rfl | rfl | ⟨m, rfl⟩
    · rw [WithBot.bot_add] at h
      exact absurd (le_bot_iff.mp h) (WithBot.natCast_ne_bot _)
    · exact le_top
    · have : N + 2 ≤ m + 1 := by exact_mod_cast h
      exact_mod_cast (by omega : N + 1 ≤ m)
  have wle2 : ∀ (N : ℕ) (t : WithBot ℕ∞), t + 1 ≤ ((N + 2 : ℕ) : WithBot ℕ∞) →
      t ≤ ((N + 1 : ℕ) : WithBot ℕ∞) := by
    intro N t h
    rcases hc t with rfl | rfl | ⟨m, rfl⟩
    · exact bot_le
    · rw [htop 1 (by simp)] at h
      exact absurd (lt_of_le_of_lt h (hfin _)) (lt_irrefl _)
    · have : m + 1 ≤ N + 2 := by exact_mod_cast h
      exact_mod_cast (by omega : m ≤ N + 1)
  have wcontra : ∀ (N : ℕ) (t : WithBot ℕ∞), t + 1 ≤ (N : WithBot ℕ∞) →
      (N : WithBot ℕ∞) ≤ t → False := by
    intro N t h1 h2
    rcases hc t with rfl | rfl | ⟨m, rfl⟩
    · exact absurd (le_bot_iff.mp h2) (WithBot.natCast_ne_bot _)
    · rw [htop 1 (by simp)] at h1
      exact absurd (lt_of_le_of_lt h1 (hfin N)) (lt_irrefl _)
    · have : m + 1 ≤ N := by exact_mod_cast h1
      have : N ≤ m := by exact_mod_cast h2
      omega

  have main : ∀ (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D],
      IsAdicComplete (IsLocalRing.maximalIdeal D) D → (k →+* D) →
      ∀ (e : D ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})),
      ∃ (K : Type u) (_ : Field K) (V : MvPowerSeries (Fin (n + 2)) K) (e₁ : D ≃+* (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l})), IsUnit V ∧ ∀ (T : Finset (Fin n)) (I : Ideal D), Ideal.map e I = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l})) (Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n)))) → Ideal.map e₁ I = Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l})) (Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => MvPowerSeries.X (Fin.addNat l 2)) '' (T : Set (Fin n)))) := by
    intro D _ _ _ hD ιD e
    generalize hF : x * y - v * ∏ l, σ l ^ b l = F at e ⊢

    have hxm : x ∈ IsLocalRing.maximalIdeal A := by
      rw [← hspan]; exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert x _))
    have hym : y ∈ IsLocalRing.maximalIdeal A := by
      rw [← hspan]
      exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert_of_mem _ (Set.mem_singleton y)))
    obtain ⟨ρ, hρ⟩ : ∃ ρ : A →+* D, ∀ a, ρ a = e.symm (Ideal.Quotient.mk (Ideal.span {F}) a) :=
      ⟨e.symm.toRingHom.comp (Ideal.Quotient.mk _), fun a => rfl⟩
    have hρs : Function.Surjective ρ := by
      intro d
      obtain ⟨q, hq⟩ := Ideal.Quotient.mk_surjective (e d)
      exact ⟨q, by rw [hρ, hq, RingEquiv.symm_apply_apply]⟩
    have hρF : ρ F = 0 := by
      rw [hρ, Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self F), map_zero]
    have hFm : F ∈ IsLocalRing.maximalIdeal A := by
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      have := hu.map ρ
      rw [hρF] at this
      exact not_isUnit_zero this
    have hb : ∃ l, b l ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      have hprod : ∏ l, σ l ^ b l = 1 := Finset.prod_eq_one (fun l _ => by rw [hcon l, pow_zero])
      have hvm : v ∈ IsLocalRing.maximalIdeal A := by
        have h1 : v = x * y - F := by rw [← hF, hprod]; ring
        rw [h1]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hxm) hFm
      exact mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal v).mp hvm) hv

    have hmap : Ideal.map ρ (IsLocalRing.maximalIdeal A) = IsLocalRing.maximalIdeal D := by
      rcases Ideal.map_eq_top_or_isMaximal_of_surjective ρ hρs
          (IsLocalRing.maximalIdeal.isMaximal A) with h | h
      · exfalso
        have h1 : (1 : D) ∈ Ideal.map ρ (IsLocalRing.maximalIdeal A) := by
          rw [h]; exact Submodule.mem_top
        obtain ⟨a, ha, ha1⟩ := (Ideal.mem_map_iff_of_surjective ρ hρs).mp h1
        have hu : IsUnit (1 - a) :=
          IsLocalRing.isUnit_one_sub_self_of_mem_nonunits a ((IsLocalRing.mem_maximalIdeal a).mp ha)
        have := hu.map ρ
        rw [map_sub, map_one, ha1, sub_self] at this
        exact not_isUnit_zero this
      · exact IsLocalRing.eq_maximalIdeal h
    obtain ⟨u, hu⟩ : ∃ u : Dˣ, (u : D) = ρ v := ⟨(hv.map ρ).unit, IsUnit.unit_spec _⟩
    have hunit : ∀ (W : Set D) (a : D),
        Ideal.span (insert (↑u⁻¹ * a) W) = Ideal.span (insert a W) := by
      intro W a
      rw [Ideal.span_insert, Ideal.span_insert, Ideal.span_singleton_mul_left_unit u⁻¹.isUnit]
    obtain ⟨z, hzdef⟩ : ∃ z : Fin (n + 2) → D,
        z = (Fin.cons (↑u⁻¹ * ρ x) (Fin.cons (ρ y) (fun l => ρ (σ l)) : Fin (n + 1) → D) :
          Fin (n + 2) → D) := ⟨_, rfl⟩
    have hz0 : z 0 = ↑u⁻¹ * ρ x := by rw [hzdef]; simp
    have hz1 : z 1 = ρ y := by rw [hzdef]; simp
    have hz2 : ∀ l : Fin n, z (Fin.addNat l 2) = ρ (σ l) := by
      intro l
      have h : Fin.addNat l 2 = l.succ.succ := Fin.ext (by simp only [Fin.val_addNat, Fin.val_succ])
      rw [h, hzdef]; simp
    have hz : Ideal.span (Set.range z) = IsLocalRing.maximalIdeal D := by
      rw [← hmap, ← hspan, Ideal.map_span, hzdef, Fin.range_cons, Fin.range_cons, hunit]
      congr 1
      rw [Set.image_union, Set.image_insert_eq, Set.image_singleton, Set.insert_union,
        Set.singleton_union, ← Set.range_comp]
      rfl

    obtain ⟨K, hK, hKD, hres⟩ := wcpa_dj_rtsxs_p2e_coeff_field k D hD ιD
    obtain ⟨Φ, hΦX, hΦs⟩ := wcpa_dj_rtsxs_p2e_ps_surj K D hD hres (n + 2) z hz
    obtain ⟨G, hG⟩ : ∃ G : MvPowerSeries (Fin (n + 2)) K, G = MvPowerSeries.X 0 * MvPowerSeries.X 1 -
        1 * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l := ⟨_, rfl⟩

    have hΦG : Φ G = 0 := by
      rw [hG]
      simp only [map_sub, map_mul, map_one, map_prod, map_pow, hΦX, hz0, hz1, hz2, one_mul]
      have h1 : ρ x * ρ y - ρ v * ∏ l, ρ (σ l) ^ b l = 0 := by
        rw [← hρF, ← hF]
        simp only [map_sub, map_mul, map_prod, map_pow]
      have hinv : (↑u⁻¹ : D) * ↑u = 1 := Units.inv_mul u
      linear_combination (↑u⁻¹ : D) * h1 - (↑u⁻¹ : D) * (∏ l, ρ (σ l) ^ b l) * hu +
        (∏ l, ρ (σ l) ^ b l) * hinv

    obtain ⟨d, hd⟩ : ∃ d : ℕ, d = ∑ l, b l := ⟨_, rfl⟩
    have hd1 : 1 ≤ d := by
      obtain ⟨l0, hl0⟩ := hb
      have := Finset.single_le_sum (f := b) (fun i _ => Nat.zero_le _) (Finset.mem_univ l0)
      rw [hd]; omega
    obtain ⟨w, hw⟩ : ∃ w : Fin (n + 2) → ℕ, w = fun i : Fin (n + 2) => if (i : ℕ) < 2 then d else 2 :=
      ⟨_, rfl⟩
    have hwpos : ∀ i, 1 ≤ w i := by
      intro i; rw [hw]; dsimp only; split_ifs <;> omega
    have hw0 : w 0 = d := by rw [hw]; simp
    have hw1 : w 1 = d := by rw [hw]; simp
    have hw2 : ∀ l : Fin n, w (Fin.addNat l 2) = 2 := by
      intro l; rw [hw]; dsimp only
      rw [if_neg (by rw [Fin.val_addNat]; omega)]
    have hA1 : MvPolynomial.IsWeightedHomogeneous w
        (MvPolynomial.X 0 * MvPolynomial.X 1 : MvPolynomial (Fin (n + 2)) K) (2 * d) := by
      have h := (MvPolynomial.isWeightedHomogeneous_X K w (0 : Fin (n + 2))).mul
        (MvPolynomial.isWeightedHomogeneous_X K w (1 : Fin (n + 2)))
      rw [hw0, hw1, ← two_mul] at h
      exact h
    have hA2 : MvPolynomial.IsWeightedHomogeneous w
        (∏ l : Fin n, (MvPolynomial.X (Fin.addNat l 2) : MvPolynomial (Fin (n + 2)) K) ^ b l)
        (2 * d) := by
      have h := MvPolynomial.IsWeightedHomogeneous.prod (Finset.univ : Finset (Fin n))
        (fun l => (MvPolynomial.X (Fin.addNat l 2) : MvPolynomial (Fin (n + 2)) K) ^ b l)
        (fun l => b l • 2) (w := w) (fun l _ => by
          have h' := (MvPolynomial.isWeightedHomogeneous_X K w (Fin.addNat l 2)).pow (b l)
          rw [hw2 l] at h'
          exact h')
      have hsum : ∑ l ∈ (Finset.univ : Finset (Fin n)), b l • 2 = 2 * d := by
        rw [hd, Finset.mul_sum]
        exact Finset.sum_congr rfl (fun l _ => by rw [smul_eq_mul, mul_comm])
      rw [hsum] at h
      exact h
    have hhom := hA1.sub hA2
    have hcoe : G = ((MvPolynomial.X 0 * MvPolynomial.X 1 - ∏ l : Fin n,
        MvPolynomial.X (Fin.addNat l 2) ^ b l : MvPolynomial (Fin (n + 2)) K) :
          MvPowerSeries (Fin (n + 2)) K) := by
      rw [hG, ← MvPolynomial.coeToMvPowerSeries.ringHom_apply, map_sub, map_mul, map_prod]
      simp only [map_pow, MvPolynomial.coeToMvPowerSeries.ringHom_apply, MvPolynomial.coe_X,
        one_mul]
    have hGprime : Prime G := by
      rw [hcoe]
      exact wcpa_dj_rtsxs_p2e_whom_series_prime K (n + 2) w (2 * d) _ hwpos hhom
        (wcpa_dj_rtsxs_p2e_node_poly_prime K n b)
    have hG0 : G ≠ 0 := hGprime.ne_zero
    haveI hGp : (Ideal.span {G}).IsPrime := (Ideal.span_singleton_prime hG0).mpr hGprime
    haveI : IsDomain (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) := Ideal.Quotient.isDomain _
    haveI : IsLocalRing (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk (Ideal.span {G})) Ideal.Quotient.mk_surjective

    obtain ⟨-, -, -, hSdim, -⟩ := wc_hnas_pfc_gcl_cf_power_series_regular K (0 : K)
      (by rw [IsLocalRing.maximalIdeal_eq_bot, Ideal.span_singleton_eq_bot.mpr rfl]) (n + 2)
    have hSle : ringKrullDim (MvPowerSeries (Fin (n + 2)) K) ≤ ((n + 2 : ℕ) : WithBot ℕ∞) :=
      hSdim rfl
    have hQle : ringKrullDim (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) + 1 ≤
        ringKrullDim (MvPowerSeries (Fin (n + 2)) K) :=
      ringKrullDim_quotient_succ_le_of_nonZeroDivisor (mem_nonZeroDivisors_of_ne_zero hG0)
    have hQn : ringKrullDim (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) ≤
        ((n + 1 : ℕ) : WithBot ℕ∞) := wle2 n _ (hQle.trans hSle)

    have hsf : Submodule.spanFinrank (Ideal.span {F} : Ideal A) ≤ 1 := by
      have := Submodule.spanFinrank_span_le_ncard_of_finite (R := A) (Set.finite_singleton F)
      rw [Set.ncard_singleton] at this
      exact this
    have hsf' : (Submodule.spanFinrank (Ideal.span {F} : Ideal A) : WithBot ℕ∞) ≤ 1 := by
      exact_mod_cast hsf
    have hAle : ringKrullDim A ≤ ringKrullDim (A ⧸ Ideal.span {F}) +
        (Submodule.spanFinrank (Ideal.span {F} : Ideal A) : WithBot ℕ∞) :=
      ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank _ (by
        rw [IsLocalRing.ringJacobson_eq_maximalIdeal]
        exact (Ideal.span_singleton_le_iff_mem _).mpr hFm)
    have hA2' : ((n + 2 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (A ⧸ Ideal.span {F}) + 1 :=
      hdim.le.trans (hAle.trans (add_le_add_right hsf' _))
    have hDge : ((n + 1 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim D := by
      rw [ringKrullDim_eq_of_ringEquiv e]; exact wle n _ hA2'

    have hGker : ∀ c ∈ Ideal.span {G}, (Φ : MvPowerSeries (Fin (n + 2)) K →+* D) c = 0 := by
      intro c hc
      obtain ⟨c', rfl⟩ := Ideal.mem_span_singleton'.mp hc
      simp [hΦG]
    obtain ⟨Φb, hΦb⟩ : ∃ f : (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) →+* D,
        ∀ c, f (Ideal.Quotient.mk _ c) = Φ c :=
      ⟨Ideal.Quotient.lift _ (Φ : MvPowerSeries (Fin (n + 2)) K →+* D) hGker, fun c => by simp⟩
    have hΦbs : Function.Surjective Φb := by
      intro d'
      obtain ⟨c, hc⟩ := hΦs d'
      exact ⟨Ideal.Quotient.mk _ c, by rw [hΦb, hc]⟩
    have hinj : Function.Injective Φb := by
      rw [injective_iff_map_eq_zero]
      intro a ha
      by_contra ha0
      have ham : a ∈ IsLocalRing.maximalIdeal (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) := by
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        intro hu'
        have := hu'.map Φb
        rw [ha] at this
        exact not_isUnit_zero this
      have h1 := ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors
        (mem_nonZeroDivisors_of_ne_zero ha0) ham
      have hlift : ∀ c ∈ Ideal.span {a}, Φb c = 0 := by
        intro c hc
        obtain ⟨c', rfl⟩ := Ideal.mem_span_singleton'.mp hc
        rw [map_mul, ha, mul_zero]
      have hls : Function.Surjective (Ideal.Quotient.lift (Ideal.span {a}) Φb hlift) := by
        intro d'
        obtain ⟨q, hq⟩ := hΦbs d'
        exact ⟨Ideal.Quotient.mk _ q, by rw [Ideal.Quotient.lift_mk]; exact hq⟩
      have h2 : ringKrullDim D ≤ ringKrullDim
          ((MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) ⧸ Ideal.span {a}) :=
        ringKrullDim_le_of_surjective _ hls
      exact wcontra (n + 1) _ (h1.le.trans hQn) (hDge.trans h2)
    obtain ⟨Ψ, hΨ⟩ : ∃ Ψ : (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {G}) ≃+* D,
        ∀ c, Ψ (Ideal.Quotient.mk _ c) = Φ c :=
      ⟨RingEquiv.ofBijective Φb (show Function.Bijective Φb from ⟨hinj, hΦbs⟩), fun c => hΦb c⟩
    subst hG
    refine ⟨K, hK, 1, Ψ.symm, isUnit_one, ?_⟩

    intro T I hIe
    have hI : I = Ideal.map e.symm (Ideal.map e I) := by
      rw [Ideal.map_symm, Ideal.comap_map_of_bijective _ e.bijective]
    have h1 : I = Ideal.span ({ρ x, ρ y} ∪ (fun l => ρ (σ l)) '' (T : Set (Fin n))) := by
      rw [hI, hIe, Ideal.map_span, Ideal.map_span, Set.image_image]
      congr 1
      simp only [Set.image_union, Set.image_insert_eq, Set.image_singleton, Set.image_image, ← hρ]
    have h2 : Ideal.map Ψ (Ideal.map (Ideal.Quotient.mk _) (Ideal.span
        ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪
          (fun l => MvPowerSeries.X (Fin.addNat l 2)) '' (T : Set (Fin n))))) =
        Ideal.span ({↑u⁻¹ * ρ x, ρ y} ∪ (fun l => ρ (σ l)) '' (T : Set (Fin n))) := by
      rw [Ideal.map_span, Ideal.map_span, Set.image_image]
      congr 1
      simp only [Set.image_union, Set.image_insert_eq, Set.image_singleton, Set.image_image, hΨ,
        hΦX, hz0, hz1, hz2]
    have h3 : Ideal.span ({↑u⁻¹ * ρ x, ρ y} ∪ (fun l => ρ (σ l)) '' (T : Set (Fin n))) =
        Ideal.span ({ρ x, ρ y} ∪ (fun l => ρ (σ l)) '' (T : Set (Fin n))) := by
      rw [Set.insert_union, Set.insert_union, hunit]
    rw [Ideal.map_symm, h1, ← h3, ← h2, Ideal.comap_map_of_bijective _ Ψ.bijective]
  obtain ⟨hlocC, hcompC, -, -⟩ := wc_hnas_completion_local_complete O
  haveI := hlocC
  haveI := wc_hnas_completion_noetherian O
  exact main (AdicCompletion (IsLocalRing.maximalIdeal O) O) hcompC ((algebraMap O _).comp ι₀) e

theorem wcpa_dj_rtsxs_p2_chart_completion : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [IsDomain O] (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i)) [P.IsPrime], f i ≠ 0 → P.comap (algebraMap O (wcpaDjChartAlg O f i)) = IsLocalRing.maximalIdeal O → ∃ (P' : Ideal (wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O) (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i)) (_ : P'.IsPrime), (∀ a : AdicCompletion (IsLocalRing.maximalIdeal O) O, ¬ IsUnit a → algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O) (wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O) (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i) a ∈ P') ∧ IsNoetherianRing (Localization.AtPrime P') ∧ Nonempty (AdicCompletion (R := Localization.AtPrime P) (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P) ≃+* AdicCompletion (R := Localization.AtPrime P') (IsLocalRing.maximalIdeal (Localization.AtPrime P')) (Localization.AtPrime P')) :=
by
  intro O _ _ _ _ r f i P _ _ hPm
  classical

  have s3 : ∀ (R : Type u) [CommRing R] (T : Type u) [CommRing T] [Algebra R T] [Module.Flat R T]
      (r : ℕ) (f : Fin (r + 1) → R) (i : Fin (r + 1)),
      ∃ Ψ : TensorProduct R T (wcpaDjChartAlg R f i) ≃+*
          wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i,
        ∀ t : T, Ψ (t ⊗ₜ[R] (1 : wcpaDjChartAlg R f i)) =
          algebraMap T (wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i) t := by
    intro R _ T _ _ _ r f i
    set C := wcpaDjChartAlg R f i with hCdef
    set Ch := wcpaDjChartAlg T (fun l => algebraMap R T (f l)) i with hChdef
    let ν := IsLocalization.Away.tensorEquiv (R := R) T (f i) (Localization.Away (f i))
    let L : TensorProduct R T C →ₐ[T] TensorProduct R T (Localization.Away (f i)) :=
      Algebra.TensorProduct.lTensor (S := T) T C.val
    have hLt : ∀ (t : T) (c : C), L (t ⊗ₜ[R] c) = t ⊗ₜ[R] (c : Localization.Away (f i)) := by
      intro t c; rfl
    have hLinj : Function.Injective L := by
      have h1 : ⇑L = ⇑(LinearMap.lTensor T (C.val.toLinearMap)) := by
        funext z
        induction z using TensorProduct.induction_on with
        | zero => simp
        | tmul t c => rw [hLt]; rfl
        | add x y hx hy => rw [map_add, map_add, hx, hy]
      rw [h1]
      exact Module.Flat.lTensor_preserves_injective_linearMap _ Subtype.val_injective
    let Φ₀ : TensorProduct R T C →ₐ[T] Localization.Away (algebraMap R T (f i)) :=
      ν.toAlgHom.comp L
    have hΦ₀inj : Function.Injective Φ₀ := ν.injective.comp hLinj
    let κ : Localization.Away (f i) →+* Localization.Away (algebraMap R T (f i)) :=
      ν.toRingHom.comp
        (Algebra.TensorProduct.includeRight :
          Localization.Away (f i) →ₐ[R] TensorProduct R T (Localization.Away (f i))).toRingHom
    have hκapp : ∀ x, κ x = ν ((1 : T) ⊗ₜ[R] x) := fun x => rfl
    have htmul1 : ∀ t : T, ν (t ⊗ₜ[R] (1 : Localization.Away (f i))) =
        algebraMap T (Localization.Away (algebraMap R T (f i))) t := by
      intro t
      have : (t ⊗ₜ[R] (1 : Localization.Away (f i))) =
          algebraMap T (TensorProduct R T (Localization.Away (f i))) t := by
        rw [Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
      rw [this, AlgEquiv.commutes]
    have hκalg : ∀ a : R, κ (algebraMap R (Localization.Away (f i)) a) =
        algebraMap T (Localization.Away (algebraMap R T (f i))) (algebraMap R T a) := by
      intro a
      rw [hκapp, ← Algebra.TensorProduct.tmul_one_eq_one_tmul, htmul1]
    have hgen : ∀ l, κ (IsLocalization.mk' (Localization.Away (f i)) (f l)
        (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) =
        IsLocalization.mk' (Localization.Away (algebraMap R T (f i))) (algebraMap R T (f l))
          (⟨algebraMap R T (f i), Submonoid.mem_powers _⟩ :
            Submonoid.powers (algebraMap R T (f i))) := by
      intro l
      rw [IsLocalization.eq_mk'_iff_mul_eq]
      simp only
      rw [← hκalg, ← hκalg, ← map_mul, IsLocalization.mk'_spec]
    have hκC : ∀ c ∈ C, κ c ∈ Ch := by
      intro c hc
      induction hc using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        rw [hgen]
        exact Algebra.subset_adjoin ⟨l, rfl⟩
      | algebraMap a =>
        rw [hκalg]
        exact Ch.algebraMap_mem _
      | add x y _ _ hx hy => rw [map_add]; exact Ch.add_mem hx hy
      | mul x y _ _ hx hy => rw [map_mul]; exact Ch.mul_mem hx hy
    have hΦ₀one : ∀ c : C, Φ₀ ((1 : T) ⊗ₜ[R] c) = κ c := fun c => rfl
    have hΦ₀mem : ∀ z, Φ₀ z ∈ Ch := by
      intro z
      induction z using TensorProduct.induction_on with
      | zero => rw [map_zero]; exact Ch.zero_mem
      | tmul t c =>
        have e : t ⊗ₜ[R] c = t • ((1 : T) ⊗ₜ[R] c) := by
          rw [TensorProduct.smul_tmul', smul_eq_mul, mul_one]
        rw [e, map_smul, hΦ₀one]
        exact Ch.smul_mem (hκC c c.2) t
      | add x y hx hy => rw [map_add]; exact Ch.add_mem hx hy
    let Φ : TensorProduct R T C →ₐ[T] Ch := Φ₀.codRestrict Ch hΦ₀mem
    have hΦinj : Function.Injective Φ := by
      intro a b hab
      apply hΦ₀inj
      have := congrArg Subtype.val hab
      exact this
    have hΦsurj : Function.Surjective Φ := by
      have hle : Ch ≤ Φ₀.range := by
        apply Algebra.adjoin_le
        rintro _ ⟨l, rfl⟩
        refine ⟨(1 : T) ⊗ₜ[R] (⟨_, Algebra.subset_adjoin ⟨l, rfl⟩⟩ : C), ?_⟩
        exact (hΦ₀one _).trans (hgen l)
      rintro ⟨z, hz⟩
      obtain ⟨w, hw⟩ := hle hz
      exact ⟨w, Subtype.ext hw⟩
    refine ⟨RingEquiv.ofBijective Φ ⟨hΦinj, hΦsurj⟩, ?_⟩
    intro t
    show Φ (t ⊗ₜ[R] (1 : C)) = _
    have : (t ⊗ₜ[R] (1 : C)) = algebraMap T (TensorProduct R T C) t := by
      rw [Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
    rw [this, AlgHom.commutes]

  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian _
  haveI hNoethC : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    wc_hnas_completion_noetherian O
  obtain ⟨Ψ, hΨ⟩ := s3 O (AdicCompletion (IsLocalRing.maximalIdeal O) O) r f i
  let incl : wcpaDjChartAlg O f i →+*
      TensorProduct O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (wcpaDjChartAlg O f i) :=
    (Algebra.TensorProduct.includeRight : wcpaDjChartAlg O f i →ₐ[O]
      TensorProduct O (AdicCompletion (IsLocalRing.maximalIdeal O) O)
        (wcpaDjChartAlg O f i)).toRingHom
  let φ : wcpaDjChartAlg O f i →+* wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O)
      (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i :=
    (Ψ : _ →+* _).comp incl
  have hφ : ∀ c, φ c = Ψ (incl c) := fun c => rfl
  have hcompat : ∀ o : O, φ (algebraMap O (wcpaDjChartAlg O f i) o) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O)
        (wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O)
          (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i)
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) o) := by
    intro o
    rw [hφ]
    show Ψ ((1 : AdicCompletion (IsLocalRing.maximalIdeal O) O) ⊗ₜ[O]
      algebraMap O (wcpaDjChartAlg O f i) o) = _
    rw [← Algebra.TensorProduct.tmul_one_eq_one_tmul, hΨ]

  have s4 : ∀ (B B' B'' : Type u) [CommRing B] [CommRing B'] [CommRing B''] (g : B →+* B')
      (Ψ : B' ≃+* B'') (J : Ideal B),
      (∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk ((J.map g) ^ n)).comp g) ∧
        RingHom.ker ((Ideal.Quotient.mk ((J.map g) ^ n)).comp g) = J ^ n) →
      ∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk ((J.map ((Ψ : B' →+* B'').comp g)) ^ n)).comp
          ((Ψ : B' →+* B'').comp g)) ∧
        RingHom.ker ((Ideal.Quotient.mk ((J.map ((Ψ : B' →+* B'').comp g)) ^ n)).comp
          ((Ψ : B' →+* B'').comp g)) = J ^ n := by
    intro B B' B'' _ _ _ g Ψ J h n
    obtain ⟨hs, hk⟩ := h n
    have hI : (J.map ((Ψ : B' →+* B'').comp g)) ^ n =
        ((J.map g) ^ n).comap (Ψ.symm : B'' →+* B') := by
      rw [← Ideal.map_map, ← Ideal.map_pow, Ideal.map_comap_of_equiv]
      rfl
    rw [hI]
    refine ⟨?_, ?_⟩
    · intro z
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective z
      obtain ⟨c, hc⟩ := hs (Ideal.Quotient.mk _ (Ψ.symm z))
      refine ⟨c, ?_⟩
      rw [RingHom.comp_apply] at hc ⊢
      rw [Ideal.Quotient.eq] at hc ⊢
      rw [Ideal.mem_comap, map_sub]
      simpa using hc
    · ext c
      rw [← hk]
      simp [RingHom.mem_ker, Ideal.Quotient.eq_zero_iff_mem]
  have hlev := s4 _ _ _ incl Ψ _ (wcpa_dj_glt_cc_tensor_levels O (wcpaDjChartAlg O f i))
  have hJP : (IsLocalRing.maximalIdeal O).map (algebraMap O (wcpaDjChartAlg O f i)) ≤ P := by
    rw [Ideal.map_le_iff_le_comap, hPm]
  obtain ⟨P', hP', hP'P, hlevP⟩ := wcpa_dj_glt_cc_level_prime _ _ φ _ hlev P hJP
  obtain ⟨ε, -⟩ := wcpa_dj_glt_cc_completion_of_levels _ _ φ P P' hP'P hlevP
  have hmemP' : ∀ m ∈ IsLocalRing.maximalIdeal O,
      φ (algebraMap O (wcpaDjChartAlg O f i) m) ∈ P' := by
    intro m hm
    have h1 : algebraMap O (wcpaDjChartAlg O f i) m ∈ P := by
      rw [← Ideal.mem_comap, hPm]; exact hm
    rw [← hP'P] at h1
    exact h1
  refine ⟨P', hP', ?_, ?_, ⟨ε⟩⟩
  ·
    intro a ha
    obtain ⟨hloc, -, hlh, -⟩ := wc_hnas_completion_local_complete O
    obtain ⟨o, ho⟩ := (wc_hnas_hs_completion_levels O).1 1 a
    rw [pow_one] at ho
    have hle : (IsLocalRing.maximalIdeal O).map
        (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) ≤
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
      rw [Ideal.map_le_iff_le_comap]
      intro m hm
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hm
      exact hm (isUnit_of_map_unit _ m hu)
    have hom : o ∈ IsLocalRing.maximalIdeal O := by
      by_contra hom
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, not_not] at hom
      have hu := hom.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      have ha' : a ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]; exact ha
      have h2 := Ideal.sub_mem _ ha' (hle ho)
      rw [sub_sub_cancel] at h2
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at h2
      exact h2 hu
    have hsplit : a = algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) o +
        (a - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) o) := by ring
    rw [hsplit, map_add]
    refine Ideal.add_mem _ ?_ ?_
    · rw [← hcompat]; exact hmemP' o hom
    · have hle2 : ((IsLocalRing.maximalIdeal O).map
          (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))).map
          (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O) O)
            (wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O)
              (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i)) ≤
          P' := by
        rw [Ideal.map_map, Ideal.map_le_iff_le_comap]
        intro m hm
        rw [Ideal.mem_comap, RingHom.comp_apply, ← hcompat]
        exact hmemP' m hm
      exact hle2 (Ideal.mem_map_of_mem _ ho)
  ·
    have hfg : (wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O)
        (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i).FG :=
      Subalgebra.fg_def.mpr ⟨_, Set.finite_range _, rfl⟩
    haveI := (Subalgebra.fg_iff_finiteType _).mp hfg
    haveI := Algebra.FiniteType.isNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O) O)
      (wcpaDjChartAlg (AdicCompletion (IsLocalRing.maximalIdeal O) O)
        (fun l => algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)) i)
    infer_instance

theorem wcpa_dj_rtsxs_p2m_chart_transport : ∀ (R R' : Type u) [CommRing R] [CommRing R'] (e : R ≃+* R') (r : ℕ) (φ : Fin (r + 1) → R) (i : Fin (r + 1)), ∃ Ψ : wcpaDjChartAlg R φ i ≃+* wcpaDjChartAlg R' (fun l => e (φ l)) i, ∀ a : R, Ψ (algebraMap R (wcpaDjChartAlg R φ i) a) = algebraMap R' (wcpaDjChartAlg R' (fun l => e (φ l)) i) (e a) :=
by
  intro R R' _ _ e r φ i
  have H : Submonoid.map e.toMonoidHom (Submonoid.powers (φ i)) = Submonoid.powers (e (φ i)) :=
    Submonoid.map_powers _ _
  let θ : Localization.Away (φ i) ≃+* Localization.Away (e (φ i)) :=
    IsLocalization.ringEquivOfRingEquiv (Localization.Away (φ i)) (Localization.Away (e (φ i))) e H
  have hθa : ∀ a : R, θ (algebraMap R (Localization.Away (φ i)) a) =
      algebraMap R' (Localization.Away (e (φ i))) (e a) := fun a =>
    IsLocalization.ringEquivOfRingEquiv_eq H a
  have hθg : ∀ l, θ (IsLocalization.mk' (Localization.Away (φ i)) (φ l)
      (⟨φ i, Submonoid.mem_powers _⟩ : Submonoid.powers (φ i))) =
      IsLocalization.mk' (Localization.Away (e (φ i))) (e (φ l))
      (⟨e (φ i), Submonoid.mem_powers _⟩ : Submonoid.powers (e (φ i))) := fun l =>
    IsLocalization.ringEquivOfRingEquiv_mk' H _ _
  have h1 : ∀ x ∈ wcpaDjChartAlg R φ i, θ x ∈ wcpaDjChartAlg R' (fun l => e (φ l)) i := by
    intro x hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      rw [hθg l]
      exact Algebra.subset_adjoin ⟨l, rfl⟩
    | algebraMap a =>
      rw [hθa a]
      exact Subalgebra.algebraMap_mem _ (e a)
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
  have h2 : ∀ x ∈ wcpaDjChartAlg R' (fun l => e (φ l)) i, θ.symm x ∈ wcpaDjChartAlg R φ i := by
    intro x hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      have : θ.symm (IsLocalization.mk' (Localization.Away (e (φ i))) (e (φ l))
          (⟨e (φ i), Submonoid.mem_powers _⟩ : Submonoid.powers (e (φ i)))) =
          IsLocalization.mk' (Localization.Away (φ i)) (φ l)
          (⟨φ i, Submonoid.mem_powers _⟩ : Submonoid.powers (φ i)) := by
        rw [← hθg l, RingEquiv.symm_apply_apply]
      rw [this]
      exact Algebra.subset_adjoin ⟨l, rfl⟩
    | algebraMap a =>
      have : θ.symm (algebraMap R' (Localization.Away (e (φ i))) a) =
          algebraMap R (Localization.Away (φ i)) (e.symm a) := by
        rw [← RingEquiv.apply_symm_apply e a, ← hθa, RingEquiv.symm_apply_apply,
          RingEquiv.symm_apply_apply]
      rw [this]
      exact Subalgebra.algebraMap_mem _ _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
  let Ψ : wcpaDjChartAlg R φ i ≃+* wcpaDjChartAlg R' (fun l => e (φ l)) i :=
    { toFun := fun x => ⟨θ x.1, h1 x.1 x.2⟩
      invFun := fun x => ⟨θ.symm x.1, h2 x.1 x.2⟩
      left_inv := fun x => Subtype.ext (θ.symm_apply_apply x.1)
      right_inv := fun x => Subtype.ext (θ.apply_symm_apply x.1)
      map_mul' := fun x y => Subtype.ext (map_mul θ x.1 y.1)
      map_add' := fun x y => Subtype.ext (map_add θ x.1 y.1) }
  refine ⟨Ψ, fun a => Subtype.ext ?_⟩
  exact hθa a

theorem wcpa_dj_rtsxs_p2m_switch_gen : ∀ (R : Type u) [CommRing R] (r m : ℕ) (φ : Fin (r + 1) → R) (ψ : Fin (m + 1) → R) (i : Fin (r + 1)) (j : Fin (m + 1)) (P : Ideal (wcpaDjChartAlg R φ i)) [P.IsPrime] (c : wcpaDjChartAlg R φ i), Ideal.span (Set.range φ) = Ideal.span (Set.range ψ) → (c : Localization.Away (φ i)) * algebraMap R _ (φ i) = algebraMap R _ (ψ j) → c ∉ P → ∃ (Q : Ideal (wcpaDjChartAlg R ψ j)) (_ : Q.IsPrime) (_ : Localization.AtPrime P ≃+* Localization.AtPrime Q), Q.comap (algebraMap R (wcpaDjChartAlg R ψ j)) = P.comap (algebraMap R (wcpaDjChartAlg R φ i)) :=
by
  intro R _ r m φ ψ i j P hP c hspan hc hcP
  classical

  have absorb : ∀ (n : ℕ) (χ : Fin (n + 1) → R) (k : Fin (n + 1)) (x : R),
      x ∈ Ideal.span (Set.range χ) → ∃ b : wcpaDjChartAlg R χ k,
        (b : Localization.Away (χ k)) * algebraMap R _ (χ k) = algebraMap R _ x := by
    intro n χ k x hx
    obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun R).1 hx
    let g : Fin (n + 1) → wcpaDjChartAlg R χ k := fun l =>
      ⟨IsLocalization.mk' _ (χ l) ⟨χ k, Submonoid.mem_powers _⟩, Algebra.subset_adjoin ⟨l, rfl⟩⟩
    have hg : ∀ l, ((g l : wcpaDjChartAlg R χ k) : Localization.Away (χ k)) *
        algebraMap R _ (χ k) = algebraMap R _ (χ l) := fun l => IsLocalization.mk'_spec _ _ _
    refine ⟨∑ l, algebraMap R _ (a l) * g l, ?_⟩
    have e : ((∑ l, algebraMap R _ (a l) * g l : wcpaDjChartAlg R χ k) : Localization.Away (χ k)) =
        ∑ l, algebraMap R (Localization.Away (χ k)) (a l) * (g l : Localization.Away (χ k)) := by
      simp only [AddSubmonoidClass.coe_finsetSum, Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
    rw [e, Finset.sum_mul, ← ha, map_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [mul_assoc, hg l, smul_eq_mul, map_mul]

  have embed : ∀ (f g : R) (T : Type u) [CommRing T] (κ : R →+* T) (hf : IsUnit (κ f)),
      IsUnit (κ g) → (∀ x : R, κ x = 0 → ∃ N : ℕ, (f * g) ^ N * x = 0) →
      ∀ (A : Subalgebra R (Localization.Away f)) (c : A),
      (c : Localization.Away f) * algebraMap R _ f = algebraMap R _ g →
      IsUnit (IsLocalization.Away.lift (S := Localization.Away f) f hf (c : Localization.Away f)) ∧
      ∀ a : A, IsLocalization.Away.lift (S := Localization.Away f) f hf (a : Localization.Away f) = 0 →
        ∃ n : ℕ, c ^ n * a = 0 := by
    intro f g T _ κ hf hg hker A c hc
    have hl := congrArg (IsLocalization.Away.lift (S := Localization.Away f) f hf) hc
    rw [map_mul, IsLocalization.Away.lift_eq, IsLocalization.Away.lift_eq] at hl
    rw [← hl] at hg
    refine ⟨isUnit_of_mul_isUnit_left hg, ?_⟩
    intro a ha
    obtain ⟨k, x, hx⟩ := IsLocalization.Away.surj f (a : Localization.Away f)
    have hx' := congrArg (IsLocalization.Away.lift (S := Localization.Away f) f hf) hx
    rw [map_mul, ha, zero_mul, IsLocalization.Away.lift_eq] at hx'
    obtain ⟨N, hN⟩ := hker x hx'.symm
    refine ⟨N, ?_⟩
    apply Subtype.ext
    show (c : Localization.Away f) ^ N * (a : Localization.Away f) = 0
    have hu : IsUnit (algebraMap R (Localization.Away f) f) :=
      IsLocalization.Away.algebraMap_isUnit f
    have h0 : algebraMap R (Localization.Away f) ((f * g) ^ N * x) = 0 := by rw [hN, map_zero]
    rw [map_mul, map_pow, map_mul, ← hc, ← hx] at h0
    apply (hu.pow (N + N + k)).mul_left_eq_zero.1
    rw [← h0]
    ring

  have image : ∀ (n₁ n₂ : ℕ) (χ₁ : Fin (n₁ + 1) → R) (χ₂ : Fin (n₂ + 1) → R) (k₁ : Fin (n₁ + 1))
      (k₂ : Fin (n₂ + 1)) (T : Type u) [CommRing T] (κ : R →+* T) (hf : IsUnit (κ (χ₁ k₁)))
      (hg : IsUnit (κ (χ₂ k₂))) (c : wcpaDjChartAlg R χ₁ k₁),
      (c : Localization.Away (χ₁ k₁)) * algebraMap R _ (χ₁ k₁) = algebraMap R _ (χ₂ k₂) →
      (∀ l : Fin (n₂ + 1), ∃ a : wcpaDjChartAlg R χ₁ k₁,
        (a : Localization.Away (χ₁ k₁)) * algebraMap R _ (χ₁ k₁) = algebraMap R _ (χ₂ l)) →
      ∀ b : wcpaDjChartAlg R χ₂ k₂, ∃ (a : wcpaDjChartAlg R χ₁ k₁) (n : ℕ),
        IsLocalization.Away.lift (S := Localization.Away (χ₂ k₂)) (χ₂ k₂) hg
            (b : Localization.Away (χ₂ k₂)) *
          IsLocalization.Away.lift (S := Localization.Away (χ₁ k₁)) (χ₁ k₁) hf
            (c : Localization.Away (χ₁ k₁)) ^ n =
        IsLocalization.Away.lift (S := Localization.Away (χ₁ k₁)) (χ₁ k₁) hf
          (a : Localization.Away (χ₁ k₁)) := by
    intro n₁ n₂ χ₁ χ₂ k₁ k₂ T _ κ hf hg c hc habs b
    have hlf : ∀ x : R, IsLocalization.Away.lift (S := Localization.Away (χ₁ k₁)) (χ₁ k₁) hf
        (algebraMap R _ x) = κ x := IsLocalization.Away.lift_eq _ hf
    have hlg : ∀ x : R, IsLocalization.Away.lift (S := Localization.Away (χ₂ k₂)) (χ₂ k₂) hg
        (algebraMap R _ x) = κ x := IsLocalization.Away.lift_eq _ hg
    generalize IsLocalization.Away.lift (S := Localization.Away (χ₁ k₁)) (χ₁ k₁) hf = lf at hlf ⊢
    generalize IsLocalization.Away.lift (S := Localization.Away (χ₂ k₂)) (χ₂ k₂) hg = lg at hlg ⊢
    have E1 : lf (c : Localization.Away (χ₁ k₁)) * κ (χ₁ k₁) = κ (χ₂ k₂) := by
      have := congrArg lf hc
      rwa [map_mul, hlf, hlf] at this
    obtain ⟨y, hy⟩ := b
    change ∃ (a : wcpaDjChartAlg R χ₁ k₁) (n : ℕ),
      lg y * lf (c : Localization.Away (χ₁ k₁)) ^ n = lf (a : Localization.Away (χ₁ k₁))
    have hy' : y ∈ Algebra.adjoin R (Set.range fun l => IsLocalization.mk' (Localization.Away (χ₂ k₂))
        (χ₂ l) (⟨χ₂ k₂, Submonoid.mem_powers _⟩ : Submonoid.powers (χ₂ k₂))) := hy
    clear hy
    induction hy' using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      obtain ⟨a, ha⟩ := habs l
      refine ⟨a, 1, ?_⟩
      have hs := IsLocalization.mk'_spec (Localization.Away (χ₂ k₂)) (χ₂ l)
        (⟨χ₂ k₂, Submonoid.mem_powers _⟩ : Submonoid.powers (χ₂ k₂))
      have h1 := congrArg lg hs
      rw [map_mul, hlg, hlg] at h1
      have h2 := congrArg lf ha
      rw [map_mul, hlf, hlf] at h2
      apply (hf.mul_left_inj).1
      rw [pow_one, mul_assoc, E1, h2]
      exact h1
    | algebraMap x =>
      refine ⟨algebraMap R _ x, 0, ?_⟩
      rw [pow_zero, mul_one, Subalgebra.coe_algebraMap, hlf, hlg]
    | add x y _ _ ihx ihy =>
      obtain ⟨a₁, n₁, h₁⟩ := ihx
      obtain ⟨a₂, n₂, h₂⟩ := ihy
      refine ⟨a₁ * c ^ n₂ + a₂ * c ^ n₁, n₁ + n₂, ?_⟩
      simp only [Subalgebra.coe_add, Subalgebra.coe_mul, Subalgebra.coe_pow, map_add, map_mul,
        map_pow]
      linear_combination (lf (c : Localization.Away (χ₁ k₁))) ^ n₂ * h₁ +
        (lf (c : Localization.Away (χ₁ k₁))) ^ n₁ * h₂
    | mul x y _ _ ihx ihy =>
      obtain ⟨a₁, n₁, h₁⟩ := ihx
      obtain ⟨a₂, n₂, h₂⟩ := ihy
      refine ⟨a₁ * a₂, n₁ + n₂, ?_⟩
      simp only [Subalgebra.coe_mul, map_mul]
      linear_combination (lg y * lf (c : Localization.Away (χ₁ k₁)) ^ n₂) * h₁ +
        lf (a₁ : Localization.Away (χ₁ k₁)) * h₂

  have liftInj : ∀ (A T : Type u) [CommRing A] [CommRing T] (c : A) (α : A →+* T)
      (hc : IsUnit (α c)), (∀ a : A, α a = 0 → ∃ n : ℕ, c ^ n * a = 0) →
      Function.Injective (IsLocalization.Away.lift (S := Localization.Away c) c hc) := by
    intro A T _ _ c α hc hker
    rw [injective_iff_map_eq_zero]
    intro z hz
    obtain ⟨k, a, hk⟩ := IsLocalization.Away.surj c z
    have h1 := congrArg (IsLocalization.Away.lift (S := Localization.Away c) c hc) hk
    rw [map_mul, hz, zero_mul, IsLocalization.Away.lift_eq] at h1
    obtain ⟨n, hn⟩ := hker a h1.symm
    have h2 : algebraMap A (Localization.Away c) a = 0 :=
      (IsLocalization.map_eq_zero_iff (Submonoid.powers c) _ a).2 ⟨⟨c ^ n, n, rfl⟩, hn⟩
    rw [h2] at hk
    exact ((IsLocalization.Away.algebraMap_isUnit c).pow k).mul_left_eq_zero.1 hk

  have liftRange : ∀ (A B T : Type u) [CommRing A] [CommRing B] [CommRing T] (c : A) (d : B)
      (α : A →+* T) (β : B →+* T) (hc : IsUnit (α c)) (hd : IsUnit (β d)), β d * α c = 1 →
      (∀ b : B, ∃ (a : A) (n : ℕ), β b * α c ^ n = α a) →
      ∀ z : Localization.Away d, ∃ x : Localization.Away c,
        IsLocalization.Away.lift (S := Localization.Away c) c hc x =
          IsLocalization.Away.lift (S := Localization.Away d) d hd z := by
    intro A B T _ _ _ c d α β hc hd hdc himg z
    obtain ⟨k, b, hk⟩ := IsLocalization.Away.surj d z
    have hz := congrArg (IsLocalization.Away.lift (S := Localization.Away d) d hd) hk
    rw [map_mul, map_pow, IsLocalization.Away.lift_eq, IsLocalization.Away.lift_eq] at hz
    obtain ⟨a, n, han⟩ := himg b
    refine ⟨IsLocalization.mk' (Localization.Away c) (a * c ^ k)
      (⟨c ^ n, n, rfl⟩ : Submonoid.powers c), ?_⟩
    have hs := IsLocalization.mk'_spec (Localization.Away c) (a * c ^ k)
      (⟨c ^ n, n, rfl⟩ : Submonoid.powers c)
    have hs' : (((⟨c ^ n, n, rfl⟩ : Submonoid.powers c)) : A) = c ^ n := rfl
    rw [hs'] at hs
    have hx := congrArg (IsLocalization.Away.lift (S := Localization.Away c) c hc) hs
    rw [map_mul, IsLocalization.Away.lift_eq, IsLocalization.Away.lift_eq, map_mul, map_pow,
      map_pow] at hx
    apply ((hc.pow n).mul_left_inj).1
    rw [hx]
    have hpow : (β d * α c) ^ k = 1 := by rw [hdc, one_pow]
    linear_combination (-(α c) ^ k) * han - (α c ^ n * α c ^ k) * hz +
      (IsLocalization.Away.lift (S := Localization.Away d) d hd z * α c ^ n) * hpow

  have equivOfRange : ∀ (A B T : Type u) [CommRing A] [CommRing B] [CommRing T] (α : A →+* T)
      (β : B →+* T), Function.Injective α → Function.Injective β →
      (∀ x : A, ∃ y : B, β y = α x) → (∀ y : B, ∃ x : A, α x = β y) →
      ∃ Θ : A ≃+* B, ∀ x : A, β (Θ x) = α x := by
    intro A B T _ _ _ α β hα hβ h1 h2
    have hrange : α.range = β.range := by
      ext t
      simp only [RingHom.mem_range]
      constructor
      · rintro ⟨x, rfl⟩
        obtain ⟨y, hy⟩ := h1 x
        exact ⟨y, hy⟩
      · rintro ⟨y, rfl⟩
        obtain ⟨x, hx⟩ := h2 y
        exact ⟨x, hx⟩
    let eα : A ≃+* α.range := RingEquiv.ofBijective α.rangeRestrict
      ⟨fun x y h => hα (congrArg Subtype.val h), α.rangeRestrict_surjective⟩
    let eβ : B ≃+* β.range := RingEquiv.ofBijective β.rangeRestrict
      ⟨fun x y h => hβ (congrArg Subtype.val h), β.rangeRestrict_surjective⟩
    refine ⟨eα.trans ((RingEquiv.subringCongr hrange).trans eβ.symm), fun x => ?_⟩
    have key : ∀ w : β.range, β (eβ.symm w) = w := by
      intro w
      have : eβ (eβ.symm w) = w := eβ.apply_symm_apply w
      exact congrArg Subtype.val this
    rw [RingEquiv.trans_apply, RingEquiv.trans_apply, key]
    rfl

  have primeTransport : ∀ (A B : Type u) [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]
      (c : A) (d : B) (Θ : Localization.Away c ≃+* Localization.Away d) (P : Ideal A) [P.IsPrime],
      (∀ x : R, Θ (algebraMap A (Localization.Away c) (algebraMap R A x)) =
        algebraMap B (Localization.Away d) (algebraMap R B x)) →
      c ∉ P → ∃ (Q : Ideal B) (_ : Q.IsPrime) (_ : Localization.AtPrime P ≃+* Localization.AtPrime Q),
        Q.comap (algebraMap R B) = P.comap (algebraMap R A) := by
    intro A B _ _ _ _ c d Θ P hP hΘ hcP
    have hdisj : Disjoint (Submonoid.powers c : Set A) (P : Set A) :=
      (Ideal.disjoint_powers_iff_notMem c hP.isRadical).2 hcP
    have hP'p := IsLocalization.isPrime_of_isPrime_disjoint (Submonoid.powers c)
      (Localization.Away c) P hP hdisj
    have hP'c := IsLocalization.under_map_of_isPrime_disjoint (Submonoid.powers c)
      (Localization.Away c) hP hdisj
    generalize P.map (algebraMap A (Localization.Away c)) = P' at hP'p hP'c
    have hP'c' : P'.comap (algebraMap A (Localization.Away c)) = P := hP'c
    haveI := hP'p
    have hsub : ∀ (I J : Ideal A) [I.IsPrime] [J.IsPrime], I = J →
        Localization.AtPrime I ≃+* Localization.AtPrime J := by
      intro I J _ _ h
      subst h
      exact RingEquiv.refl _
    have e1 : Localization.AtPrime P ≃+* Localization.AtPrime P' :=
      (hsub _ _ hP'c'.symm).trans
        (IsLocalization.localizationLocalizationAtPrimeIsoLocalization (Submonoid.powers c)
          P').toRingEquiv
    have hmap : Submonoid.map Θ.toMonoidHom P'.primeCompl =
        (P'.comap (Θ.symm : Localization.Away d →+* Localization.Away c)).primeCompl := by
      ext a
      rw [Submonoid.mem_map, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
      constructor
      · rintro ⟨b, hb, rfl⟩
        rw [Ideal.mem_primeCompl_iff] at hb
        simpa using hb
      · intro ha
        exact ⟨Θ.symm a, by rw [Ideal.mem_primeCompl_iff]; simpa using ha, by simp⟩
    have e2 : Localization.AtPrime P' ≃+*
        Localization.AtPrime (P'.comap (Θ.symm : Localization.Away d →+* Localization.Away c)) :=
      IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime P')
        (Localization.AtPrime (P'.comap (Θ.symm : Localization.Away d →+* Localization.Away c)))
        Θ hmap
    have e3 := (IsLocalization.localizationLocalizationAtPrimeIsoLocalization (Submonoid.powers d)
      (P'.comap (Θ.symm : Localization.Away d →+* Localization.Away c))).toRingEquiv
    refine ⟨(P'.comap (Θ.symm : Localization.Away d →+* Localization.Away c)).comap
      (algebraMap B (Localization.Away d)), inferInstance, e1.trans (e2.trans e3.symm), ?_⟩
    ext x
    simp only [Ideal.mem_comap]
    show Θ.symm (algebraMap B (Localization.Away d) (algebraMap R B x)) ∈ P' ↔ _
    rw [← hΘ x, RingEquiv.symm_apply_apply, ← Ideal.mem_comap, hP'c']

  have hfgU : IsUnit (algebraMap R (Localization.Away (φ i * ψ j)) (φ i * ψ j)) :=
    IsLocalization.Away.algebraMap_isUnit _
  rw [map_mul] at hfgU
  have hf : IsUnit (algebraMap R (Localization.Away (φ i * ψ j)) (φ i)) :=
    isUnit_of_mul_isUnit_left hfgU
  have hg : IsUnit (algebraMap R (Localization.Away (φ i * ψ j)) (ψ j)) :=
    isUnit_of_mul_isUnit_right hfgU
  have hker : ∀ x : R, algebraMap R (Localization.Away (φ i * ψ j)) x = 0 →
      ∃ N : ℕ, (φ i * ψ j) ^ N * x = 0 := by
    intro x hx
    obtain ⟨⟨_, N, rfl⟩, hm⟩ :=
      (IsLocalization.map_eq_zero_iff (Submonoid.powers (φ i * ψ j)) _ x).1 hx
    exact ⟨N, hm⟩
  have hker' : ∀ x : R, algebraMap R (Localization.Away (φ i * ψ j)) x = 0 →
      ∃ N : ℕ, (ψ j * φ i) ^ N * x = 0 := by
    intro x hx
    obtain ⟨N, hN⟩ := hker x hx
    exact ⟨N, by rw [mul_comm (ψ j)]; exact hN⟩

  obtain ⟨d, hd⟩ := absorb m ψ j (φ i) (by rw [← hspan]; exact Ideal.subset_span ⟨i, rfl⟩)
  obtain ⟨hcU, hcK⟩ := embed (φ i) (ψ j) _ (algebraMap R (Localization.Away (φ i * ψ j))) hf hg
    hker _ c hc
  obtain ⟨hdU, hdK⟩ := embed (ψ j) (φ i) _ (algebraMap R (Localization.Away (φ i * ψ j))) hg hf
    hker' _ d hd
  let α : wcpaDjChartAlg R φ i →+* Localization.Away (φ i * ψ j) :=
    (IsLocalization.Away.lift (S := Localization.Away (φ i)) (φ i) hf).comp
      (algebraMap (wcpaDjChartAlg R φ i) (Localization.Away (φ i)))
  let β : wcpaDjChartAlg R ψ j →+* Localization.Away (φ i * ψ j) :=
    (IsLocalization.Away.lift (S := Localization.Away (ψ j)) (ψ j) hg).comp
      (algebraMap (wcpaDjChartAlg R ψ j) (Localization.Away (ψ j)))
  have hαinj := liftInj (wcpaDjChartAlg R φ i) _ c α hcU hcK
  have hβinj := liftInj (wcpaDjChartAlg R ψ j) _ d β hdU hdK
  have E1 : α c * algebraMap R _ (φ i) = algebraMap R _ (ψ j) := by
    have := congrArg (IsLocalization.Away.lift (S := Localization.Away (φ i)) (φ i) hf) hc
    rwa [map_mul, IsLocalization.Away.lift_eq, IsLocalization.Away.lift_eq] at this
  have E2 : β d * algebraMap R _ (ψ j) = algebraMap R _ (φ i) := by
    have := congrArg (IsLocalization.Away.lift (S := Localization.Away (ψ j)) (ψ j) hg) hd
    rwa [map_mul, IsLocalization.Away.lift_eq, IsLocalization.Away.lift_eq] at this
  have E3 : α c * β d = 1 := by
    apply hg.mul_left_inj.1
    rw [mul_assoc, E2, E1, one_mul]
  have habsA : ∀ l : Fin (m + 1), ∃ a : wcpaDjChartAlg R φ i,
      (a : Localization.Away (φ i)) * algebraMap R _ (φ i) = algebraMap R _ (ψ l) :=
    fun l => absorb r φ i (ψ l) (by rw [hspan]; exact Ideal.subset_span ⟨l, rfl⟩)
  have habsB : ∀ l : Fin (r + 1), ∃ b : wcpaDjChartAlg R ψ j,
      (b : Localization.Away (ψ j)) * algebraMap R _ (ψ j) = algebraMap R _ (φ l) :=
    fun l => absorb m ψ j (φ l) (by rw [← hspan]; exact Ideal.subset_span ⟨l, rfl⟩)
  have imgB := image r m φ ψ i j _ (algebraMap R (Localization.Away (φ i * ψ j))) hf hg c hc habsA
  have imgA := image m r ψ φ j i _ (algebraMap R (Localization.Away (φ i * ψ j))) hg hf d hd habsB
  have r1 := liftRange (wcpaDjChartAlg R φ i) (wcpaDjChartAlg R ψ j) _ c d α β hcU hdU
    (by rw [mul_comm (β d) (α c)]; exact E3) imgB
  have r2 := liftRange (wcpaDjChartAlg R ψ j) (wcpaDjChartAlg R φ i) _ d c β α hdU hcU E3 imgA
  obtain ⟨Θ, hΘ⟩ := equivOfRange (Localization.Away c) (Localization.Away d) _
    (IsLocalization.Away.lift (S := Localization.Away c) c hcU)
    (IsLocalization.Away.lift (S := Localization.Away d) d hdU) hαinj hβinj
    (fun x => r2 x) (fun z => r1 z)
  have hcompat : ∀ x : R, Θ (algebraMap (wcpaDjChartAlg R φ i) (Localization.Away c)
      (algebraMap R _ x)) = algebraMap (wcpaDjChartAlg R ψ j) (Localization.Away d)
      (algebraMap R _ x) := by
    intro x
    apply hβinj
    rw [hΘ]
    have h1 := IsLocalization.Away.lift_eq (S := Localization.Away c) (g := α) c hcU
      (algebraMap R (wcpaDjChartAlg R φ i) x)
    have h2 := IsLocalization.Away.lift_eq (S := Localization.Away d) (g := β) d hdU
      (algebraMap R (wcpaDjChartAlg R ψ j) x)
    rw [h1, h2]
    show IsLocalization.Away.lift (S := Localization.Away (φ i)) (φ i) hf
        ((algebraMap R (wcpaDjChartAlg R φ i) x : Localization.Away (φ i))) =
      IsLocalization.Away.lift (S := Localization.Away (ψ j)) (ψ j) hg
        ((algebraMap R (wcpaDjChartAlg R ψ j) x : Localization.Away (ψ j)))
    rw [Subalgebra.coe_algebraMap, Subalgebra.coe_algebraMap, IsLocalization.Away.lift_eq,
      IsLocalization.Away.lift_eq]
  exact primeTransport _ _ c d Θ P hcompat hcP

theorem wcpa_dj_rtsxs_p2m_mvps_params : ∀ (K : Type u) [Field K] (r : ℕ), IsRegularLocalRing (MvPowerSeries (Fin r) K) ∧ ((r : ℕ) : WithBot ℕ∞) = ringKrullDim (MvPowerSeries (Fin r) K) ∧ Ideal.span (Set.range (MvPowerSeries.X : Fin r → MvPowerSeries (Fin r) K)) = IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) :=
by
  intro K _ r

  have hL : ∀ (g : Fin r → MvPowerSeries (Fin r) K) (i : Fin r),
      MvPowerSeries.coeff (Finsupp.single i 1) (∑ j, g j * MvPowerSeries.X j) =
        MvPowerSeries.constantCoeff (g i) := by
    intro g i
    rw [map_sum, Finset.sum_eq_single i]
    · rw [MvPowerSeries.X_def, MvPowerSeries.coeff_mul_monomial, if_pos le_rfl, tsub_self,
        mul_one, MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
    · intro j _ hji
      rw [MvPowerSeries.X_def, MvPowerSeries.coeff_mul_monomial, if_neg]
      intro hle
      have := hle j
      rw [Finsupp.single_eq_same, Finsupp.single_apply, if_neg (Ne.symm hji)] at this
      omega
    · intro h; exact absurd (Finset.mem_univ i) h

  have hA : ∀ f ∈ Ideal.span (Set.range (MvPowerSeries.X : Fin r → MvPowerSeries (Fin r) K)),
      MvPowerSeries.constantCoeff f = 0 := by
    intro f hf
    have hle : Ideal.span (Set.range (MvPowerSeries.X : Fin r → MvPowerSeries (Fin r) K)) ≤
        RingHom.ker (MvPowerSeries.constantCoeff (σ := Fin r) (R := K)) := by
      rw [Ideal.span_le]
      rintro _ ⟨j, rfl⟩
      exact MvPowerSeries.constantCoeff_X j
    exact hle hf

  have hB : ∀ (i : Fin r), ∀ f ∈ Ideal.span (Set.range (MvPowerSeries.X : Fin r → MvPowerSeries (Fin r) K)) ^ 2,
      MvPowerSeries.coeff (Finsupp.single i 1) f = 0 := by
    intro i f hf
    rw [pow_two] at hf
    refine Submodule.mul_induction_on hf ?_ ?_
    · intro m hm n hn
      obtain ⟨a, rfl⟩ := (Ideal.mem_span_range_iff_exists_fun).mp hm
      have e : (∑ j, a j * MvPowerSeries.X j) * n = ∑ j, (a j * n) * MvPowerSeries.X j := by
        rw [Finset.sum_mul]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        ring
      rw [e, hL, map_mul, hA n hn, mul_zero]
    · intro x y hx hy
      rw [map_add, hx, hy, add_zero]

  have hK : IsLocalRing.maximalIdeal K = Ideal.span {(0 : K)} := by
    rw [IsLocalRing.maximalIdeal_eq_bot, Ideal.span_singleton_eq_bot.mpr rfl]
  obtain ⟨-, hreg, hm, hdim0, -⟩ := wc_hnas_pfc_gcl_cf_power_series_regular K 0 hK r
  have hm' : IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K) =
      Ideal.span (Set.range (MvPowerSeries.X : Fin r → MvPowerSeries (Fin r) K)) := by
    rw [hm, map_zero, Ideal.span_insert_zero]
  have hup : ringKrullDim (MvPowerSeries (Fin r) K) ≤ (r : WithBot ℕ∞) := hdim0 rfl
  have hr : r ≤ Submodule.spanFinrank (IsLocalRing.maximalIdeal (MvPowerSeries (Fin r) K)) := by
    apply wc_pfc_p_cotangent_indep_card (MvPowerSeries (Fin r) K) r MvPowerSeries.X
    · intro i
      rw [hm']
      exact Ideal.subset_span ⟨i, rfl⟩
    · intro c hc i
      rw [hm'] at hc
      have h0 : MvPowerSeries.constantCoeff (c i) = 0 := by
        rw [← hL c i]
        exact hB i _ hc
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, MvPowerSeries.isUnit_iff_constantCoeff, h0]
      exact not_isUnit_zero
  have hlow : (r : WithBot ℕ∞) ≤ ringKrullDim (MvPowerSeries (Fin r) K) := by
    rw [← hreg.spanFinrank_maximalIdeal]
    exact_mod_cast hr
  exact ⟨hreg, le_antisymm hlow hup, hm'.symm⟩

theorem wcpa_dj_rtsxs_p2m_fibre_count : ∀ (S : Type u) [CommRing S] [IsLocalRing S] [IsNoetherianRing S] (d k : ℕ) (y : Fin d → S) (Q : Ideal (MvPolynomial (Fin k) S)) [Q.IsPrime], (d : WithBot ℕ∞) = ringKrullDim S → Ideal.span (Set.range y) = IsLocalRing.maximalIdeal S → Q.comap MvPolynomial.C = IsLocalRing.maximalIdeal S → ∃ (m' : ℕ) (w : Fin m' → Localization.AtPrime Q), Ideal.span (Set.range (fun a => algebraMap (MvPolynomial (Fin k) S) (Localization.AtPrime Q) (MvPolynomial.C (y a)))) ⊔ Ideal.span (Set.range w) = IsLocalRing.maximalIdeal (Localization.AtPrime Q) ∧ ((d + m' : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime Q) :=
by
  intro S _ _ _ d k y Q _ hd hy hQC
  classical
  set 𝔪 := IsLocalRing.maximalIdeal S with h𝔪
  set W := MvPolynomial (Fin k) S with hW
  set I₀ : Ideal W := Ideal.map (algebraMap S W) 𝔪 with hI₀
  set L := Localization.AtPrime Q with hL
  set alg := algebraMap W L with halg
  have hcomap : Q.comap (algebraMap S W) = 𝔪 := by
    rw [MvPolynomial.algebraMap_eq]; exact hQC
  have hI₀Q : I₀ ≤ Q := Ideal.map_le_iff_le_comap.mpr (le_of_eq hcomap.symm)
  set qb : Ideal (W ⧸ I₀) := Ideal.map (Ideal.Quotient.mk I₀) Q with hqb
  haveI hqbprime : qb.IsPrime := Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
    (by rw [Ideal.mk_ker]; exact hI₀Q)
  have hQq : Q = qb.comap (Ideal.Quotient.mk I₀) := by
    rw [hqb, Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective, Ideal.mk_ker,
      sup_eq_left.mpr hI₀Q]
  set F := Localization.AtPrime qb with hF
  set φ : L →+* F := Localization.localRingHom Q qb (Ideal.Quotient.mk I₀) hQq with hφ

  have hsurj : Function.Surjective φ := by
    intro z
    obtain ⟨⟨a, s⟩, hz⟩ := IsLocalization.mk'_surjective qb.primeCompl z
    dsimp only at hz
    subst hz
    obtain ⟨a', rfl⟩ := Ideal.Quotient.mk_surjective a
    obtain ⟨s', hs'⟩ := Ideal.Quotient.mk_surjective (s : W ⧸ I₀)
    have hs'Q : s' ∈ Q.primeCompl := by
      intro hs
      apply s.2
      rw [← hs']
      exact Ideal.mem_map_of_mem _ hs
    refine ⟨IsLocalization.mk' L a' ⟨s', hs'Q⟩, ?_⟩
    rw [hφ, Localization.localRingHom_mk']
    congr 1
    ext
    exact hs'

  have hker : ∀ x ∈ RingHom.ker φ, x ∈ Ideal.map alg I₀ := by
    intro x hx
    obtain ⟨⟨a, s⟩, hxs⟩ := IsLocalization.mk'_surjective Q.primeCompl x
    dsimp only at hxs
    subst hxs
    rw [RingHom.mem_ker, hφ, Localization.localRingHom_mk', IsLocalization.mk'_eq_zero_iff] at hx
    obtain ⟨⟨tb, htb⟩, ht⟩ := hx
    obtain ⟨t, rfl⟩ := Ideal.Quotient.mk_surjective tb
    have htQ : t ∈ Q.primeCompl := by
      intro h
      exact htb (Ideal.mem_map_of_mem _ h)
    have hta : t * a ∈ I₀ := by
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul]
      exact ht
    rw [IsLocalization.mem_map_algebraMap_iff Q.primeCompl L]
    refine ⟨(⟨t * a, hta⟩, ⟨t, htQ⟩ * s), ?_⟩
    simp only [Submonoid.coe_mul, map_mul]
    rw [mul_comm (algebraMap W L t), ← mul_assoc, IsLocalization.mk'_spec, mul_comm]
  have hmapI : Ideal.map alg I₀ ≤ Ideal.span (Set.range (fun a => alg (MvPolynomial.C (y a)))) := by
    rw [Ideal.map_le_iff_le_comap, hI₀, Ideal.map_le_iff_le_comap]
    refine le_trans (le_of_eq hy.symm) ?_
    rw [Ideal.span_le]
    rintro _ ⟨a, rfl⟩
    refine Ideal.mem_comap.mpr (Ideal.mem_comap.mpr ?_)
    rw [MvPolynomial.algebraMap_eq]
    exact Ideal.subset_span ⟨a, rfl⟩

  have hFreg : IsRegularLocalRing F := by
    letI : Field (S ⧸ 𝔪) := Ideal.Quotient.field 𝔪
    let e : MvPolynomial (Fin k) (S ⧸ 𝔪) ≃+* W ⧸ I₀ :=
      (MvPolynomial.quotientEquivQuotientMvPolynomial 𝔪).toRingEquiv
    let P : Ideal (MvPolynomial (Fin k) (S ⧸ 𝔪)) := qb.comap e
    haveI : P.IsPrime := Ideal.comap_isPrime e qb
    haveI := wcpa_dj_rss_poly_field_regular (S ⧸ 𝔪) k P
    have H : Submonoid.map e.toMonoidHom P.primeCompl = qb.primeCompl := by
      ext z
      simp only [Submonoid.mem_map]
      constructor
      · rintro ⟨x, hx, rfl⟩
        exact hx
      · intro hz
        refine ⟨e.symm z, ?_, ?_⟩
        · show e.symm z ∉ P
          show e (e.symm z) ∉ qb
          rw [RingEquiv.apply_symm_apply]
          exact hz
        · exact RingEquiv.apply_symm_apply e z
    let Ψ : Localization.AtPrime P ≃+* F :=
      IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime P) F e H
    exact IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime P) Ψ

  have hFG : Submodule.FG (IsLocalRing.maximalIdeal F) := IsNoetherian.noetherian _
  obtain ⟨s, hsc, hsspan⟩ := Submodule.FG.exists_span_set_encard_eq_spanFinrank hFG
  obtain ⟨t, rfl⟩ := (Set.finite_of_encard_eq_coe hsc).exists_finset_coe
  have htcard : t.card = Submodule.spanFinrank (IsLocalRing.maximalIdeal F) := by
    rw [Set.encard_coe_eq_coe_finsetCard] at hsc
    exact_mod_cast hsc
  let g : Fin t.card → F := fun i => (t.equivFin.symm i : F)
  have hrange : Set.range g = (t : Set F) := by
    ext x
    constructor
    · rintro ⟨i, rfl⟩
      exact (t.equivFin.symm i).2
    · intro hx
      exact ⟨t.equivFin ⟨x, hx⟩, by simp [g]⟩
  have hgspan : Ideal.span (Set.range g) = IsLocalRing.maximalIdeal F := by
    rw [hrange]; exact hsspan
  choose w hw using fun i => hsurj (g i)
  refine ⟨t.card, w, ?_, ?_⟩
  · apply le_antisymm
    · apply sup_le
      · rw [Ideal.span_le]
        rintro _ ⟨a, rfl⟩
        have hya : y a ∈ 𝔪 := by rw [← hy]; exact Ideal.subset_span ⟨a, rfl⟩
        rw [← hQC] at hya
        exact (IsLocalization.AtPrime.to_map_mem_maximal_iff L Q _).mpr hya
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        have hgi : g i ∈ IsLocalRing.maximalIdeal F := by
          rw [← hgspan]; exact Ideal.subset_span ⟨i, rfl⟩
        show w i ∈ IsLocalRing.maximalIdeal L
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        intro hu
        have := hu.map φ
        rw [hw i] at this
        exact (IsLocalRing.mem_maximalIdeal _).mp hgi this
    · intro x hx
      haveI : IsLocalHom φ := by
        first
          | (rw [hφ]; infer_instance)
          | exact Localization.isLocalHom_localRingHom Q qb _ hQq
      have hφx : φ x ∈ IsLocalRing.maximalIdeal F := by
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        intro hu
        exact (IsLocalRing.mem_maximalIdeal _).mp hx (IsLocalHom.map_nonunit x hu)
      rw [← hgspan] at hφx
      obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.mp hφx
      choose c' hc' using fun i => hsurj (c i)
      set v := ∑ i, c' i * w i with hv
      have hvmem : v ∈ Ideal.span (Set.range w) :=
        Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, rfl⟩))
      have hxv : x - v ∈ RingHom.ker φ := by
        rw [RingHom.mem_ker, map_sub, hv, map_sum]
        simp only [map_mul, hc', hw]
        rw [hc, sub_self]
      have e1 : x = (x - v) + v := by ring
      rw [e1]
      exact Ideal.add_mem _ (Ideal.mem_sup_left (hmapI (hker _ hxv))) (Ideal.mem_sup_right hvmem)
  ·
    haveI : Algebra.HasGoingDown S W := Algebra.HasGoingDown.of_flat
    haveI : Q.LiesOver 𝔪 := Ideal.LiesOver.mk (by rw [Ideal.under_def]; exact hcomap.symm)
    have hgd := Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown (R := S) 𝔪 Q
    have hLdim : ringKrullDim L = (Q.height : WithBot ℕ∞) :=
      IsLocalization.AtPrime.ringKrullDim_eq_height Q L
    have hFdim : ringKrullDim F = (qb.height : WithBot ℕ∞) :=
      IsLocalization.AtPrime.ringKrullDim_eq_height qb F
    have h1 : 𝔪.height = (d : ℕ∞) := by
      have := IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := S)
      rw [← hd, ← WithBot.coe_natCast] at this
      exact WithBot.coe_inj.mp this
    have h2 : qb.height = (t.card : ℕ∞) := by
      have := hFreg.spanFinrank_maximalIdeal
      rw [hFdim, ← htcard, ← WithBot.coe_natCast] at this
      exact (WithBot.coe_inj.mp this).symm
    rw [hLdim, hgd, h1, h2, ← Nat.cast_add, WithBot.coe_natCast]

theorem wcpa_dj_rtsxs_p2m_axis_chart_map : ∀ (K : Type u) [Field K] (n : ℕ) (V : MvPowerSeries (Fin (n + 2)) K) (b : Fin n → ℕ) (l₀ m₀ : Fin n) (j : Fin (3 + 1)) (c c' : Fin (n + 2)), l₀ ≠ m₀ → b l₀ = 1 → b m₀ = 1 → ((j = 0 ∧ c = 0 ∧ c' = 1) ∨ (j = 1 ∧ c = 1 ∧ c' = 0)) → ∃ π : MvPolynomial (Fin 2) (MvPowerSeries (Fin (n + 2)) K) →+* wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) j, Function.Surjective π ∧ (∀ a : MvPowerSeries (Fin (n + 2)) K, π (MvPolynomial.C a) = algebraMap (wcpaDjP2mRing K n V b) (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) j) (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) a)) ∧ π (MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 0 - MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2))) = 0 ∧ π (MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 1 - MvPolynomial.C (MvPowerSeries.X (Fin.addNat m₀ 2))) = 0 ∧ π (MvPolynomial.C (MvPowerSeries.X c') - MvPolynomial.C (MvPowerSeries.X c * V * ∏ l ∈ Finset.univ \ {l₀, m₀}, MvPowerSeries.X (Fin.addNat l 2) ^ b l) * MvPolynomial.X 0 * MvPolynomial.X 1) = 0 ∧ ∀ s : MvPowerSeries (Fin (n + 2)) K, π (MvPolynomial.C s) = 0 → ∃ (e : ℕ) (r : MvPowerSeries (Fin (n + 2)) K), MvPowerSeries.X c ^ e * s = r * (MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l) :=
by
  have GEN : ∀ (A : Type u) [CommRing A] (I : Ideal A) (xc xc' σ τ v N : A)
      (ψ : Fin (3 + 1) → A ⧸ I) (j : Fin (3 + 1)),
      xc * xc' - v * (σ * τ * N) ∈ I →
      ψ j = Ideal.Quotient.mk I xc → ψ 2 = Ideal.Quotient.mk I σ → ψ 3 = Ideal.Quotient.mk I τ →
      (∀ l, ψ l = Ideal.Quotient.mk I xc ∨ ψ l = Ideal.Quotient.mk I xc' ∨
        ψ l = Ideal.Quotient.mk I σ ∨ ψ l = Ideal.Quotient.mk I τ) →
      ∃ π : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ I) ψ j,
        Function.Surjective π ∧
        (∀ a, π (MvPolynomial.C a) =
          algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ψ j) (Ideal.Quotient.mk I a)) ∧
        π (MvPolynomial.C xc * MvPolynomial.X 0 - MvPolynomial.C σ) = 0 ∧
        π (MvPolynomial.C xc * MvPolynomial.X 1 - MvPolynomial.C τ) = 0 ∧
        π (MvPolynomial.C xc' - MvPolynomial.C (xc * v * N) * MvPolynomial.X 0 *
          MvPolynomial.X 1) = 0 ∧
        ∀ s, π (MvPolynomial.C s) = 0 → ∃ e : ℕ, xc ^ e * s ∈ I := by
    intro A _ I xc xc' σ τ v N ψ j hrel hψj hψ2 hψ3 hψ
    let φ : A →+* Localization.Away (ψ j) :=
      (algebraMap (A ⧸ I) (Localization.Away (ψ j))).comp (Ideal.Quotient.mk I)
    let gen : Fin (3 + 1) → Localization.Away (ψ j) := fun l =>
      IsLocalization.mk' (Localization.Away (ψ j)) (ψ l)
        (⟨ψ j, Submonoid.mem_powers _⟩ : Submonoid.powers (ψ j))
    have hgenD : ∀ l, gen l ∈ wcpaDjChartAlg (A ⧸ I) ψ j := fun l =>
      Algebra.subset_adjoin ⟨l, rfl⟩
    have hU : IsUnit (φ xc) := by
      show IsUnit (algebraMap (A ⧸ I) (Localization.Away (ψ j)) (Ideal.Quotient.mk I xc))
      rw [← hψj]
      exact IsLocalization.Away.algebraMap_isUnit (ψ j)
    have hGen : ∀ l, φ xc * gen l = algebraMap (A ⧸ I) (Localization.Away (ψ j)) (ψ l) := by
      intro l
      show algebraMap (A ⧸ I) (Localization.Away (ψ j)) (Ideal.Quotient.mk I xc) * gen l = _
      rw [← hψj]
      exact IsLocalization.mk'_spec' (Localization.Away (ψ j)) (ψ l)
        (⟨ψ j, Submonoid.mem_powers _⟩ : Submonoid.powers (ψ j))
    have Hu : φ xc * gen 2 = φ σ := by rw [hGen, hψ2]; rfl
    have Hw : φ xc * gen 3 = φ τ := by rw [hGen, hψ3]; rfl
    have Rel : φ xc * φ xc' = φ v * (φ σ * φ τ * φ N) := by
      have h0 : φ (xc * xc' - v * (σ * τ * N)) = 0 := by
        show algebraMap (A ⧸ I) (Localization.Away (ψ j)) (Ideal.Quotient.mk I _) = 0
        rw [Ideal.Quotient.eq_zero_iff_mem.mpr hrel, map_zero]
      simp only [map_sub, map_mul] at h0
      exact sub_eq_zero.mp h0
    let π : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ I) ψ j :=
      MvPolynomial.eval₂Hom ((algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ψ j)).comp
        (Ideal.Quotient.mk I)) ![⟨gen 2, hgenD 2⟩, ⟨gen 3, hgenD 3⟩]
    have hg0 : (![gen 2, gen 3] : Fin 2 → Localization.Away (ψ j)) 0 = gen 2 := rfl
    have hg1 : (![gen 2, gen 3] : Fin 2 → Localization.Away (ψ j)) 1 = gen 3 := rfl
    have CF : ∀ q, ((π q : wcpaDjChartAlg (A ⧸ I) ψ j) : Localization.Away (ψ j)) =
        MvPolynomial.eval₂ φ ![gen 2, gen 3] q := by
      intro q
      induction q using MvPolynomial.induction_on with
      | C a =>
        show ((MvPolynomial.eval₂Hom _ _ (MvPolynomial.C a) : wcpaDjChartAlg (A ⧸ I) ψ j) :
          Localization.Away (ψ j)) = _
        rw [MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂_C]
        rfl
      | add p q hp hq =>
        rw [map_add, Subalgebra.coe_add, hp, hq, MvPolynomial.eval₂_add]
      | mul_X p i hp =>
        rw [map_mul, Subalgebra.coe_mul, hp, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X]
        congr 1
        show ((MvPolynomial.eval₂Hom _ _ (MvPolynomial.X i) : wcpaDjChartAlg (A ⧸ I) ψ j) :
          Localization.Away (ψ j)) = _
        rw [MvPolynomial.eval₂Hom_X']
        fin_cases i <;> rfl
    have ZT : ∀ q, π q = 0 ↔ MvPolynomial.eval₂ φ ![gen 2, gen 3] q = 0 := by
      intro q
      constructor
      · intro h
        rw [← CF, h]
        rfl
      · intro h
        apply Subtype.ext
        rw [CF, h]
        rfl
    have Cov : ∀ l, ∃ q, MvPolynomial.eval₂ φ ![gen 2, gen 3] q = gen l := by
      intro l
      rcases hψ l with h | h | h | h
      · refine ⟨1, ?_⟩
        rw [MvPolynomial.eval₂_one]
        apply hU.mul_left_cancel
        rw [hGen, h, mul_one]
        rfl
      · refine ⟨MvPolynomial.C (v * N) * MvPolynomial.X 0 * MvPolynomial.X 1, ?_⟩
        simp only [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C, MvPolynomial.eval₂_X, hg0, hg1]
        apply hU.mul_left_cancel
        have hg : φ xc * gen l = φ xc' := by rw [hGen, h]; rfl
        rw [hg]
        apply hU.mul_left_cancel
        rw [map_mul]
        linear_combination (φ v * φ N * (φ xc * gen 3)) * Hu + (φ v * φ N * φ σ) * Hw - Rel
      · refine ⟨MvPolynomial.X 0, ?_⟩
        rw [MvPolynomial.eval₂_X, hg0]
        apply hU.mul_left_cancel
        rw [Hu, hGen l, h]
        rfl
      · refine ⟨MvPolynomial.X 1, ?_⟩
        rw [MvPolynomial.eval₂_X, hg1]
        apply hU.mul_left_cancel
        rw [Hw, hGen l, h]
        rfl
    have Ind : ∀ y ∈ wcpaDjChartAlg (A ⧸ I) ψ j,
        ∃ q, MvPolynomial.eval₂ φ ![gen 2, gen 3] q = y := by
      intro y hy
      induction hy using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        exact Cov l
      | algebraMap r =>
        obtain ⟨r', rfl⟩ := Ideal.Quotient.mk_surjective r
        exact ⟨MvPolynomial.C r', by rw [MvPolynomial.eval₂_C]; rfl⟩
      | add x y _ _ hx hy =>
        obtain ⟨p, hp⟩ := hx
        obtain ⟨q, hq⟩ := hy
        exact ⟨p + q, by rw [MvPolynomial.eval₂_add, hp, hq]⟩
      | mul x y _ _ hx hy =>
        obtain ⟨p, hp⟩ := hx
        obtain ⟨q, hq⟩ := hy
        exact ⟨p * q, by rw [MvPolynomial.eval₂_mul, hp, hq]⟩
    refine ⟨π, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · intro z
      obtain ⟨q, hq⟩ := Ind z z.2
      exact ⟨q, Subtype.ext ((CF q).trans hq)⟩
    · intro a
      exact MvPolynomial.eval₂Hom_C _ _ a
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg0]
      exact sub_eq_zero.mpr Hu
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg1]
      exact sub_eq_zero.mpr Hw
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg0, hg1]
      apply hU.mul_left_cancel
      rw [mul_zero, map_mul, map_mul]
      linear_combination Rel - (φ v * φ N * (φ xc * gen 3)) * Hu - (φ v * φ N * φ σ) * Hw
    · intro s hs
      have h1 := (ZT _).mp hs
      rw [MvPolynomial.eval₂_C] at h1
      obtain ⟨⟨m, hm⟩, hm0⟩ := (IsLocalization.map_eq_zero_iff (Submonoid.powers (ψ j))
        (Localization.Away (ψ j)) (Ideal.Quotient.mk I s)).mp h1
      obtain ⟨M, rfl⟩ := (Submonoid.mem_powers_iff _ _).mp hm
      refine ⟨M, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
      rw [map_mul, map_pow, ← hψj]
      exact hm0
  intro K _ n V b l₀ m₀ j c c' hlm hbl hbm hjc
  have hprod : (∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l :
      MvPowerSeries (Fin (n + 2)) K) =
      MvPowerSeries.X (Fin.addNat l₀ 2) * MvPowerSeries.X (Fin.addNat m₀ 2) *
        ∏ l ∈ Finset.univ \ {l₀, m₀}, MvPowerSeries.X (Fin.addNat l 2) ^ b l := by
    rw [← Finset.prod_sdiff (Finset.subset_univ ({l₀, m₀} : Finset (Fin n))),
      Finset.prod_pair hlm, hbl, hbm, pow_one, pow_one]
    ring
  have hXX : (MvPowerSeries.X 0 * MvPowerSeries.X 1 : MvPowerSeries (Fin (n + 2)) K) =
      MvPowerSeries.X c * MvPowerSeries.X c' := by
    rcases hjc with ⟨-, h1, h2⟩ | ⟨-, h1, h2⟩
    · rw [h1, h2]
    · rw [h1, h2, mul_comm]
  have hrel : MvPowerSeries.X c * MvPowerSeries.X c' - V *
      (MvPowerSeries.X (Fin.addNat l₀ 2) * MvPowerSeries.X (Fin.addNat m₀ 2) *
        ∏ l ∈ Finset.univ \ {l₀, m₀}, MvPowerSeries.X (Fin.addNat l 2) ^ b l) ∈
      wcpaDjP2mIdeal K n V b := by
    rw [← hXX, ← hprod]
    exact Ideal.mem_span_singleton_self _
  have hψj : wcpaDjP2mPsi K n V b l₀ m₀ j =
      Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X c) := by
    rcases hjc with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ <;> rfl
  have hψ : ∀ l, wcpaDjP2mPsi K n V b l₀ m₀ l =
        Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X c) ∨
      wcpaDjP2mPsi K n V b l₀ m₀ l =
        Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X c') ∨
      wcpaDjP2mPsi K n V b l₀ m₀ l =
        Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X (Fin.addNat l₀ 2)) ∨
      wcpaDjP2mPsi K n V b l₀ m₀ l =
        Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X (Fin.addNat m₀ 2)) := by
    intro l
    rcases hjc with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ <;> fin_cases l <;>
      first
      | exact Or.inl rfl
      | exact Or.inr (Or.inl rfl)
      | exact Or.inr (Or.inr (Or.inl rfl))
      | exact Or.inr (Or.inr (Or.inr rfl))
  obtain ⟨π, h1, h2, h3, h4, h5, h6⟩ := GEN (MvPowerSeries (Fin (n + 2)) K)
    (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X c) (MvPowerSeries.X c')
    (MvPowerSeries.X (Fin.addNat l₀ 2)) (MvPowerSeries.X (Fin.addNat m₀ 2)) V
    (∏ l ∈ Finset.univ \ {l₀, m₀}, MvPowerSeries.X (Fin.addNat l 2) ^ b l)
    (wcpaDjP2mPsi K n V b l₀ m₀) j hrel hψj rfl rfl hψ
  refine ⟨π, h1, h2, h3, h4, h5, fun s hs => ?_⟩
  obtain ⟨e, he⟩ := h6 s hs
  obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp he
  exact ⟨e, r, hr.symm⟩

theorem wcpa_dj_rtsxs_p2m_sat_regular_ty : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (ι κ : Type) [Fintype ι] [Fintype κ] (g : κ → E) (x : E) (z : ι → E) (J : Ideal E), Ideal.span (Set.range g) ⊔ Ideal.span (insert x (Set.range z)) = IsLocalRing.maximalIdeal E → ((Fintype.card ι + 1 + Fintype.card κ : ℕ) : WithBot ℕ∞) ≤ ringKrullDim E → Ideal.span (Set.range g) ≤ J → (∀ y ∈ J, ∃ N : ℕ, x ^ N * y ∈ Ideal.span (Set.range g)) → IsRegularLocalRing (E ⧸ J) :=
by
  intro E _ _ _ ι κ _ _ g x z J hM hdim hIJ hsat
  classical
  have hcardrange : ∀ {α : Type} {β : Type u} [Fintype α] (f : α → β),
      (Set.range f).ncard ≤ Fintype.card α := by
    intro α β _ f
    rw [← Set.image_univ, ← Nat.card_eq_fintype_card, ← Set.ncard_univ]
    exact Set.ncard_image_le (Set.toFinite _)
  have hGI : Submodule.spanFinrank (Ideal.span (Set.range g)) ≤ Fintype.card κ :=
    (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range g)).trans (hcardrange g)
  obtain ⟨I, hI⟩ : ∃ I : Ideal E, I = Ideal.span (Set.range g) := ⟨_, rfl⟩
  rw [← hI] at hM hIJ hsat hGI
  have hIm : I ≤ IsLocalRing.maximalIdeal E := hM ▸ le_sup_left
  have hItop : I ≠ ⊤ := fun h =>
    (IsLocalRing.maximalIdeal.isMaximal E).ne_top (top_le_iff.mp (h ▸ hIm))
  haveI : Nontrivial (E ⧸ I) := Ideal.Quotient.nontrivial_iff.mpr hItop
  haveI : IsLocalRing (E ⧸ I) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  have hMA : IsLocalRing.maximalIdeal (E ⧸ I) =
      Ideal.span (insert (Ideal.Quotient.mk I x) (Set.range (fun i => Ideal.Quotient.mk I (z i)))) := by
    rw [← IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk I)
      Ideal.Quotient.mk_surjective, ← hM, Ideal.map_sup, Ideal.map_quotient_self, bot_sup_eq,
      Ideal.map_span, Set.image_insert_eq, ← Set.range_comp]
    rfl
  have hEMB : Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ I)) ≤ Fintype.card ι + 1 := by
    rw [hMA]
    refine (Submodule.spanFinrank_span_le_ncard_of_finite ((Set.finite_range _).insert _)).trans ?_
    refine (Set.ncard_insert_le _ _).trans ?_
    have := hcardrange (fun i => Ideal.Quotient.mk I (z i))
    omega
  have hjac : I ≤ Ring.jacobson E := by
    rw [IsLocalRing.ringJacobson_eq_maximalIdeal]; exact hIm
  have hDE := ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank I hjac
  have hupper : ringKrullDim (E ⧸ I) ≤ ((Fintype.card ι + 1 : ℕ) : WithBot ℕ∞) :=
    (ringKrullDim_le_spanFinrank_maximalIdeal _).trans (by exact_mod_cast hEMB)
  have hlow : 0 ≤ ringKrullDim (E ⧸ I) := ringKrullDim_nonneg_of_nontrivial
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ringKrullDim (E ⧸ I) = n := by
    generalize ringKrullDim (E ⧸ I) = D at hupper hlow
    induction D using WithBot.recBotCoe with
    | bot => exact absurd hlow (by simp)
    | coe e =>
      induction e using ENat.recTopCoe with
      | top =>
        rw [← WithBot.coe_natCast, WithBot.coe_le_coe, top_le_iff] at hupper
        exact absurd hupper (ENat.natCast_ne_top _)
      | coe n => exact ⟨n, rfl⟩
  have h1 : ((Fintype.card ι + 1 + Fintype.card κ : ℕ) : WithBot ℕ∞) ≤
      ((n + Submodule.spanFinrank I : ℕ) : WithBot ℕ∞) := by
    rw [Nat.cast_add (m := n)]
    rw [hn] at hDE
    exact hdim.trans hDE
  have h2 : Fintype.card ι + 1 + Fintype.card κ ≤ n + Submodule.spanFinrank I := by
    exact_mod_cast h1
  have hm1n : Fintype.card ι + 1 ≤ n := by omega
  have hx0 : Ideal.Quotient.mk I x ≠ 0 := by
    intro h0
    have hle : Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ I)) ≤ Fintype.card ι := by
      rw [hMA, h0, Ideal.span_insert_zero]
      exact (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range _)).trans
        (hcardrange _)
    have h3 := ringKrullDim_le_spanFinrank_maximalIdeal (E ⧸ I)
    rw [hn] at h3
    have h4 : n ≤ Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ I)) := by
      exact_mod_cast h3
    omega
  have hreg : IsRegularLocalRing (E ⧸ I) :=
    IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _
      (by rw [hn]; exact_mod_cast (hEMB.trans hm1n))
  haveI : IsDomain (E ⧸ I) :=
    wc_rl_isDomain wc_rl_quot_embdim (wc_rl_quot_regular wc_rl_quot_embdim) (E ⧸ I) hreg
  have hJI : J = I := by
    refine le_antisymm ?_ hIJ
    intro y hy
    obtain ⟨N, hN⟩ := hsat y hy
    have h5 : Ideal.Quotient.mk I x ^ N * Ideal.Quotient.mk I y = 0 := by
      rw [← map_pow, ← map_mul, Ideal.Quotient.eq_zero_iff_mem]; exact hN
    rcases mul_eq_zero.mp h5 with h | h
    · exact absurd h (pow_ne_zero _ hx0)
    · exact Ideal.Quotient.eq_zero_iff_mem.mp h
  exact @IsRegularLocalRing.of_ringEquiv _ _ hreg _ _ (Ideal.quotEquivOfEq hJI.symm)

theorem wcpa_dj_rtsxs_p2m_axis_regular : ∀ (K : Type u) [Field K] (n : ℕ) (V : MvPowerSeries (Fin (n + 2)) K) (b : Fin n → ℕ) (l₀ m₀ : Fin n) (j : Fin (3 + 1)) (Q : Ideal (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) j)) [Q.IsPrime], IsUnit V → l₀ ≠ m₀ → b l₀ = 1 → b m₀ = 1 → (j = 0 ∨ j = 1) → (∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b) (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) j) (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q) → IsRegularLocalRing (Localization.AtPrime Q) :=
by
  intro K _ n V b l₀ m₀ j Q _ _hV hlm hbl hbm hj hcl

  obtain ⟨c, c', hjc⟩ : ∃ c c' : Fin (n + 2),
      (j = 0 ∧ c = 0 ∧ c' = 1) ∨ (j = 1 ∧ c = 1 ∧ c' = 0) := by
    rcases hj with h | h
    · exact ⟨0, 1, Or.inl ⟨h, rfl, rfl⟩⟩
    · exact ⟨1, 0, Or.inr ⟨h, rfl, rfl⟩⟩
  have hcc : (c = 0 ∧ c' = 1) ∨ (c = 1 ∧ c' = 0) := by
    rcases hjc with ⟨-, h1, h2⟩ | ⟨-, h1, h2⟩
    · exact Or.inl ⟨h1, h2⟩
    · exact Or.inr ⟨h1, h2⟩
  have hF : ∀ a : Fin (n + 2), a = 0 ∨ a = 1 ∨ ∃ l : Fin n, a = Fin.addNat l 2 := by
    intro a
    rcases a with ⟨a, ha⟩
    rcases a with _ | _ | a
    · exact Or.inl (Fin.ext (by simp))
    · exact Or.inr (Or.inl (Fin.ext (by simp)))
    · exact Or.inr (Or.inr ⟨⟨a, by omega⟩, Fin.ext (by simp)⟩)
  have hcases : ∀ a : Fin (n + 2), a = c ∨ a = c' ∨ ∃ l : Fin n, a = Fin.addNat l 2 := by
    intro a
    rcases hF a with h | h | h
    · rcases hcc with ⟨h1, h2⟩ | ⟨h1, h2⟩
      · exact Or.inl (h.trans h1.symm)
      · exact Or.inr (Or.inl (h.trans h2.symm))
    · rcases hcc with ⟨h1, h2⟩ | ⟨h1, h2⟩
      · exact Or.inr (Or.inl (h.trans h2.symm))
      · exact Or.inl (h.trans h1.symm)
    · exact Or.inr (Or.inr h)
  have hXX : (MvPowerSeries.X 0 * MvPowerSeries.X 1 : MvPowerSeries (Fin (n + 2)) K) =
      MvPowerSeries.X c * MvPowerSeries.X c' := by
    rcases hcc with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · rw [h1, h2]
    · rw [h1, h2, mul_comm]
  have hprod : (∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l : MvPowerSeries (Fin (n + 2)) K) =
      MvPowerSeries.X (Fin.addNat l₀ 2) * MvPowerSeries.X (Fin.addNat m₀ 2) *
        ∏ l ∈ Finset.univ \ {l₀, m₀}, MvPowerSeries.X (Fin.addNat l 2) ^ b l := by
    rw [← Finset.prod_sdiff (Finset.subset_univ ({l₀, m₀} : Finset (Fin n))), Finset.prod_pair hlm,
      hbl, hbm, pow_one, pow_one]
    ring
  have hOcard : (Finset.univ \ {l₀, m₀} : Finset (Fin n)).card + 2 = n := by
    have h1 := Finset.card_sdiff_of_subset (Finset.subset_univ ({l₀, m₀} : Finset (Fin n)))
    have h2 : ({l₀, m₀} : Finset (Fin n)).card = 2 := Finset.card_pair hlm
    have h3 : ({l₀, m₀} : Finset (Fin n)).card ≤ Fintype.card (Fin n) := Finset.card_le_univ _
    rw [Finset.card_univ, Fintype.card_fin] at h1
    rw [Fintype.card_fin] at h3
    omega

  obtain ⟨π, hsurj, hC, hπ₁, hπ₂, hπ₃, hker⟩ :=
    wcpa_dj_rtsxs_p2m_axis_chart_map K n V b l₀ m₀ j c c' hlm hbl hbm hjc
  obtain ⟨-, hdimS, hspanS⟩ := wcpa_dj_rtsxs_p2m_mvps_params K (n + 2)
  set N : MvPowerSeries (Fin (n + 2)) K :=
    ∏ l ∈ Finset.univ \ {l₀, m₀}, MvPowerSeries.X (Fin.addNat l 2) ^ b l with hN
  set h₁ : MvPolynomial (Fin 2) (MvPowerSeries (Fin (n + 2)) K) :=
    MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 0 -
      MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) with hh₁
  set h₂ : MvPolynomial (Fin 2) (MvPowerSeries (Fin (n + 2)) K) :=
    MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 1 -
      MvPolynomial.C (MvPowerSeries.X (Fin.addNat m₀ 2)) with hh₂
  set h₃ : MvPolynomial (Fin 2) (MvPowerSeries (Fin (n + 2)) K) :=
    MvPolynomial.C (MvPowerSeries.X c') -
      MvPolynomial.C (MvPowerSeries.X c * V * N) * MvPolynomial.X 0 * MvPolynomial.X 1 with hh₃
  set H : Ideal (MvPolynomial (Fin 2) (MvPowerSeries (Fin (n + 2)) K)) :=
    Ideal.span {h₁, h₂, h₃} with hH
  have h₁H : h₁ ∈ H := Ideal.subset_span (by simp)
  have h₂H : h₂ ∈ H := Ideal.subset_span (by simp)
  have h₃H : h₃ ∈ H := Ideal.subset_span (by simp)
  have hHker : H ≤ RingHom.ker π := by
    rw [hH, Ideal.span_le]
    intro v hv
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hv
    rcases hv with rfl | rfl | rfl
    · exact RingHom.mem_ker.mpr hπ₁
    · exact RingHom.mem_ker.mpr hπ₂
    · exact RingHom.mem_ker.mpr hπ₃

  have hGH : MvPolynomial.C (MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l) ∈ H := by
    have e : MvPolynomial.C (MvPowerSeries.X 0 * MvPowerSeries.X 1 -
        V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l) =
        MvPolynomial.C (MvPowerSeries.X c) * h₃ + MvPolynomial.C (V * N) *
          (MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 0 * h₂ +
            MvPolynomial.C (MvPowerSeries.X (Fin.addNat m₀ 2)) * h₁) := by
      rw [hprod, hXX, hh₁, hh₂, hh₃]
      simp only [map_sub, map_mul]
      ring
    rw [e]
    exact H.add_mem (H.mul_mem_left _ h₃H)
      (H.mul_mem_left _ (H.add_mem (H.mul_mem_left _ h₂H) (H.mul_mem_left _ h₁H)))

  have hred : ∀ w : MvPolynomial (Fin 2) (MvPowerSeries (Fin (n + 2)) K),
      ∃ (N₀ : ℕ) (s : MvPowerSeries (Fin (n + 2)) K),
        MvPolynomial.C (MvPowerSeries.X c) ^ N₀ * w - MvPolynomial.C s ∈ H := by
    intro w
    induction w using MvPolynomial.induction_on with
    | C a =>
      exact ⟨0, a, by simp⟩
    | add p q hp hq =>
      obtain ⟨N₁, s₁, hs₁⟩ := hp
      obtain ⟨N₂, s₂, hs₂⟩ := hq
      refine ⟨N₁ + N₂, MvPowerSeries.X c ^ N₂ * s₁ + MvPowerSeries.X c ^ N₁ * s₂, ?_⟩
      have e : MvPolynomial.C (MvPowerSeries.X c) ^ (N₁ + N₂) * (p + q) -
          MvPolynomial.C (MvPowerSeries.X c ^ N₂ * s₁ + MvPowerSeries.X c ^ N₁ * s₂) =
          MvPolynomial.C (MvPowerSeries.X c) ^ N₂ *
              (MvPolynomial.C (MvPowerSeries.X c) ^ N₁ * p - MvPolynomial.C s₁) +
            MvPolynomial.C (MvPowerSeries.X c) ^ N₁ *
              (MvPolynomial.C (MvPowerSeries.X c) ^ N₂ * q - MvPolynomial.C s₂) := by
        simp only [map_add, map_mul, map_pow]
        ring
      rw [e]
      exact H.add_mem (H.mul_mem_left _ hs₁) (H.mul_mem_left _ hs₂)
    | mul_X p i hp =>
      obtain ⟨N₀, s, hs⟩ := hp
      obtain ⟨si, hsi⟩ : ∃ si : MvPowerSeries (Fin (n + 2)) K,
          MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X i - MvPolynomial.C si ∈ H := by
        have : i = 0 ∨ i = 1 := by fin_cases i <;> simp
        rcases this with rfl | rfl
        · exact ⟨_, h₁H⟩
        · exact ⟨_, h₂H⟩
      refine ⟨N₀ + 1, s * si, ?_⟩
      have e : MvPolynomial.C (MvPowerSeries.X c) ^ (N₀ + 1) * (p * MvPolynomial.X i) -
          MvPolynomial.C (s * si) =
          (MvPolynomial.C (MvPowerSeries.X c) ^ N₀ * p - MvPolynomial.C s) *
              (MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X i) +
            MvPolynomial.C s *
              (MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X i - MvPolynomial.C si) := by
        simp only [map_mul]
        ring
      rw [e]
      exact H.add_mem (H.mul_mem_right _ hs) (H.mul_mem_left _ hsi)

  have hsat : ∀ w ∈ RingHom.ker π, ∃ N' : ℕ, MvPolynomial.C (MvPowerSeries.X c) ^ N' * w ∈ H := by
    intro w hw
    obtain ⟨N₀, s, hs⟩ := hred w
    have hπs : π (MvPolynomial.C s) = 0 := by
      have h1 := hHker hs
      rw [RingHom.mem_ker, map_sub, map_mul, RingHom.mem_ker.mp hw, mul_zero, zero_sub,
        neg_eq_zero] at h1
      exact h1
    obtain ⟨e, r, her⟩ := hker s hπs
    refine ⟨N₀ + e, ?_⟩
    have hCe := congrArg (MvPolynomial.C (σ := Fin 2)) her
    simp only [map_mul, map_pow] at hCe
    have e' : MvPolynomial.C (MvPowerSeries.X c) ^ (N₀ + e) * w =
        MvPolynomial.C (MvPowerSeries.X c) ^ e *
            (MvPolynomial.C (MvPowerSeries.X c) ^ N₀ * w - MvPolynomial.C s) +
          MvPolynomial.C r * MvPolynomial.C (MvPowerSeries.X 0 * MvPowerSeries.X 1 -
            V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l) := by
      linear_combination hCe
    rw [e']
    exact H.add_mem (H.mul_mem_left _ hs) (H.mul_mem_left _ hGH)

  have key : ∀ (S : Type u) [CommRing S] [IsLocalRing S] [IsNoetherianRing S] (D : Type u) [CommRing D]
      (π : MvPolynomial (Fin 2) S →+* D) (Q : Ideal D) [Q.IsPrime] (d : ℕ) (y : Fin d → S)
      (g : Fin 3 → MvPolynomial (Fin 2) S) (x : S) (ι : Type) [Fintype ι] (z : ι → MvPolynomial (Fin 2) S),
      Function.Surjective π → (d : WithBot ℕ∞) = ringKrullDim S →
      Ideal.span (Set.range y) = IsLocalRing.maximalIdeal S →
      (Q.comap π).comap MvPolynomial.C = IsLocalRing.maximalIdeal S →
      (∀ i, g i ∈ RingHom.ker π) → MvPolynomial.C x ∈ Q.comap π → (∀ i, z i ∈ Q.comap π) →
      (∀ a, MvPolynomial.C (y a) ∈ Ideal.span (Set.range g) ⊔
        Ideal.span (insert (MvPolynomial.C x) (Set.range z))) →
      Fintype.card ι + 4 ≤ d →
      (∀ w ∈ RingHom.ker π, ∃ N : ℕ, MvPolynomial.C x ^ N * w ∈ Ideal.span (Set.range g)) →
      IsRegularLocalRing (Localization.AtPrime Q) := by
    intro S _ _ _ D _ π Q _ d y g x ι _ z hsurj hd hy hQC hg hx hz hgen hcard hsat
    set Qt := Q.comap π with hQt
    obtain ⟨m', w, hM, hDim⟩ := wcpa_dj_rtsxs_p2m_fibre_count S d 2 y Qt hd hy hQC
    set alg := algebraMap (MvPolynomial (Fin 2) S) (Localization.AtPrime Qt) with halg
    have hmem : ∀ v, v ∈ Qt → alg v ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Qt) :=
      fun v hv => (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Qt) Qt v).mpr hv
    have hkerQt : ∀ v ∈ RingHom.ker π, v ∈ Qt := by
      intro v hv
      rw [hQt, Ideal.mem_comap, RingHom.mem_ker.mp hv]
      exact Q.zero_mem
    have hgspan : Ideal.span (Set.range g) ≤
        (Ideal.span (Set.range (fun i => alg (g i)))).comap alg := by
      rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      exact Ideal.subset_span ⟨i, rfl⟩
    have hreg : IsRegularLocalRing (Localization.AtPrime Qt ⧸ Ideal.map alg (RingHom.ker π)) := by
      refine wcpa_dj_rtsxs_p2m_sat_regular_ty (Localization.AtPrime Qt) (ι ⊕ Fin m') (Fin 3)
        (fun i => alg (g i)) (alg (MvPolynomial.C x)) (Sum.elim (fun o => alg (z o)) w)
        (Ideal.map alg (RingHom.ker π)) ?_ ?_ ?_ ?_
      · apply le_antisymm
        · apply sup_le
          · rw [Ideal.span_le]
            rintro _ ⟨i, rfl⟩
            exact hmem _ (hkerQt _ (hg i))
          · rw [Ideal.span_le, Set.insert_subset_iff]
            refine ⟨hmem _ hx, ?_⟩
            rintro _ ⟨i, rfl⟩
            rcases i with o | a
            · exact hmem _ (hz o)
            · rw [← hM]
              exact Ideal.mem_sup_right (Ideal.subset_span ⟨a, rfl⟩)
        · have hcomap : Ideal.span (Set.range g) ⊔ Ideal.span (insert (MvPolynomial.C x) (Set.range z)) ≤
              (Ideal.span (Set.range (fun i => alg (g i))) ⊔
                Ideal.span (insert (alg (MvPolynomial.C x))
                  (Set.range (Sum.elim (fun o => alg (z o)) w)))).comap alg := by
            apply sup_le
            · exact hgspan.trans (Ideal.comap_mono le_sup_left)
            · rw [Ideal.span_le, Set.insert_subset_iff]
              refine ⟨Ideal.mem_sup_right (Ideal.subset_span (Set.mem_insert _ _)), ?_⟩
              rintro _ ⟨o, rfl⟩
              exact Ideal.mem_sup_right (Ideal.subset_span (Set.mem_insert_of_mem _ ⟨Sum.inl o, rfl⟩))
          rw [← hM]
          apply sup_le
          · rw [Ideal.span_le]
            rintro _ ⟨a, rfl⟩
            exact hcomap (hgen a)
          · rw [Ideal.span_le]
            rintro _ ⟨a, rfl⟩
            exact Ideal.mem_sup_right (Ideal.subset_span (Set.mem_insert_of_mem _ ⟨Sum.inr a, rfl⟩))
      · have hc : Fintype.card (ι ⊕ Fin m') + 1 + Fintype.card (Fin 3) ≤ d + m' := by
          rw [Fintype.card_sum, Fintype.card_fin, Fintype.card_fin]
          omega
        exact le_trans (by exact_mod_cast hc) hDim
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        exact Ideal.mem_map_of_mem _ (hg i)
      · intro yy hy
        obtain ⟨⟨v, ⟨t, ht⟩⟩, hyt⟩ :=
          (IsLocalization.mem_map_algebraMap_iff Qt.primeCompl (Localization.AtPrime Qt)).mp hy
        obtain ⟨v, hv⟩ := v
        have hyt' : yy * alg t = alg v := hyt
        obtain ⟨N', hN'⟩ := hsat v hv
        refine ⟨N', ?_⟩
        have h1 := Ideal.mem_comap.mp (hgspan hN')
        rw [map_mul, map_pow, ← hyt', ← mul_assoc] at h1
        exact (Ideal.mul_unit_mem_iff_mem _ (IsLocalization.map_units _ (⟨t, ht⟩ : Qt.primeCompl))).mp h1
    obtain ⟨Θ⟩ := wcpa_dj_rss_quot_localization (MvPolynomial (Fin 2) S) D π hsurj Q
    exact @IsRegularLocalRing.of_ringEquiv _ _ hreg _ _ Θ

  have hQtC : ∀ k : Fin (n + 2), MvPolynomial.C (MvPowerSeries.X k) ∈ Q.comap π := by
    intro k
    rw [Ideal.mem_comap, hC]
    exact hcl k
  have hQtcomap : (Q.comap π).comap MvPolynomial.C =
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin (n + 2)) K) := by
    have hle : IsLocalRing.maximalIdeal (MvPowerSeries (Fin (n + 2)) K) ≤
        (Q.comap π).comap MvPolynomial.C := by
      rw [← hspanS, Ideal.span_le]
      rintro _ ⟨k, rfl⟩
      exact Ideal.mem_comap.mpr (hQtC k)
    exact ((IsLocalRing.maximalIdeal.isMaximal _).eq_of_le
      (Ideal.IsPrime.ne_top inferInstance) hle).symm
  have hvecH : ∀ i : Fin 3, (![h₁, h₂, h₃] : Fin 3 → _) i ∈ RingHom.ker π := by
    intro i
    fin_cases i
    · exact hHker h₁H
    · exact hHker h₂H
    · exact hHker h₃H
  have hspanH : H = Ideal.span (Set.range (![h₁, h₂, h₃] : Fin 3 → _)) := by
    rw [hH]
    congr 1
    simp only [Matrix.range_cons, Matrix.range_empty, Set.union_empty, Set.singleton_union]
  refine key (MvPowerSeries (Fin (n + 2)) K) _ π Q (n + 2) MvPowerSeries.X ![h₁, h₂, h₃]
    (MvPowerSeries.X c) {o // o ∈ (Finset.univ \ {l₀, m₀} : Finset (Fin n))}
    (fun o => MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2)))
    hsurj hdimS hspanS hQtcomap hvecH (hQtC c) (fun o => hQtC _) ?_ ?_ ?_
  ·
    rw [← hspanH]
    have hgM : ∀ v ∈ H, v ∈ H ⊔ Ideal.span (insert (MvPolynomial.C (MvPowerSeries.X c))
        (Set.range (fun o : {o // o ∈ (Finset.univ \ {l₀, m₀} : Finset (Fin n))} =>
          MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2))))) :=
      fun v hv => Ideal.mem_sup_left hv
    have hxM : MvPolynomial.C (MvPowerSeries.X c) ∈ H ⊔ Ideal.span (insert (MvPolynomial.C (MvPowerSeries.X c))
        (Set.range (fun o : {o // o ∈ (Finset.univ \ {l₀, m₀} : Finset (Fin n))} =>
          MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2))))) :=
      Ideal.mem_sup_right (Ideal.subset_span (Set.mem_insert _ _))
    intro a
    rcases hcases a with rfl | rfl | ⟨l, rfl⟩
    · exact hxM
    · have e : MvPolynomial.C (MvPowerSeries.X a) = h₃ + MvPolynomial.C (MvPowerSeries.X c) *
          (MvPolynomial.C (V * N) * MvPolynomial.X 0 * MvPolynomial.X 1) := by
        rw [hh₃]
        simp only [map_mul]
        ring
      rw [e]
      exact Ideal.add_mem _ (hgM _ h₃H) (Ideal.mul_mem_right _ _ hxM)
    · by_cases hl0 : l = l₀
      · have e : MvPolynomial.C (MvPowerSeries.X (Fin.addNat l 2)) =
            MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 0 - h₁ := by
          rw [hh₁, hl0]
          ring
        rw [e]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hxM) (hgM _ h₁H)
      · by_cases hl1 : l = m₀
        · have e : MvPolynomial.C (MvPowerSeries.X (Fin.addNat l 2)) =
              MvPolynomial.C (MvPowerSeries.X c) * MvPolynomial.X 1 - h₂ := by
            rw [hh₂, hl1]
            ring
          rw [e]
          exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hxM) (hgM _ h₂H)
        · have hlO : l ∈ (Finset.univ \ {l₀, m₀} : Finset (Fin n)) := by
            simp [hl0, hl1]
          exact Ideal.mem_sup_right (Ideal.subset_span (Set.mem_insert_of_mem _ ⟨⟨l, hlO⟩, rfl⟩))
  · rw [Fintype.card_coe]
    omega
  · rw [← hspanH]
    exact hsat

theorem wcpa_dj_rtsxs_p2m_wt_param_facts : ∀ (E : Type u) [CommRing E] [IsRegularLocalRing E] (ι : Type) [Fintype ι] (z : ι → E), ((Fintype.card ι : ℕ) : WithBot ℕ∞) = ringKrullDim E → Ideal.span (Set.range z) = IsLocalRing.maximalIdeal E → ∀ S : Finset ι, (Ideal.span (z '' (S : Set ι))).IsPrime ∧ (S.card : ℕ∞) ≤ (Ideal.span (z '' (S : Set ι))).height ∧ ∀ a : ι, a ∉ S → z a ∉ Ideal.span (z '' (S : Set ι)) :=
by
  intro E _ _ ι _ z hdim hspan
  classical
  set σ := Fintype.equivFin ι with hσ
  set t : Fin (Fintype.card ι) → E := fun j => z (σ.symm j) with htdef
  have ht : Ideal.span (Set.range t) = IsLocalRing.maximalIdeal E := by
    have hr : Set.range t = Set.range z := EquivLike.range_comp z σ.symm
    rw [hr]; exact hspan
  have key : ∀ S : Finset ι, (Ideal.span (z '' (S : Set ι))).IsPrime ∧
      (S.card : ℕ∞) ≤ (Ideal.span (z '' (S : Set ι))).height := by
    intro S
    have hTS : t '' ((S.map σ.toEmbedding : Finset (Fin (Fintype.card ι))) :
        Set (Fin (Fintype.card ι))) = z '' (S : Set ι) := by
      rw [Finset.coe_map, Equiv.coe_toEmbedding, Set.image_image]
      simp [htdef]
    obtain ⟨hpr, hht⟩ :=
      wcpa_dj_rtsxs_d_param_prime E (Fintype.card ι) t hdim ht (S.map σ.toEmbedding)
    rw [hTS] at hpr hht
    rw [Finset.card_map] at hht
    exact ⟨hpr, hht⟩
  intro S
  refine ⟨(key S).1, (key S).2, ?_⟩
  intro a ha hmem
  have heq : Ideal.span (z '' ((insert a S : Finset ι) : Set ι)) =
      Ideal.span (z '' (S : Set ι)) := by
    rw [Finset.coe_insert, Set.image_insert_eq, Ideal.span_insert]
    exact sup_eq_right.mpr ((Ideal.span_singleton_le_iff_mem _).mpr hmem)
  have h1 := (key (insert a S)).2
  rw [heq, Finset.card_insert_of_notMem ha] at h1
  have hne := (key S).1.ne_top
  have h3 := Ideal.height_le_spanFinrank (Ideal.span (z '' (S : Set ι))) hne
  have h4 : Submodule.spanFinrank (Ideal.span (z '' (S : Set ι))) ≤ S.card := by
    have h0 : Submodule.spanFinrank (Submodule.span E (z '' (S : Set ι))) ≤
        (z '' (S : Set ι)).ncard :=
      Submodule.spanFinrank_span_le_ncard_of_finite ((Finset.finite_toSet S).image z)
    calc _ ≤ (z '' (S : Set ι)).ncard := h0
      _ ≤ (S : Set ι).ncard := Set.ncard_image_le (Finset.finite_toSet S)
      _ = S.card := Set.ncard_coe_finset S
  have h5 : ((S.card + 1 : ℕ) : ℕ∞) ≤
      (Submodule.spanFinrank (Ideal.span (z '' (S : Set ι))) : ℕ∞) := by
    exact_mod_cast h1.trans h3
  have h6 : S.card + 1 ≤ Submodule.spanFinrank (Ideal.span (z '' (S : Set ι))) := by
    exact_mod_cast h5
  omega

theorem wcpa_dj_rtsxs_p2m_sigma_presentation : ∀ (K : Type u) [Field K] (n : ℕ) (V : MvPowerSeries (Fin (n + 2)) K) (b : Fin n → ℕ) (l₀ m₀ : Fin n), l₀ ≠ m₀ → b l₀ = 1 → b m₀ = 1 → ∃ θ : (MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K) ⧸ Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) ≃+* wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2, (∀ a : MvPowerSeries (Fin (n + 2)) K, θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.C a)) = algebraMap (wcpaDjP2mRing K n V b) (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2) (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) a)) ∧ θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.X 0)) = wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2 0 ∧ θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.X 1)) = wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2 1 ∧ θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.X 2)) = wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2 3 :=
by
  intro K _ n V b l₀ m₀ hlm hbl hbm

  have SWAP : ∀ (A : Type u) [CommRing A] (J : Ideal A) (t g : A),
      (∀ y : A, t * y ∈ J → y ∈ J) →
      (∀ y : A, g * y ∈ J ⊔ Ideal.span {t} → y ∈ J ⊔ Ideal.span {t}) →
      ∀ y : A, t * y ∈ J ⊔ Ideal.span {g} → y ∈ J ⊔ Ideal.span {g} := by
    intro A _ J t g ht hg y hy
    obtain ⟨j, hj, z, hz, hsum⟩ := Submodule.mem_sup.mp hy
    obtain ⟨h, rfl⟩ := Ideal.mem_span_singleton'.mp hz
    have hgh : g * h ∈ J ⊔ Ideal.span {t} := by
      have e : g * h = -j + t * y := by linear_combination hsum
      rw [e]
      exact Ideal.add_mem _ (Ideal.mem_sup_left (J.neg_mem hj))
        (Ideal.mem_sup_right (Ideal.mul_mem_right y _ (Ideal.mem_span_singleton_self t)))
    obtain ⟨j', hj', z', hz', hs'⟩ := Submodule.mem_sup.mp (hg h hgh)
    obtain ⟨k, rfl⟩ := Ideal.mem_span_singleton'.mp hz'
    have e1 : t * (y - k * g) = j + g * j' := by linear_combination -hsum - g * hs'
    have e2 : y - k * g ∈ J := ht _ (by rw [e1]; exact J.add_mem hj (J.mul_mem_left g hj'))
    have e3 : y = (y - k * g) + k * g := by ring
    rw [e3]
    exact Ideal.add_mem _ (Ideal.mem_sup_left e2)
      (Ideal.mem_sup_right (Ideal.mul_mem_left _ k (Ideal.mem_span_singleton_self g)))

  have NZP : ∀ (R : Type u) [CommRing R] (𝔞 : Ideal R) [𝔞.IsPrime] (g y : MvPolynomial (Fin 3) R),
      MvPolynomial.map (Ideal.Quotient.mk 𝔞) g ≠ 0 → g * y ∈ Ideal.map MvPolynomial.C 𝔞 →
      y ∈ Ideal.map MvPolynomial.C 𝔞 := by
    intro R _ 𝔞 _ g y hg hy
    have hker : RingHom.ker (MvPolynomial.map (Ideal.Quotient.mk 𝔞) :
        MvPolynomial (Fin 3) R →+* MvPolynomial (Fin 3) (R ⧸ 𝔞)) = Ideal.map MvPolynomial.C 𝔞 := by
      rw [MvPolynomial.ker_map, Ideal.mk_ker]
    rw [← hker, RingHom.mem_ker, map_mul] at hy
    rw [← hker, RingHom.mem_ker]
    exact (mul_eq_zero.mp hy).resolve_left hg

  have RED : ∀ (A : Type u) [CommRing A] (x : A) (s : Fin 3 → A) (H : Ideal (MvPolynomial (Fin 3) A)),
      (∀ i, MvPolynomial.C x * MvPolynomial.X i - MvPolynomial.C (s i) ∈ H) →
      ∀ w : MvPolynomial (Fin 3) A, ∃ (N : ℕ) (a : A), MvPolynomial.C x ^ N * w - MvPolynomial.C a ∈ H := by
    intro A _ x s H hs w
    induction w using MvPolynomial.induction_on with
    | C a => exact ⟨0, a, by rw [pow_zero, one_mul, sub_self]; exact H.zero_mem⟩
    | add p q hp hq =>
      obtain ⟨N₁, a₁, h₁⟩ := hp
      obtain ⟨N₂, a₂, h₂⟩ := hq
      refine ⟨N₁ + N₂, x ^ N₂ * a₁ + x ^ N₁ * a₂, ?_⟩
      have e : MvPolynomial.C x ^ (N₁ + N₂) * (p + q) - MvPolynomial.C (x ^ N₂ * a₁ + x ^ N₁ * a₂) =
          MvPolynomial.C x ^ N₂ * (MvPolynomial.C x ^ N₁ * p - MvPolynomial.C a₁) +
          MvPolynomial.C x ^ N₁ * (MvPolynomial.C x ^ N₂ * q - MvPolynomial.C a₂) := by
        simp only [map_add, map_mul, map_pow]; ring
      rw [e]
      exact H.add_mem (H.mul_mem_left _ h₁) (H.mul_mem_left _ h₂)
    | mul_X p i hp =>
      obtain ⟨N, a, h⟩ := hp
      refine ⟨N + 1, a * s i, ?_⟩
      have e : MvPolynomial.C x ^ (N + 1) * (p * MvPolynomial.X i) - MvPolynomial.C (a * s i) =
          (MvPolynomial.C x ^ N * p - MvPolynomial.C a) * (MvPolynomial.C x * MvPolynomial.X i) +
          MvPolynomial.C a * (MvPolynomial.C x * MvPolynomial.X i - MvPolynomial.C (s i)) := by
        rw [map_mul]; ring
      rw [e]
      exact H.add_mem (H.mul_mem_right _ h) (H.mul_mem_left _ (hs i))

  have CHAIN : ∀ (S : Type u) [CommRing S] (s a₀ a₁ a₂ c : S), (⊥ : Ideal S).IsPrime →
      (Ideal.span {s}).IsPrime → (Ideal.span {a₀, s}).IsPrime → (Ideal.span {a₁, a₀, s}).IsPrime →
      (Ideal.span {a₂, a₁, a₀, s}).IsPrime → s ≠ 0 → a₀ ∉ Ideal.span {s} →
      a₁ ∉ Ideal.span {a₀, s} → a₂ ∉ Ideal.span {a₁, a₀, s} →
      ∀ y : MvPolynomial (Fin 3) S, MvPolynomial.C s * y ∈ Ideal.span (Set.range
        (![MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C a₀,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C a₁,
          MvPolynomial.C s * MvPolynomial.X 2 - MvPolynomial.C a₂,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2] :
            Fin (3 + 1) → MvPolynomial (Fin 3) S)) →
      y ∈ Ideal.span (Set.range
        (![MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C a₀,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C a₁,
          MvPolynomial.C s * MvPolynomial.X 2 - MvPolynomial.C a₂,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2] :
            Fin (3 + 1) → MvPolynomial (Fin 3) S)) := by
    intro S _ s a₀ a₁ a₂ c hP0 hP1 hP2 hP3 hP4 hs0 ha₀ ha₁ ha₂
    have NV : ∀ (𝔞 : Ideal S) (u v : S) (i : Fin 3), u ∈ 𝔞 → v ∉ 𝔞 →
        MvPolynomial.map (Ideal.Quotient.mk 𝔞)
          (MvPolynomial.C u * MvPolynomial.X i - MvPolynomial.C v) ≠ 0 := by
      intro 𝔞 u v i hu hv h
      apply hv
      rw [map_sub, map_mul, MvPolynomial.map_C, MvPolynomial.map_C, MvPolynomial.map_X,
        Ideal.Quotient.eq_zero_iff_mem.mpr hu, map_zero, zero_mul, zero_sub, neg_eq_zero,
        MvPolynomial.C_eq_zero, Ideal.Quotient.eq_zero_iff_mem] at h
      exact h
    have STEP : ∀ (J : Ideal (MvPolynomial (Fin 3) S)) (𝔞 : Ideal S) (h : MvPolynomial (Fin 3) S),
        𝔞.IsPrime → J ⊔ Ideal.span {MvPolynomial.C s} = Ideal.map MvPolynomial.C 𝔞 →
        (∀ y, MvPolynomial.C s * y ∈ J → y ∈ J) →
        MvPolynomial.map (Ideal.Quotient.mk 𝔞) h ≠ 0 →
        ∀ y, MvPolynomial.C s * y ∈ J ⊔ Ideal.span {h} → y ∈ J ⊔ Ideal.span {h} := by
      intro J 𝔞 h h𝔞 hJ ht' hne
      have := h𝔞
      exact SWAP _ J _ h ht' (fun y hy => by rw [hJ] at hy ⊢; exact NZP S 𝔞 h y hne hy)
    have EXT : ∀ (J : Ideal (MvPolynomial (Fin 3) S)) (T : Set S) (a : S) (i : Fin 3),
        J ⊔ Ideal.span {MvPolynomial.C s} = Ideal.map MvPolynomial.C (Ideal.span T) →
        (J ⊔ Ideal.span {MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C a}) ⊔
          Ideal.span {MvPolynomial.C s} = Ideal.map MvPolynomial.C (Ideal.span (insert a T)) := by
      intro J T a i hJ
      rw [Ideal.span_insert, Ideal.map_sup, ← hJ, Ideal.map_span, Set.image_singleton]
      apply le_antisymm
      · refine sup_le (sup_le ?_ ?_) ?_
        · exact le_sup_of_le_right le_sup_left
        · rw [Ideal.span_singleton_le_iff_mem]
          exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _
            (Ideal.mem_sup_right (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))))
            (Ideal.mem_sup_left (Ideal.mem_span_singleton_self _))
        · exact le_sup_of_le_right le_sup_right
      · refine sup_le ?_ (sup_le ?_ ?_)
        · rw [Ideal.span_singleton_le_iff_mem]
          have hm := Ideal.sub_mem _ (Ideal.mul_mem_right (MvPolynomial.X i) _
            (Ideal.mem_sup_right (Ideal.mem_span_singleton_self (MvPolynomial.C s))))
            (Ideal.mem_sup_left (Ideal.mem_sup_right (Ideal.mem_span_singleton_self
              (MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C a))) :
              MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C a ∈
                (J ⊔ Ideal.span {MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C a}) ⊔
                  Ideal.span {MvPolynomial.C s})
          rwa [sub_sub_cancel] at hm
        · exact le_sup_of_le_left le_sup_left
        · exact le_sup_right
    have N0 : ∀ y : MvPolynomial (Fin 3) S, MvPolynomial.C s * y ∈ (⊥ : Ideal (MvPolynomial (Fin 3) S)) →
        y ∈ (⊥ : Ideal (MvPolynomial (Fin 3) S)) := by
      haveI := hP0
      intro y hy
      have hb : Ideal.map (MvPolynomial.C : S →+* MvPolynomial (Fin 3) S) ⊥ = ⊥ := Ideal.map_bot
      rw [← hb] at hy ⊢
      refine NZP S ⊥ _ y ?_ hy
      rw [MvPolynomial.map_C]
      intro h
      rw [MvPolynomial.C_eq_zero, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_bot] at h
      exact hs0 h
    have E1 : (⊥ : Ideal (MvPolynomial (Fin 3) S)) ⊔ Ideal.span {MvPolynomial.C s} =
        Ideal.map MvPolynomial.C (Ideal.span {s}) := by
      rw [Ideal.map_span, Set.image_singleton, bot_sup_eq]
    have E2 := EXT ⊥ {s} a₀ 0 E1
    have E3 := EXT _ _ a₁ 1 E2
    have E4 := EXT _ _ a₂ 2 E3
    have S1 := STEP ⊥ _ _ hP1 E1 N0 (NV _ s a₀ 0 (Ideal.mem_span_singleton_self s) ha₀)
    have S2 := STEP _ _ _ hP2 E2 S1 (NV _ s a₁ 1 (Ideal.subset_span (by simp)) ha₁)
    have S3 := STEP _ _ _ hP3 E3 S2 (NV _ s a₂ 2 (Ideal.subset_span (by simp)) ha₂)
    have h3ne : MvPolynomial.map (Ideal.Quotient.mk (Ideal.span {a₂, a₁, a₀, s}))
        (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2 :
          MvPolynomial (Fin 3) S) ≠ 0 := by
      haveI := hP4
      intro h
      have h' := congrArg (MvPolynomial.eval (![1, 1, 0] : Fin 3 → S ⧸ Ideal.span {a₂, a₁, a₀, s})) h
      simp at h'
    have S4 := STEP _ _ _ hP4 E4 S3 h3ne
    intro y hy
    have hIJ : Ideal.span (Set.range
        (![MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C a₀,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C a₁,
          MvPolynomial.C s * MvPolynomial.X 2 - MvPolynomial.C a₂,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2] :
            Fin (3 + 1) → MvPolynomial (Fin 3) S)) =
        (((⊥ ⊔ Ideal.span {MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C a₀}) ⊔
          Ideal.span {MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C a₁}) ⊔
          Ideal.span {MvPolynomial.C s * MvPolynomial.X 2 - MvPolynomial.C a₂}) ⊔
          Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2} := by
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        fin_cases i
        · exact Ideal.mem_sup_left (Ideal.mem_sup_left (Ideal.mem_sup_left
            (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))))
        · exact Ideal.mem_sup_left (Ideal.mem_sup_left (Ideal.mem_sup_right
            (Ideal.mem_span_singleton_self _)))
        · exact Ideal.mem_sup_left (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))
        · exact Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)
      · refine sup_le (sup_le (sup_le (sup_le bot_le ?_) ?_) ?_) ?_
        · exact (Ideal.span_singleton_le_iff_mem _).mpr (Ideal.subset_span ⟨0, rfl⟩)
        · exact (Ideal.span_singleton_le_iff_mem _).mpr (Ideal.subset_span ⟨1, rfl⟩)
        · exact (Ideal.span_singleton_le_iff_mem _).mpr (Ideal.subset_span ⟨2, rfl⟩)
        · exact (Ideal.span_singleton_le_iff_mem _).mpr (Ideal.subset_span ⟨3, rfl⟩)
    rw [hIJ] at hy ⊢
    exact S4 y hy

  have MAP : ∀ (A : Type u) [CommRing A] (I₀ : Ideal A) (x y σ τ c : A)
      (ψ : Fin (3 + 1) → A ⧸ I₀),
      x * y - c * (σ * τ) ∈ I₀ →
      ψ 0 = Ideal.Quotient.mk I₀ x → ψ 1 = Ideal.Quotient.mk I₀ y →
      ψ 2 = Ideal.Quotient.mk I₀ σ → ψ 3 = Ideal.Quotient.mk I₀ τ →
      ∃ π : MvPolynomial (Fin 3) A →+* wcpaDjChartAlg (A ⧸ I₀) ψ 2,
        Function.Surjective π ∧
        (∀ a, π (MvPolynomial.C a) =
          algebraMap (A ⧸ I₀) (wcpaDjChartAlg (A ⧸ I₀) ψ 2) (Ideal.Quotient.mk I₀ a)) ∧
        π (MvPolynomial.X 0) = wcpaDjChartGen (A ⧸ I₀) ψ 2 0 ∧
        π (MvPolynomial.X 1) = wcpaDjChartGen (A ⧸ I₀) ψ 2 1 ∧
        π (MvPolynomial.X 2) = wcpaDjChartGen (A ⧸ I₀) ψ 2 3 ∧
        π (MvPolynomial.C σ * MvPolynomial.X 0 - MvPolynomial.C x) = 0 ∧
        π (MvPolynomial.C σ * MvPolynomial.X 1 - MvPolynomial.C y) = 0 ∧
        π (MvPolynomial.C σ * MvPolynomial.X 2 - MvPolynomial.C τ) = 0 ∧
        π (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2) = 0 ∧
        ∀ s, π (MvPolynomial.C s) = 0 → ∃ e : ℕ, σ ^ e * s ∈ I₀ := by
    intro A _ I₀ x y σ τ c ψ hrel hψ0 hψ1 hψ2 hψ3
    let φ : A →+* Localization.Away (ψ 2) :=
      (algebraMap (A ⧸ I₀) (Localization.Away (ψ 2))).comp (Ideal.Quotient.mk I₀)
    let gen : Fin (3 + 1) → Localization.Away (ψ 2) := fun l =>
      IsLocalization.mk' (Localization.Away (ψ 2)) (ψ l)
        (⟨ψ 2, Submonoid.mem_powers _⟩ : Submonoid.powers (ψ 2))
    have hgenD : ∀ l, gen l ∈ wcpaDjChartAlg (A ⧸ I₀) ψ 2 := fun l =>
      Algebra.subset_adjoin ⟨l, rfl⟩
    have hU : IsUnit (φ σ) := by
      show IsUnit (algebraMap (A ⧸ I₀) (Localization.Away (ψ 2)) (Ideal.Quotient.mk I₀ σ))
      rw [← hψ2]
      exact IsLocalization.Away.algebraMap_isUnit (ψ 2)
    have hGen : ∀ l, φ σ * gen l = algebraMap (A ⧸ I₀) (Localization.Away (ψ 2)) (ψ l) := by
      intro l
      show algebraMap (A ⧸ I₀) (Localization.Away (ψ 2)) (Ideal.Quotient.mk I₀ σ) * gen l = _
      rw [← hψ2]
      exact IsLocalization.mk'_spec' (Localization.Away (ψ 2)) (ψ l)
        (⟨ψ 2, Submonoid.mem_powers _⟩ : Submonoid.powers (ψ 2))
    have H0 : φ σ * gen 0 = φ x := by rw [hGen, hψ0]; rfl
    have H1 : φ σ * gen 1 = φ y := by rw [hGen, hψ1]; rfl
    have H2 : φ σ * gen 2 = φ σ := by
      rw [hGen]; exact congrArg (algebraMap (A ⧸ I₀) (Localization.Away (ψ 2))) hψ2
    have H3 : φ σ * gen 3 = φ τ := by rw [hGen, hψ3]; rfl
    have Rel : φ x * φ y = φ c * (φ σ * φ τ) := by
      have h0 : φ (x * y - c * (σ * τ)) = 0 := by
        show algebraMap (A ⧸ I₀) (Localization.Away (ψ 2)) (Ideal.Quotient.mk I₀ _) = 0
        rw [Ideal.Quotient.eq_zero_iff_mem.mpr hrel, map_zero]
      simp only [map_sub, map_mul] at h0
      exact sub_eq_zero.mp h0
    let π : MvPolynomial (Fin 3) A →+* wcpaDjChartAlg (A ⧸ I₀) ψ 2 :=
      MvPolynomial.eval₂Hom ((algebraMap (A ⧸ I₀) (wcpaDjChartAlg (A ⧸ I₀) ψ 2)).comp
        (Ideal.Quotient.mk I₀)) ![⟨gen 0, hgenD 0⟩, ⟨gen 1, hgenD 1⟩, ⟨gen 3, hgenD 3⟩]
    have hg0 : (![gen 0, gen 1, gen 3] : Fin 3 → Localization.Away (ψ 2)) 0 = gen 0 := rfl
    have hg1 : (![gen 0, gen 1, gen 3] : Fin 3 → Localization.Away (ψ 2)) 1 = gen 1 := rfl
    have hg2 : (![gen 0, gen 1, gen 3] : Fin 3 → Localization.Away (ψ 2)) 2 = gen 3 := rfl
    have CF : ∀ q, ((π q : wcpaDjChartAlg (A ⧸ I₀) ψ 2) : Localization.Away (ψ 2)) =
        MvPolynomial.eval₂ φ ![gen 0, gen 1, gen 3] q := by
      intro q
      induction q using MvPolynomial.induction_on with
      | C a =>
        show ((MvPolynomial.eval₂Hom _ _ (MvPolynomial.C a) : wcpaDjChartAlg (A ⧸ I₀) ψ 2) :
          Localization.Away (ψ 2)) = _
        rw [MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂_C]
        rfl
      | add p q hp hq =>
        rw [map_add, Subalgebra.coe_add, hp, hq, MvPolynomial.eval₂_add]
      | mul_X p i hp =>
        rw [map_mul, Subalgebra.coe_mul, hp, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X]
        congr 1
        show ((MvPolynomial.eval₂Hom _ _ (MvPolynomial.X i) : wcpaDjChartAlg (A ⧸ I₀) ψ 2) :
          Localization.Away (ψ 2)) = _
        rw [MvPolynomial.eval₂Hom_X']
        fin_cases i <;> rfl
    have ZT : ∀ q, π q = 0 ↔ MvPolynomial.eval₂ φ ![gen 0, gen 1, gen 3] q = 0 := by
      intro q
      constructor
      · intro h
        rw [← CF, h]
        rfl
      · intro h
        apply Subtype.ext
        rw [CF, h]
        rfl
    have Cov : ∀ l, ∃ q, MvPolynomial.eval₂ φ ![gen 0, gen 1, gen 3] q = gen l := by
      intro l
      fin_cases l
      · exact ⟨MvPolynomial.X 0, by rw [MvPolynomial.eval₂_X]; rfl⟩
      · exact ⟨MvPolynomial.X 1, by rw [MvPolynomial.eval₂_X]; rfl⟩
      · refine ⟨1, ?_⟩
        rw [MvPolynomial.eval₂_one]
        apply hU.mul_left_cancel
        show φ σ * 1 = φ σ * gen 2
        rw [H2, mul_one]
      · exact ⟨MvPolynomial.X 2, by rw [MvPolynomial.eval₂_X]; rfl⟩
    have Ind : ∀ z ∈ wcpaDjChartAlg (A ⧸ I₀) ψ 2,
        ∃ q, MvPolynomial.eval₂ φ ![gen 0, gen 1, gen 3] q = z := by
      intro z hz
      induction hz using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        exact Cov l
      | algebraMap r =>
        obtain ⟨r', rfl⟩ := Ideal.Quotient.mk_surjective r
        exact ⟨MvPolynomial.C r', by rw [MvPolynomial.eval₂_C]; rfl⟩
      | add x y _ _ hx hy =>
        obtain ⟨p, hp⟩ := hx
        obtain ⟨q, hq⟩ := hy
        exact ⟨p + q, by rw [MvPolynomial.eval₂_add, hp, hq]⟩
      | mul x y _ _ hx hy =>
        obtain ⟨p, hp⟩ := hx
        obtain ⟨q, hq⟩ := hy
        exact ⟨p * q, by rw [MvPolynomial.eval₂_mul, hp, hq]⟩
    have PX : ∀ i : Fin 3, π (MvPolynomial.X i) =
        (![⟨gen 0, hgenD 0⟩, ⟨gen 1, hgenD 1⟩, ⟨gen 3, hgenD 3⟩] : Fin 3 → wcpaDjChartAlg (A ⧸ I₀) ψ 2) i :=
      fun i => MvPolynomial.eval₂Hom_X' _ _ i
    refine ⟨π, ?_, ?_, by rw [PX]; rfl, by rw [PX]; rfl, by rw [PX]; rfl, ?_, ?_, ?_, ?_, ?_⟩
    · intro z
      obtain ⟨q, hq⟩ := Ind z z.2
      exact ⟨q, Subtype.ext ((CF q).trans hq)⟩
    · intro a
      exact MvPolynomial.eval₂Hom_C _ _ a
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg0]
      exact sub_eq_zero.mpr H0
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg1]
      exact sub_eq_zero.mpr H1
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg2]
      exact sub_eq_zero.mpr H3
    · rw [ZT]
      simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
        MvPolynomial.eval₂_X, hg0, hg1, hg2]
      apply hU.mul_left_cancel
      apply hU.mul_left_cancel
      rw [mul_zero, mul_zero]
      linear_combination (φ σ * gen 1) * H0 + φ x * H1 - φ c * φ σ * H3 + Rel
    · intro s hs
      have h1 := (ZT _).mp hs
      rw [MvPolynomial.eval₂_C] at h1
      obtain ⟨⟨m, hm⟩, hm0⟩ := (IsLocalization.map_eq_zero_iff (Submonoid.powers (ψ 2))
        (Localization.Away (ψ 2)) (Ideal.Quotient.mk I₀ s)).mp h1
      obtain ⟨M, rfl⟩ := (Submonoid.mem_powers_iff _ _).mp hm
      refine ⟨M, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
      rw [map_mul, map_pow, ← hψ2]
      exact hm0

  have PRES : ∀ (A : Type u) [CommRing A] (I₀ : Ideal A) (x y σ τ c : A)
      (ψ : Fin (3 + 1) → A ⧸ I₀),
      I₀ = Ideal.span {x * y - c * (σ * τ)} →
      ψ 0 = Ideal.Quotient.mk I₀ x → ψ 1 = Ideal.Quotient.mk I₀ y →
      ψ 2 = Ideal.Quotient.mk I₀ σ → ψ 3 = Ideal.Quotient.mk I₀ τ →
      (⊥ : Ideal A).IsPrime → (Ideal.span {σ}).IsPrime → (Ideal.span {x, σ}).IsPrime →
      (Ideal.span {y, x, σ}).IsPrime → (Ideal.span {τ, y, x, σ}).IsPrime → σ ≠ 0 →
      x ∉ Ideal.span {σ} → y ∉ Ideal.span {x, σ} → τ ∉ Ideal.span {y, x, σ} →
      ∃ θ : (MvPolynomial (Fin 3) A ⧸ Ideal.span (Set.range
        (![MvPolynomial.C σ * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C σ * MvPolynomial.X 1 - MvPolynomial.C y,
          MvPolynomial.C σ * MvPolynomial.X 2 - MvPolynomial.C τ,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2] :
            Fin (3 + 1) → MvPolynomial (Fin 3) A))) ≃+* wcpaDjChartAlg (A ⧸ I₀) ψ 2,
        (∀ a, θ (Ideal.Quotient.mk _ (MvPolynomial.C a)) =
          algebraMap (A ⧸ I₀) (wcpaDjChartAlg (A ⧸ I₀) ψ 2) (Ideal.Quotient.mk I₀ a)) ∧
        θ (Ideal.Quotient.mk _ (MvPolynomial.X 0)) = wcpaDjChartGen (A ⧸ I₀) ψ 2 0 ∧
        θ (Ideal.Quotient.mk _ (MvPolynomial.X 1)) = wcpaDjChartGen (A ⧸ I₀) ψ 2 1 ∧
        θ (Ideal.Quotient.mk _ (MvPolynomial.X 2)) = wcpaDjChartGen (A ⧸ I₀) ψ 2 3 := by
    intro A _ I₀ x y σ τ c ψ hI₀ hψ0 hψ1 hψ2 hψ3 hP0 hP1 hP2 hP3 hP4 hs0 hx hy hτ
    have hrel : x * y - c * (σ * τ) ∈ I₀ := by rw [hI₀]; exact Ideal.mem_span_singleton_self _
    obtain ⟨π, hsurj, hC, hX0, hX1, hX2, hr0, hr1, hr2, hr3, hcst⟩ :=
      MAP A I₀ x y σ τ c ψ hrel hψ0 hψ1 hψ2 hψ3
    set I := Ideal.span (Set.range
        (![MvPolynomial.C σ * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C σ * MvPolynomial.X 1 - MvPolynomial.C y,
          MvPolynomial.C σ * MvPolynomial.X 2 - MvPolynomial.C τ,
          MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2] :
            Fin (3 + 1) → MvPolynomial (Fin 3) A)) with hIdef
    have m0 : MvPolynomial.C σ * MvPolynomial.X 0 - MvPolynomial.C x ∈ I :=
      Ideal.subset_span ⟨0, rfl⟩
    have m1 : MvPolynomial.C σ * MvPolynomial.X 1 - MvPolynomial.C y ∈ I :=
      Ideal.subset_span ⟨1, rfl⟩
    have m2 : MvPolynomial.C σ * MvPolynomial.X 2 - MvPolynomial.C τ ∈ I :=
      Ideal.subset_span ⟨2, rfl⟩
    have m3 : MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2 ∈ I :=
      Ideal.subset_span ⟨3, rfl⟩
    have hle : I ≤ RingHom.ker π := by
      rw [hIdef, Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      fin_cases i
      · exact hr0
      · exact hr1
      · exact hr2
      · exact hr3
    have hCG : (MvPolynomial.C (x * y - c * (σ * τ)) : MvPolynomial (Fin 3) A) ∈ I := by
      have e : (MvPolynomial.C (x * y - c * (σ * τ)) : MvPolynomial (Fin 3) A) =
          MvPolynomial.C σ ^ 2 * (MvPolynomial.X 0 * MvPolynomial.X 1 -
            MvPolynomial.C c * MvPolynomial.X 2) -
          MvPolynomial.C y * (MvPolynomial.C σ * MvPolynomial.X 0 - MvPolynomial.C x) -
          MvPolynomial.C σ * MvPolynomial.X 0 *
            (MvPolynomial.C σ * MvPolynomial.X 1 - MvPolynomial.C y) +
          MvPolynomial.C c * MvPolynomial.C σ *
            (MvPolynomial.C σ * MvPolynomial.X 2 - MvPolynomial.C τ) := by
        simp only [map_sub, map_mul]
        ring
      rw [e]
      exact I.add_mem (I.sub_mem (I.sub_mem (I.mul_mem_left _ m3) (I.mul_mem_left _ m0))
        (I.mul_mem_left _ m1)) (I.mul_mem_left _ m2)
    have hcancel : ∀ (M : ℕ) (w : MvPolynomial (Fin 3) A),
        MvPolynomial.C σ ^ M * w ∈ I → w ∈ I := by
      intro M
      induction M with
      | zero => intro w hw; rwa [pow_zero, one_mul] at hw
      | succ M ih =>
        intro w hw
        rw [pow_succ', mul_assoc] at hw
        exact ih w (CHAIN A σ x y τ c hP0 hP1 hP2 hP3 hP4 hs0 hx hy hτ _ hw)
    have hge : RingHom.ker π ≤ I := by
      intro w hw
      rw [RingHom.mem_ker] at hw
      obtain ⟨N, a, hNa⟩ := RED A σ ![x, y, τ] I (fun i => by
        fin_cases i
        · exact m0
        · exact m1
        · exact m2) w
      have hpa : π (MvPolynomial.C a) = 0 := by
        have h1 := hle hNa
        rw [RingHom.mem_ker, map_sub, map_mul, hw, mul_zero, zero_sub, neg_eq_zero] at h1
        exact h1
      obtain ⟨e, he⟩ := hcst a hpa
      rw [hI₀] at he
      obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp he
      have h2 : MvPolynomial.C r * MvPolynomial.C (x * y - c * (σ * τ)) =
          (MvPolynomial.C σ ^ e * MvPolynomial.C a : MvPolynomial (Fin 3) A) := by
        rw [← map_mul, hr, map_mul, map_pow]
      have h3 : MvPolynomial.C σ ^ (N + e) * w =
          MvPolynomial.C σ ^ e * (MvPolynomial.C σ ^ N * w - MvPolynomial.C a) +
            MvPolynomial.C r * MvPolynomial.C (x * y - c * (σ * τ)) := by
        linear_combination (-1 : MvPolynomial (Fin 3) A) * h2
      apply hcancel (N + e) w
      rw [h3]
      exact I.add_mem (I.mul_mem_left _ hNa) (I.mul_mem_left _ hCG)
    have hIk : I = RingHom.ker π := le_antisymm hle hge
    refine ⟨(Ideal.quotEquivOfEq hIk).trans (RingHom.quotientKerEquivOfSurjective hsurj),
      ?_, ?_, ?_, ?_⟩
    · intro a
      rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
        RingHom.quotientKerEquivOfSurjective_apply_mk]
      exact hC a
    · rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
        RingHom.quotientKerEquivOfSurjective_apply_mk]
      exact hX0
    · rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
        RingHom.quotientKerEquivOfSurjective_apply_mk]
      exact hX1
    · rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
        RingHom.quotientKerEquivOfSurjective_apply_mk]
      exact hX2

  classical
  obtain ⟨hreg, hdim, -⟩ := wcpa_dj_rtsxs_p2m_mvps_params K (n + 2)
  have hspanX := (wcpa_dj_rtsxs_p2m_mvps_params K (n + 2)).2.2
  haveI := hreg
  have PF := wcpa_dj_rtsxs_p2m_wt_param_facts (MvPowerSeries (Fin (n + 2)) K) (Fin (n + 2))
    MvPowerSeries.X (by rw [Fintype.card_fin]; exact hdim) hspanX
  set si : Fin (n + 2) := Fin.addNat l₀ 2 with hsi
  set ti : Fin (n + 2) := Fin.addNat m₀ 2 with hti
  have hs0 : si ≠ 0 := by intro h; rw [Fin.ext_iff] at h; simp [hsi] at h
  have hs1 : si ≠ 1 := by intro h; rw [Fin.ext_iff] at h; simp [hsi] at h
  have ht0 : ti ≠ 0 := by intro h; rw [Fin.ext_iff] at h; simp [hti] at h
  have ht1 : ti ≠ 1 := by intro h; rw [Fin.ext_iff] at h; simp [hti] at h
  have hts : ti ≠ si := by
    intro h; apply hlm; rw [hti, hsi, Fin.ext_iff, Fin.val_addNat, Fin.val_addNat] at h
    exact Fin.ext (by omega)
  have h10 : (1 : Fin (n + 2)) ≠ 0 := by intro h; rw [Fin.ext_iff] at h; simp at h
  have P0 := PF ∅
  have P1 := PF {si}
  have P2 := PF {0, si}
  have P3 := PF {1, 0, si}
  have P4 := PF {ti, 1, 0, si}
  simp only [Finset.coe_empty, Finset.coe_insert, Finset.coe_singleton, Set.image_empty,
    Set.image_insert_eq, Set.image_singleton, Ideal.span_empty, Finset.mem_insert,
    Finset.mem_singleton] at P0 P1 P2 P3 P4
  have hprod : (∏ l : Fin n, (MvPowerSeries.X (Fin.addNat l 2) : MvPowerSeries (Fin (n + 2)) K) ^ b l) =
      MvPowerSeries.X si * (MvPowerSeries.X ti *
        ∏ l ∈ (Finset.univ.erase l₀).erase m₀, MvPowerSeries.X (Fin.addNat l 2) ^ b l) := by
    have hm : m₀ ∈ Finset.univ.erase l₀ := Finset.mem_erase.mpr ⟨Ne.symm hlm, Finset.mem_univ _⟩
    have e1 : (MvPowerSeries.X (Fin.addNat l₀ 2) : MvPowerSeries (Fin (n + 2)) K) ^ b l₀ *
        ∏ l ∈ Finset.univ.erase l₀, MvPowerSeries.X (Fin.addNat l 2) ^ b l =
        ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l :=
      Finset.mul_prod_erase _ (fun l => (MvPowerSeries.X (Fin.addNat l 2) :
        MvPowerSeries (Fin (n + 2)) K) ^ b l) (Finset.mem_univ l₀)
    have e2 : (MvPowerSeries.X (Fin.addNat m₀ 2) : MvPowerSeries (Fin (n + 2)) K) ^ b m₀ *
        ∏ l ∈ (Finset.univ.erase l₀).erase m₀, MvPowerSeries.X (Fin.addNat l 2) ^ b l =
        ∏ l ∈ Finset.univ.erase l₀, MvPowerSeries.X (Fin.addNat l 2) ^ b l :=
      Finset.mul_prod_erase _ (fun l => (MvPowerSeries.X (Fin.addNat l 2) :
        MvPowerSeries (Fin (n + 2)) K) ^ b l) hm
    rw [← e1, ← e2, hbl, hbm, pow_one, pow_one]
  have hI₀ : wcpaDjP2mIdeal K n V b = Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      (V * ∏ l ∈ (Finset.univ.erase l₀).erase m₀, MvPowerSeries.X (Fin.addNat l 2) ^ b l) *
        (MvPowerSeries.X si * MvPowerSeries.X ti)} := by
    show Ideal.span {_} = Ideal.span {_}
    rw [hprod]
    congr 2
    ring
  exact PRES (MvPowerSeries (Fin (n + 2)) K) (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X 0)
    (MvPowerSeries.X 1) (MvPowerSeries.X si) (MvPowerSeries.X ti)
    (V * ∏ l ∈ (Finset.univ.erase l₀).erase m₀, MvPowerSeries.X (Fin.addNat l 2) ^ b l)
    (wcpaDjP2mPsi K n V b l₀ m₀) hI₀ rfl rfl rfl rfl P0.1 P1.1 P2.1 P3.1 P4.1
    (fun h => P0.2.2 si (Finset.notMem_empty si) (by rw [h]; exact Ideal.zero_mem _))
    (P1.2.2 0 (by simp [Ne.symm hs0]))
    (P2.2.2 1 (by simp [h10, Ne.symm hs1]))
    (P3.2.2 ti (by simp [ht1, ht0, hts]))

theorem wcpa_dj_rtsxs_p2m_sigma_fibre : ∀ (S : Type u) [CommRing S] [IsLocalRing S] [IsNoetherianRing S] (d : ℕ) (y : Fin d → S) (Q : Ideal (MvPolynomial (Fin 3) S)) [Q.IsPrime], (d : WithBot ℕ∞) = ringKrullDim S → Ideal.span (Set.range y) = IsLocalRing.maximalIdeal S → Q.comap MvPolynomial.C = IsLocalRing.maximalIdeal S → MvPolynomial.X 0 ∈ Q → MvPolynomial.X 1 ∈ Q → ∃ (e : ℕ) (f : Fin e → MvPolynomial (Fin 3) S), e ≤ 1 ∧ (MvPolynomial.X 2 ∈ Q → ∃ a, f a = MvPolynomial.X 2) ∧ Ideal.span (Set.range (fun k => MvPolynomial.C (y k))) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} ⊔ Ideal.span (Set.range f) = Q ∧ ((d + 2 + e : ℕ) : ℕ∞) ≤ Q.height :=
by
  intro S _ _ _ d y Q _ hd hy hQ h0 h1

  have PID : ∀ (R : Type u) [CommRing R] (k : Type u) [Field k] (Ψ : R →+* Polynomial k) (x : R)
      (Q : Ideal R) [Q.IsPrime], Function.Surjective Ψ → Ψ x = Polynomial.X →
      RingHom.ker Ψ ≤ Q →
      ∃ (e : ℕ) (f : Fin e → R), e ≤ 1 ∧ (x ∈ Q → ∃ a, f a = x) ∧
        RingHom.ker Ψ ⊔ Ideal.span (Set.range f) = Q ∧ (e = 1 → RingHom.ker Ψ ≠ Q) := by
    intro R _ k _ Ψ x Q _ hs hx hle
    have hcomap : (Q.map Ψ).comap Ψ = Q := by
      rw [Ideal.comap_map_of_surjective' Ψ hs, sup_eq_left.mpr hle]
    have star : ∀ f₀ : R, f₀ ∈ Q → Q.map Ψ = Ideal.span {Ψ f₀} →
        RingHom.ker Ψ ⊔ Ideal.span (Set.range ![f₀]) = Q := by
      intro f₀ hf₀ hq
      have hr : Set.range ![f₀] = {f₀} := by simp
      rw [hr]
      apply le_antisymm
      · exact sup_le hle (by rw [Ideal.span_le, Set.singleton_subset_iff]; exact hf₀)
      · intro q hq'
        have h1 : Ψ q ∈ Q.map Ψ := Ideal.mem_map_of_mem Ψ hq'
        rw [hq, Ideal.mem_span_singleton'] at h1
        obtain ⟨c, hc⟩ := h1
        obtain ⟨c', hc'⟩ := hs c
        have e : q = (q - c' * f₀) + c' * f₀ := by ring
        rw [e]
        refine add_mem (Ideal.mem_sup_left ?_) (Ideal.mem_sup_right
          (Ideal.mul_mem_left _ _ (Ideal.subset_span rfl)))
        rw [RingHom.mem_ker, map_sub, map_mul, hc', hc, sub_self]
    have hne_of : ∀ f₀ : R, f₀ ∈ Q → Ψ f₀ ≠ 0 → RingHom.ker Ψ ≠ Q := by
      intro f₀ hf₀ hne h
      rw [← h, RingHom.mem_ker] at hf₀
      exact hne hf₀
    by_cases hxQ : x ∈ Q
    · refine ⟨1, ![x], le_rfl, fun _ => ⟨0, rfl⟩, star x hxQ ?_, fun _ =>
        hne_of x hxQ (by rw [hx]; exact Polynomial.X_ne_zero)⟩
      haveI : (Q.map Ψ).IsPrime := Ideal.map_isPrime_of_surjective hs hle
      have hmax : (Ideal.span {Ψ x}).IsMaximal := by
        rw [hx]
        exact PrincipalIdealRing.isMaximal_of_irreducible Polynomial.irreducible_X
      have hle' : Ideal.span {Ψ x} ≤ Q.map Ψ := by
        rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.mem_map_of_mem Ψ hxQ
      exact (hmax.eq_of_le (Ideal.IsPrime.ne_top inferInstance) hle').symm
    · obtain ⟨g, hg⟩ := (IsPrincipalIdealRing.principal (Q.map Ψ)).principal
      have hg' : Q.map Ψ = Ideal.span {g} := hg
      by_cases hg0 : g = 0
      · refine ⟨0, Fin.elim0, by omega, fun h => absurd h hxQ, ?_, fun h => absurd h (by omega)⟩
        rw [Set.range_eq_empty, Ideal.span_empty, sup_bot_eq]
        apply le_antisymm hle
        intro q hq
        have h1 : Ψ q ∈ Q.map Ψ := Ideal.mem_map_of_mem Ψ hq
        rw [hg', hg0, Ideal.span_singleton_eq_bot.mpr rfl] at h1
        exact h1
      · obtain ⟨f₀, hf₀⟩ := hs g
        have hf₀Q : f₀ ∈ Q := by
          rw [← hcomap, Ideal.mem_comap, hf₀, hg']
          exact Ideal.subset_span rfl
        refine ⟨1, ![f₀], le_rfl, fun h => absurd h hxQ, star f₀ hf₀Q (by rw [hf₀]; exact hg'),
          fun _ => hne_of f₀ hf₀Q (by rw [hf₀]; exact hg0)⟩

  obtain ⟨Ψ, hΨ⟩ : ∃ Ψ : MvPolynomial (Fin 3) S →+* Polynomial (IsLocalRing.ResidueField S),
      Ψ = MvPolynomial.eval₂Hom ((Polynomial.C).comp (IsLocalRing.residue S))
        (![0, 0, Polynomial.X] : Fin 3 → Polynomial (IsLocalRing.ResidueField S)) := ⟨_, rfl⟩

  have KER : RingHom.ker Ψ = Ideal.map (MvPolynomial.C : S →+* MvPolynomial (Fin 3) S)
      (IsLocalRing.maximalIdeal S) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} ∧
      Function.Surjective Ψ := by
    obtain ⟨τ, hτ⟩ : ∃ τ : MvPolynomial (Fin 3) S →+* Polynomial S,
        τ = MvPolynomial.eval₂Hom Polynomial.C (![0, 0, Polynomial.X] : Fin 3 → Polynomial S) :=
      ⟨_, rfl⟩
    obtain ⟨ι, hι⟩ : ∃ ι : Polynomial S →+* MvPolynomial (Fin 3) S,
        ι = Polynomial.eval₂RingHom MvPolynomial.C (MvPolynomial.X 2) := ⟨_, rfl⟩
    have e1 : Ψ = (Polynomial.mapRingHom (IsLocalRing.residue S)).comp τ := by
      apply MvPolynomial.ringHom_ext
      · intro a; simp [hΨ, hτ]
      · intro i; fin_cases i <;> simp [hΨ, hτ]
    have e2 : τ.comp ι = RingHom.id _ := by
      apply Polynomial.ringHom_ext
      · intro a; simp [hτ, hι]
      · simp [hτ, hι]
    have hτs : Function.Surjective τ := fun q => ⟨ι q, by
      have := RingHom.congr_fun e2 q
      simpa using this⟩
    have hsurj : Function.Surjective Ψ := by
      rw [e1]
      exact (Polynomial.map_surjective _ IsLocalRing.residue_surjective).comp hτs
    refine ⟨le_antisymm ?_ ?_, hsurj⟩
    · intro p hp
      have hA : ∀ p : MvPolynomial (Fin 3) S,
          p - ι (τ p) ∈ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} := by
        intro p
        induction p using MvPolynomial.induction_on with
        | C a => simp [hτ, hι]
        | add p q hp hq =>
          rw [map_add, map_add, add_sub_add_comm]
          exact add_mem hp hq
        | mul_X p n hp =>
          have e : p * MvPolynomial.X n - ι (τ (p * MvPolynomial.X n)) =
              (p - ι (τ p)) * MvPolynomial.X n +
                ι (τ p) * (MvPolynomial.X n - ι (τ (MvPolynomial.X n))) := by
            rw [map_mul, map_mul]; ring
          rw [e]
          refine add_mem (Ideal.mul_mem_right _ _ hp) (Ideal.mul_mem_left _ _ ?_)
          fin_cases n
          · simp only [hτ, hι]
            simp
            exact Ideal.subset_span (by simp)
          · simp only [hτ, hι]
            simp
            exact Ideal.subset_span (by simp)
          · simp [hτ, hι]
      have hB : ι (τ p) ∈ Ideal.map (MvPolynomial.C : S →+* MvPolynomial (Fin 3) S)
          (IsLocalRing.maximalIdeal S) := by
        have h3 : τ p ∈ RingHom.ker (Polynomial.mapRingHom (IsLocalRing.residue S)) := by
          rw [RingHom.mem_ker, ← RingHom.comp_apply, ← e1]
          exact hp
        rw [Polynomial.ker_mapRingHom, IsLocalRing.ker_residue] at h3
        have h4 := Ideal.mem_map_of_mem ι h3
        rw [Ideal.map_map] at h4
        have hιC : ι.comp Polynomial.C = MvPolynomial.C := by
          ext a; simp [hι]
        rwa [hιC] at h4
      have e : p = ι (τ p) + (p - ι (τ p)) := by ring
      rw [e]
      exact add_mem (Ideal.mem_sup_left hB) (Ideal.mem_sup_right (hA p))
    · apply sup_le
      · rw [Ideal.map_le_iff_le_comap]
        intro m hm
        rw [Ideal.mem_comap, RingHom.mem_ker, hΨ]
        simp [(IsLocalRing.residue_eq_zero_iff m).mpr hm]
      · rw [Ideal.span_le]
        intro x hx
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
        rcases hx with rfl | rfl <;> simp [hΨ]
  obtain ⟨hker, hsurj⟩ := KER
  have hJ : RingHom.ker Ψ ≤ Q := by
    rw [hker]
    apply sup_le
    · rw [Ideal.map_le_iff_le_comap, hQ]
    · rw [Ideal.span_le]
      intro x hx
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
      rcases hx with rfl | rfl
      · exact h0
      · exact h1

  have HEIGHT : ((d + 2 : ℕ) : ℕ∞) ≤ Q.height ∧
      (RingHom.ker Ψ ≠ Q → ((d + 3 : ℕ) : ℕ∞) ≤ Q.height) := by
    have step : ∀ (P P' : Ideal (MvPolynomial (Fin 3) S)) [P.IsPrime] [P'.IsPrime] (h : ℕ),
        P < P' → (h : ℕ∞) ≤ P.height → ((h + 1 : ℕ) : ℕ∞) ≤ P'.height := by
      intro P P' _ _ h hlt hh
      by_contra hcon
      push_neg at hcon
      push_cast at hcon
      have h2 : P'.height ≤ (h : ℕ∞) := (ENat.lt_add_one_iff (ENat.coe_ne_top h)).mp hcon
      have h3 := (Ideal.height_le_iff.mp h2) P inferInstance hlt
      exact absurd hh (not_le.mpr h3)
    set P0 := RingHom.ker (MvPolynomial.map (σ := Fin 3) (IsLocalRing.residue S)) with hP0
    haveI : P0.IsPrime := RingHom.ker_isPrime _
    haveI : P0.LiesOver (IsLocalRing.maximalIdeal S) := by
      apply Ideal.LiesOver.mk
      ext a
      rw [Ideal.under_def, Ideal.mem_comap, MvPolynomial.algebraMap_eq, hP0, RingHom.mem_ker,
        MvPolynomial.map_C, MvPolynomial.C_eq_zero, IsLocalRing.residue_eq_zero_iff]
    have hm : (IsLocalRing.maximalIdeal S).height = (d : ℕ∞) := by
      have h1 := IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := S)
      rw [← hd] at h1
      exact_mod_cast h1
    have hP0h : (d : ℕ∞) ≤ P0.height := by
      rw [Ideal.height_eq_height_add_of_liesOver_of_hasGoingDown (IsLocalRing.maximalIdeal S) P0,
        hm]
      exact le_self_add
    set Φ₁ : MvPolynomial (Fin 3) S →+* MvPolynomial (Fin 3) (IsLocalRing.ResidueField S) :=
      MvPolynomial.eval₂Hom (MvPolynomial.C.comp (IsLocalRing.residue S))
        ![0, MvPolynomial.X 1, MvPolynomial.X 2] with hΦ₁
    set P1 := RingHom.ker Φ₁ with hP1
    haveI : P1.IsPrime := RingHom.ker_isPrime _
    haveI : (RingHom.ker Ψ).IsPrime := RingHom.ker_isPrime _
    have eΦ : Φ₁ = (MvPolynomial.eval₂Hom MvPolynomial.C
        ![0, MvPolynomial.X 1, MvPolynomial.X 2]).comp
          (MvPolynomial.map (IsLocalRing.residue S)) := by
      apply MvPolynomial.ringHom_ext
      · intro a; simp [hΦ₁]
      · intro i; fin_cases i <;> simp [hΦ₁]
    have eΨ : Ψ = (MvPolynomial.eval₂Hom (Polynomial.C : IsLocalRing.ResidueField S →+* _)
        (![0, 0, Polynomial.X] : Fin 3 → Polynomial (IsLocalRing.ResidueField S))).comp Φ₁ := by
      apply MvPolynomial.ringHom_ext
      · intro a; simp [hΦ₁, hΨ]
      · intro i; fin_cases i <;> simp [hΦ₁, hΨ]
    have h01 : P0 < P1 := by
      refine lt_of_le_of_ne ?_ ?_
      · intro p hp
        rw [hP1, RingHom.mem_ker, eΦ, RingHom.comp_apply, RingHom.mem_ker.mp hp, map_zero]
      · intro h
        have hx : (MvPolynomial.X 0 : MvPolynomial (Fin 3) S) ∈ P1 := by
          rw [hP1, RingHom.mem_ker, hΦ₁]; simp
        rw [← h, hP0, RingHom.mem_ker, MvPolynomial.map_X] at hx
        exact MvPolynomial.X_ne_zero _ hx
    have h12 : P1 < RingHom.ker Ψ := by
      refine lt_of_le_of_ne ?_ ?_
      · intro p hp
        rw [RingHom.mem_ker, eΨ, RingHom.comp_apply, RingHom.mem_ker.mp hp, map_zero]
      · intro h
        have hx : (MvPolynomial.X 1 : MvPolynomial (Fin 3) S) ∈ RingHom.ker Ψ := by
          rw [RingHom.mem_ker, hΨ]; simp
        rw [← h, hP1, RingHom.mem_ker, hΦ₁] at hx
        simp at hx
    have hP1h := step P0 P1 d h01 hP0h
    have hP2h := step P1 (RingHom.ker Ψ) (d + 1) h12 hP1h
    refine ⟨le_trans hP2h (Ideal.height_mono hJ), fun hne => ?_⟩
    exact step (RingHom.ker Ψ) Q (d + 2) (lt_of_le_of_ne hJ hne) hP2h

  have hX2 : Ψ (MvPolynomial.X 2) = Polynomial.X := by rw [hΨ]; simp
  obtain ⟨e, f, he1, hfx, heq, hne⟩ := PID _ _ Ψ (MvPolynomial.X 2) Q hsurj hX2 hJ
  have hmapC : Ideal.map (MvPolynomial.C : S →+* MvPolynomial (Fin 3) S)
      (IsLocalRing.maximalIdeal S) = Ideal.span (Set.range (fun k => MvPolynomial.C (y k))) := by
    rw [← hy, Ideal.map_span, ← Set.range_comp]
    rfl
  refine ⟨e, f, he1, hfx, ?_, ?_⟩
  · rw [← hmapC, ← hker]
    exact heq
  · obtain ⟨H1, H2⟩ := HEIGHT
    interval_cases e
    · exact H1
    · exact H2 (hne rfl)

theorem wcpa_dj_rtsxs_p2m_count_regular_ty : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (κ ι : Type) [Fintype κ] [Fintype ι] (g : κ → E) (z : ι → E), Ideal.span (Set.range g) ⊔ Ideal.span (Set.range z) = IsLocalRing.maximalIdeal E → ((Fintype.card ι + Fintype.card κ : ℕ) : WithBot ℕ∞) ≤ ringKrullDim E → ∃ (_ : IsRegularLocalRing (E ⧸ Ideal.span (Set.range g))), ringKrullDim (E ⧸ Ideal.span (Set.range g)) = ((Fintype.card ι : ℕ) : WithBot ℕ∞) ∧ Ideal.span (Set.range (fun a => Ideal.Quotient.mk (Ideal.span (Set.range g)) (z a))) = IsLocalRing.maximalIdeal (E ⧸ Ideal.span (Set.range g)) :=
by
  intro E _ _ _ κ ι _ _ g z hM hdim
  classical
  have hcardrange : ∀ {α : Type} {β : Type u} [Fintype α] (f : α → β),
      (Set.range f).ncard ≤ Fintype.card α := by
    intro α β _ f
    rw [← Set.image_univ, ← Nat.card_eq_fintype_card, ← Set.ncard_univ]
    exact Set.ncard_image_le (Set.toFinite _)
  have hGI : Submodule.spanFinrank (Ideal.span (Set.range g)) ≤ Fintype.card κ :=
    (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range g)).trans (hcardrange g)
  obtain ⟨I, hI⟩ : ∃ I : Ideal E, I = Ideal.span (Set.range g) := ⟨_, rfl⟩
  rw [← hI] at hM hGI ⊢
  have hIm : I ≤ IsLocalRing.maximalIdeal E := hM ▸ le_sup_left
  have hItop : I ≠ ⊤ := fun h =>
    (IsLocalRing.maximalIdeal.isMaximal E).ne_top (top_le_iff.mp (h ▸ hIm))
  haveI : Nontrivial (E ⧸ I) := Ideal.Quotient.nontrivial_iff.mpr hItop
  haveI : IsLocalRing (E ⧸ I) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  have hMA : IsLocalRing.maximalIdeal (E ⧸ I) =
      Ideal.span (Set.range (fun i => Ideal.Quotient.mk I (z i))) := by
    rw [← IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk I)
      Ideal.Quotient.mk_surjective, ← hM, Ideal.map_sup, Ideal.map_quotient_self, bot_sup_eq,
      Ideal.map_span, ← Set.range_comp]
    rfl
  have hEMB : Submodule.spanFinrank (IsLocalRing.maximalIdeal (E ⧸ I)) ≤ Fintype.card ι := by
    rw [hMA]
    exact (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range _)).trans
      (hcardrange _)
  have hjac : I ≤ Ring.jacobson E := by
    rw [IsLocalRing.ringJacobson_eq_maximalIdeal]; exact hIm
  have hDE := ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank I hjac
  have hupper : ringKrullDim (E ⧸ I) ≤ ((Fintype.card ι : ℕ) : WithBot ℕ∞) :=
    (ringKrullDim_le_spanFinrank_maximalIdeal _).trans (by exact_mod_cast hEMB)
  have hlow : 0 ≤ ringKrullDim (E ⧸ I) := ringKrullDim_nonneg_of_nontrivial
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ringKrullDim (E ⧸ I) = n := by
    generalize ringKrullDim (E ⧸ I) = D at hupper hlow
    induction D using WithBot.recBotCoe with
    | bot => exact absurd hlow (by simp)
    | coe e =>
      induction e using ENat.recTopCoe with
      | top =>
        rw [← WithBot.coe_natCast, WithBot.coe_le_coe, top_le_iff] at hupper
        exact absurd hupper (ENat.natCast_ne_top _)
      | coe n => exact ⟨n, rfl⟩
  have h1 : ((Fintype.card ι + Fintype.card κ : ℕ) : WithBot ℕ∞) ≤
      ((n + Submodule.spanFinrank I : ℕ) : WithBot ℕ∞) := by
    rw [Nat.cast_add (m := n)]
    rw [hn] at hDE
    exact hdim.trans hDE
  have h2 : Fintype.card ι + Fintype.card κ ≤ n + Submodule.spanFinrank I := by
    exact_mod_cast h1
  have h3 : n ≤ Fintype.card ι := by
    rw [hn] at hupper
    exact_mod_cast hupper
  have hnm : n = Fintype.card ι := by omega
  have hreg : IsRegularLocalRing (E ⧸ I) :=
    IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _
      (by rw [hn, hnm]; exact_mod_cast hEMB)
  refine ⟨hreg, by rw [hn, hnm], ?_⟩
  exact hMA.symm

theorem wcpa_dj_rtsxs_p2m_wt_hyp_sing_gen : ∀ (E : Type u) [CommRing E] [IsRegularLocalRing E] (T : Finset E) (g : E), (Ideal.span (T : Set E)).IsPrime → (T.card : ℕ∞) ≤ (Ideal.span (T : Set E)).height → ¬ (Ideal.span (T : Set E)).IsMaximal → g ≠ 0 → g ∈ Ideal.span (T : Set E) ^ 2 → wcpaDjP2mNMS (E ⧸ Ideal.span {g}) :=
by
  intro E _ _ T g H1 _ H3 H4 H5
  classical
  set 𝔭 := Ideal.span (T : Set E) with h𝔭def
  set I : Ideal E := Ideal.span {g} with hIdef
  have hg1 : g ∈ 𝔭 := Ideal.pow_le_self two_ne_zero H5
  have hIle : I ≤ 𝔭 := (Ideal.span_singleton_le_iff_mem 𝔭).mpr hg1
  have hker : RingHom.ker (Ideal.Quotient.mk I) ≤ 𝔭 := by
    rw [Ideal.mk_ker]; exact hIle
  haveI : 𝔭.IsPrime := H1
  haveI h𝔮 : (Ideal.map (Ideal.Quotient.mk I) 𝔭).IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
  set 𝔮 := Ideal.map (Ideal.Quotient.mk I) 𝔭 with h𝔮def
  have h𝔭' : Ideal.comap (Ideal.Quotient.mk I) 𝔮 = 𝔭 := by
    rw [h𝔮def, Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective, Ideal.mk_ker]
    exact sup_eq_left.mpr hIle
  have hnmax : ¬ 𝔮.IsMaximal := by
    intro hmax
    have := Ideal.comap_isMaximal_of_surjective (Ideal.Quotient.mk I)
      Ideal.Quotient.mk_surjective (K := 𝔮)
    rw [h𝔭'] at this
    exact H3 this
  have hgQ : g ∈ Ideal.comap (Ideal.Quotient.mk I) 𝔮 := by rw [h𝔭']; exact hg1
  have hiff := wcpa_dj_rtsxc_mms_hypersurface E (Ideal.comap (Ideal.Quotient.mk I) 𝔮) g hgQ H4
  have hnreg : ¬ IsRegularLocalRing (Localization.AtPrime (Ideal.comap (Ideal.Quotient.mk I) 𝔮) ⧸
      Ideal.span {algebraMap E (Localization.AtPrime (Ideal.comap (Ideal.Quotient.mk I) 𝔮)) g}) := by
    intro hreg
    have h1 : (1 : E) ∉ Ideal.comap (Ideal.Quotient.mk I) 𝔮 :=
      (Ideal.ne_top_iff_one _).mp (Ideal.IsPrime.ne_top inferInstance)
    have h2 : (1 : E) * g ∈ Ideal.comap (Ideal.Quotient.mk I) 𝔮 ^ 2 := by
      rw [one_mul, h𝔭']; exact H5
    exact hiff.mp hreg 1 h1 h2
  obtain ⟨Θ⟩ := wcpa_dj_rss_quot_localization E (E ⧸ I) (Ideal.Quotient.mk I)
    Ideal.Quotient.mk_surjective 𝔮
  have hJ : Ideal.map (algebraMap E (Localization.AtPrime (Ideal.comap (Ideal.Quotient.mk I) 𝔮)))
      (RingHom.ker (Ideal.Quotient.mk I)) =
      Ideal.span {algebraMap E (Localization.AtPrime (Ideal.comap (Ideal.Quotient.mk I) 𝔮)) g} := by
    rw [Ideal.mk_ker]
    exact (Ideal.map_span _ ({g} : Set E)).trans (by rw [Set.image_singleton])
  let Ψ := (Ideal.quotEquivOfEq hJ.symm).trans Θ
  have hnr : ¬ IsRegularLocalRing (Localization.AtPrime 𝔮) := by
    intro hr
    exact hnreg (@IsRegularLocalRing.of_ringEquiv _ _ hr _ _ Ψ.symm)
  exact ⟨𝔮, h𝔮, hnmax, hnr⟩

theorem wcpa_dj_rtsxs_p2m_weight_trichotomy_ty : ∀ (E : Type u) [CommRing E] [IsRegularLocalRing E] (ι : Type) [Fintype ι] (z : ι → E) (ix iy js : ι) (e : ι → ℕ) (c : E), ((Fintype.card ι : ℕ) : WithBot ℕ∞) = ringKrullDim E → Ideal.span (Set.range z) = IsLocalRing.maximalIdeal E → ix ≠ iy → js ≠ ix → js ≠ iy → e ix = 0 → e iy = 0 → e js = 0 → IsUnit c → Nontrivial (E ⧸ Ideal.span {z ix * z iy - c * ∏ a, z a ^ e a}) → ¬ IsRegularLocalRing (E ⧸ Ideal.span {z ix * z iy - c * ∏ a, z a ^ e a}) → wcpaDjP2mNMS (E ⧸ Ideal.span {z ix * z iy - c * ∏ a, z a ^ e a}) :=
by
  intro E _ _ ι _ z ix iy js e c hdim hspan hxy hjx hjy hex hey hej hc hnt hnr
  classical
  set M := ∏ a, z a ^ e a with hM
  set h := z ix * z iy - c * M with hh
  have hF1 : ∀ a, z a ∈ IsLocalRing.maximalIdeal E := by
    intro a; rw [← hspan]; exact Ideal.subset_span ⟨a, rfl⟩
  have hF2 : z ix * z iy ∈ IsLocalRing.maximalIdeal E ^ 2 := by
    rw [sq]; exact Ideal.mul_mem_mul (hF1 ix) (hF1 iy)
  have hcm : c ∉ IsLocalRing.maximalIdeal E := fun h' =>
    (IsLocalRing.mem_maximalIdeal c).mp h' hc

  have hnotsq : ∀ a, z a ∉ IsLocalRing.maximalIdeal E ^ 2 := by
    intro a ha
    obtain ⟨-, -, hnmA⟩ :=
      wcpa_dj_rtsxs_p2m_wt_param_facts E ι z hdim hspan (Finset.univ.erase a)
    set N := Ideal.span (z '' ((Finset.univ.erase a : Finset ι) : Set ι)) with hN
    have hle : IsLocalRing.maximalIdeal E ≤ N ⊔ Ideal.span {z a} := by
      rw [← hspan, Ideal.span_le]
      rintro _ ⟨b, rfl⟩
      by_cases hb : b = a
      · subst hb; exact Ideal.mem_sup_right (Ideal.subset_span rfl)
      · exact Ideal.mem_sup_left (Ideal.subset_span
          (Set.mem_image_of_mem z (by simp [hb])))
    have hle2 : IsLocalRing.maximalIdeal E ^ 2 ≤ N ⊔ Ideal.span {z a} * IsLocalRing.maximalIdeal E := by
      rw [sq]
      calc IsLocalRing.maximalIdeal E * IsLocalRing.maximalIdeal E
          ≤ (N ⊔ Ideal.span {z a}) * IsLocalRing.maximalIdeal E := Ideal.mul_mono_left hle
        _ = N * IsLocalRing.maximalIdeal E ⊔ Ideal.span {z a} * IsLocalRing.maximalIdeal E :=
            Ideal.sup_mul _ _ _
        _ ≤ N ⊔ Ideal.span {z a} * IsLocalRing.maximalIdeal E :=
            sup_le_sup_right (le_trans Ideal.mul_le_inf inf_le_left) _
    obtain ⟨y, hy, t, ht, hyt⟩ := Submodule.mem_sup.mp (hle2 ha)
    obtain ⟨m, hm, hmt⟩ := Ideal.mem_span_singleton_mul.mp ht
    have hu : IsUnit (1 - m) := by
      by_contra hnu
      have h1 : 1 - m ∈ IsLocalRing.maximalIdeal E := (IsLocalRing.mem_maximalIdeal _).mpr hnu
      apply (IsLocalRing.maximalIdeal.isMaximal E).ne_top
      rw [Ideal.eq_top_iff_one]
      have h2 : (1 : E) = (1 - m) + m := by ring
      rw [h2]; exact Ideal.add_mem _ h1 hm
    apply hnmA a (by simp)
    have h3 : z a * (1 - m) = y := by
      linear_combination -hyt - hmt
    exact (Ideal.mul_unit_mem_iff_mem N hu).mp (by rw [h3]; exact hy)
  rcases Nat.lt_or_ge (∑ a, e a) 2 with hw2 | hw2
  · rcases (by omega : ∑ a, e a = 0 ∨ ∑ a, e a = 1) with hw0 | hw1
    ·
      exfalso
      have he0 : ∀ a, e a = 0 := fun a =>
        (Finset.sum_eq_zero_iff.mp hw0) a (Finset.mem_univ a)
      have hM1 : M = 1 := by
        rw [hM]; simp [he0]
      have hhm : h ∉ IsLocalRing.maximalIdeal E := by
        intro hm
        apply hcm
        have h1 : c = z ix * z iy - h := by rw [hh, hM1]; ring
        rw [h1]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (hF1 ix)) hm
      have hu : IsUnit h := by
        by_contra hnu
        exact hhm ((IsLocalRing.mem_maximalIdeal h).mpr hnu)
      have htop : Ideal.span {h} = ⊤ := Ideal.span_singleton_eq_top.mpr hu
      have hsub : Subsingleton (E ⧸ Ideal.span {h}) := Ideal.Quotient.subsingleton_iff.mpr htop
      exact not_subsingleton _ hsub
    ·
      exfalso
      obtain ⟨a₀, -, ha₀⟩ := Finset.exists_ne_zero_of_sum_ne_zero
        (s := Finset.univ) (f := e) (by rw [hw1]; norm_num)
      have hle : e a₀ ≤ ∑ a, e a :=
        Finset.single_le_sum (fun i _ => Nat.zero_le (e i)) (Finset.mem_univ a₀)
      have hea : e a₀ = 1 := by omega
      have hrest : ∑ b ∈ Finset.univ.erase a₀, e b = 0 := by
        have h1 := Finset.add_sum_erase Finset.univ e (Finset.mem_univ a₀)
        omega
      have hoth : ∀ b, b ≠ a₀ → e b = 0 := fun b hb =>
        (Finset.sum_eq_zero_iff.mp hrest) b (Finset.mem_erase.mpr ⟨hb, Finset.mem_univ b⟩)
      have hMa : M = z a₀ := by
        rw [hM, Finset.prod_eq_single a₀ (fun b _ hb => by rw [hoth b hb, pow_zero])
          (fun h' => absurd (Finset.mem_univ a₀) h'), hea, pow_one]
      have hhm : h ∈ IsLocalRing.maximalIdeal E := by
        rw [hh, hMa]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (hF1 ix)) (Ideal.mul_mem_left _ _ (hF1 a₀))
      have hhm2 : h ∉ IsLocalRing.maximalIdeal E ^ 2 := by
        intro hm
        have h1 : c * z a₀ ∈ IsLocalRing.maximalIdeal E ^ 2 := by
          have h2 : c * z a₀ = z ix * z iy - h := by rw [hh, hMa]; ring
          rw [h2]; exact Ideal.sub_mem _ hF2 hm
        exact hnotsq a₀ ((Ideal.unit_mul_mem_iff_mem _ hc).mp h1)
      exact hnr (wc_rl_quot_regular wc_rl_quot_embdim E ‹IsRegularLocalRing E› h hhm hhm2).1
  ·
    set Fe := Finset.univ.filter (fun a => e a ≠ 0) with hFe
    set S' : Finset ι := insert ix (insert iy Fe) with hS'
    set 𝔭 := Ideal.span (z '' (S' : Set ι)) with h𝔭
    obtain ⟨hpr, hht, hnm⟩ := wcpa_dj_rtsxs_p2m_wt_param_facts E ι z hdim hspan S'
    obtain ⟨hprx, -, hnmx⟩ := wcpa_dj_rtsxs_p2m_wt_param_facts E ι z hdim hspan {ix}
    have hjs : js ∉ S' := by
      simp only [hS', hFe, Finset.mem_insert, Finset.mem_filter, Finset.mem_univ, true_and,
        not_or, not_not]
      exact ⟨hjx, hjy, hej⟩
    have hmemS : ∀ a ∈ S', z a ∈ 𝔭 := fun a ha =>
      Ideal.subset_span (Set.mem_image_of_mem z (Finset.mem_coe.mpr ha))
    have hMp : M ∈ 𝔭 ^ (∑ a, e a) := by
      rw [hM, ← Finset.prod_pow_eq_pow_sum]
      refine Ideal.prod_mem_prod (fun a _ => ?_)
      by_cases hea : e a = 0
      · rw [hea, pow_zero, pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top
      · exact Ideal.pow_mem_pow (hmemS a (by simp [hS', hFe, hea])) _
    have hh2 : h ∈ 𝔭 ^ 2 := by
      rw [hh]
      refine Ideal.sub_mem _ ?_ (Ideal.mul_mem_left _ _ (Ideal.pow_le_pow_right hw2 hMp))
      rw [sq]
      exact Ideal.mul_mem_mul (hmemS ix (by simp [hS'])) (hmemS iy (by simp [hS']))
    set 𝔭x := Ideal.span (z '' (({ix} : Finset ι) : Set ι)) with h𝔭x
    have hfac : ∀ a, z a ^ e a ∉ 𝔭x := by
      intro a hmem
      by_cases hea : e a = 0
      · rw [hea, pow_zero] at hmem
        exact hprx.ne_top ((Ideal.eq_top_iff_one _).mpr hmem)
      · have hane : a ∉ ({ix} : Finset ι) := by
          rw [Finset.mem_singleton]; rintro rfl; exact hea hex
        exact hnmx a hane (hprx.mem_of_pow_mem _ hmem)
    have hMx : M ∉ 𝔭x := by
      haveI := hprx
      rw [hM]; intro hmem
      obtain ⟨a, -, ha⟩ := Ideal.IsPrime.prod_mem_iff.mp hmem
      exact hfac a ha
    have hne : h ≠ 0 := by
      intro h0
      apply hMx
      have hx : z ix ∈ 𝔭x := Ideal.subset_span (Set.mem_image_of_mem z (by simp))
      have hcM : c * M ∈ 𝔭x := by
        have h1 : c * M = z ix * z iy - h := by rw [hh]; ring
        rw [h1, h0, sub_zero]; exact Ideal.mul_mem_right _ _ hx
      exact (Ideal.unit_mul_mem_iff_mem _ hc).mp hcM
    have hnmax : ¬ 𝔭.IsMaximal := by
      intro hmax
      have heq : 𝔭 = IsLocalRing.maximalIdeal E := IsLocalRing.eq_maximalIdeal hmax
      apply hnm js hjs
      have h1 : z js ∈ 𝔭 := by rw [heq]; exact hF1 js
      exact h1
    have hspanT : Ideal.span ((S'.image z : Finset E) : Set E) = 𝔭 := by
      rw [Finset.coe_image]
    have hcardT : ((S'.image z).card : ℕ∞) ≤ (Ideal.span ((S'.image z : Finset E) : Set E)).height := by
      rw [hspanT]
      exact le_trans (by exact_mod_cast Finset.card_image_le) hht
    exact wcpa_dj_rtsxs_p2m_wt_hyp_sing_gen E (S'.image z) h (by rw [hspanT]; exact hpr) hcardT
      (by rw [hspanT]; exact hnmax) hne (by rw [hspanT]; exact hh2)

theorem wcpa_dj_rtsxs_p2m_sigma_sing_gen : ∀ (K : Type u) [Field K] (n : ℕ) (V : MvPowerSeries (Fin (n + 2)) K) (b : Fin n → ℕ) (l₀ m₀ : Fin n) (Q : Ideal (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2)) [Q.IsPrime], IsUnit V → l₀ ≠ m₀ → b l₀ = 1 → b m₀ = 1 → (∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b) (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2) (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q) → wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2 0 ∈ Q → wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2 1 ∈ Q → ¬ IsRegularLocalRing (Localization.AtPrime Q) → wcpaDjP2mNMS (Localization.AtPrime Q) :=
by
  intro K _ n V b l₀ m₀ Q _ hV hlm hbl hbm hcl hx hy hs
  classical

  have nmsT : ∀ (A₁ A₂ : Type u) [CommRing A₁] [CommRing A₂], (A₁ ≃+* A₂) →
      wcpaDjP2mNMS A₁ → wcpaDjP2mNMS A₂ := by
    intro A₁ A₂ _ _ θ h
    obtain ⟨Q', hQ', hQ'm, hQ'r⟩ := h
    haveI := hQ'
    have hQeq : (Q'.comap (θ.symm : A₂ →+* A₁)).comap (θ : A₁ →+* A₂) = Q' := by
      ext a; simp
    have hmap : Submonoid.map θ.toMonoidHom Q'.primeCompl =
        (Q'.comap (θ.symm : A₂ →+* A₁)).primeCompl := by
      ext a
      rw [Submonoid.mem_map, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
      constructor
      · rintro ⟨c, hc, rfl⟩
        rw [Ideal.mem_primeCompl_iff] at hc
        simpa using hc
      · intro ha
        exact ⟨θ.symm a, by rw [Ideal.mem_primeCompl_iff]; simpa using ha, by simp⟩
    refine ⟨Q'.comap (θ.symm : A₂ →+* A₁), inferInstance, ?_, ?_⟩
    · intro hmax
      apply hQ'm
      have h := Ideal.comap_isMaximal_of_surjective (θ : A₁ →+* A₂) θ.surjective
        (K := Q'.comap (θ.symm : A₂ →+* A₁))
      rw [hQeq] at h
      exact h
    · intro hr
      apply hQ'r
      exact @IsRegularLocalRing.of_ringEquiv _ _ hr _ _
        (IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime Q')
          (Localization.AtPrime (Q'.comap (θ.symm : A₂ →+* A₁))) θ hmap).symm
  have dq : ∀ (A : Type u) [CommRing A] (I : Ideal A) (x : A) (y : A ⧸ I),
      Ideal.Quotient.mk I x = y →
      Nonempty (((A ⧸ I) ⧸ Ideal.span {y}) ≃+* (A ⧸ (I ⊔ Ideal.span {x}))) := by
    intro A _ I x y hxy
    have hJ : Ideal.map (Ideal.Quotient.mk I) (Ideal.span {x}) = Ideal.span {y} := by
      rw [Ideal.map_span, Set.image_singleton, hxy]
    exact ⟨(Ideal.quotEquivOfEq hJ.symm).trans (DoubleQuot.quotQuotEquivQuotSup I (Ideal.span {x}))⟩
  have tail : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (T : Type u)
      [CommRing T] [Nontrivial T] (ι : Type) [Fintype ι] (g : Fin 3 → E) (z : ι → E) (ix iy js : ι)
      (ε : ι → ℕ) (c₀ x₃ : E),
      Ideal.span (Set.range g) ⊔ Ideal.span (Set.range z) = IsLocalRing.maximalIdeal E →
      ((Fintype.card ι + Fintype.card (Fin 3) : ℕ) : WithBot ℕ∞) ≤ ringKrullDim E →
      ix ≠ iy → js ≠ ix → js ≠ iy → ε ix = 0 → ε iy = 0 → ε js = 0 → IsUnit c₀ →
      x₃ = z ix * z iy - c₀ * ∏ a, z a ^ ε a →
      (E ⧸ (Ideal.span (Set.range g) ⊔ Ideal.span {x₃}) ≃+* T) →
      ¬ IsRegularLocalRing T → wcpaDjP2mNMS T := by
    intro E _ _ _ T _ _ ι _ g z ix iy js ε c₀ x₃ hM hd hxy hjx hjy hex hey hej hc hx₃ Θ hs
    obtain ⟨hreg, hdim1, hM1⟩ := wcpa_dj_rtsxs_p2m_count_regular_ty E (Fin 3) ι g z hM hd
    haveI := hreg
    have hmk : Ideal.Quotient.mk (Ideal.span (Set.range g)) x₃ =
        Ideal.Quotient.mk (Ideal.span (Set.range g)) (z ix) *
          Ideal.Quotient.mk (Ideal.span (Set.range g)) (z iy) -
        Ideal.Quotient.mk (Ideal.span (Set.range g)) c₀ *
          ∏ a, Ideal.Quotient.mk (Ideal.span (Set.range g)) (z a) ^ ε a := by
      rw [hx₃, map_sub, map_mul, map_mul, map_prod]
      simp only [map_pow]
    obtain ⟨Φ₁⟩ := dq E (Ideal.span (Set.range g)) x₃ _ hmk
    have Φ := Φ₁.trans Θ
    have hN := wcpa_dj_rtsxs_p2m_weight_trichotomy_ty (E ⧸ Ideal.span (Set.range g)) ι
      (fun a => Ideal.Quotient.mk (Ideal.span (Set.range g)) (z a)) ix iy js ε
      (Ideal.Quotient.mk (Ideal.span (Set.range g)) c₀) hdim1.symm hM1 hxy hjx hjy hex hey hej
      (hc.map _) Φ.toEquiv.nontrivial (fun hr => hs (@IsRegularLocalRing.of_ringEquiv _ _ hr _ _ Φ))
    exact nmsT _ _ Φ hN

  have key : ∀ (S : Type u) [CommRing S] [IsNoetherianRing S] (D : Type u) [CommRing D]
      (π : MvPolynomial (Fin 3) S →+* D) (Q : Ideal D) [Q.IsPrime]
      (g : Fin 3 → MvPolynomial (Fin 3) S) (g₃ : MvPolynomial (Fin 3) S)
      (ι : Type) [Fintype ι] (ζ : ι → MvPolynomial (Fin 3) S) (ix iy js : ι) (ε : ι → ℕ)
      (c₀ : MvPolynomial (Fin 3) S),
      Function.Surjective π →
      RingHom.ker π = Ideal.span (Set.range g) ⊔ Ideal.span {g₃} →
      (∀ i, ζ i ∈ Q.comap π) →
      Q.comap π ≤ Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ) →
      ((Fintype.card ι + 3 : ℕ) : ℕ∞) ≤ (Q.comap π).height →
      ix ≠ iy → js ≠ ix → js ≠ iy → ε ix = 0 → ε iy = 0 → ε js = 0 →
      c₀ ∉ Q.comap π →
      g₃ = ζ ix * ζ iy - c₀ * ∏ a, ζ a ^ ε a →
      ¬ IsRegularLocalRing (Localization.AtPrime Q) →
      wcpaDjP2mNMS (Localization.AtPrime Q) := by
    intro S _ _ D _ π Q _ g g₃ ι _ ζ ix iy js ε c₀ hsurj hker hζ hgen hcard hxy hjx hjy hex hey
      hej hc₀ hg₃ hs
    set Qt := Q.comap π with hQt
    set alg := algebraMap (MvPolynomial (Fin 3) S) (Localization.AtPrime Qt) with halg
    have hkerQt : ∀ v ∈ RingHom.ker π, v ∈ Qt := by
      intro v hv
      rw [hQt, Ideal.mem_comap, RingHom.mem_ker.mp hv]
      exact Q.zero_mem
    have hgQt : ∀ i, g i ∈ Qt := fun i =>
      hkerQt _ (by rw [hker]; exact Ideal.mem_sup_left (Ideal.subset_span ⟨i, rfl⟩))
    have hQteq : Qt = Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ) := by
      apply le_antisymm hgen
      apply sup_le
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        exact hgQt i
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        exact hζ i
    have hrg : alg '' Set.range g = Set.range (fun i => alg (g i)) := by
      ext x; simp
    have hrζ : alg '' Set.range ζ = Set.range (fun i => alg (ζ i)) := by
      ext x; simp
    have hM : Ideal.span (Set.range (fun i => alg (g i))) ⊔
        Ideal.span (Set.range (fun i => alg (ζ i))) =
        IsLocalRing.maximalIdeal (Localization.AtPrime Qt) := by
      calc Ideal.span (Set.range (fun i => alg (g i))) ⊔
            Ideal.span (Set.range (fun i => alg (ζ i)))
          = Ideal.map alg (Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ)) := by
            rw [Ideal.map_sup, Ideal.map_span, Ideal.map_span, hrg, hrζ]
        _ = Ideal.map alg Qt := by rw [← hQteq]
        _ = IsLocalRing.maximalIdeal (Localization.AtPrime Qt) :=
            Localization.AtPrime.map_eq_maximalIdeal
    have hdimE : ringKrullDim (Localization.AtPrime Qt) = (Qt.height : WithBot ℕ∞) :=
      IsLocalization.AtPrime.ringKrullDim_eq_height Qt _
    obtain ⟨Θ⟩ := wcpa_dj_rss_quot_localization (MvPolynomial (Fin 3) S) D π hsurj Q
    have hmapker : Ideal.map alg (RingHom.ker π) =
        Ideal.span (Set.range (fun i => alg (g i))) ⊔ Ideal.span {alg g₃} := by
      rw [hker, Ideal.map_sup, Ideal.map_span, Ideal.map_span, Set.image_singleton, hrg]
    have hg₃' : alg g₃ = alg (ζ ix) * alg (ζ iy) - alg c₀ * ∏ a, alg (ζ a) ^ ε a := by
      rw [hg₃, map_sub, map_mul, map_mul, map_prod]
      simp only [map_pow]
    have hc : IsUnit (alg c₀) :=
      (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime Qt) Qt c₀).mpr
        (Ideal.mem_primeCompl_iff.mpr hc₀)
    exact tail (Localization.AtPrime Qt) (Localization.AtPrime Q) ι (fun i => alg (g i))
      (fun i => alg (ζ i)) ix iy js ε (alg c₀) (alg g₃) hM
      (by
        rw [hdimE, Fintype.card_fin]
        exact le_trans (le_of_eq (by first | rfl | norm_cast | simp)) (WithBot.coe_le_coe.mpr hcard))
      hxy hjx hjy hex hey hej hc hg₃' ((Ideal.quotEquivOfEq hmapker.symm).trans Θ) hs

  have hF : ∀ a : Fin (n + 2), a = 0 ∨ a = 1 ∨ ∃ l : Fin n, a = Fin.addNat l 2 := by
    intro a
    rcases a with ⟨a, ha⟩
    rcases a with _ | _ | a
    · exact Or.inl (Fin.ext (by simp))
    · exact Or.inr (Or.inl (Fin.ext (by simp)))
    · exact Or.inr (Or.inr ⟨⟨a, by omega⟩, Fin.ext (by simp)⟩)
  have hOcard : ((Finset.univ.erase l₀).erase m₀).card + 2 = n := by
    have h1 : m₀ ∈ Finset.univ.erase l₀ := Finset.mem_erase.mpr ⟨Ne.symm hlm, Finset.mem_univ _⟩
    have h2 := Finset.card_erase_add_one h1
    have h3 := Finset.card_erase_add_one (Finset.mem_univ l₀)
    rw [Finset.card_univ, Fintype.card_fin] at h3
    omega
  set O := (Finset.univ.erase l₀).erase m₀ with hO
  obtain ⟨-, hdimS, hspanS⟩ := wcpa_dj_rtsxs_p2m_mvps_params K (n + 2)
  obtain ⟨θ, hθC, hθ0, hθ1, -⟩ :=
    wcpa_dj_rtsxs_p2m_sigma_presentation K n V b l₀ m₀ hlm hbl hbm
  set π : MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K) →+*
      (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) 2) :=
    θ.toRingHom.comp (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀)))) with hπ
  have hsurj : Function.Surjective π := θ.surjective.comp Ideal.Quotient.mk_surjective
  have hkerπ : RingHom.ker π = (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) := by
    rw [hπ, RingHom.ker_comp_of_injective (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀)))) θ.injective, Ideal.mk_ker]
  set g : Fin 3 → MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K) :=
    ![wcpaDjP2mSigRel K n V b l₀ m₀ 0, wcpaDjP2mSigRel K n V b l₀ m₀ 1,
      wcpaDjP2mSigRel K n V b l₀ m₀ 2] with hg
  have hIgeq : (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) = Ideal.span (Set.range g) ⊔
      Ideal.span {wcpaDjP2mSigRel K n V b l₀ m₀ 3} := by
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      fin_cases i
      · exact Ideal.mem_sup_left (Ideal.subset_span ⟨0, rfl⟩)
      · exact Ideal.mem_sup_left (Ideal.subset_span ⟨1, rfl⟩)
      · exact Ideal.mem_sup_left (Ideal.subset_span ⟨2, rfl⟩)
      · exact Ideal.mem_sup_right (Ideal.subset_span rfl)
    · apply sup_le
      · rw [Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        fin_cases i
        · exact Ideal.subset_span ⟨0, rfl⟩
        · exact Ideal.subset_span ⟨1, rfl⟩
        · exact Ideal.subset_span ⟨2, rfl⟩
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.subset_span ⟨3, rfl⟩
  have hQC : ∀ k : Fin (n + 2), MvPolynomial.C (MvPowerSeries.X k) ∈ Q.comap π := by
    intro k
    show θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.C (MvPowerSeries.X k))) ∈ Q
    rw [hθC]
    exact hcl k
  have hX0 : MvPolynomial.X 0 ∈ Q.comap π := by
    show θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.X 0)) ∈ Q
    rw [hθ0]
    exact hx
  have hX1 : MvPolynomial.X 1 ∈ Q.comap π := by
    show θ (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2mSigRel K n V b l₀ m₀))) (MvPolynomial.X 1)) ∈ Q
    rw [hθ1]
    exact hy
  have hQtcomap : (Q.comap π).comap MvPolynomial.C =
      IsLocalRing.maximalIdeal (MvPowerSeries (Fin (n + 2)) K) := by
    have hle : IsLocalRing.maximalIdeal (MvPowerSeries (Fin (n + 2)) K) ≤
        (Q.comap π).comap MvPolynomial.C := by
      rw [← hspanS, Ideal.span_le]
      rintro _ ⟨k, rfl⟩
      exact Ideal.mem_comap.mpr (hQC k)
    exact ((IsLocalRing.maximalIdeal.isMaximal _).eq_of_le
      (Ideal.IsPrime.ne_top inferInstance) hle).symm
  obtain ⟨e, f, he1, hfX2, hQteq, hht⟩ := wcpa_dj_rtsxs_p2m_sigma_fibre
    (MvPowerSeries (Fin (n + 2)) K) (n + 2) MvPowerSeries.X (Q.comap π) hdimS hspanS hQtcomap
    hX0 hX1
  have hfQ : ∀ a, f a ∈ Q.comap π := by
    intro a
    rw [← hQteq]
    exact Ideal.mem_sup_right (Ideal.subset_span ⟨a, rfl⟩)

  obtain ⟨c₀, εf, hc₀, hcε⟩ : ∃ (c₀ : MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K))
      (εf : Fin e → ℕ), c₀ ∉ Q.comap π ∧
        c₀ * ∏ a, f a ^ εf a = MvPolynomial.C V * MvPolynomial.X 2 := by
    have hCV : MvPolynomial.C V ∉ Q.comap π := fun h =>
      (Ideal.IsPrime.ne_top (inferInstance : (Q.comap π).IsPrime))
        (Ideal.eq_top_of_isUnit_mem _ h (hV.map MvPolynomial.C))
    by_cases hu : MvPolynomial.X 2 ∈ Q.comap π
    · obtain ⟨a₀, ha₀⟩ := hfX2 hu
      haveI : Subsingleton (Fin e) := Fin.subsingleton_iff_le_one.mpr he1
      refine ⟨MvPolynomial.C V, fun _ => 1, hCV, ?_⟩
      simp only [pow_one]
      rw [Fintype.prod_subsingleton _ a₀, ha₀]
    · refine ⟨MvPolynomial.C V * MvPolynomial.X 2, fun _ => 0, ?_, ?_⟩
      · intro h
        rcases (inferInstance : (Q.comap π).IsPrime).mem_or_mem h with h1 | h1
        · exact hCV h1
        · exact hu h1
      · simp only [pow_zero, Finset.prod_const_one, mul_one]

  set ζ : Fin 3 ⊕ ({o // o ∈ O} ⊕ Fin e) → MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K) :=
    Sum.elim (![MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)), MvPolynomial.X 0,
      MvPolynomial.X 1] : Fin 3 → MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K))
      (Sum.elim (fun o : {o // o ∈ O} => MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2))) f)
    with hζdef
  set ε : Fin 3 ⊕ ({o // o ∈ O} ⊕ Fin e) → ℕ :=
    Sum.elim (fun _ : Fin 3 => 0) (Sum.elim (fun o : {o // o ∈ O} => b o.1) εf) with hεdef
  have hζQ : ∀ i, ζ i ∈ Q.comap π := by
    rintro (i | o | a)
    · fin_cases i
      · exact hQC (Fin.addNat l₀ 2)
      · exact hX0
      · exact hX1
    · exact hQC (Fin.addNat o.1 2)
    · exact hfQ a
  have hζJ : ∀ i, ζ i ∈ Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ) := fun i =>
    Ideal.mem_sup_right (Ideal.subset_span ⟨i, rfl⟩)
  have hgJ : ∀ i, g i ∈ Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ) := fun i =>
    Ideal.mem_sup_left (Ideal.subset_span ⟨i, rfl⟩)
  have hσJ : MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) ∈
      Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ) := hζJ (Sum.inl 0)
  have hgen : Q.comap π ≤ Ideal.span (Set.range g) ⊔ Ideal.span (Set.range ζ) := by
    rw [← hQteq]
    refine sup_le (sup_le ?_ ?_) ?_
    · rw [Ideal.span_le]
      rintro _ ⟨k, rfl⟩
      show MvPolynomial.C (MvPowerSeries.X k) ∈ _
      rcases hF k with rfl | rfl | ⟨l, rfl⟩
      · have e0 : MvPolynomial.C (MvPowerSeries.X 0) =
            MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) * MvPolynomial.X 0 - g 0 := by
          show _ = _ - (MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) * MvPolynomial.X 0 -
            MvPolynomial.C (MvPowerSeries.X 0))
          ring
        rw [e0]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hσJ) (hgJ 0)
      · have e1 : MvPolynomial.C (MvPowerSeries.X 1) =
            MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) * MvPolynomial.X 1 - g 1 := by
          show _ = _ - (MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) * MvPolynomial.X 1 -
            MvPolynomial.C (MvPowerSeries.X 1))
          ring
        rw [e1]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hσJ) (hgJ 1)
      · by_cases hl0 : l = l₀
        · subst hl0
          exact hσJ
        · by_cases hl1 : l = m₀
          · subst hl1
            have e2 : MvPolynomial.C (MvPowerSeries.X (Fin.addNat l 2)) =
                MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) * MvPolynomial.X 2 - g 2 := by
              show _ = _ - (MvPolynomial.C (MvPowerSeries.X (Fin.addNat l₀ 2)) * MvPolynomial.X 2 -
                MvPolynomial.C (MvPowerSeries.X (Fin.addNat l 2)))
              ring
            rw [e2]
            exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hσJ) (hgJ 2)
          · have hlO : l ∈ O := Finset.mem_erase.mpr ⟨hl1, Finset.mem_erase.mpr ⟨hl0, Finset.mem_univ _⟩⟩
            exact hζJ (Sum.inr (Sum.inl ⟨l, hlO⟩))
    · rw [Ideal.span_le]
      intro v hv
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hv
      rcases hv with rfl | rfl
      · exact hζJ (Sum.inl 1)
      · exact hζJ (Sum.inl 2)
    · rw [Ideal.span_le]
      rintro _ ⟨a, rfl⟩
      exact hζJ (Sum.inr (Sum.inr a))
  have hcardι : Fintype.card (Fin 3 ⊕ ({o // o ∈ O} ⊕ Fin e)) + 3 = n + 2 + 2 + e := by
    simp only [Fintype.card_sum, Fintype.card_fin, Fintype.card_coe]
    omega
  have hP : ∏ a, ζ a ^ ε a = (∏ o : {o // o ∈ O},
      MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2)) ^ b o.1) * ∏ a, f a ^ εf a := by
    rw [Fintype.prod_sum_type, Fintype.prod_sum_type]
    simp only [hζdef, hεdef, Sum.elim_inl, Sum.elim_inr, pow_zero, Finset.prod_const_one, one_mul]
  have hCe : MvPolynomial.C (V * ∏ l ∈ O, MvPowerSeries.X (Fin.addNat l 2) ^ b l) =
      (MvPolynomial.C V : MvPolynomial (Fin 3) (MvPowerSeries (Fin (n + 2)) K)) *
        ∏ o : {o // o ∈ O}, MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2)) ^ b o.1 := by
    rw [map_mul, map_prod, ← Finset.prod_coe_sort]
    simp only [map_pow]
  have hg₃ : wcpaDjP2mSigRel K n V b l₀ m₀ 3 =
      ζ (Sum.inl 1) * ζ (Sum.inl 2) - c₀ * ∏ a, ζ a ^ ε a := by
    rw [hP]
    show MvPolynomial.X 0 * MvPolynomial.X 1 -
        MvPolynomial.C (V * ∏ l ∈ O, MvPowerSeries.X (Fin.addNat l 2) ^ b l) * MvPolynomial.X 2 =
      MvPolynomial.X 0 * MvPolynomial.X 1 - c₀ * ((∏ o : {o // o ∈ O},
        MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2)) ^ b o.1) * ∏ a, f a ^ εf a)
    rw [hCe]
    linear_combination (∏ o : {o // o ∈ O},
      MvPolynomial.C (MvPowerSeries.X (Fin.addNat o.1 2)) ^ b o.1) * hcε
  exact key (MvPowerSeries (Fin (n + 2)) K) _ π Q g (wcpaDjP2mSigRel K n V b l₀ m₀ 3)
    (Fin 3 ⊕ ({o // o ∈ O} ⊕ Fin e)) ζ (Sum.inl 1) (Sum.inl 2) (Sum.inl 0) ε c₀ hsurj
    (hkerπ.trans hIgeq) hζQ hgen (by rw [hcardι]; exact hht)
    (Sum.inl_injective.ne (by decide)) (Sum.inl_injective.ne (by decide))
    (Sum.inl_injective.ne (by decide)) rfl rfl rfl hc₀ hg₃ hs

theorem wcpa_dj_rtsxs_p2_model_chart_sing : ∀ (K : Type u) [Field K] (n : ℕ) (V : MvPowerSeries (Fin (n + 2)) K) (b : Fin n → ℕ) (T : Finset (Fin n)) (R : Type u) [CommRing R] (e₁ : R ≃+* (MvPowerSeries (Fin (n + 2)) K ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l})) (r : ℕ) (φ : Fin (r + 1) → R) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg R φ i)) [P.IsPrime], IsUnit V → T.card = 2 → (∀ l ∈ T, b l = 1) → Ideal.map e₁ (Ideal.span (Set.range φ)) = Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l})) (Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪ (fun l => MvPowerSeries.X (Fin.addNat l 2)) '' (T : Set (Fin n)))) → (∀ a : R, ¬ IsUnit a → algebraMap R (wcpaDjChartAlg R φ i) a ∈ P) → ¬ IsRegularLocalRing (Localization.AtPrime P) → ∃ (Q : Ideal (wcpaDjChartAlg R φ i)) (_ : Q.IsPrime), Q ≤ P ∧ Q ≠ P ∧ ¬ IsRegularLocalRing (Localization.AtPrime Q) :=
by
  intro K _ n V b T R _ e₁ r φ i P _ hV hT hb hspan hclosed hsing
  classical

  have locEq : ∀ (A₁ A₂ : Type u) [CommRing A₁] [CommRing A₂] (θ : A₁ ≃+* A₂) (Q : Ideal A₁)
      [Q.IsPrime], Nonempty (Localization.AtPrime Q ≃+*
        Localization.AtPrime (Q.comap (θ.symm : A₂ →+* A₁))) := by
    intro A₁ A₂ _ _ θ Q _
    have hmap : Submonoid.map θ.toMonoidHom Q.primeCompl =
        (Q.comap (θ.symm : A₂ →+* A₁)).primeCompl := by
      ext a
      rw [Submonoid.mem_map, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
      constructor
      · rintro ⟨b, hb, rfl⟩
        rw [Ideal.mem_primeCompl_iff] at hb
        simpa using hb
      · intro ha
        exact ⟨θ.symm a, by rw [Ideal.mem_primeCompl_iff]; simpa using ha, by simp⟩
    exact ⟨IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime Q)
      (Localization.AtPrime (Q.comap (θ.symm : A₂ →+* A₁))) θ hmap⟩
  have transport : ∀ (A₁ A₂ : Type u) [CommRing A₁] [CommRing A₂] (θ : A₁ ≃+* A₂) (Q : Ideal A₁)
      [Q.IsPrime], ¬ Q.IsMaximal → ¬ IsRegularLocalRing (Localization.AtPrime Q) →
      wcpaDjP2mNMS A₂ := by
    intro A₁ A₂ _ _ θ Q _ hQm hQr
    unfold wcpaDjP2mNMS
    have hQeq : (Q.comap (θ.symm : A₂ →+* A₁)).comap (θ : A₁ →+* A₂) = Q := by
      ext a; simp
    refine ⟨Q.comap (θ.symm : A₂ →+* A₁), inferInstance, ?_, ?_⟩
    · intro hmax
      apply hQm
      have h := Ideal.comap_isMaximal_of_surjective (θ : A₁ →+* A₂) θ.surjective
        (K := Q.comap (θ.symm : A₂ →+* A₁))
      rw [hQeq] at h
      exact h
    · obtain ⟨Θ⟩ := locEq A₁ A₂ θ Q
      intro h
      apply hQr
      exact @IsRegularLocalRing.of_ringEquiv _ _ h _ _ Θ.symm

  have hgen : ∀ (A : Type u) [CommRing A] (f : Fin (3 + 1) → A) (j l : Fin (3 + 1)),
      ((wcpaDjChartGen A f j l : wcpaDjChartAlg A f j) : Localization.Away (f j)) *
        algebraMap A (Localization.Away (f j)) (f j) = algebraMap A _ (f l) := by
    intro A _ f j l
    exact IsLocalization.mk'_spec _ _ _

  obtain ⟨l₀, m₀, hlm, hTeq⟩ := Finset.card_eq_two.mp hT
  have hbl : b l₀ = 1 := hb l₀ (by rw [hTeq]; simp)
  have hbm : b m₀ = 1 := hb m₀ (by rw [hTeq]; simp)

  have hccG : MvPowerSeries.constantCoeff (MvPowerSeries.X 0 * MvPowerSeries.X 1 -
      V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l : MvPowerSeries (Fin (n + 2)) K) = 0 := by
    simp only [map_sub, map_mul, map_prod, map_pow, MvPowerSeries.constantCoeff_X]
    rw [Finset.prod_eq_zero (Finset.mem_univ l₀) (by simp [hbl])]
    simp
  let cc : wcpaDjP2mRing K n V b →+* K :=
    Ideal.Quotient.lift (wcpaDjP2mIdeal K n V b) MvPowerSeries.constantCoeff (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, hccG, mul_zero])
  have hnu : ∀ k : Fin (n + 2),
      ¬ IsUnit (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) := by
    intro k hu
    have h1 := hu.map cc
    have h2 : cc (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) = 0 := by
      simp only [cc, Ideal.Quotient.lift_mk, MvPowerSeries.constantCoeff_X]
    rw [h2] at h1
    exact not_isUnit_zero h1

  obtain ⟨Ψ, hΨ⟩ := wcpa_dj_rtsxs_p2m_chart_transport R (wcpaDjP2mRing K n V b) e₁ r φ i
  have locEq' : ∀ (A₁ A₂ : Type u) [CommRing A₁] [CommRing A₂] (θ : A₁ ≃+* A₂) (Q : Ideal A₁)
      [Q.IsPrime], ∃ (Q' : Ideal A₂) (_ : Q'.IsPrime), (∀ a, a ∈ Q' ↔ θ.symm a ∈ Q) ∧
        Nonempty (Localization.AtPrime Q ≃+* Localization.AtPrime Q') := by
    intro A₁ A₂ _ _ θ Q _
    exact ⟨Q.comap (θ.symm : A₂ →+* A₁), inferInstance, fun a => Iff.rfl, locEq A₁ A₂ θ Q⟩
  obtain ⟨P', hP', hP'mem, ⟨ΘP⟩⟩ := locEq' _ _ Ψ P
  haveI := hP'
  have hsing' : ¬ IsRegularLocalRing (Localization.AtPrime P') :=
    fun h => hsing (@IsRegularLocalRing.of_ringEquiv _ _ h _ _ ΘP.symm)
  have hΨs : ∀ a, Ψ.symm (algebraMap (wcpaDjP2mRing K n V b)
      (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (fun l => e₁ (φ l)) i) a) =
      algebraMap R (wcpaDjChartAlg R φ i) (e₁.symm a) := by
    intro a
    apply Ψ.injective
    rw [RingEquiv.apply_symm_apply, hΨ, RingEquiv.apply_symm_apply]
  have hclosed' : ∀ k : Fin (n + 2), Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k) ∈
      P'.comap (algebraMap (wcpaDjP2mRing K n V b)
        (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (fun l => e₁ (φ l)) i)) := by
    intro k
    rw [Ideal.mem_comap, hP'mem, hΨs]
    apply hclosed
    intro hu
    apply hnu k
    have h1 := hu.map e₁
    rw [RingEquiv.apply_symm_apply] at h1
    exact h1

  have hrange : Set.range (wcpaDjP2mPsi K n V b l₀ m₀) =
      Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) '' ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪
        (fun l => MvPowerSeries.X (Fin.addNat l 2)) '' (T : Set (Fin n))) := by
    rw [hTeq]
    simp only [wcpaDjP2mPsi, Matrix.range_cons, Matrix.range_empty, Set.union_empty,
      Set.singleton_union, Set.image_union, Set.image_insert_eq, Set.image_singleton,
      Finset.coe_insert, Finset.coe_singleton, Set.insert_union]
  have hspanψ : Ideal.span (Set.range (fun l => e₁ (φ l))) =
      Ideal.span (Set.range (wcpaDjP2mPsi K n V b l₀ m₀)) := by
    have h1 : Ideal.span (Set.range (fun l => e₁ (φ l))) = Ideal.map e₁ (Ideal.span (Set.range φ)) := by
      rw [Ideal.map_span, ← Set.range_comp] <;> rfl
    rw [h1, hspan, Ideal.map_span, hrange]

  have axisReg : ∀ (a c : Fin n), a ≠ c → b a = 1 → b c = 1 → ∀ (j j' : Fin (3 + 1))
      (Q : Ideal (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j)) [Q.IsPrime]
      (x : wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j), (j' = 0 ∨ j' = 1) →
      (x : Localization.Away (wcpaDjP2mPsi K n V b a c j)) *
        algebraMap _ _ (wcpaDjP2mPsi K n V b a c j) = algebraMap _ _ (wcpaDjP2mPsi K n V b a c j') →
      x ∉ Q →
      (∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b)
        (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j)
        (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q) →
      IsRegularLocalRing (Localization.AtPrime Q) := by
    intro a c hac hba hbc j j' Q _ x hj' hx hxQ hcl
    obtain ⟨Q₂, hQ₂, Θ, hQ₂c⟩ := wcpa_dj_rtsxs_p2m_switch_gen (wcpaDjP2mRing K n V b) 3 3
      (wcpaDjP2mPsi K n V b a c) (wcpaDjP2mPsi K n V b a c) j j' Q x rfl hx hxQ
    haveI := hQ₂
    have hcl₂ : ∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b)
        (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j')
        (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q₂ := by
      intro k
      have h1 : Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k) ∈
          Q.comap (algebraMap (wcpaDjP2mRing K n V b)
            (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j)) := hcl k
      rw [← hQ₂c] at h1
      exact h1
    have hreg := wcpa_dj_rtsxs_p2m_axis_regular K n V b a c j' Q₂ hV hac hba hbc hj' hcl₂
    exact @IsRegularLocalRing.of_ringEquiv _ _ hreg _ _ Θ.symm

  have key2 : ∀ (a c : Fin n), a ≠ c → b a = 1 → b c = 1 →
      ∀ (Q : Ideal (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 2)) [Q.IsPrime],
      (∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b)
        (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 2)
        (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q) →
      ¬ IsRegularLocalRing (Localization.AtPrime Q) →
      wcpaDjP2mNMS (Localization.AtPrime Q) := by
    intro a c hac hba hbc Q _ hcl hs
    by_cases hx : wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 2 0 ∈ Q
    · by_cases hy : wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 2 1 ∈ Q
      · exact wcpa_dj_rtsxs_p2m_sigma_sing_gen K n V b a c Q hV hac hba hbc hcl hx hy hs

      · exact absurd (axisReg a c hac hba hbc 2 1 Q
          (wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 2 1) (Or.inr rfl)
          (hgen _ _ 2 1) hy hcl) hs
    · exact absurd (axisReg a c hac hba hbc 2 0 Q
        (wcpaDjChartGen (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 2 0) (Or.inl rfl)
        (hgen _ _ 2 0) hx hcl) hs

  have key : ∀ (a c : Fin n), a ≠ c → b a = 1 → b c = 1 → ∀ (j : Fin (3 + 1))
      (Q : Ideal (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j)) [Q.IsPrime],
      (∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b)
        (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) j)
        (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q) →
      ¬ IsRegularLocalRing (Localization.AtPrime Q) →
      wcpaDjP2mNMS (Localization.AtPrime Q) := by
    intro a c hac hba hbc j Q _ hcl hs
    rcases (by decide : ∀ j : Fin (3 + 1), j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3) j with h | h | h | h <;>
      subst h
    · exact absurd (wcpa_dj_rtsxs_p2m_axis_regular K n V b a c 0 Q hV hac hba hbc (Or.inl rfl) hcl) hs
    · exact absurd (wcpa_dj_rtsxs_p2m_axis_regular K n V b a c 1 Q hV hac hba hbc (Or.inr rfl) hcl) hs
    · exact key2 a c hac hba hbc Q hcl hs
    · have hspan' : Ideal.span (Set.range (wcpaDjP2mPsi K n V b a c)) =
          Ideal.span (Set.range (wcpaDjP2mPsi K n V b c a)) := by
        congr 1
        simp only [wcpaDjP2mPsi, Matrix.range_cons, Matrix.range_empty, Set.union_empty,
          Set.singleton_union]
        rw [Set.pair_comm]
      obtain ⟨Q₂, hQ₂, Θ, hQ₂c⟩ := wcpa_dj_rtsxs_p2m_switch_gen (wcpaDjP2mRing K n V b) 3 3
        (wcpaDjP2mPsi K n V b a c) (wcpaDjP2mPsi K n V b c a) 3 2 Q 1 hspan'
        (by rw [Subalgebra.coe_one, one_mul] <;> rfl)
        (Q.ne_top_iff_one.mp (Ideal.IsPrime.ne_top ‹_›))
      haveI := hQ₂
      have hcl₂ : ∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b)
          (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b c a) 2)
          (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q₂ := by
        intro k
        have h1 : Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k) ∈
            Q.comap (algebraMap (wcpaDjP2mRing K n V b)
              (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b a c) 3)) := hcl k
        rw [← hQ₂c] at h1
        exact h1
      have hs₂ : ¬ IsRegularLocalRing (Localization.AtPrime Q₂) :=
        fun h => hs (@IsRegularLocalRing.of_ringEquiv _ _ h _ _ Θ.symm)
      obtain ⟨𝔮, h𝔮, h𝔮m, h𝔮r⟩ := key2 c a hac.symm hbc hba Q₂ hcl₂ hs₂
      haveI := h𝔮
      exact transport (Localization.AtPrime Q₂) (Localization.AtPrime Q) Θ.symm 𝔮 h𝔮m h𝔮r

  obtain ⟨j, c, hc, hcP⟩ := wcpa_dj_rtsxs_switch_index (wcpaDjP2mRing K n V b) r 3
    (fun l => e₁ (φ l)) (wcpaDjP2mPsi K n V b l₀ m₀) i P' hspanψ
  obtain ⟨Q₁, hQ₁, Θ₁, hQ₁c⟩ := wcpa_dj_rtsxs_p2m_switch_gen (wcpaDjP2mRing K n V b) r 3
    (fun l => e₁ (φ l)) (wcpaDjP2mPsi K n V b l₀ m₀) i j P' c hspanψ hc hcP
  haveI := hQ₁
  have hQ₁cl : ∀ k : Fin (n + 2), algebraMap (wcpaDjP2mRing K n V b)
      (wcpaDjChartAlg (wcpaDjP2mRing K n V b) (wcpaDjP2mPsi K n V b l₀ m₀) j)
      (Ideal.Quotient.mk (wcpaDjP2mIdeal K n V b) (MvPowerSeries.X k)) ∈ Q₁ := by
    intro k
    have h1 := hclosed' k
    rw [← hQ₁c] at h1
    exact h1
  have hQ₁s : ¬ IsRegularLocalRing (Localization.AtPrime Q₁) :=
    fun h => hsing' (@IsRegularLocalRing.of_ringEquiv _ _ h _ _ Θ₁.symm)
  obtain ⟨𝔮₁, h𝔮₁, h𝔮₁m, h𝔮₁r⟩ := key l₀ m₀ hlm hbl hbm j Q₁ hQ₁cl hQ₁s
  haveI := h𝔮₁
  obtain ⟨𝔮₂, h𝔮₂, h𝔮₂m, h𝔮₂r⟩ := transport (Localization.AtPrime Q₁) (Localization.AtPrime P')
    Θ₁.symm 𝔮₁ h𝔮₁m h𝔮₁r
  haveI := h𝔮₂
  obtain ⟨𝔮, h𝔮, h𝔮m, h𝔮r⟩ := transport (Localization.AtPrime P') (Localization.AtPrime P)
    ΘP.symm 𝔮₂ h𝔮₂m h𝔮₂r
  haveI := h𝔮

  refine ⟨𝔮.comap (algebraMap (wcpaDjChartAlg R φ i) (Localization.AtPrime P)), inferInstance,
    ?_, ?_, ?_⟩
  · intro x hx
    have h1 : algebraMap _ (Localization.AtPrime P) x ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P) :=
      IsLocalRing.le_maximalIdeal h𝔮.ne_top (Ideal.mem_comap.mp hx)
    exact (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P) P x).mp h1
  · intro hEq
    apply h𝔮m
    have h1 := IsLocalization.map_comap P.primeCompl (Localization.AtPrime P) 𝔮
    have h2 : Ideal.under (wcpaDjChartAlg R φ i) 𝔮 = P := hEq
    rw [h2, Localization.AtPrime.map_eq_maximalIdeal] at h1
    rw [← h1]
    exact IsLocalRing.maximalIdeal.isMaximal _
  · intro hreg
    apply h𝔮r
    exact @IsRegularLocalRing.of_ringEquiv _ _ hreg _ _
      (IsLocalization.localizationLocalizationAtPrimeIsoLocalization P.primeCompl 𝔮).toRingEquiv

theorem wcpa_dj_rtsxs_p2_lift_completion : ∀ (C : Type u) [CommRing C] (P Q : Ideal C) [P.IsPrime] [Q.IsPrime] [IsNoetherianRing (Localization.AtPrime P)], Q ≤ P → Q ≠ P → ¬ IsRegularLocalRing (Localization.AtPrime Q) → ∃ (Q' : Ideal (AdicCompletion (R := Localization.AtPrime P) (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))) (_ : Q'.IsPrime), ¬ Q'.IsMaximal ∧ ¬ IsRegularLocalRing (Localization.AtPrime Q') :=
by
  intro C _ P Q _ _ _ hQP hne hQr
  classical
  have key : ∀ (I J : Ideal C) [I.IsPrime] [J.IsPrime], I = J →
      IsRegularLocalRing (Localization.AtPrime I) → IsRegularLocalRing (Localization.AtPrime J) := by
    intro I J _ _ h
    subst h
    exact id
  haveI hqp : (Q.map (algebraMap C (Localization.AtPrime P))).IsPrime :=
    Ideal.isPrime_map_of_isLocalizationAtPrime P hQP
  have hdisj : Disjoint (P.primeCompl : Set C) (Q : Set C) := by
    rw [Set.disjoint_left]
    intro x hx hxQ
    exact hx (hQP hxQ)
  have hcomap : Ideal.comap (algebraMap C (Localization.AtPrime P))
      (Q.map (algebraMap C (Localization.AtPrime P))) = Q := by
    have := IsLocalization.under_map_of_isPrime_disjoint P.primeCompl (Localization.AtPrime P)
      (I := Q) ‹Q.IsPrime› hdisj
    rw [Ideal.under_def] at this
    exact this
  have hmaxP : Ideal.comap (algebraMap C (Localization.AtPrime P))
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)) = P := by
    have : Ideal.under C (IsLocalRing.maximalIdeal (Localization.AtPrime P)) = P :=
      Localization.AtPrime.under_maximalIdeal
    rw [Ideal.under_def] at this
    exact this
  have hqm : ¬ (Q.map (algebraMap C (Localization.AtPrime P))).IsMaximal := by
    intro hmax
    have h1 := IsLocalRing.eq_maximalIdeal hmax
    apply hne
    rw [← hcomap, h1, hmaxP]
  have hqr : ¬ IsRegularLocalRing
      (Localization.AtPrime (Q.map (algebraMap C (Localization.AtPrime P)))) := by
    intro hr
    apply hQr
    have e := IsLocalization.localizationLocalizationAtPrimeIsoLocalization P.primeCompl
      (Q.map (algebraMap C (Localization.AtPrime P)))
    have h2 : IsRegularLocalRing (Localization.AtPrime (Ideal.comap
        (algebraMap C (Localization.AtPrime P)) (Q.map (algebraMap C (Localization.AtPrime P))))) :=
      @IsRegularLocalRing.of_ringEquiv _ _ hr _ _ e.symm.toRingEquiv
    exact key _ _ hcomap h2
  set q := Q.map (algebraMap C (Localization.AtPrime P)) with hqdef
  obtain ⟨hloc, -, hιloc, -⟩ := wc_hnas_completion_local_complete (Localization.AtPrime P)
  haveI := hloc
  haveI := hιloc
  haveI := wc_hnas_completion_noetherian (Localization.AtPrime P)
  haveI hflat : Module.Flat (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)) :=
    AdicCompletion.flat_of_isNoetherian _
  haveI : Module.FaithfullyFlat (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)) :=
    Module.FaithfullyFlat.of_flat_of_isLocalHom
  obtain ⟨⟨Q', hQ'⟩, hc⟩ := PrimeSpectrum.comap_surjective_of_faithfullyFlat
    (A := Localization.AtPrime P)
    (B := AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
    ⟨q, hqp⟩
  have hcQ : Ideal.comap (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))
      Q' = q := by
    have := congrArg PrimeSpectrum.asIdeal hc
    simpa [PrimeSpectrum.comap_asIdeal] using this
  refine ⟨Q', hQ', ?_, ?_⟩
  · intro hmax
    have h1 := IsLocalRing.eq_maximalIdeal hmax
    have h2 : Ideal.comap (algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))
        (IsLocalRing.maximalIdeal _) = IsLocalRing.maximalIdeal (Localization.AtPrime P) :=
      ((IsLocalRing.local_hom_TFAE _).out 1 5).mp hιloc
    apply hqm
    rw [← hcQ, h1, h2]
    exact IsLocalRing.maximalIdeal.isMaximal _
  · intro hreg
    letI := (Localization.localRingHom q Q' (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))
      hcQ.symm).toAlgebra
    haveI : IsLocalHom (algebraMap (Localization.AtPrime q) (Localization.AtPrime Q')) :=
      Localization.isLocalHom_localRingHom _ _ _ _
    haveI : Module.Flat (Localization.AtPrime q) (Localization.AtPrime Q') :=
      RingHom.Flat.localRingHom (RingHom.flat_algebraMap_iff.mpr hflat) Q' q hcQ.symm
    exact hqr (wc_hnas_pfc_regular_flat_descent _ _ hreg)

theorem wcpa_dj_rtsxs_p2_formal_sing_gen : ∀ (k : Type u) [Field k] (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) [LocallyOfFiniteType sZ] (z : Z) (Q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z))) [Q.IsPrime], ¬ Q.IsMaximal → ¬ IsRegularLocalRing (Localization.AtPrime Q) → ∃ z'' : Z, z'' ⤳ z ∧ z'' ≠ z ∧ z'' ∈ wcpaDjSing Z :=
by
  intro k _ Z sZ _ z Q _ hQm hQr
  classical

  have alg : ∀ (O Oh : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [CommRing Oh]
      [IsNoetherianRing Oh] [Algebra O Oh] [Module.Flat O Oh],
      (∀ c : Oh, ∃ p : O, c - algebraMap O Oh p ∈
        Ideal.map (algebraMap O Oh) (IsLocalRing.maximalIdeal O)) →
      ∀ (Q : Ideal Oh) [Q.IsPrime], ¬ Q.IsMaximal → ¬ IsRegularLocalRing (Localization.AtPrime Q) →
      IsRegularLocalRing (Localization.AtPrime Q ⧸ (Q.comap (algebraMap O Oh)).map
        ((algebraMap Oh (Localization.AtPrime Q)).comp (algebraMap O Oh))) →
      Q.comap (algebraMap O Oh) ≠ IsLocalRing.maximalIdeal O ∧
        ¬ IsRegularLocalRing (Localization.AtPrime (Q.comap (algebraMap O Oh))) := by
    intro O Oh _ _ _ _ _ _ _ hlev Q _ hQm hQr hfib
    refine ⟨?_, ?_⟩
    · intro hq
      apply hQm
      obtain ⟨M, hM, hQM⟩ := Ideal.exists_le_maximal Q (Ideal.IsPrime.ne_top ‹_›)
      have hmQ : Ideal.map (algebraMap O Oh) (IsLocalRing.maximalIdeal O) ≤ Q := by
        rw [Ideal.map_le_iff_le_comap, hq]
      have hMQ : M ≤ Q := by
        intro c hc
        obtain ⟨p, hp⟩ := hlev c
        have ht : c - algebraMap O Oh p ∈ Q := hmQ hp
        by_cases hpm : p ∈ IsLocalRing.maximalIdeal O
        · have hpQ : algebraMap O Oh p ∈ Q := by
            have h' : p ∈ Q.comap (algebraMap O Oh) := by rw [hq]; exact hpm
            exact h'
          have h2 := Q.add_mem ht hpQ
          simpa using h2
        · exfalso
          have hu : IsUnit p := by
            by_contra h
            exact hpm (by rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]; exact h)
          have hu' : IsUnit (algebraMap O Oh p) := hu.map (algebraMap O Oh)
          have hpM : algebraMap O Oh p ∈ M := by
            have h3 : c - (c - algebraMap O Oh p) ∈ M := M.sub_mem hc (hQM ht)
            simpa using h3
          exact hM.ne_top (Ideal.eq_top_of_isUnit_mem M hpM hu')
      have hQeq : Q = M := le_antisymm hQM hMQ
      rw [hQeq]
      exact hM
    · intro hreg
      letI : Algebra (Localization.AtPrime (Q.comap (algebraMap O Oh))) (Localization.AtPrime Q) :=
        (Localization.localRingHom (Q.comap (algebraMap O Oh)) Q (algebraMap O Oh) rfl).toAlgebra
      haveI : IsNoetherianRing (Localization.AtPrime (Q.comap (algebraMap O Oh))) :=
        IsLocalization.isNoetherianRing (Q.comap (algebraMap O Oh)).primeCompl _ ‹_›
      haveI : IsNoetherianRing (Localization.AtPrime Q) :=
        IsLocalization.isNoetherianRing Q.primeCompl _ ‹_›
      haveI : IsLocalHom (algebraMap (Localization.AtPrime (Q.comap (algebraMap O Oh)))
          (Localization.AtPrime Q)) :=
        Localization.isLocalHom_localRingHom (Q.comap (algebraMap O Oh)) Q (algebraMap O Oh) rfl
      haveI : Module.Flat (Localization.AtPrime (Q.comap (algebraMap O Oh)))
          (Localization.AtPrime Q) := by
        have hfl : (algebraMap O Oh).Flat := RingHom.flat_algebraMap_iff.mpr ‹_›
        exact RingHom.Flat.localRingHom hfl Q (Q.comap (algebraMap O Oh)) rfl
      have h1 : IsLocalRing.maximalIdeal (Localization.AtPrime (Q.comap (algebraMap O Oh))) =
          Ideal.map (algebraMap O (Localization.AtPrime (Q.comap (algebraMap O Oh))))
            (Q.comap (algebraMap O Oh)) :=
        Localization.AtPrime.map_eq_maximalIdeal.symm
      have hfibeq : Ideal.map (algebraMap (Localization.AtPrime (Q.comap (algebraMap O Oh)))
          (Localization.AtPrime Q))
          (IsLocalRing.maximalIdeal (Localization.AtPrime (Q.comap (algebraMap O Oh)))) =
          (Q.comap (algebraMap O Oh)).map
            ((algebraMap Oh (Localization.AtPrime Q)).comp (algebraMap O Oh)) := by
        rw [h1, Ideal.map_map]
        congr 1
        ext x
        exact Localization.localRingHom_to_map (Q.comap (algebraMap O Oh)) Q (algebraMap O Oh) rfl x
      have hB : IsRegularLocalRing (Localization.AtPrime Q ⧸
          Ideal.map (algebraMap (Localization.AtPrime (Q.comap (algebraMap O Oh)))
            (Localization.AtPrime Q))
          (IsLocalRing.maximalIdeal (Localization.AtPrime (Q.comap (algebraMap O Oh))))) := by
        haveI := hfib
        exact IsRegularLocalRing.of_ringEquiv (Ideal.quotEquivOfEq hfibeq.symm)
      exact hQr (wc_hnas_pfc_regular_flat_ascent _ _ hreg hB)

  have geo : ∀ (q : Ideal (Z.presheaf.stalk z)) [q.IsPrime],
      q ≠ IsLocalRing.maximalIdeal (Z.presheaf.stalk z) →
      ¬ IsRegularLocalRing (Localization.AtPrime q) →
      ∃ z'' : Z, z'' ⤳ z ∧ z'' ≠ z ∧ z'' ∈ wcpaDjSing Z := by
    intro q _ hqm hqr
    have aux : ∀ (w : Z) (hw : w ⤳ z), (∀ a : Z.presheaf.stalk z,
        (Z.presheaf.stalkSpecializes hw).hom a ∈ IsLocalRing.maximalIdeal (Z.presheaf.stalk w) ↔
          a ∈ q) → w ≠ z ∧ w ∈ wcpaDjSing Z := by
      intro w hw Hw
      refine ⟨?_, ?_⟩
      · rintro rfl
        apply hqm
        ext a
        rw [← Hw a, TopCat.Presheaf.stalkSpecializes_refl]
        simp
      · letI := (Z.presheaf.stalkSpecializes hw).hom.toAlgebra
        have hloc := wc_ldp_nc_stalkSpecializes_isLocalization Z w z hw
        have hcomap : (IsLocalRing.maximalIdeal (Z.presheaf.stalk w)).comap
            (Z.presheaf.stalkSpecializes hw).hom = q := by
          ext a
          exact Hw a
        have helper : ∀ (p : Ideal (Z.presheaf.stalk z)) [p.IsPrime], p = q →
            IsLocalization.AtPrime (Z.presheaf.stalk w) p →
            IsLocalization.AtPrime (Z.presheaf.stalk w) q := by
          intro p _ h hS
          subst h
          exact hS
        haveI hloc' := helper _ hcomap hloc
        show ¬ IsRegularLocalRing (Z.presheaf.stalk w)
        intro hreg
        haveI := hreg
        apply hqr
        exact IsRegularLocalRing.of_ringEquiv
          (IsLocalization.algEquiv q.primeCompl (Z.presheaf.stalk w)
            (Localization.AtPrime q)).toRingEquiv
    obtain ⟨hsp, H⟩ := wcpa_dj_mn_generization Z z ⟨q, ‹_›⟩
    obtain ⟨hne, hsing⟩ := aux _ hsp H
    exact ⟨_, hsp, hne, hsing⟩

  haveI : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian sZ
  have hfib := wcpa_dj_sfc_gring_fibres k Z sZ z Q
  haveI := wc_hnas_completion_noetherian (Z.presheaf.stalk z)
  haveI := AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
  have hlev : ∀ c : AdicCompletion (IsLocalRing.maximalIdeal (Z.presheaf.stalk z))
      (Z.presheaf.stalk z), ∃ p : Z.presheaf.stalk z,
      c - algebraMap (Z.presheaf.stalk z) _ p ∈
        Ideal.map (algebraMap (Z.presheaf.stalk z) (AdicCompletion
          (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) (Z.presheaf.stalk z)))
          (IsLocalRing.maximalIdeal (Z.presheaf.stalk z)) := by
    intro c
    obtain ⟨p, hp⟩ := (wc_hnas_hs_completion_levels (Z.presheaf.stalk z)).1 1 c
    rw [pow_one] at hp
    exact ⟨p, hp⟩
  obtain ⟨hne, hsing⟩ := alg _ _ hlev Q hQm hQr hfib
  exact geo _ hne hsing

theorem wcpa_dj_rtsxs_phase2_generization : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] [IsLocallyNoetherian Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ : Y) (Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] [IsLocallyNoetherian Y'] (π : Y' ⟶ Y), wcpaDjIsProjOver k sY → wcpaDjIsProjOver k (π ≫ sY) → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → (∀ γ' ∈ wcpaDjSingGen Y, ringKrullDim (Y.presheaf.stalk γ') ≠ ((2 : ℕ) : WithBot ℕ∞)) → IsProper π → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ y' : Y', π y' ∈ closure {γ} → y' ∈ wcpaDjSing Y' → ∃ y'' : Y', y'' ⤳ y' ∧ y'' ≠ y' ∧ y'' ∈ wcpaDjSing Y' :=
by
  intro k _ Y _ _ sY B γ Y' _ _ π hproj hproj' hB hloc hγ hph2 hπp hcharts y' hy hsing
  classical

  have transport : ∀ (A₁ A₂ : Type u) [CommRing A₁] [CommRing A₂] (θ : A₁ ≃+* A₂) (Q : Ideal A₁)
      [Q.IsPrime], ¬ Q.IsMaximal → ¬ IsRegularLocalRing (Localization.AtPrime Q) →
      ∃ (Q' : Ideal A₂) (_ : Q'.IsPrime), ¬ Q'.IsMaximal ∧
        ¬ IsRegularLocalRing (Localization.AtPrime Q') := by
    intro A₁ A₂ _ _ θ Q _ hQm hQr
    have hQeq : (Q.comap (θ.symm : A₂ →+* A₁)).comap (θ : A₁ →+* A₂) = Q := by
      ext a; simp
    refine ⟨Q.comap (θ.symm : A₂ →+* A₁), inferInstance, ?_, ?_⟩
    · intro hmax
      apply hQm
      have h := Ideal.comap_isMaximal_of_surjective (θ : A₁ →+* A₂) θ.surjective
        (K := Q.comap (θ.symm : A₂ →+* A₁))
      rw [hQeq] at h
      exact h
    · have hmap : Submonoid.map θ.toMonoidHom Q.primeCompl =
          (Q.comap (θ.symm : A₂ →+* A₁)).primeCompl := by
        ext a
        rw [Submonoid.mem_map, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
        constructor
        · rintro ⟨b, hb, rfl⟩
          rw [Ideal.mem_primeCompl_iff] at hb
          simpa using hb
        · intro ha
          exact ⟨θ.symm a, by rw [Ideal.mem_primeCompl_iff]; simpa using ha, by simp⟩
      intro h
      apply hQr
      haveI := h
      exact IsRegularLocalRing.of_ringEquiv
        (IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime Q)
          (Localization.AtPrime (Q.comap (θ.symm : A₂ →+* A₁))) θ hmap).symm

  have hγz : γ ⤳ π y' := specializes_iff_mem_closure.mpr hy
  have hγ' : γ ∈ wcpaDjSing Y ∧ ∀ γ' ∈ wcpaDjSing Y, γ' ⤳ γ → γ' = γ := hγ
  have hγS : ¬ IsRegularLocalRing (Y.presheaf.stalk γ) := hγ'.1

  have hgen : genericPoint Y ∉ closure {γ} := by
    intro h
    have h1 : γ ⤳ genericPoint Y := specializes_iff_mem_closure.mpr h
    have h2 : genericPoint Y ⤳ γ := genericPoint_specializes γ
    have heq : γ = genericPoint Y := (h1.antisymm h2).eq
    apply hγS
    rw [heq]
    change IsRegularLocalRing Y.functionField
    infer_instance

  obtain ⟨q, h, -, hcen⟩ := wcpa_dj_rtsxc_centre_ideal k Y sY B γ (π y') hproj hB hloc hγ hγz
  obtain ⟨n, A, iA, hAreg, hAc, x, yy, v, σ, b, e, J, T, hv, hdim, hspan, -, -, -, -, hpT, hT, -⟩ :=
    hcen

  have hT2 : T.card = 2 ∧ ∀ l ∈ T, b l = 1 := by
    rcases hT with hT1 | hT2
    · exfalso
      letI := (Y.presheaf.stalkSpecializes hγz).hom.toAlgebra
      haveI := wc_ldp_nc_stalkSpecializes_isLocalization Y γ (π y') hγz
      have hd := wcpa_dj_rtsxs_p2_centre_height (Y.presheaf.stalk (π y'))
        (Ideal.comap (Y.presheaf.stalkSpecializes hγz).hom
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ)))
        (Y.presheaf.stalk γ) n A x yy v σ b e T hv hdim hspan hpT hT1.1 hT1.2
      exact hph2 γ hγ hd
    · exact hT2

  obtain ⟨hlocC, -, -, -⟩ := wc_hnas_completion_local_complete (Y.presheaf.stalk (π y'))
  haveI := hlocC
  haveI := wc_hnas_completion_noetherian (Y.presheaf.stalk (π y'))

  obtain ⟨K, iK, V, e₁, hV, hideal⟩ := wcpa_dj_rtsxs_p2_equichar_form k (Y.presheaf.stalk (π y'))
    ((Scheme.ΓSpecIso (.of k)).inv ≫ sY.appTop ≫ Y.presheaf.germ ⊤ (π y') trivial).hom
    n A x yy v σ b e hv hdim hspan
  have hJ := hideal T _ hpT

  obtain ⟨r, f, i, P, hPprime, Φ, hf, hfi, hPm, -⟩ :=
    wcpa_dj_rtsxc_chart_stalk Y γ Y' π hgen hcharts y' hγz
  haveI : IsNoetherianRing (Localization.AtPrime P) :=
    isNoetherianRing_of_ringEquiv (Y'.presheaf.stalk y') Φ

  obtain ⟨P', hP'prime, hP'm, hP'noeth, ⟨ε⟩⟩ :=
    wcpa_dj_rtsxs_p2_chart_completion (Y.presheaf.stalk (π y')) r f i P hfi hPm

  have hsing' : ¬ IsRegularLocalRing (Y'.presheaf.stalk y') := hsing
  have hCP : ¬ IsRegularLocalRing (Localization.AtPrime P) := fun hr =>
    hsing' (@IsRegularLocalRing.of_ringEquiv _ _ hr _ _ Φ.symm)
  have hCPc : ¬ IsRegularLocalRing (AdicCompletion (R := Localization.AtPrime P)
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)) := fun hr =>
    hCP ((wcpa_dj_rtsxs_completion_regular_iff (Localization.AtPrime P)).mpr hr)
  have hCP'c : ¬ IsRegularLocalRing (AdicCompletion (R := Localization.AtPrime P')
      (IsLocalRing.maximalIdeal (Localization.AtPrime P')) (Localization.AtPrime P')) := fun hr =>
    hCPc (@IsRegularLocalRing.of_ringEquiv _ _ hr _ _ ε.symm)
  have hDP' : ¬ IsRegularLocalRing (Localization.AtPrime P') := fun hr =>
    hCP'c ((wcpa_dj_rtsxs_completion_regular_iff (Localization.AtPrime P')).mp hr)

  have hspanφ : Ideal.map e₁ (Ideal.span (Set.range (fun l => algebraMap (Y.presheaf.stalk (π y'))
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
        (Y.presheaf.stalk (π y'))) (f l)))) =
      Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
        V * ∏ l : Fin n, MvPowerSeries.X (Fin.addNat l 2) ^ b l}))
        (Ideal.span ({MvPowerSeries.X 0, MvPowerSeries.X 1} ∪
          (fun l => MvPowerSeries.X (Fin.addNat l 2)) '' (T : Set (Fin n)))) := by
    rw [← hJ, ← hf, Ideal.map_span (algebraMap _ _)]
    congr 2
    ext a
    simp

  obtain ⟨Q, hQp, hQle, hQne, hQr⟩ := wcpa_dj_rtsxs_p2_model_chart_sing K n V b T
    (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y')))
    e₁ r (fun l => algebraMap (Y.presheaf.stalk (π y'))
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
        (Y.presheaf.stalk (π y'))) (f l)) i P' hV hT2.1 hT2.2 hspanφ hP'm hDP'
  obtain ⟨Q₁, hQ₁p, hQ₁m, hQ₁r⟩ := wcpa_dj_rtsxs_p2_lift_completion _ P' Q hQle hQne hQr
  obtain ⟨θ', -⟩ :=
    wcpa_dj_rtsxs_adic_completion_congr (Localization.AtPrime P) (Y'.presheaf.stalk y') Φ.symm
  obtain ⟨Q₂, hQ₂p, hQ₂m, hQ₂r⟩ := transport _ _ (ε.symm.trans θ') Q₁ hQ₁m hQ₁r

  haveI : IsProper (π ≫ sY) := wcpa_dj_proj_proper k (π ≫ sY) hproj'
  exact wcpa_dj_rtsxs_p2_formal_sing_gen k Y' (π ≫ sY) y' Q₂ hQ₂m hQ₂r

theorem wcpa_dj_rtsxs_w_node_dim_one : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})), ringKrullDim O = ((2 : ℕ) : WithBot ℕ∞) → IsUnit v → ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A → n = 1 :=
by
  intro O _ _ _ A _ _ n x y v σ b e hO hv hA hspan
  classical
  obtain ⟨hloc, -, hlh, -⟩ := wc_hnas_completion_local_complete O
  haveI := hloc
  haveI := hlh
  haveI := wc_hnas_completion_noetherian O
  haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
    AdicCompletion.flat_of_isNoetherian (IsLocalRing.maximalIdeal O)

  have hle : Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
      (IsLocalRing.maximalIdeal O) ≤
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
    rw [Ideal.map_le_iff_le_comap]
    intro p hp
    rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact (mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hp))
      (isUnit_of_map_unit (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) p hu)
  have hge : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) ≤
      Ideal.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))
        (IsLocalRing.maximalIdeal O) := by
    intro c hc
    obtain ⟨p, hp⟩ := (wc_hnas_hs_completion_levels O).1 1 c
    rw [pow_one] at hp
    have hpm : algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) p ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
      have h1 := Ideal.sub_mem _ hc (hle hp)
      rwa [sub_sub_cancel] at h1
    have hp' : p ∈ IsLocalRing.maximalIdeal O := by
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      exact (mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hpm))
        (hu.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)))
    have h2 := Ideal.add_mem _ hp (Ideal.mem_map_of_mem
      (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)) hp')
    rwa [sub_add_cancel] at h2
  have hdim : ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal O) O) = ringKrullDim O :=
    wc_lfi_flat_local_dim_eq O (AdicCompletion (IsLocalRing.maximalIdeal O) O)
      (le_antisymm hle hge)

  have hR : ringKrullDim (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) =
      ((2 : ℕ) : WithBot ℕ∞) := by
    rw [← ringKrullDim_eq_of_ringEquiv e, hdim, hO]

  have hFtop : Ideal.span {x * y - v * ∏ l, σ l ^ b l} ≠ ⊤ := by
    intro htop
    haveI : Subsingleton (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) :=
      Ideal.Quotient.subsingleton_iff.mpr htop
    haveI : Subsingleton (AdicCompletion (IsLocalRing.maximalIdeal O) O) :=
      e.toEquiv.subsingleton
    exact not_subsingleton (AdicCompletion (IsLocalRing.maximalIdeal O) O) ‹_›
  have hFm : x * y - v * ∏ l, σ l ^ b l ∈ IsLocalRing.maximalIdeal A := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact hFtop (Ideal.span_singleton_eq_top.mpr hu)

  have hjac : Ideal.span {x * y - v * ∏ l, σ l ^ b l} ≤ Ring.jacobson A := by
    rw [IsLocalRing.ringJacobson_eq_maximalIdeal A, Ideal.span_le, Set.singleton_subset_iff]
    exact hFm
  have hub := ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank _ hjac
  rw [hR, ← hA] at hub
  have hsf : (Ideal.span {x * y - v * ∏ l, σ l ^ b l} : Ideal A).spanFinrank ≤ 1 := by
    have h1 := Submodule.spanFinrank_span_le_ncard_of_finite (R := A)
      (Set.finite_singleton (x * y - v * ∏ l, σ l ^ b l))
    rw [Set.ncard_singleton] at h1
    exact h1
  have hn2 : n + 2 ≤ 2 + (Ideal.span {x * y - v * ∏ l, σ l ^ b l} : Ideal A).spanFinrank := by
    exact_mod_cast hub

  have hxm : x ∈ IsLocalRing.maximalIdeal A := by
    have h1 := Ideal.subset_span (α := A)
      (Set.mem_union_left (Set.range σ) (Set.mem_insert x ({y} : Set A)))
    rw [hspan] at h1
    exact h1
  rcases Nat.lt_or_ge n 1 with h0 | h1
  · exfalso
    have hn0 : n = 0 := by omega
    subst hn0
    have hvm : v ∈ IsLocalRing.maximalIdeal A := by
      have h2 := Ideal.sub_mem _ (Ideal.mul_mem_right y _ hxm) hFm
      have h3 : x * y - (x * y - v * ∏ l, σ l ^ b l) = v := by
        rw [Fin.prod_univ_zero]; ring
      rwa [h3] at h2
    exact (mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hvm)) hv
  · omega

theorem wcpa_dj_rtsxs_u_N_cyclic : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (A : Type u) [CommRing A] [IsLocalRing A] (x y s F : A) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {F})), Ideal.span {x, y, s} = IsLocalRing.maximalIdeal A → ∃ N : Ideal O, (∀ n ∈ N, e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n) ∈ Ideal.map (Ideal.Quotient.mk (Ideal.span {F})) (Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2)) ∧ N ≤ IsLocalRing.maximalIdeal O ∧ IsLocalRing.maximalIdeal O * IsLocalRing.maximalIdeal O ≤ N ∧ ∃ t₀ ∈ IsLocalRing.maximalIdeal O, ∀ m ∈ IsLocalRing.maximalIdeal O, ∃ c : O, m - c * t₀ ∈ N :=
by
  intro O _ _ _ A _ _ x y s F e hspan

  obtain ⟨ev, hev⟩ : ∃ ev : AdicCompletion (IsLocalRing.maximalIdeal O) O →ₐ[O]
      O ⧸ IsLocalRing.maximalIdeal O ^ 1, ev = AdicCompletion.evalₐ (IsLocalRing.maximalIdeal O) 1 :=
    ⟨_, rfl⟩
  have hevι : ∀ o : O, ev (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) o) =
      Ideal.Quotient.mk (IsLocalRing.maximalIdeal O ^ 1) o := by
    intro o; rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq]
  have hK : ∀ u : O ⧸ IsLocalRing.maximalIdeal O ^ 1, u = 0 → ¬ IsUnit u := by
    intro u hu0 hu
    rw [hu0, isUnit_zero_iff] at hu
    have h1 : Ideal.Quotient.mk (IsLocalRing.maximalIdeal O ^ 1) 1 = 0 := by
      rw [map_one]; exact hu.symm
    rw [Ideal.Quotient.eq_zero_iff_mem, pow_one] at h1
    exact (IsLocalRing.maximalIdeal.isMaximal O).ne_top ((Ideal.eq_top_iff_one _).mpr h1)
  have hker : ∀ w : AdicCompletion (IsLocalRing.maximalIdeal O) O, ev w = 0 → ¬ IsUnit w := by
    intro w hw hu
    exact hK _ hw (hu.map ev)
  obtain ⟨mk, hmk⟩ : ∃ f : A →+* A ⧸ Ideal.span {F}, f = Ideal.Quotient.mk (Ideal.span {F}) :=
    ⟨_, rfl⟩
  have hmks : Function.Surjective mk := by subst hmk; exact Ideal.Quotient.mk_surjective
  have hmk0 : ∀ a, mk a = 0 ↔ a ∈ Ideal.span {F} := by
    subst hmk; intro a; exact Ideal.Quotient.eq_zero_iff_mem
  rw [← hmk]
  obtain ⟨Q, hQ⟩ : ∃ Q : Ideal (A ⧸ Ideal.span {F}),
      Q = Ideal.map mk (Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2) := ⟨_, rfl⟩
  rw [← hQ]
  obtain ⟨M, hM⟩ : ∃ M : Ideal (A ⧸ Ideal.span {F}),
      M = Ideal.map mk (IsLocalRing.maximalIdeal A) := ⟨_, rfl⟩
  have hmkM : ∀ a ∈ IsLocalRing.maximalIdeal A, mk a ∈ M := by
    intro a ha; rw [hM]; exact Ideal.mem_map_of_mem mk ha
  have hMmk : ∀ z ∈ M, ∃ a ∈ IsLocalRing.maximalIdeal A, mk a = z := by
    intro z hz; rw [hM] at hz; exact (Ideal.mem_map_iff_of_surjective mk hmks).mp hz

  have hR : (0 : A ⧸ Ideal.span {F}) ≠ 1 := by
    intro h
    have h2 : e.symm 0 = e.symm 1 := by rw [h]
    rw [map_zero, map_one] at h2
    have h3 : IsUnit (0 : AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
      rw [h2]; exact isUnit_one
    exact hker 0 (map_zero ev) h3
  have hF : F ∈ IsLocalRing.maximalIdeal A := by
    by_contra hF
    have hu : IsUnit F := IsLocalRing.notMem_maximalIdeal.mp hF
    apply hR
    have h1 : (1 : A) ∈ Ideal.span {F} := by
      rw [Ideal.span_singleton_eq_top.mpr hu]; exact Submodule.mem_top
    have h2 := (hmk0 1).mpr h1
    rw [map_one] at h2
    exact h2.symm

  have hMnu : ∀ z ∈ M, ¬ IsUnit z := by
    intro z hz hu
    obtain ⟨a, ha, rfl⟩ := hMmk z hz
    obtain ⟨r, hr⟩ := hu.exists_right_inv
    obtain ⟨b, rfl⟩ := hmks r
    have h1 : a * b - 1 ∈ Ideal.span {F} := by
      rw [← hmk0, map_sub, map_mul, map_one, hr, sub_self]
    obtain ⟨g, hg⟩ := Ideal.mem_span_singleton'.mp h1
    have h2 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
      have h3 : (1 : A) = a * b - g * F := by rw [hg]; ring
      rw [h3]
      exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ ha) (Ideal.mul_mem_left _ _ hF)
    exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h2)
  have hNM : ∀ z : A ⧸ Ideal.span {F}, ¬ IsUnit z → z ∈ M := by
    intro z hz
    obtain ⟨d, rfl⟩ := hmks z
    apply hmkM
    by_contra hd
    exact hz ((IsLocalRing.notMem_maximalIdeal.mp hd).map mk)

  have hxM : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (by simp)
  have hyM : y ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (by simp)
  have hsM : s ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (by simp)
  have hQM : Q ≤ M := by
    rw [hQ, hM]
    apply Ideal.map_mono
    apply sup_le
    · rw [Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl
      · exact hxM
      · exact hyM
    · exact Ideal.pow_le_self two_ne_zero
  have hMMQ : ∀ z ∈ M, ∀ z' ∈ M, z * z' ∈ Q := by
    intro z hz z' hz'
    obtain ⟨a, ha, rfl⟩ := hMmk z hz
    obtain ⟨a', ha', rfl⟩ := hMmk z' hz'
    rw [← map_mul, hQ]
    apply Ideal.mem_map_of_mem
    apply Ideal.mem_sup_right
    rw [pow_two]
    exact Ideal.mul_mem_mul ha ha'
  have hXY : ∀ α β : A, mk (α * x + β * y) ∈ Q := by
    intro α β
    rw [hQ]
    apply Ideal.mem_map_of_mem
    apply Ideal.mem_sup_left
    exact Ideal.mem_span_pair.mpr ⟨α, β, rfl⟩

  have hE : ∀ o ∈ IsLocalRing.maximalIdeal O,
      e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) o) ∈ M := by
    intro o ho
    apply hNM
    intro hu
    have h1 : IsUnit (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) o) := by
      simpa using hu.map e.symm
    apply hker _ _ h1
    rw [hevι, Ideal.Quotient.eq_zero_iff_mem, pow_one]
    exact ho

  have happ : ∀ r : A ⧸ Ideal.span {F}, ∃ c : O,
      r - e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) ∈ M := by
    intro r
    obtain ⟨c, hc⟩ := Ideal.Quotient.mk_surjective (ev (e.symm r))
    refine ⟨c, hNM _ ?_⟩
    intro hu
    have h1 : IsUnit (e.symm r - algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) := by
      have h2 := hu.map e.symm
      rwa [map_sub, RingEquiv.symm_apply_apply] at h2
    apply hker _ _ h1
    rw [map_sub, hevι, hc, sub_self]

  have hdec : ∀ z ∈ M, ∃ α β ζ : A, mk (α * x + β * y) + mk ζ * mk s = z := by
    intro z hz
    obtain ⟨a, ha, rfl⟩ := hMmk z hz
    rw [← hspan] at ha
    obtain ⟨α, w, hw, rfl⟩ := Ideal.mem_span_insert.mp ha
    obtain ⟨β, ζ, rfl⟩ := Ideal.mem_span_pair.mp hw
    exact ⟨α, β, ζ, by simp only [map_add, map_mul]; ring⟩
  have hG3 : ∀ o ∈ IsLocalRing.maximalIdeal O, ∀ o' ∈ IsLocalRing.maximalIdeal O,
      e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (o * o')) ∈ Q := by
    intro o ho o' ho'
    rw [map_mul, map_mul]
    exact hMMQ _ (hE o ho) _ (hE o' ho')
  have hNmem : ∀ n : O, n ∈ Ideal.comap ((e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
      A ⧸ Ideal.span {F}).comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))) Q ⊓
      IsLocalRing.maximalIdeal O ↔
      e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n) ∈ Q ∧
        n ∈ IsLocalRing.maximalIdeal O := fun n => Iff.rfl
  have hG4 : ∃ t₀ ∈ IsLocalRing.maximalIdeal O, ∀ m ∈ IsLocalRing.maximalIdeal O, ∃ c : O,
      e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (m - c * t₀)) ∈ Q := by
    by_cases hcase : ∀ m ∈ IsLocalRing.maximalIdeal O,
        e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) m) ∈ Q
    · refine ⟨0, Ideal.zero_mem _, fun m hm => ⟨0, ?_⟩⟩
      rw [mul_zero, sub_zero]
      exact hcase m hm
    · simp only [not_forall, exists_prop] at hcase
      obtain ⟨t₀, ht₀, ht₀Q⟩ := hcase
      refine ⟨t₀, ht₀, fun m hm => ?_⟩
      obtain ⟨α₀, β₀, ζ₀, h₀⟩ := hdec _ (hE t₀ ht₀)
      have hζ₀ : ¬ ζ₀ ∈ IsLocalRing.maximalIdeal A := by
        intro hζ
        apply ht₀Q
        rw [← h₀]
        exact Ideal.add_mem _ (hXY α₀ β₀) (hMMQ _ (hmkM ζ₀ hζ) _ (hmkM s hsM))
      obtain ⟨ζ', hζ'⟩ := (IsLocalRing.notMem_maximalIdeal.mp hζ₀).exists_right_inv
      obtain ⟨α, β, ζ, h₁⟩ := hdec _ (hE m hm)
      obtain ⟨c, hc⟩ := happ (mk (ζ * ζ'))
      refine ⟨c, ?_⟩
      have hinv : mk ζ₀ * mk ζ' = 1 := by rw [← map_mul, hζ', map_one]
      have key : e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (m - c * t₀)) =
          mk (α * x + β * y) -
            e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) *
              mk (α₀ * x + β₀ * y) +
            ((mk (ζ * ζ') - e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c)) *
              mk ζ₀) * mk s := by
        simp only [map_sub, map_mul]
        linear_combination (-1 : A ⧸ Ideal.span {F}) * h₁ +
          e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) c) * h₀ -
          (mk ζ * mk s) * hinv
      rw [key]
      exact Ideal.add_mem _ (Ideal.sub_mem _ (hXY α β) (Ideal.mul_mem_left _ _ (hXY α₀ β₀)))
        (hMMQ _ (Ideal.mul_mem_right _ _ hc) _ (hmkM s hsM))
  obtain ⟨t₀, ht₀, hG4⟩ := hG4
  refine ⟨Ideal.comap ((e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
      A ⧸ Ideal.span {F}).comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))) Q ⊓
      IsLocalRing.maximalIdeal O, ?_, inf_le_right, ?_, t₀, ht₀, ?_⟩
  · intro n hn
    exact ((hNmem n).mp hn).1
  · intro o ho
    refine (hNmem o).mpr ⟨?_, Ideal.mul_le_right ho⟩
    have hle : IsLocalRing.maximalIdeal O * IsLocalRing.maximalIdeal O ≤
        Ideal.comap ((e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+*
          A ⧸ Ideal.span {F}).comp (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))) Q :=
      Ideal.mul_le.mpr (fun a ha b hb => hG3 a ha b hb)
    exact hle ho
  · intro m hm
    obtain ⟨c, hc⟩ := hG4 m hm
    exact ⟨c, (hNmem _).mpr ⟨hc, Ideal.sub_mem _ hm (Ideal.mul_mem_left _ c ht₀)⟩⟩

theorem wcpa_dj_rtsxs_wcc_chart_levels : ∀ (A : Type u) [CommRing A] (B : Type u) [CommRing B] (g : A →+* B) (r : ℕ) (t : Fin (r + 1) → A) (φ : Fin (r + 1) → B) (i : Fin (r + 1)), (∀ l, g (t l) = φ l) → (∀ (k : ℕ) (c : B), ∃ p : A, c - g p ∈ Ideal.map g (Ideal.span (Set.range t) ^ k)) → (∀ (k : ℕ) (p : A), g p ∈ Ideal.map g (Ideal.span (Set.range t) ^ k) → p ∈ Ideal.span (Set.range t) ^ k) → ∃ κ : wcpaDjChartAlg A t i →+* wcpaDjChartAlg B φ i, (∀ a : A, κ (algebraMap A _ a) = algebraMap B _ (g a)) ∧ (∀ (n : ℕ) (d : wcpaDjChartAlg B φ i), ∃ c, d - κ c ∈ Ideal.span {algebraMap B (wcpaDjChartAlg B φ i) (φ i) ^ n}) ∧ (∀ (n : ℕ) (c : wcpaDjChartAlg A t i), κ c ∈ Ideal.span {algebraMap B (wcpaDjChartAlg B φ i) (φ i) ^ n} → c ∈ Ideal.span {algebraMap A (wcpaDjChartAlg A t i) (t i) ^ n}) :=
by
  intro A _ B _ g r t φ i hφ hden hstr
  classical

  have hinv : ∀ (R : Type u) [CommRing R] (s : R),
      algebraMap R (Localization.Away s) s *
        IsLocalization.mk' (Localization.Away s) (1 : R)
          (⟨s, Submonoid.mem_powers _⟩ : Submonoid.powers s) = 1 := by
    intro R _ s
    have h := IsLocalization.mk'_spec' (Localization.Away s) (1 : R)
      (⟨s, Submonoid.mem_powers _⟩ : Submonoid.powers s)
    rw [map_one] at h
    exact h
  have hpow : ∀ (R : Type u) [CommRing R] (s : R) (j : ℕ),
      algebraMap R (Localization.Away s) s ^ j *
        IsLocalization.mk' (Localization.Away s) (1 : R)
          (⟨s, Submonoid.mem_powers _⟩ : Submonoid.powers s) ^ j = 1 := by
    intro R _ s j
    rw [← mul_pow, hinv R s, one_pow]

  have memC : ∀ (R : Type u) [CommRing R] (s : Fin (r + 1) → R) (z : Localization.Away (s i)),
      z ∈ wcpaDjChartAlg R s i ↔ ∃ (k : ℕ) (a : R), a ∈ Ideal.span (Set.range s) ^ k ∧
        z = algebraMap R _ a * IsLocalization.mk' (Localization.Away (s i)) (1 : R)
          (⟨s i, Submonoid.mem_powers _⟩ : Submonoid.powers (s i)) ^ k := by
    intro R _ s z
    have hp := hpow R (s i)
    obtain ⟨U, hU⟩ : ∃ U, IsLocalization.mk' (Localization.Away (s i)) (1 : R)
        (⟨s i, Submonoid.mem_powers _⟩ : Submonoid.powers (s i)) = U := ⟨_, rfl⟩
    rw [hU] at hp
    rw [hU]
    have hgen : ∀ l, IsLocalization.mk' (Localization.Away (s i)) (s l)
        (⟨s i, Submonoid.mem_powers _⟩ : Submonoid.powers (s i)) = algebraMap R _ (s l) * U := by
      intro l
      rw [← hU]
      exact IsLocalization.mk'_eq_mul_mk'_one _ _
    have hsI : s i ∈ Ideal.span (Set.range s) := Ideal.subset_span ⟨i, rfl⟩
    constructor
    · intro hz
      induction hz using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        refine ⟨1, s l, ?_, ?_⟩
        · rw [pow_one]; exact Ideal.subset_span ⟨l, rfl⟩
        · rw [pow_one]; exact hgen l
      | algebraMap a =>
        refine ⟨0, a, ?_, ?_⟩
        · rw [pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top
        · rw [pow_zero, mul_one]
      | add x y _ _ hx hy =>
        obtain ⟨k, a, ha, rfl⟩ := hx
        obtain ⟨m, b, hb, rfl⟩ := hy
        refine ⟨k + m, a * s i ^ m + b * s i ^ k, ?_, ?_⟩
        · refine Ideal.add_mem _ ?_ ?_
          · rw [pow_add]; exact Ideal.mul_mem_mul ha (Ideal.pow_mem_pow hsI m)
          · rw [add_comm k m, pow_add]; exact Ideal.mul_mem_mul hb (Ideal.pow_mem_pow hsI k)
        · simp only [map_add, map_mul, map_pow]
          linear_combination (-(algebraMap R (Localization.Away (s i)) a * U ^ k)) * hp m +
            (-(algebraMap R (Localization.Away (s i)) b * U ^ m)) * hp k
      | mul x y _ _ hx hy =>
        obtain ⟨k, a, ha, rfl⟩ := hx
        obtain ⟨m, b, hb, rfl⟩ := hy
        refine ⟨k + m, a * b, ?_, ?_⟩
        · rw [pow_add]; exact Ideal.mul_mem_mul ha hb
        · rw [map_mul]; ring
    · rintro ⟨k, a, ha, rfl⟩
      have hI : ∀ y ∈ Ideal.span (Set.range s),
          algebraMap R (Localization.Away (s i)) y * U ∈ wcpaDjChartAlg R s i := by
        intro y hy
        induction hy using Submodule.span_induction with
        | mem x hx =>
          obtain ⟨l, rfl⟩ := hx
          rw [← hgen l]
          exact Algebra.subset_adjoin ⟨l, rfl⟩
        | zero => rw [map_zero, zero_mul]; exact Subalgebra.zero_mem _
        | add x y _ _ hx hy => rw [map_add, add_mul]; exact Subalgebra.add_mem _ hx hy
        | smul c x _ hx =>
          rw [smul_eq_mul, map_mul, mul_assoc]
          exact Subalgebra.mul_mem _ (Subalgebra.algebraMap_mem _ c) hx
      induction k generalizing a with
      | zero => rw [pow_zero, mul_one]; exact Subalgebra.algebraMap_mem _ a
      | succ k ih =>
        rw [pow_succ] at ha
        refine Submodule.mul_induction_on
          (C := fun x => algebraMap R (Localization.Away (s i)) x * U ^ (k + 1) ∈
            wcpaDjChartAlg R s i) ha ?_ ?_
        · intro m hm n hn
          have h2 := Subalgebra.mul_mem _ (ih m hm) (hI n hn)
          convert h2 using 1
          rw [map_mul, pow_succ]; ring
        · intro x y hx hy
          simp only [map_add, add_mul]
          exact Subalgebra.add_mem _ hx hy

  have hJ : Ideal.span (Set.range φ) = Ideal.map g (Ideal.span (Set.range t)) := by
    have hφt : φ = g ∘ t := funext fun l => (hφ l).symm
    rw [hφt, Set.range_comp, Ideal.map_span]
  have hJk : ∀ k : ℕ, Ideal.span (Set.range φ) ^ k = Ideal.map g (Ideal.span (Set.range t) ^ k) := by
    intro k; rw [hJ, Ideal.map_pow]

  have hy : Submonoid.powers (t i) ≤ (Submonoid.powers (φ i)).comap g := by
    rw [Submonoid.powers_le, Submonoid.mem_comap, hφ i]; exact Submonoid.mem_powers _
  let L : Localization.Away (t i) →+* Localization.Away (φ i) :=
    IsLocalization.map (Localization.Away (φ i)) g hy
  have hLa : ∀ a, L (algebraMap A _ a) = algebraMap B _ (g a) := fun a => IsLocalization.map_eq _ _
  obtain ⟨uA, huA⟩ : ∃ u, IsLocalization.mk' (Localization.Away (t i)) (1 : A)
      (⟨t i, Submonoid.mem_powers _⟩ : Submonoid.powers (t i)) = u := ⟨_, rfl⟩
  obtain ⟨uB, huB⟩ : ∃ u, IsLocalization.mk' (Localization.Away (φ i)) (1 : B)
      (⟨φ i, Submonoid.mem_powers _⟩ : Submonoid.powers (φ i)) = u := ⟨_, rfl⟩
  have mA := memC A t
  have mB := memC B φ
  simp only [huA] at mA
  simp only [huB] at mB
  have hpA : ∀ j : ℕ, algebraMap A (Localization.Away (t i)) (t i) ^ j * uA ^ j = 1 := by
    intro j; rw [← huA]; exact hpow A (t i) j
  have hpB : ∀ j : ℕ, algebraMap B (Localization.Away (φ i)) (φ i) ^ j * uB ^ j = 1 := by
    intro j; rw [← huB]; exact hpow B (φ i) j
  have h1A : algebraMap A (Localization.Away (t i)) (t i) * uA = 1 := by
    rw [← huA]; exact hinv A (t i)
  have h1B : algebraMap B (Localization.Away (φ i)) (φ i) * uB = 1 := by
    rw [← huB]; exact hinv B (φ i)
  have hLu : L uA = uB := by
    have h2 : algebraMap B (Localization.Away (φ i)) (φ i) * L uA = 1 := by
      have h3 := congrArg L h1A
      rw [map_mul, hLa, hφ i, map_one] at h3
      exact h3
    linear_combination (-(L uA)) * h1B + uB * h2
  have hLf : ∀ (a : A) (k : ℕ), L (algebraMap A _ a * uA ^ k) = algebraMap B _ (g a) * uB ^ k := by
    intro a k; rw [map_mul, map_pow, hLa, hLu]
  have himg : ∀ x ∈ wcpaDjChartAlg A t i, L x ∈ wcpaDjChartAlg B φ i := by
    intro x hx
    obtain ⟨k, a, ha, rfl⟩ := (mA x).mp hx
    rw [hLf]
    exact (mB _).mpr ⟨k, g a, by rw [hJk]; exact Ideal.mem_map_of_mem g ha, rfl⟩
  let κ : wcpaDjChartAlg A t i →+* wcpaDjChartAlg B φ i :=
    (L.domRestrict (wcpaDjChartAlg A t i)).codRestrict (wcpaDjChartAlg B φ i)
      (fun x => himg x.1 x.2)
  have hκ : ∀ c : wcpaDjChartAlg A t i, (κ c : Localization.Away (φ i)) = L c := fun c => rfl
  refine ⟨κ, ?_, ?_, ?_⟩
  · intro a
    apply Subtype.ext
    rw [hκ]
    exact hLa a
  · intro n d
    obtain ⟨k, b, hb, hd⟩ := (mB d).mp d.2
    rw [hJk] at hb
    obtain ⟨p, hp⟩ := hden (k + n) b
    have hp' : b - g p ∈ Ideal.map g (Ideal.span (Set.range t) ^ k) :=
      Ideal.map_mono (Ideal.pow_le_pow_right (by omega)) hp
    have hgp : g p ∈ Ideal.map g (Ideal.span (Set.range t) ^ k) := by
      have := Ideal.sub_mem _ hb hp'
      rwa [sub_sub_cancel] at this
    have hpI := hstr k p hgp
    refine ⟨⟨algebraMap A _ p * uA ^ k, (mA _).mpr ⟨k, p, hpI, rfl⟩⟩, ?_⟩
    rw [Ideal.mem_span_singleton']
    refine ⟨⟨algebraMap B _ (b - g p) * uB ^ (k + n),
      (mB _).mpr ⟨k + n, b - g p, by rw [hJk]; exact hp, rfl⟩⟩, ?_⟩
    apply Subtype.ext
    simp only [Subalgebra.coe_mul, Subalgebra.coe_pow, Subalgebra.coe_algebraMap,
      Subalgebra.coe_sub, hκ]
    rw [hd, hLf, map_sub]
    linear_combination (algebraMap B (Localization.Away (φ i)) b -
      algebraMap B (Localization.Away (φ i)) (g p)) * uB ^ k * hpB n
  · intro n c hc
    obtain ⟨d', hd'⟩ := Ideal.mem_span_singleton'.mp hc
    obtain ⟨k, a, ha, hca⟩ := (mA c).mp c.2
    obtain ⟨m, b, hb, hdb⟩ := (mB d').mp d'.2
    have heq : algebraMap B (Localization.Away (φ i)) b * uB ^ m *
        algebraMap B (Localization.Away (φ i)) (φ i) ^ n =
        algebraMap B (Localization.Away (φ i)) (g a) * uB ^ k := by
      have := congrArg Subtype.val hd'
      simp only [Subalgebra.coe_mul, Subalgebra.coe_pow, Subalgebra.coe_algebraMap, hκ] at this
      rw [hdb, hca, hLf] at this
      exact this
    have heq2 : algebraMap B (Localization.Away (φ i)) (b * φ i ^ (n + k)) =
        algebraMap B (Localization.Away (φ i)) (g a * φ i ^ m) := by
      rw [map_mul, map_mul, map_pow, map_pow]
      linear_combination (algebraMap B (Localization.Away (φ i)) (φ i)) ^ (m + k) * heq +
        (-(algebraMap B (Localization.Away (φ i)) b *
          algebraMap B (Localization.Away (φ i)) (φ i) ^ (n + k))) * hpB m +
        (algebraMap B (Localization.Away (φ i)) (g a) *
          algebraMap B (Localization.Away (φ i)) (φ i) ^ m) * hpB k
    obtain ⟨⟨_, N, rfl⟩, hN⟩ :=
      (IsLocalization.eq_iff_exists (Submonoid.powers (φ i)) (Localization.Away (φ i))).mp heq2
    have hN' : φ i ^ N * (b * φ i ^ (n + k)) = φ i ^ N * (g a * φ i ^ m) := hN
    have hσJ : φ i ∈ Ideal.span (Set.range φ) := Ideal.subset_span ⟨i, rfl⟩
    have hmemK : g (a * t i ^ (N + m)) ∈
        Ideal.map g (Ideal.span (Set.range t) ^ (m + (N + n + k))) := by
      rw [← hJk]
      have e : g (a * t i ^ (N + m)) = b * φ i ^ (N + n + k) := by
        rw [map_mul, map_pow, hφ i]
        linear_combination -hN'
      rw [e, pow_add]
      exact Ideal.mul_mem_mul hb (Ideal.pow_mem_pow hσJ _)
    have hK := hstr _ _ hmemK
    rw [Ideal.mem_span_singleton']
    refine ⟨⟨algebraMap A _ (a * t i ^ (N + m)) * uA ^ (m + (N + n + k)),
      (mA _).mpr ⟨_, _, hK, rfl⟩⟩, ?_⟩
    apply Subtype.ext
    simp only [Subalgebra.coe_mul, Subalgebra.coe_pow, Subalgebra.coe_algebraMap]
    rw [hca, map_mul, map_pow]
    linear_combination (algebraMap A (Localization.Away (t i)) a * uA ^ k) * hpA (N + m + n)

theorem wcpa_dj_rtsxs_wcc_local_levels : ∀ (A : Type u) [CommRing A] (B : Type u) [CommRing B] (κ : A →+* B) (t : A) (Q : Ideal A) [Q.IsPrime], t ∈ Q → (∀ (n : ℕ) (d : B), ∃ c : A, d - κ c ∈ Ideal.span {κ t ^ n}) → (∀ (n : ℕ) (c : A), κ c ∈ Ideal.span {κ t ^ n} → c ∈ Ideal.span {t ^ n}) → ∃ (Q' : Ideal B) (_ : Q'.IsPrime) (h : Q = Ideal.comap κ Q'), κ t ∈ Q' ∧ (∀ (n : ℕ) (z : Localization.AtPrime Q'), ∃ y : Localization.AtPrime Q, z - Localization.localRingHom Q Q' κ h y ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q') ^ n) ∧ (∀ (n : ℕ) (y : Localization.AtPrime Q), Localization.localRingHom Q Q' κ h y ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q') ^ n → y ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ n) :=
by
  intro A _ B _ κ t Q _ ht hden hstr
  classical
  have hD : ∀ (n : ℕ) (d : B), ∃ (c : A) (b : B), d = κ c + κ t ^ n * b := by
    intro n d
    obtain ⟨c, hc⟩ := hden n d
    obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.mp hc
    exact ⟨c, b, by linear_combination -hb⟩

  have hK : ∀ (n : ℕ) (x : A), κ x ∈ Ideal.map κ Q ^ n → x ∈ Q ^ n := by
    intro n x hx
    let S : Ideal B :=
      { carrier := {w | ∃ q ∈ Q ^ n, ∃ b : B, w = κ q + κ t ^ n * b}
        add_mem' := by
          rintro _ _ ⟨q₁, hq₁, b₁, rfl⟩ ⟨q₂, hq₂, b₂, rfl⟩
          exact ⟨q₁ + q₂, Ideal.add_mem _ hq₁ hq₂, b₁ + b₂, by rw [map_add]; ring⟩
        zero_mem' := ⟨0, Ideal.zero_mem _, 0, by simp⟩
        smul_mem' := by
          rintro β _ ⟨q, hq, b, rfl⟩
          obtain ⟨c, b', hβ⟩ := hD n β
          refine ⟨c * q, Ideal.mul_mem_left _ c hq, κ c * b + b' * (κ q + κ t ^ n * b), ?_⟩
          rw [smul_eq_mul, hβ, map_mul]; ring }
    have hle : Ideal.map κ (Q ^ n) ≤ S := by
      rw [Ideal.map_le_iff_le_comap]
      intro q hq
      exact ⟨q, hq, 0, by simp⟩
    rw [← Ideal.map_pow] at hx
    obtain ⟨q, hq, b, hqb⟩ : ∃ q ∈ Q ^ n, ∃ b : B, κ x = κ q + κ t ^ n * b := hle hx
    have h1 : κ (x - q) ∈ Ideal.span {κ t ^ n} := by
      rw [map_sub, hqb, add_sub_cancel_left]
      exact Ideal.mem_span_singleton'.mpr ⟨b, mul_comm _ _⟩
    have h2 := hstr n (x - q) h1
    have h3 : Ideal.span {t ^ n} ≤ Q ^ n :=
      (Ideal.span_singleton_le_iff_mem _).mpr (Ideal.pow_mem_pow ht n)
    have h4 := (Q ^ n).add_mem (h3 h2) hq
    simpa using h4
  set Q' := Ideal.map κ Q with hQ'
  have hT : κ t ∈ Q' := Ideal.mem_map_of_mem κ ht
  have hK1 : ∀ x, κ x ∈ Q' → x ∈ Q := fun x hx => by simpa using hK 1 x (by simpa using hx)
  have hprime : Q'.IsPrime := by
    refine Ideal.IsPrime.mk ?_ ?_
    · rw [Ne, Ideal.eq_top_iff_one]
      intro h1
      have h2 := hK1 1 (by rw [map_one]; exact h1)
      exact (Ideal.IsPrime.ne_top ‹Q.IsPrime›) ((Ideal.eq_top_iff_one _).mpr h2)
    · intro d₁ d₂ hd
      obtain ⟨c₁, b₁, h₁⟩ := hD 1 d₁
      obtain ⟨c₂, b₂, h₂⟩ := hD 1 d₂
      rw [pow_one] at h₁ h₂
      have hc : κ (c₁ * c₂) ∈ Q' := by
        have e : κ (c₁ * c₂) = d₁ * d₂ - κ t * (b₁ * d₂ + d₁ * b₂ - κ t * b₁ * b₂) := by
          rw [map_mul, h₁, h₂]; ring
        rw [e]
        exact Q'.sub_mem hd (Q'.mul_mem_right _ hT)
      rcases (‹Q.IsPrime›).mem_or_mem (hK1 _ hc) with h | h
      · left
        rw [h₁]
        exact Q'.add_mem (Ideal.mem_map_of_mem κ h) (Q'.mul_mem_right _ hT)
      · right
        rw [h₂]
        exact Q'.add_mem (Ideal.mem_map_of_mem κ h) (Q'.mul_mem_right _ hT)
  haveI := hprime
  have hcomap : Q = Ideal.comap κ Q' :=
    le_antisymm Ideal.le_comap_map (fun x hx => hK1 x (Ideal.mem_comap.mp hx))
  refine ⟨Q', hprime, hcomap, hT, ?_, ?_⟩
  · intro n z
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · exact ⟨0, by simp⟩
    obtain ⟨⟨d, s⟩, hz⟩ := IsLocalization.mk'_surjective Q'.primeCompl z
    dsimp only at hz
    subst hz
    obtain ⟨c, β₁, hd⟩ := hD n d
    obtain ⟨u, β₂, hs⟩ := hD n (s : B)
    have hTn : κ t ^ n ∈ Q' := Q'.pow_mem_of_mem hT n hn
    have hu : u ∈ Q.primeCompl := by
      intro hu
      exact s.2 (by
        rw [hs]
        exact Q'.add_mem (Ideal.mem_comap.mp (hcomap.le hu)) (Q'.mul_mem_right _ hTn))
    refine ⟨IsLocalization.mk' (Localization.AtPrime Q) c ⟨u, hu⟩, ?_⟩
    rw [Localization.localRingHom_mk', ← IsLocalization.mk'_sub,
      ← Localization.AtPrime.map_eq_maximalIdeal, ← Ideal.map_pow,
      IsLocalization.mk'_mem_map_algebraMap_iff]
    refine ⟨1, Q'.primeCompl.one_mem, ?_⟩
    rw [one_mul]
    have e : d * κ u - κ c * (s : B) = κ t ^ n * (β₁ * κ u - β₂ * κ c) := by
      rw [hd, hs]; ring
    have hmem : d * κ u - κ c * (s : B) ∈ Q' ^ n := by
      rw [e]
      exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow hT n)
    exact hmem
  · intro n y hy
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · simp
    obtain ⟨⟨c, u⟩, hz⟩ := IsLocalization.mk'_surjective Q.primeCompl y
    dsimp only at hz
    subst hz
    rw [Localization.localRingHom_mk', ← Localization.AtPrime.map_eq_maximalIdeal,
      ← Ideal.map_pow, IsLocalization.mk'_mem_map_algebraMap_iff] at hy
    obtain ⟨m, hm, hmc⟩ := hy
    obtain ⟨u', β, hmd⟩ := hD n m
    have hTn : κ t ^ n ∈ Q' := Q'.pow_mem_of_mem hT n hn
    have hu' : u' ∈ Q.primeCompl := by
      intro hu'
      exact hm (by
        rw [hmd]
        exact Q'.add_mem (Ideal.mem_comap.mp (hcomap.le hu')) (Q'.mul_mem_right _ hTn))
    have hk : κ (u' * c) ∈ Q' ^ n := by
      have e : κ (u' * c) = m * κ c - κ t ^ n * (β * κ c) := by
        rw [map_mul, hmd]; ring
      rw [e]
      exact (Q' ^ n).sub_mem hmc (Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow hT n))
    have h1 := hK n _ hk
    rw [← Localization.AtPrime.map_eq_maximalIdeal, ← Ideal.map_pow,
      IsLocalization.mk'_mem_map_algebraMap_iff]
    exact ⟨u', hu', h1⟩

theorem wcpa_dj_rtsxs_wcc_completion_iso : ∀ (S T : Type u) [CommRing S] [CommRing T] (I : Ideal S) (J : Ideal T) (g : S →+* T), (∀ x ∈ I, g x ∈ J) → (∀ (n : ℕ) (z : T), ∃ y : S, z - g y ∈ J ^ n) → (∀ (n : ℕ) (y : S), g y ∈ J ^ n → y ∈ I ^ n) → ∃ θ : AdicCompletion I S ≃+* AdicCompletion J T, ∀ a : S, θ (algebraMap S (AdicCompletion I S) a) = algebraMap T (AdicCompletion J T) (g a) :=
by
  intro S T _ _ I J g hloc hden hstr

  have hev : ∀ (R : Type u) [CommRing R] (K : Ideal R) (m n : ℕ) (hle : m ≤ n)
      (x : AdicCompletion K R),
      Ideal.Quotient.factorPow K hle (AdicCompletion.evalₐ K n x) = AdicCompletion.evalₐ K m x := by
    intro R _ K m n hle x
    obtain ⟨f, rfl⟩ := AdicCompletion.mk_surjective K R x
    rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
    have h := AdicCompletion.AdicCauchySequence.mk_eq_mk hle f
    rw [Submodule.Quotient.eq] at h
    rw [Ideal.Quotient.factorPow, Ideal.Quotient.factor_mk, Ideal.Quotient.eq]
    simpa [Ideal.smul_eq_mul, Ideal.mul_top] using h

  have hmapI : Ideal.map g I ≤ J := by
    rw [Ideal.map_le_iff_le_comap]
    intro x hx
    exact Ideal.mem_comap.mpr (hloc x hx)
  have hle : ∀ n : ℕ, I ^ n ≤ Ideal.comap g (J ^ n) := by
    intro n
    rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
    exact Ideal.pow_right_mono hmapI n
  have hbij : ∀ n : ℕ, Function.Bijective (Ideal.quotientMap (J ^ n) g (hle n)) := by
    intro n
    constructor
    · rw [injective_iff_map_eq_zero]
      intro x hx
      obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
      rw [Ideal.quotientMap_mk, Ideal.Quotient.eq_zero_iff_mem] at hx
      exact Ideal.Quotient.eq_zero_iff_mem.mpr (hstr n y hx)
    · intro w
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective w
      obtain ⟨y, hy⟩ := hden n z
      refine ⟨Ideal.Quotient.mk _ y, ?_⟩
      rw [Ideal.quotientMap_mk, Ideal.Quotient.eq]
      have := (J ^ n).neg_mem hy
      rwa [neg_sub] at this
  let θ : ∀ n : ℕ, S ⧸ I ^ n ≃+* T ⧸ J ^ n := fun n => RingEquiv.ofBijective _ (hbij n)
  have hθmk : ∀ (n : ℕ) (y : S), θ n (Ideal.Quotient.mk (I ^ n) y) = Ideal.Quotient.mk (J ^ n) (g y) :=
    fun n y => Ideal.quotientMap_mk (I := J ^ n) (J := I ^ n) (f := g) (H := hle n) (x := y)
  have hθc : ∀ (m n : ℕ) (hmn : m ≤ n) (x : S ⧸ I ^ n),
      Ideal.Quotient.factorPow J hmn (θ n x) = θ m (Ideal.Quotient.factorPow I hmn x) := by
    intro m n hmn x
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [hθmk, Ideal.Quotient.factorPow, Ideal.Quotient.factorPow, Ideal.Quotient.factor_mk,
      Ideal.Quotient.factor_mk, hθmk]
  have hθc' : ∀ (m n : ℕ) (hmn : m ≤ n) (w : T ⧸ J ^ n),
      Ideal.Quotient.factorPow I hmn ((θ n).symm w) = (θ m).symm (Ideal.Quotient.factorPow J hmn w) := by
    intro m n hmn w
    apply (θ m).injective
    rw [← hθc, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply]
  let F : ∀ n : ℕ, AdicCompletion I S →+* T ⧸ J ^ n := fun n =>
    (θ n).toRingHom.comp (AdicCompletion.evalₐ I n).toRingHom
  let G : ∀ n : ℕ, AdicCompletion J T →+* S ⧸ I ^ n := fun n =>
    (θ n).symm.toRingHom.comp (AdicCompletion.evalₐ J n).toRingHom
  have hF : ∀ {m n : ℕ} (hmn : m ≤ n), (Ideal.Quotient.factorPow J hmn).comp (F n) = F m := by
    intro m n hmn
    ext x
    show Ideal.Quotient.factorPow J hmn (θ n (AdicCompletion.evalₐ I n x)) =
      θ m (AdicCompletion.evalₐ I m x)
    rw [hθc, hev]
  have hG : ∀ {m n : ℕ} (hmn : m ≤ n), (Ideal.Quotient.factorPow I hmn).comp (G n) = G m := by
    intro m n hmn
    ext x
    show Ideal.Quotient.factorPow I hmn ((θ n).symm (AdicCompletion.evalₐ J n x)) =
      (θ m).symm (AdicCompletion.evalₐ J m x)
    rw [hθc', hev]
  let Θ₀ : AdicCompletion I S →+* AdicCompletion J T := AdicCompletion.liftRingHom J F hF
  let Θ₁ : AdicCompletion J T →+* AdicCompletion I S := AdicCompletion.liftRingHom I G hG
  have hΘ₀ : ∀ (n : ℕ) (x : AdicCompletion I S),
      AdicCompletion.evalₐ J n (Θ₀ x) = θ n (AdicCompletion.evalₐ I n x) := by
    intro n x
    exact AdicCompletion.evalₐ_liftRingHom J F hF n x
  have hΘ₁ : ∀ (n : ℕ) (x : AdicCompletion J T),
      AdicCompletion.evalₐ I n (Θ₁ x) = (θ n).symm (AdicCompletion.evalₐ J n x) := by
    intro n x
    exact AdicCompletion.evalₐ_liftRingHom I G hG n x
  have h10 : Θ₁.comp Θ₀ = RingHom.id _ := by
    refine RingHom.ext fun x => ?_
    apply AdicCompletion.ext_evalₐ
    intro n
    show AdicCompletion.evalₐ I n (Θ₁ (Θ₀ x)) = AdicCompletion.evalₐ I n x
    rw [hΘ₁, hΘ₀, RingEquiv.symm_apply_apply]
  have h01 : Θ₀.comp Θ₁ = RingHom.id _ := by
    refine RingHom.ext fun x => ?_
    apply AdicCompletion.ext_evalₐ
    intro n
    show AdicCompletion.evalₐ J n (Θ₀ (Θ₁ x)) = AdicCompletion.evalₐ J n x
    rw [hΘ₀, hΘ₁, RingEquiv.apply_symm_apply]
  refine ⟨RingEquiv.ofRingHom Θ₀ Θ₁ h01 h10, ?_⟩
  intro a
  show Θ₀ _ = _
  apply AdicCompletion.ext_evalₐ
  intro n
  rw [hΘ₀, AdicCompletion.algebraMap_apply, AdicCompletion.algebraMap_apply,
    Algebra.algebraMap_self_apply, Algebra.algebraMap_self_apply,
    AdicCompletion.evalₐ_of, AdicCompletion.evalₐ_of, hθmk]

theorem wcpa_dj_rtsxs_w_chart_completion : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [IsDomain O] (R : Type u) [CommRing R] [IsLocalRing R] (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* R) (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i)) [P.IsPrime] (D : Type u) [CommRing D] [IsLocalRing D] (ψ : O →+* D) (Φ : D ≃+* Localization.AtPrime P), Ideal.span (Set.range f) = IsLocalRing.maximalIdeal O → f i ≠ 0 → P.comap (algebraMap O (wcpaDjChartAlg O f i)) = IsLocalRing.maximalIdeal O → (∀ a, Φ (ψ a) = algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) (algebraMap O (wcpaDjChartAlg O f i) a)) → Ideal.span (Set.range (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)))) = IsLocalRing.maximalIdeal R ∧ e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)) ∈ nonZeroDivisors R ∧ ∃ (P' : Ideal (wcpaDjChartAlg R (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)) (_ : P'.IsPrime) (D' : Type u) (_ : CommRing D') (_ : IsLocalRing D') (_ : IsNoetherianRing D') (Φ' : D' ≃+* Localization.AtPrime P') (ε : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+* AdicCompletion (IsLocalRing.maximalIdeal D') D'), P'.comap (algebraMap R (wcpaDjChartAlg R (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)) = IsLocalRing.maximalIdeal R ∧ ∀ a : O, ε (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) (ψ a)) = algebraMap D' (AdicCompletion (IsLocalRing.maximalIdeal D') D') (Φ'.symm (algebraMap (wcpaDjChartAlg R (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i) (Localization.AtPrime P') (algebraMap R (wcpaDjChartAlg R (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i) (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a))))) :=
by
  intro O _ _ _ _ R _ _ e r f i P _ D _ _ ψ Φ hspan hfi hPmax hΦ
  classical

  let ι : O →+* AdicCompletion (IsLocalRing.maximalIdeal O) O :=
    algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)
  let g : O →+* R := e.toRingHom.comp ι
  have hg : ∀ x, g x = e (ι x) := fun _ => rfl

  obtain ⟨hloc, hlh, hNoe, hFF, hmax, -⟩ := wcpa_dj_glt_st_completion_facts O
  obtain ⟨hden0, hstr0⟩ := wc_hnas_hs_completion_levels O
  haveI : IsNoetherianRing R := isNoetherianRing_of_ringEquiv _ e
  have hmapE : ∀ J : Ideal O, Ideal.map g J = Ideal.map e.toRingHom (Ideal.map ι J) :=
    fun J => (Ideal.map_map ι e.toRingHom).symm
  have hmapg : Ideal.map g (IsLocalRing.maximalIdeal O) = IsLocalRing.maximalIdeal R := by
    rw [hmapE]
    have h1 : Ideal.map ι (IsLocalRing.maximalIdeal O) =
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O) O) := hmax.symm
    rw [h1]
    apply IsLocalRing.eq_maximalIdeal
    exact Ideal.map_isMaximal_of_equiv e
  have hden : ∀ (k : ℕ) (c : R), ∃ p : O, c - g p ∈ Ideal.map g (Ideal.span (Set.range f) ^ k) := by
    intro k c
    obtain ⟨p, hp⟩ := hden0 k (e.symm c)
    refine ⟨p, ?_⟩
    have h1 : c - g p = e.toRingHom (e.symm c - ι p) := by
      simp [hg, map_sub]
    rw [h1, hspan, hmapE]
    exact Ideal.mem_map_of_mem _ hp
  have hstr : ∀ (k : ℕ) (p : O), g p ∈ Ideal.map g (Ideal.span (Set.range f) ^ k) →
      p ∈ Ideal.span (Set.range f) ^ k := by
    intro k p hp
    rw [hspan] at hp ⊢
    rw [hmapE] at hp
    apply hstr0 k p
    have h1 : ι p ∈ Ideal.comap e.toRingHom (Ideal.map e.toRingHom
        (Ideal.map ι (IsLocalRing.maximalIdeal O ^ k))) := Ideal.mem_comap.mpr hp
    have h2 : Ideal.comap e.toRingHom (Ideal.map e.toRingHom
        (Ideal.map ι (IsLocalRing.maximalIdeal O ^ k))) =
        Ideal.map ι (IsLocalRing.maximalIdeal O ^ k) :=
      Ideal.comap_map_of_bijective (f := e.toRingHom) e.bijective
    rw [h2] at h1
    exact h1
  have hnzd : e (ι (f i)) ∈ nonZeroDivisors R := by
    have hfnz : f i ∈ nonZeroDivisors O := mem_nonZeroDivisors_of_ne_zero hfi
    haveI : Module.Flat O (AdicCompletion (IsLocalRing.maximalIdeal O) O) := hFF.toFlat
    have hreg := Module.Flat.isSMulRegular_of_nonZeroDivisors
      (M := AdicCompletion (IsLocalRing.maximalIdeal O) O) hfnz
    have key : ∀ y : R, e (ι (f i)) * y = 0 → y = 0 := by
      intro y hy
      have h2 : (f i) • e.symm y = (f i) • (0 : AdicCompletion (IsLocalRing.maximalIdeal O) O) := by
        rw [smul_zero, Algebra.smul_def]
        apply e.injective
        rw [map_mul, e.apply_symm_apply, map_zero]
        exact hy
      have h3 : e.symm y = 0 := hreg h2
      rw [← e.apply_symm_apply y, h3, map_zero]
    rw [mem_nonZeroDivisors_iff]
    exact ⟨key, fun y hy => key y (by rw [mul_comm]; exact hy)⟩

  have hconc1 : Ideal.span (Set.range (fun l => e (ι (f l)))) = IsLocalRing.maximalIdeal R := by
    have h1 : Set.range (fun l => e (ι (f l))) = ⇑g '' Set.range f := Set.range_comp ⇑g f
    rw [h1, ← Ideal.map_span, hspan, hmapg]

  obtain ⟨κ, hκ, hdC, hsC⟩ := wcpa_dj_rtsxs_wcc_chart_levels O R g r f
    (fun l => e (ι (f l))) i (fun l => rfl) hden hstr

  have hfim : f i ∈ IsLocalRing.maximalIdeal O := hspan ▸ Ideal.subset_span ⟨i, rfl⟩
  have ht0P : algebraMap O (wcpaDjChartAlg O f i) (f i) ∈ P := by
    have : f i ∈ P.comap (algebraMap O (wcpaDjChartAlg O f i)) := by rw [hPmax]; exact hfim
    exact Ideal.mem_comap.mp this

  obtain ⟨P', hP', hPP', -, hdL, hsL⟩ := wcpa_dj_rtsxs_wcc_local_levels _ _ κ
    (algebraMap O (wcpaDjChartAlg O f i) (f i)) P ht0P
    (fun n d => by rw [hκ]; exact hdC n d)
    (fun n c h => hsC n c (by rw [hκ] at h; exact h))
  haveI := hP'

  have hg7 : P'.comap (algebraMap R (wcpaDjChartAlg R (fun l => e (ι (f l))) i)) =
      IsLocalRing.maximalIdeal R := by
    apply le_antisymm
    · exact IsLocalRing.le_maximalIdeal (Ideal.IsPrime.ne_top inferInstance)
    · rw [← hmapg, Ideal.map_le_iff_le_comap]
      intro m hm
      rw [Ideal.mem_comap, Ideal.mem_comap]
      have h1 : algebraMap O (wcpaDjChartAlg O f i) m ∈ P := by
        have : m ∈ P.comap (algebraMap O (wcpaDjChartAlg O f i)) := by rw [hPmax]; exact hm
        exact Ideal.mem_comap.mp this
      have h2 : algebraMap O (wcpaDjChartAlg O f i) m ∈ Ideal.comap κ P' := hPP' ▸ h1
      rw [← hκ m]
      exact Ideal.mem_comap.mp h2

  have hCnoeth : IsNoetherianRing (wcpaDjChartAlg R (fun l => e (ι (f l))) i) := by
    haveI : Algebra.FiniteType R (wcpaDjChartAlg R (fun l => e (ι (f l))) i) :=
      (Subalgebra.fg_iff_finiteType _).mp (Subalgebra.fg_def.mpr ⟨_, Set.finite_range _, rfl⟩)
    exact Algebra.FiniteType.isNoetherianRing R _
  have hLnoeth : IsNoetherianRing (Localization.AtPrime P') :=
    IsLocalization.isNoetherianRing P'.primeCompl _ hCnoeth

  haveI := Localization.isLocalHom_localRingHom P P' κ hPP'
  obtain ⟨θ, hθ⟩ := wcpa_dj_rtsxs_wcc_completion_iso D (Localization.AtPrime P')
    (IsLocalRing.maximalIdeal D) (IsLocalRing.maximalIdeal (Localization.AtPrime P'))
    ((Localization.localRingHom P P' κ hPP').comp Φ.toRingHom)
    (by
      intro x hx
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hx ⊢
      intro hu
      apply hx
      have h1 : IsUnit (Φ x) := isUnit_of_map_unit (Localization.localRingHom P P' κ hPP') _ hu
      simpa using h1.map Φ.symm)
    (by
      intro n z
      obtain ⟨y, hy⟩ := hdL n z
      refine ⟨Φ.symm y, ?_⟩
      show z - Localization.localRingHom P P' κ hPP' (Φ (Φ.symm y)) ∈ _
      rw [RingEquiv.apply_symm_apply]
      exact hy)
    (by
      intro n y hy
      have h1 := hsL n (Φ y) hy
      have h2 := Ideal.mem_map_of_mem Φ.symm h1
      rw [RingEquiv.symm_apply_apply, Ideal.map_pow] at h2
      have h3 : Ideal.map Φ.symm (IsLocalRing.maximalIdeal (Localization.AtPrime P)) =
          IsLocalRing.maximalIdeal D :=
        IsLocalRing.eq_maximalIdeal (Ideal.map_isMaximal_of_equiv Φ.symm)
      rwa [h3] at h2)

  refine ⟨hconc1, hnzd, P', hP', Localization.AtPrime P', inferInstance, inferInstance, hLnoeth,
    RingEquiv.refl _, θ, hg7, ?_⟩
  intro a
  rw [hθ]
  show algebraMap _ _ (Localization.localRingHom P P' κ hPP' (Φ (ψ a))) = _
  rw [hΦ a, Localization.localRingHom_to_map, hκ a]
  rfl

theorem wcpa_dj_rtsxs_u_rn_transfer : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [IsDomain O] (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s v : A) (w : ℕ) (e : AdicCompletion (IsLocalRing.maximalIdeal O) O ≃+* (A ⧸ Ideal.span {x * y - v * s ^ w})) (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i)) [P.IsPrime], Ideal.span (Set.range f) = IsLocalRing.maximalIdeal O → f i ≠ 0 → P.comap (algebraMap O (wcpaDjChartAlg O f i)) = IsLocalRing.maximalIdeal O → ¬ IsRegularLocalRing (Localization.AtPrime P) → (∀ (r' : ℕ) (φ : Fin (r' + 1) → A ⧸ Ideal.span {x * y - v * s ^ w}) (i' : Fin (r' + 1)) (P' : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i')) [P'.IsPrime], Ideal.span (Set.range φ) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) → φ i' ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) → P'.comap (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i')) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) → ¬ IsRegularLocalRing (Localization.AtPrime P') → ∀ m ∈ Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2), ∃ c ∈ P', (c : Localization.Away (φ i')) = IsLocalization.mk' (Localization.Away (φ i')) m (⟨φ i', Submonoid.mem_powers _⟩ : Submonoid.powers (φ i'))) → ∀ n : O, e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n) ∈ Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2) → ∃ c ∈ P, (c : Localization.Away (f i)) = IsLocalization.mk' (Localization.Away (f i)) n (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) :=
by
  intro O _ _ _ _ A _ _ x y s v w e r f i P _ h1 h2 h3 h4 H n hn
  classical

  have divA : ∀ (T : Type u) [CommRing T] (g : Fin (r + 1) → T) (c : wcpaDjChartAlg T g i) (m : T),
      (c : Localization.Away (g i)) = IsLocalization.mk' (Localization.Away (g i)) m
        (⟨g i, Submonoid.mem_powers _⟩ : Submonoid.powers (g i)) →
      c * algebraMap T (wcpaDjChartAlg T g i) (g i) = algebraMap T (wcpaDjChartAlg T g i) m := by
    intro T _ g c m hc
    apply Subtype.ext
    rw [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, Subalgebra.coe_algebraMap, hc]
    exact IsLocalization.mk'_spec _ _ _
  have nzdChart : ∀ (T : Type u) [CommRing T] (g : Fin (r + 1) → T) (z : wcpaDjChartAlg T g i),
      z * algebraMap T (wcpaDjChartAlg T g i) (g i) = 0 → z = 0 := by
    intro T _ g z hz
    have hz' := congrArg (fun t : wcpaDjChartAlg T g i => (t : Localization.Away (g i))) hz
    simp only [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, ZeroMemClass.coe_zero] at hz'
    exact ZeroMemClass.coe_eq_zero.mp
      ((IsLocalization.Away.algebraMap_isUnit (g i)).mul_left_eq_zero.mp hz')
  have nzdLoc : ∀ (T : Type u) [CommRing T] (Q : Ideal T) [Q.IsPrime] (d : T),
      (∀ z : T, z * d = 0 → z = 0) →
      ∀ y : Localization.AtPrime Q, y * algebraMap T (Localization.AtPrime Q) d = 0 → y = 0 := by
    intro T _ Q _ d hd y hy
    have hreg : IsSMulRegular (Localization.AtPrime Q) d :=
      Module.Flat.isSMulRegular_of_nonZeroDivisors (mem_nonZeroDivisors_iff_right.mpr hd)
    apply hreg
    simp only [smul_zero]
    rw [Algebra.smul_def, mul_comm]
    exact hy
  have nzdCompl : ∀ (T : Type u) [CommRing T] [IsNoetherianRing T] (I : Ideal T) (d : T),
      (∀ z : T, z * d = 0 → z = 0) →
      ∀ y : AdicCompletion I T, y * algebraMap T (AdicCompletion I T) d = 0 → y = 0 := by
    intro T _ _ I d hd y hy
    have hreg : IsSMulRegular (AdicCompletion I T) d :=
      Module.Flat.isSMulRegular_of_nonZeroDivisors (mem_nonZeroDivisors_iff_right.mpr hd)
    apply hreg
    simp only [smul_zero]
    rw [Algebra.smul_def, mul_comm]
    exact hy
  have nzdEquiv : ∀ (T T' : Type u) [CommRing T] [CommRing T'] (Ψ : T ≃+* T') (d : T'),
      (∀ z : T', z * d = 0 → z = 0) → ∀ z : T, z * Ψ.symm d = 0 → z = 0 := by
    intro T T' _ _ Ψ d hd z hz
    have h' : Ψ z * d = 0 := by
      have := congrArg Ψ hz
      rwa [map_mul, RingEquiv.apply_symm_apply, map_zero] at this
    exact Ψ.injective ((hd _ h').trans (map_zero Ψ).symm)

  obtain ⟨hOloc, -, -, -⟩ := wc_hnas_completion_local_complete O
  haveI hRloc : IsLocalRing (A ⧸ Ideal.span {x * y - v * s ^ w}) := e.isLocalRing
  have h𝔪R : IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * s ^ w}) =
      Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) :=
    (IsLocalRing.map_maximalIdeal_of_surjective _ Ideal.Quotient.mk_surjective).symm

  obtain ⟨D, iD1, iD2, Φ, -⟩ : ∃ (D : Type u) (_ : CommRing D) (_ : IsLocalRing D)
      (_ : D ≃+* Localization.AtPrime P), True :=
    ⟨Localization.AtPrime P, inferInstance, inferInstance, RingEquiv.refl _, trivial⟩
  obtain ⟨ψ, hψ⟩ : ∃ ψ : O →+* D, ∀ a, Φ (ψ a) = algebraMap (wcpaDjChartAlg O f i)
      (Localization.AtPrime P) (algebraMap O (wcpaDjChartAlg O f i) a) :=
    ⟨(Φ.symm : Localization.AtPrime P →+* D).comp ((algebraMap (wcpaDjChartAlg O f i)
      (Localization.AtPrime P)).comp (algebraMap O (wcpaDjChartAlg O f i))),
      fun a => Φ.apply_symm_apply _⟩
  haveI hCft : Algebra.FiniteType O (wcpaDjChartAlg O f i) :=
    (Subalgebra.fg_iff_finiteType _).mp (Subalgebra.fg_def.mpr ⟨_, Set.finite_range _, rfl⟩)
  haveI hCnoeth : IsNoetherianRing (wcpaDjChartAlg O f i) :=
    Algebra.FiniteType.isNoetherianRing O _
  haveI hLnoeth : IsNoetherianRing (Localization.AtPrime P) :=
    IsLocalization.isNoetherianRing P.primeCompl _ hCnoeth
  haveI hDnoeth : IsNoetherianRing D := isNoetherianRing_of_ringEquiv _ Φ.symm
  have hDnreg : ¬ IsRegularLocalRing D := fun hD =>
    h4 (@IsRegularLocalRing.of_ringEquiv D _ hD (Localization.AtPrime P) _ Φ)

  obtain ⟨hφspan, hφnzd, P', hP', D', iD'1, iD'2, iD'3, Φ', ε, hP'c, hcomp⟩ :=
    wcpa_dj_rtsxs_w_chart_completion O (A ⧸ Ideal.span {x * y - v * s ^ w}) e r f i P D ψ Φ
      h1 h2 h3 hψ

  have hP'nreg : ¬ IsRegularLocalRing (Localization.AtPrime P') := by
    intro hreg
    haveI h5 : IsRegularLocalRing D' :=
      @IsRegularLocalRing.of_ringEquiv (Localization.AtPrime P') _ hreg D' _ Φ'.symm
    haveI h6 : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal D') D') :=
      (wcpa_dj_rtsxs_completion_regular_iff D').mp h5
    haveI h7 : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal D) D) :=
      IsRegularLocalRing.of_ringEquiv ε.symm
    exact hDnreg ((wcpa_dj_rtsxs_completion_regular_iff D).mpr h7)

  obtain ⟨c', hc'P, hc'eq⟩ := H r
    (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i P'
    (hφspan.trans h𝔪R) hφnzd (hP'c.trans h𝔪R) hP'nreg _ hn

  have hc'mul := divA (A ⧸ Ideal.span {x * y - v * s ^ w})
    (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) c'
    (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n)) hc'eq
  have hmP' : algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
      (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
        (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
      (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n)) ∈ P' := by
    rw [← hc'mul]
    exact P'.mul_mem_right _ hc'P
  have hm𝔪 : e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n) ∈
      IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * s ^ w}) := by
    rw [← hP'c]
    exact hmP'
  have hn𝔪 : n ∈ IsLocalRing.maximalIdeal O := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hm𝔪
    exact hm𝔪 ((hu.map (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O))).map e)
  rw [← h1, Ideal.mem_span_range_iff_exists_fun] at hn𝔪
  obtain ⟨a, ha⟩ := hn𝔪

  obtain ⟨c, hcoe⟩ : ∃ c : wcpaDjChartAlg O f i, (c : Localization.Away (f i)) =
      IsLocalization.mk' (Localization.Away (f i)) n
        (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) := by
    refine ⟨∑ l, algebraMap O (wcpaDjChartAlg O f i) (a l) *
      ⟨IsLocalization.mk' (Localization.Away (f i)) (f l)
        (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)),
        Algebra.subset_adjoin ⟨l, rfl⟩⟩, ?_⟩
    rw [IsLocalization.eq_mk'_iff_mul_eq, ← ha]
    simp only [AddSubmonoidClass.coe_finset_sum, Subalgebra.coe_mul, Subalgebra.coe_algebraMap,
      Finset.sum_mul, map_sum, map_mul]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [mul_assoc, IsLocalization.mk'_spec]
  have hc := divA O f c n hcoe
  refine ⟨c, ?_, hcoe⟩

  obtain ⟨θ, hθ⟩ : ∃ θ : wcpaDjChartAlg O f i →+* AdicCompletion (IsLocalRing.maximalIdeal D') D',
      ∀ z, θ z = ε (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)
        (Φ.symm (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) z))) :=
    ⟨(ε : AdicCompletion (IsLocalRing.maximalIdeal D) D →+*
        AdicCompletion (IsLocalRing.maximalIdeal D') D').comp
      ((algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)).comp
        ((Φ.symm : Localization.AtPrime P →+* D).comp
          (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)))), fun _ => rfl⟩
  obtain ⟨Λ, hΛ⟩ : ∃ Λ : wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
        (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i →+*
        AdicCompletion (IsLocalRing.maximalIdeal D') D',
      ∀ z, Λ z = algebraMap D' (AdicCompletion (IsLocalRing.maximalIdeal D') D')
        (Φ'.symm (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
          (Localization.AtPrime P') z)) :=
    ⟨(algebraMap D' (AdicCompletion (IsLocalRing.maximalIdeal D') D')).comp
      ((Φ'.symm : Localization.AtPrime P' →+* D').comp
        (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
          (Localization.AtPrime P'))), fun _ => rfl⟩
  have hθa : ∀ a : O, θ (algebraMap O (wcpaDjChartAlg O f i) a) =
      Λ (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) a))) := by
    intro a
    rw [hθ, hΛ, ← hψ a, RingEquiv.symm_apply_apply]
    exact hcomp a
  have e1 : θ c * Λ (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)))) =
      Λ (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n))) := by
    rw [← hθa, ← hθa, ← map_mul, hc]
  have e2 : Λ c' * Λ (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)))) =
      Λ (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) n))) := by
    rw [← map_mul]
    exact congrArg Λ hc'mul

  have hd := nzdEquiv D' (Localization.AtPrime P') Φ'
    (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
      (Localization.AtPrime P')
      (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i)))))
    (nzdLoc (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i) P'
      (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
        (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
          (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l))) i)
        (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f i))))
      (nzdChart (A ⧸ Ideal.span {x * y - v * s ^ w})
        (fun l => e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (f l)))))
  have hcancel := nzdCompl D' (IsLocalRing.maximalIdeal D') _ hd
  have hXY : θ c = Λ c' := by
    rw [← sub_eq_zero]
    apply hcancel
    rw [← hΛ, sub_mul, e1, e2, sub_self]

  obtain ⟨-, -, hlocD', -⟩ := wc_hnas_completion_local_complete D'
  have hYnu : ¬ IsUnit (Λ c') := by
    intro hu
    rw [hΛ] at hu
    have hu1 := (isUnit_map_iff (algebraMap D' (AdicCompletion (IsLocalRing.maximalIdeal D') D'))
      _).mp hu
    have hu2 := hu1.map Φ'
    rw [RingEquiv.apply_symm_apply] at hu2
    have h3' := (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P') P'
      c').mpr hc'P
    exact mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp h3') hu2

  by_contra hcP
  have hu1 : IsUnit (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) c) := by
    by_contra hnu
    exact hcP ((IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P) P c).mp
      ((IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hnu)))
  have hu2 := ((hu1.map (Φ.symm : Localization.AtPrime P →+* D)).map
    (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))).map
      (ε : AdicCompletion (IsLocalRing.maximalIdeal D) D →+*
        AdicCompletion (IsLocalRing.maximalIdeal D') D')
  have hu3 : IsUnit (θ c) := by
    rw [hθ]
    exact hu2
  rw [hXY] at hu3
  exact hYnu hu3

theorem wcpa_dj_rtsxs_coord_nzd : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s v : A) (w : ℕ), IsUnit v → ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → 1 ≤ w → ∀ t ∈ ({x, y, s} : Set A), Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) t ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) :=
by
  intro A _ _ x y s v w hv hdim hspan hw t ht
  classical
  have QR := wc_rl_quot_regular wc_rl_quot_embdim
  have DOM := wc_rl_isDomain wc_rl_quot_embdim QR
  haveI hdom : IsDomain A := DOM A ‹IsRegularLocalRing A›
  have hn : Submodule.spanFinrank (IsLocalRing.maximalIdeal A) = 3 := by
    have h1 : (Submodule.spanFinrank (IsLocalRing.maximalIdeal A) : WithBot ℕ∞) =
        ringKrullDim A := IsRegularLocalRing.spanFinrank_maximalIdeal
    rw [← hdim] at h1
    exact_mod_cast h1
  have TG : ∀ a b : A, a ∈ IsLocalRing.maximalIdeal A → b ∈ IsLocalRing.maximalIdeal A →
      IsLocalRing.maximalIdeal A ≤ Ideal.span {a, b} → False := by
    intro a b ha hb hle
    have heq : IsLocalRing.maximalIdeal A = Ideal.span {a, b} := by
      refine le_antisymm hle ?_
      rw [Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with h | h
      · rw [h]; exact ha
      · rw [h]; exact hb
    have h1 : Submodule.spanFinrank (Ideal.span ({a, b} : Set A)) ≤ ({a, b} : Set A).ncard :=
      Submodule.spanFinrank_span_le_ncard_of_finite (Set.toFinite _)
    have h2 : ({a, b} : Set A).ncard ≤ 2 := by
      have := Set.ncard_insert_le a ({b} : Set A)
      rw [Set.ncard_singleton] at this
      exact this
    rw [← heq, hn] at h1
    omega
  have facts : ∀ τ π ρ : A, Ideal.span ({τ, π, ρ} : Set A) = IsLocalRing.maximalIdeal A →
      τ ∈ IsLocalRing.maximalIdeal A ∧ τ ∉ IsLocalRing.maximalIdeal A ^ 2 ∧ ¬ τ ∣ π ∧ ¬ τ ∣ ρ := by
    intro τ π ρ hs
    have hτ : τ ∈ IsLocalRing.maximalIdeal A := hs ▸ Ideal.subset_span (by simp)
    have hπ : π ∈ IsLocalRing.maximalIdeal A := hs ▸ Ideal.subset_span (by simp)
    have hρ : ρ ∈ IsLocalRing.maximalIdeal A := hs ▸ Ideal.subset_span (by simp)
    refine ⟨hτ, ?_, ?_, ?_⟩
    · intro h2
      apply TG π ρ hπ hρ
      have hle : IsLocalRing.maximalIdeal A ≤
          Ideal.span {π, ρ} ⊔ IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A := by
        calc IsLocalRing.maximalIdeal A = Ideal.span ({τ, π, ρ} : Set A) := hs.symm
          _ ≤ Ideal.span {π, ρ} ⊔ IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A := by
            rw [Ideal.span_le]
            intro z hz
            simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
            rcases hz with h | h | h
            · rw [h]
              apply Submodule.mem_sup_right
              rw [Ideal.smul_eq_mul, ← sq]
              exact h2
            · rw [h]; exact Submodule.mem_sup_left (Ideal.subset_span (by simp))
            · rw [h]; exact Submodule.mem_sup_left (Ideal.subset_span (by simp))
      exact Submodule.le_of_le_smul_of_le_jacobson_bot
        (IsNoetherian.noetherian (IsLocalRing.maximalIdeal A))
        (IsLocalRing.maximalIdeal_le_jacobson ⊥) hle
    · intro hd
      apply TG τ ρ hτ hρ
      calc IsLocalRing.maximalIdeal A = Ideal.span ({τ, π, ρ} : Set A) := hs.symm
        _ ≤ Ideal.span {τ, ρ} := by
          rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with h | h | h
          · rw [h]; exact Ideal.subset_span (by simp)
          · obtain ⟨c, hc⟩ := hd
            rw [h, hc]; exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
          · rw [h]; exact Ideal.subset_span (by simp)
    · intro hd
      apply TG τ π hτ hπ
      calc IsLocalRing.maximalIdeal A = Ideal.span ({τ, π, ρ} : Set A) := hs.symm
        _ ≤ Ideal.span {τ, π} := by
          rw [Ideal.span_le]
          intro z hz
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
          rcases hz with h | h | h
          · rw [h]; exact Ideal.subset_span (by simp)
          · rw [h]; exact Ideal.subset_span (by simp)
          · obtain ⟨c, hc⟩ := hd
            rw [h, hc]; exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
  have prime_of : ∀ τ : A, τ ∈ IsLocalRing.maximalIdeal A → τ ∉ IsLocalRing.maximalIdeal A ^ 2 →
      Prime τ := by
    intro τ hτ h2
    have hne : τ ≠ 0 := fun h0 => h2 (h0 ▸ Submodule.zero_mem _)
    have hreg : IsRegularLocalRing (A ⧸ Ideal.span {τ}) := (QR A ‹_› τ hτ h2).1
    haveI := hreg
    haveI : IsDomain (A ⧸ Ideal.span {τ}) := DOM _ hreg
    have hpr : (Ideal.span {τ}).IsPrime := (Ideal.Quotient.isDomain_iff_prime _).mp inferInstance
    exact (Ideal.span_singleton_prime hne).mp hpr
  have nzd_of : ∀ τ : A, Prime τ → ¬ τ ∣ (x * y - v * s ^ w) →
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) τ ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) := by
    intro τ hp hnd
    have key : ∀ z, z * Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) τ = 0 → z = 0 := by
      intro z hz
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective z
      rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton] at hz
      rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton]
      obtain ⟨c, hc⟩ := hz
      have hτc : τ ∣ c := by
        have : τ ∣ (x * y - v * s ^ w) * c := ⟨a, by rw [← hc]; ring⟩
        exact (hp.dvd_or_dvd this).resolve_left hnd
      obtain ⟨c', rfl⟩ := hτc
      refine ⟨c', ?_⟩
      have h0 : (a - (x * y - v * s ^ w) * c') * τ = 0 := by rw [sub_mul, hc]; ring
      have := (mul_eq_zero.mp h0).resolve_right hp.ne_zero
      exact sub_eq_zero.mp this
    refine mem_nonZeroDivisors_iff.mpr ⟨?_, ?_⟩ <;> intro z hz
    · first
        | exact key z hz
        | exact key z ((mul_comm _ _).trans hz)
    · first
        | exact key z hz
        | exact key z ((mul_comm _ _).trans hz)
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at ht
  rcases ht with h | h | h
  · rw [h]
    obtain ⟨hxm, hx2, _, hxs⟩ := facts x y s hspan
    have hp := prime_of x hxm hx2
    apply nzd_of x hp
    intro hd
    apply hxs
    have h1 : x ∣ v * s ^ w := by
      have e : v * s ^ w = x * y - (x * y - v * s ^ w) := by ring
      rw [e]; exact dvd_sub (dvd_mul_right x y) hd
    have h2 : x ∣ s ^ w := (IsUnit.dvd_mul_left hv).mp h1
    exact hp.dvd_of_dvd_pow h2
  · rw [h]
    have hs' : Ideal.span ({y, x, s} : Set A) = IsLocalRing.maximalIdeal A := by
      rw [Set.insert_comm]; exact hspan
    obtain ⟨hym, hy2, _, hys⟩ := facts y x s hs'
    have hp := prime_of y hym hy2
    apply nzd_of y hp
    intro hd
    apply hys
    have h1 : y ∣ v * s ^ w := by
      have e : v * s ^ w = x * y - (x * y - v * s ^ w) := by ring
      rw [e]; exact dvd_sub (dvd_mul_left y x) hd
    have h2 : y ∣ s ^ w := (IsUnit.dvd_mul_left hv).mp h1
    exact hp.dvd_of_dvd_pow h2
  · rw [h]
    have hs' : Ideal.span ({s, x, y} : Set A) = IsLocalRing.maximalIdeal A := by
      have e : ({s, x, y} : Set A) = {x, y, s} := by
        ext z
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff]
        tauto
      rw [e]; exact hspan
    obtain ⟨hsm, hs2, hsx, hsy⟩ := facts s x y hs'
    have hp := prime_of s hsm hs2
    apply nzd_of s hp
    intro hd
    have h1 : s ∣ x * y := by
      have e : x * y = (x * y - v * s ^ w) + v * s ^ w := by ring
      rw [e]
      exact dvd_add hd (dvd_mul_of_dvd_right (dvd_pow_self s (by omega)) v)
    rcases hp.dvd_or_dvd h1 with h3 | h3
    · exact hsx h3
    · exact hsy h3

theorem wcpa_dj_rtsxs_axis_chart_regular : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s v : A) (w : ℕ) (j : Fin 3) (Q : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] j)) [Q.IsPrime] (D : Type u) [CommRing D] (Φ : D ≃+* Localization.AtPrime Q), IsUnit v → ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → 2 ≤ w → j ≠ 2 → Q.comap (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] j)) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) → IsRegularLocalRing D :=
by
  intro A _ _ x y s v w j Q hQp D _ Φ hv hdim hspan hw hj hQ
  classical
  have s1 : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (a b s : A),
      ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A →
      Ideal.span ({a, b, s} : Set A) = IsLocalRing.maximalIdeal A →
      IsDomain A ∧ a ≠ 0 ∧ (Ideal.span {a}).IsPrime ∧ s ∉ Ideal.span {a} ∧
        (Ideal.span {a, s}).IsPrime ∧ b ∉ Ideal.span {a, s} := by
    intro A _ _ a b s hdim hspan
    classical
    have QR := wc_rl_quot_regular wc_rl_quot_embdim
    have DOM := wc_rl_isDomain wc_rl_quot_embdim QR
    haveI hdom : IsDomain A := DOM A ‹IsRegularLocalRing A›
    have hn : Submodule.spanFinrank (IsLocalRing.maximalIdeal A) = 3 := by
      have h1 : (Submodule.spanFinrank (IsLocalRing.maximalIdeal A) : WithBot ℕ∞) =
          ringKrullDim A := IsRegularLocalRing.spanFinrank_maximalIdeal
      rw [← hdim] at h1
      exact_mod_cast h1
    have TG : ∀ p q : A, p ∈ IsLocalRing.maximalIdeal A → q ∈ IsLocalRing.maximalIdeal A →
        IsLocalRing.maximalIdeal A ≤ Ideal.span {p, q} → False := by
      intro p q hp hq hle
      have heq : IsLocalRing.maximalIdeal A = Ideal.span {p, q} := by
        refine le_antisymm hle ?_
        rw [Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rcases hz with h | h
        · rw [h]; exact hp
        · rw [h]; exact hq
      have h1 : Submodule.spanFinrank (Ideal.span ({p, q} : Set A)) ≤ ({p, q} : Set A).ncard :=
        Submodule.spanFinrank_span_le_ncard_of_finite (Set.toFinite _)
      have h2 : ({p, q} : Set A).ncard ≤ 2 := by
        have := Set.ncard_insert_le p ({q} : Set A)
        rw [Set.ncard_singleton] at this
        exact this
      rw [← heq, hn] at h1
      omega
    have NAK : ∀ p q : A, p ∈ IsLocalRing.maximalIdeal A → q ∈ IsLocalRing.maximalIdeal A →
        IsLocalRing.maximalIdeal A ≤ Ideal.span {p, q} ⊔
          IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A → False := fun p q hp hq hle =>
      TG p q hp hq (Submodule.le_of_le_smul_of_le_jacobson_bot
        (IsNoetherian.noetherian (IsLocalRing.maximalIdeal A))
        (IsLocalRing.maximalIdeal_le_jacobson ⊥) hle)
    have ha : a ∈ IsLocalRing.maximalIdeal A := hspan ▸ Ideal.subset_span (by simp)
    have hb : b ∈ IsLocalRing.maximalIdeal A := hspan ▸ Ideal.subset_span (by simp)
    have hs : s ∈ IsLocalRing.maximalIdeal A := hspan ▸ Ideal.subset_span (by simp)
    have hspan_le : ∀ J : Ideal A, a ∈ J → b ∈ J → s ∈ J → IsLocalRing.maximalIdeal A ≤ J := by
      intro J h1 h2 h3
      rw [← hspan, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with h | h | h <;> rw [h] <;> assumption
    have ha2 : a ∉ IsLocalRing.maximalIdeal A ^ 2 := by
      intro h2
      apply NAK b s hb hs
      apply hspan_le
      · apply Submodule.mem_sup_right
        rw [Ideal.smul_eq_mul, ← sq]; exact h2
      · exact Submodule.mem_sup_left (Ideal.subset_span (by simp))
      · exact Submodule.mem_sup_left (Ideal.subset_span (by simp))
    have hregA : IsRegularLocalRing (A ⧸ Ideal.span {a}) := (QR A ‹_› a ha ha2).1
    haveI := hregA
    have hpa : (Ideal.span {a}).IsPrime := by
      haveI : IsDomain (A ⧸ Ideal.span {a}) := DOM _ hregA
      exact (Ideal.Quotient.isDomain_iff_prime _).mp inferInstance
    have ha0 : a ≠ 0 := fun h0 => ha2 (h0 ▸ Submodule.zero_mem _)
    have hsa : s ∉ Ideal.span {a} := by
      intro h
      apply TG a b ha hb
      apply hspan_le
      · exact Ideal.subset_span (by simp)
      · exact Ideal.subset_span (by simp)
      · exact Ideal.span_mono (by simp) h
    have hbas : b ∉ Ideal.span {a, s} := by
      intro h
      apply TG a s ha hs
      apply hspan_le
      · exact Ideal.subset_span (by simp)
      · exact h
      · exact Ideal.subset_span (by simp)
    refine ⟨hdom, ha0, hpa, hsa, ?_, hbas⟩
    set qa := Ideal.Quotient.mk (Ideal.span {a}) with hqa
    have hqs : Function.Surjective qa := Ideal.Quotient.mk_surjective
    have hmap : Ideal.map qa (IsLocalRing.maximalIdeal A) =
        IsLocalRing.maximalIdeal (A ⧸ Ideal.span {a}) :=
      IsLocalRing.map_maximalIdeal_of_surjective qa hqs
    have hcm : ∀ J : Ideal A, Ideal.comap qa (Ideal.map qa J) = J ⊔ Ideal.span {a} := by
      intro J
      rw [Ideal.comap_map_of_surjective' qa hqs, hqa, Ideal.mk_ker]
    have hms : qa s ∈ IsLocalRing.maximalIdeal (A ⧸ Ideal.span {a}) := by
      rw [← hmap]; exact Ideal.mem_map_of_mem _ hs
    have hms2 : qa s ∉ IsLocalRing.maximalIdeal (A ⧸ Ideal.span {a}) ^ 2 := by
      intro h
      rw [← hmap, ← Ideal.map_pow] at h
      have h' : s ∈ Ideal.comap qa (Ideal.map qa (IsLocalRing.maximalIdeal A ^ 2)) := h
      rw [hcm] at h'
      apply NAK a b ha hb
      apply hspan_le
      · exact Submodule.mem_sup_left (Ideal.subset_span (by simp))
      · exact Submodule.mem_sup_left (Ideal.subset_span (by simp))
      · have hle : IsLocalRing.maximalIdeal A ^ 2 ⊔ Ideal.span {a} ≤
            Ideal.span {a, b} ⊔ IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A := by
          apply sup_le
          · rw [Ideal.smul_eq_mul, ← sq]; exact le_sup_right
          · exact le_sup_of_le_left (Ideal.span_mono (by simp))
        exact hle h'
    have hreg2 := (QR _ inferInstance (qa s) hms hms2).1
    haveI := hreg2
    haveI : IsDomain ((A ⧸ Ideal.span {a}) ⧸ Ideal.span {qa s}) := DOM _ hreg2
    have hp : (Ideal.span {qa s}).IsPrime := (Ideal.Quotient.isDomain_iff_prime _).mp inferInstance
    have heq : Ideal.span ({a, s} : Set A) = (Ideal.span {qa s}).comap qa := by
      rw [show Ideal.span {qa s} = Ideal.map qa (Ideal.span {s}) by
        rw [Ideal.map_span, Set.image_singleton], hcm, Ideal.span_insert, sup_comm]
    rw [heq]
    exact Ideal.comap_isPrime _ _
  have s2 : ∀ (A : Type u) [CommRing A] [IsDomain A] (a b s v : A) (w' : ℕ),
      a ≠ 0 → (Ideal.span {a}).IsPrime → s ∉ Ideal.span {a} →
      (Ideal.span {a, s}).IsPrime → b ∉ Ideal.span {a, s} →
      ∀ P : Polynomial A, Polynomial.C a * P ∈ Ideal.span ({Polynomial.C a * Polynomial.X - Polynomial.C s, Polynomial.C b - Polynomial.C v * Polynomial.C a ^ (w' + 1) * Polynomial.X ^ (w' + 2)} : Set (Polynomial A)) → P ∈ Ideal.span ({Polynomial.C a * Polynomial.X - Polynomial.C s, Polynomial.C b - Polynomial.C v * Polynomial.C a ^ (w' + 1) * Polynomial.X ^ (w' + 2)} : Set (Polynomial A)) := by
    intro A _ _ a b s v w' ha0 hpa hsa hpas hbas
    intro P hP
    open Polynomial in
    have hp1 : (Ideal.span {C a} : Ideal (Polynomial A)).IsPrime := by
      haveI := hpa
      have : (Ideal.map (C : A →+* Polynomial A) (Ideal.span {a})).IsPrime := Ideal.isPrime_map_C_of_isPrime
      rwa [Ideal.map_span, Set.image_singleton] at this
    open Polynomial in
    have hp2 : (Ideal.span {C a, C s} : Ideal (Polynomial A)).IsPrime := by
      haveI := hpas
      have : (Ideal.map (C : A →+* Polynomial A) (Ideal.span {a, s})).IsPrime := Ideal.isPrime_map_C_of_isPrime
      rwa [Ideal.map_span, Set.image_insert_eq, Set.image_singleton] at this
    open Polynomial in
    have hCs : C s ∉ (Ideal.span {C a} : Ideal (Polynomial A)) := by
      intro h
      rw [← Set.image_singleton, ← Ideal.map_span, Ideal.mem_map_C_iff] at h
      have := h 0
      rw [coeff_C_zero] at this
      exact hsa this
    open Polynomial in
    have hCb : C b ∉ (Ideal.span {C a, C s} : Ideal (Polynomial A)) := by
      intro h
      rw [← Set.image_singleton, ← Set.image_insert_eq, ← Ideal.map_span, Ideal.mem_map_C_iff] at h
      have := h 0
      rw [coeff_C_zero] at this
      exact hbas this
    open Polynomial in
    have hle12 : (Ideal.span {C a} : Ideal (Polynomial A)) ≤ Ideal.span {C a, C s} :=
      Ideal.span_mono (by simp)
    open Polynomial in
    obtain ⟨α, β, hrel⟩ := Ideal.mem_span_pair.mp hP
    open Polynomial in
    have h1 : β * C b - α * C s ∈ (Ideal.span {C a} : Ideal (Polynomial A)) := by
      rw [Ideal.mem_span_singleton']
      refine ⟨P - α * X + β * C v * C a ^ w' * X ^ (w' + 2), ?_⟩
      linear_combination (-1 : Polynomial A) * hrel
    open Polynomial in
    have h2 : β ∈ (Ideal.span {C a, C s} : Ideal (Polynomial A)) := by
      have : β * C b ∈ (Ideal.span {C a, C s} : Ideal (Polynomial A)) := by
        have e : β * C b = (β * C b - α * C s) + α * C s := by ring
        rw [e]
        exact Ideal.add_mem _ (hle12 h1) (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
      exact (hp2.mem_or_mem this).resolve_right hCb
    open Polynomial in
    obtain ⟨β₁, β₂, hβ⟩ := Ideal.mem_span_pair.mp h2
    open Polynomial in
    have h3 : β₂ * C b - α ∈ (Ideal.span {C a} : Ideal (Polynomial A)) := by
      have : C s * (β₂ * C b - α) ∈ (Ideal.span {C a} : Ideal (Polynomial A)) := by
        have e : C s * (β₂ * C b - α) = (β * C b - α * C s) - C a * (β₁ * C b) := by
          rw [← hβ]; ring
        rw [e]
        exact Ideal.sub_mem _ h1 (Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
      exact (hp1.mem_or_mem this).resolve_left hCs
    open Polynomial in
    obtain ⟨α₁, hα⟩ := Ideal.mem_span_singleton'.mp h3
    open Polynomial in
    have hCa : (C a : Polynomial A) ≠ 0 := by rwa [Ne, C_eq_zero]
    open Polynomial in
    have key : C a * P = C a * (-α₁ * (C a * X - C s) + β₁ * (C b - C v * C a ^ (w' + 1) * X ^ (w' + 2)) +
        β₂ * (X * (C b - C v * C a ^ (w' + 1) * X ^ (w' + 2)) + C v * C a ^ w' * X ^ (w' + 2) * (C a * X - C s))) := by
      linear_combination (-1 : Polynomial A) * hrel - (C b - C v * C a ^ (w' + 1) * X ^ (w' + 2)) * hβ +
        (C a * X - C s) * hα
    open Polynomial in
    rw [mul_left_cancel₀ hCa key]
    open Polynomial in
    refine Ideal.add_mem _ (Ideal.add_mem _ (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
      (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))) (Ideal.mul_mem_left _ _
        (Ideal.add_mem _ (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
          (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))))
  have s5 : ∀ (B : Type u) [CommRing B] (t : B) (P : Ideal B) [P.IsPrime], t ∈ P →
      ∃ (P' : Ideal (B ⧸ Ideal.span {t})) (_ : P'.IsPrime),
        P'.comap (Ideal.Quotient.mk (Ideal.span {t})) = P ∧
        Nonempty ((Localization.AtPrime P ⧸ Ideal.span {algebraMap B (Localization.AtPrime P) t}) ≃+*
          Localization.AtPrime P') := by
    intro B _ t P _ htP
    set q := Ideal.Quotient.mk (Ideal.span {t}) with hqdef
    have hqs : Function.Surjective q := Ideal.Quotient.mk_surjective
    have hker : RingHom.ker q ≤ P := by
      rw [hqdef, Ideal.mk_ker, Ideal.span_le, Set.singleton_subset_iff]; exact htP
    haveI hP' : (Ideal.map q P).IsPrime := Ideal.map_isPrime_of_surjective hqs hker
    have hcomap : (Ideal.map q P).comap q = P := by
      rw [Ideal.comap_map_of_surjective' q hqs]; exact sup_eq_left.mpr hker
    refine ⟨Ideal.map q P, hP', hcomap, ?_⟩
    set L := Localization.AtPrime P
    set L' := Localization.AtPrime (Ideal.map q P)
    set φ₀ : L →+* L' := Localization.localRingHom P (Ideal.map q P) q hcomap.symm with hφ₀
    have hφ₀t : φ₀ (algebraMap B L t) = 0 := by
      rw [hφ₀, Localization.localRingHom_to_map]
      have : q t = 0 := by rw [hqdef, Ideal.Quotient.eq_zero_iff_mem]; exact Ideal.mem_span_singleton_self t
      rw [this, map_zero]
    set φ : (L ⧸ Ideal.span {algebraMap B L t}) →+* L' :=
      Ideal.Quotient.lift (Ideal.span {algebraMap B L t}) φ₀ (by
        intro a ha
        obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
        rw [map_mul, hφ₀t, mul_zero]) with hφ
    set g : (B ⧸ Ideal.span {t}) →+* (L ⧸ Ideal.span {algebraMap B L t}) :=
      Ideal.quotientMap (Ideal.span {algebraMap B L t}) (algebraMap B L) (by
        rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.mem_comap.mpr (Ideal.mem_span_singleton_self _)) with hg
    have hgq : ∀ b : B, g (q b) = Ideal.Quotient.mk _ (algebraMap B L b) := by
      intro b; rw [hg, hqdef, Ideal.quotientMap_mk]
    have hgu : ∀ y : (Ideal.map q P).primeCompl, IsUnit (g y) := by
      rintro ⟨y, hy⟩
      obtain ⟨b, rfl⟩ := hqs y
      have hb : b ∉ P := by
        intro hb; apply hy; rw [← hcomap] at hb; exact hb
      show IsUnit (g (q b))
      rw [hgq]
      exact (IsLocalization.map_units L (⟨b, hb⟩ : P.primeCompl)).map _
    set ψ : L' →+* (L ⧸ Ideal.span {algebraMap B L t}) :=
      IsLocalization.lift (M := (Ideal.map q P).primeCompl) (S := L') hgu with hψ
    have hψq : ∀ b : B, ψ (algebraMap _ L' (q b)) = Ideal.Quotient.mk _ (algebraMap B L b) := by
      intro b; rw [hψ, IsLocalization.lift_eq, hgq]
    have hφq : ∀ b : B, φ (Ideal.Quotient.mk _ (algebraMap B L b)) = algebraMap _ L' (q b) := by
      intro b; rw [hφ, Ideal.Quotient.lift_mk, hφ₀, Localization.localRingHom_to_map]
    refine ⟨RingEquiv.ofRingHom φ ψ ?_ ?_⟩
    · apply IsLocalization.ringHom_ext (Ideal.map q P).primeCompl (S := L')
      apply Ideal.Quotient.ringHom_ext
      ext b
      simp only [RingHom.comp_apply, RingHom.id_apply]
      show φ (ψ (algebraMap _ L' (q b))) = algebraMap _ L' (q b)
      rw [hψq, hφq]
    · apply Ideal.Quotient.ringHom_ext
      apply IsLocalization.ringHom_ext P.primeCompl (S := L)
      ext b
      simp only [RingHom.comp_apply, RingHom.id_apply]
      rw [hφq, hψq]
  have s6 : ∀ (B B' : Type u) [CommRing B] [CommRing B'] (e : B ≃+* B') (P : Ideal B') [P.IsPrime]
      (P₀ : Ideal B) [P₀.IsPrime], P₀ = P.comap e →
      ∃ _ : Localization.AtPrime P₀ ≃+* Localization.AtPrime P, True := by
    intro B B' _ _ e P _ P₀ _ h
    subst h
    refine ⟨IsLocalization.ringEquivOfRingEquiv (M := (P.comap e).primeCompl) (T := P.primeCompl)
      (Localization.AtPrime (P.comap e)) (Localization.AtPrime P) e ?_, trivial⟩
    ext y
    constructor
    · rintro ⟨z, hz, rfl⟩
      exact hz
    · intro hy
      refine ⟨e.symm y, ?_, ?_⟩
      · show e.symm y ∉ P.comap e
        rw [Ideal.mem_comap, RingEquiv.apply_symm_apply]
        exact hy
      · show e (e.symm y) = y
        exact RingEquiv.apply_symm_apply e y
  have s7 : ∀ (D₀ : Type u) [CommRing D₀] [IsLocalRing D₀] [IsNoetherianRing D₀] (t : D₀),
      t ∈ nonZeroDivisors D₀ → t ∈ IsLocalRing.maximalIdeal D₀ →
      IsRegularLocalRing (D₀ ⧸ Ideal.span {t}) → IsRegularLocalRing D₀ ∧ True := by
    intro D₀ _ _ _ t ht htm hreg
    classical
    haveI := hreg
    set q := Ideal.Quotient.mk (Ideal.span {t}) with hqdef
    have hqs : Function.Surjective q := Ideal.Quotient.mk_surjective
    have hmap : Ideal.map q (IsLocalRing.maximalIdeal D₀) =
        IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t}) :=
      IsLocalRing.map_maximalIdeal_of_surjective q hqs
    have hcm : ∀ J : Ideal D₀, Ideal.comap q (Ideal.map q J) = J ⊔ Ideal.span {t} := by
      intro J
      rw [Ideal.comap_map_of_surjective' q hqs, hqdef, Ideal.mk_ker]
    have hcomap : Ideal.comap q (IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t})) =
        IsLocalRing.maximalIdeal D₀ := by
      rw [← hmap, hcm]
      exact sup_eq_left.mpr ((Ideal.span_singleton_le_iff_mem _).mpr htm)
    obtain ⟨Sb, hSbcard, hSbspan⟩ := Submodule.FG.exists_span_set_encard_eq_spanFinrank
      (IsNoetherian.noetherian (IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t})))
    have hSbfin : Sb.Finite := Set.finite_of_encard_eq_coe hSbcard
    set S : Set D₀ := Function.surjInv hqs '' Sb with hSdef
    have hSfin : S.Finite := hSbfin.image _
    have hqS : q '' S = Sb := by
      rw [hSdef, Set.image_image]
      conv_rhs => rw [← Set.image_id Sb]
      exact Set.image_congr (fun z _ => Function.surjInv_eq hqs z)
    have hSncard : S.ncard ≤ Sb.ncard := Set.ncard_image_le hSbfin
    have hSbncard : Sb.ncard = Submodule.spanFinrank (IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t})) := by
      rw [← Set.Finite.cast_ncard_eq hSbfin] at hSbcard
      exact_mod_cast hSbcard
    have hspan : IsLocalRing.maximalIdeal D₀ = Ideal.span (insert t S) := by
      apply le_antisymm
      · intro z hz
        have h1 : q z ∈ Ideal.map q (Ideal.span S) := by
          rw [Ideal.map_span, hqS]
          show q z ∈ Submodule.span (D₀ ⧸ Ideal.span {t}) Sb
          rw [hSbspan, ← hmap]
          exact Ideal.mem_map_of_mem q hz
        have h2 : z ∈ Ideal.comap q (Ideal.map q (Ideal.span S)) := h1
        rw [hcm] at h2
        rw [Ideal.span_insert, sup_comm]
        exact h2
      · rw [Ideal.span_le]
        intro z hz
        rcases hz with rfl | hz
        · exact htm
        · rw [← hcomap]
          show q z ∈ IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t})
          have : q z ∈ Sb := by rw [← hqS]; exact ⟨z, hz, rfl⟩
          rw [← hSbspan]
          exact Submodule.subset_span this
    have hle1 : Submodule.spanFinrank (IsLocalRing.maximalIdeal D₀) ≤
        Submodule.spanFinrank (IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t})) + 1 := by
      have h1 := Submodule.spanFinrank_span_le_ncard_of_finite (R := D₀) (hSfin.insert t)
      have h2 := Set.ncard_insert_le t S
      have h3 : Submodule.spanFinrank (IsLocalRing.maximalIdeal D₀) ≤ (insert t S).ncard := by
        rw [hspan]; exact h1
      omega
    have hdim := ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors ht htm
    have hreg' : (Submodule.spanFinrank (IsLocalRing.maximalIdeal (D₀ ⧸ Ideal.span {t})) : WithBot ℕ∞) =
        ringKrullDim (D₀ ⧸ Ideal.span {t}) := IsRegularLocalRing.spanFinrank_maximalIdeal
    refine ⟨?_, trivial⟩
    apply IsRegularLocalRing.of_spanFinrank_maximalIdeal_le
    rw [← hdim, ← hreg']
    exact_mod_cast hle1
  obtain ⟨w', rfl⟩ : ∃ w', w = w' + 2 := ⟨w - 2, by omega⟩
  revert hQ Φ hQp Q
  set I : Ideal A := Ideal.span {x * y - v * s ^ (w' + 2)} with hI
  set mk : A →+* A ⧸ I := Ideal.Quotient.mk I with hmk
  set ψ : Fin 3 → A ⧸ I := ![mk x, mk y, mk s] with hψdef
  intro Q hQp Φ hQ
  have hFz : mk (x * y - v * s ^ (w' + 2)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  obtain ⟨a, b, hψj, hψ, hab, hspan', ha_mem⟩ : ∃ a b : A, ψ j = mk a ∧
      (∀ l, ψ l = mk a ∨ ψ l = mk b ∨ ψ l = mk s) ∧ a * b = x * y ∧
      Ideal.span ({a, b, s} : Set A) = IsLocalRing.maximalIdeal A ∧ a ∈ ({x, y, s} : Set A) := by
    fin_cases j
    · refine ⟨x, y, rfl, fun l => ?_, rfl, hspan, by simp⟩
      fin_cases l
      · exact Or.inl rfl
      · exact Or.inr (Or.inl rfl)
      · exact Or.inr (Or.inr rfl)
    · refine ⟨y, x, rfl, fun l => ?_, mul_comm y x, by rw [Set.insert_comm]; exact hspan, by simp⟩
      fin_cases l
      · exact Or.inr (Or.inl rfl)
      · exact Or.inl rfl
      · exact Or.inr (Or.inr rfl)
    · exact absurd rfl hj
  have ha𝔪 : a ∈ IsLocalRing.maximalIdeal A := hspan' ▸ Ideal.subset_span (by simp)
  have hb𝔪 : b ∈ IsLocalRing.maximalIdeal A := hspan' ▸ Ideal.subset_span (by simp)
  have hs𝔪 : s ∈ IsLocalRing.maximalIdeal A := hspan' ▸ Ideal.subset_span (by simp)
  obtain ⟨hdom, ha0, hpa, hsa, hpas, hbas⟩ := s1 A a b s hdim hspan'
  haveI := hdom
  have hR : mk a ∈ nonZeroDivisors (A ⧸ I) :=
    wcpa_dj_rtsxs_coord_nzd A x y s v (w' + 2) hv hdim hspan (by omega) a ha_mem
  set g₁ : Polynomial A := Polynomial.C a * Polynomial.X - Polynomial.C s with hg₁
  set g₂ : Polynomial A := Polynomial.C b - Polynomial.C v * Polynomial.C a ^ (w' + 1) *
    Polynomial.X ^ (w' + 2) with hg₂
  set K : Ideal (Polynomial A) := Ideal.span {g₁, g₂} with hK
  have hnzd : ∀ P : Polynomial A, Polynomial.C a * P ∈ K → P ∈ K :=
    s2 A a b s v w' ha0 hpa hsa hpas hbas

  set ι : A ⧸ I →+* Localization.Away (ψ j) := algebraMap (A ⧸ I) (Localization.Away (ψ j)) with hι
  obtain ⟨u, u_mem, hu⟩ : ∃ u ∈ wcpaDjChartAlg (A ⧸ I) ψ j, u * ι (ψ j) = ι (mk s) :=
    ⟨_, Algebra.subset_adjoin ⟨2, rfl⟩, IsLocalization.mk'_spec (Localization.Away (ψ j)) (ψ 2)
      (⟨ψ j, Submonoid.mem_powers _⟩ : Submonoid.powers (ψ j))⟩
  have hα : IsUnit (ι (mk a)) := by
    rw [← hψj]; exact IsLocalization.Away.algebraMap_isUnit (ψ j)
  have hu' : u * ι (mk a) = ι (mk s) := by rw [← hψj]; exact hu
  have hab' : ι (mk a) * ι (mk b) = ι (mk x) * ι (mk y) := by
    have := congrArg (fun z => ι (mk z)) hab
    simpa only [map_mul] using this
  have hF : ι (mk x) * ι (mk y) = ι (mk v) * ι (mk s) ^ (w' + 2) := by
    have := congrArg ι hFz
    simp only [map_sub, map_mul, map_pow, map_zero] at this
    exact sub_eq_zero.mp this
  have hbgen : ι (mk b) = ι (mk v) * ι (mk a) ^ (w' + 1) * u ^ (w' + 2) := by
    apply hα.mul_left_cancel
    have h1 : (u * ι (mk a)) ^ (w' + 2) = ι (mk s) ^ (w' + 2) := by rw [hu']
    linear_combination hab' + hF - ι (mk v) * h1
  set εL : Polynomial A →+* Localization.Away (ψ j) := Polynomial.eval₂RingHom (ι.comp mk) u with hεL
  have hεLC : ∀ c, εL (Polynomial.C c) = ι (mk c) := fun c => by simp [hεL]
  have hεLX : εL Polynomial.X = u := by simp [hεL]
  have hg1z : εL g₁ = 0 := by
    rw [hg₁]; simp only [map_sub, map_mul, hεLC, hεLX]; rw [mul_comm, hu', sub_self]
  have hg2z : εL g₂ = 0 := by
    rw [hg₂]; simp only [map_sub, map_mul, map_pow, hεLC, hεLX]; rw [hbgen, sub_self]
  have hKker : K ≤ RingHom.ker εL := by
    rw [hK, Ideal.span_le]
    rintro g (rfl | rfl)
    · exact RingHom.mem_ker.mpr hg1z
    · exact RingHom.mem_ker.mpr hg2z
  have hεmem : ∀ P, εL P ∈ wcpaDjChartAlg (A ⧸ I) ψ j := by
    intro P
    refine Polynomial.induction_on P (fun c => ?_) (fun p q hp hq => ?_) (fun n c h => ?_)
    · rw [hεLC]; exact Subalgebra.algebraMap_mem _ _
    · rw [map_add]; exact Subalgebra.add_mem _ hp hq
    · rw [pow_succ, ← mul_assoc, map_mul, hεLX]; exact Subalgebra.mul_mem _ h u_mem
  set Θ₁ : Polynomial A ⧸ K →+* Localization.Away (ψ j) :=
    Ideal.Quotient.lift K εL (fun P hP => RingHom.mem_ker.mp (hKker hP)) with hΘ₁
  have hΘ₁mem : ∀ z, Θ₁ z ∈ wcpaDjChartAlg (A ⧸ I) ψ j := by
    intro z
    obtain ⟨P, rfl⟩ := Ideal.Quotient.mk_surjective z
    rw [hΘ₁, Ideal.Quotient.lift_mk]; exact hεmem P
  set Θ₀ : Polynomial A ⧸ K →+* wcpaDjChartAlg (A ⧸ I) ψ j := Θ₁.codRestrict _ hΘ₁mem with hΘ₀
  have hΘ₀mk : ∀ P, ((Θ₀ (Ideal.Quotient.mk K P) : wcpaDjChartAlg (A ⧸ I) ψ j) :
      Localization.Away (ψ j)) = εL P := fun P => Ideal.Quotient.lift_mk K εL _

  have hP1 : ∀ P : Polynomial A, ∃ (n : ℕ) (G : A),
      Polynomial.C a ^ n * P - Polynomial.C G ∈ Ideal.span {g₁} := by
    intro P
    refine Polynomial.induction_on' P (fun p q hp hq => ?_) (fun k c => ?_)
    · obtain ⟨n₁, G₁, h₁⟩ := hp
      obtain ⟨n₂, G₂, h₂⟩ := hq
      refine ⟨n₁ + n₂, a ^ n₂ * G₁ + a ^ n₁ * G₂, ?_⟩
      have e : Polynomial.C a ^ (n₁ + n₂) * (p + q) - Polynomial.C (a ^ n₂ * G₁ + a ^ n₁ * G₂) =
          Polynomial.C a ^ n₂ * (Polynomial.C a ^ n₁ * p - Polynomial.C G₁) +
            Polynomial.C a ^ n₁ * (Polynomial.C a ^ n₂ * q - Polynomial.C G₂) := by
        simp only [map_add, map_mul, map_pow]; ring
      rw [e]
      exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ h₁) (Ideal.mul_mem_left _ _ h₂)
    · refine ⟨k, c * s ^ k, ?_⟩
      rw [← Polynomial.C_mul_X_pow_eq_monomial, Ideal.mem_span_singleton]
      have e : Polynomial.C a ^ k * (Polynomial.C c * Polynomial.X ^ k) - Polynomial.C (c * s ^ k) =
          Polynomial.C c * ((Polynomial.C a * Polynomial.X) ^ k - Polynomial.C s ^ k) := by
        simp only [map_mul, map_pow]; ring
      rw [e, hg₁]
      exact dvd_mul_of_dvd_right (sub_dvd_pow_sub_pow _ _ _) _
  have hCF : Polynomial.C (x * y - v * s ^ (w' + 2)) ∈ K := by
    obtain ⟨d, hd⟩ : g₁ ∣ (Polynomial.C a * Polynomial.X) ^ (w' + 2) - Polynomial.C s ^ (w' + 2) :=
      sub_dvd_pow_sub_pow _ _ _
    have e : Polynomial.C (x * y - v * s ^ (w' + 2)) = Polynomial.C a * g₂ + Polynomial.C v * d * g₁ := by
      have h2 : Polynomial.C v * ((Polynomial.C a * Polynomial.X) ^ (w' + 2) - Polynomial.C s ^ (w' + 2)) =
          Polynomial.C v * (g₁ * d) := by rw [hd]
      rw [← hab, hg₂]
      simp only [map_sub, map_mul, map_pow]
      linear_combination h2
    rw [e]
    exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
      (Ideal.mul_mem_left _ _ (Ideal.subset_span (by simp)))
  have hiter : ∀ (n : ℕ) (P : Polynomial A), Polynomial.C a ^ n * P ∈ K → P ∈ K := by
    intro n
    induction n with
    | zero => intro P h; simpa using h
    | succ n ih =>
      intro P h
      apply hnzd
      apply ih
      rw [← mul_assoc, ← pow_succ]
      exact h
  have hinj : Function.Injective Θ₀ := by
    rw [injective_iff_map_eq_zero]
    intro z hz
    obtain ⟨P, rfl⟩ := Ideal.Quotient.mk_surjective z
    have hεP : εL P = 0 := by rw [← hΘ₀mk, hz]; rfl
    obtain ⟨n, G, hG⟩ := hP1 P
    have hGK : Polynomial.C a ^ n * P - Polynomial.C G ∈ K :=
      Ideal.span_mono (by simp) hG
    have h1 : εL (Polynomial.C a ^ n * P - Polynomial.C G) = 0 := RingHom.mem_ker.mp (hKker hGK)
    rw [map_sub, map_mul, hεP, mul_zero, zero_sub, neg_eq_zero, hεLC] at h1
    obtain ⟨m, hm⟩ := (IsLocalization.map_eq_zero_iff (Submonoid.powers (ψ j))
      (Localization.Away (ψ j)) (mk G)).mp h1
    obtain ⟨k, hk⟩ := m.2
    rw [← hk, hψj] at hm
    have hG0 : mk G = 0 := (mem_nonZeroDivisors_iff.mp (pow_mem hR k)).1 _ hm
    have hGI : G ∈ I := Ideal.Quotient.eq_zero_iff_mem.mp hG0
    obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.mp hGI
    have hCG : Polynomial.C G ∈ K := by
      rw [← hd, map_mul]; exact Ideal.mul_mem_left _ _ hCF
    have hPK' : Polynomial.C a ^ n * P ∈ K := by
      have := Ideal.add_mem _ hGK hCG
      rwa [sub_add_cancel] at this
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (hiter n P hPK')

  have hsurjL : ∀ z ∈ wcpaDjChartAlg (A ⧸ I) ψ j, ∃ w,
      (Θ₀ w : Localization.Away (ψ j)) = z := by
    intro z hz
    induction hz using Algebra.adjoin_induction with
    | mem z hz =>
      obtain ⟨l, rfl⟩ := hz
      dsimp only
      rcases hψ l with h | h | h
      · refine ⟨1, ?_⟩
        rw [map_one, OneMemClass.coe_one, eq_comm, IsLocalization.mk'_eq_iff_eq_mul]
        change ι (ψ l) = 1 * ι (ψ j)
        rw [h, ← hψj, one_mul]
      · refine ⟨Ideal.Quotient.mk K (Polynomial.C v * Polynomial.C a ^ w' * Polynomial.X ^ (w' + 2)), ?_⟩
        rw [hΘ₀mk]
        simp only [map_mul, map_pow, hεLC, hεLX]
        rw [eq_comm, IsLocalization.mk'_eq_iff_eq_mul]
        change ι (ψ l) = _ * ι (ψ j)
        have hb2 := hbgen
        rw [← hψj] at hb2
        rw [h, hb2, ← hψj]
        ring
      · refine ⟨Ideal.Quotient.mk K Polynomial.X, ?_⟩
        rw [hΘ₀mk, hεLX, eq_comm, IsLocalization.mk'_eq_iff_eq_mul]
        change ι (ψ l) = u * ι (ψ j)
        rw [h]
        exact hu.symm
    | algebraMap r =>
      obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective r
      exact ⟨Ideal.Quotient.mk K (Polynomial.C c), (hΘ₀mk _).trans (hεLC c)⟩
    | add z₁ z₂ _ _ h₁ h₂ =>
      obtain ⟨w₁, hw₁⟩ := h₁
      obtain ⟨w₂, hw₂⟩ := h₂
      exact ⟨w₁ + w₂, by rw [map_add, AddMemClass.coe_add, hw₁, hw₂]⟩
    | mul z₁ z₂ _ _ h₁ h₂ =>
      obtain ⟨w₁, hw₁⟩ := h₁
      obtain ⟨w₂, hw₂⟩ := h₂
      exact ⟨w₁ * w₂, by rw [map_mul, MulMemClass.coe_mul, hw₁, hw₂]⟩
  have hsurj : Function.Surjective Θ₀ := by
    intro z
    obtain ⟨w, hw⟩ := hsurjL z.1 z.2
    exact ⟨w, Subtype.ext hw⟩
  obtain ⟨Θ, hΘ⟩ : ∃ Θ : (Polynomial A ⧸ K) ≃+* wcpaDjChartAlg (A ⧸ I) ψ j, ∀ z, Θ z = Θ₀ z :=
    ⟨RingEquiv.ofBijective Θ₀ ⟨hinj, hsurj⟩, fun _ => rfl⟩
  set Q₀ : Ideal (Polynomial A ⧸ K) := Q.comap Θ with hQ₀
  haveI hQ₀p : Q₀.IsPrime := Ideal.comap_isPrime _ _
  obtain ⟨E₁, -⟩ := s6 _ _ Θ Q Q₀ rfl
  set t : Polynomial A ⧸ K := Ideal.Quotient.mk K (Polynomial.C a) with ht
  have htQ : t ∈ Q₀ := by
    rw [hQ₀, Ideal.mem_comap]
    have h1 : (Θ t : wcpaDjChartAlg (A ⧸ I) ψ j) = algebraMap (A ⧸ I) _ (mk a) :=
      by rw [hΘ]; exact Subtype.ext ((hΘ₀mk _).trans (hεLC a))
    rw [h1, ← Ideal.mem_comap, hQ]
    exact Ideal.mem_map_of_mem _ ha𝔪
  obtain ⟨P', hP', hP'c, ⟨E₂⟩⟩ := s5 _ t Q₀ htQ
  haveI := hP'

  have hKa : K ⊔ Ideal.span {Polynomial.C a} =
      Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) := by
    have hCa : Polynomial.C a ∈ Ideal.map (Polynomial.C : A →+* Polynomial A)
        (IsLocalRing.maximalIdeal A) := Ideal.mem_map_of_mem _ ha𝔪
    have hCb : Polynomial.C b ∈ Ideal.map (Polynomial.C : A →+* Polynomial A)
        (IsLocalRing.maximalIdeal A) := Ideal.mem_map_of_mem _ hb𝔪
    have hCs : Polynomial.C s ∈ Ideal.map (Polynomial.C : A →+* Polynomial A)
        (IsLocalRing.maximalIdeal A) := Ideal.mem_map_of_mem _ hs𝔪
    apply le_antisymm
    · refine sup_le ?_ ?_
      · rw [hK, Ideal.span_le]
        rintro g (rfl | rfl)
        · exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hCa) hCs
        · exact Ideal.sub_mem _ hCb (Ideal.mul_mem_right _ _
            (Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ hCa _ (by omega))))
      · rw [Ideal.span_le, Set.singleton_subset_iff]; exact hCa
    · rw [← hspan', Ideal.map_span, Ideal.span_le]
      rintro _ ⟨z, hz, rfl⟩
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with h | h | h <;> rw [h]
      · exact Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)
      · have e : Polynomial.C b = g₂ + Polynomial.C a *
            (Polynomial.C v * Polynomial.C a ^ w' * Polynomial.X ^ (w' + 2)) := by rw [hg₂]; ring
        rw [e]
        exact Ideal.add_mem _ (Ideal.mem_sup_left (Ideal.subset_span (by simp)))
          (Ideal.mem_sup_right (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)))
      · have e : Polynomial.C s = Polynomial.C a * Polynomial.X - g₁ := by rw [hg₁]; ring
        rw [e]
        exact Ideal.sub_mem _ (Ideal.mem_sup_right (Ideal.mul_mem_right _ _
          (Ideal.mem_span_singleton_self _))) (Ideal.mem_sup_left (Ideal.subset_span (by simp)))
  have htspan : Ideal.span {t} = Ideal.map (Ideal.Quotient.mk K) (Ideal.span {Polynomial.C a}) := by
    rw [Ideal.map_span, Set.image_singleton]
  let e : ((Polynomial A ⧸ K) ⧸ Ideal.span {t}) ≃+* Polynomial (IsLocalRing.ResidueField A) :=
    ((Ideal.quotEquivOfEq htspan).trans (DoubleQuot.quotQuotEquivQuotSup K _)).trans
      ((Ideal.quotEquivOfEq hKa).trans
        (Ideal.polynomialQuotientEquivQuotientPolynomial (IsLocalRing.maximalIdeal A)).symm)
  haveI h𝔮 : (P'.comap e.symm).IsPrime := Ideal.comap_isPrime _ _
  obtain ⟨E₃, -⟩ := s6 _ _ e.symm P' (P'.comap e.symm) rfl
  haveI : IsRegularLocalRing (Localization.AtPrime (P'.comap e.symm)) := inferInstance
  haveI hWn : IsNoetherianRing (Polynomial A ⧸ K) := inferInstance
  haveI hLn : IsNoetherianRing (Localization.AtPrime Q₀) :=
    IsLocalization.isNoetherianRing Q₀.primeCompl _ hWn
  have hregq := IsRegularLocalRing.of_ringEquiv (E₃.trans E₂.symm)

  have htW : t ∈ nonZeroDivisors (Polynomial A ⧸ K) := by
    have key : ∀ z, t * z = 0 → z = 0 := by
      intro z hz
      obtain ⟨P, rfl⟩ := Ideal.Quotient.mk_surjective z
      rw [ht, ← map_mul, Ideal.Quotient.eq_zero_iff_mem] at hz
      exact Ideal.Quotient.eq_zero_iff_mem.mpr (hnzd P hz)
    exact mem_nonZeroDivisors_iff.mpr ⟨key, fun z hz => key z (by rw [mul_comm]; exact hz)⟩
  have hregt := Module.Flat.isSMulRegular_of_nonZeroDivisors (M := Localization.AtPrime Q₀) htW
  have htbar : algebraMap (Polynomial A ⧸ K) (Localization.AtPrime Q₀) t ∈ nonZeroDivisors (Localization.AtPrime Q₀) := by
    have key : ∀ z : Localization.AtPrime Q₀, z * algebraMap _ _ t = 0 → z = 0 := by
      intro z hz
      refine hregt ?_
      show t • z = t • (0 : Localization.AtPrime Q₀)
      have e' : t • z = algebraMap (Polynomial A ⧸ K) (Localization.AtPrime Q₀) t * z := Algebra.smul_def t z
      rw [smul_zero, e', mul_comm]
      exact hz
    exact mem_nonZeroDivisors_iff.mpr ⟨fun z hz => key z (by rw [mul_comm]; exact hz), key⟩
  have htm : algebraMap (Polynomial A ⧸ K) (Localization.AtPrime Q₀) t ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime Q₀) :=
    (IsLocalization.AtPrime.to_map_mem_maximal_iff _ Q₀ t).mpr htQ
  haveI hW : IsRegularLocalRing (Localization.AtPrime Q₀) := (s7 _ _ htbar htm hregq).1
  exact IsRegularLocalRing.of_ringEquiv (Φ.trans E₁.symm).symm

theorem wcpa_dj_rtsxs_u_model_rn : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s v : A) (w : ℕ) (r : ℕ) (φ : Fin (r + 1) → A ⧸ Ideal.span {x * y - v * s ^ w}) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i)) [P.IsPrime], IsUnit v → ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span {x, y, s} = IsLocalRing.maximalIdeal A → 2 ≤ w → Ideal.span (Set.range φ) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) → φ i ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) → P.comap (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i)) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) → ¬ IsRegularLocalRing (Localization.AtPrime P) → ∀ m ∈ Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2), ∃ c ∈ P, (c : Localization.Away (φ i)) = IsLocalization.mk' (Localization.Away (φ i)) m (⟨φ i, Submonoid.mem_powers _⟩ : Submonoid.powers (φ i)) :=
by
  intro A _ _ x y s v w r φ i P _ hv hdim hspan hw hφspan hφi hPc hnreg m hm

  have mkIdeal : ∀ (R : Type u) [CommRing R] (L : Type u) [CommRing L] [Algebra R L]
      (C : Subalgebra R L) (J : Ideal C) (t : R), ∃ K : Ideal R, ∀ n, n ∈ K ↔
        ∃ e ∈ J, (e : L) * algebraMap R L t = algebraMap R L n := by
    intro R _ L _ _ C J t
    refine ⟨{ carrier := {n | ∃ e ∈ J, (e : L) * algebraMap R L t = algebraMap R L n},
              add_mem' := ?_, zero_mem' := ?_, smul_mem' := ?_ }, fun n => Iff.rfl⟩
    · rintro a b ⟨e₁, he₁, h₁⟩ ⟨e₂, he₂, h₂⟩
      refine ⟨e₁ + e₂, J.add_mem he₁ he₂, ?_⟩
      rw [Subalgebra.coe_add, add_mul, h₁, h₂, map_add]
    · exact ⟨0, J.zero_mem, by simp⟩
    · rintro c n ⟨e, he, h⟩
      refine ⟨algebraMap R C c * e, J.mul_mem_left _ he, ?_⟩
      rw [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, mul_assoc, h, smul_eq_mul, map_mul]

  have back : ∀ (R : Type u) [CommRing R] (r m' : ℕ) (φ : Fin (r + 1) → R)
      (ψ : Fin (m' + 1) → R) (i : Fin (r + 1)) (j : Fin (m' + 1))
      (P : Ideal (wcpaDjChartAlg R φ i)) [P.IsPrime] (Q : Ideal (wcpaDjChartAlg R ψ j)) [Q.IsPrime]
      (Θ : Localization.AtPrime P ≃+* Localization.AtPrime Q) (c : wcpaDjChartAlg R φ i) (n : R)
      (e : wcpaDjChartAlg R ψ j),
      (∀ a : R, Θ (algebraMap (wcpaDjChartAlg R φ i) (Localization.AtPrime P)
        (algebraMap R (wcpaDjChartAlg R φ i) a)) = algebraMap (wcpaDjChartAlg R ψ j)
        (Localization.AtPrime Q) (algebraMap R (wcpaDjChartAlg R ψ j) a)) →
      (c : Localization.Away (φ i)) * algebraMap R (Localization.Away (φ i)) (φ i) =
        algebraMap R (Localization.Away (φ i)) (ψ j) →
      n ∈ Ideal.span (Set.range φ) → e ∈ Q →
      (e : Localization.Away (ψ j)) * algebraMap R (Localization.Away (ψ j)) (ψ j) =
        algebraMap R (Localization.Away (ψ j)) n →
      ∃ d ∈ P, (d : Localization.Away (φ i)) = IsLocalization.mk' (Localization.Away (φ i)) n
        (⟨φ i, Submonoid.mem_powers _⟩ : Submonoid.powers (φ i)) := by
    intro R _ r m' φ ψ i j P _ Q _ Θ c n e hΘ hc hn he he'
    obtain ⟨K, hK⟩ := mkIdeal R (Localization.Away (φ i)) (wcpaDjChartAlg R φ i) ⊤ (φ i)
    have hrange : Set.range φ ⊆ (K : Set R) := by
      rintro _ ⟨l, rfl⟩
      refine (hK _).mpr ⟨⟨IsLocalization.mk' (Localization.Away (φ i)) (φ l)
        (⟨φ i, Submonoid.mem_powers _⟩ : Submonoid.powers (φ i)), Algebra.subset_adjoin ⟨l, rfl⟩⟩,
        Submodule.mem_top, ?_⟩
      exact IsLocalization.mk'_spec _ _ _
    obtain ⟨d, -, hd⟩ := (hK n).mp ((Ideal.span_le.mpr hrange) hn)
    refine ⟨d, ?_, (IsLocalization.eq_mk'_iff_mul_eq).mpr hd⟩
    have hkey : d * algebraMap R (wcpaDjChartAlg R φ i) (ψ j) = c * algebraMap R _ n := by
      apply Subtype.ext
      rw [Subalgebra.coe_mul, Subalgebra.coe_mul, Subalgebra.coe_algebraMap,
        Subalgebra.coe_algebraMap, ← hc, ← hd]
      ring
    have hkey' : e * algebraMap R (wcpaDjChartAlg R ψ j) (ψ j) = algebraMap R _ n := by
      apply Subtype.ext
      rw [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, Subalgebra.coe_algebraMap]
      exact he'
    set aP := algebraMap (wcpaDjChartAlg R φ i) (Localization.AtPrime P) with haP
    set aQ := algebraMap (wcpaDjChartAlg R ψ j) (Localization.AtPrime Q) with haQ
    have h1 : Θ (aP d) * aQ (algebraMap R _ (ψ j)) = Θ (aP c) * aQ (algebraMap R _ n) := by
      rw [← hΘ, ← hΘ, ← map_mul, ← map_mul, ← map_mul, ← map_mul, hkey]
    have h2 : aQ (algebraMap R _ n) = aQ e * aQ (algebraMap R _ (ψ j)) := by
      rw [← map_mul, hkey']
    have hcan : ∀ z : Localization.AtPrime Q, z * aQ (algebraMap R _ (ψ j)) = 0 → z = 0 := by
      intro z hz
      obtain ⟨⟨a, u⟩, rfl⟩ := IsLocalization.mk'_surjective Q.primeCompl z
      rw [mul_comm, IsLocalization.mul_mk'_eq_mk'_of_mul, IsLocalization.mk'_eq_zero_iff] at hz
      obtain ⟨t, ht⟩ := hz
      rw [IsLocalization.mk'_eq_zero_iff]
      refine ⟨t, ?_⟩
      have hu : IsUnit (algebraMap R (Localization.Away (ψ j)) (ψ j)) :=
        IsLocalization.Away.algebraMap_isUnit (ψ j)
      apply Subtype.ext
      have ht' := congrArg (fun q : wcpaDjChartAlg R ψ j => (q : Localization.Away (ψ j))) ht
      simp only [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, ZeroMemClass.coe_zero] at ht'
      rw [Subalgebra.coe_mul, ZeroMemClass.coe_zero]
      have : ((t : wcpaDjChartAlg R ψ j) : Localization.Away (ψ j)) * (a : Localization.Away (ψ j)) *
          algebraMap R (Localization.Away (ψ j)) (ψ j) = 0 := by
        rw [← ht']; ring
      exact (hu.mul_left_eq_zero).mp this
    have gen : ∀ (T : Type u) [CommRing T] (X Y Z W p : T), (∀ z : T, z * p = 0 → z = 0) →
        X * p = Y * W → W = Z * p → X = Y * Z := by
      intro T _ X Y Z W p hc e1 e2
      exact sub_eq_zero.mp (hc _ (by rw [sub_mul, e1, e2]; ring))
    have h3 : Θ (aP d) = Θ (aP c) * aQ e :=
      gen (Localization.AtPrime Q) _ _ _ _ _ hcan h1 h2
    have heQ : aQ e ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) :=
      (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q e).mpr he
    have hdm : Θ (aP d) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
      rw [h3]; exact Ideal.mul_mem_left _ _ heQ
    refine (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P) P d).mp ?_
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hdm
    exact hdm (hu.map Θ)

  have hmax : ∀ t ∈ ({x, y, s} : Set A), t ∈ IsLocalRing.maximalIdeal A := by
    intro t ht
    rw [← hspan]
    exact Ideal.subset_span ht
  have hNM : Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2 ≤ IsLocalRing.maximalIdeal A := by
    refine sup_le ?_ (Ideal.pow_le_self two_ne_zero)
    rw [Ideal.span_le]
    intro t ht
    apply hmax
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at ht
    rcases ht with rfl | rfl <;> simp
  have hmφ : m ∈ Ideal.span (Set.range φ) := by
    rw [hφspan]; exact Ideal.map_mono hNM hm

  have hspanψ : Ideal.span (Set.range φ) = Ideal.span (Set.range
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s]) := by
    rw [hφspan, ← hspan, Ideal.map_span]
    congr 1
    rw [Matrix.range_cons, Matrix.range_cons, Matrix.range_cons, Matrix.range_empty,
      Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton]
    simp only [Set.union_empty, Set.singleton_union]

  have hnzd : ∀ k : Fin 3, (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] k) ∈
        nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) := by
    intro k
    have h := wcpa_dj_rtsxs_coord_nzd A x y s v w hv hdim hspan (by omega)
    fin_cases k
    · exact h x (by simp)
    · exact h y (by simp)
    · exact h s (by simp)

  obtain ⟨j, c, hc, hcP⟩ := wcpa_dj_rtsxs_switch_index _ r 2 φ
    ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] i P hspanψ
  obtain ⟨Q, hQ, Θ, hQc, hΘ⟩ := wcpa_dj_rtsxs_switch_chart _ r 2 φ
    ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] i j P c hspanψ hφi (hnzd j) hc hcP
  haveI := hQ
  have hQc' := hQc.trans hPc

  have hj : j = 2 := by
    by_contra hj
    exact hnreg (wcpa_dj_rtsxs_axis_chart_regular A x y s v w j Q _ Θ hv hdim hspan hw hj hQc')
  subst hj

  have hgen : ∀ l : Fin 3, l ≠ 2 → ∀ c' : wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2,
      (c' : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) *
        algebraMap _ (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) =
        algebraMap _ (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
          (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
            Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
            Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] l) → c' ∈ Q := by
    intro l hl c' hc'
    by_contra hc'Q
    obtain ⟨Q₀, hQ₀, Θ₀, hQ₀c, -⟩ := wcpa_dj_rtsxs_switch_chart _ 2 2
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s]
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2 l Q c' rfl (hnzd 2) (hnzd l) hc' hc'Q
    haveI := hQ₀
    exact hnreg (wcpa_dj_rtsxs_axis_chart_regular A x y s v w l Q₀ _ (Θ.trans Θ₀) hv hdim hspan
      hw hl (hQ₀c.trans hQc'))

  obtain ⟨K, hK⟩ := mkIdeal (A ⧸ Ideal.span {x * y - v * s ^ w})
    (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
    (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) Q
    (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)
  have hKl : ∀ l : Fin 3, l ≠ 2 → (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] l) ∈ K := by
    intro l hl
    have hspec := IsLocalization.mk'_spec
      (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
      (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] l)
      (⟨![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2, Submonoid.mem_powers _⟩ :
        Submonoid.powers (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
    exact (hK _).mpr ⟨⟨_, Algebra.subset_adjoin ⟨l, rfl⟩⟩, hgen l hl _ hspec, hspec⟩
  have hKs : ∀ a ∈ IsLocalRing.maximalIdeal A,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) (a * s) ∈ K := by
    intro a ha
    have hmem : Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) a ∈
        Q.comap (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
          (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
            ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
              Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
              Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) := by
      rw [hQc']; exact Ideal.mem_map_of_mem _ ha
    refine (hK _).mpr ⟨_, hmem, ?_⟩
    rw [Subalgebra.coe_algebraMap, ← map_mul]
    exact congrArg _ (by rw [map_mul]; rfl)
  set T := K.comap (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) with hT
  have hxT : x ∈ T := hKl 0 (by decide)
  have hyT : y ∈ T := hKl 1 (by decide)
  have hle : Ideal.span {x, y} ⊔ IsLocalRing.maximalIdeal A ^ 2 ≤ T := by
    refine sup_le ?_ ?_
    · rw [Ideal.span_le]
      intro t ht
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at ht
      rcases ht with rfl | rfl
      · exact hxT
      · exact hyT
    · rw [sq]
      refine Ideal.mul_le.mpr ?_
      intro a ha b hb
      rw [← hspan] at hb
      obtain ⟨β₁, z, hz, rfl⟩ := Ideal.mem_span_insert.mp hb
      obtain ⟨β₂, z', hz', rfl⟩ := Ideal.mem_span_insert.mp hz
      obtain ⟨β₃, rfl⟩ := Ideal.mem_span_singleton'.mp hz'
      have e : a * (β₁ * x + (β₂ * y + β₃ * s)) =
          (a * β₁) * x + ((a * β₂) * y + (a * β₃) * s) := by ring
      rw [e]
      exact T.add_mem (T.mul_mem_left _ hxT) (T.add_mem (T.mul_mem_left _ hyT)
        (hKs _ (Ideal.mul_mem_right _ _ ha)))
  have hmK : m ∈ K := (Ideal.map_le_iff_le_comap.mpr hle) hm
  obtain ⟨e, he, he'⟩ := (hK m).mp hmK

  exact back _ r 2 φ _ i 2 P Q Θ c m e hΘ hc hmφ he he'

theorem wcpa_dj_rtsxs_u_rn_chart_eq : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsDomain O] (N : Ideal O) (r₁ : ℕ) (f₁ : Fin (r₁ + 1) → O) (i₁ : Fin (r₁ + 1)) (P₁ : Ideal (wcpaDjChartAlg O f₁ i₁)) [P₁.IsPrime] (r₂ : ℕ) (f₂ : Fin (r₂ + 1) → O) (i₂ : Fin (r₂ + 1)) (P₂ : Ideal (wcpaDjChartAlg O f₂ i₂)) [P₂.IsPrime], N ≤ IsLocalRing.maximalIdeal O → IsLocalRing.maximalIdeal O * IsLocalRing.maximalIdeal O ≤ N → (∃ t₀ ∈ IsLocalRing.maximalIdeal O, ∀ m ∈ IsLocalRing.maximalIdeal O, ∃ c : O, m - c * t₀ ∈ N) → Ideal.span (Set.range f₁) = IsLocalRing.maximalIdeal O → Ideal.span (Set.range f₂) = IsLocalRing.maximalIdeal O → f₁ i₁ ≠ 0 → f₂ i₂ ≠ 0 → P₁.comap (algebraMap O (wcpaDjChartAlg O f₁ i₁)) = IsLocalRing.maximalIdeal O → P₂.comap (algebraMap O (wcpaDjChartAlg O f₂ i₂)) = IsLocalRing.maximalIdeal O → (∀ n ∈ N, ∃ c ∈ P₁, (c : Localization.Away (f₁ i₁)) = IsLocalization.mk' (Localization.Away (f₁ i₁)) n (⟨f₁ i₁, Submonoid.mem_powers _⟩ : Submonoid.powers (f₁ i₁))) → (∀ n ∈ N, ∃ c ∈ P₂, (c : Localization.Away (f₂ i₂)) = IsLocalization.mk' (Localization.Away (f₂ i₂)) n (⟨f₂ i₂, Submonoid.mem_powers _⟩ : Submonoid.powers (f₂ i₂))) → ∃ ψ : Localization.AtPrime P₂ ≃+* Localization.AtPrime P₁, ∀ a : O, ψ (algebraMap (wcpaDjChartAlg O f₂ i₂) (Localization.AtPrime P₂) (algebraMap O (wcpaDjChartAlg O f₂ i₂) a)) = algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁) (algebraMap O (wcpaDjChartAlg O f₁ i₁) a) :=
by
  intro O _ _ _ N r₁ f₁ i₁ P₁ _ r₂ f₂ i₂ P₂ _ hNm hNsq hNcyc hs₁ hs₂ hf₁ hf₂ hc₁ hc₂ hRN₁ hRN₂

  have CY : ∀ a ∈ IsLocalRing.maximalIdeal O, a ∉ N → ∀ m ∈ IsLocalRing.maximalIdeal O,
      ∃ d : O, m - d * a ∈ N ∧ (m ∉ N → IsUnit d) := by
    intro a ha haN m hm
    obtain ⟨t₀, ht₀, hcyc⟩ := hNcyc
    obtain ⟨ca, hca⟩ := hcyc a ha
    have hcaU : IsUnit ca := by
      by_contra h
      have h1 : ca ∈ IsLocalRing.maximalIdeal O :=
        (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr h)
      have h2 : ca * t₀ ∈ N := hNsq (Ideal.mul_mem_mul h1 ht₀)
      apply haN
      have := N.add_mem hca h2
      rwa [sub_add_cancel] at this
    obtain ⟨cm, hcm⟩ := hcyc m hm
    obtain ⟨U, hU⟩ := hcaU
    have hd : cm * ↑U⁻¹ * ca = cm := by rw [← hU, mul_assoc, Units.inv_mul, mul_one]
    have hmem : m - cm * ↑U⁻¹ * a ∈ N := by
      have e : m - cm * ↑U⁻¹ * a = (m - cm * t₀) - (cm * ↑U⁻¹) * (a - ca * t₀) := by
        linear_combination (-t₀) * hd
      rw [e]
      exact N.sub_mem hcm (N.mul_mem_left _ hca)
    refine ⟨cm * ↑U⁻¹, hmem, fun hmN => ?_⟩
    by_contra h
    have h1 : cm * ↑U⁻¹ ∈ IsLocalRing.maximalIdeal O :=
      (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr h)
    have h2 : cm * ↑U⁻¹ * a ∈ N := hNsq (Ideal.mul_mem_mul h1 ha)
    apply hmN
    have := N.add_mem hmem h2
    rwa [sub_add_cancel] at this

  have hspec : ∀ (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (n : O),
      IsLocalization.mk' (Localization.Away (f i)) n
        (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) *
        algebraMap O (Localization.Away (f i)) (f i) = algebraMap O (Localization.Away (f i)) n :=
    fun r f i n => IsLocalization.mk'_spec _ _ _
  have mkrel : ∀ (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (y : Localization.Away (f i))
      (n : O), y * algebraMap O (Localization.Away (f i)) (f i) =
        algebraMap O (Localization.Away (f i)) n →
      y = IsLocalization.mk' (Localization.Away (f i)) n
        (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) :=
    fun r f i y n h => (IsLocalization.mk'_eq_iff_eq_mul.mpr h.symm).symm
  have notN : ∀ (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i))
      [P.IsPrime], (∀ n ∈ N, ∃ c ∈ P, (c : Localization.Away (f i)) = IsLocalization.mk'
        (Localization.Away (f i)) n (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) →
      f i ∉ N := by
    intro r f i P hP hRN h
    obtain ⟨c, hc, hce⟩ := hRN _ h
    have h1 : c = 1 := by
      apply Subtype.ext
      rw [hce]
      exact IsLocalization.mk'_self _ _
    rw [h1] at hc
    exact hP.ne_top ((Ideal.eq_top_iff_one P).mpr hc)
  have inM : ∀ (r : ℕ) (f : Fin (r + 1) → O), Ideal.span (Set.range f) = IsLocalRing.maximalIdeal O →
      ∀ l, f l ∈ IsLocalRing.maximalIdeal O := by
    intro r f hs l
    rw [← hs]
    exact Ideal.subset_span ⟨l, rfl⟩
  have J2 : ∀ (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i))
      [P.IsPrime] (j : Localization.AtPrime P →+* FractionRing O),
      (∀ b : O, j (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)
        (algebraMap O (wcpaDjChartAlg O f i) b)) = algebraMap O (FractionRing O) b) →
      ∀ (c : wcpaDjChartAlg O f i) (n : O), (c : Localization.Away (f i)) = IsLocalization.mk'
        (Localization.Away (f i)) n (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)) →
      j (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) c) *
        algebraMap O (FractionRing O) (f i) = algebraMap O (FractionRing O) n := by
    intro r f i P _ j hJ c n hc
    have h1 : c * algebraMap O (wcpaDjChartAlg O f i) (f i) =
        algebraMap O (wcpaDjChartAlg O f i) n := by
      apply Subtype.val_injective
      show (c : Localization.Away (f i)) * algebraMap O (Localization.Away (f i)) (f i) =
        algebraMap O (Localization.Away (f i)) n
      rw [hc]
      exact hspec r f i n
    rw [← hJ (f i), ← hJ n, ← map_mul, ← map_mul, h1]

  have emb : ∀ (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i))
      [P.IsPrime], f i ≠ 0 → ∃ j : Localization.AtPrime P →+* FractionRing O,
      Function.Injective j ∧ ∀ b : O, j (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)
        (algebraMap O (wcpaDjChartAlg O f i) b)) = algebraMap O (FractionRing O) b := by
    intro r f i P _ hfi
    have hpow : Submonoid.powers (f i) ≤ nonZeroDivisors O :=
      powers_le_nonZeroDivisors_of_noZeroDivisors hfi
    haveI : IsDomain (Localization.Away (f i)) := IsLocalization.isDomain_localization hpow
    haveI : IsDomain (wcpaDjChartAlg O f i) := Subalgebra.isDomain _
    have hg : ∀ y : Submonoid.powers (f i), IsUnit (algebraMap O (FractionRing O) y) := fun y =>
      Ne.isUnit (fun h => nonZeroDivisors.ne_zero (hpow y.2)
        (IsFractionRing.injective O (FractionRing O) (h.trans (map_zero _).symm)))
    let lam : Localization.Away (f i) →+* FractionRing O :=
      IsLocalization.lift (M := Submonoid.powers (f i)) (S := Localization.Away (f i)) hg
    have hlam : ∀ b : O, lam (algebraMap O (Localization.Away (f i)) b) =
        algebraMap O (FractionRing O) b := fun b => IsLocalization.lift_eq hg b
    have hlaminj : Function.Injective lam :=
      (IsLocalization.lift_injective_iff hg).mpr (fun x y =>
        ⟨fun h => congrArg _ (IsLocalization.injective (Localization.Away (f i)) hpow h),
         fun h => congrArg _ (IsFractionRing.injective O (FractionRing O) h)⟩)
    let g₀ : wcpaDjChartAlg O f i →+* FractionRing O :=
      lam.comp (wcpaDjChartAlg O f i).val.toRingHom
    have hg₀inj : Function.Injective g₀ := hlaminj.comp Subtype.val_injective
    have hg₀U : ∀ y : P.primeCompl, IsUnit (g₀ y) := fun y =>
      Ne.isUnit (fun h => y.2 (by
        have h0 : (y : wcpaDjChartAlg O f i) = 0 := hg₀inj (h.trans (map_zero _).symm)
        rw [h0]
        exact P.zero_mem))
    refine ⟨IsLocalization.lift (M := P.primeCompl) (S := Localization.AtPrime P) hg₀U, ?_, ?_⟩
    · exact (IsLocalization.lift_injective_iff hg₀U).mpr (fun x y =>
        ⟨fun h => congrArg _ (IsLocalization.injective (Localization.AtPrime P)
          (Ideal.primeCompl_le_nonZeroDivisors P) h), fun h => congrArg _ (hg₀inj h)⟩)
    · intro b
      rw [IsLocalization.lift_eq]
      exact hlam b

  have KL : ∀ (r₁ : ℕ) (f₁ : Fin (r₁ + 1) → O) (i₁ : Fin (r₁ + 1))
      (P₁ : Ideal (wcpaDjChartAlg O f₁ i₁)) [P₁.IsPrime] (r₂ : ℕ) (f₂ : Fin (r₂ + 1) → O)
      (i₂ : Fin (r₂ + 1)) (P₂ : Ideal (wcpaDjChartAlg O f₂ i₂)) [P₂.IsPrime]
      (j₁ : Localization.AtPrime P₁ →+* FractionRing O)
      (j₂ : Localization.AtPrime P₂ →+* FractionRing O),
      Ideal.span (Set.range f₁) = IsLocalRing.maximalIdeal O →
      Ideal.span (Set.range f₂) = IsLocalRing.maximalIdeal O → f₂ i₂ ≠ 0 →
      P₁.comap (algebraMap O (wcpaDjChartAlg O f₁ i₁)) = IsLocalRing.maximalIdeal O →
      P₂.comap (algebraMap O (wcpaDjChartAlg O f₂ i₂)) = IsLocalRing.maximalIdeal O →
      (∀ n ∈ N, ∃ c ∈ P₁, (c : Localization.Away (f₁ i₁)) = IsLocalization.mk'
        (Localization.Away (f₁ i₁)) n (⟨f₁ i₁, Submonoid.mem_powers _⟩ :
          Submonoid.powers (f₁ i₁))) →
      (∀ n ∈ N, ∃ c ∈ P₂, (c : Localization.Away (f₂ i₂)) = IsLocalization.mk'
        (Localization.Away (f₂ i₂)) n (⟨f₂ i₂, Submonoid.mem_powers _⟩ :
          Submonoid.powers (f₂ i₂))) →
      (∀ b : O, j₁ (algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
        (algebraMap O (wcpaDjChartAlg O f₁ i₁) b)) = algebraMap O (FractionRing O) b) →
      (∀ b : O, j₂ (algebraMap (wcpaDjChartAlg O f₂ i₂) (Localization.AtPrime P₂)
        (algebraMap O (wcpaDjChartAlg O f₂ i₂) b)) = algebraMap O (FractionRing O) b) →
      ∀ z : Localization.AtPrime P₂, ∃ y : Localization.AtPrime P₁, j₁ y = j₂ z := by
    intro r₁ f₁ i₁ P₁ _ r₂ f₂ i₂ P₂ _ j₁ j₂ hs₁ hs₂ hf₂ hc₁ hc₂ hRN₁ hRN₂ hJ₁ hJ₂
    have hA₂ : algebraMap O (FractionRing O) (f₂ i₂) ≠ 0 := fun h =>
      hf₂ (IsFractionRing.injective O (FractionRing O) (h.trans (map_zero _).symm))
    have ha₁N := notN r₁ f₁ i₁ P₁ hRN₁
    have ha₂N := notN r₂ f₂ i₂ P₂ hRN₂
    have ha₁m := inM r₁ f₁ hs₁ i₁
    have ha₂m := inM r₂ f₂ hs₂ i₂
    obtain ⟨d₀, hd₀N, hd₀U⟩ := CY (f₁ i₁) ha₁m ha₁N (f₂ i₂) ha₂m
    have hd₀U' := hd₀U ha₂N
    obtain ⟨e₀, he₀P, he₀⟩ := hRN₁ _ hd₀N
    have hu_coe : ((e₀ + algebraMap O (wcpaDjChartAlg O f₁ i₁) d₀ : wcpaDjChartAlg O f₁ i₁) :
        Localization.Away (f₁ i₁)) = IsLocalization.mk' (Localization.Away (f₁ i₁)) (f₂ i₂)
          (⟨f₁ i₁, Submonoid.mem_powers _⟩ : Submonoid.powers (f₁ i₁)) := by
      apply mkrel
      show ((e₀ : Localization.Away (f₁ i₁)) + algebraMap O _ d₀) * algebraMap O _ (f₁ i₁) =
        algebraMap O _ (f₂ i₂)
      rw [add_mul, he₀, hspec, map_sub, map_mul]
      ring
    have huP : e₀ + algebraMap O (wcpaDjChartAlg O f₁ i₁) d₀ ∉ P₁ := by
      intro h
      have h1 : algebraMap O (wcpaDjChartAlg O f₁ i₁) d₀ ∈ P₁ := by
        have := P₁.sub_mem h he₀P
        rwa [add_sub_cancel_left] at this
      have h2 : d₀ ∈ P₁.comap (algebraMap O (wcpaDjChartAlg O f₁ i₁)) := h1
      rw [hc₁] at h2
      exact (IsLocalRing.notMem_maximalIdeal.mpr hd₀U') h2
    have hJu := J2 r₁ f₁ i₁ P₁ j₁ hJ₁ _ _ hu_coe
    obtain ⟨Uu, hUu⟩ := (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime P₁) P₁
      (e₀ + algebraMap O (wcpaDjChartAlg O f₁ i₁) d₀)).mpr huP
    have hv : j₁ (↑Uu⁻¹ : Localization.AtPrime P₁) * algebraMap O (FractionRing O) (f₂ i₂) =
        algebraMap O (FractionRing O) (f₁ i₁) := by
      rw [← hJu, ← mul_assoc, ← map_mul, ← hUu, Units.inv_mul, map_one, one_mul]
    have hmax : ∀ x : wcpaDjChartAlg O f₁ i₁, x ∈ P₁ →
        algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁) x ∈
          IsLocalRing.maximalIdeal (Localization.AtPrime P₁) := fun x hx =>
      (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P₁) P₁ x).mpr hx
    have main : ∀ (x : Localization.Away (f₂ i₂)) (hx : x ∈ Algebra.adjoin O (Set.range fun l =>
        IsLocalization.mk' (Localization.Away (f₂ i₂)) (f₂ l)
          (⟨f₂ i₂, Submonoid.mem_powers _⟩ : Submonoid.powers (f₂ i₂)))),
        ∃ b : O, ∃ w : Localization.AtPrime P₁,
          j₁ w = j₂ (algebraMap (wcpaDjChartAlg O f₂ i₂) (Localization.AtPrime P₂)
            (⟨x, hx⟩ : wcpaDjChartAlg O f₂ i₂)) ∧
          w - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
            (algebraMap O (wcpaDjChartAlg O f₁ i₁) b) ∈
              IsLocalRing.maximalIdeal (Localization.AtPrime P₁) ∧
          (⟨x, hx⟩ : wcpaDjChartAlg O f₂ i₂) - algebraMap O (wcpaDjChartAlg O f₂ i₂) b ∈ P₂ := by
      intro x hx
      induction hx using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        obtain ⟨d, hdN, -⟩ := CY (f₂ i₂) ha₂m ha₂N (f₂ l) (inM r₂ f₂ hs₂ l)
        obtain ⟨e₁, he₁P, he₁⟩ := hRN₁ _ hdN
        obtain ⟨e₂, he₂P, he₂⟩ := hRN₂ _ hdN
        refine ⟨d, algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
          (algebraMap O (wcpaDjChartAlg O f₁ i₁) d) +
            algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁) e₁ * ↑Uu⁻¹, ?_, ?_, ?_⟩
        · apply mul_right_cancel₀ hA₂
          rw [J2 r₂ f₂ i₂ P₂ j₂ hJ₂ _ (f₂ l) rfl, map_add, map_mul, hJ₁, add_mul, mul_assoc, hv,
            J2 r₁ f₁ i₁ P₁ j₁ hJ₁ _ _ he₁, map_sub, map_mul]
          ring
        · have e : algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
              (algebraMap O (wcpaDjChartAlg O f₁ i₁) d) +
              algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁) e₁ * ↑Uu⁻¹ -
              algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) d) =
              algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁) e₁ * ↑Uu⁻¹ := by
            ring
          rw [e]
          exact Ideal.mul_mem_right _ _ (hmax _ he₁P)
        · have e : (⟨IsLocalization.mk' (Localization.Away (f₂ i₂)) (f₂ l)
              (⟨f₂ i₂, Submonoid.mem_powers _⟩ : Submonoid.powers (f₂ i₂)),
                Algebra.subset_adjoin ⟨l, rfl⟩⟩ : wcpaDjChartAlg O f₂ i₂) -
              algebraMap O (wcpaDjChartAlg O f₂ i₂) d = e₂ := by
            apply Subtype.ext
            show IsLocalization.mk' (Localization.Away (f₂ i₂)) (f₂ l)
              (⟨f₂ i₂, Submonoid.mem_powers _⟩ : Submonoid.powers (f₂ i₂)) -
                algebraMap O (Localization.Away (f₂ i₂)) d = (e₂ : Localization.Away (f₂ i₂))
            rw [he₂]
            apply mkrel
            rw [sub_mul, hspec, map_sub, map_mul]
          rw [e]
          exact he₂P
      | algebraMap r =>
        refine ⟨r, algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
          (algebraMap O (wcpaDjChartAlg O f₁ i₁) r), ?_, ?_, ?_⟩
        · rw [hJ₁]
          exact (hJ₂ r).symm
        · rw [sub_self]
          exact Ideal.zero_mem _
        · show algebraMap O (wcpaDjChartAlg O f₂ i₂) r - algebraMap O (wcpaDjChartAlg O f₂ i₂) r ∈ P₂
          rw [sub_self]
          exact P₂.zero_mem
      | add x y hx hy ihx ihy =>
        obtain ⟨b, w, h1, h2, h3⟩ := ihx
        obtain ⟨b', w', h1', h2', h3'⟩ := ihy
        refine ⟨b + b', w + w', ?_, ?_, ?_⟩
        · rw [map_add, h1, h1', ← map_add, ← map_add]
          rfl
        · have e : w + w' - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
              (algebraMap O (wcpaDjChartAlg O f₁ i₁) (b + b')) =
              (w - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) b)) +
              (w' - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) b')) := by
            rw [map_add, map_add]; ring
          rw [e]
          exact Ideal.add_mem _ h2 h2'
        · have e : (⟨x, hx⟩ + ⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) -
              algebraMap O (wcpaDjChartAlg O f₂ i₂) (b + b') =
              ((⟨x, hx⟩ : wcpaDjChartAlg O f₂ i₂) - algebraMap O (wcpaDjChartAlg O f₂ i₂) b) +
              ((⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) - algebraMap O (wcpaDjChartAlg O f₂ i₂) b') := by
            rw [map_add]; ring
          show (⟨x, hx⟩ + ⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) -
              algebraMap O (wcpaDjChartAlg O f₂ i₂) (b + b') ∈ P₂
          rw [e]
          exact P₂.add_mem h3 h3'
      | mul x y hx hy ihx ihy =>
        obtain ⟨b, w, h1, h2, h3⟩ := ihx
        obtain ⟨b', w', h1', h2', h3'⟩ := ihy
        refine ⟨b * b', w * w', ?_, ?_, ?_⟩
        · rw [map_mul, h1, h1', ← map_mul, ← map_mul]
          rfl
        · have e : w * w' - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
              (algebraMap O (wcpaDjChartAlg O f₁ i₁) (b * b')) =
              (w - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) b)) * w' +
              algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) b) *
              (w' - algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) b')) := by
            rw [map_mul, map_mul]; ring
          rw [e]
          exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ h2) (Ideal.mul_mem_left _ _ h2')
        · have e : (⟨x, hx⟩ * ⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) -
              algebraMap O (wcpaDjChartAlg O f₂ i₂) (b * b') =
              ((⟨x, hx⟩ : wcpaDjChartAlg O f₂ i₂) - algebraMap O (wcpaDjChartAlg O f₂ i₂) b) *
                (⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) +
              algebraMap O (wcpaDjChartAlg O f₂ i₂) b *
              ((⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) - algebraMap O (wcpaDjChartAlg O f₂ i₂) b') := by
            rw [map_mul]; ring
          show (⟨x, hx⟩ * ⟨y, hy⟩ : wcpaDjChartAlg O f₂ i₂) -
              algebraMap O (wcpaDjChartAlg O f₂ i₂) (b * b') ∈ P₂
          rw [e]
          exact P₂.add_mem (P₂.mul_mem_right _ h3) (P₂.mul_mem_left _ h3')
    intro z
    obtain ⟨⟨c, d⟩, rfl⟩ := IsLocalization.mk'_surjective P₂.primeCompl z
    obtain ⟨b, wc, hwc, -, -⟩ := main c.1 c.2
    obtain ⟨b', wd, hwd, hwdm, hdb'⟩ := main d.1.1 d.1.2
    have hwdU : IsUnit wd := by
      by_contra h
      have hm : wd ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P₁) :=
        (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr h)
      have h1 : algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
          (algebraMap O (wcpaDjChartAlg O f₁ i₁) b') ∈
            IsLocalRing.maximalIdeal (Localization.AtPrime P₁) := by
        have e : algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
            (algebraMap O (wcpaDjChartAlg O f₁ i₁) b') = wd + (-1) * (wd -
              algebraMap (wcpaDjChartAlg O f₁ i₁) (Localization.AtPrime P₁)
                (algebraMap O (wcpaDjChartAlg O f₁ i₁) b')) := by ring
        rw [e]
        exact Ideal.add_mem _ hm (Ideal.mul_mem_left _ _ hwdm)
      have h2 : b' ∈ P₁.comap (algebraMap O (wcpaDjChartAlg O f₁ i₁)) :=
        (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime P₁) P₁ _).mp h1
      rw [hc₁, ← hc₂] at h2
      have h3 : algebraMap O (wcpaDjChartAlg O f₂ i₂) b' ∈ P₂ := h2
      have h4 := P₂.add_mem hdb' h3
      rw [sub_add_cancel] at h4
      exact d.2 h4
    obtain ⟨Ud, hUd⟩ := hwdU
    have hne : j₁ wd ≠ 0 := by
      intro h0
      have h1 : j₁ (wd * ↑Ud⁻¹) = 1 := by rw [← hUd, Units.mul_inv, map_one]
      rw [map_mul, h0, zero_mul] at h1
      exact zero_ne_one h1
    refine ⟨wc * ↑Ud⁻¹, ?_⟩
    apply mul_right_cancel₀ hne
    calc j₁ (wc * ↑Ud⁻¹) * j₁ wd = j₁ wc := by
          rw [← map_mul, ← hUd, mul_assoc, Units.inv_mul, mul_one]
      _ = j₂ (algebraMap (wcpaDjChartAlg O f₂ i₂) (Localization.AtPrime P₂) c) := hwc
      _ = j₂ (IsLocalization.mk' (Localization.AtPrime P₂) c d) * j₁ wd := by
          rw [hwd, ← map_mul]
          exact congrArg j₂ (IsLocalization.mk'_spec (Localization.AtPrime P₂) c d).symm

  obtain ⟨j₁, hj₁i, hj₁⟩ := emb r₁ f₁ i₁ P₁ hf₁
  obtain ⟨j₂, hj₂i, hj₂⟩ := emb r₂ f₂ i₂ P₂ hf₂
  have h12 := KL r₁ f₁ i₁ P₁ r₂ f₂ i₂ P₂ j₁ j₂ hs₁ hs₂ hf₂ hc₁ hc₂ hRN₁ hRN₂ hj₁ hj₂
  have h21 := KL r₂ f₂ i₂ P₂ r₁ f₁ i₁ P₁ j₂ j₁ hs₂ hs₁ hf₁ hc₂ hc₁ hRN₂ hRN₁ hj₂ hj₁
  have hrange : j₂.rangeS = j₁.rangeS := by
    ext x
    constructor
    · rintro ⟨z, rfl⟩
      obtain ⟨y, hy⟩ := h12 z
      exact ⟨y, hy⟩
    · rintro ⟨z, rfl⟩
      obtain ⟨y, hy⟩ := h21 z
      exact ⟨y, hy⟩
  let e₁ : Localization.AtPrime P₁ ≃+* j₁.rangeS := RingEquiv.ofBijective j₁.rangeSRestrict
    ⟨fun a b h => hj₁i (congrArg Subtype.val h), j₁.rangeSRestrict_surjective⟩
  let e₂ : Localization.AtPrime P₂ ≃+* j₂.rangeS := RingEquiv.ofBijective j₂.rangeSRestrict
    ⟨fun a b h => hj₂i (congrArg Subtype.val h), j₂.rangeSRestrict_surjective⟩
  let ψ : Localization.AtPrime P₂ ≃+* Localization.AtPrime P₁ :=
    (e₂.trans (RingEquiv.subsemiringCongr hrange)).trans e₁.symm
  have key : ∀ z, j₁ (ψ z) = j₂ z := by
    intro z
    have h : e₁ (ψ z) = RingEquiv.subsemiringCongr hrange (e₂ z) := by
      simp only [ψ, RingEquiv.trans_apply, RingEquiv.apply_symm_apply]
    exact congrArg Subtype.val h
  refine ⟨ψ, fun a => hj₁i ?_⟩
  rw [key, hj₂, hj₁]

theorem wcpa_dj_rtsxs_u_chart_frac : ∀ (O : Type u) [CommRing O] [IsDomain O] (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i)) [P.IsPrime], f i ≠ 0 → (∀ b : O, b ≠ 0 → algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) (algebraMap O (wcpaDjChartAlg O f i) b) ≠ 0) ∧ ∀ u : Localization.AtPrime P, ∃ a b : O, b ≠ 0 ∧ u * algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) (algebraMap O (wcpaDjChartAlg O f i) b) = algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) (algebraMap O (wcpaDjChartAlg O f i) a) :=
by
  intro O _ _ r f i P _ hfi
  classical
  have hpow : Submonoid.powers (f i) ≤ nonZeroDivisors O :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hfi
  haveI hLdom : IsDomain (Localization.Away (f i)) := IsLocalization.isDomain_localization hpow
  haveI hCdom : IsDomain (wcpaDjChartAlg O f i) := Subalgebra.isDomain _
  have hιL : Function.Injective (algebraMap O (Localization.Away (f i))) :=
    IsLocalization.injective (Localization.Away (f i)) hpow
  have hcoe : ∀ b : O, ((algebraMap O (wcpaDjChartAlg O f i) b : wcpaDjChartAlg O f i) :
      Localization.Away (f i)) = algebraMap O (Localization.Away (f i)) b := fun b => rfl
  have hιC : Function.Injective (algebraMap O (wcpaDjChartAlg O f i)) := by
    intro b b' h
    apply hιL
    rw [← hcoe, ← hcoe, h]
  have hκ : Function.Injective (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)) :=
    IsLocalization.injective (Localization.AtPrime P) (Ideal.primeCompl_le_nonZeroDivisors P)
  refine ⟨fun b hb h0 => ?_, fun u => ?_⟩
  · apply hb
    apply hιC
    apply hκ
    rw [h0, map_zero, map_zero]
  · obtain ⟨⟨c, d⟩, hu⟩ := IsLocalization.surj P.primeCompl u
    obtain ⟨⟨a₁, s₁⟩, h1⟩ :=
      IsLocalization.surj (Submonoid.powers (f i)) (c : Localization.Away (f i))
    obtain ⟨⟨a₂, s₂⟩, h2⟩ := IsLocalization.surj (Submonoid.powers (f i))
      ((d : wcpaDjChartAlg O f i) : Localization.Away (f i))
    simp only at hu h1 h2
    have hs₁ : (s₁ : O) ≠ 0 := nonZeroDivisors.ne_zero (hpow s₁.2)
    have hs₂ : (s₂ : O) ≠ 0 := nonZeroDivisors.ne_zero (hpow s₂.2)
    have hd0 : (d : wcpaDjChartAlg O f i) ≠ 0 := by
      intro h
      apply Ideal.mem_primeCompl_iff.mp d.2
      rw [h]
      exact P.zero_mem
    have ha₂ : a₂ ≠ 0 := by
      rintro rfl
      rw [map_zero] at h2
      rcases mul_eq_zero.mp h2 with h | h
      · exact hd0 (Subtype.ext h)
      · exact hs₂ (hιL (by rw [h, map_zero]))
    refine ⟨a₁ * s₂, a₂ * s₁, mul_ne_zero ha₂ hs₁, ?_⟩
    have hkeyL : (c : Localization.Away (f i)) * algebraMap O _ (a₂ * s₁) =
        ((d : wcpaDjChartAlg O f i) : Localization.Away (f i)) * algebraMap O _ (a₁ * s₂) := by
      rw [map_mul, map_mul]
      linear_combination (algebraMap O (Localization.Away (f i)) a₂) * h1 -
        (algebraMap O (Localization.Away (f i)) a₁) * h2
    have hkeyC : c * algebraMap O (wcpaDjChartAlg O f i) (a₂ * s₁) =
        (d : wcpaDjChartAlg O f i) * algebraMap O (wcpaDjChartAlg O f i) (a₁ * s₂) := by
      apply Subtype.val_injective
      exact hkeyL
    have hunit : IsUnit (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)
        (d : wcpaDjChartAlg O f i)) :=
      IsLocalization.map_units (Localization.AtPrime P) d
    apply hunit.mul_left_cancel
    calc _ = (u * algebraMap _ (Localization.AtPrime P) (d : wcpaDjChartAlg O f i)) *
          algebraMap _ (Localization.AtPrime P)
            (algebraMap O (wcpaDjChartAlg O f i) (a₂ * s₁)) := by ring
      _ = _ := by rw [hu, ← map_mul, hkeyC, map_mul]

theorem wcpa_dj_rtsxs_u_sep_eq : ∀ (Y Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] [Y'.IsSeparated] (π : Y' ⟶ Y) (γ : Y) (y₁ y₂ : Y') (h₁ : π y₁ ⤳ γ) (h₂ : π y₂ ⤳ γ) (ψ : Y'.presheaf.stalk y₂ ≃+* Y'.presheaf.stalk y₁), (∀ a : Y.presheaf.stalk γ, ψ ((π.stalkMap y₂).hom ((Y.presheaf.stalkSpecializes h₂).hom a)) = (π.stalkMap y₁).hom ((Y.presheaf.stalkSpecializes h₁).hom a)) → (∀ u : Y'.presheaf.stalk y₂, ∃ a b : Y.presheaf.stalk γ, (π.stalkMap y₂).hom ((Y.presheaf.stalkSpecializes h₂).hom b) ≠ 0 ∧ u * (π.stalkMap y₂).hom ((Y.presheaf.stalkSpecializes h₂).hom b) = (π.stalkMap y₂).hom ((Y.presheaf.stalkSpecializes h₂).hom a)) → y₂ = y₁ :=
by
  intro Y Y' _ _ π γ y₁ y₂ h₁ h₂ ψ hcompat hfrac
  have g₁ : genericPoint Y' ⤳ y₁ := genericPoint_specializes y₁
  have g₂ : genericPoint Y' ⤳ y₂ := genericPoint_specializes y₂
  have hinj : ∀ (y : Y') (g : genericPoint Y' ⤳ y),
      Function.Injective (Y'.presheaf.stalkSpecializes g).hom := by
    intro y g
    exact IsFractionRing.injective (Y'.presheaf.stalk y) Y'.functionField
  have hη : π (genericPoint Y') ⤳ γ := (g₁.map π.continuous).trans h₁
  have hχ : ∀ (y : Y') (g : genericPoint Y' ⤳ y) (h : π y ⤳ γ) (a : Y.presheaf.stalk γ),
      (Y'.presheaf.stalkSpecializes g).hom ((π.stalkMap y).hom ((Y.presheaf.stalkSpecializes h).hom a)) =
      (π.stalkMap (genericPoint Y')).hom ((Y.presheaf.stalkSpecializes hη).hom a) := by
    intro y g h a
    have key : Y.presheaf.stalkSpecializes h ≫ π.stalkMap y ≫ Y'.presheaf.stalkSpecializes g =
        Y.presheaf.stalkSpecializes hη ≫ π.stalkMap (genericPoint Y') := by
      rw [← Scheme.Hom.stalkSpecializes_stalkMap, ← Category.assoc,
        TopCat.Presheaf.stalkSpecializes_comp]
    exact congrArg (fun f => f.hom a) key
  have hK : ∀ u, (Y'.presheaf.stalkSpecializes g₁).hom (ψ u) =
      (Y'.presheaf.stalkSpecializes g₂).hom u := by
    intro u
    obtain ⟨a, b, hb, hab⟩ := hfrac u
    have e2 := congrArg (Y'.presheaf.stalkSpecializes g₂).hom hab
    rw [map_mul, hχ y₂ g₂ h₂ b, hχ y₂ g₂ h₂ a] at e2
    have e1 := congrArg ψ hab
    rw [map_mul, hcompat b, hcompat a] at e1
    have e1' := congrArg (Y'.presheaf.stalkSpecializes g₁).hom e1
    rw [map_mul, hχ y₁ g₁ h₁ b, hχ y₁ g₁ h₁ a] at e1'
    have hne : (π.stalkMap (genericPoint Y')).hom ((Y.presheaf.stalkSpecializes hη).hom b) ≠ 0 := by
      rw [← hχ y₂ g₂ h₂ b]
      exact (map_ne_zero_iff _ (hinj y₂ g₂)).mpr hb
    exact mul_right_cancel₀ hne (e1'.trans e2.symm)
  let Ψ : Y'.presheaf.stalk y₂ ⟶ Y'.presheaf.stalk y₁ := CommRingCat.ofHom ψ.toRingHom
  have hΨ : Ψ ≫ Y'.presheaf.stalkSpecializes g₁ = Y'.presheaf.stalkSpecializes g₂ := by
    ext u
    exact hK u
  have hj : Spec.map (Y'.presheaf.stalkSpecializes g₁) ≫ Y'.fromSpecStalk y₁ =
      Spec.map (Y'.presheaf.stalkSpecializes g₁) ≫ (Spec.map Ψ ≫ Y'.fromSpecStalk y₂) := by
    rw [Scheme.SpecMap_stalkSpecializes_fromSpecStalk, ← Category.assoc, ← Spec.map_comp, hΨ,
      Scheme.SpecMap_stalkSpecializes_fromSpecStalk]
  have : IsDominant (Spec.map (Y'.presheaf.stalkSpecializes g₁)) := by
    rw [isDominant_iff, Spec.map_base]
    show DenseRange (PrimeSpectrum.comap (Y'.presheaf.stalkSpecializes g₁).hom)
    exact (PrimeSpectrum.denseRange_comap_iff_ker_le_nilRadical _).mpr
      (by rw [(RingHom.injective_iff_ker_eq_bot _).mp (hinj y₁ g₁)]; exact bot_le)
  have hfg := ext_of_isDominant (Spec.map (Y'.presheaf.stalkSpecializes g₁)) hj
  let m₁ : Spec (Y'.presheaf.stalk y₁) := IsLocalRing.closedPoint (Y'.presheaf.stalk y₁)
  have hloc : IsLocalHom ψ.toRingHom := ⟨fun a h => (isLocalHom_equiv ψ).map_nonunit a h⟩
  have hcl : (Spec.map Ψ) m₁ = IsLocalRing.closedPoint (Y'.presheaf.stalk y₂) :=
    IsLocalRing.comap_closedPoint ψ.toRingHom
  have e1 : Y'.fromSpecStalk y₁ m₁ = y₁ := Scheme.fromSpecStalk_closedPoint
  have e2 : (Spec.map Ψ ≫ Y'.fromSpecStalk y₂) m₁ = y₂ := by
    rw [Scheme.Hom.comp_apply, hcl]
    exact Scheme.fromSpecStalk_closedPoint
  exact e2.symm.trans ((congrArg (fun f => f m₁) hfg).symm.trans e1)

theorem wcpa_dj_rtsxs_phase1_unique : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] [IsLocallyNoetherian Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ : Y) (Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] [IsLocallyNoetherian Y'] (π : Y' ⟶ Y), wcpaDjIsProjOver k sY → wcpaDjIsProjOver k (π ≫ sY) → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) → IsProper π → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ y' y''' : Y', π y' = γ → π y''' = γ → y' ∈ wcpaDjSing Y' → y''' ∈ wcpaDjSing Y' → y''' = y' :=
by
  intro k _ Y _ _ sY B γ Y' _ _ π hproj hproj' hB hloc hγ hdim hπp hcharts y' y''' hπ' hπ''' hs' hs'''

  haveI : IsProper (π ≫ sY) := wcpa_dj_proj_proper k (π ≫ sY) hproj'
  haveI hsep : Y'.IsSeparated := by
    rw [Scheme.isSeparated_iff]
    have hfac : Limits.terminal.from Y' = (π ≫ sY) ≫ Limits.terminal.from _ :=
      Limits.terminal.hom_ext _ _
    rw [hfac]
    have : IsSeparated (Limits.terminal.from (Spec (.of k))) :=
      (Scheme.isSeparated_iff _).mp inferInstance
    infer_instance

  have hγ' : γ ∈ wcpaDjSing Y ∧ ∀ γ' ∈ wcpaDjSing Y, γ' ⤳ γ → γ' = γ := hγ
  have hγS : ¬ IsRegularLocalRing (Y.presheaf.stalk γ) := hγ'.1

  have hgen : genericPoint Y ∉ closure {γ} := by
    intro hmem
    have h1 : γ ⤳ genericPoint Y := specializes_iff_mem_closure.mpr hmem
    have h2 : genericPoint Y ⤳ γ := genericPoint_specializes γ
    have heq : γ = genericPoint Y := (h1.antisymm h2).eq
    apply hγS
    rw [heq]
    change IsRegularLocalRing Y.functionField
    infer_instance
  have hnode : wcpaDjTorNodeSgl Y B γ :=
    (hloc γ).resolve_left (fun h => hγS ((wcpa_dj_rtsx_pt_basic Y B γ).1 h))
  obtain ⟨n, q, A, iA, hAreg, hAc, x₀, y₀, v, σ, b, e, h, J, hv, hdimA, hspan, hdisj, hcard,
    hcov, hass, hiff⟩ := hnode

  have hn1 : n = 1 :=
    wcpa_dj_rtsxs_w_node_dim_one (Y.presheaf.stalk γ) A n x₀ y₀ v σ b e hdim hv hdimA hspan
  subst hn1

  have hw2 : 2 ≤ b 0 := by
    by_contra hlt
    push_neg at hlt
    apply hγS
    exact wcpa_dj_rtsx_low_weight_regular Y B γ (b 0)
      ⟨1, q, A, iA, hAreg, hAc, x₀, y₀, v, σ, b, e, h, J, hv, hdimA, hspan, hdisj, hcard, hcov,
        hass, hiff, by simp⟩ (by omega)
  have hset : ({x₀, y₀} ∪ Set.range σ : Set A) = {x₀, y₀, σ 0} := by
    ext z; simp [Fin.exists_fin_one, eq_comm, or_assoc]
  have hspan3 : Ideal.span {x₀, y₀, σ 0} = IsLocalRing.maximalIdeal A := by
    rw [← hset]; exact hspan
  have hdim3 : ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A := by rw [← hdimA]
  obtain ⟨e₁⟩ : Nonempty (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk γ))
      (Y.presheaf.stalk γ) ≃+* (A ⧸ Ideal.span {x₀ * y₀ - v * σ 0 ^ b 0})) :=
    ⟨e.trans (Ideal.quotEquivOfEq (by rw [Fin.prod_univ_one]))⟩
  clear hiff hass hcov hcard hdisj h J e

  obtain ⟨N, hNmem, hNle, hNsq, hNcyc⟩ := wcpa_dj_rtsxs_u_N_cyclic (Y.presheaf.stalk γ) A x₀ y₀
    (σ 0) (x₀ * y₀ - v * σ 0 ^ b 0) e₁ hspan3

  have g6 : ∀ z : Y', π z = γ → z ∈ wcpaDjSing Y' → ∀ hz : π z ⤳ γ,
      ∃ (r : ℕ) (f : Fin (r + 1) → Y.presheaf.stalk γ) (i : Fin (r + 1))
        (P : Ideal (wcpaDjChartAlg (Y.presheaf.stalk γ) f i)) (_ : P.IsPrime)
        (Ψ : Y'.presheaf.stalk z ≃+* Localization.AtPrime P),
        Ideal.span (Set.range f) = IsLocalRing.maximalIdeal (Y.presheaf.stalk γ) ∧ f i ≠ 0 ∧
        P.comap (algebraMap (Y.presheaf.stalk γ) (wcpaDjChartAlg (Y.presheaf.stalk γ) f i)) =
          IsLocalRing.maximalIdeal (Y.presheaf.stalk γ) ∧
        (∀ n ∈ N, ∃ c ∈ P, (c : Localization.Away (f i)) = IsLocalization.mk'
          (Localization.Away (f i)) n (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) ∧
        ∀ a, Ψ ((π.stalkMap z).hom ((Y.presheaf.stalkSpecializes hz).hom a)) =
          algebraMap (wcpaDjChartAlg (Y.presheaf.stalk γ) f i) (Localization.AtPrime P)
            (algebraMap (Y.presheaf.stalk γ) (wcpaDjChartAlg (Y.presheaf.stalk γ) f i) a) := by
    intro z hzγ hzS hz
    have hzS' : ¬ IsRegularLocalRing (Y'.presheaf.stalk z) := hzS
    subst hzγ
    obtain ⟨r, f, i, P, hP, Φ, hspanf, hfi, hPc, hΦ⟩ :=
      wcpa_dj_rtsxc_chart_stalk Y (π z) Y' π hgen hcharts z (specializes_refl _)
    rw [TopCat.Presheaf.stalkSpecializes_refl, CommRingCat.hom_id, Ideal.comap_id] at hspanf
    have hnreg : ¬ IsRegularLocalRing (Localization.AtPrime P) := fun hr =>
      hzS' (@IsRegularLocalRing.of_ringEquiv _ _ hr _ _ Φ.symm)
    have hRN := wcpa_dj_rtsxs_u_rn_transfer (Y.presheaf.stalk (π z)) A x₀ y₀ (σ 0) v (b 0) e₁
      r f i P hspanf hfi hPc hnreg (by
        intro r' φ i' P' hP' h1 h2 h3 h4
        exact wcpa_dj_rtsxs_u_model_rn A x₀ y₀ (σ 0) v (b 0) r' φ i' P' hv hdim3 hspan3 hw2
          h1 h2 h3 h4)
    refine ⟨r, f, i, P, hP, Φ, hspanf, hfi, hPc, ?_, ?_⟩
    · intro n hn
      exact hRN n (hNmem n hn)
    · intro a
      rw [TopCat.Presheaf.stalkSpecializes_refl, CommRingCat.hom_id, RingHom.id_apply]
      exact hΦ a

  obtain ⟨r₁, f₁, i₁, P₁, hP₁, Ψ₁, hs₁, hf₁, hc₁, hRN₁, hΨ₁⟩ :=
    g6 y' hπ' hs' (specializes_of_eq hπ')
  obtain ⟨r₂, f₂, i₂, P₂, hP₂, Ψ₂, hs₂, hf₂, hc₂, hRN₂, hΨ₂⟩ :=
    g6 y''' hπ''' hs''' (specializes_of_eq hπ''')
  obtain ⟨ψ₀, hψ₀⟩ := wcpa_dj_rtsxs_u_rn_chart_eq (Y.presheaf.stalk γ) N r₁ f₁ i₁ P₁ r₂ f₂ i₂ P₂
    hNle hNsq hNcyc hs₁ hs₂ hf₁ hf₂ hc₁ hc₂ hRN₁ hRN₂
  have hcompat : ∀ a, (Ψ₂.trans (ψ₀.trans Ψ₁.symm)) ((π.stalkMap y''').hom
      ((Y.presheaf.stalkSpecializes (specializes_of_eq hπ''')).hom a)) =
      (π.stalkMap y').hom ((Y.presheaf.stalkSpecializes (specializes_of_eq hπ')).hom a) := by
    intro a
    rw [RingEquiv.trans_apply, RingEquiv.trans_apply, hΨ₂ a, hψ₀ a]
    exact Ψ₁.symm_apply_eq.mpr (hΨ₁ a).symm

  have hbir : ∀ u : Y'.presheaf.stalk y''', ∃ a b : Y.presheaf.stalk γ,
      (π.stalkMap y''').hom ((Y.presheaf.stalkSpecializes (specializes_of_eq hπ''')).hom b) ≠ 0 ∧
      u * (π.stalkMap y''').hom ((Y.presheaf.stalkSpecializes (specializes_of_eq hπ''')).hom b) =
        (π.stalkMap y''').hom ((Y.presheaf.stalkSpecializes (specializes_of_eq hπ''')).hom a) := by
    intro u
    obtain ⟨hinj, hfrac⟩ := wcpa_dj_rtsxs_u_chart_frac (Y.presheaf.stalk γ) r₂ f₂ i₂ P₂ hf₂
    obtain ⟨a, b, hb, hab⟩ := hfrac (Ψ₂ u)
    refine ⟨a, b, ?_, ?_⟩
    · intro h0
      apply hinj b hb
      rw [← hΨ₂ b, h0, map_zero]
    · apply Ψ₂.injective
      rw [map_mul, hΨ₂ b, hΨ₂ a]
      exact hab

  exact wcpa_dj_rtsxs_u_sep_eq Y Y' π γ y' y''' (specializes_of_eq hπ') (specializes_of_eq hπ''')
    (Ψ₂.trans (ψ₀.trans Ψ₁.symm)) hcompat hbir

theorem wcpa_dj_rtsxs_ocw_regseq : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s : A), ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → (∀ a : A, s * a = 0 → a = 0) ∧ (∀ a : A, x * a ∈ Ideal.span {s} → a ∈ Ideal.span {s}) ∧ (∀ a : A, y * a ∈ Ideal.span ({s, x} : Set A) → a ∈ Ideal.span ({s, x} : Set A)) :=
by
  intro A _ _ x y s hdim hspan
  classical
  have QR := wc_rl_quot_regular wc_rl_quot_embdim
  have DOM := wc_rl_isDomain wc_rl_quot_embdim QR

  have nak : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (t : B)
      (T : Set B), T.Finite → Ideal.span (insert t T) = IsLocalRing.maximalIdeal B →
      T.ncard < Submodule.spanFinrank (IsLocalRing.maximalIdeal B) →
      t ∉ IsLocalRing.maximalIdeal B ^ 2 ∧ t ∉ Ideal.span T := by
    intro B _ _ _ t T hT hsp hlt
    have RC : ¬ (IsLocalRing.maximalIdeal B ≤ Ideal.span T) := by
      intro hle
      have hNle : Ideal.span T ≤ IsLocalRing.maximalIdeal B := by
        rw [← hsp]; exact Ideal.span_mono (Set.subset_insert t T)
      have heq : IsLocalRing.maximalIdeal B = Ideal.span T := le_antisymm hle hNle
      have h1 : Submodule.spanFinrank (IsLocalRing.maximalIdeal B) ≤ T.ncard := by
        rw [heq]; exact Submodule.spanFinrank_span_le_ncard_of_finite hT
      omega
    refine ⟨fun ht2 => RC ?_, fun ht => RC ?_⟩
    · have hle : IsLocalRing.maximalIdeal B ≤
          Ideal.span T ⊔ IsLocalRing.maximalIdeal B • IsLocalRing.maximalIdeal B := by
        calc IsLocalRing.maximalIdeal B = Ideal.span (insert t T) := hsp.symm
          _ ≤ _ := by
            rw [Ideal.span_le]
            intro u hu
            rcases Set.mem_insert_iff.mp hu with h | h
            · rw [h]
              apply Submodule.mem_sup_right
              rw [Ideal.smul_eq_mul, ← pow_two]
              exact ht2
            · exact Submodule.mem_sup_left (Ideal.subset_span h)
      exact Submodule.le_of_le_smul_of_le_jacobson_bot (IsNoetherian.noetherian _)
        (IsLocalRing.maximalIdeal_le_jacobson ⊥) hle
    · rw [← hsp, Ideal.span_le]
      intro u hu
      rcases Set.mem_insert_iff.mp hu with h | h
      · rw [h]; exact ht
      · exact Ideal.subset_span h

  have quotmax : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (t : B) (S : Set B)
      [IsLocalRing (B ⧸ Ideal.span {t})],
      Ideal.span (insert t S) = IsLocalRing.maximalIdeal B →
      Ideal.span (Ideal.Quotient.mk (Ideal.span {t}) '' S) =
        IsLocalRing.maximalIdeal (B ⧸ Ideal.span {t}) := by
    intro B _ _ t S _ hsp
    have htm : t ∈ IsLocalRing.maximalIdeal B := by
      rw [← hsp]; exact Ideal.subset_span (Set.mem_insert t S)
    have hker : RingHom.ker (Ideal.Quotient.mk (Ideal.span {t})) ≤ IsLocalRing.maximalIdeal B := by
      rw [Ideal.mk_ker, Ideal.span_le, Set.singleton_subset_iff]; exact htm
    have hmax := IsLocalRing.eq_maximalIdeal
      (Ideal.IsMaximal.map_of_surjective_of_ker_le Ideal.Quotient.mk_surjective hker)
    rw [← hmax, ← hsp, Ideal.map_span, Set.image_insert_eq,
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self t), Ideal.span_insert_zero]

  have hcomap : ∀ b : A, b ∈ Ideal.span ({s, x} : Set A) ↔
      Ideal.Quotient.mk (Ideal.span {s}) b ∈ Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x} := by
    intro b
    constructor
    · intro hb
      obtain ⟨c, d, rfl⟩ := Ideal.mem_span_pair.mp hb
      rw [Ideal.mem_span_singleton']
      refine ⟨Ideal.Quotient.mk _ d, ?_⟩
      rw [map_add, map_mul, map_mul,
        Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self s), mul_zero, zero_add]
    · intro hb
      obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp hb
      obtain ⟨c', rfl⟩ := Ideal.Quotient.mk_surjective c
      rw [← map_mul, Ideal.Quotient.eq] at hc
      obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.mp hc
      rw [Ideal.mem_span_pair]
      exact ⟨-d, c', by linear_combination (-1 : A) * hd⟩

  have hn0 : 3 ≤ Submodule.spanFinrank (IsLocalRing.maximalIdeal A) := by
    have h := ringKrullDim_le_spanFinrank_maximalIdeal A
    rw [← hdim] at h
    exact_mod_cast h

  have hsA : s ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (by simp)
  have hins : Ideal.span (insert s ({x, y} : Set A)) = IsLocalRing.maximalIdeal A := by
    rw [← hspan]
    congr 1
    ext z
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff]
    tauto
  have hcard : ({x, y} : Set A).ncard < Submodule.spanFinrank (IsLocalRing.maximalIdeal A) := by
    have : ({x, y} : Set A).ncard ≤ 2 := by
      refine (Set.ncard_insert_le _ _).trans ?_
      rw [Set.ncard_singleton]
    omega
  obtain ⟨hs2, -⟩ := nak A s {x, y} (Set.toFinite _) hins hcard
  haveI hdomA : IsDomain A := DOM A inferInstance
  have hs0 : s ≠ 0 := fun h => hs2 (by rw [h]; exact Ideal.zero_mem _)
  refine ⟨fun a ha => (mul_eq_zero.mp ha).resolve_left hs0, ?_⟩
  obtain ⟨hregA1, -⟩ := QR A inferInstance s hsA hs2
  haveI := hregA1
  have hrk1 : Submodule.spanFinrank (IsLocalRing.maximalIdeal (A ⧸ Ideal.span {s})) + 1 =
      Submodule.spanFinrank (IsLocalRing.maximalIdeal A) := by
    obtain ⟨_, h⟩ := wc_rl_quot_embdim A s hsA hs2
    exact h
  haveI hdomA1 : IsDomain (A ⧸ Ideal.span {s}) := DOM _ hregA1

  have hspanA1 : Ideal.span (insert (Ideal.Quotient.mk (Ideal.span {s}) x)
      ({Ideal.Quotient.mk (Ideal.span {s}) y} : Set (A ⧸ Ideal.span {s}))) =
      IsLocalRing.maximalIdeal (A ⧸ Ideal.span {s}) := by
    have h := quotmax A s {x, y} hins
    rw [Set.image_insert_eq, Set.image_singleton] at h
    exact h
  have hcard1 : ({Ideal.Quotient.mk (Ideal.span {s}) y} : Set (A ⧸ Ideal.span {s})).ncard <
      Submodule.spanFinrank (IsLocalRing.maximalIdeal (A ⧸ Ideal.span {s})) := by
    rw [Set.ncard_singleton]; omega
  obtain ⟨hx2, -⟩ := nak (A ⧸ Ideal.span {s}) _ _ (Set.finite_singleton _) hspanA1 hcard1
  have hxA1 : Ideal.Quotient.mk (Ideal.span {s}) x ∈ IsLocalRing.maximalIdeal (A ⧸ Ideal.span {s}) := by
    rw [← hspanA1]; exact Ideal.subset_span (Set.mem_insert _ _)
  have hx0 : Ideal.Quotient.mk (Ideal.span {s}) x ≠ 0 :=
    fun h => hx2 (by rw [h]; exact Ideal.zero_mem _)
  refine ⟨fun a ha => ?_, ?_⟩
  · rw [← Ideal.Quotient.eq_zero_iff_mem] at ha
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    rw [map_mul] at ha
    exact (mul_eq_zero.mp ha).resolve_left hx0

  obtain ⟨hregA2, -⟩ := QR (A ⧸ Ideal.span {s}) hregA1 _ hxA1 hx2
  haveI := hregA2
  have hrk2 : Submodule.spanFinrank (IsLocalRing.maximalIdeal
      ((A ⧸ Ideal.span {s}) ⧸ Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x})) + 1 =
      Submodule.spanFinrank (IsLocalRing.maximalIdeal (A ⧸ Ideal.span {s})) := by
    obtain ⟨_, h⟩ := wc_rl_quot_embdim (A ⧸ Ideal.span {s}) _ hxA1 hx2
    exact h
  haveI hdomA2 : IsDomain
      ((A ⧸ Ideal.span {s}) ⧸ Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x}) := DOM _ hregA2
  have hspanA2 : Ideal.span (insert (Ideal.Quotient.mk
      (Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x}) (Ideal.Quotient.mk (Ideal.span {s}) y))
      (∅ : Set ((A ⧸ Ideal.span {s}) ⧸ Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x}))) =
      IsLocalRing.maximalIdeal
        ((A ⧸ Ideal.span {s}) ⧸ Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x}) := by
    have h := quotmax (A ⧸ Ideal.span {s}) _ _ hspanA1
    rw [Set.image_singleton] at h
    have e : (insert (Ideal.Quotient.mk
        (Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x}) (Ideal.Quotient.mk (Ideal.span {s}) y))
        (∅ : Set ((A ⧸ Ideal.span {s}) ⧸ Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x}))) =
        {Ideal.Quotient.mk (Ideal.span {Ideal.Quotient.mk (Ideal.span {s}) x})
          (Ideal.Quotient.mk (Ideal.span {s}) y)} := by
      ext z; simp
    rw [e]
    exact h
  obtain ⟨-, hy0⟩ := nak _ _ (∅ : Set _) Set.finite_empty hspanA2
    (by rw [Set.ncard_empty]; omega)
  rw [Ideal.span_empty, Ideal.mem_bot] at hy0

  intro a ha
  rw [hcomap] at ha
  rw [hcomap]
  rw [← Ideal.Quotient.eq_zero_iff_mem] at ha
  rw [← Ideal.Quotient.eq_zero_iff_mem]
  simp only [map_mul] at ha
  exact (mul_eq_zero.mp ha).resolve_left hy0

theorem wcpa_dj_rtsxs_ocw_s_nzd : ∀ (A : Type u) [CommRing A] (x y s v : A) (w : ℕ), (∀ a : A, s * a = 0 → a = 0) → (∀ a : A, x * a ∈ Ideal.span {s} → a ∈ Ideal.span {s}) → (∀ a : A, y * a ∈ Ideal.span ({s, x} : Set A) → a ∈ Ideal.span ({s, x} : Set A)) → (Ideal.span ({x, y, s} : Set A)).IsPrime → (∀ h : MvPolynomial (Fin 2) A, MvPolynomial.C s * h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) → h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) ∧ (∀ h : MvPolynomial (Fin 2) A, MvPolynomial.C s * h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔ Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A)} → h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔ Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A)}) :=
by
  intro A _ x y s v w hs0 hxs hysx hprime

  have swap : ∀ (J : Ideal (MvPolynomial (Fin 2) A)) (t g : MvPolynomial (Fin 2) A),
      (∀ h, t * h ∈ J → h ∈ J) →
      (∀ b, g * b ∈ J ⊔ Ideal.span {t} → b ∈ J ⊔ Ideal.span {t}) →
      ∀ a, t * a ∈ J ⊔ Ideal.span {g} → a ∈ J ⊔ Ideal.span {g} := by
    intro J t g h1 h2 a ha
    obtain ⟨j, hj, k, hk, hjk⟩ := Submodule.mem_sup.mp ha
    obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.mp hk
    have hgb : g * b ∈ J ⊔ Ideal.span {t} := by
      have e : g * b = t * a + (-j) := by rw [← hjk]; ring
      rw [e]
      exact Ideal.add_mem _
        (Ideal.mem_sup_right (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self t)))
        (Ideal.mem_sup_left (J.neg_mem hj))
    obtain ⟨j', hj', k', hk', hjk'⟩ := Submodule.mem_sup.mp (h2 b hgb)
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hk'
    have hmem : t * (a - g * c) ∈ J := by
      have e : t * (a - g * c) = j + g * j' := by
        linear_combination (-1 : MvPolynomial (Fin 2) A) * hjk - g * hjk'
      rw [e]
      exact J.add_mem hj (J.mul_mem_left _ hj')
    have h3 := h1 _ hmem
    have e : a = (a - g * c) + c * g := by ring
    rw [e]
    exact Ideal.add_mem _ (Ideal.mem_sup_left h3)
      (Ideal.mem_sup_right (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self g)))

  have transfer : ∀ (I : Ideal A) (r : A), (∀ a, r * a ∈ I → a ∈ I) →
      ∀ h : MvPolynomial (Fin 2) A, MvPolynomial.C r * h ∈ Ideal.map MvPolynomial.C I →
        h ∈ Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A) I := by
    intro I r hr h hh
    rw [MvPolynomial.mem_map_C_iff] at hh ⊢
    intro m
    have hm := hh m
    rw [MvPolynomial.coeff_C_mul] at hm
    exact hr _ hm

  have g3nzd : ∀ b : MvPolynomial (Fin 2) A,
      (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) :
        MvPolynomial (Fin 2) A) * b ∈ Ideal.map MvPolynomial.C (Ideal.span ({x, y, s} : Set A)) →
      b ∈ Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A) (Ideal.span ({x, y, s} : Set A)) := by
    haveI := hprime
    have hker : RingHom.ker (MvPolynomial.map (Ideal.Quotient.mk (Ideal.span ({x, y, s} : Set A))) :
        MvPolynomial (Fin 2) A →+* MvPolynomial (Fin 2) (A ⧸ Ideal.span ({x, y, s} : Set A))) =
        Ideal.map MvPolynomial.C (Ideal.span ({x, y, s} : Set A)) := by
      rw [MvPolynomial.ker_map, Ideal.mk_ker]
    intro b hb
    rw [← hker, RingHom.mem_ker] at hb ⊢
    rw [map_mul] at hb
    rcases mul_eq_zero.mp hb with h | h
    · exfalso
      have e1 := congrArg (MvPolynomial.eval (fun _ => (1 : A ⧸ Ideal.span ({x, y, s} : Set A)))) h
      have e0 := congrArg (MvPolynomial.eval (fun _ => (0 : A ⧸ Ideal.span ({x, y, s} : Set A)))) h
      simp only [map_sub, map_mul, map_pow, MvPolynomial.map_X, MvPolynomial.map_C,
        MvPolynomial.eval_X, MvPolynomial.eval_C, map_zero] at e1 e0
      have h10 : (1 : A ⧸ Ideal.span ({x, y, s} : Set A)) = 0 := by linear_combination e1 - e0
      exact one_ne_zero h10
    · exact h
  generalize hg1 : (MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x : MvPolynomial (Fin 2) A) = g1
  generalize hg2 : (MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y : MvPolynomial (Fin 2) A) = g2
  generalize hg3 : (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) :
    MvPolynomial (Fin 2) A) = g3 at g3nzd ⊢

  have idA : Ideal.span {(MvPolynomial.C s : MvPolynomial (Fin 2) A)} =
      Ideal.map MvPolynomial.C (Ideal.span {s}) := by
    rw [Ideal.map_span, Set.image_singleton]
  have idB : Ideal.span {g1} ⊔ Ideal.span {(MvPolynomial.C s : MvPolynomial (Fin 2) A)} =
      Ideal.map MvPolynomial.C (Ideal.span ({s, x} : Set A)) := by
    rw [Ideal.map_span, Set.image_insert_eq, Set.image_singleton]
    apply le_antisymm
    · refine sup_le ?_ ?_
      · rw [Ideal.span_le, Set.singleton_subset_iff, ← hg1]
        exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
          (Ideal.subset_span (by simp))
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.subset_span (by simp)
    · rw [Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl
      · exact Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)
      · have e : (MvPolynomial.C x : MvPolynomial (Fin 2) A) = MvPolynomial.C s * MvPolynomial.X 0 - g1 := by
          rw [← hg1]; ring
        rw [SetLike.mem_coe, e]
        exact Ideal.sub_mem _
          (Ideal.mem_sup_right (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)))
          (Ideal.mem_sup_left (Ideal.mem_span_singleton_self _))
  have idC : Ideal.span ({g1, g2} : Set (MvPolynomial (Fin 2) A)) ⊔
      Ideal.span {(MvPolynomial.C s : MvPolynomial (Fin 2) A)} =
      Ideal.map MvPolynomial.C (Ideal.span ({x, y, s} : Set A)) := by
    rw [Ideal.map_span, Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton]
    apply le_antisymm
    · refine sup_le ?_ ?_
      · rw [Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rcases hz with h | h
        · rw [h, ← hg1]
          exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
            (Ideal.subset_span (by simp))
        · rw [h, ← hg2]
          exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
            (Ideal.subset_span (by simp))
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.subset_span (by simp)
    · rw [Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with h | h | h
      · have e : (MvPolynomial.C x : MvPolynomial (Fin 2) A) = MvPolynomial.C s * MvPolynomial.X 0 - g1 := by
          rw [← hg1]; ring
        rw [h, SetLike.mem_coe, e]
        exact Ideal.sub_mem _
          (Ideal.mem_sup_right (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)))
          (Ideal.mem_sup_left (Ideal.subset_span (by simp)))
      · have e : (MvPolynomial.C y : MvPolynomial (Fin 2) A) = MvPolynomial.C s * MvPolynomial.X 1 - g2 := by
          rw [← hg2]; ring
        rw [h, SetLike.mem_coe, e]
        exact Ideal.sub_mem _
          (Ideal.mem_sup_right (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)))
          (Ideal.mem_sup_left (Ideal.subset_span (by simp)))
      · rw [h]
        exact Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)

  have hsC : ∀ h : MvPolynomial (Fin 2) A, MvPolynomial.C s * h ∈ (⊥ : Ideal (MvPolynomial (Fin 2) A)) →
      h ∈ (⊥ : Ideal (MvPolynomial (Fin 2) A)) := by
    intro h hh
    have h1 := transfer ⊥ s (fun a ha => by rw [Ideal.mem_bot] at ha ⊢; exact hs0 a ha) h
      (by rwa [Ideal.map_bot])
    rwa [Ideal.map_bot] at h1

  have H1 : ∀ a, MvPolynomial.C s * a ∈ Ideal.span {g1} → a ∈ Ideal.span {g1} := by
    have h1 := swap ⊥ (MvPolynomial.C s) g1 hsC (by
      intro b hb
      rw [bot_sup_eq, idA] at hb ⊢
      apply transfer _ x hxs
      have e : MvPolynomial.C x * b = MvPolynomial.C s * (MvPolynomial.X 0 * b) - g1 * b := by
        rw [← hg1]; ring
      rw [e]
      refine Ideal.sub_mem _ ?_ hb
      rw [← idA]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))
    simpa only [bot_sup_eq] using h1

  have hsplit : Ideal.span ({g1, g2} : Set (MvPolynomial (Fin 2) A)) =
      Ideal.span {g1} ⊔ Ideal.span {g2} := Ideal.span_insert g1 {g2}
  have N1 : ∀ a, MvPolynomial.C s * a ∈ Ideal.span ({g1, g2} : Set (MvPolynomial (Fin 2) A)) →
      a ∈ Ideal.span ({g1, g2} : Set (MvPolynomial (Fin 2) A)) := by
    rw [hsplit]
    refine swap (Ideal.span {g1}) (MvPolynomial.C s) g2 H1 ?_
    intro b hb
    rw [idB] at hb ⊢
    apply transfer _ y hysx
    have e : MvPolynomial.C y * b = MvPolynomial.C s * (MvPolynomial.X 1 * b) - g2 * b := by
      rw [← hg2]; ring
    rw [e]
    refine Ideal.sub_mem _ ?_ hb
    rw [← idB]
    exact Ideal.mem_sup_right (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))

  refine ⟨N1, swap _ (MvPolynomial.C s) g3 N1 ?_⟩
  intro b hb
  rw [idC] at hb ⊢
  exact g3nzd b hb

theorem wcpa_dj_rtsxs_ocw_presentation : ∀ (A : Type u) [CommRing A] (x y s v : A) (w : ℕ), 2 ≤ w → Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) → (∀ h : MvPolynomial (Fin 2) A, MvPolynomial.C s * h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔ Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A)} → h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔ Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A)}) → ∃ θ : (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) →+* wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2, Function.Surjective θ ∧ (∀ a : A, θ (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C a)) = algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) a)) ∧ ((θ (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A)) : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) * algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s) = algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x)) ∧ ((θ (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A)) : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) * algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s) = algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y)) ∧ RingHom.ker θ = Ideal.span {Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A)} :=
by
  intro A _ x y s v w hw hsR N2
  clear hsR
  classical
  have e1 : v * s ^ w = s ^ 2 * (v * s ^ (w - 2)) := by
    obtain ⟨m, rfl⟩ : ∃ m, w = m + 2 := ⟨w - 2, by omega⟩
    rw [Nat.add_sub_cancel]
    ring
  have e2 : (MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A) =
      MvPolynomial.C (v * s ^ (w - 2)) := by
    rw [map_mul, map_pow]
  rw [e2] at N2 ⊢
  rw [e1]
  generalize v * s ^ (w - 2) = c at N2 ⊢
  have hFI : x * y - s ^ 2 * c ∈ Ideal.span {x * y - s ^ 2 * c} := Ideal.mem_span_singleton_self _
  generalize hIdef : Ideal.span {x * y - s ^ 2 * c} = I at hFI ⊢
  have hxy : Ideal.Quotient.mk I x * Ideal.Quotient.mk I y =
      Ideal.Quotient.mk I s ^ 2 * Ideal.Quotient.mk I c := by
    rw [← map_mul, ← map_pow, ← map_mul, Ideal.Quotient.eq]
    exact hFI
  let φ : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 :=
    MvPolynomial.eval₂Hom ((algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2)).comp (Ideal.Quotient.mk I))
      ![wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 0,
        wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 1]
  have hC : ∀ a : A, φ (MvPolynomial.C a) = algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2) (Ideal.Quotient.mk I a) := by
    intro a
    exact MvPolynomial.eval₂Hom_C _ _ _
  have hX0 : φ (MvPolynomial.X 0) = wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 0 := by
    exact MvPolynomial.eval₂Hom_X' _ _ _
  have hX1 : φ (MvPolynomial.X 1) = wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 1 := by
    exact MvPolynomial.eval₂Hom_X' _ _ _
  have hv0 : (wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 0).val = IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) := rfl
  have hv1 : (wcpaDjChartGen (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2 1).val = IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) := rfl
  have hva : ∀ r : A ⧸ I, (algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) ![Ideal.Quotient.mk I x, Ideal.Quotient.mk I y, Ideal.Quotient.mk I s] 2) r).val = algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) r := fun r => rfl
  have hg1 : φ (MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x) = 0 := by
    apply Subtype.ext
    rw [map_sub, map_mul, hC, hC, hX0, Subalgebra.coe_sub, Subalgebra.coe_mul, hva, hva, hv0,
      ZeroMemClass.coe_zero]
    show (algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I s) * IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) - algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) : Localization.Away (Ideal.Quotient.mk I s)) = 0
    rw [sub_eq_zero]
    exact IsLocalization.mk'_spec' (M := Submonoid.powers (Ideal.Quotient.mk I s)) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) ⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩
  have hg2 : φ (MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y) = 0 := by
    apply Subtype.ext
    rw [map_sub, map_mul, hC, hC, hX1, Subalgebra.coe_sub, Subalgebra.coe_mul, hva, hva, hv1,
      ZeroMemClass.coe_zero]
    show (algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I s) * IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) - algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) : Localization.Away (Ideal.Quotient.mk I s)) = 0
    rw [sub_eq_zero]
    exact IsLocalization.mk'_spec' (M := Submonoid.powers (Ideal.Quotient.mk I s)) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) ⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩
  have hg3 : φ (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c) = 0 := by
    apply Subtype.ext
    rw [map_sub, map_mul, hC, hX0, hX1, Subalgebra.coe_sub, Subalgebra.coe_mul, hva, hv0, hv1,
      ZeroMemClass.coe_zero]
    show (IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) * IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) (⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩ : Submonoid.powers (Ideal.Quotient.mk I s)) - algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I c) : Localization.Away (Ideal.Quotient.mk I s)) = 0
    rw [sub_eq_zero, ← IsLocalization.mk'_mul,
      IsLocalization.mk'_eq_iff_eq_mul, hxy, Submonoid.coe_mul, ← map_mul]
    congr 1
    show Ideal.Quotient.mk I s ^ 2 * Ideal.Quotient.mk I c =
      Ideal.Quotient.mk I c * (Ideal.Quotient.mk I s * Ideal.Quotient.mk I s)
    ring
  have hsurj : Function.Surjective φ := by
    rintro ⟨z, hz⟩
    induction hz using Algebra.adjoin_induction with
    | mem z hz' =>
      obtain ⟨l, rfl⟩ := hz'
      fin_cases l
      · exact ⟨MvPolynomial.X 0, by rw [hX0]; rfl⟩
      · exact ⟨MvPolynomial.X 1, by rw [hX1]; rfl⟩
      · refine ⟨1, ?_⟩
        apply Subtype.ext
        rw [map_one, OneMemClass.coe_one]
        exact (IsLocalization.mk'_self' _).symm
    | algebraMap r =>
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective r
      exact ⟨MvPolynomial.C a, by rw [hC]; rfl⟩
    | add z₁ z₂ h₁ h₂ ih₁ ih₂ =>
      obtain ⟨p₁, hp₁⟩ := ih₁
      obtain ⟨p₂, hp₂⟩ := ih₂
      exact ⟨p₁ + p₂, by rw [map_add, hp₁, hp₂]; rfl⟩
    | mul z₁ z₂ h₁ h₂ ih₁ ih₂ =>
      obtain ⟨p₁, hp₁⟩ := ih₁
      obtain ⟨p₂, hp₂⟩ := ih₂
      exact ⟨p₁ * p₂, by rw [map_mul, hp₁, hp₂]; rfl⟩
  have hg1m : MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) :=
    Ideal.subset_span (Set.mem_insert _ _)
  have hg2m : MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) :=
    Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_singleton _))
  have hI : ∀ a ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)), φ a = 0 := by
    intro a ha
    have hle : Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ≤ RingHom.ker φ := by
      rw [Ideal.span_le]
      intro p hp
      rcases hp with rfl | rfl
      · exact RingHom.mem_ker.mpr hg1
      · exact RingHom.mem_ker.mpr hg2
    exact RingHom.mem_ker.mp (hle ha)
  have hred : ∀ f : MvPolynomial (Fin 2) A, ∃ (d : ℕ) (a : A),
      MvPolynomial.C s ^ d * f - MvPolynomial.C a ∈
        Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) := by
    intro f
    refine MvPolynomial.induction_on (motive := fun f : MvPolynomial (Fin 2) A => ∃ (d : ℕ) (a : A),
      MvPolynomial.C s ^ d * f - MvPolynomial.C a ∈
        Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
          MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) f ?_ ?_ ?_
    · intro a
      exact ⟨0, a, by rw [pow_zero, one_mul, sub_self]; exact Ideal.zero_mem _⟩
    · rintro p q ⟨d₁, a₁, h₁⟩ ⟨d₂, a₂, h₂⟩
      refine ⟨d₁ + d₂, s ^ d₂ * a₁ + s ^ d₁ * a₂, ?_⟩
      have e : MvPolynomial.C s ^ (d₁ + d₂) * (p + q) - MvPolynomial.C (s ^ d₂ * a₁ + s ^ d₁ * a₂)
          = MvPolynomial.C s ^ d₂ * (MvPolynomial.C s ^ d₁ * p - MvPolynomial.C a₁)
            + MvPolynomial.C s ^ d₁ * (MvPolynomial.C s ^ d₂ * q - MvPolynomial.C a₂) := by
        simp only [map_add, map_mul, map_pow]
        ring
      rw [e]
      exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ h₁) (Ideal.mul_mem_left _ _ h₂)
    · rintro p i ⟨d, a, h⟩
      have hgi : MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C (![x, y] i) ∈
          Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x,
            MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) := by
        fin_cases i
        · exact hg1m
        · exact hg2m
      refine ⟨d + 1, a * ![x, y] i, ?_⟩
      have e : MvPolynomial.C s ^ (d + 1) * (p * MvPolynomial.X i) - MvPolynomial.C (a * ![x, y] i)
          = (MvPolynomial.C s ^ d * p - MvPolynomial.C a) * (MvPolynomial.C s * MvPolynomial.X i)
            + MvPolynomial.C a * (MvPolynomial.C s * MvPolynomial.X i - MvPolynomial.C (![x, y] i)) := by
        rw [map_mul]
        ring
      rw [e]
      exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ h) (Ideal.mul_mem_left _ _ hgi)
  have hsat : ∀ f : MvPolynomial (Fin 2) A, φ f = 0 → ∃ k : ℕ, MvPolynomial.C s ^ k * f ∈
      Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔
        Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c : MvPolynomial (Fin 2) A)} := by
    intro f hf
    obtain ⟨d, a, h⟩ := hred f
    have hφa : φ (MvPolynomial.C a) = 0 := by
      have h0 := hI _ h
      rw [map_sub, map_mul, hf, mul_zero, zero_sub, neg_eq_zero] at h0
      exact h0
    have hL : algebraMap (A ⧸ I) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I a) = 0 := by
      have h0 := congrArg Subtype.val hφa
      rw [hC, hva] at h0
      exact h0
    obtain ⟨⟨_, m, rfl⟩, hm⟩ :=
      (IsLocalization.map_eq_zero_iff (Submonoid.powers (Ideal.Quotient.mk I s))
        (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I a)).mp hL
    have hmem : s ^ m * a ∈ I := by
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow]
      exact hm
    rw [← hIdef] at hmem
    obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp hmem
    refine ⟨m + d, ?_⟩
    have e : MvPolynomial.C s ^ (m + d) * f =
        MvPolynomial.C s ^ m * (MvPolynomial.C s ^ d * f - MvPolynomial.C a) +
        MvPolynomial.C r * (MvPolynomial.C s ^ 2 * (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c)
          - MvPolynomial.C x * (MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y)
          - MvPolynomial.C s * MvPolynomial.X 1 * (MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x)) := by
      have h2 : MvPolynomial.C (s ^ m * a) = (MvPolynomial.C (r * (x * y - s ^ 2 * c)) : MvPolynomial (Fin 2) A) := by
        rw [hr]
      simp only [map_mul, map_pow, map_sub] at h2
      linear_combination h2
    rw [e]
    refine Ideal.add_mem _ (Ideal.mul_mem_left _ _ (Ideal.mem_sup_left h)) (Ideal.mul_mem_left _ _ ?_)
    refine Ideal.sub_mem _ (Ideal.sub_mem _ (Ideal.mul_mem_left _ _ ?_) (Ideal.mul_mem_left _ _ ?_))
      (Ideal.mul_mem_left _ _ ?_)
    · exact Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)
    · exact Ideal.mem_sup_left hg2m
    · exact Ideal.mem_sup_left hg1m
  have hcancel : ∀ (k : ℕ) (f : MvPolynomial (Fin 2) A), MvPolynomial.C s ^ k * f ∈
      Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔
        Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c : MvPolynomial (Fin 2) A)} →
      f ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) ⊔
        Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c : MvPolynomial (Fin 2) A)} := by
    intro k
    induction k with
    | zero =>
      intro f hf
      rwa [pow_zero, one_mul] at hf
    | succ k ih =>
      intro f hf
      apply ih
      apply N2
      rw [pow_succ', mul_assoc] at hf
      exact hf
  refine ⟨Ideal.Quotient.lift _ φ hI, Ideal.Quotient.lift_surjective_of_surjective _ hI hsurj,
    ?_, ?_, ?_, ?_⟩
  · intro a
    rw [Ideal.Quotient.lift_mk]
    exact hC a
  · rw [Ideal.Quotient.lift_mk, hX0]
    exact IsLocalization.mk'_spec (M := Submonoid.powers (Ideal.Quotient.mk I s)) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I x) ⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩
  · rw [Ideal.Quotient.lift_mk, hX1]
    exact IsLocalization.mk'_spec (M := Submonoid.powers (Ideal.Quotient.mk I s)) (Localization.Away (Ideal.Quotient.mk I s)) (Ideal.Quotient.mk I y) ⟨Ideal.Quotient.mk I s, Submonoid.mem_powers _⟩
  · apply le_antisymm
    · intro z hz
      obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective z
      have hf : φ f = 0 := by
        rw [RingHom.mem_ker, Ideal.Quotient.lift_mk] at hz
        exact hz
      obtain ⟨k, hk⟩ := hsat f hf
      have hfJ := hcancel k f hk
      obtain ⟨i, hi, j, hj, rfl⟩ := Submodule.mem_sup.mp hfJ
      obtain ⟨r, rfl⟩ := Ideal.mem_span_singleton'.mp hj
      rw [map_add, Ideal.Quotient.eq_zero_iff_mem.mpr hi, zero_add, map_mul]
      exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
    · rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, RingHom.mem_ker,
        Ideal.Quotient.lift_mk]
      exact hg3

theorem wcpa_dj_rtsxs_ocw_model_maxideal : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (x y s : A) (𝔫 : Ideal (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)))) [𝔫.IsPrime], Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A) ∈ 𝔫 → Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A) ∈ 𝔫 → Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A) ∈ 𝔫 → IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫) = Ideal.span ({algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime 𝔫) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A)), algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime 𝔫) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A)), algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime 𝔫) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A))} : Set (Localization.AtPrime 𝔫)) :=
by
  intro A _ _ x y s 𝔫₀ h𝔫₀ hspan hc₀ ha₀ hb₀
  have key : ∀ (I : Ideal (MvPolynomial (Fin 2) A)) (𝔫 : Ideal (MvPolynomial (Fin 2) A ⧸ I))
      [h𝔫 : 𝔫.IsPrime],
      MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x ∈ I →
      MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y ∈ I →
      Ideal.Quotient.mk I (MvPolynomial.C s) ∈ 𝔫 →
      Ideal.Quotient.mk I (MvPolynomial.X 0) ∈ 𝔫 →
      Ideal.Quotient.mk I (MvPolynomial.X 1) ∈ 𝔫 →
      IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫) =
        Ideal.span ({algebraMap (MvPolynomial (Fin 2) A ⧸ I) (Localization.AtPrime 𝔫)
            (Ideal.Quotient.mk I (MvPolynomial.X 0)),
          algebraMap (MvPolynomial (Fin 2) A ⧸ I) (Localization.AtPrime 𝔫)
            (Ideal.Quotient.mk I (MvPolynomial.X 1)),
          algebraMap (MvPolynomial (Fin 2) A ⧸ I) (Localization.AtPrime 𝔫)
            (Ideal.Quotient.mk I (MvPolynomial.C s))} : Set (Localization.AtPrime 𝔫)) := by
    intro I 𝔫 h𝔫 hIx hIy hc ha hb
    have haJ : Ideal.Quotient.mk I (MvPolynomial.X 0) ∈ Ideal.span ({Ideal.Quotient.mk I (MvPolynomial.X 0),
        Ideal.Quotient.mk I (MvPolynomial.X 1), Ideal.Quotient.mk I (MvPolynomial.C s)} :
        Set (MvPolynomial (Fin 2) A ⧸ I)) := Ideal.subset_span (by simp)
    have hbJ : Ideal.Quotient.mk I (MvPolynomial.X 1) ∈ Ideal.span ({Ideal.Quotient.mk I (MvPolynomial.X 0),
        Ideal.Quotient.mk I (MvPolynomial.X 1), Ideal.Quotient.mk I (MvPolynomial.C s)} :
        Set (MvPolynomial (Fin 2) A ⧸ I)) := Ideal.subset_span (by simp)
    have hcJ : Ideal.Quotient.mk I (MvPolynomial.C s) ∈ Ideal.span ({Ideal.Quotient.mk I (MvPolynomial.X 0),
        Ideal.Quotient.mk I (MvPolynomial.X 1), Ideal.Quotient.mk I (MvPolynomial.C s)} :
        Set (MvPolynomial (Fin 2) A ⧸ I)) := Ideal.subset_span (by simp)

    have hJle : Ideal.span ({Ideal.Quotient.mk I (MvPolynomial.X 0),
        Ideal.Quotient.mk I (MvPolynomial.X 1), Ideal.Quotient.mk I (MvPolynomial.C s)} :
        Set (MvPolynomial (Fin 2) A ⧸ I)) ≤ 𝔫 := by
      rw [Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with h | h | h <;> rw [h]
      · exact ha
      · exact hb
      · exact hc
    generalize hJ : Ideal.span ({Ideal.Quotient.mk I (MvPolynomial.X 0),
        Ideal.Quotient.mk I (MvPolynomial.X 1), Ideal.Quotient.mk I (MvPolynomial.C s)} :
        Set (MvPolynomial (Fin 2) A ⧸ I)) = J at haJ hbJ hcJ hJle

    have hCx : Ideal.Quotient.mk I (MvPolynomial.C x) =
        Ideal.Quotient.mk I (MvPolynomial.C s) * Ideal.Quotient.mk I (MvPolynomial.X 0) := by
      rw [← map_mul, eq_comm, Ideal.Quotient.eq]
      exact hIx
    have hCy : Ideal.Quotient.mk I (MvPolynomial.C y) =
        Ideal.Quotient.mk I (MvPolynomial.C s) * Ideal.Quotient.mk I (MvPolynomial.X 1) := by
      rw [← map_mul, eq_comm, Ideal.Quotient.eq]
      exact hIy

    have hCmax : ∀ t ∈ IsLocalRing.maximalIdeal A, Ideal.Quotient.mk I (MvPolynomial.C t) ∈ J := by
      intro t ht
      have hle : Ideal.span ({x, y, s} : Set A) ≤
          J.comap ((Ideal.Quotient.mk I).comp MvPolynomial.C) := by
        rw [Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rw [SetLike.mem_coe, Ideal.mem_comap, RingHom.comp_apply]
        rcases hz with h | h | h <;> rw [h]
        · rw [hCx]; exact J.mul_mem_left _ haJ
        · rw [hCy]; exact J.mul_mem_left _ hbJ
        · exact hcJ
      rw [← hspan] at ht
      exact hle ht

    have hdecomp : ∀ f : MvPolynomial (Fin 2) A, Ideal.Quotient.mk I f -
        Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff f)) ∈ J := by
      intro f
      induction f using MvPolynomial.induction_on with
      | C r =>
        rw [MvPolynomial.constantCoeff_C, sub_self]
        exact J.zero_mem
      | add p q hp hq =>
        have e : Ideal.Quotient.mk I (p + q) -
            Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff (p + q))) =
            (Ideal.Quotient.mk I p -
              Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff p))) +
            (Ideal.Quotient.mk I q -
              Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff q))) := by
          simp only [map_add]; ring
        rw [e]
        exact J.add_mem hp hq
      | mul_X p n _ =>
        have hXn : Ideal.Quotient.mk I (MvPolynomial.X n) ∈ J := by
          fin_cases n
          · exact haJ
          · exact hbJ
        have e : Ideal.Quotient.mk I (p * MvPolynomial.X n) -
            Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff (p * MvPolynomial.X n))) =
            Ideal.Quotient.mk I p * Ideal.Quotient.mk I (MvPolynomial.X n) := by
          rw [map_mul MvPolynomial.constantCoeff, MvPolynomial.constantCoeff_X, mul_zero, map_zero,
            map_zero, sub_zero, map_mul]
        rw [e]
        exact J.mul_mem_left _ hXn

    have hnle : 𝔫 ≤ J := by
      intro z hz
      obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective z
      have hg := hdecomp f
      have hg𝔫 := hJle hg
      have ht : MvPolynomial.constantCoeff f ∈ IsLocalRing.maximalIdeal A := by
        by_contra hnt
        have hu : IsUnit (Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff f))) :=
          ((IsLocalRing.notMem_maximalIdeal.mp hnt).map MvPolynomial.C).map (Ideal.Quotient.mk I)
        have hmem : Ideal.Quotient.mk I (MvPolynomial.C (MvPolynomial.constantCoeff f)) ∈ 𝔫 := by
          have := 𝔫.sub_mem hz hg𝔫
          rwa [sub_sub_cancel] at this
        exact h𝔫.ne_top (Ideal.eq_top_of_isUnit_mem _ hmem hu)
      have := J.add_mem hg (hCmax _ ht)
      rwa [sub_add_cancel] at this

    have hEq : 𝔫 = J := le_antisymm hnle hJle
    have hmap : Ideal.map (algebraMap (MvPolynomial (Fin 2) A ⧸ I) (Localization.AtPrime 𝔫)) 𝔫 =
        Ideal.map (algebraMap (MvPolynomial (Fin 2) A ⧸ I) (Localization.AtPrime 𝔫)) J :=
      congrArg _ hEq
    rw [← Localization.AtPrime.map_eq_maximalIdeal, hmap, ← hJ, Ideal.map_span,
      Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton]
  exact key _ 𝔫₀ (Ideal.subset_span (by simp)) (Ideal.subset_span (by simp)) hc₀ ha₀ hb₀

theorem wcpa_dj_rtsxs_ocw_model_dim_ge : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (x y s : A) (𝔫 : Ideal (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)))) [𝔫.IsPrime], Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → (∀ h : MvPolynomial (Fin 2) A, MvPolynomial.C s * h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) → h ∈ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) → Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A) ∈ 𝔫 → Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A) ∈ 𝔫 → Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A) ∈ 𝔫 → ((3 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim (Localization.AtPrime 𝔫) :=
by
  intro A _ _ x y s 𝔫 _ hspan N1 hs hX0 hX1
  classical
  generalize hI2 : Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A)) = I2 at *
  have hxm : x ∈ IsLocalRing.maximalIdeal A := by rw [← hspan]; exact Ideal.subset_span (by simp)
  have hym : y ∈ IsLocalRing.maximalIdeal A := by rw [← hspan]; exact Ideal.subset_span (by simp)
  have hsm : s ∈ IsLocalRing.maximalIdeal A := by rw [← hspan]; exact Ideal.subset_span (by simp)
  have rx : IsLocalRing.residue A x = 0 := (IsLocalRing.residue_eq_zero_iff x).mpr hxm
  have ry : IsLocalRing.residue A y = 0 := (IsLocalRing.residue_eq_zero_iff y).mpr hym
  have rs : IsLocalRing.residue A s = 0 := (IsLocalRing.residue_eq_zero_iff s).mpr hsm
  set χt : MvPolynomial (Fin 2) A →+* MvPolynomial (Fin 2) (IsLocalRing.ResidueField A) :=
    MvPolynomial.map (IsLocalRing.residue A) with hχt
  have χtC : ∀ a : A, χt (MvPolynomial.C a) = MvPolynomial.C (IsLocalRing.residue A a) :=
    fun a => MvPolynomial.map_C _ _
  have χtX : ∀ i : Fin 2, χt (MvPolynomial.X i) = MvPolynomial.X i :=
    fun i => MvPolynomial.map_X _ _
  have hI2ker : I2 ≤ RingHom.ker χt := by
    rw [← hI2]
    apply Ideal.span_le.mpr
    intro z hz
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
    rcases hz with rfl | rfl
    · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_mul, χtC, χtC, rs, rx, map_zero,
        zero_mul, sub_zero]
    · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_mul, χtC, χtC, rs, ry, map_zero,
        zero_mul, sub_zero]
  have H : ∀ a ∈ I2, χt a = 0 := fun a ha => RingHom.mem_ker.mp (hI2ker ha)
  set χ := Ideal.Quotient.lift I2 χt H with hχ
  have hχmk : ∀ h, χ (Ideal.Quotient.mk I2 h) = χt h := fun h => Ideal.Quotient.lift_mk I2 χt H
  have hχX : ∀ i : Fin 2, χ (Ideal.Quotient.mk I2 (MvPolynomial.X i)) = MvPolynomial.X i := by
    intro i; rw [hχmk, χtX]
  have hχsurj : Function.Surjective χ :=
    Ideal.Quotient.lift_surjective_of_surjective I2 H
      (MvPolynomial.map_surjective _ IsLocalRing.residue_surjective)

  have hCx : Ideal.Quotient.mk I2 (MvPolynomial.C x) ∈ 𝔫 := by
    have e : Ideal.Quotient.mk I2 (MvPolynomial.C x) =
        Ideal.Quotient.mk I2 (MvPolynomial.C s) * Ideal.Quotient.mk I2 (MvPolynomial.X 0) := by
      rw [← map_mul]; symm
      exact Ideal.Quotient.eq.mpr (by rw [← hI2]; exact Ideal.subset_span (Set.mem_insert _ _))
    rw [e]; exact Ideal.mul_mem_right _ _ hs
  have hCy : Ideal.Quotient.mk I2 (MvPolynomial.C y) ∈ 𝔫 := by
    have e : Ideal.Quotient.mk I2 (MvPolynomial.C y) =
        Ideal.Quotient.mk I2 (MvPolynomial.C s) * Ideal.Quotient.mk I2 (MvPolynomial.X 1) := by
      rw [← map_mul]; symm
      exact Ideal.Quotient.eq.mpr (by rw [← hI2]; exact Ideal.subset_span (Set.mem_insert_of_mem _ rfl))
    rw [e]; exact Ideal.mul_mem_right _ _ hs

  have hker : ∀ h, χt h = 0 → Ideal.Quotient.mk I2 h ∈ 𝔫 := by
    intro h hh
    have h1 : h ∈ Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A)
        (IsLocalRing.maximalIdeal A) := by
      rw [← IsLocalRing.ker_residue, ← MvPolynomial.ker_map]
      exact RingHom.mem_ker.mpr hh
    have h2 : Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A)
        (IsLocalRing.maximalIdeal A) ≤ 𝔫.comap (Ideal.Quotient.mk I2) := by
      rw [Ideal.map_le_iff_le_comap, ← hspan, Ideal.span_le]
      intro z hz
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
      rcases hz with rfl | rfl | rfl
      · exact hCx
      · exact hCy
      · exact hs
    exact h2 h1

  have hnzd : Ideal.Quotient.mk I2 (MvPolynomial.C s) ∈
      nonZeroDivisors (MvPolynomial (Fin 2) A ⧸ I2) := by
    rw [mem_nonZeroDivisors_iff_right]
    intro w hw
    obtain ⟨h, rfl⟩ := Ideal.Quotient.mk_surjective w
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem] at hw
    rw [Ideal.Quotient.eq_zero_iff_mem]
    exact N1 h (by rw [mul_comm]; exact hw)

  have hq1 : (RingHom.ker χ).IsPrime := RingHom.ker_isPrime χ
  have hX0p : (Ideal.span {(MvPolynomial.X 0 :
      MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))}).IsPrime :=
    (Ideal.span_singleton_prime (MvPolynomial.X_ne_zero 0)).mpr MvPolynomial.X_prime
  have hq2 : (Ideal.comap χ (Ideal.span {(MvPolynomial.X 0 :
      MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))})).IsPrime := Ideal.comap_isPrime χ _
  have hsq : Ideal.Quotient.mk I2 (MvPolynomial.C s) ∈ RingHom.ker χ := by
    rw [RingHom.mem_ker, hχmk, χtC, rs, map_zero]
  have h12 : RingHom.ker χ < Ideal.comap χ (Ideal.span {(MvPolynomial.X 0 :
      MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))}) := by
    refine lt_of_le_of_ne (fun w hw => ?_) (fun heq => ?_)
    · rw [Ideal.mem_comap, RingHom.mem_ker.mp hw]; exact Ideal.zero_mem _
    · have hX : Ideal.Quotient.mk I2 (MvPolynomial.X 0) ∈ Ideal.comap χ (Ideal.span
          {(MvPolynomial.X 0 : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))}) := by
        rw [Ideal.mem_comap, hχX]; exact Ideal.mem_span_singleton_self _
      rw [← heq, RingHom.mem_ker, hχX] at hX
      exact MvPolynomial.X_ne_zero 0 hX
  have h2n : Ideal.comap χ (Ideal.span {(MvPolynomial.X 0 :
      MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))}) < 𝔫 := by
    refine lt_of_le_of_ne (fun w hw => ?_) (fun heq => ?_)
    · rw [Ideal.mem_comap, Ideal.mem_span_singleton'] at hw
      obtain ⟨k, hk⟩ := hw
      obtain ⟨w', rfl⟩ := hχsurj k
      obtain ⟨h, hh⟩ := Ideal.Quotient.mk_surjective (w - w' * Ideal.Quotient.mk I2 (MvPolynomial.X 0))
      have hχh : χt h = 0 := by
        rw [← hχmk, hh, map_sub, map_mul, hχX, hk, sub_self]
      have h1 : w - w' * Ideal.Quotient.mk I2 (MvPolynomial.X 0) ∈ 𝔫 := hh ▸ hker h hχh
      have h2 : w' * Ideal.Quotient.mk I2 (MvPolynomial.X 0) ∈ 𝔫 := Ideal.mul_mem_left _ _ hX0
      have h3 := Ideal.add_mem _ h1 h2
      rwa [sub_add_cancel] at h3
    · have hX1' : Ideal.Quotient.mk I2 (MvPolynomial.X 1) ∈ Ideal.comap χ (Ideal.span
          {(MvPolynomial.X 0 : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))}) := heq ▸ hX1
      rw [Ideal.mem_comap, hχX, Ideal.mem_span_singleton'] at hX1'
      obtain ⟨a, ha⟩ := hX1'
      have e := congrArg (MvPolynomial.eval (![0, 1] : Fin 2 → IsLocalRing.ResidueField A)) ha
      rw [map_mul, MvPolynomial.eval_X, MvPolynomial.eval_X] at e
      simp at e

  have step : ∀ (q p : Ideal (MvPolynomial (Fin 2) A ⧸ I2)) [q.IsPrime] [p.IsPrime],
      q < p → q.height + 1 ≤ p.height := by
    intro q p _ _ hqp
    cases hp : p.height with
    | top => exact le_top
    | coe n =>
      have hlt := (Ideal.height_le_iff (p := p) (n := n)).mp (le_of_eq hp) q inferInstance hqp
      exact Order.add_one_le_of_lt hlt
  have hq1h : 1 ≤ (RingHom.ker χ).height := by
    rw [Order.one_le_iff_ne_zero]
    intro h0
    rw [Ideal.height_eq_zero_iff] at h0
    exact Set.disjoint_left.mp (Ideal.disjoint_nonZeroDivisors_of_mem_minimalPrimes h0) hsq hnzd
  have s12 := step _ _ h12
  have s2n := step _ _ h2n
  have h3 : (3 : ℕ∞) ≤ 𝔫.height := by
    calc (3 : ℕ∞) = 1 + 1 + 1 := by norm_num
      _ ≤ (RingHom.ker χ).height + 1 + 1 := by gcongr
      _ ≤ _ + 1 := by gcongr
      _ ≤ 𝔫.height := s2n
  rw [IsLocalization.AtPrime.ringKrullDim_eq_height 𝔫 (Localization.AtPrime 𝔫)]
  calc ((3 : ℕ) : WithBot ℕ∞) = ((3 : ℕ∞) : WithBot ℕ∞) := rfl
    _ ≤ _ := WithBot.coe_le_coe.mpr h3

theorem wcpa_dj_rtsxs_ocw_loc_quot : ∀ (W C : Type u) [CommRing W] [CommRing C] (θ : W →+* C) (g : W) (Q : Ideal C) [Q.IsPrime], Function.Surjective θ → RingHom.ker θ = Ideal.span {g} → ∃ e : (Localization.AtPrime (Q.comap θ) ⧸ Ideal.span {algebraMap W (Localization.AtPrime (Q.comap θ)) g}) ≃+* Localization.AtPrime Q, ∀ a : W, e (Ideal.Quotient.mk (Ideal.span {algebraMap W (Localization.AtPrime (Q.comap θ)) g}) (algebraMap W (Localization.AtPrime (Q.comap θ)) a)) = algebraMap C (Localization.AtPrime Q) (θ a) :=
by
  intro W C _ _ θ g Q _ hθ hker
  have hT : Submonoid.map θ (Q.comap θ).primeCompl = Q.primeCompl := by
    ext c
    constructor
    · rintro ⟨w, hw, rfl⟩
      exact hw
    · intro hc
      obtain ⟨w, rfl⟩ := hθ c
      exact ⟨w, hc, rfl⟩
  have hy : (Q.comap θ).primeCompl ≤ Q.primeCompl.comap θ := fun w hw => hw
  let φ : Localization.AtPrime (Q.comap θ) →+* Localization.AtPrime Q :=
    IsLocalization.map (Localization.AtPrime Q) θ hy
  have hker' : RingHom.ker φ =
      Ideal.span {algebraMap W (Localization.AtPrime (Q.comap θ)) g} := by
    have h1 := IsLocalization.ker_map (S := Localization.AtPrime (Q.comap θ))
      (Localization.AtPrime Q) θ hT
    rw [h1, hker, Ideal.map_span, Set.image_singleton]
  have hsurj : Function.Surjective φ := by
    intro z
    obtain ⟨⟨c, t⟩, rfl⟩ := IsLocalization.mk'_surjective Q.primeCompl z
    obtain ⟨w, rfl⟩ := hθ c
    obtain ⟨u, hu⟩ := hθ (t : C)
    have hu' : u ∈ (Q.comap θ).primeCompl := by
      show θ u ∉ Q
      rw [hu]
      exact t.2
    refine ⟨IsLocalization.mk' (Localization.AtPrime (Q.comap θ)) w ⟨u, hu'⟩, ?_⟩
    simp only [φ, IsLocalization.map_mk']
    congr 1
    exact Subtype.ext hu
  refine ⟨(Ideal.quotEquivOfEq hker'.symm).trans (RingHom.quotientKerEquivOfSurjective hsurj), ?_⟩
  intro a
  rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk, RingHom.quotientKerEquivOfSurjective_apply_mk]
  exact IsLocalization.map_eq _ _

theorem wcpa_dj_rtsxs_ocw_hat_regular : ∀ (E : Type u) [CommRing E] [IsRegularLocalRing E] (a b c : E), ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim E → Ideal.span ({a, b, c} : Set E) = IsLocalRing.maximalIdeal E → ∃ (_ : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal E) E)), IsAdicComplete (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal E) E)) (AdicCompletion (IsLocalRing.maximalIdeal E) E) ∧ ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal E) E) ∧ Ideal.span ({algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) b, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) c} : Set (AdicCompletion (IsLocalRing.maximalIdeal E) E)) = IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal E) E) :=
by
  intro E _ _ a b c hdim hspan
  have hreg : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal E) E) :=
    wc_pfc_pc_completion_regular wc_hnas_pfc_regular_flat_ascent E ‹IsRegularLocalRing E›
      (AdicCompletion (IsLocalRing.maximalIdeal E) E) ⟨AlgEquiv.refl⟩
  obtain ⟨_, hcomp, -, -⟩ := wc_hnas_completion_local_complete E
  obtain ⟨_, hlh, hnoeth, hff, hmax, -⟩ := wcpa_dj_glt_st_completion_facts E
  refine ⟨hreg, hcomp, ?_, ?_⟩
  · haveI := hnoeth
    haveI : Module.Flat E (AdicCompletion (IsLocalRing.maximalIdeal E) E) := hff.toFlat
    haveI := hlh
    have hd := wc_lfi_flat_local_dim_eq E (AdicCompletion (IsLocalRing.maximalIdeal E) E) hmax.symm
    exact hdim.trans hd.symm
  · rw [hmax, ← hspan, Ideal.map_span]
    congr 1
    simp only [Set.image_insert_eq, Set.image_singleton]

theorem wcpa_dj_rtsxs_ocw_hat_quot : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (f : E) (D : Type u) [CommRing D] [IsLocalRing D] (Ψ : D ≃+* (E ⧸ Ideal.span {f})), ∃ e : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+* (AdicCompletion (IsLocalRing.maximalIdeal E) E ⧸ Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) f}), ∀ (d : D) (c : E), Ψ d = Ideal.Quotient.mk (Ideal.span {f}) c → e (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) d) = Ideal.Quotient.mk (Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) f}) (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) c) :=
by
  intro E _ _ _ f D _ _ Ψ
  classical
  set I := IsLocalRing.maximalIdeal E with hI
  set K := IsLocalRing.maximalIdeal D with hK

  let q : E →+* D := (Ψ.symm : E ⧸ Ideal.span {f} →+* D).comp (Ideal.Quotient.mk (Ideal.span {f}))
  have hq_apply : ∀ c, q c = Ψ.symm (Ideal.Quotient.mk (Ideal.span {f}) c) := fun c => rfl
  have hqs : Function.Surjective q := Ψ.symm.surjective.comp Ideal.Quotient.mk_surjective
  have hqker : RingHom.ker q = Ideal.span {f} := by
    ext x
    rw [RingHom.mem_ker, hq_apply, map_eq_zero_iff _ Ψ.symm.injective,
      Ideal.Quotient.eq_zero_iff_mem]
  have hfm : f ∈ I := by
    by_contra hf
    have hu : IsUnit f := IsLocalRing.notMem_maximalIdeal.mp hf
    have htop : Ideal.span {f} = ⊤ := Ideal.span_singleton_eq_top.mpr hu
    haveI : Subsingleton (E ⧸ Ideal.span {f}) := Ideal.Quotient.subsingleton_iff.mpr htop
    have h01 : (0 : D) = 1 := Ψ.injective (Subsingleton.elim _ _)
    exact zero_ne_one h01
  have hKeq : K = Ideal.map q I := by
    have hle : RingHom.ker q ≤ I := by
      rw [hqker, Ideal.span_singleton_le_iff_mem]; exact hfm
    have hmax := Ideal.IsMaximal.map_of_surjective_of_ker_le hqs hle
    exact (IsLocalRing.eq_maximalIdeal hmax).symm
  have hKn : ∀ n : ℕ, K ^ n = Ideal.map q (I ^ n) := by
    intro n; rw [Ideal.map_pow, ← hKeq]
  have hpow_le : ∀ n : ℕ, I ^ n ≤ Ideal.comap q (K ^ n) := by
    intro n
    rw [← Ideal.map_le_iff_le_comap, hKn n]

  have hev : ∀ (n : ℕ) (c : E), AdicCompletion.evalₐ I n (algebraMap E (AdicCompletion I E) c) =
      Ideal.Quotient.mk (I ^ n) c := by
    intro n c
    rw [AdicCompletion.algebraMap_apply]
    exact AdicCompletion.evalₐ_of I n c
  have hevD : ∀ (n : ℕ) (c : D), AdicCompletion.evalₐ K n (algebraMap D (AdicCompletion K D) c) =
      Ideal.Quotient.mk (K ^ n) c := by
    intro n c
    rw [AdicCompletion.algebraMap_apply]
    exact AdicCompletion.evalₐ_of K n c

  have hA : ∀ {m n : ℕ} (hmn : m ≤ n) (x : AdicCompletion I E),
      Ideal.Quotient.factorPow I hmn (AdicCompletion.evalₐ I n x) = AdicCompletion.evalₐ I m x := by
    intro m n hmn x
    obtain ⟨a, rfl⟩ := AdicCompletion.mk_surjective I E x
    rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
    have h := AdicCompletion.AdicCauchySequence.mk_eq_mk hmn a
    rw [Submodule.Quotient.eq, Ideal.smul_eq_mul, Ideal.mul_top] at h
    exact (Ideal.Quotient.eq.mpr h :)
  let φ : (n : ℕ) → AdicCompletion I E →+* D ⧸ K ^ n := fun n =>
    (Ideal.quotientMap (K ^ n) q (hpow_le n)).comp (AdicCompletion.evalₐ I n).toRingHom
  have hφ : ∀ {m n : ℕ} (hle : m ≤ n), (Ideal.Quotient.factorPow K hle).comp (φ n) = φ m := by
    intro m n hle
    ext x
    obtain ⟨c, hc⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ I n x)
    have hm : AdicCompletion.evalₐ I m x = Ideal.Quotient.mk (I ^ m) c := by
      rw [← hA hle x, ← hc]; rfl
    show Ideal.Quotient.factorPow K hle (Ideal.quotientMap (K ^ n) q (hpow_le n)
        (AdicCompletion.evalₐ I n x)) =
      Ideal.quotientMap (K ^ m) q (hpow_le m) (AdicCompletion.evalₐ I m x)
    rw [← hc, hm, Ideal.quotientMap_mk, Ideal.quotientMap_mk]
    rfl
  obtain ⟨γ, hγ⟩ : ∃ γ : AdicCompletion I E →+* AdicCompletion K D,
      ∀ (n : ℕ) (x : AdicCompletion I E) (c : E),
        AdicCompletion.evalₐ I n x = Ideal.Quotient.mk (I ^ n) c →
        AdicCompletion.evalₐ K n (γ x) = Ideal.Quotient.mk (K ^ n) (q c) := by
    refine ⟨AdicCompletion.liftRingHom K φ hφ, fun n x c h => ?_⟩
    rw [AdicCompletion.evalₐ_liftRingHom]
    show Ideal.quotientMap (K ^ n) q (hpow_le n) (AdicCompletion.evalₐ I n x) = _
    rw [h, Ideal.quotientMap_mk]

  have hγs : Function.Surjective γ := by
    intro y
    obtain ⟨r, rfl⟩ := AdicCompletion.mk_surjective K D y
    have hr : ∀ j : ℕ, (r : ℕ → D) (j + 1) - (r : ℕ → D) j ∈ Ideal.map q (I ^ j) := by
      intro j
      have h := AdicCompletion.AdicCauchySequence.mk_eq_mk (Nat.le_succ j) r
      rw [Submodule.Quotient.eq, Ideal.smul_eq_mul, Ideal.mul_top] at h
      rw [← hKn j]; exact h
    choose d hdI hdq using fun j => (Ideal.mem_map_iff_of_surjective q hqs).mp (hr j)
    obtain ⟨e0, he0⟩ := hqs ((r : ℕ → D) 0)
    let e : ℕ → E := fun n => e0 + ∑ j ∈ Finset.range n, d j
    have heq : ∀ n : ℕ, q (e n) = (r : ℕ → D) n := by
      intro n
      induction n with
      | zero =>
        show q (e0 + ∑ j ∈ Finset.range 0, d j) = _
        rw [Finset.sum_range_zero, add_zero, he0]
      | succ n ih =>
        show q (e0 + ∑ j ∈ Finset.range (n + 1), d j) = _
        rw [Finset.sum_range_succ, ← add_assoc, map_add]
        change q (e n) + q (d n) = _
        rw [ih, hdq n]
        abel
    have hcau : ∀ n : ℕ, e n ≡ e (n + 1) [SMOD (I ^ n • ⊤ : Submodule E E)] := by
      intro n
      rw [SModEq.sub_mem, Ideal.smul_eq_mul, Ideal.mul_top]
      have h1 : e n - e (n + 1) = - d n := by
        show (e0 + ∑ j ∈ Finset.range n, d j) - (e0 + ∑ j ∈ Finset.range (n + 1), d j) = _
        rw [Finset.sum_range_succ]; ring
      rw [h1]; exact neg_mem (hdI n)
    refine ⟨AdicCompletion.mk I E (AdicCompletion.AdicCauchySequence.mk I E e hcau), ?_⟩
    apply AdicCompletion.ext_evalₐ
    intro n
    rw [hγ n _ (e n) (by rw [AdicCompletion.evalₐ_mk]; rfl), heq, AdicCompletion.evalₐ_mk]

  have hγk : RingHom.ker γ = Ideal.span {algebraMap E (AdicCompletion I E) f} := by
    apply le_antisymm
    · intro x hx
      rw [RingHom.mem_ker] at hx
      let S : Submodule E E := Ideal.span {f}
      have h1 : AdicCompletion.map I S.mkQ x = 0 := by
        apply AdicCompletion.ext
        intro n
        obtain ⟨c, hc⟩ := Submodule.Quotient.mk_surjective (I ^ n • ⊤ : Submodule E E) (x.val n)
        have hle' : (I ^ n • ⊤ : Submodule E E) ≤ I ^ n := by
          rw [Ideal.smul_eq_mul, Ideal.mul_top]
        have hxc : AdicCompletion.evalₐ I n x = Ideal.Quotient.mk (I ^ n) c := by
          rw [← AdicCompletion.factor_eval_eq_evalₐ I x hle', AdicCompletion.eval_apply]
          change Submodule.factor hle' (x.val n) = _
          rw [← hc]
          rfl
        have h2 := hγ n x c hxc
        rw [hx, map_zero] at h2
        have h3 : q c ∈ Ideal.map q (I ^ n) := by
          rw [← hKn n]; exact Ideal.Quotient.eq_zero_iff_mem.mp h2.symm
        obtain ⟨i, hi, hqi⟩ := (Ideal.mem_map_iff_of_surjective q hqs).mp h3
        have hci : c - i ∈ S := by
          show c - i ∈ Ideal.span {f}
          rw [← hqker, RingHom.mem_ker, map_sub, hqi, sub_self]
        rw [AdicCompletion.map_val_apply, AdicCompletion.val_zero, Pi.zero_apply]
        change (LinearMap.reduceModIdeal (I ^ n)) S.mkQ (x.val n) = 0
        rw [← hc, LinearMap.reduceModIdeal_apply, Submodule.Quotient.mk_eq_zero]
        have h5 : S.mkQ c = i • S.mkQ 1 := by
          rw [← map_smul, smul_eq_mul, mul_one]
          exact (Submodule.Quotient.eq S).mpr hci
        rw [h5]
        exact Submodule.smul_mem_smul hi Submodule.mem_top
      have hex := AdicCompletion.map_exact (I := I) (f := S.subtype) (g := S.mkQ)
        (Submodule.injective_subtype S) (LinearMap.exact_subtype_mkQ S) (Submodule.mkQ_surjective S)
      obtain ⟨z, hz⟩ := (hex x).mp h1
      let t : E →ₗ[E] S := LinearMap.toSpanSingleton E S ⟨f, Ideal.mem_span_singleton_self f⟩
      have ht : Function.Surjective t := by
        rintro ⟨y, hy⟩
        obtain ⟨a, rfl⟩ := Ideal.mem_span_singleton'.mp hy
        exact ⟨a, Subtype.ext (by simp [t, LinearMap.toSpanSingleton_apply, smul_eq_mul])⟩
      obtain ⟨w, hw⟩ := AdicCompletion.map_surjective I ht z
      have h4 : AdicCompletion.map I (S.subtype ∘ₗ t) w = f • w := by
        apply AdicCompletion.ext
        intro n
        obtain ⟨a, ha⟩ := Submodule.Quotient.mk_surjective (I ^ n • ⊤ : Submodule E E) (w.val n)
        rw [AdicCompletion.map_val_apply, AdicCompletion.val_smul_apply]
        change (LinearMap.reduceModIdeal (I ^ n)) (S.subtype ∘ₗ t) (w.val n) = f • w.val n
        rw [← ha, LinearMap.reduceModIdeal_apply, ← Submodule.Quotient.mk_smul]
        congr 1
        simp [t, LinearMap.toSpanSingleton_apply, smul_eq_mul, mul_comm]
      have hxw : x = algebraMap E (AdicCompletion I E) f * w := by
        rw [← Algebra.smul_def, ← h4, ← AdicCompletion.map_comp_apply, hw, hz]
      rw [hxw]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
    · rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, RingHom.mem_ker]
      apply AdicCompletion.ext_evalₐ
      intro n
      rw [hγ n _ f (hev n f), map_zero]
      have hqf : q f = 0 := by
        rw [← RingHom.mem_ker, hqker]; exact Ideal.mem_span_singleton_self f
      rw [hqf, map_zero]

  let F : (AdicCompletion I E ⧸ Ideal.span {algebraMap E (AdicCompletion I E) f}) ≃+*
      AdicCompletion K D :=
    (Ideal.quotEquivOfEq hγk.symm).trans (RingHom.quotientKerEquivOfSurjective hγs)
  refine ⟨F.symm, ?_⟩
  intro d c hdc
  rw [RingEquiv.symm_apply_eq]
  show _ = RingHom.quotientKerEquivOfSurjective hγs
    (Ideal.quotEquivOfEq hγk.symm (Ideal.Quotient.mk _ (algebraMap E (AdicCompletion I E) c)))
  rw [Ideal.quotEquivOfEq_mk, RingHom.quotientKerEquivOfSurjective_apply_mk]
  symm
  apply AdicCompletion.ext_evalₐ
  intro n
  rw [hγ n _ c (hev n c), hevD n d, hq_apply, ← hdc, RingEquiv.symm_apply_apply]

theorem wcpa_dj_rtsxs_origin_chart : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s v : A) (w : ℕ) (Q : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) [Q.IsPrime] (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D] (Φ : D ≃+* Localization.AtPrime Q), IsUnit v → ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → 2 ≤ w → Q.comap (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) → (∀ c : wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2, (c : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) * algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s) = algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x) → c ∈ Q) → (∀ c : wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2, (c : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) * algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s) = algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y) → c ∈ Q) → ∃ (A' : Type u) (_ : CommRing A') (_ : IsRegularLocalRing A') (_ : IsAdicComplete (IsLocalRing.maximalIdeal A') A') (x' y' v' s' : A') (e₂ : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+* (A' ⧸ Ideal.span {x' * y' - v' * s' ^ (w - 2)})), IsUnit v' ∧ ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A' ∧ Ideal.span ({x', y', s'} : Set A') = IsLocalRing.maximalIdeal A' ∧ e₂ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) (Φ.symm (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Localization.AtPrime Q) (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s))))) = Ideal.Quotient.mk (Ideal.span {x' * y' - v' * s' ^ (w - 2)}) s' :=
by
  intro A _ _ x y s v w Q _ D _ _ _ Φ hv hdim hspan hw hQm hx' hy'
  have key : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (a b c vv f : E),
      ((3 : ℕ) : WithBot ℕ∞) ≤ ringKrullDim E → IsLocalRing.maximalIdeal E = Ideal.span ({a, b, c} : Set E) →
      IsUnit vv → f = a * b - vv * c ^ (w - 2) → ∀ (Ψ : D ≃+* (E ⧸ Ideal.span {f})) (d : D),
      Ψ d = Ideal.Quotient.mk (Ideal.span {f}) c →
      ∃ (A' : Type u) (_ : CommRing A') (_ : IsRegularLocalRing A') (_ : IsAdicComplete (IsLocalRing.maximalIdeal A') A') (x' y' v' s' : A') (e₂ : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+* (A' ⧸ Ideal.span {x' * y' - v' * s' ^ (w - 2)})), IsUnit v' ∧ ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A' ∧ Ideal.span ({x', y', s'} : Set A') = IsLocalRing.maximalIdeal A' ∧ e₂ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) d) = Ideal.Quotient.mk (Ideal.span {x' * y' - v' * s' ^ (w - 2)}) s' := by
    intro E _ _ _ a b c vv f hdimE hmE hvv hf Ψ d hd
    have hfr : Submodule.spanFinrank (IsLocalRing.maximalIdeal E) ≤ 3 := by
      rw [hmE]
      refine (Submodule.spanFinrank_span_le_ncard_of_finite (Set.toFinite _)).trans ?_
      refine (Set.ncard_insert_le _ _).trans ?_
      refine (Nat.add_le_add_right (Set.ncard_insert_le _ _) 1).trans ?_
      rw [Set.ncard_singleton]
    have hle3 : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal E) : ℕ) : WithBot ℕ∞) ≤
        ((3 : ℕ) : WithBot ℕ∞) := by
      exact_mod_cast hfr
    have hEreg : IsRegularLocalRing E :=
      IsRegularLocalRing.of_spanFinrank_maximalIdeal_le _ (hle3.trans hdimE)
    have hdimE3 : ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim E :=
      le_antisymm hdimE ((ringKrullDim_le_spanFinrank_maximalIdeal _).trans hle3)
    obtain ⟨e', he'⟩ := wcpa_dj_rtsxs_ocw_hat_quot E f D Ψ
    obtain ⟨hreg', hcomp', hdim', hspan'⟩ := wcpa_dj_rtsxs_ocw_hat_regular E a b c hdimE3 hmE.symm
    have hspanf : Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) f} =
        Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a *
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) b -
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) vv *
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) c ^ (w - 2)} := by
      rw [hf, map_sub, map_mul, map_mul, map_pow]
    refine ⟨AdicCompletion (IsLocalRing.maximalIdeal E) E, inferInstance, hreg', hcomp',
      algebraMap E _ a, algebraMap E _ b, algebraMap E _ vv, algebraMap E _ c,
      e'.trans (Ideal.quotEquivOfEq hspanf), hvv.map _, hdim', hspan', ?_⟩
    rw [RingEquiv.trans_apply, he' d c hd, Ideal.quotEquivOfEq_mk]
  obtain ⟨hs0, hxs, hysx⟩ := wcpa_dj_rtsxs_ocw_regseq A x y s hdim hspan
  have hprime : (Ideal.span ({x, y, s} : Set A)).IsPrime := by
    rw [hspan]; exact Ideal.IsMaximal.isPrime (IsLocalRing.maximalIdeal.isMaximal A)
  obtain ⟨N1, N2⟩ := wcpa_dj_rtsxs_ocw_s_nzd A x y s v w hs0 hxs hysx hprime
  have hsR := wcpa_dj_rtsxs_coord_nzd A x y s v w hv hdim hspan (by omega) s (by simp)
  obtain ⟨θ, hθs, hθC, hθX0, hθX1, hθker⟩ :=
    wcpa_dj_rtsxs_ocw_presentation A x y s v w hw hsR N2
  have hsm : s ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]; exact Ideal.subset_span (by simp)
  have hCs : θ (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A)) ∈ Q := by
    rw [hθC s]
    have h1 : Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s ∈
        Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) :=
      Ideal.mem_map_of_mem _ hsm
    rw [← hQm] at h1
    exact h1
  have hX0 : θ (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A)) ∈ Q := hx' _ hθX0
  have hX1 : θ (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A)) ∈ Q := hy' _ hθX1
  have hmE := wcpa_dj_rtsxs_ocw_model_maxideal A x y s (Q.comap θ) hspan hCs hX0 hX1
  have hdimE := wcpa_dj_rtsxs_ocw_model_dim_ge A x y s (Q.comap θ) hspan N1 hCs hX0 hX1
  haveI hWn : IsNoetherianRing (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) := Ideal.Quotient.isNoetherianRing _
  haveI hEn : IsNoetherianRing (Localization.AtPrime (Q.comap θ)) := IsLocalization.isNoetherianRing (Q.comap θ).primeCompl _ hWn
  obtain ⟨e, he⟩ := wcpa_dj_rtsxs_ocw_loc_quot _ _ θ _ Q hθs hθker
  have gen : ∀ {X Y Z : Type u} [CommRing X] [CommRing Y] [CommRing Z] (Φ₀ : X ≃+* Y) (e₀ : Z ≃+* Y)
      (z : Y) (t : Z), e₀ t = z → (Φ₀.trans e₀.symm) (Φ₀.symm z) = t := by
    intro X Y Z _ _ _ Φ₀ e₀ z t h
    subst h
    simp
  have hu : IsUnit (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C v : MvPolynomial (Fin 2) A))) := ((hv.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A)).map _).map _
  have hf : (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) ((MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A) : MvPolynomial (Fin 2) A))) = (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A))) * (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A))) - (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C v : MvPolynomial (Fin 2) A))) * (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A))) ^ (w - 2) := by
    simp only [map_sub, map_mul, map_pow]
  have hd : (Φ.trans e.symm) (Φ.symm (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Localization.AtPrime Q) (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s)))) = Ideal.Quotient.mk (Ideal.span {(algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) ((MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A) : MvPolynomial (Fin 2) A)))}) (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A))) := gen Φ e _ _ ((he (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A))).trans (congrArg (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Localization.AtPrime Q)) (hθC s)))
  have k2 := key (Localization.AtPrime (Q.comap θ)) (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 0 : MvPolynomial (Fin 2) A))) (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.X 1 : MvPolynomial (Fin 2) A))) (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C s : MvPolynomial (Fin 2) A))) (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (MvPolynomial.C v : MvPolynomial (Fin 2) A))) (algebraMap (MvPolynomial (Fin 2) A ⧸ Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) (Localization.AtPrime (Q.comap θ)) (Ideal.Quotient.mk (Ideal.span ({MvPolynomial.C s * MvPolynomial.X 0 - MvPolynomial.C x, MvPolynomial.C s * MvPolynomial.X 1 - MvPolynomial.C y} : Set (MvPolynomial (Fin 2) A))) ((MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C v * MvPolynomial.C s ^ (w - 2) : MvPolynomial (Fin 2) A) : MvPolynomial (Fin 2) A))) hdimE hmE hu hf
  have k3 := k2 (Φ.trans e.symm)
  have k4 := k3 (Φ.symm (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Localization.AtPrime Q) (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s)))) hd
  exact k4

theorem wcpa_dj_rtsxs_model_weight : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (x y s v : A) (w : ℕ) [IsLocalRing (A ⧸ Ideal.span {x * y - v * s ^ w})] (r : ℕ) (φ : Fin (r + 1) → (A ⧸ Ideal.span {x * y - v * s ^ w})) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i)) [P.IsPrime] (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D] (Φ : D ≃+* Localization.AtPrime P), IsUnit v → ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A → Ideal.span ({x, y, s} : Set A) = IsLocalRing.maximalIdeal A → 2 ≤ w → Ideal.span (Set.range φ) = IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * s ^ w}) → φ i ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) → P.comap (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i)) = IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * s ^ w}) → ¬ IsRegularLocalRing D → ∃ (A' : Type u) (_ : CommRing A') (_ : IsRegularLocalRing A') (_ : IsAdicComplete (IsLocalRing.maximalIdeal A') A') (x' y' v' s' : A') (e₂ : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+* (A' ⧸ Ideal.span {x' * y' - v' * s' ^ (w - 2)})), IsUnit v' ∧ ((3 : ℕ) : WithBot ℕ∞) = ringKrullDim A' ∧ Ideal.span ({x', y', s'} : Set A') = IsLocalRing.maximalIdeal A' ∧ e₂ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) (Φ.symm (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i) (Localization.AtPrime P) (algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w}) φ i) (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s))))) = Ideal.Quotient.mk (Ideal.span {x' * y' - v' * s' ^ (w - 2)}) s' :=
by
  intro A _ _ x y s v w _ r φ i P _ D _ _ _ Φ hv hdim hspan hw hφspan hφi hP hD
  classical

  have hFm : x * y - v * s ^ w ∈ IsLocalRing.maximalIdeal A := by
    rw [← hspan]
    refine Ideal.sub_mem _ (Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp)))
      (Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ (Ideal.subset_span (by simp)) w (by omega)))
  have hker : RingHom.ker (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) ≤
      IsLocalRing.maximalIdeal A := by
    rw [Ideal.mk_ker, Ideal.span_le, Set.singleton_subset_iff]
    exact hFm
  have hmR : IsLocalRing.maximalIdeal (A ⧸ Ideal.span {x * y - v * s ^ w}) =
      Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w})) (IsLocalRing.maximalIdeal A) :=
    (IsLocalRing.eq_maximalIdeal
      (Ideal.IsMaximal.map_of_surjective_of_ker_le Ideal.Quotient.mk_surjective hker)).symm

  have hg2 : Ideal.span (Set.range φ) = Ideal.span (Set.range
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s]) := by
    rw [hφspan, hmR, ← hspan, Ideal.map_span]
    congr 1
    simp only [Set.image_insert_eq, Set.image_singleton, Matrix.range_cons, Matrix.range_empty,
      Set.union_empty, Set.singleton_union]

  have hg3 : ∀ k : Fin 3, ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] k ∈
      nonZeroDivisors (A ⧸ Ideal.span {x * y - v * s ^ w}) := by
    intro k
    fin_cases k
    · exact wcpa_dj_rtsxs_coord_nzd A x y s v w hv hdim hspan (by omega) x (by simp)
    · exact wcpa_dj_rtsxs_coord_nzd A x y s v w hv hdim hspan (by omega) y (by simp)
    · exact wcpa_dj_rtsxs_coord_nzd A x y s v w hv hdim hspan (by omega) s (by simp)

  obtain ⟨j, c, hc, hcP⟩ := wcpa_dj_rtsxs_switch_index (A ⧸ Ideal.span {x * y - v * s ^ w}) r 2 φ
    ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] i P hg2
  obtain ⟨Q, hQprime, Θ, hQ, hΘ⟩ := wcpa_dj_rtsxs_switch_chart (A ⧸ Ideal.span {x * y - v * s ^ w})
    r 2 φ ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
      Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] i j P c hg2 hφi (hg3 j) hc hcP
  haveI := hQprime
  have hQm := hQ.trans (hP.trans hmR)
  by_cases hj : j = 2
  swap
  · exact absurd (wcpa_dj_rtsxs_axis_chart_regular A x y s v w j Q D (Φ.trans Θ) hv hdim hspan hw
      hj hQm) hD
  subst hj
  by_cases hx : ∃ c' : wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2,
      (c' : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) *
        algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
          (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
          (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s) =
        algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
          (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
          (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x) ∧ c' ∉ Q
  · obtain ⟨c', hc', hc'Q⟩ := hx
    obtain ⟨Q₀, hQ₀, Θ₀, hQ₀c, -⟩ := wcpa_dj_rtsxs_switch_chart (A ⧸ Ideal.span {x * y - v * s ^ w})
      2 2 ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s]
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2 0 Q c' rfl (hg3 2) (hg3 0) hc' hc'Q
    haveI := hQ₀
    exact absurd (wcpa_dj_rtsxs_axis_chart_regular A x y s v w 0 Q₀ D ((Φ.trans Θ).trans Θ₀) hv
      hdim hspan hw (by decide) (hQ₀c.trans hQm)) hD
  by_cases hy : ∃ c' : wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * s ^ w})
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2,
      (c' : Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2)) *
        algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
          (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
          (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s) =
        algebraMap (A ⧸ Ideal.span {x * y - v * s ^ w})
          (Localization.Away (![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y, Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2))
          (Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y) ∧ c' ∉ Q
  · obtain ⟨c', hc', hc'Q⟩ := hy
    obtain ⟨Q₀, hQ₀, Θ₀, hQ₀c, -⟩ := wcpa_dj_rtsxs_switch_chart (A ⧸ Ideal.span {x * y - v * s ^ w})
      2 2 ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s]
      ![Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * s ^ w}) s] 2 1 Q c' rfl (hg3 2) (hg3 1) hc' hc'Q
    haveI := hQ₀
    exact absurd (wcpa_dj_rtsxs_axis_chart_regular A x y s v w 1 Q₀ D ((Φ.trans Θ).trans Θ₀) hv
      hdim hspan hw (by decide) (hQ₀c.trans hQm)) hD
  have hx' := fun c' hc' => by_contra (fun hn => hx ⟨c', hc', hn⟩)
  have hy' := fun c' hc' => by_contra (fun hn => hy ⟨c', hc', hn⟩)
  obtain ⟨A', iA', hreg, hcomp, x', y', v', s', e₂, h1, h2, h3, h4⟩ :=
    wcpa_dj_rtsxs_origin_chart A x y s v w Q D (Φ.trans Θ) hv hdim hspan hw hQm hx' hy'
  refine ⟨A', iA', hreg, hcomp, x', y', v', s', e₂, h1, h2, h3, ?_⟩
  rw [← h4, RingEquiv.symm_trans_apply, ← hΘ, RingEquiv.symm_apply_apply]

theorem wcpa_dj_rtsxs_phase1_weight : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] [IsLocallyNoetherian Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ : Y) (Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] [IsLocallyNoetherian Y'] (π : Y' ⟶ Y), wcpaDjIsProjOver k sY → wcpaDjIsProjOver k (π ≫ sY) → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) → IsProper π → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ y' : Y', π y' = γ → y' ∈ wcpaDjSing Y' → ∀ w : ℕ, wcpaDjTorNodeSglWt Y B γ w → wcpaDjTorNodeSglWt Y' (⇑π ⁻¹' B) y' (w - 2) :=
by
  intro k _ Y _ _ sY B γ Y' _ _ π hproj hproj' hB hloc hγ hdim hπp hcharts y' hπy hsing w hw
  classical
  subst hπy
  have hnreg : ¬ IsRegularLocalRing (Y.presheaf.stalk (π y')) :=
    (show π y' ∈ wcpaDjSing Y ∧ _ from hγ).1
  have hsing' : ¬ IsRegularLocalRing (Y'.presheaf.stalk y') := hsing

  have hw2 : 2 ≤ w := by
    by_contra hlt
    push Not at hlt
    exact hnreg (wcpa_dj_rtsx_low_weight_regular Y B (π y') w hw (by omega))

  have hgen : genericPoint Y ∉ closure {π y'} := by
    intro h
    have h1 : π y' ⤳ genericPoint Y := specializes_iff_mem_closure.mpr h
    have h2 : genericPoint Y ⤳ π y' := (genericPoint_spec Y).specializes (Set.mem_univ _)
    have h3 : π y' = genericPoint Y := (h1.antisymm h2).eq
    apply hnreg
    rw [h3]
    change IsRegularLocalRing Y.functionField
    infer_instance

  obtain ⟨n, q, A, iA, hAreg, hAcomp, x, y, v, σ, b, e, h, J, H1, H2, H3, H4, H5, H6, H7, H8, H9⟩ :=
    hw
  have hn : n = 1 :=
    wcpa_dj_rtsxs_w_node_dim_one (Y.presheaf.stalk (π y')) A n x y v σ b e hdim H1 H2 H3
  subst hn
  have hb : b 0 = w := by simpa using H9
  have hF : Ideal.span {x * y - v * ∏ l, σ l ^ b l} = Ideal.span {x * y - v * σ 0 ^ w} := by
    rw [Fin.prod_univ_one, hb]
  obtain ⟨e₁, he₁⟩ : ∃ e₁ : AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')))
      (Y.presheaf.stalk (π y')) ≃+* (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}),
      ∀ z, e₁ z = Ideal.quotEquivOfEq hF (e z) := ⟨e.trans (Ideal.quotEquivOfEq hF), fun z => rfl⟩
  haveI : Nontrivial (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) := e₁.symm.toEquiv.nontrivial
  haveI : IsLocalRing (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) :=
    IsLocalRing.of_surjective' e₁.toRingHom e₁.surjective

  obtain ⟨r, f, i, P, hPprime, Φ, hspan, hfi, hPmax, hΦ⟩ :=
    wcpa_dj_rtsxc_chart_stalk Y (π y') Y' π hgen hcharts y' (specializes_refl _)
  haveI := hPprime
  have hspan' : Ideal.span (Set.range f) = IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y')) := by
    rw [hspan, TopCat.Presheaf.stalkSpecializes_refl, CommRingCat.hom_id, Ideal.comap_id]

  obtain ⟨hφspan, hφnzd, P', hP'prime, D', iD', hD'loc, hD'noeth, Φ', ε, hP'max, hε⟩ :=
    wcpa_dj_rtsxs_w_chart_completion (Y.presheaf.stalk (π y'))
      (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) e₁ r f i P (Y'.presheaf.stalk y')
      (π.stalkMap y').hom Φ hspan' hfi hPmax hΦ
  haveI := hP'prime

  have hD'nreg : ¬ IsRegularLocalRing D' := by
    intro hreg
    have h1 := (wcpa_dj_rtsxs_completion_regular_iff D').mp hreg
    have h2 : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal (Y'.presheaf.stalk y'))
        (Y'.presheaf.stalk y')) := IsRegularLocalRing.of_ringEquiv ε.symm
    exact hsing' ((wcpa_dj_rtsxs_completion_regular_iff (Y'.presheaf.stalk y')).mpr h2)
  have hset : ({x, y} ∪ Set.range σ : Set A) = {x, y, σ 0} := by
    rw [Set.range_unique, Set.insert_union, Set.singleton_union] <;> rfl
  have hspan3 : Ideal.span ({x, y, σ 0} : Set A) = IsLocalRing.maximalIdeal A := by
    rw [← hset]; exact H3

  obtain ⟨A', iA', hA'reg, hA'comp, xa, ya, va, sa, e₂, hva, hdima, hspana, he₂⟩ :=
    wcpa_dj_rtsxs_model_weight A x y (σ 0) v w r
      (fun l => e₁ (algebraMap (Y.presheaf.stalk (π y')) (AdicCompletion
        (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y'))) (f l)))
      i P' D' Φ' H1 H2 hspan3 hw2 hφspan hφnzd
      hP'max hD'nreg
  have hF' : Ideal.span {xa * ya - va * sa ^ (w - 2)} =
      Ideal.span {xa * ya - va * ∏ l, (![sa] : Fin 1 → A') l ^ (![w - 2] : Fin 1 → ℕ) l} := by
    rw [Fin.prod_univ_one]; rfl
  let E : AdicCompletion (IsLocalRing.maximalIdeal (Y'.presheaf.stalk y')) (Y'.presheaf.stalk y') ≃+*
      (A' ⧸ Ideal.span {xa * ya - va * ∏ l, (![sa] : Fin 1 → A') l ^ (![w - 2] : Fin 1 → ℕ) l}) :=
    ε.trans (e₂.trans (Ideal.quotEquivOfEq hF'))
  obtain ⟨ψ, hψapp⟩ : ∃ ψ : (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) →+*
      (A' ⧸ Ideal.span {xa * ya - va * ∏ l, (![sa] : Fin 1 → A') l ^ (![w - 2] : Fin 1 → ℕ) l}) , ∀ z, ψ z = (Ideal.quotEquivOfEq hF') (e₂ (algebraMap D' (AdicCompletion
      (IsLocalRing.maximalIdeal D') D') (Φ'.symm (algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) (fun l => e₁ (algebraMap (Y.presheaf.stalk (π y')) (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y'))) (f l))) i) (Localization.AtPrime P')
        (algebraMap (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) (fun l => e₁ (algebraMap (Y.presheaf.stalk (π y')) (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y'))) (f l))) i) z))))) :=
    ⟨(Ideal.quotEquivOfEq hF').toRingHom.comp (e₂.toRingHom.comp
      ((algebraMap D' (AdicCompletion (IsLocalRing.maximalIdeal D') D')).comp
        (Φ'.symm.toRingHom.comp
          ((algebraMap (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) (fun l => e₁ (algebraMap (Y.presheaf.stalk (π y')) (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y'))) (f l))) i) (Localization.AtPrime P')).comp
            (algebraMap (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) (wcpaDjChartAlg (A ⧸ Ideal.span {x * y - v * σ 0 ^ w}) (fun l => e₁ (algebraMap (Y.presheaf.stalk (π y')) (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk (π y'))) (Y.presheaf.stalk (π y'))) (f l))) i)))))), fun z => rfl⟩
  have hEapp : ∀ z, E z = (Ideal.quotEquivOfEq hF') (e₂ (ε z)) := fun z => rfl
  have hcompat : ∀ a : Y.presheaf.stalk (π y'),
      E (algebraMap (Y'.presheaf.stalk y') _ ((π.stalkMap y').hom a)) =
        ψ (e₁ (algebraMap (Y.presheaf.stalk (π y')) _ a)) := by
    intro a
    rw [hEapp, hψapp, hε]
  have hψs : ψ (Ideal.Quotient.mk _ (σ 0)) = Ideal.Quotient.mk _ sa := by
    rw [hψapp, he₂, Ideal.quotEquivOfEq_mk]
  have hψprod : ∀ T : Finset (Fin 1), ψ (Ideal.Quotient.mk _ (∏ l ∈ T, σ l)) =
      Ideal.Quotient.mk _ (∏ l ∈ T, (![sa] : Fin 1 → A') l) := by
    intro T
    simp only [map_prod]
    refine Finset.prod_congr rfl (fun l _ => ?_)
    rw [Subsingleton.elim l 0, hψs]
    rfl

  refine ⟨1, q, A', iA', hA'reg, hA'comp, xa, ya, va, ![sa], ![w - 2], E,
    fun j => (π.stalkMap y').hom (h j), J, hva, hdima, ?_, H4, H5, ?_, ?_, ?_, ?_⟩
  · rw [show Set.range (![sa] : Fin 1 → A') = {sa} by simp, Set.insert_union,
      Set.singleton_union]
    exact hspana
  · intro l hl
    have hl0 : l = 0 := Subsingleton.elim l 0
    subst hl0
    apply H6 0
    rw [hb]
    simp at hl
    omega
  · intro j
    have h1 : Associated (e₁ (algebraMap _ _ (h j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * σ 0 ^ w}) (∏ l ∈ J j, σ l)) := by
      have := (H7 j).map (Ideal.quotEquivOfEq hF)
      rwa [Ideal.quotEquivOfEq_mk, ← he₁] at this
    have h2 := h1.map ψ
    rw [← hcompat, hψprod] at h2
    exact h2
  · intro z' hz
    have hz2 : π z' ⤳ π y' := hz.map π.continuous
    rw [Set.mem_preimage, H8 (π z') hz2]
    apply exists_congr
    intro j
    have e0 : (π.stalkMap z').hom ((Y.presheaf.stalkSpecializes hz2).hom (h j)) =
        (Y'.presheaf.stalkSpecializes hz).hom ((π.stalkMap y').hom (h j)) := by
      have := Scheme.Hom.stalkSpecializes_stalkMap π z' y' hz
      exact congrArg (fun g => g.hom (h j)) this
    show _ ↔ (Y'.presheaf.stalkSpecializes hz).hom ((π.stalkMap y').hom (h j)) ∈ _
    rw [← e0, IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
      mem_nonunits_iff, isUnit_map_iff (π.stalkMap z').hom]
  · simp

theorem wcpa_dj_rtsx_sing_in_centre : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ : Y) (Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] (π : Y' ⟶ Y), wcpaDjIsProjOver k sY → wcpaDjIsProjOver k (π ≫ sY) → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → (ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) ∨ ∀ γ' ∈ wcpaDjSingGen Y, ringKrullDim (Y.presheaf.stalk γ') ≠ ((2 : ℕ) : WithBot ℕ∞)) → IsProper π → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ y' : Y', π y' ∈ closure {γ} → y' ∈ wcpaDjSing Y' → (ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) → ringKrullDim (Y'.presheaf.stalk y') = ringKrullDim (Y.presheaf.stalk (π y'))) ∧ (ringKrullDim (Y.presheaf.stalk γ) ≠ ((2 : ℕ) : WithBot ℕ∞) → ∃ y'' : Y', y'' ⤳ y' ∧ y'' ≠ y' ∧ y'' ∈ wcpaDjSing Y') ∧ (ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) → π y' = γ → (∀ y''' : Y', π y''' = γ → y''' ∈ wcpaDjSing Y' → y''' = y') ∧ ∀ w : ℕ, wcpaDjTorNodeSglWt Y B γ w → wcpaDjTorNodeSglWt Y' (⇑π ⁻¹' B) y' (w - 2)) :=
by
  intro k _ Y _ sY B γ Y' _ π hproj hproj' hB hloc hγ hphase hπp hcharts y' hy hsing
  haveI : IsProper sY := wcpa_dj_proj_proper k sY hproj
  haveI : IsProper (π ≫ sY) := wcpa_dj_proj_proper k (π ≫ sY) hproj'
  haveI : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian sY
  haveI : IsLocallyNoetherian Y' := LocallyOfFiniteType.isLocallyNoetherian (π ≫ sY)
  refine ⟨fun h2 => ?_, fun h2 => ?_, fun h2 hπγ => ⟨fun y''' hy''' hs''' => ?_, fun w hw => ?_⟩⟩
  · exact wcpa_dj_rtsxs_phase1_dim k Y sY B γ Y' π hproj hproj' hB hloc hγ h2 hπp hcharts
      y' hy hsing
  · exact wcpa_dj_rtsxs_phase2_generization k Y sY B γ Y' π hproj hproj' hB hloc hγ
      (hphase.resolve_left h2) hπp hcharts y' hy hsing
  · exact wcpa_dj_rtsxs_phase1_unique k Y sY B γ Y' π hproj hproj' hB hloc hγ h2 hπp hcharts
      y' y''' hπγ hy''' hsing hs'''
  · exact wcpa_dj_rtsxs_phase1_weight k Y sY B γ Y' π hproj hproj' hB hloc hγ h2 hπp hcharts
      y' hπγ hsing w hw

theorem wcpa_dj_rts_step : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y), wcpaDjIsProjOver k sY → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → (∃ y : Y, ¬ IsRegularLocalRing (Y.presheaf.stalk y)) → ∃ (Y' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Y') (π : Y' ⟶ Y), IsProper π ∧ Surjective π ∧ (∃ V : Y.Opens, (V : Set Y) = Bᶜ ∧ IsIso (π ∣_ V)) ∧ wcpaDjIsProjOver k (π ≫ sY) ∧ (∀ y' : Y', wcpaDjTorPt Y' (⇑π ⁻¹' B) y' ∨ wcpaDjTorNodeSgl Y' (⇑π ⁻¹' B) y') ∧ wcpaDjResMeasure Y' (⇑π ⁻¹' B) < wcpaDjResMeasure Y B :=
by
  intro k _ Y _ sY B hproj hB hloc hsing
  classical
  have genD : ∀ {Z : Scheme.{u}} {z : Z}, z ∈ wcpaDjSingGen Z →
      z ∈ wcpaDjSing Z ∧ ∀ γ' ∈ wcpaDjSing Z, γ' ⤳ z → γ' = z := fun h => h
  have singD : ∀ {Z : Scheme.{u}} {z : Z},
      z ∈ wcpaDjSing Z ↔ ¬ IsRegularLocalRing (Z.presheaf.stalk z) := Iff.rfl
  obtain ⟨hNoeth, hSingCl, hGenFin, hGenEx⟩ := wcpa_dj_rtsx_sing_struct k Y sY hproj
  haveI := hNoeth

  have hSingB : ∀ y ∈ wcpaDjSing Y, y ∈ B := by
    intro y hy
    rcases hloc y with h | h
    · exact absurd ((wcpa_dj_rtsx_pt_basic Y B y).1 h) (singD.mp hy)
    · exact (wcpa_dj_rtsx_pt_basic Y B y).2 h
  obtain ⟨y₀, hy₀⟩ := hsing
  obtain ⟨γ₀, hγ₀, -⟩ := hGenEx y₀ (singD.mpr hy₀)

  have hcentre : ∃ γ ∈ wcpaDjSingGen Y,
      (ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) ∨
        ∀ γ' ∈ wcpaDjSingGen Y, ringKrullDim (Y.presheaf.stalk γ') ≠ ((2 : ℕ) : WithBot ℕ∞)) := by
    by_cases h : ∃ γ ∈ wcpaDjSingGen Y, ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞)
    · obtain ⟨γ, hγ, h2⟩ := h
      exact ⟨γ, hγ, Or.inl h2⟩
    · push_neg at h
      exact ⟨γ₀, hγ₀, Or.inr h⟩
  obtain ⟨γ, hγ, hphase⟩ := hcentre
  have hγS : γ ∈ wcpaDjSing Y := (genD hγ).1

  have hΓsub : closure {γ} ⊆ wcpaDjSing Y :=
    hSingCl.closure_subset_iff.mpr (Set.singleton_subset_iff.mpr hγS)
  have hΓB : closure {γ} ⊆ B :=
    hB.closure_subset_iff.mpr (Set.singleton_subset_iff.mpr (hSingB γ hγS))
  have hgenreg : genericPoint Y ∉ wcpaDjSing Y := by
    intro h
    apply singD.mp h
    change IsRegularLocalRing Y.functionField
    infer_instance
  have hΓne : ((Scheme.IdealSheafData.vanishingIdeal
      (⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y)).support : Set Y) ≠ Set.univ := by
    rw [Scheme.IdealSheafData.coe_support_vanishingIdeal]
    intro h
    have hmem : genericPoint Y ∈
        ((⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y) : Set Y) := by
      rw [h]; exact Set.mem_univ _
    exact hgenreg (hΓsub hmem)
  have hGmin : ∀ z ∈ wcpaDjSingGen Y, z ∈ closure {γ} → z = γ := fun z hz hzΓ =>
    ((genD hz).2 γ hγS (specializes_iff_mem_closure.mpr hzΓ)).symm

  obtain ⟨Y', iY', π, hπp, hπs, hπproj, hπiso, hcharts⟩ :=
    wcpa_dj_rn_blowup k Y sY (Scheme.IdealSheafData.vanishingIdeal
      (⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y)) hproj hΓne
  haveI := iY'
  obtain ⟨hNoeth', -, hGenFin', -⟩ := wcpa_dj_rtsx_sing_struct k Y' (π ≫ sY) hπproj
  haveI := hNoeth'
  generalize hWdef : (⟨((Scheme.IdealSheafData.vanishingIdeal
      (⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y)).support : Set Y)ᶜ,
      (Scheme.IdealSheafData.vanishingIdeal
      (⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y)).support.isClosed.isOpen_compl⟩ :
        Y.Opens) = W at hπiso
  have hWset : (W : Set Y) = (closure {γ})ᶜ := by
    rw [← hWdef]
    show ((Scheme.IdealSheafData.vanishingIdeal
      (⟨closure {γ}, isClosed_closure⟩ : TopologicalSpace.Closeds Y)).support : Set Y)ᶜ = _
    rw [Scheme.IdealSheafData.coe_support_vanishingIdeal]
    rfl
  have hWmem : ∀ y : Y, y ∉ closure {γ} → y ∈ W := by
    intro y hy
    show y ∈ (W : Set Y)
    rw [hWset]
    exact hy
  have hoff := wcpa_dj_rtsx_offE π W B hπiso

  have hVW : (⟨Bᶜ, hB.isOpen_compl⟩ : Y.Opens) ≤ W := by
    intro y hy
    exact hWmem y (fun h => hy (hΓB h))
  have hVeq : Scheme.Opens.ι W ''ᵁ (Scheme.Opens.ι W ⁻¹ᵁ (⟨Bᶜ, hB.isOpen_compl⟩ : Y.Opens)) =
      ⟨Bᶜ, hB.isOpen_compl⟩ := by
    rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
    exact inf_eq_right.mpr hVW
  have hisoV : IsIso (π ∣_ (⟨Bᶜ, hB.isOpen_compl⟩ : Y.Opens)) := by
    haveI := hπiso
    have h1 : IsIso (π ∣_ W ∣_ (Scheme.Opens.ι W ⁻¹ᵁ (⟨Bᶜ, hB.isOpen_compl⟩ : Y.Opens))) :=
      inferInstance
    have h2 := (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms Scheme)
      (morphismRestrictRestrict π W (Scheme.Opens.ι W ⁻¹ᵁ (⟨Bᶜ, hB.isOpen_compl⟩ : Y.Opens)))).mp h1
    rw [hVeq] at h2
    exact h2

  have hclass : ∀ y' : Y', wcpaDjTorPt Y' (⇑π ⁻¹' B) y' ∨ wcpaDjTorNodeSgl Y' (⇑π ⁻¹' B) y' := by
    intro y'
    by_cases hy : π y' ∈ closure {γ}
    · exact wcpa_dj_rtsx_class_over_centre k Y sY B γ Y' π hproj hπproj hB hloc hγ hphase hπp
        hcharts y' hy
    · have hT := hoff.2.2 y' (hWmem _ hy)
      rcases hloc (π y') with h | h
      · exact Or.inl (hT.2.2.1.mpr h)
      · exact Or.inr (hT.2.2.2.1.mpr h)

  let β : Y → ℕ := fun z => sInf {w | wcpaDjTorNodeSglWt Y B z w}
  let β' : Y' → ℕ := fun y' => sInf {w | wcpaDjTorNodeSglWt Y' (⇑π ⁻¹' B) y' w}
  let T : Set Y := {z | z ∈ wcpaDjSingGen Y ∧
    ringKrullDim (Y.presheaf.stalk z) = ((2 : ℕ) : WithBot ℕ∞)}
  let S : Set Y' := {y' | y' ∈ wcpaDjSingGen Y' ∧
    ringKrullDim (Y'.presheaf.stalk y') = ((2 : ℕ) : WithBot ℕ∞)}
  let On : Set Y' := {y' | π y' ∈ closure {γ}}
  have hgoal : wcpaDjResMeasure Y' (⇑π ⁻¹' B) < wcpaDjResMeasure Y B ↔
      (∑ᶠ y' ∈ S, β' y') < (∑ᶠ z ∈ T, β z) ∨
        ((∑ᶠ y' ∈ S, β' y') = (∑ᶠ z ∈ T, β z) ∧
          (wcpaDjSingGen Y').ncard < (wcpaDjSingGen Y).ncard) := by
    unfold wcpaDjResMeasure
    exact Prod.Lex.lt_iff
  have hβeq : ∀ y' : Y', y' ∈ Onᶜ → β' y' = β (π y') := by
    intro y' hy
    have h := (hoff.2.2 y' (hWmem _ hy)).2.2.2.2.1
    show sInf _ = sInf _
    congr 1
    ext w
    exact h w
  have hInj : Set.InjOn ⇑π Onᶜ := fun a ha b hb hab =>
    hoff.2.1 (hWmem _ ha) (hWmem _ hb) hab
  have hSfin : S.Finite := hGenFin'.subset (fun y' hy' => hy'.1)
  have hTfin : T.Finite := hGenFin.subset (fun z hz => hz.1)
  have hImgG : ⇑π '' (wcpaDjSingGen Y' ∩ Onᶜ) = wcpaDjSingGen Y \ {γ} := by
    ext z
    constructor
    · rintro ⟨y', ⟨hy'G, hy'off⟩, rfl⟩
      refine ⟨(hoff.2.2 y' (hWmem _ hy'off)).2.2.2.2.2.mp hy'G, ?_⟩
      intro h
      apply hy'off
      show π y' ∈ closure {γ}
      rw [Set.mem_singleton_iff.mp h]
      exact subset_closure (Set.mem_singleton γ)
    · rintro ⟨hzG, hzne⟩
      haveI := hπs
      obtain ⟨y', rfl⟩ := π.surjective z
      have hoff' : y' ∈ Onᶜ := fun h => hzne (Set.mem_singleton_iff.mpr (hGmin _ hzG h))
      exact ⟨y', ⟨(hoff.2.2 y' (hWmem _ hoff')).2.2.2.2.2.mpr hzG, hoff'⟩, rfl⟩
  have hImgS : ⇑π '' (S ∩ Onᶜ) = T \ {γ} := by
    ext z
    constructor
    · rintro ⟨y', ⟨⟨hy'G, hy'd⟩, hy'off⟩, rfl⟩
      have hT := hoff.2.2 y' (hWmem _ hy'off)
      refine ⟨⟨hT.2.2.2.2.2.mp hy'G, hT.2.1 ▸ hy'd⟩, ?_⟩
      intro h
      apply hy'off
      show π y' ∈ closure {γ}
      rw [Set.mem_singleton_iff.mp h]
      exact subset_closure (Set.mem_singleton γ)
    · rintro ⟨⟨hzG, hzd⟩, hzne⟩
      haveI := hπs
      obtain ⟨y', rfl⟩ := π.surjective z
      have hoff' : y' ∈ Onᶜ := fun h => hzne (Set.mem_singleton_iff.mpr (hGmin _ hzG h))
      have hT := hoff.2.2 y' (hWmem _ hoff')
      exact ⟨y', ⟨⟨hT.2.2.2.2.2.mpr hzG, hT.2.1.trans hzd⟩, hoff'⟩, rfl⟩
  refine ⟨Y', iY', π, hπp, hπs, ⟨⟨Bᶜ, hB.isOpen_compl⟩, rfl, hisoV⟩, hπproj, hclass, ?_⟩
  rw [hgoal]
  by_cases h2 : ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞)
  ·
    left
    have hγT : γ ∈ T := ⟨hγ, h2⟩
    have hne : {w | wcpaDjTorNodeSglWt Y B γ w}.Nonempty := by
      have hnode : wcpaDjTorNodeSgl Y B γ :=
        (hloc γ).resolve_left (fun h => singD.mp hγS ((wcpa_dj_rtsx_pt_basic Y B γ).1 h))
      obtain ⟨n, q, A, i1, i2, i3, x, y, v, σ, b, e, h, J, H1, H2, H3, H4, H5, H6, H7, H8⟩ := hnode
      exact ⟨_, n, q, A, i1, i2, i3, x, y, v, σ, b, e, h, J, H1, H2, H3, H4, H5, H6, H7, H8, rfl⟩
    have hmem : wcpaDjTorNodeSglWt Y B γ (β γ) := Nat.sInf_mem hne
    have hβγ : 2 ≤ β γ := by
      by_contra hlt
      push_neg at hlt
      exact singD.mp hγS (wcpa_dj_rtsx_low_weight_regular Y B γ (β γ) hmem (by omega))
    have hOnγ : ∀ y' ∈ S, y' ∈ On → π y' = γ := by
      intro y' hy' hyΓ
      have hc := wcpa_dj_rtsx_sing_in_centre k Y sY B γ Y' π hproj hπproj hB hloc hγ hphase hπp
        hcharts y' hyΓ (genD hy'.1).1
      by_contra hne
      have hlt := wcpa_dj_rtsx_dim_lt_of_specializes Y γ (π y')
        (specializes_iff_mem_closure.mpr hyΓ) (Ne.symm hne)
      rw [h2, ← hc.1 h2, hy'.2] at hlt
      exact lt_irrefl _ hlt
    have hSub : (S ∩ On).Subsingleton := by
      rintro a ⟨ha, haOn⟩ b ⟨hb, hbOn⟩
      have hπa := hOnγ a ha haOn
      have hπb := hOnγ b hb hbOn
      have hc := wcpa_dj_rtsx_sing_in_centre k Y sY B γ Y' π hproj hπproj hB hloc hγ hphase hπp
        hcharts b hbOn (genD hb.1).1
      exact (hc.2.2 h2 hπb).1 a hπa (genD ha.1).1
    have hβ'le : ∀ y' ∈ S ∩ On, β' y' ≤ β γ - 2 := by
      rintro y' ⟨hy', hyOn⟩
      have hπy := hOnγ y' hy' hyOn
      have hc := wcpa_dj_rtsx_sing_in_centre k Y sY B γ Y' π hproj hπproj hB hloc hγ hphase hπp
        hcharts y' hyOn (genD hy'.1).1
      exact Nat.sInf_le ((hc.2.2 h2 hπy).2 (β γ) hmem)
    have hdisj : Disjoint (S ∩ On) (S ∩ Onᶜ) :=
      Disjoint.mono Set.inter_subset_right Set.inter_subset_right disjoint_compl_right
    have e1 := finsum_mem_union (f := β') hdisj (hSfin.subset Set.inter_subset_left)
      (hSfin.subset Set.inter_subset_left)
    rw [Set.inter_union_compl] at e1
    have e2 : ∑ᶠ y' ∈ S ∩ On, β' y' ≤ β γ - 2 := by
      rcases hSub.eq_empty_or_singleton with h | ⟨x, hx⟩
      · rw [h, finsum_mem_empty]
        exact Nat.zero_le _
      · rw [hx, finsum_mem_singleton]
        exact hβ'le x (by rw [hx]; exact Set.mem_singleton x)
    have e3 : ∑ᶠ z ∈ T \ {γ}, β z = ∑ᶠ y' ∈ S ∩ Onᶜ, β' y' := by
      rw [← hImgS, finsum_mem_image (hInj.mono Set.inter_subset_right)]
      exact finsum_mem_congr rfl (fun y' hy' => (hβeq y' hy'.2).symm)
    have e4 := finsum_mem_insert β (fun h : γ ∈ T \ {γ} => h.2 rfl)
      (hTfin.subset Set.diff_subset)
    rw [Set.insert_diff_singleton, Set.insert_eq_of_mem hγT] at e4
    omega
  ·
    right
    have hall : ∀ γ' ∈ wcpaDjSingGen Y,
        ringKrullDim (Y.presheaf.stalk γ') ≠ ((2 : ℕ) : WithBot ℕ∞) := hphase.resolve_left h2
    have hT0 : T = ∅ := Set.eq_empty_of_subset_empty (fun z hz => hall z hz.1 hz.2)
    have hG'off : ∀ y' ∈ wcpaDjSingGen Y', y' ∈ Onᶜ := by
      intro y' hy' hyΓ
      have hc := wcpa_dj_rtsx_sing_in_centre k Y sY B γ Y' π hproj hπproj hB hloc hγ hphase hπp
        hcharts y' hyΓ (genD hy').1
      obtain ⟨y'', hsp, hne, hsing''⟩ := hc.2.1 h2
      exact hne ((genD hy').2 y'' hsing'' hsp)
    have hS0 : S = ∅ := by
      apply Set.eq_empty_of_subset_empty
      rintro y' ⟨hy'G, hy'd⟩
      have hT := hoff.2.2 y' (hWmem _ (hG'off y' hy'G))
      exact hall (π y') (hT.2.2.2.2.2.mp hy'G) (hT.2.1 ▸ hy'd)
    refine ⟨by rw [hS0, hT0, finsum_mem_empty, finsum_mem_empty], ?_⟩
    have hGG : wcpaDjSingGen Y' ∩ Onᶜ = wcpaDjSingGen Y' :=
      Set.inter_eq_left.mpr (fun y' hy' => hG'off y' hy')
    calc (wcpaDjSingGen Y').ncard = (wcpaDjSingGen Y' ∩ Onᶜ).ncard := by rw [hGG]
      _ = (⇑π '' (wcpaDjSingGen Y' ∩ Onᶜ)).ncard :=
          (Set.InjOn.ncard_image (hInj.mono Set.inter_subset_right)).symm
      _ = (wcpaDjSingGen Y \ {γ}).ncard := by rw [hImgG]
      _ < (wcpaDjSingGen Y).ncard := Set.ncard_diff_singleton_lt_of_mem hγ hGenFin

theorem wcpa_dj_ts_resolve_tor_sgl : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y), wcpaDjIsProjOver k sY → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (φ : Z ⟶ Y), IsProper φ ∧ Surjective φ ∧ (∃ V : Y.Opens, (V : Set Y) = Bᶜ ∧ IsIso (φ ∣_ V)) ∧ (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) ∧ wcpaDjIsProjOver k (φ ≫ sY) ∧ ∀ z : Z, wcpaDjTorPt Z (⇑φ ⁻¹' B) z :=
by
  intro k _ Y₀ _ sY₀ B₀ hproj₀ hB₀ hloc₀
  classical
  suffices H : ∀ m : Lex (ℕ × ℕ), ∀ (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y]
      (sY : Y ⟶ Spec (.of k)) (B : Set Y), wcpaDjIsProjOver k sY → IsClosed B →
      (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → wcpaDjResMeasure Y B = m →
      ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (φ : Z ⟶ Y), IsProper φ ∧
        Surjective φ ∧ (∃ V : Y.Opens, (V : Set Y) = Bᶜ ∧ IsIso (φ ∣_ V)) ∧
        (∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) ∧ wcpaDjIsProjOver k (φ ≫ sY) ∧
        ∀ z : Z, wcpaDjTorPt Z (⇑φ ⁻¹' B) z by
    exact H _ Y₀ sY₀ B₀ hproj₀ hB₀ hloc₀ rfl
  intro m
  induction m using WellFoundedLT.induction
  rename_i m ih
  intro Y _ sY B hproj hB hloc hm
  by_cases hr : ∀ y : Y, IsRegularLocalRing (Y.presheaf.stalk y)
  · refine ⟨Y, inferInstance, 𝟙 Y, inferInstance, inferInstance,
      ⟨⟨Bᶜ, hB.isOpen_compl⟩, rfl, inferInstance⟩, hr, ?_, ?_⟩
    · rw [Category.id_comp]; exact hproj
    · intro z
      have hpre : (⇑(𝟙 Y) ⁻¹' B) = B := by
        ext x
        simp
      rw [hpre]
      rcases hloc z with h | h
      · exact h
      · exact wcpa_dj_rts_terminal Y B z h (hr z)
  · push_neg at hr
    obtain ⟨Y', iY', π, hπp, hπs, ⟨V, hV, hVi⟩, hproj', hloc', hlt⟩ :=
      wcpa_dj_rts_step k Y sY B hproj hB hloc hr
    haveI := iY'
    have hlt' : wcpaDjResMeasure Y' (⇑π ⁻¹' B) < m := by rw [← hm]; exact hlt
    obtain ⟨Z, iZ, ψ, hψp, hψs, ⟨V', hV', hV'i⟩, hreg, hprojZ, htor⟩ :=
      ih _ hlt' Y' (π ≫ sY) (⇑π ⁻¹' B) hproj' (hB.preimage π.continuous) hloc' rfl
    haveI := iZ
    refine ⟨Z, iZ, ψ ≫ π, ?_, ?_, ⟨V, hV, ?_⟩, hreg, ?_, ?_⟩
    · haveI := hπp; haveI := hψp; infer_instance
    · haveI := hπs; haveI := hψs; infer_instance
    · have hVV : π ⁻¹ᵁ V = V' := by
        apply TopologicalSpace.Opens.ext
        rw [hV']
        show ⇑π ⁻¹' (V : Set Y) = _
        rw [hV, Set.preimage_compl]
      subst hVV
      rw [morphismRestrict_comp]
      exact IsIso.comp_isIso' hV'i hVi
    · rw [Category.assoc]; exact hprojZ
    · intro z
      have hpre : ⇑(ψ ≫ π) ⁻¹' B = ⇑ψ ⁻¹' (⇑π ⁻¹' B) := by
        ext x
        simp [Scheme.Hom.comp_apply]
      rw [hpre]
      exact htor z

end GRWTSK.FiniteFieldWeil
