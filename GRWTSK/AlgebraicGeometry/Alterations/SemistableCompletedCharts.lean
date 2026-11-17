import GRWTSK.AlgebraicGeometry.Alterations.SemistableGraphClosure

/-!
# Completed chart classification, Kummer exponents, and twisting ideals

Source candidate split from `weil_conjecture_main.lean`, lines 8639–15346.
See the adjacent `SemistableCompletedCharts.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_glt_cc_lctd_exponents : ∀ (N n : ℕ) (I : Finset (Fin (N + 1)))
    (α : Fin (N + 1) → ℤ) (β : Fin (N + 1) → Fin n → ℤ) (c₀ : Fin n → ℕ) (a₀ : ℤ)
    (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
    (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
    (∀ v ∈ wcpaDjStcBreaks I α β c₀, ∀ w ∈ wcpaDjStcBreaks I α β c₀, v ≤ w ∨ w ≤ v) →
    (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
    ∃ lam : Fin n → ℕ,
      (∀ l, (lam l : ℤ) ≤ β k₀ l - b₀ l) ∧
      (lam = 0 ∨ ∃ i ∈ I, α k₀ < α i ∧ ∀ l, (α i - α k₀) * (lam l : ℤ) = β k₀ l - β i l) ∧
      (∀ i ∈ I, α k₀ < α i → ∀ l, 0 ≤ β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)) ∧
      (∀ i ∈ I, α i = α k₀ → (∀ l, β k₀ l ≤ β i l) ∨ (∀ l, β i l ≤ β k₀ l)) ∧
      (((∀ i ∈ I, α k₀ ≤ α i) ∧ c₀ = 0) ∨
        ∃ mu : Fin n → ℤ,
          (∀ i ∈ I, α i < α k₀ → ∀ l, 0 ≤ β i l - β k₀ l - (α k₀ - α i) * mu l) ∧
          ((∃ j ∈ I, α j < α k₀ ∧ ∀ l, (α k₀ - α j) * mu l = β j l - β k₀ l) ∨
            ((∃ l, c₀ l ≠ 0) ∧ ∀ l, mu l = (c₀ l : ℤ))) ∧
          ((∃ l, c₀ l ≠ 0) → ∀ l, mu l ≤ (c₀ l : ℤ)) ∧
          ((∀ l, (lam l : ℤ) ≤ mu l) ∨ ((∀ l, mu l ≤ (lam l : ℤ)) ∧ ∃ l, mu l < (lam l : ℤ)))) :=
by
  intro N n I α β c₀ a₀ b₀ k₀ hk₀ hO1 hO2 hb
  classical

  let Brk : (Fin n → ℤ) → Prop := fun p =>
    p = 0 ∨ (∀ l, p l = (c₀ l : ℤ)) ∨
      (∃ i ∈ I, ∃ j ∈ I, α i ≠ α j ∧ ∀ l, (α i - α j) * p l = β j l - β i l) ∨
      (∃ i ∈ I, ∃ j ∈ I, α i = α j ∧ ∀ l, p l = β i l - β j l)

  have hMem : ∀ p, Brk p → (fun l => (p l : ℚ)) ∈ wcpaDjStcBreaks I α β c₀ := by
    intro p hp
    unfold wcpaDjStcBreaks
    simp only [Set.mem_union, Set.mem_insert_iff, Set.mem_singleton_iff, Set.mem_setOf_eq]
    rcases hp with h | h | ⟨i, hi, j, hj, hne, h⟩ | ⟨i, hi, j, hj, heq, h⟩
    · refine Or.inl (Or.inl (Or.inl ?_))
      subst h
      funext l
      simp
    · refine Or.inl (Or.inl (Or.inr ?_))
      funext l
      simp [h l]
    · refine Or.inl (Or.inr ⟨i, hi, j, hj, hne, ?_⟩)
      funext l
      have hden : ((α i - α j : ℤ) : ℚ) ≠ 0 := Int.cast_ne_zero.mpr (sub_ne_zero.mpr hne)
      rw [eq_div_iff hden]
      have h' : p l * (α i - α j) = β j l - β i l := by rw [mul_comm]; exact h l
      exact_mod_cast h'
    · refine Or.inr ⟨i, hi, j, hj, heq, ?_⟩
      funext l
      rw [h l]

  have hC : ∀ p q, Brk p → Brk q → p ≤ q ∨ q ≤ p := by
    intro p q hp hq
    rcases hO2 _ (hMem p hp) _ (hMem q hq) with h | h
    · left
      refine Pi.le_def.mpr fun l => ?_
      have := Pi.le_def.mp h l
      exact_mod_cast this
    · right
      refine Pi.le_def.mpr fun l => ?_
      have := Pi.le_def.mp h l
      exact_mod_cast this

  have hExt : ∀ S : Finset (Fin n → ℤ), S.Nonempty → (∀ p ∈ S, ∀ q ∈ S, p ≤ q ∨ q ≤ p) →
      (∃ m ∈ S, ∀ w ∈ S, w ≤ m) ∧ (∃ m ∈ S, ∀ w ∈ S, m ≤ w) := by
    intro S hne hcomp
    constructor
    · obtain ⟨m, hm, hmax⟩ := Finset.exists_max_image S (fun p => ∑ l, p l) hne
      refine ⟨m, hm, fun w hw => ?_⟩
      rcases hcomp w hw m hm with h | h
      · exact h
      · have h0 : ∀ l, m l ≤ w l := Pi.le_def.mp h
        have h1 : ∑ l, m l ≤ ∑ l, w l := Finset.sum_le_sum (fun l _ => h0 l)
        have h2 : ∑ l, w l ≤ ∑ l, m l := hmax w hw
        have h3 : ∑ l, (w l - m l) = 0 := by
          rw [Finset.sum_sub_distrib]; linarith
        have h4 := (Finset.sum_eq_zero_iff_of_nonneg
          (fun l _ => sub_nonneg.mpr (h0 l))).mp h3
        refine Pi.le_def.mpr fun l => ?_
        have := h4 l (Finset.mem_univ l)
        linarith
    · obtain ⟨m, hm, hmin⟩ := Finset.exists_min_image S (fun p => ∑ l, p l) hne
      refine ⟨m, hm, fun w hw => ?_⟩
      rcases hcomp w hw m hm with h | h
      · have h0 : ∀ l, w l ≤ m l := Pi.le_def.mp h
        have h1 : ∑ l, w l ≤ ∑ l, m l := Finset.sum_le_sum (fun l _ => h0 l)
        have h2 : ∑ l, m l ≤ ∑ l, w l := hmin w hw
        have h3 : ∑ l, (m l - w l) = 0 := by
          rw [Finset.sum_sub_distrib]; linarith
        have h4 := (Finset.sum_eq_zero_iff_of_nonneg
          (fun l _ => sub_nonneg.mpr (h0 l))).mp h3
        refine Pi.le_def.mpr fun l => ?_
        have := h4 l (Finset.mem_univ l)
        linarith
      · exact h

  let ℓ : Fin (N + 1) → Fin n → ℤ := fun i l => (β k₀ l - β i l) / (α i - α k₀)
  have hℓ : ∀ i ∈ I, α k₀ < α i → ∀ l, (α i - α k₀) * ℓ i l = β k₀ l - β i l := by
    intro i hi hlt l
    exact Int.mul_ediv_cancel' (hO1 i hi k₀ hk₀ hlt.ne' l)
  have hℓB : ∀ i ∈ I, α k₀ < α i → Brk (ℓ i) := fun i hi hlt =>
    Or.inr (Or.inr (Or.inl ⟨i, hi, k₀, hk₀, hlt.ne', hℓ i hi hlt⟩))
  let S : Finset (Fin n → ℤ) := insert 0 ((I.filter (fun i => α k₀ < α i)).image ℓ)
  have hSmem : ∀ w ∈ S, w = 0 ∨ ∃ i ∈ I, α k₀ < α i ∧ w = ℓ i := by
    intro w hw
    rcases Finset.mem_insert.mp hw with h | h
    · exact Or.inl h
    · obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp h
      rw [Finset.mem_filter] at hi
      exact Or.inr ⟨i, hi.1, hi.2, rfl⟩
  have hSB : ∀ w ∈ S, Brk w := by
    intro w hw
    rcases hSmem w hw with h | ⟨i, hi, hlt, h⟩
    · exact Or.inl h
    · rw [h]; exact hℓB i hi hlt
  have hℓS : ∀ i ∈ I, α k₀ < α i → ℓ i ∈ S := fun i hi hlt =>
    Finset.mem_insert_of_mem (Finset.mem_image.mpr ⟨i, Finset.mem_filter.mpr ⟨hi, hlt⟩, rfl⟩)
  obtain ⟨mx, hmxS, hmx⟩ := (hExt S (Finset.insert_nonempty _ _)
    (fun p hp q hq => hC p q (hSB p hp) (hSB q hq))).1
  have hmx0 : ∀ l, 0 ≤ mx l := fun l => Pi.le_def.mp (hmx 0 (Finset.mem_insert_self _ _)) l
  have hL1 : ∀ l, mx l ≤ β k₀ l - b₀ l := by
    intro l
    rcases hSmem mx hmxS with h | ⟨i, hi, hlt, h⟩
    · rw [h]
      have := (hb k₀ hk₀).2 l
      simp only [Pi.zero_apply]
      linarith
    · have e := hℓ i hi hlt l
      rw [← h] at e
      have hb' := (hb i hi).2 l
      have hd : 1 ≤ α i - α k₀ := by linarith
      have hle : mx l ≤ (α i - α k₀) * mx l := le_mul_of_one_le_left (hmx0 l) hd
      linarith
  have hL2 : (fun l => (mx l).toNat) = 0 ∨
      ∃ i ∈ I, α k₀ < α i ∧ ∀ l, (α i - α k₀) * mx l = β k₀ l - β i l := by
    rcases hSmem mx hmxS with h | ⟨i, hi, hlt, h⟩
    · left
      funext l
      simp [h]
    · right
      exact ⟨i, hi, hlt, fun l => by rw [h]; exact hℓ i hi hlt l⟩
  have hL3 : ∀ i ∈ I, α k₀ < α i → ∀ l, 0 ≤ β i l - β k₀ l + (α i - α k₀) * mx l := by
    intro i hi hlt l
    have e := hℓ i hi hlt l
    have hle := Pi.le_def.mp (hmx (ℓ i) (hℓS i hi hlt)) l
    have h1 : 0 ≤ (α i - α k₀) * (mx l - ℓ i l) := mul_nonneg (by linarith) (by linarith)
    rw [mul_sub] at h1
    linarith

  have hE : ∀ i ∈ I, α i = α k₀ → (∀ l, β k₀ l ≤ β i l) ∨ (∀ l, β i l ≤ β k₀ l) := by
    intro i hi heq
    have hp : Brk (fun l => β i l - β k₀ l) :=
      Or.inr (Or.inr (Or.inr ⟨i, hi, k₀, hk₀, heq, fun l => rfl⟩))
    rcases hC _ 0 hp (Or.inl rfl) with h | h
    · right
      intro l
      have := Pi.le_def.mp h l
      simp only [Pi.zero_apply] at this
      linarith
    · left
      intro l
      have := Pi.le_def.mp h l
      simp only [Pi.zero_apply] at this
      linarith

  let ℓ' : Fin (N + 1) → Fin n → ℤ := fun j l => (β j l - β k₀ l) / (α k₀ - α j)
  have hℓ' : ∀ j ∈ I, α j < α k₀ → ∀ l, (α k₀ - α j) * ℓ' j l = β j l - β k₀ l := by
    intro j hj hlt l
    exact Int.mul_ediv_cancel' (hO1 k₀ hk₀ j hj hlt.ne' l)
  let cv : Fin n → ℤ := fun l => (c₀ l : ℤ)
  let S' : Finset (Fin n → ℤ) := (I.filter (fun j => α j < α k₀)).image ℓ' ∪
    ({cv} : Finset (Fin n → ℤ)).filter (fun _ => ∃ l, c₀ l ≠ 0)
  have hcvS : (∃ l, c₀ l ≠ 0) → cv ∈ S' := fun hc =>
    Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨Finset.mem_singleton_self _, hc⟩)
  have hℓ'S : ∀ j ∈ I, α j < α k₀ → ℓ' j ∈ S' := fun j hj hlt =>
    Finset.mem_union_left _ (Finset.mem_image.mpr ⟨j, Finset.mem_filter.mpr ⟨hj, hlt⟩, rfl⟩)
  have hS'mem : ∀ w ∈ S', ((∃ l, c₀ l ≠ 0) ∧ w = cv) ∨ ∃ j ∈ I, α j < α k₀ ∧ w = ℓ' j := by
    intro w hw
    rcases Finset.mem_union.mp hw with h | h
    · obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp h
      rw [Finset.mem_filter] at hj
      exact Or.inr ⟨j, hj.1, hj.2, rfl⟩
    · rw [Finset.mem_filter, Finset.mem_singleton] at h
      exact Or.inl ⟨h.2, h.1⟩
  have hS'B : ∀ w ∈ S', Brk w := by
    intro w hw
    rcases hS'mem w hw with ⟨_, h⟩ | ⟨j, hj, hlt, h⟩
    · rw [h]; exact Or.inr (Or.inl fun l => rfl)
    · rw [h]; exact Or.inr (Or.inr (Or.inl ⟨k₀, hk₀, j, hj, hlt.ne', hℓ' j hj hlt⟩))
  have hmxB : Brk mx := hSB mx hmxS
  have hU : ((∀ i ∈ I, α k₀ ≤ α i) ∧ c₀ = 0) ∨
      ∃ mu : Fin n → ℤ,
        (∀ i ∈ I, α i < α k₀ → ∀ l, 0 ≤ β i l - β k₀ l - (α k₀ - α i) * mu l) ∧
        ((∃ j ∈ I, α j < α k₀ ∧ ∀ l, (α k₀ - α j) * mu l = β j l - β k₀ l) ∨
          ((∃ l, c₀ l ≠ 0) ∧ ∀ l, mu l = (c₀ l : ℤ))) ∧
        ((∃ l, c₀ l ≠ 0) → ∀ l, mu l ≤ (c₀ l : ℤ)) ∧
        ((∀ l, mx l ≤ mu l) ∨ ((∀ l, mu l ≤ mx l) ∧ ∃ l, mu l < mx l)) := by
    by_cases hne : S'.Nonempty
    · obtain ⟨mn, hmnS, hmn⟩ := (hExt S' hne
        (fun p hp q hq => hC p q (hS'B p hp) (hS'B q hq))).2
      right
      refine ⟨mn, ?_, ?_, ?_, ?_⟩
      · intro i hi hlt l
        have e := hℓ' i hi hlt l
        have hle := Pi.le_def.mp (hmn (ℓ' i) (hℓ'S i hi hlt)) l
        have h1 : 0 ≤ (α k₀ - α i) * (ℓ' i l - mn l) := mul_nonneg (by linarith) (by linarith)
        rw [mul_sub] at h1
        linarith
      · rcases hS'mem mn hmnS with ⟨hc, h⟩ | ⟨j, hj, hlt, h⟩
        · right
          exact ⟨hc, fun l => by rw [h]⟩
        · left
          exact ⟨j, hj, hlt, fun l => by rw [h]; exact hℓ' j hj hlt l⟩
      · intro hc l
        exact Pi.le_def.mp (hmn cv (hcvS hc)) l
      · rcases hC mx mn hmxB (hS'B mn hmnS) with h | h
        · left
          exact Pi.le_def.mp h
        · by_cases h' : ∀ l, mx l ≤ mn l
          · left
            exact h'
          · right
            push_neg at h'
            exact ⟨Pi.le_def.mp h, h'⟩
    · left
      rw [Finset.not_nonempty_iff_eq_empty] at hne
      refine ⟨fun i hi => ?_, ?_⟩
      · by_contra hlt
        push_neg at hlt
        have h1 := hℓ'S i hi hlt
        rw [hne] at h1
        simp at h1
      · funext l
        by_contra hcl
        have h1 := hcvS ⟨l, hcl⟩
        rw [hne] at h1
        simp at h1
  have hlam : ∀ l, (((mx l).toNat : ℕ) : ℤ) = mx l := fun l => Int.toNat_of_nonneg (hmx0 l)
  refine ⟨fun l => (mx l).toNat, ?_⟩
  simp only [hlam]
  exact ⟨hL1, hL2, hL3, hE, hU⟩

theorem wcpa_dj_glt_cc_lctd_node_y0 : ∀ (O₀ Oy : Type u) [CommRing O₀] [CommRing Oy]
    [IsLocalRing O₀] [IsLocalRing Oy] (φ : O₀ →+* Oy) (n : ℕ) (t : Fin n → O₀) (c₀ : Fin n → ℕ)
    (x : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
    (v : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ)
    (e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
      (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
          (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)})),
    e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
      (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) →
    e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0) →
    ∃ y0 : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
      x * y0 = ∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ c₀ l :=
by
  intro O₀ Oy _ _ _ _ φ n t c₀ x v e H1 H2
  have hmem : MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
      (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l) ∈
      (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)} :
        Ideal (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) :=
    Ideal.mem_span_singleton_self _
  generalize (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
      (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)} :
      Ideal (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) = I
    at e H1 H2 hmem
  obtain ⟨y, hy⟩ : ∃ y, e y = Ideal.Quotient.mk I (MvPowerSeries.X 1) *
      Ideal.Quotient.mk I (MvPowerSeries.C
        ((v⁻¹ : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ) :
          AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) :=
    ⟨_, e.apply_symm_apply _⟩
  refine ⟨y, e.injective ?_⟩
  have hφ : ∀ l, e (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) =
      Ideal.Quotient.mk I (MvPowerSeries.C
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l))) :=
    fun l => RingHom.congr_fun H1 (t l)
  have hrel : Ideal.Quotient.mk I (MvPowerSeries.X 0) * Ideal.Quotient.mk I (MvPowerSeries.X 1) =
      Ideal.Quotient.mk I (MvPowerSeries.C (v : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) *
      Ideal.Quotient.mk I (MvPowerSeries.C (∏ l,
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)) := by
    rw [← map_mul, ← map_mul, ← map_mul]
    exact Ideal.Quotient.eq.mpr hmem
  have hu : Ideal.Quotient.mk I
      (MvPowerSeries.C (v : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) *
      Ideal.Quotient.mk I (MvPowerSeries.C
        ((v⁻¹ : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ) :
          AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) = 1 := by
    rw [← map_mul, ← map_mul, Units.mul_inv, map_one, map_one]
  have hCh : Ideal.Quotient.mk I (MvPowerSeries.C (∏ l,
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)) =
      ∏ l, (Ideal.Quotient.mk I (MvPowerSeries.C
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)))) ^ c₀ l := by
    simp only [map_prod, map_pow]
  have hP : e (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l)))
      ^ c₀ l) = Ideal.Quotient.mk I (MvPowerSeries.C (∏ l,
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)) := by
    rw [hCh, map_prod e]
    refine Finset.prod_congr rfl (fun l _ => ?_)
    rw [map_pow e, hφ]
  rw [map_mul e x y, H2, hy, hP, ← mul_assoc, hrel, mul_right_comm, hu, one_mul]

theorem wcpa_dj_glt_cc_lctd_u_part : ∀ (R : Type u) [CommRing R] (N n : ℕ)
    (I : Finset (Fin (N + 1))) (x : R) (t : Fin n → R) (α : Fin (N + 1) → ℤ)
    (β : Fin (N + 1) → Fin n → ℤ) (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
    (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
    ∀ lam : Fin n → ℕ, (∀ l, (lam l : ℤ) ≤ β k₀ l - b₀ l) →
    (lam = 0 ∨ ∃ i ∈ I, α k₀ < α i ∧ ∀ l, (α i - α k₀) * (lam l : ℤ) = β k₀ l - β i l) →
    ∃ u : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀),
      u ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∧
      u * algebraMap R _ (∏ l, t l ^ lam l) = algebraMap R _ x ∧
      ∀ i ∈ I, α k₀ < α i → (∀ l, 0 ≤ β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)) →
        IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (wcpaDjGltMon I x t α β a₀ b₀ i)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) =
        u ^ (α i - α k₀).toNat *
          algebraMap R _ (∏ l, t l ^ (β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat) :=
by
  intro R _ N n I x t α β a₀ b₀ k₀ hk₀ hb lam hlam hcase
  classical
  have hG : wcpaDjGltMon I x t α β a₀ b₀ k₀ =
      x ^ (α k₀ - a₀).toNat * ∏ l, t l ^ (β k₀ l - b₀ l).toNat := if_pos hk₀
  have hlamB : ∀ l, lam l ≤ (β k₀ l - b₀ l).toNat := fun l => by have := hlam l; omega

  have key : ∀ (A D a : ℕ) (B b c e : Fin n → ℕ), a = A + D →
      (∀ l, B l * D + b l = B l + (c l + e l * D)) →
      (x ^ A * ∏ l, t l ^ B l) ^ D * (x ^ a * ∏ l, t l ^ b l) =
        (x ^ A * ∏ l, t l ^ B l) * ((∏ l, t l ^ c l) * (x ^ (1 + A) * ∏ l, t l ^ e l) ^ D) := by
    intro A D a B b c e ha hl
    have hx : A * D + a = A + (1 + A) * D := by subst ha; ring
    calc (x ^ A * ∏ l, t l ^ B l) ^ D * (x ^ a * ∏ l, t l ^ b l)
        = x ^ (A * D + a) * ∏ l, t l ^ (B l * D + b l) := by
          simp only [pow_add, pow_mul, Finset.prod_mul_distrib, Finset.prod_pow]; ring
      _ = x ^ (A + (1 + A) * D) * ∏ l, t l ^ (B l + (c l + e l * D)) := by
          rw [hx, Finset.prod_congr rfl (fun l _ => congrArg (t l ^ ·) (hl l))]
      _ = (x ^ A * ∏ l, t l ^ B l) * ((∏ l, t l ^ c l) * (x ^ (1 + A) * ∏ l, t l ^ e l) ^ D) := by
          simp only [pow_add, pow_mul, mul_pow, Finset.prod_mul_distrib, Finset.prod_pow]; ring
  obtain ⟨u, hu⟩ : ∃ u : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀),
      u = IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (x ^ (1 + (α k₀ - a₀).toNat) * ∏ l, t l ^ ((β k₀ l - b₀ l).toNat - lam l))
        (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) := ⟨_, rfl⟩

  have hC2 : u * algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
      (∏ l, t l ^ lam l) = algebraMap R _ x := by
    have hR : (∏ l, t l ^ lam l) * (x ^ (1 + (α k₀ - a₀).toNat) *
        ∏ l, t l ^ ((β k₀ l - b₀ l).toNat - lam l)) = x * wcpaDjGltMon I x t α β a₀ b₀ k₀ := by
      rw [hG]
      have hP : (∏ l, t l ^ lam l) * (∏ l, t l ^ ((β k₀ l - b₀ l).toNat - lam l)) =
          ∏ l, t l ^ (β k₀ l - b₀ l).toNat := by
        rw [← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl (fun l _ => ?_)
        rw [← pow_add, Nat.add_sub_cancel' (hlamB l)]
      rw [pow_add, pow_one]
      linear_combination (x * x ^ (α k₀ - a₀).toNat) * hP
    rw [hu, mul_comm _ (algebraMap R _ _), IsLocalization.mul_mk'_eq_mk'_of_mul, hR]
    exact IsLocalization.mk'_mul_cancel_right
      (S := Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) x
      (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀))

  have hC3 : ∀ i ∈ I, α k₀ < α i → (∀ l, 0 ≤ β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)) →
        IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (wcpaDjGltMon I x t α β a₀ b₀ i)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) =
        u ^ (α i - α k₀).toNat *
          algebraMap R _ (∏ l, t l ^ (β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat) := by
    intro i hi hlt hh
    have hFi : wcpaDjGltMon I x t α β a₀ b₀ i =
        x ^ (α i - a₀).toNat * ∏ l, t l ^ (β i l - b₀ l).toNat := if_pos hi
    have ha₀ := (hb k₀ hk₀).1
    have ha : (α i - a₀).toNat = (α k₀ - a₀).toNat + (α i - α k₀).toNat := by omega
    have hD : (((α i - α k₀).toNat : ℕ) : ℤ) = α i - α k₀ := Int.toNat_of_nonneg (by omega)
    have hl : ∀ l, (β k₀ l - b₀ l).toNat * (α i - α k₀).toNat + (β i l - b₀ l).toNat =
        (β k₀ l - b₀ l).toNat + ((β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat +
          ((β k₀ l - b₀ l).toNat - lam l) * (α i - α k₀).toNat) := by
      intro l
      have h1 : (((β k₀ l - b₀ l).toNat : ℕ) : ℤ) = β k₀ l - b₀ l :=
        Int.toNat_of_nonneg (by have := hlam l; omega)
      have h2 : (((β i l - b₀ l).toNat : ℕ) : ℤ) = β i l - b₀ l :=
        Int.toNat_of_nonneg (by have := (hb i hi).2 l; omega)
      have h3 : (((β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat : ℕ) : ℤ) =
          β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ) := Int.toNat_of_nonneg (hh l)
      have h4 : ((((β k₀ l - b₀ l).toNat - lam l : ℕ)) : ℤ) = (β k₀ l - b₀ l) - (lam l : ℤ) := by
        rw [Nat.cast_sub (hlamB l), h1]
      have hz : (((β k₀ l - b₀ l).toNat * (α i - α k₀).toNat + (β i l - b₀ l).toNat : ℕ) : ℤ) =
          (((β k₀ l - b₀ l).toNat + ((β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat +
            ((β k₀ l - b₀ l).toNat - lam l) * (α i - α k₀).toNat) : ℕ) : ℤ) := by
        simp only [Nat.cast_add, Nat.cast_mul, h4, h1, h2, h3, hD]
        ring
      exact_mod_cast hz
    have hR : wcpaDjGltMon I x t α β a₀ b₀ k₀ ^ (α i - α k₀).toNat *
          wcpaDjGltMon I x t α β a₀ b₀ i =
        wcpaDjGltMon I x t α β a₀ b₀ k₀ *
          ((∏ l, t l ^ (β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat) *
            (x ^ (1 + (α k₀ - a₀).toNat) * ∏ l, t l ^ ((β k₀ l - b₀ l).toNat - lam l)) ^
              (α i - α k₀).toNat) := by
      rw [hFi, hG]
      exact key (α k₀ - a₀).toNat (α i - α k₀).toNat (α i - a₀).toNat
        (fun l => (β k₀ l - b₀ l).toNat) (fun l => (β i l - b₀ l).toNat)
        (fun l => (β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat)
        (fun l => (β k₀ l - b₀ l).toNat - lam l) ha hl
    rw [hu, ← IsLocalization.mk'_pow, mul_comm _ (algebraMap R _ _),
      IsLocalization.mul_mk'_eq_mk'_of_mul, IsLocalization.mk'_eq_iff_eq]
    refine congrArg _ ?_
    rw [SubmonoidClass.coe_pow]
    exact hR

  have hchart : ∀ z ∈ wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀,
      z ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) := fun z hz =>
    isIntegral_algebraMap (R := wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
      (x := (⟨z, hz⟩ : wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀))
  refine ⟨u, ?_, hC2, hC3⟩
  rcases hcase with h0 | ⟨i, hi, hlt, hrel⟩
  · subst h0
    have hux : u = algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) x := by
      rw [← hC2]
      simp
    rw [hux]
    exact hchart _ (Subalgebra.algebraMap_mem _ x)
  · have hh : ∀ l, 0 ≤ β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ) := fun l => by
      linarith [hrel l]
    have hm := hC3 i hi hlt hh
    have h1 : algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (∏ l, t l ^ (β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)).toNat) = 1 := by
      rw [← map_one (algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)))]
      congr 1
      refine Finset.prod_eq_one (fun l _ => ?_)
      rw [show (β i l - β k₀ l + (α i - α k₀) * (lam l : ℤ)) = 0 by linarith [hrel l]]
      simp
    rw [h1, mul_one] at hm
    have hmem : IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (wcpaDjGltMon I x t α β a₀ b₀ i)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∈
        wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀ := Algebra.subset_adjoin ⟨i, rfl⟩
    rw [hm] at hmem
    have hint := hchart _ hmem
    rw [mem_integralClosure_iff] at hint ⊢
    exact IsIntegral.of_pow (by omega) hint

theorem wcpa_dj_glt_cc_lctd_y_part : ∀ (R : Type u) [CommRing R] (N n : ℕ)
    (I : Finset (Fin (N + 1))) (x : R) (t : Fin n → R) (α : Fin (N + 1) → ℤ)
    (β : Fin (N + 1) → Fin n → ℤ) (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
    (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
    ∀ mu : Fin n → ℤ,
    ((∃ j ∈ I, α j < α k₀ ∧ ∀ l, (α k₀ - α j) * mu l = β j l - β k₀ l) ∨
      ((∀ l, 0 ≤ mu l) ∧ ∃ y0 : R, x * y0 = ∏ l, t l ^ (mu l).toNat)) →
    ∃ y' : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀),
      y' ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∧
      algebraMap R _ x * y' * algebraMap R _ (∏ l, t l ^ (-mu l).toNat) =
        algebraMap R _ (∏ l, t l ^ (mu l).toNat) ∧
      ∀ i ∈ I, α i < α k₀ → (∀ l, 0 ≤ β i l - β k₀ l - (α k₀ - α i) * mu l) →
        IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (wcpaDjGltMon I x t α β a₀ b₀ i)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) =
        y' ^ (α k₀ - α i).toNat *
          algebraMap R _ (∏ l, t l ^ (β i l - β k₀ l - (α k₀ - α i) * mu l).toNat) :=
by
  intro R _ N n I x t α β a₀ b₀ k₀ hk₀ hb mu hmu
  classical
  have hG : wcpaDjGltMon I x t α β a₀ b₀ k₀ =
      x ^ (α k₀ - a₀).toNat * ∏ l, t l ^ (β k₀ l - b₀ l).toNat := by
    simp [wcpaDjGltMon, hk₀]
  have hFi : ∀ i ∈ I, wcpaDjGltMon I x t α β a₀ b₀ i =
      x ^ (α i - a₀).toNat * ∏ l, t l ^ (β i l - b₀ l).toNat := by
    intro i hi
    simp [wcpaDjGltMon, hi]

  have norm1 : ∀ (A d p : ℕ) (B q : Fin n → ℕ),
      (x ^ A * ∏ l, t l ^ B l) ^ d * (x ^ p * ∏ l, t l ^ q l) =
        x ^ (A * d + p) * ∏ l, t l ^ (B l * d + q l) := by
    intro A d p B q
    simp only [pow_add, pow_mul, Finset.prod_mul_distrib, Finset.prod_pow]
    ring
  have norm2 : ∀ (A a d : ℕ) (B E h : Fin n → ℕ),
      (x ^ A * ∏ l, t l ^ B l) * ((∏ l, t l ^ h l) * (x ^ a * ∏ l, t l ^ E l) ^ d) =
        x ^ (A + a * d) * ∏ l, t l ^ (B l + h l + E l * d) := by
    intro A a d B E h
    simp only [pow_add, pow_mul, Finset.prod_mul_distrib, Finset.prod_pow]
    ring

  have hrel : a₀ < α k₀ → (∀ l, 0 ≤ mu l + β k₀ l - b₀ l) →
      algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) x *
        IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (x ^ (α k₀ - a₀ - 1).toNat * ∏ l, t l ^ (mu l + β k₀ l - b₀ l).toNat)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) *
        algebraMap R _ (∏ l, t l ^ (-mu l).toNat) =
      algebraMap R _ (∏ l, t l ^ (mu l).toNat) := by
    intro ha hE
    rw [IsLocalization.mul_mk'_eq_mk'_of_mul, mul_comm, IsLocalization.mul_mk'_eq_mk'_of_mul,
      IsLocalization.mk'_eq_iff_eq_mul, ← map_mul]
    congr 1
    show _ = _ * wcpaDjGltMon I x t α β a₀ b₀ k₀
    rw [hG]
    have hA : (α k₀ - a₀).toNat = (α k₀ - a₀ - 1).toNat + 1 := by omega
    have hP : ∀ l, (-mu l).toNat + (mu l + β k₀ l - b₀ l).toNat =
        (mu l).toNat + (β k₀ l - b₀ l).toNat := by
      intro l
      have h1 := hE l
      have h2 := (hb k₀ hk₀).2 l
      omega
    have hT : (∏ l, t l ^ (-mu l).toNat) * ∏ l, t l ^ (mu l + β k₀ l - b₀ l).toNat =
        (∏ l, t l ^ (mu l).toNat) * ∏ l, t l ^ (β k₀ l - b₀ l).toNat := by
      rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl (fun l _ => ?_)
      rw [← pow_add, ← pow_add, hP l]
    rw [hA, pow_succ]
    linear_combination (x ^ (α k₀ - a₀ - 1).toNat * x) * hT

  have hgen : (∀ l, 0 ≤ mu l + β k₀ l - b₀ l) →
      ∀ i ∈ I, α i < α k₀ → (∀ l, 0 ≤ β i l - β k₀ l - (α k₀ - α i) * mu l) →
        IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (wcpaDjGltMon I x t α β a₀ b₀ i)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) =
        (IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
            (x ^ (α k₀ - a₀ - 1).toNat * ∏ l, t l ^ (mu l + β k₀ l - b₀ l).toNat)
            (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀))) ^ (α k₀ - α i).toNat *
          algebraMap R _ (∏ l, t l ^ (β i l - β k₀ l - (α k₀ - α i) * mu l).toNat) := by
    intro hE i hi hlt hh
    rw [← IsLocalization.mk'_pow, mul_comm, IsLocalization.mul_mk'_eq_mk'_of_mul,
      IsLocalization.mk'_eq_iff_eq]
    congr 1
    show wcpaDjGltMon I x t α β a₀ b₀ k₀ ^ (α k₀ - α i).toNat * wcpaDjGltMon I x t α β a₀ b₀ i =
      wcpaDjGltMon I x t α β a₀ b₀ k₀ * ((∏ l, t l ^ (β i l - β k₀ l - (α k₀ - α i) * mu l).toNat) *
        (x ^ (α k₀ - a₀ - 1).toNat * ∏ l, t l ^ (mu l + β k₀ l - b₀ l).toNat) ^ (α k₀ - α i).toNat)
    rw [hFi i hi, hG, norm1, norm2]
    have hai := (hb i hi).1
    have h1 : ((α k₀ - a₀).toNat : ℤ) = α k₀ - a₀ := Int.toNat_of_nonneg (by linarith)
    have h2 : ((α k₀ - α i).toNat : ℤ) = α k₀ - α i := Int.toNat_of_nonneg (by linarith)
    have h3 : ((α i - a₀).toNat : ℤ) = α i - a₀ := Int.toNat_of_nonneg (by linarith)
    have h4 : ((α k₀ - a₀ - 1).toNat : ℤ) = α k₀ - a₀ - 1 := Int.toNat_of_nonneg (by linarith)
    have ex : (α k₀ - a₀).toNat * (α k₀ - α i).toNat + (α i - a₀).toNat =
        (α k₀ - a₀).toNat + (α k₀ - a₀ - 1).toNat * (α k₀ - α i).toNat := by
      have : (((α k₀ - a₀).toNat * (α k₀ - α i).toNat + (α i - a₀).toNat : ℕ) : ℤ) =
          (((α k₀ - a₀).toNat + (α k₀ - a₀ - 1).toNat * (α k₀ - α i).toNat : ℕ) : ℤ) := by
        simp only [Nat.cast_add, Nat.cast_mul]
        rw [h1, h2, h3, h4]
        ring
      exact_mod_cast this
    have et : ∀ l, (β k₀ l - b₀ l).toNat * (α k₀ - α i).toNat + (β i l - b₀ l).toNat =
        (β k₀ l - b₀ l).toNat + (β i l - β k₀ l - (α k₀ - α i) * mu l).toNat +
          (mu l + β k₀ l - b₀ l).toNat * (α k₀ - α i).toNat := by
      intro l
      have g1 : ((β k₀ l - b₀ l).toNat : ℤ) = β k₀ l - b₀ l :=
        Int.toNat_of_nonneg (by linarith [(hb k₀ hk₀).2 l])
      have g2 : ((β i l - b₀ l).toNat : ℤ) = β i l - b₀ l :=
        Int.toNat_of_nonneg (by linarith [(hb i hi).2 l])
      have g3 : ((β i l - β k₀ l - (α k₀ - α i) * mu l).toNat : ℤ) =
          β i l - β k₀ l - (α k₀ - α i) * mu l := Int.toNat_of_nonneg (hh l)
      have g4 : ((mu l + β k₀ l - b₀ l).toNat : ℤ) = mu l + β k₀ l - b₀ l :=
        Int.toNat_of_nonneg (hE l)
      have : (((β k₀ l - b₀ l).toNat * (α k₀ - α i).toNat + (β i l - b₀ l).toNat : ℕ) : ℤ) =
          (((β k₀ l - b₀ l).toNat + (β i l - β k₀ l - (α k₀ - α i) * mu l).toNat +
            (mu l + β k₀ l - b₀ l).toNat * (α k₀ - α i).toNat : ℕ) : ℤ) := by
        simp only [Nat.cast_add, Nat.cast_mul]
        rw [g1, g2, g3, g4, h2]
        ring
      exact_mod_cast this
    rw [ex]
    congr 1
    exact Finset.prod_congr rfl (fun l _ => by rw [et l])
  rcases hmu with ⟨j, hj, hjlt, hjeq⟩ | ⟨hmu0, y0, hy0⟩
  ·
    have hja := (hb j hj).1
    have ha : a₀ < α k₀ := lt_of_le_of_lt hja hjlt
    have hE : ∀ l, 0 ≤ mu l + β k₀ l - b₀ l := by
      intro l
      have hk := (hb k₀ hk₀).2 l
      have hjl := (hb j hj).2 l
      have he := hjeq l
      rcases le_or_gt 0 (mu l) with hm | hm
      · linarith
      · have hD1 : 0 ≤ α k₀ - α j - 1 := by linarith
        nlinarith [mul_nonneg hD1 (neg_nonneg.2 hm.le)]
    refine ⟨IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
            (x ^ (α k₀ - a₀ - 1).toNat * ∏ l, t l ^ (mu l + β k₀ l - b₀ l).toNat)
            (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)), ?_, hrel ha hE,
      fun i hi hlt hh => hgen hE i hi hlt hh⟩
    have h0 : ∀ l, β j l - β k₀ l - (α k₀ - α j) * mu l = 0 := by
      intro l
      rw [hjeq l]
      ring
    have hg := hgen hE j hj hjlt (fun l => by rw [h0 l])
    simp only [h0, Int.toNat_zero, pow_zero, Finset.prod_const_one, map_one, mul_one] at hg
    have hmj : IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (wcpaDjGltMon I x t α β a₀ b₀ j)
        (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
          Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∈
        wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀ := Algebra.subset_adjoin ⟨j, rfl⟩
    have hI : IsIntegral (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
          (wcpaDjGltMon I x t α β a₀ b₀ j)
          (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀))) :=
      isIntegral_algebraMap (R := wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (x := (⟨_, hmj⟩ : wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀))
    rw [hg] at hI
    exact IsIntegral.of_pow (by omega) hI
  ·
    have hT1 : ∏ l, t l ^ (-mu l).toNat = 1 :=
      Finset.prod_eq_one (fun l _ => by
        rw [Int.toNat_eq_zero.mpr (by linarith [hmu0 l]), pow_zero])
    have hy0m : algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) y0 ∈
        wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀ := Subalgebra.algebraMap_mem _ y0
    have hb' : algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) x *
        algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) y0 =
        algebraMap R _ (∏ l, t l ^ (mu l).toNat) := by
      rw [← map_mul, hy0]
    refine ⟨algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) y0,
      isIntegral_algebraMap (R := wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (x := (⟨_, hy0m⟩ : wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)), ?_, ?_⟩
    · rw [hT1, map_one, mul_one]
      exact hb'
    · intro i hi hlt hh
      have hai := (hb i hi).1
      have ha : a₀ < α k₀ := lt_of_le_of_lt hai hlt
      have hE : ∀ l, 0 ≤ mu l + β k₀ l - b₀ l := by
        intro l
        have := (hb k₀ hk₀).2 l
        have := hmu0 l
        linarith
      have hxG : x ∣ wcpaDjGltMon I x t α β a₀ b₀ k₀ := by
        rw [hG]
        exact Dvd.dvd.mul_right (dvd_pow_self x (by omega)) _
      have hXu : IsUnit (algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) x) :=
        isUnit_of_dvd_unit (map_dvd _ hxG) (IsLocalization.Away.algebraMap_isUnit _)
      have hr := hrel ha hE
      rw [hT1, map_one, mul_one, ← hb'] at hr
      have hyy := hXu.mul_left_cancel hr
      rw [hgen hE i hi hlt hh, hyy]

theorem wcpa_dj_glt_cc_lctd_e_part : ∀ (R : Type u) [CommRing R] (N n : ℕ)
    (I : Finset (Fin (N + 1))) (x : R) (t : Fin n → R) (α : Fin (N + 1) → ℤ)
    (β : Fin (N + 1) → Fin n → ℤ) (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
    (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) → ∀ i : Fin (N + 1),
    (i ∉ I → IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (wcpaDjGltMon I x t α β a₀ b₀ i)
        (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
          Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) = 0) ∧
    (i ∈ I → α i = α k₀ → (∀ l, β k₀ l ≤ β i l) →
      IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (wcpaDjGltMon I x t α β a₀ b₀ i)
        (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
          Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) =
      algebraMap R _ (∏ l, t l ^ (β i l - β k₀ l).toNat)) ∧
    (i ∈ I → α i = α k₀ → (∀ l, β i l ≤ β k₀ l) →
      IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (wcpaDjGltMon I x t α β a₀ b₀ i)
        (⟨wcpaDjGltMon I x t α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
          Submonoid.powers (wcpaDjGltMon I x t α β a₀ b₀ k₀)) *
      algebraMap R _ (∏ l, t l ^ (β k₀ l - β i l).toNat) = 1) :=
by
  intro R _ N n I x t α β a₀ b₀ k₀ hk₀ hb i
  classical
  have hG : wcpaDjGltMon I x t α β a₀ b₀ k₀ =
      x ^ (α k₀ - a₀).toNat * ∏ l, t l ^ (β k₀ l - b₀ l).toNat := by
    simp [wcpaDjGltMon, hk₀]
  refine ⟨fun hi => ?_, fun hi hα hge => ?_, fun hi hα hle => ?_⟩
  · have h0 : wcpaDjGltMon I x t α β a₀ b₀ i = 0 := by
      simp [wcpaDjGltMon, hi]
    rw [h0, IsLocalization.mk'_zero]
  · have hFi' : wcpaDjGltMon I x t α β a₀ b₀ i =
        x ^ (α k₀ - a₀).toNat * ∏ l, t l ^ (β i l - b₀ l).toNat := by
      simp [wcpaDjGltMon, hi, hα]
    have hp : ∏ l, t l ^ (β i l - b₀ l).toNat =
        (∏ l, t l ^ (β i l - β k₀ l).toNat) * ∏ l, t l ^ (β k₀ l - b₀ l).toNat := by
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl (fun l _ => ?_)
      rw [← pow_add]
      congr 1
      have h1 := (hb k₀ hk₀).2 l
      have h2 := hge l
      omega
    have hFi : wcpaDjGltMon I x t α β a₀ b₀ i =
        (∏ l, t l ^ (β i l - β k₀ l).toNat) * wcpaDjGltMon I x t α β a₀ b₀ k₀ := by
      rw [hFi', hG, hp]
      ring
    rw [IsLocalization.mk'_eq_iff_eq_mul, hFi, map_mul]
  · have hFi' : wcpaDjGltMon I x t α β a₀ b₀ i =
        x ^ (α k₀ - a₀).toNat * ∏ l, t l ^ (β i l - b₀ l).toNat := by
      simp [wcpaDjGltMon, hi, hα]
    have hp : ∏ l, t l ^ (β k₀ l - b₀ l).toNat =
        (∏ l, t l ^ (β k₀ l - β i l).toNat) * ∏ l, t l ^ (β i l - b₀ l).toNat := by
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl (fun l _ => ?_)
      rw [← pow_add]
      congr 1
      have h1 := (hb i hi).2 l
      have h2 := hle l
      omega
    have hGi : wcpaDjGltMon I x t α β a₀ b₀ k₀ =
        (∏ l, t l ^ (β k₀ l - β i l).toNat) * wcpaDjGltMon I x t α β a₀ b₀ i := by
      rw [hG, hFi', hp]
      ring
    rw [mul_comm, IsLocalization.mul_mk'_eq_mk'_of_mul, ← hGi]
    exact IsLocalization.mk'_self' (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))

theorem wcpa_dj_glt_cc_lctd_unit_split : ∀ (R : Type u) [CommRing R] (N n : ℕ)
    (I : Finset (Fin (N + 1))) (x : R) (t : Fin n → R) (α : Fin (N + 1) → ℤ)
    (β : Fin (N + 1) → Fin n → ℤ) (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
    (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
    (∀ (γ : Fin n → ℕ) (z₁ : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)),
      z₁ ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) →
      z₁ * algebraMap R _ (∏ l, t l ^ γ l) = 1 → ∀ l, 0 < γ l →
      ∃ z : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀),
        z ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∧
        algebraMap R _ (t l) * z = 1) ∧
    (∀ (lam : Fin n → ℕ) (mu : Fin n → ℤ)
        (u y' : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)),
      u ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) →
      y' ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) →
      (∀ l, (lam l : ℤ) ≤ β k₀ l - b₀ l) →
      u * algebraMap R _ (∏ l, t l ^ lam l) = algebraMap R _ x →
      algebraMap R _ x * y' * algebraMap R _ (∏ l, t l ^ (-mu l).toNat) =
        algebraMap R _ (∏ l, t l ^ (mu l).toNat) →
      (∀ l, mu l ≤ (lam l : ℤ)) → (∃ l, mu l < (lam l : ℤ)) →
      ∃ l, ∃ z : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀),
        z ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∧
        algebraMap R _ (t l) * z = 1) :=
by
  intro R _ N n I x t α β a₀ b₀ k₀ hk₀ _hb
  classical

  have hAM : ∀ r : R, algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) r ∈
      integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) := fun r =>
    isIntegral_algebraMap (R := wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
      (x := (⟨_, Subalgebra.algebraMap_mem _ r⟩ :
        wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀))

  have hA : ∀ (γ : Fin n → ℕ) (z₁ : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)),
      z₁ ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
        (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) →
      z₁ * algebraMap R _ (∏ l, t l ^ γ l) = 1 → ∀ l, 0 < γ l →
      ∃ z : Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀),
        z ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x t α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀)) ∧
        algebraMap R _ (t l) * z = 1 := by
    intro γ z₁ hz₁ h₁ l hl
    obtain ⟨k, hk⟩ : ∃ k, γ l = k + 1 := ⟨γ l - 1, by omega⟩
    have hsplit : ∏ l', t l' ^ γ l' =
        t l * (t l ^ k * ∏ l' ∈ Finset.univ.erase l, t l' ^ γ l') := by
      rw [← Finset.mul_prod_erase Finset.univ (fun l' => t l' ^ γ l') (Finset.mem_univ l), hk,
        pow_succ]
      ring
    refine ⟨z₁ * algebraMap R _ (t l ^ k * ∏ l' ∈ Finset.univ.erase l, t l' ^ γ l'),
      Subalgebra.mul_mem _ hz₁ (hAM _), ?_⟩
    rw [hsplit, map_mul] at h₁
    linear_combination h₁

  have hG : wcpaDjGltMon I x t α β a₀ b₀ k₀ =
      x ^ (α k₀ - a₀).toNat * ∏ l, t l ^ (β k₀ l - b₀ l).toNat := by
    simp [wcpaDjGltMon, hk₀]
  have hGu : IsUnit (algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
      (wcpaDjGltMon I x t α β a₀ b₀ k₀)) :=
    IsLocalization.Away.algebraMap_isUnit _
  have hunit : ∀ e : Fin n → ℕ, (∀ l, 0 < e l → 0 < β k₀ l - b₀ l) →
      IsUnit (algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (∏ l, t l ^ e l)) := by
    intro e he
    rw [map_prod]
    refine Finset.prod_induction _ IsUnit (fun a b ha hb => ha.mul hb) isUnit_one
      (fun l _ => ?_)
    rw [map_pow]
    rcases Nat.eq_zero_or_pos (e l) with h0 | hpos
    · rw [h0, pow_zero]
      exact isUnit_one
    · apply IsUnit.pow
      apply isUnit_of_dvd_unit _ hGu
      apply map_dvd
      have hB : (β k₀ l - b₀ l).toNat ≠ 0 := by
        have := he l hpos
        omega
      calc t l ∣ t l ^ (β k₀ l - b₀ l).toNat := dvd_pow_self _ hB
        _ ∣ ∏ l', t l' ^ (β k₀ l' - b₀ l').toNat :=
          Finset.dvd_prod_of_mem (fun l' => t l' ^ (β k₀ l' - b₀ l').toNat) (Finset.mem_univ l)
        _ ∣ wcpaDjGltMon I x t α β a₀ b₀ k₀ := by
          rw [hG]
          exact dvd_mul_left _ _

  refine ⟨hA, ?_⟩
  intro lam mu u y' hu hy' hlB hux hxy hle hlt
  have hE : (∏ l, t l ^ lam l) * (∏ l, t l ^ (-mu l).toNat) =
      (∏ l, t l ^ (mu l).toNat) * ∏ l, t l ^ ((lam l : ℤ) - mu l).toNat := by
    rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl (fun l _ => ?_)
    rw [← pow_add, ← pow_add]
    congr 1
    have := hle l
    omega
  have hU : IsUnit (algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
      (∏ l, t l ^ (mu l).toNat)) :=
    hunit _ (fun l hl => by
      have h1 := hle l
      have h2 := hlB l
      have h3 : 0 < (mu l).toNat := hl
      omega)
  have hE' := congrArg (algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))) hE
  rw [map_mul, map_mul] at hE'
  have key : u * y' * algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
      (∏ l, t l ^ ((lam l : ℤ) - mu l).toNat) = 1 := by
    apply hU.mul_left_cancel
    rw [mul_one]
    linear_combination (-(u * y')) * hE' +
      (y' * algebraMap R (Localization.Away (wcpaDjGltMon I x t α β a₀ b₀ k₀))
        (∏ l, t l ^ (-mu l).toNat)) * hux + hxy
  obtain ⟨l₀, hl₀⟩ := hlt
  exact ⟨l₀, hA (fun l => ((lam l : ℤ) - mu l).toNat) (u * y') (Subalgebra.mul_mem _ hu hy') key
    l₀ (by show 0 < ((lam l₀ : ℤ) - mu l₀).toNat; omega)⟩

theorem wcpa_dj_glt_cc_lc_toric_data : ∀ (O₀ Oy : Type u) [CommRing O₀] [CommRing Oy]
    [IsLocalRing O₀] [IsLocalRing Oy] [IsNoetherianRing O₀] [IsNoetherianRing Oy]
    (φ : O₀ →+* Oy) [IsLocalHom φ], IsRegularLocalRing O₀ →
    ∀ (N : ℕ) (I : Finset (Fin (N + 1))) (n : ℕ) (t : Fin n → O₀) (α : Fin (N + 1) → ℤ)
      (β : Fin (N + 1) → Fin n → ℤ) (c₀ : Fin n → ℕ),
    (n : WithBot ℕ∞) = ringKrullDim O₀ →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal O₀ →
    (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
    (∀ v ∈ wcpaDjStcBreaks I α β c₀, ∀ w ∈ wcpaDjStcBreaks I α β c₀, v ≤ w ∨ w ≤ v) →
    ∀ x : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
    (((∃ l, c₀ l ≠ 0) ∧
      ∃ (v : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ)
        (e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
            Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
              (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)})),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) ∧
        e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0)) ∨
     (c₀ = 0 ∧ ∃ e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          PowerSeries.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
        e x = PowerSeries.X)) →
    ∀ (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
      (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
      ∀ (Q : Ideal (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀)) [Q.IsPrime],
      Q.comap ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀).comp
          (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))) =
        IsLocalRing.maximalIdeal Oy →
      (∃ (lam mu : Fin n → ℕ)
          (u y' : Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)),
        (∀ l, lam l ≤ mu l) ∧
        u ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀) (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∧
        y' ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀) (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∧
        u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
            (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ lam l) =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x ∧
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x * y' =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
            (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ mu l) ∧
        (∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀))
            (wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ i)
            (⟨wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀,
              Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x (fun l =>
                algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∈
          Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) ∧
        ((∃ l, c₀ l ≠ 0) → ∀ l, mu l ≤ c₀ l)) ∨
      (c₀ = 0 ∧ ∃ (lam : Fin n → ℕ)
          (u : Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)),
        u ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀) (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∧
        u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
            (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ lam l) =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x ∧
        (∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀))
            (wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ i)
            (⟨wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀,
              Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x (fun l =>
                algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∈
          Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u})) :=
by
  intro O₀ Oy _ _ _ _ _ _ φ _ hreg N I n t α β c₀ hdim hspan hO1 hO2 x hmodel a₀ b₀ k₀ hk₀ hb
    Q _ hQ
  classical


  have key : ∀ (R : Type u) [CommRing R] (x : R) (tR : Fin n → R),
      (∀ l (z : Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)),
        z ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) →
        algebraMap R _ (tR l) * z ≠ 1) →
      ((∃ l, c₀ l ≠ 0) → ∃ y0 : R, x * y0 = ∏ l, tR l ^ c₀ l) →
      ((∃ (lam mu : Fin n → ℕ) (u y' : Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)),
        (∀ l, lam l ≤ mu l) ∧
        u ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∧
        y' ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∧
        u * algebraMap R _ (∏ l, tR l ^ lam l) = algebraMap R _ x ∧
        algebraMap R _ x * y' = algebraMap R _ (∏ l, tR l ^ mu l) ∧
        (∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))
            (wcpaDjGltMon I x tR α β a₀ b₀ i)
            (⟨wcpaDjGltMon I x tR α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∈
          Algebra.adjoin R {u, y'}) ∧
        ((∃ l, c₀ l ≠ 0) → ∀ l, mu l ≤ c₀ l)) ∨
      (c₀ = 0 ∧ ∃ (lam : Fin n → ℕ)
          (u : Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)),
        u ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∧
        u * algebraMap R _ (∏ l, tR l ^ lam l) = algebraMap R _ x ∧
        (∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))
            (wcpaDjGltMon I x tR α β a₀ b₀ i)
            (⟨wcpaDjGltMon I x tR α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∈
          Algebra.adjoin R {u}))) := by
    intro R _ x tR hNU hY0
    have hSC : ∀ z ∈ wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀,
        z ∈ integralClosure (wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) := fun z hz =>
      isIntegral_algebraMap (R := wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
        (x := (⟨z, hz⟩ : wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀))
    have hmC : ∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))
        (wcpaDjGltMon I x tR α β a₀ b₀ i)
        (⟨wcpaDjGltMon I x tR α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
          Submonoid.powers (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∈
        integralClosure (wcpaDjChart R (wcpaDjGltMon I x tR α β a₀ b₀) k₀)
          (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) :=
      fun i => hSC _ (Algebra.subset_adjoin ⟨i, rfl⟩)
    obtain ⟨lam, hL1, hL2, hL3, hE, hU⟩ :=
      wcpa_dj_glt_cc_lctd_exponents N n I α β c₀ a₀ b₀ k₀ hk₀ hO1 hO2 hb
    obtain ⟨hsplitA, hsplitB⟩ :=
      wcpa_dj_glt_cc_lctd_unit_split R N n I x tR α β a₀ b₀ k₀ hk₀ hb
    have hEpart := wcpa_dj_glt_cc_lctd_e_part R N n I x tR α β a₀ b₀ k₀ hk₀ hb

    have hEq : ∀ i ∈ I, α i = α k₀ → ∀ l, β k₀ l ≤ β i l := by
      intro i hi hα
      rcases hE i hi hα with h | h
      · exact h
      · intro l
        by_contra hlt
        push_neg at hlt
        have h3 := (hEpart i).2.2 hi hα h
        obtain ⟨z, hz, hz1⟩ := hsplitA (fun l => (β k₀ l - β i l).toNat) _ (hmC i) h3 l
          (by show 0 < (β k₀ l - β i l).toNat; omega)
        exact hNU l z hz hz1
    obtain ⟨u, hu, hux, hP⟩ :=
      wcpa_dj_glt_cc_lctd_u_part R N n I x tR α β a₀ b₀ k₀ hk₀ hb lam hL1 hL2
    have hgen5 : ∀ (S : Subalgebra R (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))),
        u ∈ S → ∀ i, (i ∈ I → α k₀ ≤ α i) →
        IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))
          (wcpaDjGltMon I x tR α β a₀ b₀ i)
          (⟨wcpaDjGltMon I x tR α β a₀ b₀ k₀, Submonoid.mem_powers _⟩ :
            Submonoid.powers (wcpaDjGltMon I x tR α β a₀ b₀ k₀)) ∈ S := by
      intro S huS i hi
      by_cases hiI : i ∈ I
      · rcases lt_or_eq_of_le (hi hiI) with hlt | heq
        · rw [hP i hiI hlt (hL3 i hiI hlt)]
          exact S.mul_mem (S.pow_mem huS _) (S.algebraMap_mem _)
        · rw [(hEpart i).2.1 hiI heq.symm (hEq i hiI heq.symm)]
          exact S.algebraMap_mem _
      · rw [(hEpart i).1 hiI]
        exact S.zero_mem
    rcases hU with ⟨hallge, hc0⟩ | ⟨mu, hM1, hM2, hM3, hM4⟩
    · right
      exact ⟨hc0, lam, u, hu, hux, fun i =>
        hgen5 _ (Algebra.subset_adjoin (Set.mem_singleton u)) i (hallge i)⟩
    · have hs4 : ((∃ j ∈ I, α j < α k₀ ∧ ∀ l, (α k₀ - α j) * mu l = β j l - β k₀ l) ∨
          ((∀ l, 0 ≤ mu l) ∧ ∃ y0 : R, x * y0 = ∏ l, tR l ^ (mu l).toNat)) := by
        rcases hM2 with hj | ⟨hc, hmuc⟩
        · exact Or.inl hj
        · right
          refine ⟨fun l => by rw [hmuc l]; positivity, ?_⟩
          obtain ⟨y0, hy0⟩ := hY0 hc
          refine ⟨y0, ?_⟩
          rw [hy0]
          refine Finset.prod_congr rfl (fun l _ => ?_)
          rw [hmuc l, Int.toNat_natCast]
      obtain ⟨y', hy', hxy, hM⟩ :=
        wcpa_dj_glt_cc_lctd_y_part R N n I x tR α β a₀ b₀ k₀ hk₀ hb mu hs4
      rcases hM4 with hle | ⟨hge, hlt⟩
      · left
        have hmu0 : ∀ l, 0 ≤ mu l := fun l => le_trans (by positivity) (hle l)
        have hT1 : algebraMap R (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))
            (∏ l, tR l ^ (-mu l).toNat) = 1 := by
          rw [← map_one (algebraMap R (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀)))]
          congr 1
          refine Finset.prod_eq_one (fun l _ => ?_)
          rw [Int.toNat_eq_zero.mpr (by linarith [hmu0 l]), pow_zero]
        have huS : u ∈ Algebra.adjoin R
            ({u, y'} : Set (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))) :=
          Algebra.subset_adjoin (Set.mem_insert u {y'})
        have hyS : y' ∈ Algebra.adjoin R
            ({u, y'} : Set (Localization.Away (wcpaDjGltMon I x tR α β a₀ b₀ k₀))) :=
          Algebra.subset_adjoin (Set.mem_insert_of_mem u (Set.mem_singleton y'))
        refine ⟨lam, fun l => (mu l).toNat, u, y', fun l => ?_, hu, hy', hux, ?_, ?_, ?_⟩
        · show lam l ≤ (mu l).toNat
          have := hle l
          omega
        · rw [hT1, mul_one] at hxy
          exact hxy
        · intro i
          by_cases hiI : i ∈ I
          · by_cases hlt : α i < α k₀
            · rw [hM i hiI hlt (hM1 i hiI hlt)]
              exact Subalgebra.mul_mem _ (Subalgebra.pow_mem _ hyS _)
                (Subalgebra.algebraMap_mem _ _)
            · exact hgen5 _ huS i (fun _ => not_lt.mp hlt)
          · exact hgen5 _ huS i (fun h => absurd h hiI)
        · intro hc l
          show (mu l).toNat ≤ c₀ l
          have := hM3 hc l
          omega
      · exfalso
        obtain ⟨l, z, hz, hz1⟩ := hsplitB lam mu u y' hu hy' hL1 hux hxy hge hlt
        exact hNU l z hz hz1
  refine key _ x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
    (φ (t l))) ?_ ?_
  ·
    intro l z hz h1
    have htm : t l ∈ IsLocalRing.maximalIdeal O₀ := hspan ▸ Ideal.subset_span ⟨l, rfl⟩
    have hφm : φ (t l) ∈ IsLocalRing.maximalIdeal Oy := map_nonunit φ (t l) htm
    rw [← hQ] at hφm
    have hmem := Ideal.mem_comap.mp hφm
    have hunit : IsUnit ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (φ (t l))) α β a₀ b₀) k₀).comp
        (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)) (φ (t l))) := by
      refine isUnit_iff_exists_inv.mpr ⟨(⟨z, hz⟩ : wcpaDjGltNC _ _ k₀), ?_⟩
      apply Subtype.ext
      exact h1
    exact (Ideal.IsPrime.ne_top inferInstance) (Ideal.eq_top_of_isUnit_mem Q hmem hunit)
  ·
    intro hc
    rcases hmodel with ⟨_, v, e, he, hex⟩ | ⟨hc0, _⟩
    · exact wcpa_dj_glt_cc_lctd_node_y0 O₀ Oy φ n t c₀ x v e he hex
    · exfalso
      obtain ⟨l, hl⟩ := hc
      exact hl (by rw [hc0]; rfl)

theorem wcpa_dj_glt_cc_tc_model_interface : ∀ (O₀ Oy : Type u) [CommRing O₀] [CommRing Oy]
    [IsLocalRing O₀] [IsLocalRing Oy] [IsNoetherianRing O₀] [IsNoetherianRing Oy]
    (φ : O₀ →+* Oy) [IsLocalHom φ], IsRegularLocalRing O₀ →
    ∀ (n : ℕ) (t : Fin n → O₀) (c₀ mu : Fin n → ℕ),
    (n : WithBot ℕ∞) = ringKrullDim O₀ →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal O₀ →
    ∀ x : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
    (((∃ l, c₀ l ≠ 0) ∧
      ∃ (v : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ)
        (e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
            Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
              (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)})),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) ∧
        e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0)) ∨
     (c₀ = 0 ∧ ∃ e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          PowerSeries.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
        e x = PowerSeries.X)) →
    ((∃ l, c₀ l ≠ 0) → ∀ l, mu l ≤ c₀ l) →
    ∃ (j : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀ →+*
        AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (g : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (γ : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
      IsDomain (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) ∧
      j.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) =
        (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ ∧
      x ≠ 0 ∧
      (∀ l, j (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ≠ 0) ∧
      ¬ IsUnit x ∧ ¬ IsUnit g ∧
      x * g = j (γ * ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
        mu l) ∧
      (∀ (r : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (k : ℕ),
        ∃ (p : MvPolynomial (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))
          (r₁ r₂ : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy),
          r = MvPolynomial.eval₂ j ![x, g] p + x ^ k * r₁ + g ^ k * r₂) ∧
      (∀ (Λ : Type u) [CommRing Λ] [IsLocalRing Λ]
          [Algebra (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) Λ],
        IsAdicComplete (IsLocalRing.maximalIdeal Λ) Λ → ∀ y₀ z : Λ,
        y₀ ∈ IsLocalRing.maximalIdeal Λ →
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) Λ γ * z ∈
          IsLocalRing.maximalIdeal Λ →
        y₀ * (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) Λ γ * z) =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) Λ (γ * ∏ l,
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ mu l) →
        ∃ θ : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy →+* Λ,
          θ.comp j = algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) Λ ∧
          θ x = y₀ ∧ θ g = algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) Λ γ * z) :=
by
  intro O₀ Oy _ _ _ _ _ _ φ _ hreg n t c₀ mu hdim hspan x hmodel hmuc
  classical

  have node_trunc : ∀ (A R : Type u) [CommRing A] [CommRing R] (w : A)
      (e : R ≃+* (MvPowerSeries (Fin 2) A ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w}))
      (x g : R), e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0) →
      e g = Ideal.Quotient.mk _ (MvPowerSeries.X 1) →
      ∀ (r : R) (k : ℕ), ∃ (p : MvPolynomial (Fin 2) A) (r₁ r₂ : R),
        r = MvPolynomial.eval₂ (e.symm.toRingHom.comp ((Ideal.Quotient.mk _).comp MvPowerSeries.C))
          ![x, g] p + x ^ k * r₁ + g ^ k * r₂ := by
    intro A R _ _ w e x g hx hg r k
    have box : ∀ G : MvPowerSeries (Fin 2) A, ∃ (p : MvPolynomial (Fin 2) A)
        (G₁ G₂ : MvPowerSeries (Fin 2) A),
        G = (p : MvPowerSeries (Fin 2) A) + MvPowerSeries.X 0 ^ k * G₁ +
          MvPowerSeries.X 1 ^ k * G₂ := by
      intro G
      let nb : Fin 2 →₀ ℕ := Finsupp.equivFunOnFinite.symm (fun _ => k)
      have hnb : ∀ i, nb i = k := fun i => rfl
      let p := MvPowerSeries.trunc' A nb G
      have hHc : ∀ m : Fin 2 →₀ ℕ, m 0 ≤ k → m 1 ≤ k →
          MvPowerSeries.coeff m (G - (p : MvPowerSeries (Fin 2) A)) = 0 := by
        intro m h0 h1
        have hle : m ≤ nb := by
          rw [Finsupp.le_def]
          intro i
          fin_cases i
          · rw [hnb]; exact h0
          · rw [hnb]; exact h1
        rw [map_sub, MvPolynomial.coeff_coe, MvPowerSeries.coeff_trunc', if_pos hle, sub_self]
      let Ha : MvPowerSeries (Fin 2) A := fun m =>
        if k ≤ m 0 then MvPowerSeries.coeff m (G - (p : MvPowerSeries (Fin 2) A)) else 0
      have hHa : ∀ m, MvPowerSeries.coeff m Ha =
          if k ≤ m 0 then MvPowerSeries.coeff m (G - (p : MvPowerSeries (Fin 2) A)) else 0 :=
        fun m => rfl
      obtain ⟨G₁, hG₁⟩ : MvPowerSeries.X 0 ^ k ∣ Ha := by
        rw [MvPowerSeries.X_pow_dvd_iff]
        intro m hm
        rw [hHa, if_neg (by omega)]
      obtain ⟨G₂, hG₂⟩ : MvPowerSeries.X 1 ^ k ∣ (G - (p : MvPowerSeries (Fin 2) A)) - Ha := by
        rw [MvPowerSeries.X_pow_dvd_iff]
        intro m hm
        rw [map_sub, hHa]
        split_ifs with h
        · exact sub_self _
        · rw [sub_zero]; exact hHc m (by omega) (by omega)
      refine ⟨p, G₁, G₂, ?_⟩
      rw [← hG₁, ← hG₂]; ring
    have hX0 : e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X 0)) = x := by
      rw [RingEquiv.symm_apply_eq, hx]
    have hX1 : e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X 1)) = g := by
      rw [RingEquiv.symm_apply_eq, hg]
    have hpoly : ∀ q : MvPolynomial (Fin 2) A,
        e.symm (Ideal.Quotient.mk _ (q : MvPowerSeries (Fin 2) A)) =
          MvPolynomial.eval₂ (e.symm.toRingHom.comp ((Ideal.Quotient.mk _).comp MvPowerSeries.C))
            ![x, g] q := by
      intro q
      have hext := MvPolynomial.ringHom_ext
        (f := e.symm.toRingHom.comp ((Ideal.Quotient.mk (Ideal.span
          {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w})).comp
          MvPolynomial.coeToMvPowerSeries.ringHom))
        (g := MvPolynomial.eval₂Hom (e.symm.toRingHom.comp ((Ideal.Quotient.mk _).comp
          MvPowerSeries.C)) ![x, g]) ?_ ?_
      · exact RingHom.congr_fun hext q
      · intro a
        show e.symm (Ideal.Quotient.mk _ ((MvPolynomial.C a : MvPolynomial (Fin 2) A) :
          MvPowerSeries (Fin 2) A)) = MvPolynomial.eval₂ _ ![x, g] (MvPolynomial.C a)
        rw [MvPolynomial.coe_C, MvPolynomial.eval₂_C]
        rfl
      · intro i
        show e.symm (Ideal.Quotient.mk _ ((MvPolynomial.X i : MvPolynomial (Fin 2) A) :
          MvPowerSeries (Fin 2) A)) = MvPolynomial.eval₂ _ ![x, g] (MvPolynomial.X i)
        rw [MvPolynomial.coe_X, MvPolynomial.eval₂_X]
        fin_cases i
        · simpa using hX0
        · simpa using hX1
    obtain ⟨G, hG⟩ := Ideal.Quotient.mk_surjective (e r)
    obtain ⟨p, G₁, G₂, hGe⟩ := box G
    refine ⟨p, e.symm (Ideal.Quotient.mk _ G₁), e.symm (Ideal.Quotient.mk _ G₂), ?_⟩
    calc r = e.symm (e r) := (e.symm_apply_apply r).symm
      _ = e.symm (Ideal.Quotient.mk _ G) := by rw [hG]
      _ = _ := by
        rw [hGe]
        simp only [map_add, map_mul, map_pow]
        rw [hX0, hX1, hpoly]

  have node_lift : ∀ (A R : Type u) [CommRing A] [CommRing R] (w : A)
      (e : R ≃+* (MvPowerSeries (Fin 2) A ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w}))
      (x g : R), e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0) →
      e g = Ideal.Quotient.mk _ (MvPowerSeries.X 1) →
      ∀ (Λ : Type u) [CommRing Λ] [IsLocalRing Λ] [Algebra A Λ],
      IsAdicComplete (IsLocalRing.maximalIdeal Λ) Λ → ∀ y₀ y₁ : Λ,
      y₀ ∈ IsLocalRing.maximalIdeal Λ → y₁ ∈ IsLocalRing.maximalIdeal Λ →
      y₀ * y₁ = algebraMap A Λ w →
      ∃ θ : R →+* Λ, θ.comp (e.symm.toRingHom.comp ((Ideal.Quotient.mk _).comp
        MvPowerSeries.C)) = algebraMap A Λ ∧ θ x = y₀ ∧ θ g = y₁ := by
    intro A R _ _ w e x g hx hg Λ _ _ _ hc y₀ y₁ hy₀ hy₁ hyy
    obtain ⟨Φ, hΦ⟩ := wc_hnas_pfc_gcl_cf_power_series_eval A Λ hc 2 ![y₀, y₁] (by
      intro i
      fin_cases i
      · simpa using hy₀
      · simpa using hy₁)
    have hΦ0 : Φ (MvPowerSeries.X 0) = y₀ := by simpa using hΦ 0
    have hΦ1 : Φ (MvPowerSeries.X 1) = y₁ := by simpa using hΦ 1
    have hΦC : ∀ a : A, Φ (MvPowerSeries.C a) = algebraMap A Λ a := by
      intro a
      have := Φ.commutes a
      rwa [MvPowerSeries.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply] at this
    have hker : ∀ a ∈ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w :
        MvPowerSeries (Fin 2) A)}, Φ.toRingHom a = 0 := by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      show Φ (c * (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w)) = 0
      rw [map_mul, map_sub, map_mul, hΦ0, hΦ1, hΦC, hyy, sub_self, mul_zero]
    refine ⟨(Ideal.Quotient.lift _ Φ.toRingHom hker).comp e.toRingHom, ?_, ?_, ?_⟩
    · refine RingHom.ext fun a => ?_
      show Ideal.Quotient.lift _ Φ.toRingHom hker (e (e.symm (Ideal.Quotient.mk _
        (MvPowerSeries.C a)))) = algebraMap A Λ a
      rw [RingEquiv.apply_symm_apply, Ideal.Quotient.lift_mk]
      exact hΦC a
    · show Ideal.Quotient.lift _ Φ.toRingHom hker (e x) = y₀
      rw [hx, Ideal.Quotient.lift_mk]
      exact hΦ0
    · show Ideal.Quotient.lift _ Φ.toRingHom hker (e g) = y₁
      rw [hg, Ideal.Quotient.lift_mk]
      exact hΦ1

  have node_nonunit : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (w : A),
      w ∈ IsLocalRing.maximalIdeal A → ∀ G : MvPowerSeries (Fin 2) A,
      MvPowerSeries.constantCoeff G ∈ IsLocalRing.maximalIdeal A →
      ¬ IsUnit (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
        MvPowerSeries.C w}) G) := by
    intro A _ _ w hw G hG hu
    obtain ⟨b, hb⟩ := hu.exists_right_inv
    obtain ⟨G', rfl⟩ := Ideal.Quotient.mk_surjective b
    have hb' : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
        MvPowerSeries.C w}) (G * G' - 1) = 0 := by
      rw [map_sub, map_mul, map_one, hb, sub_self]
    obtain ⟨K, hK⟩ := Ideal.mem_span_singleton'.mp (Ideal.Quotient.eq_zero_iff_mem.mp hb')
    have h1 := congrArg MvPowerSeries.constantCoeff hK
    rw [map_mul, map_sub, map_sub, map_mul, map_mul, map_one, MvPowerSeries.constantCoeff_X,
      MvPowerSeries.constantCoeff_X, MvPowerSeries.constantCoeff_C] at h1
    have e1 : (1 : A) = MvPowerSeries.constantCoeff G * MvPowerSeries.constantCoeff G' +
        MvPowerSeries.constantCoeff K * w := by linear_combination h1
    have hone : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
      rw [e1]
      exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ hG) (Ideal.mul_mem_left _ _ hw)
    exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr hone)

  have smooth_trunc : ∀ (A R : Type u) [CommRing A] [CommRing R] (e : R ≃+* PowerSeries A)
      (x : R), e x = PowerSeries.X → ∀ (r : R) (k : ℕ),
      ∃ (p : MvPolynomial (Fin 2) A) (r₁ : R),
        r = MvPolynomial.eval₂ (e.symm.toRingHom.comp PowerSeries.C) ![x, 0] p + x ^ k * r₁ := by
    intro A R _ _ e x hx r k
    obtain ⟨G₁, hG₁⟩ : PowerSeries.X ^ k ∣ e r - ((PowerSeries.trunc k (e r) : Polynomial A) :
        PowerSeries A) := by
      rw [PowerSeries.X_pow_dvd_iff]
      intro m hm
      rw [map_sub, Polynomial.coeff_coe, PowerSeries.coeff_trunc, if_pos hm, sub_self]
    have hXs : e.symm PowerSeries.X = x := by rw [RingEquiv.symm_apply_eq, hx]
    have hpoly : ∀ q' : Polynomial A, e.symm (q' : PowerSeries A) =
        MvPolynomial.eval₂ (e.symm.toRingHom.comp PowerSeries.C) ![x, 0]
          (Polynomial.aeval (MvPolynomial.X 0 : MvPolynomial (Fin 2) A) q') := by
      intro q'
      have hext := Polynomial.ringHom_ext
        (f := e.symm.toRingHom.comp Polynomial.coeToPowerSeries.ringHom)
        (g := (MvPolynomial.eval₂Hom (e.symm.toRingHom.comp PowerSeries.C) ![x, 0]).comp
          (Polynomial.aeval (MvPolynomial.X 0 : MvPolynomial (Fin 2) A)).toRingHom) ?_ ?_
      · exact RingHom.congr_fun hext q'
      · intro a
        show e.symm ((Polynomial.C a : Polynomial A) : PowerSeries A) =
          MvPolynomial.eval₂ _ ![x, 0]
            (Polynomial.aeval (MvPolynomial.X 0 : MvPolynomial (Fin 2) A) (Polynomial.C a))
        rw [Polynomial.coe_C, Polynomial.aeval_C, MvPolynomial.algebraMap_eq,
          MvPolynomial.eval₂_C]
        rfl
      · show e.symm ((Polynomial.X : Polynomial A) : PowerSeries A) =
          MvPolynomial.eval₂ _ ![x, 0]
            (Polynomial.aeval (MvPolynomial.X 0 : MvPolynomial (Fin 2) A) Polynomial.X)
        rw [Polynomial.coe_X, Polynomial.aeval_X, MvPolynomial.eval₂_X, Matrix.cons_val_zero]
        exact hXs
    refine ⟨Polynomial.aeval (MvPolynomial.X 0 : MvPolynomial (Fin 2) A)
      (PowerSeries.trunc k (e r)), e.symm G₁, ?_⟩
    have hG : e r = ((PowerSeries.trunc k (e r) : Polynomial A) : PowerSeries A) +
        PowerSeries.X ^ k * G₁ := by rw [← hG₁]; ring
    calc r = e.symm (e r) := (e.symm_apply_apply r).symm
      _ = e.symm (((PowerSeries.trunc k (e r) : Polynomial A) : PowerSeries A) +
          PowerSeries.X ^ k * G₁) := congrArg e.symm hG
      _ = _ := by
        rw [map_add, map_mul, map_pow, hXs, hpoly]

  have smooth_lift : ∀ (A R : Type u) [CommRing A] [CommRing R] (e : R ≃+* PowerSeries A)
      (x : R), e x = PowerSeries.X → ∀ (Λ : Type u) [CommRing Λ] [IsLocalRing Λ] [Algebra A Λ],
      IsAdicComplete (IsLocalRing.maximalIdeal Λ) Λ → ∀ y₀ : Λ,
      y₀ ∈ IsLocalRing.maximalIdeal Λ →
      ∃ θ : R →+* Λ, θ.comp (e.symm.toRingHom.comp PowerSeries.C) = algebraMap A Λ ∧
        θ x = y₀ := by
    intro A R _ _ e x hx Λ _ _ _ hc y₀ hy₀
    obtain ⟨Φ, hΦ⟩ := wc_hnas_pfc_gcl_cf_power_series_eval A Λ hc 1 ![y₀] (by
      intro i
      fin_cases i
      simpa using hy₀)
    refine ⟨((Φ.comp (PowerSeries.toMvPowerSeries (0 : Fin 1))).toRingHom).comp e.toRingHom,
      ?_, ?_⟩
    · refine RingHom.ext fun a => ?_
      show Φ (PowerSeries.toMvPowerSeries (0 : Fin 1) (e (e.symm (PowerSeries.C a)))) =
        algebraMap A Λ a
      rw [RingEquiv.apply_symm_apply, PowerSeries.toMvPowerSeries_C]
      have := Φ.commutes a
      rwa [MvPowerSeries.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply] at this
    · show Φ (PowerSeries.toMvPowerSeries (0 : Fin 1) (e x)) = y₀
      rw [hx, PowerSeries.toMvPowerSeries_X]
      simpa using hΦ 0

  haveI : IsRegularLocalRing O₀ := hreg
  haveI hAreg : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
    wc_pfc_pc_completion_regular wc_hnas_pfc_regular_flat_ascent O₀ hreg _ ⟨AlgEquiv.refl⟩
  obtain ⟨hAdom, -, htp⟩ := wcpa_dj_mn_completion_regular O₀ n t hdim hspan
  have ht0 : ∀ l, algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l) ≠ 0 :=
    fun l => (htp l).ne_zero
  have htm : ∀ l, algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l) ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
    fun l => (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr (htp l).not_unit)

  rcases hmodel with ⟨⟨l₀, hl₀⟩, v, e, he, hex⟩ | ⟨hc0, e, he, hex⟩
  ·
    have hmu := hmuc ⟨l₀, hl₀⟩
    have hwm : (↑v * ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (t l)) ^ c₀ l) ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) := by
      apply Ideal.mul_mem_left
      obtain ⟨c, hc⟩ := (dvd_pow_self _ hl₀).trans (Finset.dvd_prod_of_mem
        (fun l => (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
          (t l)) ^ c₀ l) (Finset.mem_univ l₀))
      rw [hc]
      exact Ideal.mul_mem_right _ _ (htm l₀)
    have hw0 : (↑v * ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (t l)) ^ c₀ l) ≠ 0 :=
      mul_ne_zero v.ne_zero (Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (ht0 l))
    obtain ⟨hD, hC, hX0, -⟩ := wcpa_dj_stc_kmnb_xy_domain _ _ hwm hw0
    have hren : ∀ (w : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (f : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)),
        f ∈ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w :
          MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))} →
        MvPowerSeries.rename (R := AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
          (Fin.val : Fin 2 → ℕ) f ∈
          Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w :
            MvPowerSeries ℕ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))} := by
      intro w f hf
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hf
      rw [map_mul]
      apply Ideal.mul_mem_left
      have : MvPowerSeries.rename (R := AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
          (Fin.val : Fin 2 → ℕ) (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w) =
          MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C w := by simp
      rw [this]
      exact Ideal.mem_span_singleton_self _
    have hγ : (↑v * ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (t l)) ^ (c₀ l - mu l)) * ∏ l, (algebraMap O₀
          (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ mu l =
        ↑v * ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
          (t l)) ^ c₀ l := by
      rw [mul_assoc, ← Finset.prod_mul_distrib]
      congr 1
      exact Finset.prod_congr rfl fun l _ => by rw [← pow_add, Nat.sub_add_cancel (hmu l)]
    refine ⟨e.symm.toRingHom.comp ((Ideal.Quotient.mk _).comp MvPowerSeries.C),
      e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X 1)),
      ↑v * ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
        (c₀ l - mu l), ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · haveI := hD
      exact MulEquiv.isDomain _ e.toMulEquiv
    · refine RingHom.ext fun a => ?_
      have h1 := RingHom.congr_fun he a
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at h1 ⊢
      rw [RingEquiv.symm_apply_eq]
      exact h1.symm
    · intro hx0
      apply hX0
      have h1 := hex
      rw [hx0, map_zero] at h1
      have h2 := hren _ _ (Ideal.Quotient.eq_zero_iff_mem.mp h1.symm)
      simpa using h2
    · intro l hl
      apply ht0 l
      apply hC
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at hl
      have h1 := Ideal.Quotient.eq_zero_iff_mem.mp
        ((map_eq_zero_iff e.symm e.symm.injective).mp hl)
      have h2 := hren _ _ h1
      simpa using h2
    · intro hu
      have h1 := hu.map e
      rw [hex] at h1
      exact node_nonunit _ _ hwm _ (by rw [MvPowerSeries.constantCoeff_X]; exact Ideal.zero_mem _) h1
    · intro hu
      have h1 := hu.map e
      rw [RingEquiv.apply_symm_apply] at h1
      exact node_nonunit _ _ hwm _ (by rw [MvPowerSeries.constantCoeff_X]; exact Ideal.zero_mem _) h1
    · apply e.injective
      refine (map_mul e _ _).trans ?_
      simp only [hex, RingEquiv.apply_symm_apply, RingHom.comp_apply, RingEquiv.toRingHom_eq_coe,
        RingEquiv.coe_toRingHom]
      rw [hγ, ← map_mul, Ideal.Quotient.eq]
      exact Ideal.mem_span_singleton_self _
    · exact node_trunc _ _ _ e x _ hex (RingEquiv.apply_symm_apply e _)
    · intro Λ _ _ _ hc y₀ z hy₀ hγz hprod
      rw [hγ] at hprod
      exact node_lift _ _ _ e x _ hex (RingEquiv.apply_symm_apply e _) Λ hc y₀ _ hy₀ hγz hprod
  ·
    haveI := hAdom
    refine ⟨e.symm.toRingHom.comp PowerSeries.C, 0, 0, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · exact MulEquiv.isDomain _ e.toMulEquiv
    · refine RingHom.ext fun a => ?_
      have h1 := RingHom.congr_fun he a
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at h1 ⊢
      rw [RingEquiv.symm_apply_eq]
      exact h1.symm
    · intro hx0
      apply PowerSeries.X_ne_zero (R := AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      rw [← hex, hx0, map_zero]
    · intro l hl
      apply ht0 l
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at hl
      have h2 := congrArg PowerSeries.constantCoeff
        ((map_eq_zero_iff e.symm e.symm.injective).mp hl)
      rwa [PowerSeries.constantCoeff_C, map_zero] at h2
    · intro hu
      have h1 := hu.map e
      rw [hex, PowerSeries.isUnit_iff_constantCoeff, PowerSeries.constantCoeff_X] at h1
      exact not_isUnit_zero h1
    · haveI : IsDomain (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) :=
        MulEquiv.isDomain _ e.toMulEquiv
      exact not_isUnit_zero
    · rw [mul_zero, zero_mul, map_zero]
    · intro r k
      obtain ⟨p, r₁, h⟩ := smooth_trunc _ _ e x hex r k
      exact ⟨p, r₁, 0, by rw [h, mul_zero, add_zero]⟩
    · intro Λ _ _ _ hc y₀ z hy₀ _ _
      obtain ⟨θ, h1, h2⟩ := smooth_lift _ _ e x hex Λ hc y₀ hy₀
      exact ⟨θ, h1, h2, by rw [map_zero, map_zero, zero_mul]⟩

theorem wcpa_dj_glt_cc_tc_density : ∀ (A R L : Type u) [CommRing A] [CommRing R] [CommRing L]
    [Algebra R L] (j : A →+* R) (x g : R) (γ a₁ h : A) (u y' : L),
    (∀ (r : R) (k : ℕ), ∃ (p : MvPolynomial (Fin 2) A) (r₁ r₂ : R),
      r = MvPolynomial.eval₂ j ![x, g] p + x ^ k * r₁ + g ^ k * r₂) →
    u * algebraMap R L (j a₁) = algebraMap R L x →
    algebraMap R L g = algebraMap R L (j γ) * y' →
    ∀ β : wcpaDjLcB A h →+* Algebra.adjoin R {u, y'},
    β.comp (algebraMap A (wcpaDjLcB A h)) = (algebraMap R (Algebra.adjoin R {u, y'})).comp j →
    ((β (wcpaDjLcBX A h 0) : L) = u) → ((β (wcpaDjLcBX A h 1) : L) = y') →
    ∀ (k : ℕ) (z : Algebra.adjoin R {u, y'}), ∃ b : wcpaDjLcB A h,
      z - β b ∈ Ideal.span {algebraMap R (Algebra.adjoin R {u, y'}) x,
        algebraMap R (Algebra.adjoin R {u, y'}) g} ^ k :=
by
  intro A R L _ _ _ _ j x g γ a₁ h u y' htrunc hux hgy β hβA hβ0 hβ1 k z
  have hu : u ∈ Algebra.adjoin R {u, y'} := Algebra.subset_adjoin (Set.mem_insert u {y'})
  have hy : y' ∈ Algebra.adjoin R {u, y'} :=
    Algebra.subset_adjoin (Set.mem_insert_of_mem u rfl)
  have hβA' : ∀ a, β (algebraMap A (wcpaDjLcB A h) a) =
      algebraMap R (Algebra.adjoin R {u, y'}) (j a) := fun a => RingHom.congr_fun hβA a
  have hβu : β (wcpaDjLcBX A h 0) = ⟨u, hu⟩ := Subtype.ext hβ0
  have hβy : β (wcpaDjLcBX A h 1) = ⟨y', hy⟩ := Subtype.ext hβ1
  have hxT : β (algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0) =
      algebraMap R (Algebra.adjoin R {u, y'}) x := by
    rw [map_mul, hβA', hβu]
    apply Subtype.ext
    rw [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, Subalgebra.coe_algebraMap, ← hux, mul_comm]
  have hgT : β (algebraMap A (wcpaDjLcB A h) γ * wcpaDjLcBX A h 1) =
      algebraMap R (Algebra.adjoin R {u, y'}) g := by
    rw [map_mul, hβA', hβy]
    apply Subtype.ext
    rw [Subalgebra.coe_mul, Subalgebra.coe_algebraMap, Subalgebra.coe_algebraMap, hgy]
  have htrans : ∀ p : MvPolynomial (Fin 2) A,
      β (MvPolynomial.eval₂ (algebraMap A (wcpaDjLcB A h))
          ![algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0,
            algebraMap A (wcpaDjLcB A h) γ * wcpaDjLcBX A h 1] p)
        = algebraMap R (Algebra.adjoin R {u, y'}) (MvPolynomial.eval₂ j ![x, g] p) := by
    intro p
    induction p using MvPolynomial.induction_on with
    | C a => rw [MvPolynomial.eval₂_C, MvPolynomial.eval₂_C, hβA']
    | add p q hp hq =>
      rw [MvPolynomial.eval₂_add, MvPolynomial.eval₂_add, map_add, map_add, hp, hq]
    | mul_X p i hp =>
      rw [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X,
        MvPolynomial.eval₂_X, map_mul, map_mul, hp]
      congr 1
      fin_cases i
      · exact hxT
      · exact hgT
  obtain ⟨z, hz⟩ := z
  induction hz using Algebra.adjoin_induction with
  | mem w hw =>
    rcases hw with rfl | rfl
    · exact ⟨wcpaDjLcBX A h 0, by rw [hβu, sub_self]; exact Ideal.zero_mem _⟩
    · exact ⟨wcpaDjLcBX A h 1, by rw [hβy, sub_self]; exact Ideal.zero_mem _⟩
  | algebraMap r =>
    obtain ⟨p, r₁, r₂, hr⟩ := htrunc r k
    refine ⟨MvPolynomial.eval₂ (algebraMap A (wcpaDjLcB A h))
      ![algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0,
        algebraMap A (wcpaDjLcB A h) γ * wcpaDjLcBX A h 1] p, ?_⟩
    have e : (⟨algebraMap R L r, Subalgebra.algebraMap_mem _ r⟩ : Algebra.adjoin R {u, y'}) =
        algebraMap R (Algebra.adjoin R {u, y'}) r := rfl
    rw [e, htrans, hr]
    rw [map_add, map_add, map_mul, map_mul, map_pow, map_pow, add_assoc, add_sub_cancel_left]
    refine Ideal.add_mem _ (Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow (Ideal.subset_span ?_) k))
      (Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow (Ideal.subset_span ?_) k))
    · exact Set.mem_insert _ _
    · exact Set.mem_insert_of_mem _ rfl
  | add w₁ w₂ hw₁ hw₂ ih₁ ih₂ =>
    obtain ⟨b₁, hb₁⟩ := ih₁
    obtain ⟨b₂, hb₂⟩ := ih₂
    refine ⟨b₁ + b₂, ?_⟩
    show (⟨w₁, hw₁⟩ + ⟨w₂, hw₂⟩ : Algebra.adjoin R {u, y'}) - β (b₁ + b₂) ∈ _
    rw [map_add, add_sub_add_comm]
    exact Ideal.add_mem _ hb₁ hb₂
  | mul w₁ w₂ hw₁ hw₂ ih₁ ih₂ =>
    obtain ⟨b₁, hb₁⟩ := ih₁
    obtain ⟨b₂, hb₂⟩ := ih₂
    refine ⟨b₁ * b₂, ?_⟩
    show (⟨w₁, hw₁⟩ * ⟨w₂, hw₂⟩ : Algebra.adjoin R {u, y'}) - β (b₁ * b₂) ∈ _
    have e : (⟨w₁, hw₁⟩ * ⟨w₂, hw₂⟩ : Algebra.adjoin R {u, y'}) - β (b₁ * b₂) =
        (⟨w₁, hw₁⟩ - β b₁) * ⟨w₂, hw₂⟩ + β b₁ * (⟨w₂, hw₂⟩ - β b₂) := by
      rw [map_mul]; ring
    rw [e]
    exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ hb₁) (Ideal.mul_mem_left _ _ hb₂)

theorem wcpa_dj_glt_cc_tc_theta : ∀ (A R L : Type u) [CommRing A] [IsLocalRing A]
    [IsNoetherianRing A] [CommRing R] [CommRing L] [IsDomain L] [Algebra R L]
    (j : A →+* R) (x g : R) (γ a₁ h : A) (u y' : L),
    Function.Injective (algebraMap R L) →
    (∀ (Λ : Type u) [CommRing Λ] [IsLocalRing Λ] [Algebra A Λ],
      IsAdicComplete (IsLocalRing.maximalIdeal Λ) Λ → ∀ y₀ z : Λ,
      y₀ ∈ IsLocalRing.maximalIdeal Λ →
      algebraMap A Λ γ * z ∈ IsLocalRing.maximalIdeal Λ →
      y₀ * (algebraMap A Λ γ * z) = algebraMap A Λ (γ * (a₁ * h)) →
      ∃ θ : R →+* Λ, θ.comp j = algebraMap A Λ ∧ θ x = y₀ ∧ θ g = algebraMap A Λ γ * z) →
    x ≠ 0 → j a₁ ≠ 0 →
    u * algebraMap R L (j a₁) = algebraMap R L x →
    u * y' = algebraMap R L (j h) →
    algebraMap R L g = algebraMap R L (j γ) * y' →
    ∀ (𝔫 : Ideal (Algebra.adjoin R {u, y'})) [𝔫.IsPrime]
      (β : wcpaDjLcB A h →+* Algebra.adjoin R {u, y'}),
    β.comp (algebraMap A (wcpaDjLcB A h)) = (algebraMap R (Algebra.adjoin R {u, y'})).comp j →
    ((β (wcpaDjLcBX A h 0) : L) = u) → ((β (wcpaDjLcBX A h 1) : L) = y') →
    IsDomain (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
      (Localization.AtPrime (𝔫.comap β))) →
    Function.Injective (algebraMap (Localization.AtPrime (𝔫.comap β))
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
        (Localization.AtPrime (𝔫.comap β)))) →
    (∀ z : Algebra.adjoin R {u, y'}, ∃ b : wcpaDjLcB A h,
      z - β b ∈ Ideal.span {algebraMap R (Algebra.adjoin R {u, y'}) x,
        algebraMap R (Algebra.adjoin R {u, y'}) g}) →
    algebraMap R (Algebra.adjoin R {u, y'}) x ∈ 𝔫 →
    algebraMap R (Algebra.adjoin R {u, y'}) g ∈ 𝔫 →
    ∃ Θ : Algebra.adjoin R {u, y'} →+* AdicCompletion (IsLocalRing.maximalIdeal
        (Localization.AtPrime (𝔫.comap β))) (Localization.AtPrime (𝔫.comap β)),
      Θ.comp β = (algebraMap (Localization.AtPrime (𝔫.comap β))
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
            (Localization.AtPrime (𝔫.comap β)))).comp
        (algebraMap (wcpaDjLcB A h) (Localization.AtPrime (𝔫.comap β))) ∧
      ∀ z, IsUnit (Θ z) ↔ z ∉ 𝔫 :=
by
  intro A R L _ _ _ _ _ _ _ j x g γ a₁ h u y' hinj hev hx0 hja hux huy hgy 𝔫 _ β hβA hβ0 hβ1
    hΛdom hιinj hD1 hx𝔫 hg𝔫
  classical
  have hu : u ∈ Algebra.adjoin R {u, y'} := Algebra.subset_adjoin (Set.mem_insert u {y'})
  have hy : y' ∈ Algebra.adjoin R {u, y'} :=
    Algebra.subset_adjoin (Set.mem_insert_of_mem u (Set.mem_singleton y'))
  obtain ⟨gens, hg0, hg1⟩ : ∃ gens : Fin 2 → Algebra.adjoin R {u, y'},
      gens 0 = ⟨u, hu⟩ ∧ gens 1 = ⟨y', hy⟩ := ⟨![⟨u, hu⟩, ⟨y', hy⟩], rfl, rfl⟩

  have star : ∀ p : MvPolynomial (Fin 2) R, ∃ (N : ℕ) (r : R),
      ∀ (S : Type u) [CommRing S] (σ : R →+* S) (a b : S),
        a * σ (j a₁) = σ x → a * b = σ (j h) →
        (σ (j a₁) * σ x) ^ N * MvPolynomial.eval₂ σ ![a, b] p = σ r := by
    intro p
    induction p using MvPolynomial.induction_on
    next c =>
      refine ⟨0, c, fun S _ σ a b _ _ => ?_⟩
      rw [pow_zero, one_mul, MvPolynomial.eval₂_C]
    next p q hp hq =>
      obtain ⟨N₁, r₁, h₁⟩ := hp
      obtain ⟨N₂, r₂, h₂⟩ := hq
      refine ⟨N₁ + N₂, (j a₁ * x) ^ N₂ * r₁ + (j a₁ * x) ^ N₁ * r₂,
        fun S _ σ a b ha hb => ?_⟩
      have e1 := h₁ S σ a b ha hb
      have e2 := h₂ S σ a b ha hb
      rw [MvPolynomial.eval₂_add]
      simp only [map_add, map_mul, map_pow]
      linear_combination (σ (j a₁) * σ x) ^ N₂ * e1 + (σ (j a₁) * σ x) ^ N₁ * e2
    next p n hp =>
      obtain ⟨N, r, hr⟩ := hp
      obtain rfl | rfl : n = 0 ∨ n = 1 := by fin_cases n <;> simp
      · refine ⟨N + 1, r * x * x, fun S _ σ a b ha hb => ?_⟩
        have e := hr S σ a b ha hb
        rw [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X, Matrix.cons_val_zero, map_mul, map_mul]
        linear_combination (σ x * σ x) * e +
          ((σ (j a₁) * σ x) ^ N * MvPolynomial.eval₂ σ ![a, b] p * σ x) * ha
      · refine ⟨N + 1, r * j a₁ * j a₁ * j h, fun S _ σ a b ha hb => ?_⟩
        have e := hr S σ a b ha hb
        rw [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X, Matrix.cons_val_one, Matrix.cons_val_zero,
          map_mul, map_mul, map_mul]
        linear_combination (σ (j a₁) * σ (j a₁) * σ (j h)) * e +
          ((σ (j a₁) * σ x) ^ N * MvPolynomial.eval₂ σ ![a, b] p * σ (j a₁)) *
            (σ (j a₁) * hb - b * ha)

  have hval : ∀ p : MvPolynomial (Fin 2) R,
      ((MvPolynomial.aeval (R := R) gens p : Algebra.adjoin R {u, y'}) : L) =
        MvPolynomial.eval₂ (algebraMap R L) ![u, y'] p := by
    intro p
    induction p using MvPolynomial.induction_on
    next c =>
      rw [MvPolynomial.aeval_C, MvPolynomial.eval₂_C, Subalgebra.coe_algebraMap]
    next p q hp hq =>
      rw [map_add, MvPolynomial.eval₂_add, ← hp, ← hq]
      rfl
    next p n hp =>
      rw [map_mul, MvPolynomial.eval₂_mul, ← hp, MvPolynomial.aeval_X, MvPolynomial.eval₂_X]
      show ((MvPolynomial.aeval (R := R) gens p : Algebra.adjoin R {u, y'}) : L) * (gens n : L) = _
      congr 1
      obtain rfl | rfl : n = 0 ∨ n = 1 := by fin_cases n <;> simp
      · rw [hg0]; rfl
      · rw [hg1]; rfl
  have hsurj : Function.Surjective (MvPolynomial.aeval (R := R) gens).toRingHom := by
    intro w
    have hw : (w : L) ∈ (MvPolynomial.aeval (R := R) ![u, y']).range := by
      rw [← Algebra.adjoin_range_eq_range_aeval, Matrix.range_cons_cons_empty]
      exact w.2
    obtain ⟨p, hp⟩ := (AlgHom.mem_range _).mp hw
    refine ⟨p, Subtype.ext ?_⟩
    show ((MvPolynomial.aeval (R := R) gens p : Algebra.adjoin R {u, y'}) : L) = w
    rw [hval, ← hp, MvPolynomial.aeval_def]

  have descend : ∀ (Λ : Type u) [CommRing Λ] [IsDomain Λ] (θ : R →+* Λ) (Y0 Y1 : Λ),
      Y0 * θ (j a₁) = θ x → Y0 * Y1 = θ (j h) → θ (j a₁ * x) ≠ 0 →
      ∃ Θ : Algebra.adjoin R {u, y'} →+* Λ,
        Θ.comp (algebraMap R (Algebra.adjoin R {u, y'})) = θ ∧
        Θ ⟨u, hu⟩ = Y0 ∧ Θ ⟨y', hy⟩ = Y1 := by
    intro Λ _ _ θ Y0 Y1 hY0 hY01 hne
    have hker : RingHom.ker (MvPolynomial.aeval (R := R) gens).toRingHom ≤
        RingHom.ker (MvPolynomial.eval₂Hom θ ![Y0, Y1]) := by
      intro p hp
      rw [RingHom.mem_ker] at hp ⊢
      obtain ⟨N, r, hr⟩ := star p
      have hp1 : (MvPolynomial.aeval (R := R) gens p : Algebra.adjoin R {u, y'}) = 0 := hp
      have hp2 : MvPolynomial.eval₂ (algebraMap R L) ![u, y'] p = 0 := by
        rw [← hval, hp1]; rfl
      have h1 := hr L (algebraMap R L) u y' hux huy
      rw [hp2, mul_zero] at h1
      have hr0 : r = 0 := hinj (h1.symm.trans (map_zero _).symm)
      have h2 := hr Λ θ Y0 Y1 hY0 hY01
      rw [hr0, map_zero] at h2
      have hne' : (θ (j a₁) * θ x) ^ N ≠ 0 := by
        rw [← map_mul]; exact pow_ne_zero _ hne
      rw [MvPolynomial.coe_eval₂Hom]
      exact (mul_eq_zero.mp h2).resolve_left hne'
    refine ⟨(MvPolynomial.aeval (R := R) gens).toRingHom.liftOfSurjective hsurj
      ⟨MvPolynomial.eval₂Hom θ ![Y0, Y1], hker⟩, ?_, ?_, ?_⟩
    · refine RingHom.ext fun r => ?_
      have e : algebraMap R (Algebra.adjoin R {u, y'}) r =
          (MvPolynomial.aeval (R := R) gens).toRingHom (MvPolynomial.C r) :=
        (MvPolynomial.aeval_C gens r).symm
      rw [RingHom.comp_apply, e, RingHom.liftOfSurjective_comp_apply]
      exact MvPolynomial.eval₂Hom_C _ _ _
    · have e : (⟨u, hu⟩ : Algebra.adjoin R {u, y'}) =
          (MvPolynomial.aeval (R := R) gens).toRingHom (MvPolynomial.X 0) := by
        rw [← hg0]; exact (MvPolynomial.aeval_X gens 0).symm
      rw [e, RingHom.liftOfSurjective_comp_apply]
      show MvPolynomial.eval₂Hom θ ![Y0, Y1] (MvPolynomial.X 0) = Y0
      rw [MvPolynomial.eval₂Hom_X']
      rfl
    · have e : (⟨y', hy⟩ : Algebra.adjoin R {u, y'}) =
          (MvPolynomial.aeval (R := R) gens).toRingHom (MvPolynomial.X 1) := by
        rw [← hg1]; exact (MvPolynomial.aeval_X gens 1).symm
      rw [e, RingHom.liftOfSurjective_comp_apply]
      show MvPolynomial.eval₂Hom θ ![Y0, Y1] (MvPolynomial.X 1) = Y1
      rw [MvPolynomial.eval₂Hom_X']
      rfl

  have hrel : wcpaDjLcBX A h 0 * wcpaDjLcBX A h 1 = algebraMap A (wcpaDjLcB A h) h := by
    have e : Ideal.Quotient.mk (Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 -
        MvPolynomial.C h}) (MvPolynomial.X (R := A) (0 : Fin 2) * MvPolynomial.X 1) =
        Ideal.Quotient.mk _ (MvPolynomial.C h) :=
      Ideal.Quotient.eq.mpr (Ideal.mem_span_singleton_self _)
    rw [map_mul] at e
    exact e
  have hβa : ∀ a, β (algebraMap A (wcpaDjLcB A h) a) =
      algebraMap R (Algebra.adjoin R {u, y'}) (j a) := fun a => RingHom.congr_fun hβA a
  have hβx : β (algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0) =
      algebraMap R (Algebra.adjoin R {u, y'}) x := by
    apply Subtype.ext
    rw [map_mul, MulMemClass.coe_mul, hβa, Subalgebra.coe_algebraMap, hβ0,
      Subalgebra.coe_algebraMap]
    exact (mul_comm _ _).trans hux
  have hβg : β (algebraMap A (wcpaDjLcB A h) γ * wcpaDjLcBX A h 1) =
      algebraMap R (Algebra.adjoin R {u, y'}) g := by
    apply Subtype.ext
    rw [map_mul, MulMemClass.coe_mul, hβa, Subalgebra.coe_algebraMap, hβ1,
      Subalgebra.coe_algebraMap]
    exact hgy.symm
  have hTne : ∀ r : R, r ≠ 0 → algebraMap R (Algebra.adjoin R {u, y'}) r ≠ 0 := by
    intro r hr h0
    have h1 : ((algebraMap R (Algebra.adjoin R {u, y'}) r : Algebra.adjoin R {u, y'}) : L) = 0 := by
      rw [h0]; rfl
    rw [Subalgebra.coe_algebraMap] at h1
    exact hr (hinj (h1.trans (map_zero _).symm))

  have key : ∀ (Bp : Type u) [CommRing Bp] [Algebra (wcpaDjLcB A h) Bp]
      [IsLocalization.AtPrime Bp (𝔫.comap β)]
      (Λ : Type u) [CommRing Λ] [IsLocalRing Λ] [IsDomain Λ] (ι : Bp →+* Λ) [IsLocalHom ι],
      Function.Injective ι → IsAdicComplete (IsLocalRing.maximalIdeal Λ) Λ →
      ∃ Θ : Algebra.adjoin R {u, y'} →+* Λ,
        Θ.comp β = ι.comp (algebraMap (wcpaDjLcB A h) Bp) ∧ ∀ z, IsUnit (Θ z) ↔ z ∉ 𝔫 := by
    intro Bp _ _ _ Λ _ _ _ ι _ hι hcomplete
    obtain ⟨ιt, hιt⟩ : ∃ f : wcpaDjLcB A h →+* Λ, f = ι.comp (algebraMap (wcpaDjLcB A h) Bp) :=
      ⟨_, rfl⟩
    have Lm : ∀ b, β b ∈ 𝔫 → ιt b ∈ IsLocalRing.maximalIdeal Λ := by
      intro b hb
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, hιt, RingHom.comp_apply]
      intro hu'
      have h1 := isUnit_of_map_unit ι _ hu'
      rw [IsLocalization.AtPrime.isUnit_to_map_iff Bp (𝔫.comap β)] at h1
      exact h1 hb
    have L0 : ∀ b, β b ≠ 0 → ιt b ≠ 0 := by
      intro b hb h0
      rw [hιt, RingHom.comp_apply] at h0
      have h1 : algebraMap (wcpaDjLcB A h) Bp b = 0 := hι (h0.trans (map_zero ι).symm)
      obtain ⟨⟨s, hs⟩, hsb⟩ := (IsLocalization.map_eq_zero_iff (𝔫.comap β).primeCompl Bp b).mp h1
      have hsb' : s * b = 0 := hsb
      have h2 : β s * β b = 0 := by rw [← map_mul, hsb', map_zero]
      rcases mul_eq_zero.mp h2 with h3 | h3
      · exact hs (show β s ∈ 𝔫 by rw [h3]; exact 𝔫.zero_mem)
      · exact hb h3
    letI : Algebra A Λ := (ιt.comp (algebraMap A (wcpaDjLcB A h))).toAlgebra
    have hψ : ∀ a, algebraMap A Λ a = ιt (algebraMap A (wcpaDjLcB A h) a) := fun a => rfl
    have hm1 : ιt (algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0) ∈
        IsLocalRing.maximalIdeal Λ := Lm _ (by rw [hβx]; exact hx𝔫)
    have hgz : algebraMap A Λ γ * ιt (wcpaDjLcBX A h 1) =
        ιt (algebraMap A (wcpaDjLcB A h) γ * wcpaDjLcBX A h 1) := by
      rw [map_mul, hψ]
    have hm2 : algebraMap A Λ γ * ιt (wcpaDjLcBX A h 1) ∈ IsLocalRing.maximalIdeal Λ := by
      rw [hgz]; exact Lm _ (by rw [hβg]; exact hg𝔫)
    have hB3 : (algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0) *
        (algebraMap A (wcpaDjLcB A h) γ * wcpaDjLcBX A h 1) =
        algebraMap A (wcpaDjLcB A h) (γ * (a₁ * h)) := by
      rw [map_mul, map_mul, ← hrel]; ring
    have hm3 : ιt (algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0) *
        (algebraMap A Λ γ * ιt (wcpaDjLcBX A h 1)) = algebraMap A Λ (γ * (a₁ * h)) := by
      rw [hgz, ← map_mul, hB3, hψ]
    obtain ⟨θ, hθj, hθx, hθg⟩ := hev Λ hcomplete _ _ hm1 hm2 hm3
    have hθj' : ∀ a, θ (j a) = ιt (algebraMap A (wcpaDjLcB A h) a) :=
      fun a => RingHom.congr_fun hθj a
    have hne1 : ιt (algebraMap A (wcpaDjLcB A h) a₁) ≠ 0 :=
      L0 _ (by rw [hβa]; exact hTne _ hja)
    have hne2 : ιt (algebraMap A (wcpaDjLcB A h) a₁ * wcpaDjLcBX A h 0) ≠ 0 :=
      L0 _ (by rw [hβx]; exact hTne _ hx0)
    obtain ⟨Θ, hΘR, hΘu, hΘy⟩ := descend Λ θ (ιt (wcpaDjLcBX A h 0)) (ιt (wcpaDjLcBX A h 1))
      (by rw [hθj', hθx, map_mul, mul_comm])
      (by rw [hθj', ← map_mul, hrel])
      (by rw [map_mul, hθj', hθx]; exact mul_ne_zero hne1 hne2)
    have hΘβ : Θ.comp β = ιt := by
      refine Ideal.Quotient.ringHom_ext
        (I := Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h}) ?_
      refine MvPolynomial.ringHom_ext (fun c => ?_) (fun i => ?_)
      · show Θ (β (algebraMap A (wcpaDjLcB A h) c)) = ιt (algebraMap A (wcpaDjLcB A h) c)
        rw [hβa, ← RingHom.comp_apply Θ, hΘR, hθj']
      · obtain rfl | rfl : i = 0 ∨ i = 1 := by fin_cases i <;> simp
        · show Θ (β (wcpaDjLcBX A h 0)) = ιt (wcpaDjLcBX A h 0)
          rw [show β (wcpaDjLcBX A h 0) = ⟨u, hu⟩ from Subtype.ext hβ0, hΘu]
        · show Θ (β (wcpaDjLcBX A h 1)) = ιt (wcpaDjLcBX A h 1)
          rw [show β (wcpaDjLcBX A h 1) = ⟨y', hy⟩ from Subtype.ext hβ1, hΘy]
    refine ⟨Θ, hΘβ.trans hιt, ?_⟩
    have hspan𝔫 : Ideal.span {algebraMap R (Algebra.adjoin R {u, y'}) x,
        algebraMap R (Algebra.adjoin R {u, y'}) g} ≤ 𝔫 := by
      rw [Ideal.span_le, Set.insert_subset_iff, Set.singleton_subset_iff]
      exact ⟨hx𝔫, hg𝔫⟩
    have hspanm : Ideal.span {algebraMap R (Algebra.adjoin R {u, y'}) x,
        algebraMap R (Algebra.adjoin R {u, y'}) g} ≤ (IsLocalRing.maximalIdeal Λ).comap Θ := by
      rw [Ideal.span_le, Set.insert_subset_iff, Set.singleton_subset_iff]
      refine ⟨?_, ?_⟩
      · show Θ (algebraMap R (Algebra.adjoin R {u, y'}) x) ∈ IsLocalRing.maximalIdeal Λ
        rw [← RingHom.comp_apply Θ, hΘR, hθx]; exact hm1
      · show Θ (algebraMap R (Algebra.adjoin R {u, y'}) g) ∈ IsLocalRing.maximalIdeal Λ
        rw [← RingHom.comp_apply Θ, hΘR, hθg]; exact hm2
    intro z
    obtain ⟨b, hb⟩ := hD1 z
    have hw𝔫 := hspan𝔫 hb
    have hwm : Θ (z - β b) ∈ IsLocalRing.maximalIdeal Λ := hspanm hb
    have hzΘ : Θ z = ιt b + Θ (z - β b) := by
      rw [map_sub, ← RingHom.comp_apply Θ β, hΘβ]; ring
    by_cases hbn : β b ∈ 𝔫
    · have hzm : Θ z ∈ IsLocalRing.maximalIdeal Λ := by
        rw [hzΘ]; exact add_mem (Lm b hbn) hwm
      have hz𝔫 : z ∈ 𝔫 := by
        have e : z = β b + (z - β b) := by ring
        rw [e]; exact add_mem hbn hw𝔫
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hzm
      exact ⟨fun hc => absurd hc hzm, fun hc => absurd hz𝔫 hc⟩
    · have hbu : IsUnit (ιt b) := by
        rw [hιt, RingHom.comp_apply]
        exact ((IsLocalization.AtPrime.isUnit_to_map_iff Bp (𝔫.comap β) b).mpr hbn).map ι
      have hzu : IsUnit (Θ z) := by
        by_contra hc
        have hzm : Θ z ∈ IsLocalRing.maximalIdeal Λ :=
          (IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hc)
        have hbm : ιt b ∈ IsLocalRing.maximalIdeal Λ := by
          have e : ιt b = Θ z - Θ (z - β b) := by rw [hzΘ]; ring
          rw [e]; exact sub_mem hzm hwm
        exact (mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp hbm)) hbu
      have hz𝔫 : z ∉ 𝔫 := by
        intro hz
        apply hbn
        have e : β b = z - (z - β b) := by ring
        rw [e]; exact sub_mem hz hw𝔫
      exact ⟨fun _ => hz𝔫, fun _ => hzu⟩

  haveI hBnoeth : IsNoetherianRing (wcpaDjLcB A h) :=
    inferInstanceAs (IsNoetherianRing (MvPolynomial (Fin 2) A ⧸
      Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h}))
  haveI : IsNoetherianRing (Localization.AtPrime (𝔫.comap β)) :=
    IsLocalization.isNoetherianRing (𝔫.comap β).primeCompl _ hBnoeth
  obtain ⟨instΛ, hcomplete, hιloc, -⟩ :=
    wc_hnas_completion_local_complete (Localization.AtPrime (𝔫.comap β))
  haveI := instΛ
  haveI := hιloc
  haveI := hΛdom
  exact key (Localization.AtPrime (𝔫.comap β)) _ (algebraMap _ _) hιinj hcomplete

theorem wcpa_dj_glt_cc_tc_retract_completion : ∀ (B T : Type u) [CommRing B] [CommRing T]
    [IsNoetherianRing B] (β : B →+* T) (𝔫 : Ideal T) [𝔫.IsPrime]
    (Θ : T →+* AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
      (Localization.AtPrime (𝔫.comap β))),
    Θ.comp β = (algebraMap (Localization.AtPrime (𝔫.comap β))
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
          (Localization.AtPrime (𝔫.comap β)))).comp
      (algebraMap B (Localization.AtPrime (𝔫.comap β))) →
    (∀ z, IsUnit (Θ z) ↔ z ∉ 𝔫) →
    (∀ (k : ℕ) (z : T), ∃ b : B, z - β b ∈ 𝔫 ^ k) →
    ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
        (Localization.AtPrime (𝔫.comap β)) ≃+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫)) (Localization.AtPrime 𝔫),
      ε.toRingHom.comp ((algebraMap (Localization.AtPrime (𝔫.comap β))
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
            (Localization.AtPrime (𝔫.comap β)))).comp
        (algebraMap B (Localization.AtPrime (𝔫.comap β)))) =
      (algebraMap (Localization.AtPrime 𝔫)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫))
            (Localization.AtPrime 𝔫))).comp ((algebraMap T (Localization.AtPrime 𝔫)).comp β) :=
by
  intro B T _ _ _ β 𝔫 _ Θ H1 H2 H3

  have fmk : ∀ {R : Type u} [CommRing R] (I : Ideal R) {m n : ℕ} (h : m ≤ n) (a : R),
      Ideal.Quotient.factorPow I h (Ideal.Quotient.mk (I ^ n) a) =
        Ideal.Quotient.mk (I ^ m) a := by
    intro R _ I m n h a
    simp [Ideal.Quotient.factorPow]
  have factT : ∀ {R : Type u} [CommRing R] (I : Ideal R) {m n : ℕ} (h : m ≤ n)
      (x : AdicCompletion I R),
      Ideal.Quotient.factorPow I h (AdicCompletion.evalₐ I n x) = AdicCompletion.evalₐ I m x := by
    intro R _ I m n h x
    obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective I R x
    rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk, fmk]
    exact AdicCompletion.Ideal.mk_eq_mk I h s
  have evι : ∀ {R : Type u} [CommRing R] (I : Ideal R) (n : ℕ) (a : R),
      AdicCompletion.evalₐ I n (algebraMap R (AdicCompletion I R) a) =
        Ideal.Quotient.mk (I ^ n) a := by
    intro R _ I n a
    rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq]

  have iso : ∀ (A C : Type u) [CommRing A] [CommRing C] (I : Ideal A) (J : Ideal C)
      (lam : A →+* C) (hIJ : ∀ k, I ^ k ≤ (J ^ k).comap lam) (θ : C →+* AdicCompletion I A),
      θ.comp lam = algebraMap A (AdicCompletion I A) →
      (∀ (n : ℕ) (c : C), c ∈ J ^ n → AdicCompletion.evalₐ I n (θ c) = 0) →
      (∀ (n : ℕ) (c : C), ∃ a : A, c - lam a ∈ J ^ n) →
      ∃ ε : AdicCompletion I A ≃+* AdicCompletion J C,
        ∀ a : A, ε (algebraMap A _ a) = algebraMap C (AdicCompletion J C) (lam a) := by
    intro A C _ _ I J lam hIJ θ hθ hvan hden
    obtain ⟨p, hp⟩ : ∃ p : ∀ n : ℕ, A ⧸ I ^ n →+* C ⧸ J ^ n, ∀ n a,
        p n (Ideal.Quotient.mk (I ^ n) a) = Ideal.Quotient.mk (J ^ n) (lam a) :=
      ⟨fun n => Ideal.quotientMap (J ^ n) lam (hIJ n), fun n a => Ideal.quotientMap_mk⟩
    obtain ⟨q, hq⟩ : ∃ q : ∀ n : ℕ, C ⧸ J ^ n →+* A ⧸ I ^ n, ∀ n c,
        q n (Ideal.Quotient.mk (J ^ n) c) = AdicCompletion.evalₐ I n (θ c) :=
      ⟨fun n => Ideal.Quotient.lift (J ^ n) ((AdicCompletion.evalₐ I n).toRingHom.comp θ)
        (fun c hc => hvan n c hc), fun n c => Ideal.Quotient.lift_mk _ _ _⟩
    have hqp : ∀ n a, q n (p n a) = a := by
      intro n a
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
      rw [hp, hq, ← RingHom.comp_apply θ lam, hθ, evι]
    have hpq : ∀ n c, p n (q n c) = c := by
      intro n c
      obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c
      obtain ⟨a, ha⟩ := hden n c
      have e : Ideal.Quotient.mk (J ^ n) c = p n (Ideal.Quotient.mk (I ^ n) a) := by
        rw [hp]; exact Ideal.Quotient.eq.mpr ha
      rw [e, hqp]
    have hF : ∀ {m n : ℕ} (h : m ≤ n), (Ideal.Quotient.factorPow J h).comp
        ((p n).comp (AdicCompletion.evalₐ I n).toRingHom) =
        (p m).comp (AdicCompletion.evalₐ I m).toRingHom := by
      intro m n h
      refine RingHom.ext fun x => ?_
      show Ideal.Quotient.factorPow J h (p n (AdicCompletion.evalₐ I n x)) =
        p m (AdicCompletion.evalₐ I m x)
      rw [← factT I h x]
      generalize AdicCompletion.evalₐ I n x = y
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
      rw [hp, fmk, fmk, hp]
    have hG : ∀ {m n : ℕ} (h : m ≤ n), (Ideal.Quotient.factorPow I h).comp
        ((q n).comp (AdicCompletion.evalₐ J n).toRingHom) =
        (q m).comp (AdicCompletion.evalₐ J m).toRingHom := by
      intro m n h
      refine RingHom.ext fun y => ?_
      show Ideal.Quotient.factorPow I h (q n (AdicCompletion.evalₐ J n y)) =
        q m (AdicCompletion.evalₐ J m y)
      rw [← factT J h y]
      generalize AdicCompletion.evalₐ J n y = z
      obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective z
      rw [hq, factT, fmk, hq]
    obtain ⟨F, hFev⟩ : ∃ F : AdicCompletion I A →+* AdicCompletion J C, ∀ n x,
        AdicCompletion.evalₐ J n (F x) = p n (AdicCompletion.evalₐ I n x) :=
      ⟨AdicCompletion.liftRingHom J _ hF, fun n x => AdicCompletion.evalₐ_liftRingHom _ _ _ n x⟩
    obtain ⟨G, hGev⟩ : ∃ G : AdicCompletion J C →+* AdicCompletion I A, ∀ n y,
        AdicCompletion.evalₐ I n (G y) = q n (AdicCompletion.evalₐ J n y) :=
      ⟨AdicCompletion.liftRingHom I _ hG, fun n y => AdicCompletion.evalₐ_liftRingHom _ _ _ n y⟩
    have hGF : G.comp F = RingHom.id _ := by
      refine RingHom.ext fun x => AdicCompletion.ext_evalₐ fun n => ?_
      rw [RingHom.comp_apply, RingHom.id_apply, hGev, hFev, hqp]
    have hFG : F.comp G = RingHom.id _ := by
      refine RingHom.ext fun x => AdicCompletion.ext_evalₐ fun n => ?_
      rw [RingHom.comp_apply, RingHom.id_apply, hFev, hGev, hpq]
    refine ⟨RingEquiv.ofRingHom F G hFG hGF, fun a => AdicCompletion.ext_evalₐ fun n => ?_⟩
    show AdicCompletion.evalₐ J n (F (algebraMap A _ a)) = _
    rw [hFev, evι, hp, evι]

  have nonunit : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A]
      (C : Type u) [CommRing C] (J : Ideal C)
      (θ : C →+* AdicCompletion (IsLocalRing.maximalIdeal A) A),
      (∀ c ∈ J, ¬ IsUnit (θ c)) → ∀ (n : ℕ) (c : C), c ∈ J ^ n →
      AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) n (θ c) = 0 := by
    intro A _ _ _ C _ J θ hθ n c hc
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · haveI : Subsingleton (A ⧸ IsLocalRing.maximalIdeal A ^ 0) :=
        Ideal.Quotient.subsingleton_iff.mpr (by rw [pow_zero, Ideal.one_eq_top])
      exact Subsingleton.elim _ _
    have hle : IsLocalRing.maximalIdeal A ^ n ≤ IsLocalRing.maximalIdeal A :=
      Ideal.pow_le_self (Nat.pos_iff_ne_zero.mp hn)
    letI := Ideal.Quotient.field (IsLocalRing.maximalIdeal A)
    obtain ⟨f, hfdef⟩ : ∃ f : AdicCompletion (IsLocalRing.maximalIdeal A) A →+*
        A ⧸ IsLocalRing.maximalIdeal A, ∀ y,
        f y = Ideal.Quotient.factor hle (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) n y) :=
      ⟨(Ideal.Quotient.factor hle).comp (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) n).toRingHom,
        fun y => rfl⟩
    have hfs : Function.Surjective f := by
      intro y
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
      exact ⟨algebraMap A _ a, by rw [hfdef, evι, Ideal.Quotient.factor_mk]⟩
    have hker : RingHom.ker f =
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal A) A) :=
      IsLocalRing.eq_maximalIdeal (RingHom.ker_isMaximal_of_surjective f hfs)
    have hK : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal A) A) ≤
        (Ideal.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal A ^ n))
          (IsLocalRing.maximalIdeal A)).comap
          (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) n) := by
      intro y hy
      rw [← hker, RingHom.mem_ker] at hy
      rw [Ideal.mem_comap]
      obtain ⟨r, hr⟩ := Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) n y)
      have e : f y = Ideal.Quotient.mk (IsLocalRing.maximalIdeal A) r := by
        rw [hfdef, ← hr, Ideal.Quotient.factor_mk]
      rw [hy, eq_comm, Ideal.Quotient.eq_zero_iff_mem] at e
      rw [← hr]
      exact Ideal.mem_map_of_mem _ e
    have hJ : J ≤ (IsLocalRing.maximalIdeal
        (AdicCompletion (IsLocalRing.maximalIdeal A) A)).comap θ := fun c hc =>
      (IsLocalRing.mem_maximalIdeal _).mpr (hθ c hc)
    have h1 : θ c ∈ IsLocalRing.maximalIdeal
        (AdicCompletion (IsLocalRing.maximalIdeal A) A) ^ n :=
      Ideal.le_comap_pow θ n (Ideal.pow_right_mono hJ n hc)
    have h2 := Ideal.le_comap_pow (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) n) n
      (Ideal.pow_right_mono hK n h1)
    rw [Ideal.mem_comap, ← Ideal.map_pow, Ideal.map_quotient_self, Ideal.mem_bot] at h2
    exact h2

  haveI := Localization.isLocalHom_localRingHom (𝔫.comap β) 𝔫 β rfl
  have hIJ : ∀ k, (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β))) ^ k ≤
      ((IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫)) ^ k).comap
        (Localization.localRingHom (𝔫.comap β) 𝔫 β rfl) := fun k =>
    (Ideal.pow_right_mono (Ideal.map_le_iff_le_comap.mp
      (IsLocalRing.map_maximalIdeal_le _)) k).trans (Ideal.le_comap_pow _ k)
  have hg : ∀ y : 𝔫.primeCompl, IsUnit (Θ y) := fun y => (H2 y).2 y.2
  obtain ⟨Θ', hΘ'⟩ : ∃ Θ' : Localization.AtPrime 𝔫 →+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
        (Localization.AtPrime (𝔫.comap β)),
      ∀ z, Θ' (algebraMap T (Localization.AtPrime 𝔫) z) = Θ z :=
    ⟨IsLocalization.lift (M := 𝔫.primeCompl) hg, IsLocalization.lift_eq hg⟩
  have hΘlam : Θ'.comp (Localization.localRingHom (𝔫.comap β) 𝔫 β rfl) =
      algebraMap (Localization.AtPrime (𝔫.comap β))
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
          (Localization.AtPrime (𝔫.comap β))) := by
    refine IsLocalization.ringHom_ext (𝔫.comap β).primeCompl (RingHom.ext fun b => ?_)
    show Θ' (Localization.localRingHom (𝔫.comap β) 𝔫 β rfl
        (algebraMap B (Localization.AtPrime (𝔫.comap β)) b)) =
      algebraMap (Localization.AtPrime (𝔫.comap β)) _
        (algebraMap B (Localization.AtPrime (𝔫.comap β)) b)
    rw [Localization.localRingHom_to_map, hΘ']
    exact RingHom.congr_fun H1 b
  have hJnu : ∀ c ∈ IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫), ¬ IsUnit (Θ' c) := by
    intro c hc hu
    obtain ⟨⟨z, s⟩, rfl⟩ := IsLocalization.mk'_surjective (S := Localization.AtPrime 𝔫)
      𝔫.primeCompl c
    rw [IsLocalization.AtPrime.mk'_mem_maximal_iff (Localization.AtPrime 𝔫) 𝔫] at hc
    have e := congrArg Θ' (IsLocalization.mk'_spec (Localization.AtPrime 𝔫) z s)
    rw [map_mul, hΘ', hΘ'] at e
    exact (H2 z).1 (e ▸ hu.mul (hg s)) hc
  have hden : ∀ (n : ℕ) (c : Localization.AtPrime 𝔫), ∃ a : Localization.AtPrime (𝔫.comap β),
      c - Localization.localRingHom (𝔫.comap β) 𝔫 β rfl a ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫) ^ n := by
    intro n c
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · exact ⟨0, by rw [pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top⟩
    obtain ⟨⟨z, s⟩, rfl⟩ := IsLocalization.mk'_surjective (S := Localization.AtPrime 𝔫)
      𝔫.primeCompl c
    obtain ⟨b, hb⟩ := H3 n z
    obtain ⟨b', hb'⟩ := H3 n (s : T)
    have hb'n : β b' ∉ 𝔫 := by
      intro h
      apply s.2
      have h' := Ideal.pow_le_self (Nat.pos_iff_ne_zero.mp hn) hb'
      simpa using 𝔫.add_mem h' h
    have hb'm : b' ∈ (𝔫.comap β).primeCompl := hb'n
    refine ⟨IsLocalization.mk' _ b ⟨b', hb'm⟩, ?_⟩
    rw [Localization.localRingHom_mk', ← IsLocalization.mk'_sub,
      IsLocalization.mk'_eq_mul_mk'_one]
    apply Ideal.mul_mem_right
    rw [← IsLocalization.AtPrime.map_eq_maximalIdeal 𝔫, ← Ideal.map_pow]
    apply Ideal.mem_map_of_mem
    have key : (z - β b) * β b' - β b * ((s : T) - β b') ∈ 𝔫 ^ n :=
      Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hb) (Ideal.mul_mem_left _ _ hb')
    convert key using 1
    show z * β b' - β b * (s : T) = _
    ring
  obtain ⟨ε, hε⟩ := iso _ _ (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap β)))
    (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫))
    (Localization.localRingHom (𝔫.comap β) 𝔫 β rfl) hIJ Θ' hΘlam (nonunit _ _ _ Θ' hJnu) hden
  refine ⟨ε, RingHom.ext fun b => ?_⟩
  show ε (algebraMap _ _ (algebraMap B (Localization.AtPrime (𝔫.comap β)) b)) =
    algebraMap (Localization.AtPrime 𝔫) _ (algebraMap T (Localization.AtPrime 𝔫) (β b))
  rw [hε, Localization.localRingHom_to_map]

theorem wcpa_dj_glt_cc_tc_nc_local_eq : ∀ (R : Type u) [CommRing R] (N : ℕ) (F : Fin (N + 1) → R)
    (k₀ : Fin (N + 1)) [IsDomain (Localization.Away (F k₀))]
    (T : Subalgebra R (Localization.Away (F k₀)))
    (hT : ∀ z ∈ T, z ∈ integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))),
    (∀ i, IsLocalization.mk' (Localization.Away (F k₀)) (F i)
      (⟨F k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (F k₀)) ∈ T) →
    ∀ (Q : Ideal (wcpaDjGltNC R F k₀)) [Q.IsPrime],
    IsDomain (Localization.AtPrime (Q.comap (wcpaDjTcIncl R F k₀ T hT))) →
    IsIntegrallyClosed (Localization.AtPrime (Q.comap (wcpaDjTcIncl R F k₀ T hT))) →
    ∃ σ : Localization.AtPrime Q ≃+* Localization.AtPrime (Q.comap (wcpaDjTcIncl R F k₀ T hT)),
      σ.toRingHom.comp ((algebraMap (wcpaDjGltNC R F k₀) (Localization.AtPrime Q)).comp
          (wcpaDjGltNCMap R F k₀)) =
        (algebraMap T (Localization.AtPrime (Q.comap (wcpaDjTcIncl R F k₀ T hT)))).comp
          (algebraMap R T) :=
by
  intro R _ N F k₀ _ T hT hgen Q _ hdom hic
  classical

  obtain ⟨vN, hvN⟩ : ∃ vN : wcpaDjGltNC R F k₀ →+* Localization.Away (F k₀),
      ∀ b : ↥(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))), vN b = b.1 :=
    ⟨(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))).val.toRingHom,
      fun _ => rfl⟩
  have hvN_mem : ∀ b : wcpaDjGltNC R F k₀,
      vN b ∈ integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀)) := by
    intro b
    let b' : ↥(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))) := b
    rw [show vN b = b'.1 from hvN b']
    exact b'.2
  have hvN_inj : Function.Injective vN := by
    intro a b hab
    let a' : ↥(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))) := a
    let b' : ↥(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))) := b
    have : a' = b' := Subtype.ext ((hvN a').symm.trans (hab.trans (hvN b')))
    exact this
  have hvι : ∀ z : T, vN (wcpaDjTcIncl R F k₀ T hT z) = (z : Localization.Away (F k₀)) :=
    fun z => hvN (wcpaDjTcIncl R F k₀ T hT z)
  have hvNC : ∀ r : R, vN (wcpaDjGltNCMap R F k₀ r) = algebraMap R (Localization.Away (F k₀)) r :=
    fun r => hvN (wcpaDjGltNCMap R F k₀ r)

  have s2 : ∀ (T' S : Type u) [CommRing T'] [CommRing S] (ι : T' →+* S)
      (Q : Ideal S) [Q.IsPrime] (κ : S →+* Localization.AtPrime (Q.comap ι)),
      κ.comp ι = algebraMap T' (Localization.AtPrime (Q.comap ι)) →
      (∀ (b : S) (a s : T'), κ b * algebraMap T' (Localization.AtPrime (Q.comap ι)) s =
        algebraMap T' (Localization.AtPrime (Q.comap ι)) a → ι s * b = ι a) →
      ∃ σ : Localization.AtPrime Q ≃+* Localization.AtPrime (Q.comap ι),
        σ.toRingHom.comp (algebraMap S (Localization.AtPrime Q)) = κ := by
    intro T' S _ _ ι Q _ κ H1 H2
    have hfrac : ∀ b : S, ∃ (a : T') (s : (Q.comap ι).primeCompl),
        κ b = IsLocalization.mk' (Localization.AtPrime (Q.comap ι)) a s ∧ ι s * b = ι a := by
      intro b
      obtain ⟨⟨a, s⟩, hs⟩ := IsLocalization.mk'_surjective (Q.comap ι).primeCompl (κ b)
      refine ⟨a, s, hs.symm, H2 b a s ?_⟩
      rw [← hs]
      exact IsLocalization.mk'_spec _ a s
    have hsQ : ∀ s : (Q.comap ι).primeCompl, ι s ∉ Q :=
      fun s hs => s.2 (Ideal.mem_comap.mpr hs)
    have hunit : ∀ y : Q.primeCompl, IsUnit (κ y) := by
      intro y
      obtain ⟨a, s, hb, hsb⟩ := hfrac y
      rw [hb, IsLocalization.AtPrime.isUnit_mk'_iff]
      show a ∉ Q.comap ι
      intro ha
      have hm : ι s * (y : S) ∈ Q := by rw [hsb]; exact Ideal.mem_comap.mp ha
      rcases Ideal.IsPrime.mem_or_mem ‹Q.IsPrime› hm with h | h
      · exact hsQ s h
      · exact y.2 h
    obtain ⟨κt, hκt⟩ : ∃ κt : Localization.AtPrime Q →+* Localization.AtPrime (Q.comap ι),
        ∀ b : S, κt (algebraMap S (Localization.AtPrime Q) b) = κ b :=
      ⟨IsLocalization.lift (M := Q.primeCompl) hunit, fun b => IsLocalization.lift_eq hunit b⟩
    obtain ⟨μ, hμ⟩ : ∃ μ : Localization.AtPrime (Q.comap ι) →+* Localization.AtPrime Q,
        ∀ z : T', μ (algebraMap T' _ z) = algebraMap S (Localization.AtPrime Q) (ι z) :=
      ⟨Localization.localRingHom (Q.comap ι) Q ι rfl,
        fun z => Localization.localRingHom_to_map _ _ _ _ z⟩
    have e1 : κt.comp μ = RingHom.id _ := by
      apply IsLocalization.ringHom_ext (Q.comap ι).primeCompl
      refine RingHom.ext fun z => ?_
      simp only [RingHom.comp_apply, RingHom.id_apply]
      rw [hμ, hκt, ← RingHom.comp_apply κ ι, H1]
    have e2 : μ.comp κt = RingHom.id _ := by
      apply IsLocalization.ringHom_ext Q.primeCompl
      refine RingHom.ext fun b => ?_
      simp only [RingHom.comp_apply, RingHom.id_apply]
      rw [hκt]
      obtain ⟨a, s, hb, hsb⟩ := hfrac b
      have hu : IsUnit (algebraMap S (Localization.AtPrime Q) (ι s)) :=
        IsLocalization.map_units (Localization.AtPrime Q) (⟨ι s, hsQ s⟩ : Q.primeCompl)
      have hu' : IsUnit (μ (algebraMap T' (Localization.AtPrime (Q.comap ι)) s)) := by
        rw [hμ]; exact hu
      have key : μ (κ b) * μ (algebraMap T' (Localization.AtPrime (Q.comap ι)) s) =
          algebraMap S (Localization.AtPrime Q) b *
            μ (algebraMap T' (Localization.AtPrime (Q.comap ι)) s) := by
        calc μ (κ b) * μ (algebraMap T' (Localization.AtPrime (Q.comap ι)) s)
            = μ (κ b * algebraMap T' (Localization.AtPrime (Q.comap ι)) s) := (map_mul _ _ _).symm
          _ = μ (algebraMap T' (Localization.AtPrime (Q.comap ι)) a) := by
            rw [hb, IsLocalization.mk'_spec]
          _ = algebraMap S (Localization.AtPrime Q) (ι a) := hμ a
          _ = algebraMap S (Localization.AtPrime Q) (ι s * b) := by rw [hsb]
          _ = algebraMap S (Localization.AtPrime Q) b *
                μ (algebraMap T' (Localization.AtPrime (Q.comap ι)) s) := by
            rw [map_mul, hμ, mul_comm]
      exact hu'.mul_left_inj.mp key
    refine ⟨RingEquiv.ofRingHom κt μ e1 e2, ?_⟩
    refine RingHom.ext fun b => ?_
    exact hκt b

  have s1 : ∀ (𝔫 : Ideal T) [𝔫.IsPrime],
      IsDomain (Localization.AtPrime 𝔫) → IsIntegrallyClosed (Localization.AtPrime 𝔫) →
      ∃ κ : wcpaDjGltNC R F k₀ →+* Localization.AtPrime 𝔫,
        κ.comp (wcpaDjTcIncl R F k₀ T hT) = algebraMap T (Localization.AtPrime 𝔫) ∧
        ∀ (b : wcpaDjGltNC R F k₀) (a s : T),
          κ b * algebraMap T (Localization.AtPrime 𝔫) s = algebraMap T (Localization.AtPrime 𝔫) a →
          wcpaDjTcIncl R F k₀ T hT s * b = wcpaDjTcIncl R F k₀ T hT a := by
    intro 𝔫 _ hd hi
    haveI := hd
    haveI := hi
    set_option synthInstance.maxHeartbeats 1000000 in
    obtain ⟨K, _, _, _⟩ : ∃ (K : Type u) (_ : Field K) (_ : Algebra (Localization.AtPrime 𝔫) K),
        IsFractionRing (Localization.AtPrime 𝔫) K :=
      ⟨FractionRing (Localization.AtPrime 𝔫), inferInstance, OreLocalization.instAlgebra,
        Localization.isLocalization⟩
    have j1inj : Function.Injective (algebraMap T (Localization.AtPrime 𝔫)) :=
      IsLocalization.injective (Localization.AtPrime 𝔫) (Ideal.primeCompl_le_nonZeroDivisors 𝔫)
    have j2inj : Function.Injective (algebraMap (Localization.AtPrime 𝔫)
        K) :=
      IsFractionRing.injective (Localization.AtPrime 𝔫) K
    obtain ⟨g, hg⟩ : ∃ g : R →+* K,
        g = (algebraMap (Localization.AtPrime 𝔫) K).comp
          ((algebraMap T (Localization.AtPrime 𝔫)).comp (algebraMap R T)) := ⟨_, rfl⟩
    have hjinj : ∀ z : T, algebraMap (Localization.AtPrime 𝔫)
        K (algebraMap T (Localization.AtPrime 𝔫) z) = 0 →
        z = 0 := by
      intro z hz
      apply j1inj
      rw [map_zero]
      apply j2inj
      rw [map_zero]
      exact hz
    have hTval : ∀ r : R, ((algebraMap R T r : T) : Localization.Away (F k₀)) =
        algebraMap R (Localization.Away (F k₀)) r := fun r => rfl
    have hgunit : ∀ y : Submonoid.powers (F k₀), IsUnit (g y) := by
      have hf : g (F k₀) ≠ 0 := by
        intro h0
        rw [hg] at h0
        have h1 : algebraMap R T (F k₀) = 0 := hjinj _ h0
        have h2 : algebraMap R (Localization.Away (F k₀)) (F k₀) = 0 := by
          rw [← hTval, h1]
          rfl
        exact (IsLocalization.Away.algebraMap_isUnit (F k₀)).ne_zero h2
      intro y
      obtain ⟨n, hn⟩ := y.2
      rw [← hn, map_pow]
      exact (isUnit_iff_ne_zero.mpr hf).pow n
    obtain ⟨κ₀, hκ₀⟩ : ∃ κ₀ : Localization.Away (F k₀) →+* K,
        ∀ r : R, κ₀ (algebraMap R (Localization.Away (F k₀)) r) = g r :=
      ⟨IsLocalization.lift (M := Submonoid.powers (F k₀)) hgunit, IsLocalization.lift_eq hgunit⟩
    have hagree : ∀ z : T, κ₀ (z : Localization.Away (F k₀)) =
        algebraMap (Localization.AtPrime 𝔫) K
          (algebraMap T (Localization.AtPrime 𝔫) z) := by
      intro z
      obtain ⟨⟨r, s⟩, hrs⟩ :=
        IsLocalization.surj (Submonoid.powers (F k₀)) (z : Localization.Away (F k₀))
      dsimp only at hrs
      have hT' : z * algebraMap R T s = algebraMap R T r := Subtype.ext hrs
      have e1 : κ₀ (z : Localization.Away (F k₀)) * g s = g r := by
        rw [← hκ₀, ← hκ₀, ← map_mul, hrs]
      have e2 : algebraMap (Localization.AtPrime 𝔫) K
          (algebraMap T (Localization.AtPrime 𝔫) z) * g s = g r := by
        rw [hg]
        simp only [RingHom.comp_apply]
        rw [← map_mul, ← map_mul, hT']
      exact (hgunit s).mul_left_inj.mp (e1.trans e2.symm)
    have hκ₀inj : Function.Injective κ₀ := by
      rw [injective_iff_map_eq_zero]
      intro l hl
      obtain ⟨⟨r, s⟩, hrs⟩ := IsLocalization.surj (Submonoid.powers (F k₀)) l
      dsimp only at hrs
      have e1 : g r = 0 := by
        rw [← hκ₀, ← hrs, map_mul, hl, zero_mul]
      have e2 : algebraMap R T r = 0 := by
        apply hjinj
        rw [hg] at e1
        exact e1
      have e3 : algebraMap R (Localization.Away (F k₀)) r = 0 := by
        rw [← hTval, e2]
        rfl
      rw [e3] at hrs
      exact ((IsLocalization.map_units (Localization.Away (F k₀)) s).mul_left_eq_zero).mp hrs
    have hCT : wcpaDjChart R F k₀ ≤ T := Algebra.adjoin_le (Set.range_subset_iff.mpr hgen)
    have hint : ∀ b : wcpaDjGltNC R F k₀, ∃ y : Localization.AtPrime 𝔫,
        algebraMap (Localization.AtPrime 𝔫) K y =
          κ₀ (vN b) := by
      intro b
      have hb : IsIntegral (wcpaDjChart R F k₀) (vN b) := hvN_mem b
      have h2 : IsIntegral (Localization.AtPrime 𝔫) (κ₀ (vN b)) :=
        IsIntegral.map_of_comp_eq ((algebraMap T (Localization.AtPrime 𝔫)).comp
          (Subalgebra.inclusion hCT).toRingHom) κ₀ (by
            refine RingHom.ext fun c => ?_
            simp only [RingHom.comp_apply]
            rw [← hagree]
            rfl) hb
      exact IsIntegrallyClosed.isIntegral_iff.mp h2
    choose κf hκf using hint
    obtain ⟨κ, hκ⟩ : ∃ κ : wcpaDjGltNC R F k₀ →+* Localization.AtPrime 𝔫, ∀ b,
        algebraMap (Localization.AtPrime 𝔫) K (κ b) =
          κ₀ (vN b) :=
      ⟨{ toFun := κf
         map_one' := j2inj (by simp only [hκf, map_one])
         map_mul' := fun a b => j2inj (by simp only [hκf, map_mul])
         map_zero' := j2inj (by simp only [hκf, map_zero])
         map_add' := fun a b => j2inj (by simp only [hκf, map_add]) }, hκf⟩
    refine ⟨κ, ?_, ?_⟩
    · refine RingHom.ext fun z => j2inj ?_
      rw [RingHom.comp_apply, hκ, hvι, hagree]
    · intro b a s h
      apply hvN_inj
      have e := congrArg (algebraMap (Localization.AtPrime 𝔫)
        K) h
      rw [map_mul, hκ, ← hagree, ← hagree, ← map_mul] at e
      rw [map_mul, hvι, hvι, mul_comm]
      exact hκ₀inj e

  obtain ⟨κ, h1, h2⟩ := s1 (Q.comap (wcpaDjTcIncl R F k₀ T hT)) hdom hic
  obtain ⟨σ, hσ⟩ := s2 T (wcpaDjGltNC R F k₀) (wcpaDjTcIncl R F k₀ T hT) Q κ h1 h2
  refine ⟨σ, ?_⟩
  have hNC : wcpaDjGltNCMap R F k₀ = (wcpaDjTcIncl R F k₀ T hT).comp (algebraMap R T) := by
    refine RingHom.ext fun r => hvN_inj ?_
    rw [RingHom.comp_apply, hvι, hvNC]
    rfl
  rw [← RingHom.comp_assoc, hσ, hNC, ← RingHom.comp_assoc, h1]

theorem wcpa_dj_glt_cc_lc_toric_completion : ∀ (O₀ Oy : Type u) [CommRing O₀] [CommRing Oy]
    [IsLocalRing O₀] [IsLocalRing Oy] [IsNoetherianRing O₀] [IsNoetherianRing Oy]
    (φ : O₀ →+* Oy) [IsLocalHom φ], IsRegularLocalRing O₀ →
    ∀ (N : ℕ) (I : Finset (Fin (N + 1))) (n : ℕ) (t : Fin n → O₀) (α : Fin (N + 1) → ℤ)
      (β : Fin (N + 1) → Fin n → ℤ) (c₀ : Fin n → ℕ),
    (n : WithBot ℕ∞) = ringKrullDim O₀ →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal O₀ →
    ∀ x : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
    (((∃ l, c₀ l ≠ 0) ∧
      ∃ (v : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ)
        (e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
            Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
              (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)})),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) ∧
        e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0)) ∨
     (c₀ = 0 ∧ ∃ e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          PowerSeries.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
        e x = PowerSeries.X)) →
    ∀ (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
      (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
      ∀ (Q : Ideal (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀)) [Q.IsPrime],
      Q.comap ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀).comp
          (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))) =
        IsLocalRing.maximalIdeal Oy →
      ∀ (lam mu : Fin n → ℕ)
          (u y' : Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)),
        (∀ l, lam l ≤ mu l) →
        u ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀) (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) →
        y' ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀) (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) →
        u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
            (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ lam l) =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x →
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x * y' =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
            (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ mu l) →
        (∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀))
            (wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ i)
            (⟨wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀,
              Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x (fun l =>
                algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∈
          Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) →
        ((∃ l, c₀ l ≠ 0) → ∀ l, mu l ≤ c₀ l) →
        (∀ (𝔭 : Ideal (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
            (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
              (mu l - lam l)))) [𝔭.IsPrime],
          𝔭.comap ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) _).comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
            IsLocalRing.maximalIdeal O₀ →
          IsDomain (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
            (Localization.AtPrime 𝔭)) ∧
          IsIntegrallyClosed (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
            (Localization.AtPrime 𝔭))) →
        ∃ (𝔭 : Ideal (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
            (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
              (mu l - lam l)))) (_ : 𝔭.IsPrime),
          𝔭.comap ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) _).comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
            IsLocalRing.maximalIdeal O₀ ∧
          ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q))
              (Localization.AtPrime Q) ≃+*
            AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭)) (Localization.AtPrime 𝔭),
          ε.toRingHom.comp (wcpaDjGltCcPsi φ (wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀)
              k₀ Q) =
            wcpaDjLcBMap O₀ _ 𝔭 :=
by
  intro O₀ Oy _ _ _ _ _ _ φ _ hreg N I n t α β c₀ hdim hspan x hmodel a₀ b₀ k₀ hk₀ hb
  set F := wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
    (φ (t l))) α β a₀ b₀ with hF
  intro Q _ hQ lam mu u y' hlm hu hy' hux hxy hchart hmuc hHB
  classical

  obtain ⟨instA, -, hιA, -⟩ := wc_hnas_completion_local_complete O₀
  obtain ⟨instR, -, hιR, -⟩ := wc_hnas_completion_local_complete Oy
  haveI := instA
  haveI := instR
  haveI := hιR
  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
    wc_hnas_completion_noetherian O₀

  obtain ⟨j, g, γ, hRdom, hj, hx0, ht0, hxu, hgu, hxg, htrunc, hev⟩ :=
    wcpa_dj_glt_cc_tc_model_interface O₀ Oy φ hreg n t c₀ mu hdim hspan x hmodel hmuc
  haveI := hRdom
  set h := ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
    (mu l - lam l) with hh
  set a₁ := ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
    lam l with ha₁
  have hjO : ∀ a : O₀, j (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a) =
      algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ a) :=
    fun a => RingHom.congr_fun hj a
  have htR0 : ∀ l, algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l)) ≠ 0 :=
    fun l => by rw [← hjO]; exact ht0 l
  have hja₁ : j a₁ = ∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (φ (t l))) ^ lam l := by
    rw [ha₁, map_prod]; simp only [map_pow, hjO]
  have hjmu : j (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^
      mu l) = ∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (φ (t l))) ^ mu l := by
    rw [map_prod]; simp only [map_pow, hjO]
  have hprod : a₁ * h = ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (t l)) ^ mu l := by
    rw [ha₁, hh, ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun l _ => by rw [← pow_add, Nat.add_sub_cancel' (hlm l)]
  have hja₁0 : j a₁ ≠ 0 := by
    rw [hja₁]; exact Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (htR0 l)

  have hF0 : F k₀ ≠ 0 := by
    simp only [hF, wcpaDjGltMon, if_pos hk₀]
    exact mul_ne_zero (pow_ne_zero _ hx0)
      (Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (htR0 l))
  haveI : IsDomain (Localization.Away (F k₀)) :=
    IsLocalization.isDomain_localization (powers_le_nonZeroDivisors_of_noZeroDivisors hF0)
  have hinjL : Function.Injective (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Localization.Away (F k₀))) :=
    IsLocalization.injective (M := Submonoid.powers (F k₀)) _
      (powers_le_nonZeroDivisors_of_noZeroDivisors hF0)

  have hux' : u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j a₁) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x := by
    rw [hja₁]; exact hux
  have huy : u * y' = algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j h) := by
    have hne : algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Localization.Away (F k₀)) (j a₁) ≠ 0 := (map_ne_zero_iff _ hinjL).mpr hja₁0
    have e2 : algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Localization.Away (F k₀)) (j h) *
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j a₁) =
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
          (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^
            mu l) := by
      rw [← map_mul, ← map_mul, mul_comm h a₁, hprod, hjmu]
    have e : (u * y' - algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j h)) *
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j a₁) = 0 := by
      calc (u * y' - algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j h)) *
            algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j a₁)
          = (u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j a₁)) * y' -
            algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
              (Localization.Away (F k₀)) (j h) *
            algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j a₁) := by ring
        _ = 0 := by rw [hux', hxy, e2, sub_self]
    exact sub_eq_zero.mp ((mul_eq_zero.mp e).resolve_right hne)
  have hgy : algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Localization.Away (F k₀)) g =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j γ) * y' := by
    have hne : algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Localization.Away (F k₀)) x ≠ 0 := (map_ne_zero_iff _ hinjL).mpr hx0
    have e : (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Localization.Away (F k₀)) g -
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j γ) * y') *
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x = 0 := by
      calc (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (Localization.Away (F k₀)) g -
            algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j γ) * y') *
            algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x
          = algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
              (Localization.Away (F k₀)) (x * g) -
            algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ (j γ) *
              (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x * y') := by
            rw [map_mul]; ring
        _ = 0 := by
            rw [hxg, hxy, map_mul j, hjmu, map_mul (algebraMap _ (Localization.Away (F k₀))),
              sub_self]
    exact sub_eq_zero.mp ((mul_eq_zero.mp e).resolve_right hne)

  have hu_mem : u ∈ Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'} :=
    Algebra.subset_adjoin (Set.mem_insert _ _)
  have hy_mem : y' ∈ Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'} :=
    Algebra.subset_adjoin (Set.mem_insert_of_mem _ rfl)
  have hTle : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'} ≤
      (integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀)
        (Localization.Away (F k₀))).restrictScalars
          (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) := by
    rw [Algebra.adjoin_le_iff, Set.insert_subset_iff, Set.singleton_subset_iff]
    exact ⟨hu, hy'⟩
  have hT : ∀ z ∈ Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'},
      z ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀)
        (Localization.Away (F k₀)) := fun z hz => hTle hz

  have hQb : ∀ b : Oy, wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀
      (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) b) ∈ Q ↔
      b ∈ IsLocalRing.maximalIdeal Oy := fun b => by
    have := Ideal.ext_iff.mp hQ b
    rw [Ideal.mem_comap, RingHom.comp_apply] at this
    exact this
  have hφ : ∀ a : O₀, φ a ∈ IsLocalRing.maximalIdeal Oy ↔ a ∈ IsLocalRing.maximalIdeal O₀ :=
    fun a => Ideal.ext_iff.mp (IsLocalRing.maximalIdeal_comap φ) a
  have hmR : ∀ c ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy),
      wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀ c ∈ Q := by
    intro c hc
    obtain ⟨p, hp⟩ := (wc_hnas_hs_completion_levels Oy).1 1 c
    rw [pow_one] at hp
    have hle1 : Ideal.map (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))
        (IsLocalRing.maximalIdeal Oy) ≤
        Q.comap (wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) := by
      rw [Ideal.map_le_iff_le_comap]
      intro b hb
      exact (hQb b).mpr hb
    have hle2 : Ideal.map (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))
        (IsLocalRing.maximalIdeal Oy) ≤
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) := by
      rw [Ideal.map_le_iff_le_comap]
      exact (IsLocalRing.maximalIdeal_comap _).ge
    have hpR : algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) p ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) := by
      have := (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).sub_mem
        hc (hle2 hp)
      rwa [sub_sub_cancel] at this
    have hpO : p ∈ IsLocalRing.maximalIdeal Oy :=
      (Ideal.ext_iff.mp (IsLocalRing.maximalIdeal_comap
        (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))) p).mp hpR
    have h1 := hle1 hp
    have h2 := (hQb p).mpr hpO
    have h3 := Q.add_mem h1 h2
    rwa [← map_add, sub_add_cancel] at h3
  have hxm : x ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) :=
    (IsLocalRing.mem_maximalIdeal x).mpr (mem_nonunits_iff.mpr hxu)
  have hgm : g ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) :=
    (IsLocalRing.mem_maximalIdeal g).mpr (mem_nonunits_iff.mpr hgu)
  set 𝔫 := Q.comap (wcpaDjTcIncl (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀
    (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) hT) with h𝔫
  haveI h𝔫P : 𝔫.IsPrime := Ideal.comap_isPrime _ _
  have hx𝔫 : algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) x ∈ 𝔫 :=
    hmR x hxm
  have hg𝔫 : algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) g ∈ 𝔫 :=
    hmR g hgm

  obtain ⟨bm, hbmA, hbm0, hbm1⟩ : ∃ bm : wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h →+*
      Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'},
      bm.comp (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) _) =
        (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'})).comp j ∧
      ((bm (wcpaDjLcBX _ h 0) : Localization.Away (F k₀)) = u) ∧
      ((bm (wcpaDjLcBX _ h 1) : Localization.Away (F k₀)) = y') := by
    have hker : ∀ p ∈ Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h :
        MvPolynomial (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))},
        MvPolynomial.eval₂Hom ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'})).comp j)
          ![⟨u, hu_mem⟩, ⟨y', hy_mem⟩] p = 0 := by
      intro p hp
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hp
      have e : (⟨u, hu_mem⟩ : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          {u, y'}) * ⟨y', hy_mem⟩ - algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) (j h) = 0 :=
        Subtype.ext (show u * y' - algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Localization.Away (F k₀)) (j h) = 0 from sub_eq_zero.mpr huy)
      simp only [map_mul, map_sub, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C,
        RingHom.comp_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
      rw [e, mul_zero]
    refine ⟨Ideal.Quotient.lift _ _ hker, ?_, ?_, ?_⟩
    · refine RingHom.ext fun a => ?_
      show MvPolynomial.eval₂Hom ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'})).comp j)
          ![⟨u, hu_mem⟩, ⟨y', hy_mem⟩] (MvPolynomial.C a) = _
      rw [MvPolynomial.eval₂Hom_C]
    · show ((MvPolynomial.eval₂Hom ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'})).comp j)
          ![⟨u, hu_mem⟩, ⟨y', hy_mem⟩] (MvPolynomial.X 0) :
          Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) :
          Localization.Away (F k₀)) = u
      rw [MvPolynomial.eval₂Hom_X']
      rfl
    · show ((MvPolynomial.eval₂Hom ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'})).comp j)
          ![⟨u, hu_mem⟩, ⟨y', hy_mem⟩] (MvPolynomial.X 1) :
          Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) :
          Localization.Away (F k₀)) = y'
      rw [MvPolynomial.eval₂Hom_X']
      rfl
  have hbmA' : ∀ a, bm (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) _ a) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) (j a) :=
    fun a => RingHom.congr_fun hbmA a

  have h𝔭 : (𝔫.comap bm).comap ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)).comp
      (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
      IsLocalRing.maximalIdeal O₀ := by
    ext a
    rw [Ideal.mem_comap, Ideal.mem_comap, RingHom.comp_apply, hbmA', hjO]
    exact (hQb (φ a)).trans (hφ a)

  obtain ⟨hΛdom, hΛic⟩ := hHB (𝔫.comap bm) h𝔭
  haveI hBnoeth : IsNoetherianRing (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h) :=
    inferInstanceAs (IsNoetherianRing (MvPolynomial (Fin 2)
      (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
      Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h}))
  have hinjB := (wcpa_dj_glt_cc_normal_descent (Localization.AtPrime (𝔫.comap bm)) hΛdom hΛic).1

  have hD := wcpa_dj_glt_cc_tc_density _ _ _ j x g γ a₁ h u y' htrunc hux' hgy bm hbmA hbm0 hbm1
  have hD1 : ∀ z : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'},
      ∃ b, z - bm b ∈ Ideal.span {algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) x,
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) g} := by
    intro z
    obtain ⟨b, hb⟩ := hD 1 z
    exact ⟨b, by rwa [pow_one] at hb⟩

  obtain ⟨Θ, hΘ, hΘu⟩ := wcpa_dj_glt_cc_tc_theta _ _ _ j x g γ a₁ h u y' hinjL
    (by
      intro Λ _ _ _ hc y₀ z h1 h2 h3
      exact hev Λ hc y₀ z h1 h2 (by rw [← hprod]; exact h3))
    hx0 hja₁0 hux' huy hgy 𝔫 bm hbmA hbm0 hbm1 hΛdom hinjB hD1 hx𝔫 hg𝔫

  have hspan𝔫 : Ideal.span {algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) x,
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) g} ≤ 𝔫 := by
    rw [Ideal.span_le, Set.insert_subset_iff, Set.singleton_subset_iff]
    exact ⟨hx𝔫, hg𝔫⟩
  obtain ⟨ε₁, hε₁⟩ := wcpa_dj_glt_cc_tc_retract_completion _ _ bm 𝔫 Θ hΘ hΘu
    (fun k z => by
      obtain ⟨b, hb⟩ := hD k z
      exact ⟨b, Ideal.pow_right_mono hspan𝔫 k hb⟩)

  haveI : Algebra.FiniteType (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) := by
    rw [← Subalgebra.fg_iff_finiteType]
    have := Subalgebra.fg_adjoin_finset (R := AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (insert u {y'} : Finset (Localization.Away (F k₀)))
    rw [Finset.coe_insert, Finset.coe_singleton] at this
    exact this
  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) :=
    wc_hnas_completion_noetherian Oy
  haveI : IsNoetherianRing
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) :=
    Algebra.FiniteType.isNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
  haveI := hΛdom
  haveI := hΛic
  have hc1 := MulEquiv.isDomain _ ε₁.symm.toMulEquiv
  have hc2 := IsIntegrallyClosed.of_equiv ε₁
  obtain ⟨-, hTdom, hTic⟩ := wcpa_dj_glt_cc_normal_descent (Localization.AtPrime 𝔫) hc1 hc2

  obtain ⟨σ, hσ⟩ := wcpa_dj_glt_cc_tc_nc_local_eq _ N F k₀
    (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u, y'}) hT hchart Q
    hTdom hTic
  obtain ⟨ε₀, hε₀⟩ := wcpa_dj_glt_cc_adic_congr (Localization.AtPrime Q)
    (Localization.AtPrime 𝔫) σ

  refine ⟨𝔫.comap bm, inferInstance, h𝔭, ε₀.trans ε₁.symm, ?_⟩
  refine RingHom.ext fun a => ?_
  have k1 := RingHom.congr_fun hε₀ (algebraMap (wcpaDjGltNC _ F k₀) (Localization.AtPrime Q)
    (wcpaDjGltNCMap _ F k₀ (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (φ a))))
  have k2 := RingHom.congr_fun hσ (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
    (φ a))
  have k3 := RingHom.congr_fun hε₁ (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
    (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)
    (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a))
  simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at k1 k2 k3
  show (ε₀.trans ε₁.symm) (algebraMap (Localization.AtPrime Q) _
    (algebraMap (wcpaDjGltNC _ F k₀) (Localization.AtPrime Q)
      (wcpaDjGltNCMap _ F k₀ (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (φ a))))) = algebraMap (Localization.AtPrime (𝔫.comap bm)) _
      (algebraMap (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)
        (Localization.AtPrime (𝔫.comap bm))
        (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
          (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)
          (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)))
  rw [RingEquiv.trans_apply, RingEquiv.symm_apply_eq]
  refine k1.trans ?_
  refine Eq.trans ?_ k3.symm
  rw [k2, hbmA', hjO]

theorem wcpa_dj_glt_cc_lcz_ps_nil_eval : ∀ (A D : Type u) [CommRing A] [CommRing D] (ι : A →+* D)
    (y : D) (n : ℕ), y ^ n = 0 →
    ∃ σ : PowerSeries A →+* D, σ.comp PowerSeries.C = ι ∧ σ PowerSeries.X = y :=
by
  intro A D _ _ ι y n hy
  have s1 : ∀ (f : PowerSeries A) (p : Polynomial A),
      (∀ k < n, p.coeff k = PowerSeries.coeff k f) →
      Polynomial.eval₂ ι y (PowerSeries.trunc n f) = Polynomial.eval₂ ι y p := by
    intro f p hp
    have hq : (Polynomial.X : Polynomial A) ^ n ∣ PowerSeries.trunc n f - p := by
      rw [Polynomial.X_pow_dvd_iff]
      intro d hd
      rw [Polynomial.coeff_sub, PowerSeries.coeff_trunc, if_pos hd, hp d hd, sub_self]
    obtain ⟨r, hr⟩ := hq
    rw [← sub_eq_zero, ← Polynomial.eval₂_sub, hr, Polynomial.eval₂_mul, Polynomial.eval₂_X_pow,
      hy, zero_mul]
  let σ : PowerSeries A →+* D :=
    { toFun := fun f => Polynomial.eval₂ ι y (PowerSeries.trunc n f)
      map_one' := by
        show Polynomial.eval₂ ι y (PowerSeries.trunc n 1) = 1
        rw [s1 1 1 (fun k _ => by rw [← Polynomial.coeff_coe, Polynomial.coe_one]),
          Polynomial.eval₂_one]
      map_mul' := fun f g => by
        show Polynomial.eval₂ ι y (PowerSeries.trunc n (f * g)) =
          Polynomial.eval₂ ι y (PowerSeries.trunc n f) * Polynomial.eval₂ ι y (PowerSeries.trunc n g)
        rw [s1 (f * g) (PowerSeries.trunc n f * PowerSeries.trunc n g) ?_, Polynomial.eval₂_mul]
        intro k hk
        rw [PowerSeries.coeff_mul_eq_coeff_trunc_mul_trunc f g hk, ← Polynomial.coe_mul,
          Polynomial.coeff_coe]
      map_zero' := by
        show Polynomial.eval₂ ι y (PowerSeries.trunc n 0) = 0
        rw [s1 0 0 (fun k _ => by rw [Polynomial.coeff_zero, map_zero]), Polynomial.eval₂_zero]
      map_add' := fun f g => by
        show Polynomial.eval₂ ι y (PowerSeries.trunc n (f + g)) =
          Polynomial.eval₂ ι y (PowerSeries.trunc n f) + Polynomial.eval₂ ι y (PowerSeries.trunc n g)
        rw [s1 (f + g) (PowerSeries.trunc n f + PowerSeries.trunc n g) ?_, Polynomial.eval₂_add]
        intro k hk
        rw [Polynomial.coeff_add, PowerSeries.coeff_trunc, PowerSeries.coeff_trunc, if_pos hk,
          if_pos hk, map_add] }
  refine ⟨σ, ?_, ?_⟩
  · ext a
    show Polynomial.eval₂ ι y (PowerSeries.trunc n (PowerSeries.C a)) = ι a
    rw [s1 _ (Polynomial.C a) (fun k _ => by rw [← Polynomial.coeff_coe, Polynomial.coe_C]),
      Polynomial.eval₂_C]
  · show Polynomial.eval₂ ι y (PowerSeries.trunc n PowerSeries.X) = y
    rw [s1 _ Polynomial.X (fun k _ => by rw [← Polynomial.coeff_coe, Polynomial.coe_X]),
      Polynomial.eval₂_X]

theorem wcpa_dj_glt_cc_lcz_kernel : ∀ (R L : Type u) [CommRing R] [CommRing L] [Algebra R L]
    (c x : R) (u : L), Function.Injective (algebraMap R L) → (∀ s : R, c ∣ x * s → c ∣ s) →
    u * algebraMap R L c = algebraMap R L x →
    RingHom.ker (Polynomial.aeval u : Polynomial R →ₐ[R] L).toRingHom ≤
      Ideal.span {Polynomial.C c * Polynomial.X - Polynomial.C x} :=
by
  intro R L _ _ _ c x u hinj hH hu
  have cancel_pow : ∀ (k : ℕ) (s : R), c ∣ x ^ k * s → c ∣ s := by
    intro k
    induction k with
    | zero => intro s h; simpa using h
    | succ k ih =>
      intro s h
      rw [pow_succ', mul_assoc] at h
      exact ih s (hH _ h)
  have top_dvd : ∀ (n : ℕ) (f : Polynomial R), f.natDegree ≤ n → Polynomial.aeval u f = 0 →
      c ∣ x ^ n * f.coeff n := by
    intro n f hf hf0
    have h1 : Polynomial.aeval u f = ∑ i ∈ Finset.range (n + 1), f.coeff i • u ^ i :=
      Polynomial.aeval_eq_sum_range' (by omega) u
    have hS : ∑ i ∈ Finset.range (n + 1), f.coeff i * x ^ i * c ^ (n - i) = 0 := by
      apply hinj
      rw [map_zero, map_sum]
      have e : ∑ i ∈ Finset.range (n + 1), algebraMap R L (f.coeff i * x ^ i * c ^ (n - i)) =
          Polynomial.aeval u f * algebraMap R L c ^ n := by
        rw [h1, Finset.sum_mul]
        refine Finset.sum_congr rfl (fun i hi => ?_)
        have hi' : i ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
        obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hi'
        rw [Nat.add_sub_cancel_left]
        simp only [map_mul, map_pow, Algebra.smul_def, ← hu]
        ring
      rw [e, hf0, zero_mul]
    rw [Finset.sum_range_succ, Nat.sub_self, pow_zero, mul_one] at hS
    have hT : c ∣ ∑ i ∈ Finset.range n, f.coeff i * x ^ i * c ^ (n - i) := by
      apply Finset.dvd_sum
      intro i hi
      have : n - i ≠ 0 := by have := Finset.mem_range.mp hi; omega
      exact Dvd.dvd.mul_left (dvd_pow_self c this) _
    have e2 : x ^ n * f.coeff n = -(∑ i ∈ Finset.range n, f.coeff i * x ^ i * c ^ (n - i)) := by
      rw [eq_neg_iff_add_eq_zero, add_comm, mul_comm]; exact hS
    rw [e2]; exact hT.neg_right
  have hℓ : Polynomial.aeval u (Polynomial.C c * Polynomial.X - Polynomial.C x) = 0 := by
    rw [map_sub, map_mul, Polynomial.aeval_C, Polynomial.aeval_X, Polynomial.aeval_C, mul_comm, hu,
      sub_self]
  have main : ∀ (n : ℕ) (f : Polynomial R), f.natDegree ≤ n → Polynomial.aeval u f = 0 →
      f ∈ Ideal.span {Polynomial.C c * Polynomial.X - Polynomial.C x} := by
    intro n
    induction n with
    | zero =>
      intro f hf hf0
      rw [Polynomial.eq_C_of_natDegree_le_zero hf] at hf0 ⊢
      rw [Polynomial.aeval_C] at hf0
      have h0 : f.coeff 0 = 0 := hinj (by rw [hf0, map_zero])
      rw [h0, map_zero]
      exact Ideal.zero_mem _
    | succ n ih =>
      intro f hf hf0
      obtain ⟨b, hb⟩ := cancel_pow (n + 1) _ (top_dvd (n + 1) f hf hf0)
      have hqmem : Polynomial.C b * Polynomial.X ^ n *
          (Polynomial.C c * Polynomial.X - Polynomial.C x) ∈
          Ideal.span {Polynomial.C c * Polynomial.X - Polynomial.C x} :=
        Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
      have hqe : Polynomial.C b * Polynomial.X ^ n *
          (Polynomial.C c * Polynomial.X - Polynomial.C x) =
          Polynomial.C (b * c) * Polynomial.X ^ (n + 1) - Polynomial.C (b * x) * Polynomial.X ^ n := by
        simp only [map_mul]; ring
      have hq0 : Polynomial.aeval u (Polynomial.C b * Polynomial.X ^ n *
          (Polynomial.C c * Polynomial.X - Polynomial.C x)) = 0 := by
        rw [map_mul, hℓ, mul_zero]
      have hqdeg : (Polynomial.C b * Polynomial.X ^ n *
          (Polynomial.C c * Polynomial.X - Polynomial.C x)).natDegree ≤ n + 1 := by
        rw [hqe]
        refine (Polynomial.natDegree_sub_le _ _).trans (max_le ?_ ?_)
        · exact Polynomial.natDegree_C_mul_X_pow_le _ _
        · exact (Polynomial.natDegree_C_mul_X_pow_le _ _).trans (Nat.le_succ n)
      set q := Polynomial.C b * Polynomial.X ^ n *
          (Polynomial.C c * Polynomial.X - Polynomial.C x) with hq
      have hg0 : Polynomial.aeval u (f - q) = 0 := by rw [map_sub, hf0, hq0, sub_zero]
      have hgdeg : (f - q).natDegree ≤ n + 1 :=
        (Polynomial.natDegree_sub_le _ _).trans (max_le hf hqdeg)
      have hgcoeff : (f - q).coeff (n + 1) = 0 := by
        rw [Polynomial.coeff_sub, hqe, Polynomial.coeff_sub, Polynomial.coeff_C_mul_X_pow,
          Polynomial.coeff_C_mul_X_pow, if_pos rfl, if_neg (by omega), hb]
        ring
      have hgdeg' : (f - q).natDegree ≤ n := by
        have := Polynomial.natDegree_le_pred hgdeg hgcoeff
        simpa using this
      have hgmem := ih (f - q) hgdeg' hg0
      have := Ideal.add_mem _ hgmem hqmem
      rwa [sub_add_cancel] at this
  intro f hf
  rw [RingHom.mem_ker] at hf
  exact main f.natDegree f le_rfl hf

theorem wcpa_dj_glt_cc_lcz_ps_facts : ∀ (A R : Type u) [CommRing A] [CommRing R]
    (e : R ≃+* PowerSeries A),
    (∀ (b : A) (s : R), e.symm (PowerSeries.C b) ∣ e.symm PowerSeries.X * s →
      e.symm (PowerSeries.C b) ∣ s) ∧
    (∀ (r : R) (n : ℕ), ∃ (p : Polynomial A) (r' : R),
      r = Polynomial.eval₂ (e.symm.toRingHom.comp PowerSeries.C) (e.symm PowerSeries.X) p +
        e.symm PowerSeries.X ^ n * r') ∧
    (Nontrivial A → ¬ IsUnit (e.symm PowerSeries.X)) ∧
    (IsDomain A → IsDomain R ∧ e.symm PowerSeries.X ≠ 0 ∧
      ∀ b : A, b ≠ 0 → e.symm (PowerSeries.C b) ≠ 0) :=
by
  intro A R _ _ e
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro b s hdiv
    have h1 : PowerSeries.C b ∣ PowerSeries.X * e s := by
      have := map_dvd e hdiv
      rwa [map_mul, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply] at this
    obtain ⟨g, hg⟩ := h1
    have h2 : e s = PowerSeries.C b * PowerSeries.mk (fun n => PowerSeries.coeff (n + 1) g) := by
      ext n
      rw [PowerSeries.coeff_C_mul, PowerSeries.coeff_mk, ← PowerSeries.coeff_C_mul, ← hg,
        PowerSeries.coeff_succ_X_mul]
    refine ⟨e.symm (PowerSeries.mk (fun n => PowerSeries.coeff (n + 1) g)), ?_⟩
    rw [← map_mul, ← h2, RingEquiv.symm_apply_apply]
  · intro r n
    set f := e r with hf
    have hdvd : PowerSeries.X ^ n ∣ f - (PowerSeries.trunc n f : PowerSeries A) := by
      rw [PowerSeries.X_pow_dvd_iff]
      intro m hm
      rw [map_sub, Polynomial.coeff_coe, PowerSeries.coeff_trunc, if_pos hm, sub_self]
    obtain ⟨q, hq⟩ := hdvd
    refine ⟨PowerSeries.trunc n f, e.symm q, ?_⟩
    have hf' : f = (PowerSeries.trunc n f : PowerSeries A) + PowerSeries.X ^ n * q := by
      rw [← hq]; ring
    have hp : e.symm (PowerSeries.trunc n f : PowerSeries A) =
        Polynomial.eval₂ (e.symm.toRingHom.comp PowerSeries.C) (e.symm PowerSeries.X)
          (PowerSeries.trunc n f) := by
      conv_lhs => rw [← Polynomial.eval₂_C_X_eq_coe]
      exact Polynomial.hom_eval₂ _ PowerSeries.C e.symm.toRingHom PowerSeries.X
    rw [← hp, ← map_pow, ← map_mul, ← map_add, ← hf', hf, RingEquiv.symm_apply_apply]
  · intro hA hu
    have h1 : IsUnit (PowerSeries.X : PowerSeries A) := by
      have := hu.map e
      rwa [RingEquiv.apply_symm_apply] at this
    rw [PowerSeries.isUnit_iff_constantCoeff, PowerSeries.constantCoeff_X] at h1
    exact not_isUnit_zero h1
  · intro hA
    refine ⟨?_, ?_, ?_⟩
    · exact Function.Injective.isDomain (e : R →+* PowerSeries A) e.injective
    · rw [Ne, map_eq_zero_iff e.symm e.symm.injective]
      exact PowerSeries.X_ne_zero
    · intro b hb
      rw [Ne, map_eq_zero_iff e.symm e.symm.injective]
      intro hc
      apply hb
      apply PowerSeries.C_injective
      rw [hc, map_zero]

theorem wcpa_dj_glt_cc_lcz_levels : ∀ (A R L : Type u) [CommRing A] [CommRing R] [CommRing L]
    [Algebra R L] (e : R ≃+* PowerSeries A) (a : A) (u : L),
    (∀ (D : Type u) [CommRing D] (ι : A →+* D) (y : D) (n : ℕ), y ^ n = 0 →
      ∃ σ : PowerSeries A →+* D, σ.comp PowerSeries.C = ι ∧ σ PowerSeries.X = y) →
    (∀ (r : R) (n : ℕ), ∃ (p : Polynomial A) (r' : R),
      r = Polynomial.eval₂ (e.symm.toRingHom.comp PowerSeries.C) (e.symm PowerSeries.X) p +
        e.symm PowerSeries.X ^ n * r') →
    u * algebraMap R L (e.symm (PowerSeries.C a)) = algebraMap R L (e.symm PowerSeries.X) →
    RingHom.ker (Polynomial.aeval u : Polynomial R →ₐ[R] L).toRingHom ≤
      Ideal.span {Polynomial.C (e.symm (PowerSeries.C a)) * Polynomial.X -
        Polynomial.C (e.symm PowerSeries.X)} →
    ∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk (((Ideal.span {Polynomial.C a * Polynomial.X}).map
        (Polynomial.eval₂RingHom ((algebraMap R (Algebra.adjoin R {u})).comp
          (e.symm.toRingHom.comp PowerSeries.C)) ⟨u, Algebra.self_mem_adjoin_singleton R u⟩)) ^ n)).comp
        (Polynomial.eval₂RingHom ((algebraMap R (Algebra.adjoin R {u})).comp
          (e.symm.toRingHom.comp PowerSeries.C)) ⟨u, Algebra.self_mem_adjoin_singleton R u⟩)) ∧
      RingHom.ker ((Ideal.Quotient.mk (((Ideal.span {Polynomial.C a * Polynomial.X}).map
        (Polynomial.eval₂RingHom ((algebraMap R (Algebra.adjoin R {u})).comp
          (e.symm.toRingHom.comp PowerSeries.C)) ⟨u, Algebra.self_mem_adjoin_singleton R u⟩)) ^ n)).comp
        (Polynomial.eval₂RingHom ((algebraMap R (Algebra.adjoin R {u})).comp
          (e.symm.toRingHom.comp PowerSeries.C)) ⟨u, Algebra.self_mem_adjoin_singleton R u⟩)) =
        (Ideal.span {Polynomial.C a * Polynomial.X}) ^ n :=
by
  intro A R L _ _ _ _ e a u H1 H2 H3 H4 n
  classical

  have crit : ∀ (B T : Type u) [CommRing B] [CommRing T] (g : B →+* T) (w : B) (n : ℕ),
      (∀ t : T, ∃ b : B, t - g b ∈ Ideal.span {g w ^ n}) →
      (∃ σ : T →+* B ⧸ (Ideal.span {w}) ^ n, σ.comp g = Ideal.Quotient.mk ((Ideal.span {w}) ^ n)) →
      Function.Surjective ((Ideal.Quotient.mk (((Ideal.span {w}).map g) ^ n)).comp g) ∧
      RingHom.ker ((Ideal.Quotient.mk (((Ideal.span {w}).map g) ^ n)).comp g) =
        (Ideal.span {w}) ^ n := by
    intro B T _ _ g w n hi hii
    have hJ : ((Ideal.span {w}).map g) ^ n = Ideal.span {g w ^ n} := by
      rw [Ideal.map_span, Set.image_singleton, Ideal.span_singleton_pow]
    obtain ⟨σ, hσ⟩ := hii
    refine ⟨?_, ?_⟩
    · intro q
      obtain ⟨t, rfl⟩ := Ideal.Quotient.mk_surjective q
      obtain ⟨b, hb⟩ := hi t
      refine ⟨b, ?_⟩
      rw [RingHom.comp_apply, Ideal.Quotient.eq, hJ]
      have h := Submodule.neg_mem _ hb
      rwa [neg_sub] at h
    · apply le_antisymm
      · intro b hb
        rw [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, hJ,
          Ideal.mem_span_singleton'] at hb
        obtain ⟨s, hs⟩ := hb
        have h1 : σ (g b) = Ideal.Quotient.mk _ b := RingHom.congr_fun hσ b
        have h2 : σ (g w) = Ideal.Quotient.mk _ w := RingHom.congr_fun hσ w
        have h3 : Ideal.Quotient.mk ((Ideal.span {w}) ^ n) (w ^ n) = 0 :=
          Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.pow_mem_pow (Ideal.mem_span_singleton_self w) n)
        rw [← Ideal.Quotient.eq_zero_iff_mem, ← h1, ← hs, map_mul, map_pow, h2, ← map_pow, h3,
          mul_zero]
      · intro b hb
        rw [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, ← Ideal.map_pow]
        exact Ideal.mem_map_of_mem g hb
  set T := Algebra.adjoin R {u} with hT
  set ub : T := ⟨u, Algebra.self_mem_adjoin_singleton R u⟩ with hub
  set j : A →+* R := e.symm.toRingHom.comp PowerSeries.C with hj
  set xR : R := e.symm PowerSeries.X with hxR
  set g : Polynomial A →+* T := Polynomial.eval₂RingHom ((algebraMap R T).comp j) ub with hg
  set w : Polynomial A := Polynomial.C a * Polynomial.X with hw
  have hgC : ∀ b : A, g (Polynomial.C b) = algebraMap R T (j b) := by
    intro b
    rw [hg, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C, RingHom.comp_apply]
  have hgX : g Polynomial.X = ub := by
    rw [hg, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
  have hgw : g w = algebraMap R T xR := by
    rw [hw, map_mul, hgC, hgX]
    apply Subtype.ext
    show algebraMap R L (j a) * u = algebraMap R L xR
    rw [mul_comm]
    exact H3
  clear_value g w
  have haeval : ∀ f : Polynomial R, ((Polynomial.aeval ub f : T) : L) = Polynomial.aeval u f := by
    intro f
    exact (Polynomial.aeval_algHom_apply T.val ub f).symm
  have hεsurj : ∀ t : T, ∃ f : Polynomial R, Polynomial.aeval ub f = t := by
    intro t
    have ht : (t : L) ∈ (Polynomial.aeval u : Polynomial R →ₐ[R] L).range := by
      rw [← Algebra.adjoin_singleton_eq_range_aeval]
      exact t.2
    rw [AlgHom.mem_range] at ht
    obtain ⟨f, hf⟩ := ht
    exact ⟨f, Subtype.ext (by rw [haeval]; exact hf)⟩

  have hsurj : ∀ t : T, ∃ b : Polynomial A, t - g b ∈ Ideal.span {g w ^ n} := by
    intro t
    obtain ⟨f, rfl⟩ := hεsurj t
    induction f using Polynomial.induction_on
    next r =>
      obtain ⟨p, r', hr⟩ := H2 r n
      refine ⟨Polynomial.eval₂ Polynomial.C w p, ?_⟩
      have e1 : g (Polynomial.eval₂ Polynomial.C w p) =
          algebraMap R T (Polynomial.eval₂ j xR p) := by
        rw [Polynomial.hom_eval₂, Polynomial.hom_eval₂, hgw,
          show g.comp Polynomial.C = (algebraMap R T).comp j from RingHom.ext hgC]
      rw [Polynomial.aeval_C, e1, hr, map_add (algebraMap R T), map_mul (algebraMap R T),
        map_pow (algebraMap R T), ← hgw, add_sub_cancel_left]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
    next p q hp hq =>
      obtain ⟨b1, h1⟩ := hp
      obtain ⟨b2, h2⟩ := hq
      refine ⟨b1 + b2, ?_⟩
      rw [map_add (Polynomial.aeval ub), map_add g]
      convert Ideal.add_mem _ h1 h2 using 1
      ring
    next k r ih =>
      obtain ⟨b, hb⟩ := ih
      refine ⟨b * Polynomial.X, ?_⟩
      have e2 : Polynomial.aeval ub (Polynomial.C r * Polynomial.X ^ (k + 1)) =
          Polynomial.aeval ub (Polynomial.C r * Polynomial.X ^ k) * ub := by
        rw [pow_succ, ← mul_assoc, map_mul (Polynomial.aeval ub), Polynomial.aeval_X]
      rw [e2, map_mul g b Polynomial.X, hgX]
      convert Ideal.mul_mem_right ub _ hb using 1
      ring

  have hret : ∃ σ : T →+* Polynomial A ⧸ (Ideal.span {w}) ^ n,
      σ.comp g = Ideal.Quotient.mk ((Ideal.span {w}) ^ n) := by
    set π := Ideal.Quotient.mk ((Ideal.span {w}) ^ n) with hπ
    have hy : (π w) ^ n = 0 := by
      rw [← map_pow, hπ, Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.pow_mem_pow (Ideal.mem_span_singleton_self w) n
    have hπw : π w = π (Polynomial.C a) * π Polynomial.X := by
      rw [← map_mul π, ← hw]
    obtain ⟨σ0, hσ0C, hσ0X⟩ := H1 _ (π.comp Polynomial.C) (π w) n hy
    let ρ : R →+* Polynomial A ⧸ (Ideal.span {w}) ^ n := σ0.comp e.toRingHom
    have hρj : ∀ b : A, ρ (j b) = π (Polynomial.C b) := by
      intro b
      show σ0 (e (e.symm (PowerSeries.C b))) = _
      rw [RingEquiv.apply_symm_apply]
      exact RingHom.congr_fun hσ0C b
    have hρx : ρ xR = π w := by
      show σ0 (e (e.symm PowerSeries.X)) = _
      rw [RingEquiv.apply_symm_apply, hσ0X]
    let Φ : Polynomial R →+* Polynomial A ⧸ (Ideal.span {w}) ^ n :=
      Polynomial.eval₂RingHom ρ (π Polynomial.X)
    let ε : Polynomial R →+* T := (Polynomial.aeval ub).toRingHom
    have hεsurj' : Function.Surjective ε := fun t => hεsurj t
    have hker : RingHom.ker ε ≤ RingHom.ker Φ := by
      intro f hf
      rw [RingHom.mem_ker] at hf
      have hf0 : Polynomial.aeval ub f = 0 := hf
      have hf' : f ∈ RingHom.ker (Polynomial.aeval u : Polynomial R →ₐ[R] L).toRingHom := by
        rw [RingHom.mem_ker]
        show Polynomial.aeval u f = 0
        rw [← haeval, hf0]
        rfl
      have h4 := H4 hf'
      rw [Ideal.mem_span_singleton'] at h4
      obtain ⟨s, rfl⟩ := h4
      have hz : Φ (Polynomial.C (e.symm (PowerSeries.C a)) * Polynomial.X -
          Polynomial.C (e.symm PowerSeries.X)) = 0 := by
        show Polynomial.eval₂ ρ (π Polynomial.X) (Polynomial.C (j a) * Polynomial.X -
          Polynomial.C xR) = 0
        rw [Polynomial.eval₂_sub, Polynomial.eval₂_mul, Polynomial.eval₂_C, Polynomial.eval₂_X,
          Polynomial.eval₂_C, hρj, hρx, hπw, sub_self]
      rw [RingHom.mem_ker, map_mul, hz, mul_zero]
    refine ⟨RingHom.liftOfSurjective ε hεsurj' ⟨Φ, hker⟩, ?_⟩
    apply Polynomial.ringHom_ext
    · intro b
      have hb : g (Polynomial.C b) = ε (Polynomial.C (j b)) := by
        rw [hgC]
        show _ = Polynomial.aeval ub (Polynomial.C (j b))
        rw [Polynomial.aeval_C]
      rw [RingHom.comp_apply, hb, RingHom.liftOfSurjective_comp_apply]
      show Polynomial.eval₂ ρ (π Polynomial.X) (Polynomial.C (j b)) = _
      rw [Polynomial.eval₂_C, hρj]
    · have hx : g Polynomial.X = ε Polynomial.X := by
        rw [hgX]
        show _ = Polynomial.aeval ub Polynomial.X
        rw [Polynomial.aeval_X]
      rw [RingHom.comp_apply, hx, RingHom.liftOfSurjective_comp_apply]
      show Polynomial.eval₂ ρ (π Polynomial.X) Polynomial.X = _
      rw [Polynomial.eval₂_X]
  exact crit _ _ g w n hsurj hret

theorem wcpa_dj_glt_cc_lcz_levels_completion : ∀ (B T : Type u) [CommRing B] [CommRing T]
    [IsNoetherianRing T] (g : B →+* T) (J : Ideal B),
    (∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk ((J.map g) ^ n)).comp g) ∧
      RingHom.ker ((Ideal.Quotient.mk ((J.map g) ^ n)).comp g) = J ^ n) →
    ∀ (𝔫 : Ideal T) [𝔫.IsPrime], J ≤ 𝔫.comap g →
    IsDomain (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap g)))
      (Localization.AtPrime (𝔫.comap g))) →
    IsIntegrallyClosed (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap g)))
      (Localization.AtPrime (𝔫.comap g))) →
    IsDomain (Localization.AtPrime 𝔫) ∧ IsIntegrallyClosed (Localization.AtPrime 𝔫) ∧
    ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap g)))
        (Localization.AtPrime (𝔫.comap g)) ≃+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫)) (Localization.AtPrime 𝔫),
      ε.toRingHom.comp ((algebraMap (Localization.AtPrime (𝔫.comap g))
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (𝔫.comap g)))
            (Localization.AtPrime (𝔫.comap g)))).comp (algebraMap B (Localization.AtPrime (𝔫.comap g)))) =
        (algebraMap (Localization.AtPrime 𝔫)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔫)) (Localization.AtPrime 𝔫))).comp
          ((algebraMap T (Localization.AtPrime 𝔫)).comp g) :=
by
  intro B T _ _ _ g J hlev 𝔫 _ hJ hdom hic
  obtain ⟨P', hP', hP'c, levP'⟩ :=
    wcpa_dj_glt_cc_level_prime B T g J hlev (𝔫.comap g) hJ
  have hJn : J.map g ≤ 𝔫 := Ideal.map_le_iff_le_comap.mpr hJ
  have hJP' : J.map g ≤ P' := Ideal.map_le_iff_le_comap.mpr (by rw [hP'c]; exact hJ)
  have hEq : P' = 𝔫 := by
    ext y
    obtain ⟨b, hb⟩ := (hlev 1).1 (Ideal.Quotient.mk ((J.map g) ^ 1) y)
    have hδ : g b - y ∈ J.map g := by
      have := Ideal.Quotient.eq.mp hb
      simpa [pow_one] using this
    have h1 : g b ∈ P' ↔ g b ∈ 𝔫 := by
      change b ∈ P'.comap g ↔ b ∈ 𝔫.comap g
      rw [hP'c]
    constructor
    · intro hy
      have hgb : g b ∈ P' := by
        have := P'.add_mem (hJP' hδ) hy
        simpa using this
      have hgb' := h1.mp hgb
      have := 𝔫.sub_mem hgb' (hJn hδ)
      simpa using this
    · intro hy
      have hgb : g b ∈ 𝔫 := by
        have := 𝔫.add_mem (hJn hδ) hy
        simpa using this
      have hgb' := h1.mpr hgb
      have := P'.sub_mem hgb' (hJP' hδ)
      simpa using this
  subst hEq
  obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_completion_of_levels B T g (P'.comap g) P' rfl levP'
  haveI : IsDomain (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P'))
      (Localization.AtPrime P')) := MulEquiv.isDomain _ ε.symm.toMulEquiv
  haveI : IsIntegrallyClosed (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P'))
      (Localization.AtPrime P')) := IsIntegrallyClosed.of_equiv ε
  obtain ⟨-, hTdom, hTic⟩ := wcpa_dj_glt_cc_normal_descent (Localization.AtPrime P')
    inferInstance inferInstance
  exact ⟨hTdom, hTic, ε, hε⟩

theorem wcpa_dj_glt_cc_lcz_nc_loc : ∀ (R : Type u) [CommRing R] {N : ℕ} (F : Fin (N + 1) → R)
    (k₀ : Fin (N + 1)) [IsDomain (Localization.Away (F k₀))]
    (T : Type u) [CommRing T] (jT : R →+* T) (ιT : T →+* wcpaDjGltNC R F k₀),
    Function.Injective ιT → ιT.comp jT = wcpaDjGltNCMap R F k₀ →
    (∀ i, ∃ z : T, @Subtype.val (Localization.Away (F k₀))
      (fun w => w ∈ integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))) (ιT z) =
      IsLocalization.mk' (Localization.Away (F k₀)) (F i)
        (⟨F k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (F k₀))) →
    (∀ l : Localization.Away (F k₀), ∃ r f : R, algebraMap R (Localization.Away (F k₀)) f ≠ 0 ∧
      algebraMap R (Localization.Away (F k₀)) f * l = algebraMap R (Localization.Away (F k₀)) r) →
    ∀ (Q : Ideal (wcpaDjGltNC R F k₀)) [Q.IsPrime],
    IsDomain (Localization.AtPrime (Q.comap ιT)) → IsIntegrallyClosed (Localization.AtPrime (Q.comap ιT)) →
    ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q)) (Localization.AtPrime Q) ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime (Q.comap ιT)))
          (Localization.AtPrime (Q.comap ιT)),
      ε.toRingHom.comp ((algebraMap (Localization.AtPrime Q) (AdicCompletion
          (IsLocalRing.maximalIdeal (Localization.AtPrime Q)) (Localization.AtPrime Q))).comp
          ((algebraMap (wcpaDjGltNC R F k₀) (Localization.AtPrime Q)).comp ιT)) =
        (algebraMap (Localization.AtPrime (Q.comap ιT)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Localization.AtPrime (Q.comap ιT)))
          (Localization.AtPrime (Q.comap ιT)))).comp
          (algebraMap T (Localization.AtPrime (Q.comap ιT))) :=
by
  intro R _ N F k₀ _ T _ jT ιT hιinj hιj hgen hden Q _ hTdom hTic
  classical

  have adic : ∀ (R₁ R₂ : Type u) [CommRing R₁] [CommRing R₂]
      [IsLocalRing R₁] [IsLocalRing R₂] (f : R₁ ≃+* R₂),
      ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal R₁) R₁ ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal R₂) R₂,
        ε.toRingHom.comp (algebraMap R₁ (AdicCompletion (IsLocalRing.maximalIdeal R₁) R₁)) =
          (algebraMap R₂ (AdicCompletion (IsLocalRing.maximalIdeal R₂) R₂)).comp f.toRingHom := by
    intro R₁ R₂ _ _ _ _ f
    have key : ∀ {A B : Type u} [CommRing A] [CommRing B] (I : Ideal A) (J : Ideal B)
        (φ : A →+* B) (hIJ : I ≤ Ideal.comap φ J),
        ∃ Φ : AdicCompletion I A →+* AdicCompletion J B, ∀ (x : AdicCompletion I A) (n : ℕ) (a : A),
          AdicCompletion.evalₐ I n x = Ideal.Quotient.mk (I ^ n) a →
          AdicCompletion.evalₐ J n (Φ x) = Ideal.Quotient.mk (J ^ n) (φ a) := by
      intro A B _ _ I J φ hIJ
      have hn : ∀ n : ℕ, I ^ n ≤ Ideal.comap φ (J ^ n) := fun n =>
        le_trans (Ideal.pow_right_mono hIJ n) (Ideal.le_comap_pow φ n)
      let g : ∀ n : ℕ, AdicCompletion I A →+* B ⧸ J ^ n := fun n =>
        (Ideal.quotientMap (J ^ n) φ (hn n)).comp
          (AdicCompletion.evalₐ I n : AdicCompletion I A →+* A ⧸ I ^ n)
      have hg : ∀ {m n : ℕ} (hle : m ≤ n), (Ideal.Quotient.factorPow J hle).comp (g n) = g m := by
        intro m n hle
        ext x
        obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective I A x
        simp only [g, RingHom.comp_apply, AlgHom.coe_toRingHom, AdicCompletion.evalₐ_mk,
          Ideal.quotientMap_mk]
        have h1 := AdicCompletion.Ideal.mk_eq_mk I hle s
        have h2 := congrArg (Ideal.quotientMap (J ^ m) φ (hn m)) h1
        simp only [Ideal.quotientMap_mk] at h2
        rw [← h2]
        rfl
      refine ⟨AdicCompletion.liftRingHom J g hg, ?_⟩
      intro x n a hx
      rw [AdicCompletion.evalₐ_liftRingHom]
      simp only [g, RingHom.comp_apply, AlgHom.coe_toRingHom, hx, Ideal.quotientMap_mk]
    have h1 : IsLocalRing.maximalIdeal R₁ ≤
        Ideal.comap (f : R₁ →+* R₂) (IsLocalRing.maximalIdeal R₂) := by
      intro x hx
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hx
      intro hu
      apply hx
      simpa using (MulEquiv.isUnit_map f).mp hu
    have h2 : IsLocalRing.maximalIdeal R₂ ≤
        Ideal.comap (f.symm : R₂ →+* R₁) (IsLocalRing.maximalIdeal R₁) := by
      intro x hx
      rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hx
      intro hu
      apply hx
      simpa using (MulEquiv.isUnit_map f.symm).mp hu
    obtain ⟨Φ, hΦ⟩ := key _ _ (f : R₁ →+* R₂) h1
    obtain ⟨Ψ, hΨ⟩ := key _ _ (f.symm : R₂ →+* R₁) h2
    have hΦΨ : Φ.comp Ψ = RingHom.id _ := by
      ext1 y
      apply AdicCompletion.ext_evalₐ
      intro n
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ _ n y)
      rw [RingHom.comp_apply, hΦ _ n (f.symm b) (hΨ y n b hb.symm), RingHom.id_apply, ← hb]
      simp
    have hΨΦ : Ψ.comp Φ = RingHom.id _ := by
      ext1 y
      apply AdicCompletion.ext_evalₐ
      intro n
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ _ n y)
      rw [RingHom.comp_apply, hΨ _ n (f b) (hΦ y n b hb.symm), RingHom.id_apply, ← hb]
      simp
    refine ⟨RingEquiv.ofRingHom Φ Ψ hΦΨ hΨΦ, ?_⟩
    ext1 r
    apply AdicCompletion.ext_evalₐ
    intro n
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe,
      RingEquiv.ofRingHom_apply, AdicCompletion.algebraMap_apply, Algebra.algebraMap_self_apply]
    rw [hΦ _ n r (AdicCompletion.evalₐ_of _ _ r), AdicCompletion.evalₐ_of]
    rfl

  have s3 : ∀ (T NC : Type u) [CommRing T] [CommRing NC] [IsDomain NC] (ι : T →+* NC),
      Function.Injective ι → ∀ (𝔫 : Ideal T) [𝔫.IsPrime], IsDomain (Localization.AtPrime 𝔫) →
      IsIntegrallyClosed (Localization.AtPrime 𝔫) → ∀ (z : NC) (a b : T), ι b ≠ 0 →
      z * ι b = ι a → ∀ q : Polynomial T, q.Monic → q.eval₂ ι z = 0 →
      ∃ τ s : T, s ∉ 𝔫 ∧ z * ι s = ι τ := by
    intro T NC _ _ _ ι hι 𝔫 _ hdom hic z a b hb hab q hqm hq
    haveI := hdom
    haveI := hic
    haveI hfr : IsFractionRing (Localization.AtPrime 𝔫) (FractionRing (Localization.AtPrime 𝔫)) :=
      inferInstance
    have hb0 : b ≠ 0 := fun h => hb (by rw [h, map_zero])
    have hle : 𝔫.primeCompl ≤ nonZeroDivisors T := by
      haveI : IsDomain T := Function.Injective.isDomain ι hι
      exact le_nonZeroDivisors_of_noZeroDivisors
        (fun h => (Ideal.mem_primeCompl_iff.mp h) 𝔫.zero_mem)
    obtain ⟨φ, hφdef⟩ : ∃ φ : T →+* FractionRing (Localization.AtPrime 𝔫),
        φ = (algebraMap (Localization.AtPrime 𝔫) (FractionRing (Localization.AtPrime 𝔫))).comp
          (algebraMap T (Localization.AtPrime 𝔫)) := ⟨_, rfl⟩
    have hφ : Function.Injective φ := by
      rw [hφdef]
      exact (IsFractionRing.injective (Localization.AtPrime 𝔫)
        (FractionRing (Localization.AtPrime 𝔫))).comp
          (IsLocalization.injective (Localization.AtPrime 𝔫) hle)
    have hφb : φ b ≠ 0 := (map_ne_zero_iff φ hφ).mpr hb0
    have hs1 : (q.scaleRoots b).eval a = 0 := by
      apply hι
      rw [map_zero, ← Polynomial.eval₂_at_apply, show ι a = ι b * z by rw [← hab, mul_comm],
        Polynomial.scaleRoots_eval₂_mul, hq, mul_zero]
    obtain ⟨x, hxdef⟩ : ∃ x : FractionRing (Localization.AtPrime 𝔫), x = φ a / φ b := ⟨_, rfl⟩
    have hx : φ b * x = φ a := by
      rw [hxdef, mul_div_assoc', mul_comm, mul_div_assoc, div_self hφb, mul_one]
    have heval : q.eval₂ φ x = 0 := by
      have h := Polynomial.scaleRoots_eval₂_mul (p := q) φ x b
      rw [hx, Polynomial.eval₂_at_apply, hs1, map_zero] at h
      exact (mul_eq_zero.mp h.symm).resolve_left (pow_ne_zero _ hφb)
    have hint : IsIntegral (Localization.AtPrime 𝔫) x :=
      ⟨q.map (algebraMap T (Localization.AtPrime 𝔫)), hqm.map _, by
        rw [Polynomial.eval₂_map, ← hφdef]; exact heval⟩
    obtain ⟨y, hy⟩ := (IsIntegrallyClosed.isIntegral_iff (R := Localization.AtPrime 𝔫)
      (K := FractionRing (Localization.AtPrime 𝔫))).mp hint
    obtain ⟨p, hyp⟩ := IsLocalization.mk'_surjective 𝔫.primeCompl y
    obtain ⟨τ, s⟩ := p
    dsimp only at hyp
    subst hyp
    have hspec := IsLocalization.mk'_spec (Localization.AtPrime 𝔫) τ s
    have hxs : x * φ s = φ τ := by
      rw [← hy, hφdef]
      have := congrArg (algebraMap (Localization.AtPrime 𝔫)
        (FractionRing (Localization.AtPrime 𝔫))) hspec
      rw [map_mul] at this
      exact this
    have hτb : τ * b = a * s := by
      apply hφ
      rw [map_mul, map_mul, ← hxs, ← hx]
      ring
    refine ⟨τ, s, Ideal.mem_primeCompl_iff.mp s.2, ?_⟩
    apply mul_right_cancel₀ hb
    calc z * ι s * ι b = (z * ι b) * ι s := by ring
      _ = ι (a * s) := by rw [hab, map_mul]
      _ = ι (τ * b) := by rw [hτb]
      _ = ι τ * ι b := map_mul _ _ _

  have s4 : ∀ (T NC : Type u) [CommRing T] [CommRing NC] [IsDomain NC] (ι : T →+* NC),
      Function.Injective ι → ∀ (Q : Ideal NC) [Q.IsPrime],
      (∀ z : NC, ∃ τ s : T, s ∉ Q.comap ι ∧ z * ι s = ι τ) →
      Function.Bijective (Localization.localRingHom (Q.comap ι) Q ι rfl) := by
    intro T NC _ _ _ ι hι Q _ hwit
    constructor
    · rw [injective_iff_map_eq_zero]
      intro w hw
      obtain ⟨p, hp⟩ := IsLocalization.mk'_surjective (Q.comap ι).primeCompl w
      obtain ⟨t, s⟩ := p
      subst hp
      rw [Localization.localRingHom_mk', IsLocalization.mk'_eq_zero_iff] at hw
      obtain ⟨⟨m, hm⟩, hmt⟩ := hw
      have hm0 : m ≠ 0 := by
        intro h
        rw [h] at hm
        exact (Ideal.mem_primeCompl_iff.mp hm) Q.zero_mem
      have ht : ι t = 0 := (mul_eq_zero.mp hmt).resolve_left hm0
      have ht0 : t = 0 := hι (by rw [ht, map_zero])
      simp only [ht0, IsLocalization.mk'_zero]
    · intro v
      obtain ⟨p, hp⟩ := IsLocalization.mk'_surjective Q.primeCompl v
      obtain ⟨z, w⟩ := p
      subst hp
      obtain ⟨τ₁, s₁, hs₁, h₁⟩ := hwit z
      obtain ⟨τ₂, s₂, hs₂, h₂⟩ := hwit (w : NC)
      have hτ₂ : τ₂ ∉ Q.comap ι := by
        intro h
        rw [Ideal.mem_comap, ← h₂] at h
        rcases Ideal.IsPrime.mem_or_mem ‹Q.IsPrime› h with h | h
        · exact (Ideal.mem_primeCompl_iff.mp w.2) h
        · exact hs₂ (Ideal.mem_comap.mpr h)
      have hd : s₁ * τ₂ ∈ (Q.comap ι).primeCompl := Ideal.mem_primeCompl_iff.mpr (fun h =>
        (Ideal.IsPrime.mem_or_mem inferInstance h).elim hs₁ hτ₂)
      refine ⟨IsLocalization.mk' (Localization.AtPrime (Q.comap ι)) (τ₁ * s₂) ⟨s₁ * τ₂, hd⟩, ?_⟩
      rw [Localization.localRingHom_mk', IsLocalization.mk'_eq_iff_eq]
      congr 1
      show (w : NC) * ι (τ₁ * s₂) = ι (s₁ * τ₂) * z
      rw [map_mul, map_mul, ← h₁, ← h₂]
      ring

  obtain ⟨v, hv⟩ : ∃ v : wcpaDjGltNC R F k₀ →+* Localization.Away (F k₀), ∀ z,
      v z = @Subtype.val (Localization.Away (F k₀))
        (fun w => w ∈ integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))) z :=
    ⟨(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))).val.toRingHom,
      fun _ => rfl⟩
  have hv_inj : Function.Injective v := by
    intro a b h
    rw [hv, hv] at h
    exact Subtype.ext h
  haveI hNCdom : IsDomain (wcpaDjGltNC R F k₀) := Function.Injective.isDomain v hv_inj
  have hvj : ∀ r : R, v (ιT (jT r)) = algebraMap R (Localization.Away (F k₀)) r := by
    intro r
    rw [show ιT (jT r) = wcpaDjGltNCMap R F k₀ r from RingHom.congr_fun hιj r, hv]
    rfl
  have hrange : ∀ y ∈ wcpaDjChart R F k₀, ∃ t : T, v (ιT t) = y := by
    intro y hy
    let S' : Subalgebra R (Localization.Away (F k₀)) :=
      { (v.comp ιT).range with
        algebraMap_mem' := fun r => RingHom.mem_range.mpr ⟨jT r, hvj r⟩ }
    have hle : wcpaDjChart R F k₀ ≤ S' := by
      unfold wcpaDjChart
      rw [Algebra.adjoin_le_iff]
      rintro _ ⟨i, rfl⟩
      obtain ⟨t, ht⟩ := hgen i
      exact RingHom.mem_range.mpr ⟨t, by rw [RingHom.comp_apply, hv]; exact ht⟩
    obtain ⟨t, ht⟩ := RingHom.mem_range.mp (hle hy)
    exact ⟨t, ht⟩
  have hwit : ∀ z : wcpaDjGltNC R F k₀, ∃ τ s : T, s ∉ Q.comap ιT ∧ z * ιT s = ιT τ := by
    intro z
    obtain ⟨r, f, hf, hfr⟩ := hden (v z)
    have hb : ιT (jT f) ≠ 0 := by
      intro h
      apply hf
      rw [← hvj, h, map_zero]
    have hab : z * ιT (jT f) = ιT (jT r) := by
      apply hv_inj
      rw [map_mul, hvj, hvj, mul_comm]
      exact hfr
    have hzint : IsIntegral (wcpaDjChart R F k₀) (v z) := by
      rw [hv]
      exact (show ↥(integralClosure (wcpaDjChart R F k₀) (Localization.Away (F k₀))) from z).2
    obtain ⟨p, hpm, hp⟩ := hzint
    have hlift : p.map (algebraMap (wcpaDjChart R F k₀) (Localization.Away (F k₀))) ∈
        Polynomial.lifts (v.comp ιT) := by
      rw [Polynomial.lifts_iff_coeff_lifts]
      intro n
      rw [Polynomial.coeff_map]
      obtain ⟨t, ht⟩ := hrange _ (p.coeff n).2
      exact Set.mem_range.mpr ⟨t, ht⟩
    obtain ⟨q, hqmap, -, hqm⟩ := Polynomial.lifts_and_natDegree_eq_and_monic hlift (hpm.map _)
    have hq : q.eval₂ ιT z = 0 := by
      apply hv_inj
      rw [map_zero, Polynomial.hom_eval₂, ← Polynomial.eval_map, hqmap, Polynomial.eval_map]
      exact hp
    exact s3 T (wcpaDjGltNC R F k₀) ιT hιinj (Q.comap ιT) hTdom hTic z (jT r) (jT f) hb hab
      q hqm hq

  have hbij := s4 T (wcpaDjGltNC R F k₀) ιT hιinj Q hwit
  obtain ⟨σ, hσ'⟩ : ∃ σ : Localization.AtPrime (Q.comap ιT) ≃+* Localization.AtPrime Q,
      ∀ x, σ x = Localization.localRingHom (Q.comap ιT) Q ιT rfl x :=
    ⟨RingEquiv.ofBijective _ hbij, fun _ => rfl⟩
  obtain ⟨ε, hε⟩ := adic _ _ σ.symm
  refine ⟨ε, ?_⟩
  apply RingHom.ext
  intro t
  have hσ : σ.symm (algebraMap (wcpaDjGltNC R F k₀) (Localization.AtPrime Q) (ιT t)) =
      algebraMap T (Localization.AtPrime (Q.comap ιT)) t := by
    rw [RingEquiv.symm_apply_eq, hσ']
    exact (Localization.localRingHom_to_map (Q.comap ιT) Q ιT rfl t).symm
  have h1 := RingHom.congr_fun hε
    (algebraMap (wcpaDjGltNC R F k₀) (Localization.AtPrime Q) (ιT t))
  exact h1.trans (congrArg (algebraMap (Localization.AtPrime (Q.comap ιT)) (AdicCompletion
    (IsLocalRing.maximalIdeal (Localization.AtPrime (Q.comap ιT)))
    (Localization.AtPrime (Q.comap ιT)))) hσ)

theorem wcpa_dj_glt_cc_lc_toric_completion_z : ∀ (O₀ Oy : Type u) [CommRing O₀] [CommRing Oy]
    [IsLocalRing O₀] [IsLocalRing Oy] [IsNoetherianRing O₀] [IsNoetherianRing Oy]
    (φ : O₀ →+* Oy) [IsLocalHom φ], IsRegularLocalRing O₀ →
    ∀ (N : ℕ) (I : Finset (Fin (N + 1))) (n : ℕ) (t : Fin n → O₀) (α : Fin (N + 1) → ℤ)
      (β : Fin (N + 1) → Fin n → ℤ),
    (n : WithBot ℕ∞) = ringKrullDim O₀ →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal O₀ →
    ∀ x : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
    (∃ e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          PowerSeries.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
        e x = PowerSeries.X) →
    ∀ (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
      (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
      ∀ (Q : Ideal (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀)) [Q.IsPrime],
      Q.comap ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀).comp
          (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))) =
        IsLocalRing.maximalIdeal Oy →
      ∀ (lam : Fin n → ℕ)
          (u : Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)),
        u ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀) (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) →
        u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _
            (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ lam l) =
          algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) _ x →
        (∀ i, IsLocalization.mk' (Localization.Away (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀))
            (wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ i)
            (⟨wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀,
              Submonoid.mem_powers _⟩ :
              Submonoid.powers (wcpaDjGltMon I x (fun l =>
                algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ k₀)) ∈
          Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u}) →
        (∀ (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) [P.IsPrime],
          P.comap (Polynomial.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
            IsLocalRing.maximalIdeal O₀ →
          IsDomain (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P)) ∧
          IsIntegrallyClosed (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P))) →
        ∃ (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) (_ : P.IsPrime)
          (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q))
              (Localization.AtPrime Q) ≃+*
            AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
          P.comap (Polynomial.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
            IsLocalRing.maximalIdeal O₀ ∧
          ε.toRingHom.comp (wcpaDjGltCcPsi φ (wcpaDjGltMon I x (fun l =>
              algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀)
              k₀ Q) =
            wcpaDjGltCcSmMap O₀ P :=
by
  intro O₀ Oy _ _ _ _ _ _ φ _ hreg N I n t α β hdim hspan x hZ a₀ b₀ k₀ hk₀ hb
  generalize hFdef : wcpaDjGltMon I x (fun l => algebraMap Oy
    (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀ = F
  intro Q hQI hQ lam u hu hux hchart hnorm
  obtain ⟨e, he, hex⟩ := hZ

  have hj : ∀ a : O₀, algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ a) =
      e.symm (PowerSeries.C (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)) := by
    intro a
    apply e.injective
    rw [RingEquiv.apply_symm_apply]
    exact RingHom.congr_fun he a
  have hxe : x = e.symm PowerSeries.X := by rw [← hex, RingEquiv.symm_apply_apply]
  have hc : (∏ l, (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) ^ lam l) =
      e.symm (PowerSeries.C (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (t l)) ^ lam l)) := by
    rw [map_prod, map_prod]
    refine Finset.prod_congr rfl (fun l _ => ?_)
    rw [map_pow, map_pow, hj]
  set aA := ∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ lam l
    with haA
  have hu' : u * algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀))
      (e.symm (PowerSeries.C aA)) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀))
        (e.symm PowerSeries.X) := by
    rw [← hc, ← hxe]; exact hux

  haveI : IsRegularLocalRing O₀ := hreg
  obtain ⟨hAdom, -, hprime⟩ := wcpa_dj_mn_completion_regular O₀ n t hdim hspan
  haveI := hAdom
  obtain ⟨hps_div, hps_trunc, hps_nonunit, hps_dom⟩ :=
    wcpa_dj_glt_cc_lcz_ps_facts (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) e
  obtain ⟨hRdom, hX0, hC0⟩ := hps_dom hAdom
  haveI := hRdom
  have hx0 : x ≠ 0 := by rw [hxe]; exact hX0
  have htR0 : ∀ l, algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l)) ≠ 0 := by
    intro l; rw [hj]; exact hC0 _ (hprime l).ne_zero
  have hF0 : F k₀ ≠ 0 := by
    rw [← hFdef, wcpaDjGltMon, if_pos hk₀]
    exact mul_ne_zero (pow_ne_zero _ hx0)
      (Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (htR0 l))
  have hpow := powers_le_nonZeroDivisors_of_noZeroDivisors hF0
  haveI hLdom : IsDomain (Localization.Away (F k₀)) := IsLocalization.isDomain_localization hpow
  have hinj : Function.Injective (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Localization.Away (F k₀))) :=
    IsLocalization.injective (Localization.Away (F k₀)) hpow
  have hden : ∀ l : Localization.Away (F k₀), ∃ r f : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀)) f ≠ 0 ∧
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀)) f * l =
        algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀)) r := by
    intro l
    obtain ⟨⟨r, s⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (F k₀)) l
    refine ⟨r, s, ?_, IsLocalization.mk'_spec' _ r s⟩
    intro h0
    apply nonZeroDivisors.ne_zero (hpow s.2)
    apply hinj
    rw [h0, map_zero]

  obtain ⟨hRloc, -, hRnoeth, -, hmR, -⟩ := wcpa_dj_glt_st_completion_facts Oy
  haveI := hRnoeth

  have hST : wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀ ≤
      Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u} := by
    unfold wcpaDjChart
    rw [Algebra.adjoin_le_iff]
    rintro _ ⟨i, rfl⟩
    exact hchart i
  have hle : ∀ z ∈ Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u},
      z ∈ integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀)
        (Localization.Away (F k₀)) := by
    intro z hz
    have h1 : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u} ≤
        (integralClosure (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀)
          (Localization.Away (F k₀))).restrictScalars (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) :=
      Algebra.adjoin_le (Set.singleton_subset_iff.mpr hu)
    exact h1 hz
  have hNCext : ∀ a b : wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀,
      @Subtype.val (Localization.Away (F k₀)) (fun w => w ∈ integralClosure
        (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) (Localization.Away (F k₀))) a =
      @Subtype.val (Localization.Away (F k₀)) (fun w => w ∈ integralClosure
        (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) (Localization.Away (F k₀))) b →
      a = b :=
    fun a b h => Subtype.ext h
  obtain ⟨ιT, hιT⟩ : ∃ ιT : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u} →+*
      wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀,
      ∀ z, @Subtype.val (Localization.Away (F k₀)) (fun w => w ∈ integralClosure
        (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) (Localization.Away (F k₀)))
        (ιT z) = (z : Localization.Away (F k₀)) :=
    ⟨{ toFun := fun z => (⟨z.1, hle z.1 z.2⟩ : integralClosure
          (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) (Localization.Away (F k₀)))
       map_one' := rfl
       map_mul' := fun _ _ => rfl
       map_zero' := rfl
       map_add' := fun _ _ => rfl }, fun _ => rfl⟩
  haveI hTft : Algebra.FiniteType (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u}) :=
    Algebra.FiniteType.adjoin_of_finite (Set.finite_singleton u)
  haveI hTnoeth : IsNoetherianRing (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u}) :=
    Algebra.FiniteType.isNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u})
  have hker := wcpa_dj_glt_cc_lcz_kernel (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
    (Localization.Away (F k₀)) (e.symm (PowerSeries.C aA)) (e.symm PowerSeries.X) u hinj
    (hps_div aA) hu'
  have hlev := wcpa_dj_glt_cc_lcz_levels (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
    (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀)) e aA u
    (fun D _ ι y m hy => wcpa_dj_glt_cc_lcz_ps_nil_eval _ D ι y m hy)
    hps_trunc hu' hker
  set g : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) →+*
      Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u} :=
    Polynomial.eval₂RingHom ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u})).comp
        (e.symm.toRingHom.comp PowerSeries.C)) ⟨u, Algebra.self_mem_adjoin_singleton _ u⟩ with hgdef
  have hgC : ∀ b, ((g (Polynomial.C b) : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      {u}) : Localization.Away (F k₀)) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (Localization.Away (F k₀))
        (e.symm (PowerSeries.C b)) := by
    intro b
    rw [hgdef, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C]
    rfl
  have hgX : g (Polynomial.C aA * Polynomial.X) =
      algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
        (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u}) x := by
    apply Subtype.ext
    rw [map_mul, Subalgebra.coe_mul, hgC, hgdef, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
    show _ * u = algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Localization.Away (F k₀)) x
    rw [mul_comm, hu', ← hxe]

  have hNC : ∀ r, ιT (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u}) r) =
      wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀ r := by
    intro r; apply hNCext; rw [hιT]; rfl
  have hmemQ : ∀ y : Oy, wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀
      (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) y) ∈ Q ↔
      y ∈ IsLocalRing.maximalIdeal Oy :=
    fun y => by
      have h := SetLike.ext_iff.mp hQ y
      rw [Ideal.mem_comap] at h
      exact h
  have hxQ : wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀ x ∈ Q := by
    have hxnu : ¬ IsUnit x := by rw [hxe]; exact hps_nonunit inferInstance
    have hxm : x ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) :=
      (IsLocalRing.mem_maximalIdeal x).mpr hxnu
    rw [hmR] at hxm
    have hle2 : (IsLocalRing.maximalIdeal Oy).map
        (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)) ≤
        Q.comap (wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) := by
      rw [Ideal.map_le_iff_le_comap]
      intro y hy
      exact (hmemQ y).mpr hy
    exact hle2 hxm
  have hJ : Ideal.span {Polynomial.C aA * Polynomial.X} ≤ (Q.comap ιT).comap g := by
    rw [Ideal.span_le, Set.singleton_subset_iff]
    show ιT (g (Polynomial.C aA * Polynomial.X)) ∈ Q
    rw [hgX, hNC]; exact hxQ
  have hkey : ∀ a : O₀, ιT (g (Polynomial.C (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀)
      O₀) a))) = wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀
        (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ a)) := by
    intro a; apply hNCext; rw [hιT, hgC, ← hj]; rfl
  have hPc : ((Q.comap ιT).comap g).comap (Polynomial.C.comp
      (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
      IsLocalRing.maximalIdeal O₀ := by
    ext a
    have h2 : φ a ∈ IsLocalRing.maximalIdeal Oy ↔ a ∈ IsLocalRing.maximalIdeal O₀ := by
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
    have h3 : ιT (g (Polynomial.C (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)))
        ∈ Q ↔ φ a ∈ IsLocalRing.maximalIdeal Oy := by
      rw [hkey]; exact hmemQ (φ a)
    exact h3.trans h2
  haveI hn𝔫 : (Q.comap ιT).IsPrime := Ideal.comap_isPrime ιT Q
  haveI hnP : ((Q.comap ιT).comap g).IsPrime := Ideal.comap_isPrime g (Q.comap ιT)

  obtain ⟨hPdom, hPic⟩ := hnorm ((Q.comap ιT).comap g) hPc
  obtain ⟨hTdom, hTic, ε₆, hε₆⟩ := wcpa_dj_glt_cc_lcz_levels_completion _ _ g
    (Ideal.span {Polynomial.C aA * Polynomial.X}) hlev (Q.comap ιT) hJ hPdom hPic
  have hιTinj : Function.Injective ιT := fun a b h => by
    apply Subtype.ext
    have h' := congrArg (@Subtype.val (Localization.Away (F k₀)) (fun w => w ∈ integralClosure
        (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) (Localization.Away (F k₀)))) h
    rw [hιT, hιT] at h'
    exact h'
  have hιTj : ιT.comp (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u})) =
      wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀ :=
    RingHom.ext hNC
  have hgen : ∀ i, ∃ z : Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u},
      @Subtype.val (Localization.Away (F k₀)) (fun w => w ∈ integralClosure
        (wcpaDjChart (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀) (Localization.Away (F k₀)))
        (ιT z) = IsLocalization.mk' (Localization.Away (F k₀)) (F i)
          (⟨F k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (F k₀)) :=
    fun i => ⟨⟨_, hchart i⟩, hιT _⟩
  obtain ⟨εσ, hεσ⟩ := wcpa_dj_glt_cc_lcz_nc_loc (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀
    (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u})
    (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
      (Algebra.adjoin (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) {u})) ιT hιTinj hιTj hgen hden Q
    hTdom hTic
  refine ⟨(Q.comap ιT).comap g, inferInstance, εσ.trans ε₆.symm, hPc, ?_⟩
  apply RingHom.ext
  intro a
  show (εσ.trans ε₆.symm) ((algebraMap (Localization.AtPrime Q) (AdicCompletion
      (IsLocalRing.maximalIdeal (Localization.AtPrime Q)) (Localization.AtPrime Q)))
      (algebraMap (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀)
        (Localization.AtPrime Q) (wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) F k₀
          (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ a))))) =
    (algebraMap (Localization.AtPrime ((Q.comap ιT).comap g)) (AdicCompletion
      (IsLocalRing.maximalIdeal (Localization.AtPrime ((Q.comap ιT).comap g)))
      (Localization.AtPrime ((Q.comap ιT).comap g))))
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))
        (Localization.AtPrime ((Q.comap ιT).comap g))
        (Polynomial.C (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)))
  rw [RingEquiv.trans_apply, RingEquiv.symm_apply_eq, ← hkey a]
  have e1 := RingHom.congr_fun hεσ (g (Polynomial.C (algebraMap O₀
    (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)))
  have e3 := RingHom.congr_fun hε₆ (Polynomial.C (algebraMap O₀
    (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a))
  exact e1.trans e3.symm

theorem wcpa_dj_glt_cc_lc_b_classify : ∀ (O₀ : Type u) [CommRing O₀] [IsLocalRing O₀]
    [IsNoetherianRing O₀] (h : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
    (𝔭 : Ideal (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)) [𝔭.IsPrime],
    𝔭.comap ((algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) _).comp
      (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
      IsLocalRing.maximalIdeal O₀ →
    (h ∈ (IsLocalRing.maximalIdeal O₀).map
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
      ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
          (Localization.AtPrime 𝔭) ≃+*
        (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
          Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}),
      ε.toRingHom.comp (wcpaDjLcBMap O₀ h 𝔭) =
        (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
          (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)))) ∨
    (∃ (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) (_ : P.IsPrime)
      (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
          (Localization.AtPrime 𝔭) ≃+*
        AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
      P.comap (Polynomial.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
        IsLocalRing.maximalIdeal O₀ ∧
      ε.toRingHom.comp (wcpaDjLcBMap O₀ h 𝔭) = wcpaDjGltCcSmMap O₀ P) :=
by
  have levels_completion : ∀ (B S : Type u) [CommRing B] [CommRing S] (𝔭 : Ideal B) [𝔭.IsMaximal]
      (N : Ideal S) [IsAdicComplete N S] (θ : B →+* S),
      (∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk (N ^ n)).comp θ) ∧
        RingHom.ker ((Ideal.Quotient.mk (N ^ n)).comp θ) = 𝔭 ^ n) →
      ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
          (Localization.AtPrime 𝔭) ≃+* S,
        ∀ b : B, ε (algebraMap (Localization.AtPrime 𝔭) (AdicCompletion
          (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭)) (Localization.AtPrime 𝔭))
            (algebraMap B (Localization.AtPrime 𝔭) b)) = θ b := by
    intro B S _ _ 𝔭 _ N _ θ hlev
    have hβ : ∀ n, ∃ β : B ⧸ 𝔭 ^ n ≃+* S ⧸ N ^ n,
        ∀ b, β (Ideal.Quotient.mk _ b) = Ideal.Quotient.mk _ (θ b) := by
      intro n
      refine ⟨(Ideal.quotEquivOfEq (hlev n).2.symm).trans
        (RingHom.quotientKerEquivOfSurjective (hlev n).1), fun b => ?_⟩
      rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
        RingHom.quotientKerEquivOfSurjective_apply_mk]
      rfl
    choose β hβ using hβ
    choose ψ hψ using fun n => wcpa_dj_lr1s_sgf_quot_pow_localization B 𝔭 n
    let Φ : ∀ n, Localization.AtPrime 𝔭 ⧸ IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭) ^ n ≃+*
        S ⧸ N ^ n := fun n => (ψ n).symm.trans (β n)
    have hΦ : ∀ n b, Φ n (Ideal.Quotient.mk _ (algebraMap B (Localization.AtPrime 𝔭) b)) =
        Ideal.Quotient.mk _ (θ b) := by
      intro n b
      show β n ((ψ n).symm _) = _
      rw [← hψ n b, RingEquiv.symm_apply_apply, hβ]
    have hsurj : ∀ n (x : Localization.AtPrime 𝔭 ⧸
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭) ^ n),
        ∃ b, x = Ideal.Quotient.mk _ (algebraMap B (Localization.AtPrime 𝔭) b) := by
      intro n x
      obtain ⟨y, rfl⟩ := (ψ n).surjective x
      obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective y
      exact ⟨b, hψ n b⟩
    obtain ⟨E, -, hE⟩ := wcpa_dj_lr1s_sgf_completion_of_compatible (Localization.AtPrime 𝔭) S
      (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭)) N Φ (by
        intro m n hmn x
        obtain ⟨b, rfl⟩ := hsurj n x
        rw [hΦ]
        exact (hΦ m b).symm)
    exact ⟨E, fun b => hE _ _ (fun n => (hΦ n b).symm)⟩
  have node_complete : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A],
      IsAdicComplete (IsLocalRing.maximalIdeal A) A → ∀ h ∈ IsLocalRing.maximalIdeal A,
      IsAdicComplete (Ideal.map (Ideal.Quotient.mk
          (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}))
          (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A)))
        (MvPowerSeries (Fin 2) A ⧸
          Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) := by
    intro A _ _ _ hA h hh
    haveI hPS : IsAdicComplete (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A))
        (MvPowerSeries (Fin 2) A) :=
      wcpa_dj_stc_ktc_mvps_complete_of_filt A (Fin 2) hA (fun k f =>
        ⟨wcpa_dj_stc_ktc_mvps_maxpow_coeff A (Fin 2) k f,
          wcpa_dj_stc_ktc_mvps_coeff_maxpow A (Fin 2) k f⟩)
    have hJ : Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h} ≠
        (⊤ : Ideal (MvPowerSeries (Fin 2) A)) := by
      rw [Ne, Ideal.span_singleton_eq_top, MvPowerSeries.isUnit_iff_constantCoeff]
      intro hu
      simp only [map_sub, map_mul, MvPowerSeries.constantCoeff_X, MvPowerSeries.constantCoeff_C,
        zero_mul, zero_sub, IsUnit.neg_iff] at hu
      exact (IsLocalRing.mem_maximalIdeal _).mp hh hu
    obtain ⟨hlocD, hcD⟩ := wc_hnas_quotient_complete (MvPowerSeries (Fin 2) A) _ hJ
    have h1 : Ideal.comap (Ideal.Quotient.mk _) (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) =
        IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) :=
      IsLocalRing.eq_maximalIdeal (Ideal.comap_isMaximal_of_surjective _ Ideal.Quotient.mk_surjective)
    rw [← h1, Ideal.map_comap_of_surjective _ Ideal.Quotient.mk_surjective]
    exact hcD
  have node_levels : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (h : A),
      h ∈ IsLocalRing.maximalIdeal A →
      ∃ θ : (MvPolynomial (Fin 2) A ⧸
          Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h}) →+*
          (MvPowerSeries (Fin 2) A ⧸
            Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}),
        (∀ F : MvPolynomial (Fin 2) A, θ (Ideal.Quotient.mk _ F) =
          Ideal.Quotient.mk _ (F : MvPowerSeries (Fin 2) A)) ∧
        (Ideal.map (Ideal.Quotient.mk
            (Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h :
              MvPolynomial (Fin 2) A)}))
          (Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
            Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1})).IsMaximal ∧
        ∀ n : ℕ,
          Function.Surjective ((Ideal.Quotient.mk ((Ideal.map (Ideal.Quotient.mk _)
              (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A))) ^ n)).comp θ) ∧
          RingHom.ker ((Ideal.Quotient.mk ((Ideal.map (Ideal.Quotient.mk _)
              (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A))) ^ n)).comp θ) =
            (Ideal.map (Ideal.Quotient.mk _) (Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
              Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1})) ^ n := by
    intro A _ _ h hh
    classical
    let coe : MvPolynomial (Fin 2) A →+* MvPowerSeries (Fin 2) A :=
      MvPolynomial.coeToMvPowerSeries.ringHom
    have hcoe : ∀ F, coe F = (F : MvPowerSeries (Fin 2) A) := fun F => rfl
    have hg : coe (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h) =
        MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h := by
      rw [map_sub, map_mul, hcoe, hcoe, hcoe, MvPolynomial.coe_X, MvPolynomial.coe_X,
        MvPolynomial.coe_C]
    have hθwd : ∀ a ∈ Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h},
        ((Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h})).comp coe) a = 0 := by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [RingHom.comp_apply, map_mul, hg, map_mul,
        Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span (Set.mem_singleton _)), mul_zero]
    let θ := Ideal.Quotient.lift _ _ hθwd
    have hθ : ∀ F, θ (Ideal.Quotient.mk _ F) = Ideal.Quotient.mk
        (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})
        (F : MvPowerSeries (Fin 2) A) := fun F => Ideal.Quotient.lift_mk _ _ _
    have hU : ∀ f : MvPowerSeries (Fin 2) A, f ∈ IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) ↔
        MvPowerSeries.constantCoeff f ∈ IsLocalRing.maximalIdeal A := by
      intro f
      rw [IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
        mem_nonunits_iff, MvPowerSeries.isUnit_iff_constantCoeff]
    have hT : ∀ (n : ℕ) (G : MvPowerSeries (Fin 2) A),
        G - ((MvPowerSeries.truncTotal n G : MvPolynomial (Fin 2) A) : MvPowerSeries (Fin 2) A) ∈
          IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) ^ n := by
      intro n G
      apply wcpa_dj_stc_ktc_mvps_coeff_maxpow A (Fin 2) n
      intro α
      by_cases hα : Finsupp.degree α < n
      · rw [map_sub, MvPolynomial.coeff_coe, MvPowerSeries.coeff_truncTotal _ hα, sub_self]
        exact Submodule.zero_mem _
      · rw [show n - Finsupp.degree α = 0 by omega, pow_zero, Ideal.one_eq_top]
        exact Submodule.mem_top
    have hN : ∀ n, (Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h})) (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A))) ^ n =
        Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h})) (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) ^ n) :=
      fun n => (Ideal.map_pow _ _ _).symm
    have hX : ∀ i : Fin 2, (MvPolynomial.X i : MvPolynomial (Fin 2) A) ∈
        Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
          Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1} := by
      intro i
      apply Ideal.mem_sup_right
      apply Ideal.subset_span
      fin_cases i <;> simp

    have hevwd : ∀ a ∈ Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h},
        ((IsLocalRing.residue A).comp (MvPolynomial.constantCoeff :
          MvPolynomial (Fin 2) A →+* A)) a = 0 := by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [RingHom.comp_apply, map_mul, map_mul]
      have : (IsLocalRing.residue A) (MvPolynomial.constantCoeff
          (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h : MvPolynomial (Fin 2) A)) = 0 := by
        rw [IsLocalRing.residue_eq_zero_iff]
        simp only [map_sub, map_mul, MvPolynomial.constantCoeff_X, MvPolynomial.constantCoeff_C,
          zero_mul, zero_sub]
        exact (Ideal.neg_mem_iff _).mpr hh
      rw [this, mul_zero]
    let ev := Ideal.Quotient.lift _ _ hevwd
    have hev : ∀ F, ev (Ideal.Quotient.mk _ F) = IsLocalRing.residue A (F.coeff 0) := by
      intro F
      rw [Ideal.Quotient.lift_mk, RingHom.comp_apply, MvPolynomial.constantCoeff_eq]
    have hevs : Function.Surjective ev := by
      intro y
      obtain ⟨a, rfl⟩ := IsLocalRing.residue_surjective y
      exact ⟨Ideal.Quotient.mk _ (MvPolynomial.C a), by rw [hev, MvPolynomial.coeff_C, if_pos rfl]⟩
    have hker : RingHom.ker ev = Ideal.map (Ideal.Quotient.mk _)
        (Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
          Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1}) := by
      apply le_antisymm
      · intro x hx
        obtain ⟨F, rfl⟩ := Ideal.Quotient.mk_surjective x
        rw [RingHom.mem_ker, hev, IsLocalRing.residue_eq_zero_iff] at hx
        apply Ideal.mem_map_of_mem
        rw [show F = MvPolynomial.C (F.coeff 0) + (F - MvPolynomial.C (F.coeff 0)) by ring]
        refine Ideal.add_mem _ (Ideal.mem_sup_left (Ideal.mem_map_of_mem _ hx)) ?_
        apply Ideal.mem_sup_right
        have hsp : Ideal.span (MvPolynomial.X '' Set.univ) ≤
            Ideal.span {(MvPolynomial.X 0 : MvPolynomial (Fin 2) A), MvPolynomial.X 1} := by
          rw [Ideal.span_le]
          rintro _ ⟨i, -, rfl⟩
          apply Ideal.subset_span
          fin_cases i <;> simp
        apply hsp
        rw [MvPolynomial.mem_ideal_span_X_image]
        intro m hm
        have hm0 : m ≠ 0 := by
          rintro rfl
          rw [MvPolynomial.mem_support_iff, MvPolynomial.coeff_sub, MvPolynomial.coeff_C,
            if_pos rfl, sub_self] at hm
          exact hm rfl
        obtain ⟨i, hi⟩ := Finsupp.ne_iff.mp hm0
        exact ⟨i, Set.mem_univ _, by simpa using hi⟩
      · rw [Ideal.map_le_iff_le_comap, RingHom.comap_ker]
        refine sup_le ?_ ?_
        · rw [Ideal.map_le_iff_le_comap]
          intro a ha
          rw [Ideal.mem_comap, RingHom.mem_ker, RingHom.comp_apply, hev, MvPolynomial.coeff_C,
            if_pos rfl, IsLocalRing.residue_eq_zero_iff]
          exact ha
        · rw [Ideal.span_le]
          intro x hx
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
          rcases hx with rfl | rfl <;>
          · rw [SetLike.mem_coe, RingHom.mem_ker, RingHom.comp_apply, hev,
              ← MvPolynomial.constantCoeff_eq, MvPolynomial.constantCoeff_X, map_zero]
    have hmax : (Ideal.map (Ideal.Quotient.mk
            (Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h :
              MvPolynomial (Fin 2) A)}))
          (Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
            Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1})).IsMaximal := by
      have := RingHom.ker_isMaximal_of_surjective ev hevs
      rw [hker] at this
      exact this
    refine ⟨θ, hθ, hmax, fun n => ⟨?_, ?_⟩⟩
    ·
      intro y
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective y
      obtain ⟨G, rfl⟩ := Ideal.Quotient.mk_surjective z
      refine ⟨Ideal.Quotient.mk _ (MvPowerSeries.truncTotal n G), ?_⟩
      rw [RingHom.comp_apply, hθ, Ideal.Quotient.eq, ← map_sub, hN]
      apply Ideal.mem_map_of_mem
      rw [← neg_sub]
      exact (Ideal.neg_mem_iff _).mpr (hT n G)
    · apply le_antisymm
      ·
        intro b hb
        obtain ⟨F, rfl⟩ := Ideal.Quotient.mk_surjective b
        rw [RingHom.mem_ker, RingHom.comp_apply, hθ, Ideal.Quotient.eq_zero_iff_mem, hN,
          ← Ideal.mem_comap, Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective,
          Ideal.mk_ker, Submodule.mem_sup] at hb
        obtain ⟨G, hG, Z, hZ, hGZ⟩ := hb
        obtain ⟨H, rfl⟩ := Ideal.mem_span_singleton'.mp hZ
        set Hn := MvPowerSeries.truncTotal n H
        set F₁ := F - Hn * (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h) with hF₁
        have hcF₁ : coe F₁ ∈ IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) ^ n := by
          have e : coe F₁ = G + (H - (Hn : MvPowerSeries (Fin 2) A)) *
              (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) := by
            rw [hF₁, map_sub, map_mul, hg, hcoe F, ← hGZ, hcoe Hn]
            ring
          rw [e]
          exact Ideal.add_mem _ hG (Ideal.mul_mem_right _ _ (hT n H))
        have hcoef : ∀ α, F₁.coeff α ∈ IsLocalRing.maximalIdeal A ^ (n - Finsupp.degree α) := by
          intro α
          have := wcpa_dj_stc_ktc_mvps_maxpow_coeff A (Fin 2) n _ hcF₁ α
          rwa [hcoe, MvPolynomial.coeff_coe] at this
        have hF₁M : F₁ ∈ (Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
            Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1}) ^ n := by
          rw [MvPolynomial.as_sum F₁]
          refine Ideal.sum_mem _ (fun v _ => ?_)
          rw [MvPolynomial.monomial_eq, Finsupp.prod_fintype _ _ (fun i => pow_zero _),
            Fin.prod_univ_two, ← mul_assoc]
          have hdeg : Finsupp.degree v = v 0 + v 1 := by
            rw [Finsupp.degree_eq_sum, Fin.sum_univ_two]
          have h1 : (MvPolynomial.C (F₁.coeff v) : MvPolynomial (Fin 2) A) ∈
              (Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A)
              (IsLocalRing.maximalIdeal A) ⊔ Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1}) ^
                (n - Finsupp.degree v) := by
            apply Ideal.pow_right_mono le_sup_left
            rw [← Ideal.map_pow]
            exact Ideal.mem_map_of_mem _ (hcoef v)
          have h2 : (MvPolynomial.C (F₁.coeff v) : MvPolynomial (Fin 2) A) *
              MvPolynomial.X 0 ^ v 0 * MvPolynomial.X 1 ^ v 1 ∈
              (Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A)
                (IsLocalRing.maximalIdeal A) ⊔
                Ideal.span {(MvPolynomial.X 0 : MvPolynomial (Fin 2) A), MvPolynomial.X 1}) ^
                  (n - Finsupp.degree v + v 0 + v 1) := by
            rw [pow_add, pow_add]
            exact Ideal.mul_mem_mul (Ideal.mul_mem_mul h1 (Ideal.pow_mem_pow (hX 0) _))
              (Ideal.pow_mem_pow (hX 1) _)
          exact Ideal.pow_le_pow_right (by omega) h2
        have hFF : Ideal.Quotient.mk (Ideal.span {MvPolynomial.X 0 * MvPolynomial.X 1 -
            MvPolynomial.C h}) F = Ideal.Quotient.mk _ F₁ := by
          rw [Ideal.Quotient.eq, hF₁, sub_sub_cancel]
          exact Ideal.mul_mem_left _ _ (Ideal.subset_span (Set.mem_singleton _))
        rw [hFF, ← Ideal.map_pow]
        exact Ideal.mem_map_of_mem _ hF₁M
      ·
        have hθM : Ideal.map θ (Ideal.map (Ideal.Quotient.mk _)
            (Ideal.map MvPolynomial.C (IsLocalRing.maximalIdeal A) ⊔
              Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1})) ≤
            Ideal.map (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
              MvPowerSeries.C h})) (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A)) := by
          rw [Ideal.map_map, show θ.comp (Ideal.Quotient.mk _) =
            (Ideal.Quotient.mk _).comp coe from RingHom.ext fun F => hθ F, ← Ideal.map_map]
          apply Ideal.map_mono
          rw [Ideal.map_le_iff_le_comap]
          refine sup_le ?_ ?_
          · rw [Ideal.map_le_iff_le_comap]
            intro a ha
            rw [Ideal.mem_comap, Ideal.mem_comap, hU, hcoe, MvPolynomial.coe_C,
              MvPowerSeries.constantCoeff_C]
            exact ha
          · rw [Ideal.span_le]
            intro x hx
            simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
            rcases hx with rfl | rfl <;>
            · rw [SetLike.mem_coe, Ideal.mem_comap, hU, hcoe, MvPolynomial.coe_X,
                MvPowerSeries.constantCoeff_X]
              exact Submodule.zero_mem _
        intro b hb
        rw [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
        have := Ideal.mem_map_of_mem θ hb
        rw [Ideal.map_pow] at this
        exact Ideal.pow_right_mono hθM n this
  have smooth_chart : ∀ (A : Type u) [CommRing A] (h : A) (j : Fin 2)
      (𝔭 : Ideal (wcpaDjLcB A h)) [𝔭.IsPrime],
      (Ideal.Quotient.mk (Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h :
        MvPolynomial (Fin 2) A)}) (MvPolynomial.X j) : wcpaDjLcB A h) ∉ 𝔭 →
      ∃ (P : Ideal (Polynomial A)) (_ : P.IsPrime),
        P.comap Polynomial.C = 𝔭.comap (algebraMap A (wcpaDjLcB A h)) ∧
        ∃ σ : Localization.AtPrime 𝔭 ≃+* Localization.AtPrime P,
          ∀ a : A, σ (algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭)
            (algebraMap A (wcpaDjLcB A h) a)) =
            algebraMap (Polynomial A) (Localization.AtPrime P) (Polynomial.C a) := by
    intro A _ h j 𝔭 _ hj
    let I := Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h :
      MvPolynomial (Fin 2) A)}
    let mkB : MvPolynomial (Fin 2) A →+* wcpaDjLcB A h := Ideal.Quotient.mk I
    have hmkC : ∀ a : A, mkB (MvPolynomial.C a) = algebraMap A (wcpaDjLcB A h) a := fun a => rfl
    have hmkI : ∀ F ∈ I, mkB F = 0 := fun F hF => Ideal.Quotient.eq_zero_iff_mem.mpr hF
    let xj : wcpaDjLcB A h := mkB (MvPolynomial.X j)
    let gj : Polynomial A →+* wcpaDjLcB A h :=
      Polynomial.eval₂RingHom (algebraMap A (wcpaDjLcB A h)) xj
    have hgjC : ∀ a, gj (Polynomial.C a) = algebraMap A (wcpaDjLcB A h) a := fun a =>
      Polynomial.eval₂_C _ _
    have hgjX : gj Polynomial.X = xj := Polynomial.eval₂_X _ _
    let P := 𝔭.comap gj
    haveI hPprime : P.IsPrime := Ideal.comap_isPrime gj 𝔭
    let T := Localization.AtPrime P
    have hUP : (Polynomial.X : Polynomial A) ∈ P.primeCompl := by
      show gj Polynomial.X ∉ 𝔭
      rw [hgjX]
      exact hj
    have hu : IsUnit (algebraMap (Polynomial A) T Polynomial.X) :=
      IsLocalization.map_units T (⟨Polynomial.X, hUP⟩ : P.primeCompl)
    let u := algebraMap (Polynomial A) T Polynomial.X
    let uinv : T := ↑hu.unit⁻¹
    have huu : u * uinv = 1 := hu.mul_val_inv
    let algP : A →+* T := (algebraMap (Polynomial A) T).comp Polynomial.C
    let vals : Fin 2 → T := fun i => if i = j then u else algP h * uinv
    have hvals : vals 0 * vals 1 = algP h := by
      fin_cases j
      · simp only [vals, Fin.zero_eta, Fin.isValue, if_true, Fin.mk_one, one_ne_zero, if_false]
        rw [mul_left_comm, huu, mul_one]
      · simp only [vals, Fin.zero_eta, Fin.isValue, Fin.mk_one, zero_ne_one, if_false, if_true]
        rw [mul_assoc, mul_comm uinv, huu, mul_one]
    let f : MvPolynomial (Fin 2) A →+* T := MvPolynomial.eval₂Hom algP vals
    have hfwd : ∀ a ∈ I, f a = 0 := by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, map_sub, map_mul, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X',
        MvPolynomial.eval₂Hom_C, hvals, sub_self, mul_zero]
    let fB : wcpaDjLcB A h →+* T := Ideal.Quotient.lift I f hfwd
    have hfB : ∀ F, fB (mkB F) = f F := fun F => Ideal.Quotient.lift_mk _ _ _
    have hfBC : ∀ a, fB (algebraMap A (wcpaDjLcB A h) a) = algP a := by
      intro a
      rw [← hmkC, hfB]
      exact MvPolynomial.eval₂Hom_C _ _ _
    have hfBx : fB xj = u := by
      show fB (mkB (MvPolynomial.X j)) = u
      rw [hfB]
      show MvPolynomial.eval₂Hom algP vals (MvPolynomial.X j) = u
      rw [MvPolynomial.eval₂Hom_X']
      simp only [vals, if_true]
    let φ := Localization.localRingHom P 𝔭 gj rfl
    have hφ : ∀ p, φ (algebraMap _ T p) = algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭) (gj p) :=
      fun p => Localization.localRingHom_to_map _ _ _ _ p
    haveI : IsLocalHom φ := Localization.isLocalHom_localRingHom _ _ _ _
    let algB := algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭)
    have hxjunit : IsUnit (algB xj) :=
      IsLocalization.map_units (Localization.AtPrime 𝔭) (⟨xj, hj⟩ : 𝔭.primeCompl)
    have hφu : φ u = algB xj := by
      rw [hφ, hgjX]
    have hφC : ∀ a, φ (algP a) = algB (algebraMap A (wcpaDjLcB A h) a) := by
      intro a
      show φ (algebraMap _ T (Polynomial.C a)) = _
      rw [hφ, hgjC]
    have hrel : xj * mkB (MvPolynomial.X (1 - j)) = algebraMap A (wcpaDjLcB A h) h := by
      rw [← hmkC, ← map_mul, ← sub_eq_zero, ← map_sub]
      apply hmkI
      apply Ideal.subset_span
      fin_cases j
      · rfl
      · simp only [Set.mem_singleton_iff]
        show MvPolynomial.X 1 * MvPolynomial.X (1 - 1) - MvPolynomial.C h = _
        rw [sub_self, mul_comm]
    have hφfB : φ.comp fB = algB := by
      apply Ideal.Quotient.ringHom_ext
      apply MvPolynomial.ringHom_ext
      · intro a
        show φ (fB (mkB (MvPolynomial.C a))) = algB (mkB (MvPolynomial.C a))
        rw [hmkC, hfBC, hφC]
      · intro i
        show φ (fB (mkB (MvPolynomial.X i))) = algB (mkB (MvPolynomial.X i))
        by_cases hij : i = j
        · subst hij
          show φ (fB xj) = algB xj
          rw [hfBx, hφu]
        · rw [hfB]
          show φ (MvPolynomial.eval₂Hom algP vals (MvPolynomial.X i)) = _
          rw [MvPolynomial.eval₂Hom_X']
          simp only [vals, hij, if_false]
          have hi : i = 1 - j := by omega
          apply hxjunit.mul_left_cancel
          rw [← hφu, ← map_mul, mul_left_comm u, huu, mul_one, hφC, hφu, ← map_mul, hi, hrel]
    have hfBunit : ∀ y : 𝔭.primeCompl, IsUnit (fB y) := by
      intro y
      apply isUnit_of_map_unit φ
      rw [← RingHom.comp_apply, hφfB]
      exact IsLocalization.map_units _ y
    let ψ : Localization.AtPrime 𝔭 →+* T := IsLocalization.lift hfBunit
    have hψ : ∀ b, ψ (algB b) = fB b := fun b => IsLocalization.lift_eq _ _
    have h1 : φ.comp ψ = RingHom.id _ := by
      apply IsLocalization.ringHom_ext 𝔭.primeCompl
      apply RingHom.ext
      intro b
      show φ (ψ (algB b)) = algB b
      rw [hψ, ← RingHom.comp_apply φ fB, hφfB]
    have h2 : ψ.comp φ = RingHom.id _ := by
      apply IsLocalization.ringHom_ext P.primeCompl
      apply Polynomial.ringHom_ext
      · intro a
        show ψ (φ (algebraMap _ T (Polynomial.C a))) = algebraMap _ T (Polynomial.C a)
        rw [hφ, hgjC, hψ, hfBC]
        rfl
      · show ψ (φ (algebraMap _ T Polynomial.X)) = algebraMap _ T Polynomial.X
        rw [hφ, hgjX, hψ, hfBx]
    refine ⟨P, hPprime, ?_, RingEquiv.ofRingHom ψ φ h2 h1, fun a => ?_⟩
    · show Ideal.comap Polynomial.C (Ideal.comap gj 𝔭) = _
      rw [Ideal.comap_comap]
      congr 1
      exact RingHom.ext hgjC
    · show ψ (algB (algebraMap A (wcpaDjLcB A h) a)) = _
      rw [hψ, hfBC]
      rfl
  have main : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A],
      IsAdicComplete (IsLocalRing.maximalIdeal A) A → ∀ (h : A)
      (𝔭 : Ideal (wcpaDjLcB A h)) [h𝔭 : 𝔭.IsPrime],
      𝔭.comap (algebraMap A (wcpaDjLcB A h)) = IsLocalRing.maximalIdeal A →
      (h ∈ IsLocalRing.maximalIdeal A ∧
        ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
            (Localization.AtPrime 𝔭) ≃+*
          (MvPowerSeries (Fin 2) A ⧸
            Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
              MvPowerSeries (Fin 2) A)}),
          ∀ a : A, ε (algebraMap (Localization.AtPrime 𝔭) (AdicCompletion
              (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭)) (Localization.AtPrime 𝔭))
              (algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭)
                (algebraMap A (wcpaDjLcB A h) a))) =
            Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
              MvPowerSeries.C h : MvPowerSeries (Fin 2) A)}) (MvPowerSeries.C a)) ∨
      (∃ (P : Ideal (Polynomial A)) (_ : P.IsPrime)
        (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
            (Localization.AtPrime 𝔭) ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P)),
        P.comap Polynomial.C = IsLocalRing.maximalIdeal A ∧
        ∀ a : A, ε (algebraMap (Localization.AtPrime 𝔭) (AdicCompletion
              (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭)) (Localization.AtPrime 𝔭))
              (algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭)
                (algebraMap A (wcpaDjLcB A h) a))) =
          algebraMap (Localization.AtPrime P) (AdicCompletion
              (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (algebraMap (Polynomial A) (Localization.AtPrime P) (Polynomial.C a))) := by
    intro A _ _ _ hA h 𝔭 h𝔭 hq
    let I := Ideal.span {(MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C h :
      MvPolynomial (Fin 2) A)}
    let mkB : MvPolynomial (Fin 2) A →+* wcpaDjLcB A h := Ideal.Quotient.mk I
    have hmkC : ∀ a : A, mkB (MvPolynomial.C a) = algebraMap A (wcpaDjLcB A h) a := fun a => rfl
    have hmkI : ∀ F ∈ I, mkB F = 0 := fun F hF => Ideal.Quotient.eq_zero_iff_mem.mpr hF
    have hsmooth : ∀ j : Fin 2, mkB (MvPolynomial.X j) ∉ 𝔭 →
        ∃ (P : Ideal (Polynomial A)) (_ : P.IsPrime)
        (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭))
            (Localization.AtPrime 𝔭) ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P)),
        P.comap Polynomial.C = IsLocalRing.maximalIdeal A ∧
        ∀ a : A, ε (algebraMap (Localization.AtPrime 𝔭) (AdicCompletion
              (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔭)) (Localization.AtPrime 𝔭))
              (algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭)
                (algebraMap A (wcpaDjLcB A h) a))) =
          algebraMap (Localization.AtPrime P) (AdicCompletion
              (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (algebraMap (Polynomial A) (Localization.AtPrime P) (Polynomial.C a)) := by
      intro j hj
      obtain ⟨P, hP, hPc, σ, hσ⟩ := smooth_chart A h j 𝔭 hj
      obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_adic_congr _ _ σ
      refine ⟨P, hP, ε, hPc.trans hq, fun a => ?_⟩
      have e1 := RingHom.congr_fun hε (algebraMap (wcpaDjLcB A h) (Localization.AtPrime 𝔭)
        (algebraMap A (wcpaDjLcB A h) a))
      rw [RingHom.comp_apply, RingHom.comp_apply] at e1
      exact e1.trans (congrArg _ (hσ a))
    by_cases h0 : mkB (MvPolynomial.X 0) ∈ 𝔭
    · by_cases h1 : mkB (MvPolynomial.X 1) ∈ 𝔭
      · left
        have hhB : algebraMap A (wcpaDjLcB A h) h ∈ 𝔭 := by
          have e : algebraMap A (wcpaDjLcB A h) h =
              mkB (MvPolynomial.X 0) * mkB (MvPolynomial.X 1) := by
            rw [← hmkC, ← map_mul, ← sub_eq_zero, ← map_sub]
            apply hmkI
            rw [← neg_sub]
            exact Ideal.neg_mem_iff _ |>.mpr (Ideal.subset_span (Set.mem_singleton _))
          rw [e]
          exact Ideal.mul_mem_right _ _ h0
        have hhA : h ∈ IsLocalRing.maximalIdeal A := by
          rw [← hq]
          exact hhB
        obtain ⟨θ₀, hθ, hMmax, hlev⟩ := node_levels A h hhA
        let D := MvPowerSeries (Fin 2) A ⧸
          Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
            MvPowerSeries (Fin 2) A)}
        let N : Ideal D := Ideal.map (Ideal.Quotient.mk
            (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
              MvPowerSeries (Fin 2) A)}))
            (IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A))
        let M : Ideal (wcpaDjLcB A h) := Ideal.map mkB
          (Ideal.map (MvPolynomial.C : A →+* MvPolynomial (Fin 2) A) (IsLocalRing.maximalIdeal A) ⊔
            Ideal.span {MvPolynomial.X 0, MvPolynomial.X 1})
        let θ : wcpaDjLcB A h →+* D := θ₀
        have hθ' : ∀ a : A, θ (algebraMap A (wcpaDjLcB A h) a) =
            Ideal.Quotient.mk _ (MvPowerSeries.C a) := by
          intro a
          rw [← hmkC]
          exact (hθ (MvPolynomial.C a)).trans (by rw [MvPolynomial.coe_C])
        have hMmax' : M.IsMaximal := hMmax
        have hlev' : ∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk (N ^ n)).comp θ) ∧
            RingHom.ker ((Ideal.Quotient.mk (N ^ n)).comp θ) = M ^ n := hlev
        have hMle : M ≤ 𝔭 := by
          show Ideal.map mkB _ ≤ 𝔭
          rw [Ideal.map_le_iff_le_comap]
          refine sup_le ?_ ?_
          · rw [Ideal.map_le_iff_le_comap]
            intro a ha
            rw [← hq] at ha
            show mkB (MvPolynomial.C a) ∈ 𝔭
            rw [hmkC]
            exact ha
          · rw [Ideal.span_le]
            intro x hx
            simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
            rcases hx with rfl | rfl
            · exact h0
            · exact h1
        have hMeq : M = 𝔭 := hMmax'.eq_of_le (Ideal.IsPrime.ne_top h𝔭) hMle
        haveI h𝔭max : 𝔭.IsMaximal := hMeq ▸ hMmax'
        haveI hDc : IsAdicComplete N D := node_complete A hA h hhA
        obtain ⟨ε, hε⟩ := levels_completion (wcpaDjLcB A h) D 𝔭 N θ
          (fun n => ⟨(hlev' n).1, (hlev' n).2.trans (by rw [hMeq])⟩)
        exact ⟨hhA, ε, fun a => (hε _).trans (hθ' a)⟩
      · right
        exact hsmooth 1 h1
    · right
      exact hsmooth 0 h0
  intro O₀ _ _ _ h 𝔭 h𝔭I hcomap
  obtain ⟨hlocA, -, hnoethA, -, hmaxA, -⟩ := wcpa_dj_glt_st_completion_facts O₀
  haveI := hlocA
  haveI := hnoethA
  obtain ⟨hloc2, hcompA, -, -⟩ := wc_hnas_completion_local_complete O₀
  have hq : 𝔭.comap (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)) =
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) := by
    have hle : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ≤
        𝔭.comap (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
          (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)) := by
      rw [hmaxA, Ideal.map_le_iff_le_comap, Ideal.comap_comap, hcomap]
    exact ((IsLocalRing.maximalIdeal.isMaximal
      (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)).eq_of_le
      (Ideal.comap_isPrime (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (wcpaDjLcB (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) h)) 𝔭).ne_top hle).symm
  rcases main (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) hcompA h 𝔭 hq with
    ⟨hh, ε, hε⟩ | ⟨P, hP, ε, hPc, hε⟩
  · left
    refine ⟨hmaxA ▸ hh, ε, RingHom.ext fun a => ?_⟩
    exact hε (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)
  · right
    refine ⟨P, hP, ε, ?_, RingHom.ext fun a =>
      hε (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a)⟩
    rw [← Ideal.comap_comap, hPc, ← hq, Ideal.comap_comap]
    exact hcomap

theorem wcpa_dj_glt_cc_lc_node_normal : ∀ (O₀ : Type u) [CommRing O₀] [IsLocalRing O₀]
    [IsNoetherianRing O₀], IsRegularLocalRing O₀ →
    ∀ (n : ℕ) (t : Fin n → O₀), (n : WithBot ℕ∞) = ringKrullDim O₀ →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal O₀ →
    ∀ δ : Fin n → ℕ,
    (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l) ∈
      (IsLocalRing.maximalIdeal O₀).map
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) →
    IsDomain (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
          (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)}) ∧
    IsIntegrallyClosed (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
          (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)}) ∧
    ∀ w : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
          (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)},
      ∃ a : O₀, ¬ IsUnit (w - Ideal.Quotient.mk _ (MvPowerSeries.C
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) a))) :=
by
  intro O₀ _ _ _ hreg n t hdim hspan δ hh
  classical
  haveI := hreg


  have s7 : ∀ (P : Type u) [CommRing P] [Nontrivial P] (s h : P),
      Module.Free P (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C s * Polynomial.X + Polynomial.C h)) ∧
      Module.Finite P (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C s * Polynomial.X + Polynomial.C h)) := by
    intro P _ _ s h
    have hm : (Polynomial.X ^ 2 - Polynomial.C s * Polynomial.X + Polynomial.C h : Polynomial P).Monic := by
      monicity!
    exact ⟨Module.Free.of_basis (AdjoinRoot.powerBasis' hm).basis,
      Module.Finite.of_basis (AdjoinRoot.powerBasis' hm).basis⟩


  have s3 : ∀ (R₀ P : Type u) [CommRing R₀] [CommRing P] [Algebra R₀ P] (D : Derivation R₀ P P)
      (F : P) (𝔔 : Ideal P) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔) → F ∈ 𝔔 →
      D F ∉ 𝔔 → IsRegularLocalRing (Localization.AtPrime 𝔔 ⧸
        Ideal.span {algebraMap P (Localization.AtPrime 𝔔) F}) := by
    intro R₀ P _ _ _ D F 𝔔 _ hreg hF hD
    haveI := hreg
    have ha : algebraMap P (Localization.AtPrime 𝔔) F ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔔) :=
      (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime 𝔔) 𝔔 F).mpr hF
    have hb : algebraMap P (Localization.AtPrime 𝔔) F ∉
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔔) ^ 2 := by
      intro hsq
      rw [← IsLocalization.AtPrime.map_eq_maximalIdeal 𝔔 (Localization.AtPrime 𝔔), ← Ideal.map_pow,
        IsLocalization.algebraMap_mem_map_algebraMap_iff 𝔔.primeCompl] at hsq
      obtain ⟨s, hs, hsF⟩ := hsq
      have hDsq : ∀ z ∈ 𝔔 ^ 2, D z ∈ 𝔔 := by
        intro z hz
        rw [pow_two] at hz
        refine Submodule.mul_induction_on hz ?_ ?_
        · intro m hm k hk
          rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
          exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ hm) (Ideal.mul_mem_right _ _ hk)
        · intro a b ha hb
          rw [map_add]
          exact Ideal.add_mem _ ha hb
      have h1 := hDsq _ hsF
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul] at h1
      have h2 : s * D F ∈ 𝔔 := by
        have := Ideal.sub_mem _ h1 (Ideal.mul_mem_right (D s) _ hF)
        simpa using this
      rcases (inferInstance : 𝔔.IsPrime).mem_or_mem h2 with h3 | h3
      · exact hs h3
      · exact hD h3
    exact (wc_rl_quot_regular wc_rl_quot_embdim _ hreg _ ha hb).1


  have s2 : ∀ (P : Type u) [CommRing P] (F : P) (Q : Ideal (P ⧸ Ideal.span {F})) [Q.IsPrime],
      Nonempty (Localization.AtPrime Q ≃+* Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))) ⧸
        Ideal.span {algebraMap P (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F}) := by
    intro P _ F Q _
    have hle : Ideal.span {F} ≤ (Ideal.span {algebraMap P (Localization.AtPrime
        (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F}).comap (algebraMap P _) := by
      rw [Ideal.span_le]
      intro z hz
      rw [Set.mem_singleton_iff] at hz
      subst hz
      exact Ideal.subset_span rfl
    letI : Algebra (P ⧸ Ideal.span {F}) (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))) ⧸
        Ideal.span {algebraMap P (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F}) :=
      (Ideal.quotientMap _ (algebraMap P _) hle).toAlgebra
    have hloc := IsLocalization.of_surjective (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))).primeCompl
      (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))))
      (Ideal.Quotient.mk (Ideal.span {F})) Ideal.Quotient.mk_surjective
      (Ideal.Quotient.mk (Ideal.span {algebraMap P (Localization.AtPrime
        (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F})) Ideal.Quotient.mk_surjective
      (by ext p; rfl)
      (by rw [Ideal.mk_ker, Ideal.mk_ker, Ideal.map_span, Set.image_singleton])
    have hM : Submonoid.map (Ideal.Quotient.mk (Ideal.span {F}))
        (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))).primeCompl = Q.primeCompl := by
      ext z
      constructor
      · rintro ⟨p, hp, rfl⟩
        exact hp
      · intro hz
        obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective z
        exact ⟨p, hz, rfl⟩
    rw [hM] at hloc
    haveI := hloc
    exact ⟨(IsLocalization.algEquiv Q.primeCompl (Localization.AtPrime Q) _).toRingEquiv⟩


  have s4 : ∀ (B : Type u) [CommRing B] [IsRegularLocalRing B] (h b : B),
      h ∈ IsLocalRing.maximalIdeal B → h ≠ 0 → Prime b → b ∣ h →
      ∀ (Q : Ideal (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) [Q.IsPrime],
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 0) ∈ Q →
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 1) ∈ Q →
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.C b) ∈ Q →
      Q.height ≠ 1 := by
    intro B _ _ h b hm h0 hb hbh Q _ hX0 hX1 hCb hQ
    obtain ⟨hdom, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain B h hm h0
    obtain ⟨hinj, -⟩ := wcpa_dj_stc_tu_const_inj B h hm
    haveI := hdom
    haveI : (Ideal.span {b}).IsPrime := (Ideal.span_singleton_prime hb.ne_zero).mpr hb
    obtain ⟨ρ, hker, -, hρX⟩ := wcpa_dj_stc_tu_axis_ker B b h hbh 1
    haveI : (RingHom.ker ρ).IsPrime := RingHom.ker_isPrime ρ
    have hlt1 : (⊥ : Ideal _) < RingHom.ker ρ := by
      refine lt_of_le_of_ne bot_le (fun heq => ?_)
      have hmem : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h}) (MvPowerSeries.C b) ∈ RingHom.ker ρ := by
        rw [hker]
        exact Ideal.subset_span (by simp)
      rw [← heq, Ideal.mem_bot] at hmem
      exact hb.ne_zero (hinj b hmem)
    have hlt2 : RingHom.ker ρ < Q := by
      refine lt_of_le_of_ne ?_ (fun heq => ?_)
      · rw [hker, Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rcases hz with rfl | rfl
        · exact hX1
        · exact hCb
      · rw [← heq, RingHom.mem_ker, hρX 0 (by decide)] at hX0
        exact PowerSeries.X_ne_zero hX0
    have h1 : Q.height ≤ ((1 : ℕ) : ℕ∞) := by rw [hQ, Nat.cast_one]
    rw [Ideal.height_le_iff] at h1
    have h2 := h1 _ inferInstance hlt2
    have h3 : (RingHom.ker ρ).height ≤ ((0 : ℕ) : ℕ∞) := by
      rw [Nat.cast_one] at h2
      rw [Nat.cast_zero]
      exact (ENat.lt_one_iff_eq_zero.mp h2).le
    rw [Ideal.height_le_iff] at h3
    have h4 := h3 ⊥ Ideal.isPrime_bot hlt1
    simp at h4


  have s5 : ∀ (P R : Type u) [CommRing P] [IsDomain P] [UniqueFactorizationMonoid P]
      [IsNoetherianRing P] [CommRing R] [IsDomain R] [Algebra P R] [Module.Free P R] [Module.Finite P R],
      (∀ (Q : Ideal R) [Q.IsPrime], Q.height = 1 → IsIntegrallyClosed (Localization.AtPrime Q)) →
      IsIntegrallyClosed R := by
    intro P R _ _ _ _ _ _ _ _ _ hloc
    have hPinj : Function.Injective (algebraMap P R) := FaithfulSMul.algebraMap_injective P R
    rw [isIntegrallyClosed_iff (FractionRing R)]
    intro z hz
    obtain ⟨⟨a, s⟩, rfl⟩ := IsLocalization.mk'_surjective (nonZeroDivisors R) z
    have hs0 : (s : R) ≠ 0 := nonZeroDivisors.coe_ne_zero s
    have hsint : IsIntegral P (s : R) := Algebra.IsIntegral.isIntegral _
    have hne := Ideal.under_ne_bot_of_integral_mem hs0 (Ideal.mem_span_singleton_self (s : R)) hsint
    obtain ⟨c, hc, hc0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
    have hc' : algebraMap P R c ∈ Ideal.span {(s : R)} := hc
    obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp hc'
    have hb0 : algebraMap P R c ≠ 0 := by
      intro h0
      apply hc0
      apply hPinj
      rw [h0, map_zero]
    have hzs := IsLocalization.mk'_spec (FractionRing R) a s
    have hzb : IsLocalization.mk' (FractionRing R) a s * algebraMap R (FractionRing R) (algebraMap P R c)
        = algebraMap R (FractionRing R) (a * w) := by
      rw [← hw, map_mul, map_mul, ← mul_assoc, mul_comm _ (algebraMap R _ w), mul_assoc, hzs, mul_comm]
    have key : a * w ∈ Ideal.span {algebraMap P R c} := by
      refine wcpa_dj_stc_tu_krull_criterion P R _ _ hb0 (fun Q hQp hQ => ?_)
      haveI := hQp
      haveI := hloc Q hQ
      haveI : IsFractionRing (Localization.AtPrime Q) (FractionRing R) :=
        IsFractionRing.isFractionRing_of_isDomain_of_isLocalization Q.primeCompl _ _
      have hzQ : IsIntegral (Localization.AtPrime Q) (IsLocalization.mk' (FractionRing R) a s) :=
        IsIntegral.tower_top hz
      obtain ⟨y, hy⟩ := (IsIntegrallyClosed.isIntegral_iff).mp hzQ
      obtain ⟨⟨α, σ⟩, rfl⟩ := IsLocalization.mk'_surjective Q.primeCompl y
      have hyσ := IsLocalization.mk'_spec (Localization.AtPrime Q) α σ
      have hyσ' := congrArg (algebraMap (Localization.AtPrime Q) (FractionRing R)) hyσ
      rw [map_mul, hy, ← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply] at hyσ'
      refine ⟨σ, σ.2, ?_⟩
      have heq : (σ : R) * (a * w) = α * algebraMap P R c := by
        apply IsFractionRing.injective R (FractionRing R)
        rw [map_mul, ← hzb, map_mul, ← hyσ']
        ring
      rw [heq]
      exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
    obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.mp key
    refine ⟨d, ?_⟩
    have hb0' : algebraMap R (FractionRing R) (algebraMap P R c) ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).mpr hb0
    apply mul_right_cancel₀ hb0'
    rw [hzb, ← map_mul, hd]


  have s1 : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A],
      IsRegularLocalRing (MvPowerSeries (Fin 2) A) := by
    intro A _ _
    haveI : IsNoetherianRing (MvPowerSeries (Fin 2) A) := wcpa_dj_nd_mvpowerseries_two_noetherian A
    have hA := IsRegularLocalRing.spanFinrank_maximalIdeal (R := A)
    have hdim := wcpa_dj_npr_psr_dim_ge A
      (Submodule.spanFinrank (IsLocalRing.maximalIdeal A)) hA.le
    obtain ⟨s, hs_card, hs_span⟩ :=
      (IsNoetherian.noetherian (IsLocalRing.maximalIdeal A)).exists_span_set_encard_eq_spanFinrank
    have hs_span' : Ideal.span s = IsLocalRing.maximalIdeal A := hs_span
    have hs_fin : s.Finite := Set.finite_of_encard_eq_coe hs_card
    have hs_ncard : s.ncard = Submodule.spanFinrank (IsLocalRing.maximalIdeal A) := by
      have := hs_fin.cast_ncard_eq
      rw [hs_card] at this
      exact_mod_cast this
    have hmP : IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) =
        Ideal.span ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s ∪
          {MvPowerSeries.X 0, MvPowerSeries.X 1}) := by
      rw [wcpa_dj_npr_psr_maximalIdeal A, Ideal.span_union, ← Ideal.map_span, hs_span']
    have h2 : ({MvPowerSeries.X 0, MvPowerSeries.X 1} : Set (MvPowerSeries (Fin 2) A)).ncard ≤ 2 :=
      (Set.ncard_insert_le _ _).trans (by rw [Set.ncard_singleton])
    apply IsRegularLocalRing.of_spanFinrank_maximalIdeal_le
    refine le_trans ?_ hdim
    rw [hmP]
    have hle : Submodule.spanFinrank (Ideal.span ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s ∪
          {MvPowerSeries.X 0, MvPowerSeries.X 1})) ≤
        Submodule.spanFinrank (IsLocalRing.maximalIdeal A) + 2 := by
      calc _ ≤ ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s ∪
              {MvPowerSeries.X 0, MvPowerSeries.X 1}).ncard :=
            Submodule.spanFinrank_span_le_ncard_of_finite ((hs_fin.image _).union (Set.toFinite _))
        _ ≤ ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s).ncard +
              ({MvPowerSeries.X 0, MvPowerSeries.X 1} : Set (MvPowerSeries (Fin 2) A)).ncard :=
            Set.ncard_union_le _ _
        _ ≤ s.ncard + 2 := add_le_add (Set.ncard_image_le hs_fin) h2
        _ = _ := by rw [hs_ncard]
    exact_mod_cast hle


  have T0normal : ∀ (B : Type u) [CommRing B] [IsRegularLocalRing B] (h : B),
      IsAdicComplete (IsLocalRing.maximalIdeal B) B →
      h ∈ IsLocalRing.maximalIdeal B → h ≠ 0 →
      (∀ (Q : Ideal (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) [Q.IsPrime],
        Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 0) ∈ Q →
        Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 1) ∈ Q →
        Q.height ≠ 1) →
      IsIntegrallyClosed (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) := by
    intro B _ _ h hcomp hm h0 hax
    obtain ⟨hdomT, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain B h hm h0
    haveI := hdomT
    haveI := wcpa_dj_stc_tu_ps_regular B
    obtain ⟨hdP, huP⟩ := wc_fco_regular_local_ufd (PowerSeries B)
    haveI := hdP
    haveI := huP
    have hPc := wcpa_dj_stc_tu_ps_complete B hcomp
    obtain ⟨Φ, -, -, -⟩ := wcpa_dj_stc_tu_weierstrass B hPc h hm
    obtain ⟨hfree, hfin⟩ := s7 (PowerSeries B) PowerSeries.X (PowerSeries.C h)
    haveI := hfree
    haveI := hfin
    haveI : IsDomain (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C PowerSeries.X * Polynomial.X +
        Polynomial.C (PowerSeries.C h) : Polynomial (PowerSeries B))) :=
      MulEquiv.isDomain _ Φ.toMulEquiv
    have hlocT : ∀ (Q : Ideal (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) [Q.IsPrime],
        Q.height = 1 → IsIntegrallyClosed (Localization.AtPrime Q) := by
      intro Q _ hQ1
      have hFmem : (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) B) ∈
          Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) := by
        rw [Ideal.mem_comap, Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)]
        exact Q.zero_mem
      have branch : ∀ D : Derivation B (MvPowerSeries (Fin 2) B) (MvPowerSeries (Fin 2) B),
          D (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) ∉
            Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) →
          IsIntegrallyClosed (Localization.AtPrime Q) := by
        intro D hD
        haveI := s1 B
        have hregL := wc_hnas_pfc_regular_localization (MvPowerSeries (Fin 2) B) inferInstance
          (Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})))
        have hregq := s3 B _ D _ _ hregL hFmem hD
        obtain ⟨hd, hu⟩ := @wc_fco_regular_local_ufd _ _ hregq
        haveI := hregq
        haveI := hd
        haveI := hu
        haveI : IsIntegrallyClosed (Localization.AtPrime
            (Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}))) ⧸
            Ideal.span {algebraMap (MvPowerSeries (Fin 2) B) (Localization.AtPrime
              (Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}))))
              (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h)}) :=
          UniqueFactorizationMonoid.instIsIntegrallyClosed
        obtain ⟨φ⟩ := s2 _ (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) Q
        exact IsIntegrallyClosed.of_equiv φ.symm
      by_cases h0 : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h}) (MvPowerSeries.X 0) ∈ Q
      · by_cases h1 : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
            MvPowerSeries.C h}) (MvPowerSeries.X 1) ∈ Q
        · exact absurd hQ1 (hax Q h0 h1)
        · apply branch (MvPowerSeries.pderiv 0)
          rw [map_sub, Derivation.leibniz, MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_X,
            MvPowerSeries.pderiv_C]
          simpa using h1
      · apply branch (MvPowerSeries.pderiv 1)
        rw [map_sub, Derivation.leibniz, MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_X,
          MvPowerSeries.pderiv_C]
        simpa using h0
    have hlocR : ∀ (Q' : Ideal (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C PowerSeries.X * Polynomial.X +
        Polynomial.C (PowerSeries.C h) : Polynomial (PowerSeries B)))) [Q'.IsPrime],
        Q'.height = 1 → IsIntegrallyClosed (Localization.AtPrime Q') := by
      intro Q' _ hQ'
      have hht : (Ideal.comap Φ.symm Q').height = 1 := by
        rw [← hQ']
        exact RingEquiv.height_comap Φ.symm Q'
      haveI := hlocT (Ideal.comap Φ.symm Q') hht
      have hM : Submonoid.map Φ.symm.toMonoidHom (Ideal.comap Φ.symm Q').primeCompl = Q'.primeCompl := by
        ext z
        constructor
        · rintro ⟨w, hw, rfl⟩
          exact hw
        · intro hz
          refine ⟨Φ z, ?_, ?_⟩
          · show Φ.symm (Φ z) ∉ Q'
            simpa using hz
          · simp
      exact IsIntegrallyClosed.of_equiv (R := Localization.AtPrime (Ideal.comap Φ.symm Q'))
        (IsLocalization.ringEquivOfRingEquiv
          (Localization.AtPrime (Ideal.comap Φ.symm Q')) (Localization.AtPrime Q') Φ.symm hM)
    haveI := s5 (PowerSeries B) _ hlocR
    exact IsIntegrallyClosed.of_equiv Φ


  obtain ⟨hregA, -, hspanA⟩ := wcpa_dj_stc_kmnb_completion_params O₀ n t hdim hspan
  haveI := hregA
  obtain ⟨hdomA, -, hprime⟩ := wcpa_dj_mn_completion_regular O₀ n t hdim hspan
  haveI := hdomA
  obtain ⟨_, hcompl, -, happrox⟩ := wc_hnas_completion_local_complete O₀

  have hmapeq : (IsLocalRing.maximalIdeal O₀).map
      (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) =
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) := by
    refine (congrArg (Ideal.map (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)))
      hspan.symm).trans ?_
    rw [Ideal.map_span, ← Set.range_comp]
    exact hspanA
  have hmA : (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l) ∈
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
    hmapeq.le hh

  have h0 : (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (hprime l).ne_zero

  obtain ⟨hdomD, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain _ _ hmA h0
  haveI := hdomD

  have hax : ∀ (Q : Ideal (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
      Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)})) [Q.IsPrime],
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)})
        (MvPowerSeries.X 0) ∈ Q →
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)})
        (MvPowerSeries.X 1) ∈ Q →
      Q.height ≠ 1 := by
    intro Q hQ hQ0 hQ1
    let κ : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀ →+*
        (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
          (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)}) :=
      (Ideal.Quotient.mk _).comp MvPowerSeries.C
    have e1 : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)})
        (MvPowerSeries.X 0 * MvPowerSeries.X 1 :
          MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) =
        κ (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l) :=
      Ideal.Quotient.eq.mpr (Ideal.mem_span_singleton_self _)
    have hCh : κ (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)
        ∈ Q := by
      have h1 := Ideal.mul_mem_right (Ideal.Quotient.mk (Ideal.span
        {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
          (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)})
          (MvPowerSeries.X 1)) Q hQ0
      rwa [← map_mul, e1] at h1
    have hk : κ (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l) =
        ∏ l, κ (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l :=
      (map_prod κ _ _).trans (Finset.prod_congr rfl fun l _ => map_pow κ _ _)
    rw [hk] at hCh
    obtain ⟨l, -, hl⟩ := (Ideal.IsPrime.prod_mem_iff).mp hCh
    have hcl : δ l ≠ 0 := by
      intro hcl0
      rw [hcl0, pow_zero] at hl
      exact hQ.ne_top ((Ideal.eq_top_iff_one _).mpr hl)
    have hl' := hQ.mem_of_pow_mem _ hl
    exact s4 _ _ _ hmA h0 (hprime l)
      (dvd_trans (dvd_pow_self _ hcl) (Finset.dvd_prod_of_mem _ (Finset.mem_univ l))) Q hQ0 hQ1 hl'

  have hIC := T0normal _ _ hcompl hmA h0 hax

  have hres : ∀ G : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
      MvPowerSeries.constantCoeff G ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) →
      ¬ IsUnit (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)}) G) := by
    intro G hG hU
    let ψ : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) →+*
        IsLocalRing.ResidueField (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
      (IsLocalRing.residue (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)).comp
        MvPowerSeries.constantCoeff
    have hψF : ψ (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)) = 0 := by
      simp only [ψ, RingHom.comp_apply, map_sub, map_mul, MvPowerSeries.constantCoeff_X,
        MvPowerSeries.constantCoeff_C, mul_zero, zero_sub, map_neg, neg_eq_zero, map_zero]
      exact (IsLocalRing.residue_eq_zero_iff _).mpr hmA
    have hψ : ∀ a ∈ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C
        (∏ l, (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ δ l)},
        ψ a = 0 := by
      intro a ha
      obtain ⟨K, rfl⟩ := Ideal.mem_span_singleton.mp ha
      rw [map_mul, hψF, zero_mul]
    have h1 := hU.map (Ideal.Quotient.lift _ ψ hψ)
    rw [Ideal.Quotient.lift_mk] at h1
    have h2 : ψ G = 0 := (IsLocalRing.residue_eq_zero_iff _).mpr hG
    rw [h2] at h1
    exact not_isUnit_zero h1
  refine ⟨hdomD, hIC, ?_⟩
  intro w
  obtain ⟨G, rfl⟩ := Ideal.Quotient.mk_surjective w
  obtain ⟨a, ha⟩ := happrox (MvPowerSeries.constantCoeff G)
  refine ⟨a, ?_⟩
  rw [← map_sub]
  apply hres
  rw [map_sub, MvPowerSeries.constantCoeff_C]
  exact ha

theorem wcpa_dj_glt_cc_lc_smooth_normal : ∀ (O₀ : Type u) [CommRing O₀] [IsLocalRing O₀]
    [IsNoetherianRing O₀], IsRegularLocalRing O₀ →
    ∀ (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) [P.IsPrime],
    P.comap (Polynomial.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
      IsLocalRing.maximalIdeal O₀ →
    IsDomain (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
      (Localization.AtPrime P)) ∧
    IsIntegrallyClosed (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
      (Localization.AtPrime P)) :=
by
  intro O₀ _ _ _ hreg P _ hP
  classical

  have polyreg : ∀ (K : Type u) [Field K] (Q : Ideal (Polynomial K)) [Q.IsPrime],
      IsRegularLocalRing (Localization.AtPrime Q) := by
    intro K _ Q _
    have hnoeth : IsNoetherianRing (Localization.AtPrime Q) := inferInstance
    refine @IsRegularLocalRing.mk _ _ _ hnoeth ?_
    by_cases hQ : Q = ⊥
    · have hm : IsLocalRing.maximalIdeal (Localization.AtPrime Q) = ⊥ := by
        rw [← Localization.AtPrime.map_eq_maximalIdeal]
        refine le_bot_iff.mp (Ideal.map_le_iff_le_comap.mpr fun x hx => ?_)
        rw [hQ, Ideal.mem_bot] at hx
        rw [Ideal.mem_comap, hx, map_zero]
        exact Ideal.zero_mem _
      rw [← IsLocalRing.maximalIdeal_height_eq_ringKrullDim, hm, Ideal.height_bot,
        Submodule.spanFinrank_bot]
      simp
    · haveI := IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain (Polynomial K) hQ
        (Localization.AtPrime Q)
      rw [IsDiscreteValuationRing.ringKrullDim_eq_one]
      obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (Localization.AtPrime Q)
      rw [(IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ]
      have h1 : Submodule.spanFinrank (Ideal.span {ϖ} : Ideal (Localization.AtPrime Q)) = 1 :=
        Submodule.spanFinrank_singleton hϖ.ne_zero
      rw [h1]
      rfl

  have fibre : ∀ (A : Type u) [CommRing A] [IsLocalRing A] (P : Ideal (Polynomial A)) [P.IsPrime],
      P.comap Polynomial.C = IsLocalRing.maximalIdeal A →
      ∃ (Q : Ideal (Polynomial (IsLocalRing.ResidueField A))) (_ : Q.IsPrime),
        Nonempty ((Localization.AtPrime P ⧸
          Ideal.map (algebraMap A (Localization.AtPrime P)) (IsLocalRing.maximalIdeal A)) ≃+*
          Localization.AtPrime Q) := by
    intro A _ _ P _ hPA
    set π : Polynomial A →+* Polynomial (IsLocalRing.ResidueField A) :=
      Polynomial.mapRingHom (IsLocalRing.residue A) with hπ
    have hπs : Function.Surjective π :=
      Polynomial.map_surjective _ IsLocalRing.residue_surjective
    have hker : RingHom.ker π = Ideal.map Polynomial.C (IsLocalRing.maximalIdeal A) := by
      rw [hπ, Polynomial.ker_mapRingHom, IsLocalRing.ker_residue]
    have hkerP : RingHom.ker π ≤ P := by
      rw [hker, Ideal.map_le_iff_le_comap, hPA]
    haveI hQ : (Ideal.map π P).IsPrime := Ideal.map_isPrime_of_surjective hπs hkerP
    have hcomap : Ideal.comap π (Ideal.map π P) = P := by
      rw [Ideal.comap_map_of_surjective _ hπs, ← RingHom.ker_eq_comap_bot, sup_eq_left.mpr hkerP]
    set Φ := Localization.localRingHom P (Ideal.map π P) π hcomap.symm with hΦ
    have hΦs : Function.Surjective Φ := by
      intro y
      obtain ⟨⟨f, ⟨g, hg⟩⟩, rfl⟩ := IsLocalization.mk'_surjective (Ideal.map π P).primeCompl y
      obtain ⟨f', rfl⟩ := hπs f
      obtain ⟨g', rfl⟩ := hπs g
      have hg' : g' ∈ P.primeCompl := fun h => hg (Ideal.mem_map_of_mem π h)
      refine ⟨IsLocalization.mk' (Localization.AtPrime P) f' ⟨g', hg'⟩, ?_⟩
      rw [hΦ, Localization.localRingHom_mk']
    have hJ' : Ideal.map (algebraMap A (Localization.AtPrime P)) (IsLocalRing.maximalIdeal A) =
        Ideal.map (algebraMap (Polynomial A) (Localization.AtPrime P)) (RingHom.ker π) := by
      rw [hker, Ideal.map_map]
      congr 1
    have hge : Ideal.map (algebraMap A (Localization.AtPrime P)) (IsLocalRing.maximalIdeal A) ≤
        RingHom.ker Φ := by
      rw [hJ', Ideal.map_le_iff_le_comap]
      intro r hr
      rw [Ideal.mem_comap, RingHom.mem_ker, hΦ, Localization.localRingHom_to_map,
        RingHom.mem_ker.mp hr, map_zero]
    have hle : RingHom.ker Φ ≤
        Ideal.map (algebraMap A (Localization.AtPrime P)) (IsLocalRing.maximalIdeal A) := by
      intro x hx
      rw [RingHom.mem_ker] at hx
      obtain ⟨⟨r, ⟨s, hs⟩⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl x
      rw [hΦ, Localization.localRingHom_mk', IsLocalization.mk'_eq_zero_iff] at hx
      obtain ⟨⟨m', hm'⟩, hm'r⟩ := hx
      obtain ⟨t, rfl⟩ := hπs m'
      have ht : t ∈ P.primeCompl := fun h => hm' (Ideal.mem_map_of_mem π h)
      have htr : t * r ∈ RingHom.ker π := by
        rw [RingHom.mem_ker, map_mul]
        exact hm'r
      have hts : t * s ∈ P.primeCompl := P.primeCompl.mul_mem ht hs
      have heq : IsLocalization.mk' (Localization.AtPrime P) r (⟨s, hs⟩ : P.primeCompl) =
          IsLocalization.mk' (Localization.AtPrime P) (t * r) (⟨t * s, hts⟩ : P.primeCompl) := by
        rw [IsLocalization.mk'_eq_iff_eq]
        congr 1
        show t * s * r = s * (t * r)
        ring
      show IsLocalization.mk' (Localization.AtPrime P) r (⟨s, hs⟩ : P.primeCompl) ∈ _
      rw [heq, IsLocalization.mk'_eq_mul_mk'_one, hJ']
      exact Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ htr)
    exact ⟨Ideal.map π P, hQ, ⟨(Ideal.quotEquivOfEq (le_antisymm hge hle)).trans
      (RingHom.quotientKerEquivOfSurjective hΦs)⟩⟩

  have hÂ : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
    wc_pfc_pc_completion_regular wc_hnas_pfc_regular_flat_ascent O₀ hreg
      (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⟨AlgEquiv.refl⟩
  haveI := hÂ

  obtain ⟨_, _, _, _, hm, _⟩ := wcpa_dj_glt_st_completion_facts O₀
  have hP' : P.comap Polynomial.C =
      IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) := by
    have h1 : (P.comap Polynomial.C).comap
        (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) =
        IsLocalRing.maximalIdeal O₀ := by
      rw [Ideal.comap_comap]; exact hP
    have h2 : IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ≤
        P.comap Polynomial.C :=
      (le_of_eq hm).trans (Ideal.map_le_iff_le_comap.mpr h1.ge)
    exact ((IsLocalRing.maximalIdeal.isMaximal _).eq_of_le (Ideal.IsPrime.comap _).ne_top h2).symm

  obtain ⟨Q, hQ, ⟨e⟩⟩ := fibre (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) P hP'
  haveI := hQ
  haveI := polyreg _ Q
  have hF : IsRegularLocalRing (Localization.AtPrime P ⧸
      Ideal.map (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (Localization.AtPrime P))
        (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) :=
    IsRegularLocalRing.of_ringEquiv (R := Localization.AtPrime Q) e.symm

  haveI hBN : IsNoetherianRing (Localization.AtPrime P) :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  haveI : Module.Flat (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (Localization.AtPrime P) :=
    Module.Flat.trans (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) _
  haveI : IsLocalHom (algebraMap (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (Localization.AtPrime P)) := ⟨fun a ha => by
    rw [IsScalarTower.algebraMap_apply (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) (Localization.AtPrime P),
      Polynomial.algebraMap_eq,
      IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime P) P] at ha
    by_contra hna
    apply ha
    have h3 : a ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) :=
      (IsLocalRing.mem_maximalIdeal a).mpr hna
    rw [← hP'] at h3
    exact h3⟩
  have hB : IsRegularLocalRing (Localization.AtPrime P) :=
    wc_hnas_pfc_regular_flat_ascent (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
      (Localization.AtPrime P) hÂ hF

  have hΛ : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
      (Localization.AtPrime P)) :=
    wc_pfc_pc_completion_regular wc_hnas_pfc_regular_flat_ascent (Localization.AtPrime P) hB
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
        (Localization.AtPrime P)) ⟨AlgEquiv.refl⟩

  haveI := hΛ
  obtain ⟨hD, hU⟩ := wc_fco_regular_local_ufd (AdicCompletion
    (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
  haveI := hD
  haveI := hU
  exact ⟨hD, UniqueFactorizationMonoid.instIsIntegrallyClosed⟩

theorem wcpa_dj_glt_cc_local_classify : ∀ (O₀ Oy : Type u) [CommRing O₀] [CommRing Oy]
    [IsLocalRing O₀] [IsLocalRing Oy] [IsNoetherianRing O₀] [IsNoetherianRing Oy]
    (φ : O₀ →+* Oy) [IsLocalHom φ], IsRegularLocalRing O₀ →
    ∀ (N : ℕ) (I : Finset (Fin (N + 1))) (n : ℕ) (t : Fin n → O₀) (α : Fin (N + 1) → ℤ)
      (β : Fin (N + 1) → Fin n → ℤ) (c₀ : Fin n → ℕ),
    (n : WithBot ℕ∞) = ringKrullDim O₀ →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal O₀ →
    (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
    (∀ v ∈ wcpaDjStcBreaks I α β c₀, ∀ w ∈ wcpaDjStcBreaks I α β c₀, v ≤ w ∨ w ≤ v) →
    ∀ x : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy,
    (((∃ l, c₀ l ≠ 0) ∧
      ∃ (v : (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)ˣ)
        (e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
            Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l,
              (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) (t l)) ^ c₀ l)})),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) ∧
        e x = Ideal.Quotient.mk _ (MvPowerSeries.X 0)) ∨
     (c₀ = 0 ∧ ∃ e : AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy ≃+*
          PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀),
        e.toRingHom.comp ((algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)).comp φ) =
          PowerSeries.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
        e x = PowerSeries.X)) →
    ∀ (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
      (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
      ∀ (Q : Ideal (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀)) [Q.IsPrime],
      Q.comap ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
          (wcpaDjGltMon I x (fun l => algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy)
            (φ (t l))) α β a₀ b₀) k₀).comp
          (algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy))) =
        IsLocalRing.maximalIdeal Oy →
      (∃ (h : AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)
        (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q))
            (Localization.AtPrime Q) ≃+*
          (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀) ⧸
            Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})),
        h ∈ (IsLocalRing.maximalIdeal O₀).map
          (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀)) ∧
        ε.toRingHom.comp (wcpaDjGltCcPsi φ (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀)
            k₀ Q) =
          (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp
            (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) ∧
        ∀ z : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q))
            (Localization.AtPrime Q),
          ∃ a : O₀, ¬ IsUnit (z - wcpaDjGltCcPsi φ (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀)
            k₀ Q a)) ∨
      (∃ (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) (_ : P.IsPrime)
        (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q))
            (Localization.AtPrime Q) ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
        P.comap (Polynomial.C.comp (algebraMap O₀ (AdicCompletion (IsLocalRing.maximalIdeal O₀) O₀))) =
          IsLocalRing.maximalIdeal O₀ ∧
        ε.toRingHom.comp (wcpaDjGltCcPsi φ (wcpaDjGltMon I x (fun l =>
            algebraMap Oy (AdicCompletion (IsLocalRing.maximalIdeal Oy) Oy) (φ (t l))) α β a₀ b₀)
            k₀ Q) =
          wcpaDjGltCcSmMap O₀ P) :=
by
  intro O₀ Oy _ _ _ _ _ _ φ _ hreg N I n t α β c₀ hdim hspan hO1 hO2 x hmodel a₀ b₀ k₀ hk₀ hb
    Q _ hQ
  rcases wcpa_dj_glt_cc_lc_toric_data O₀ Oy φ hreg N I n t α β c₀ hdim hspan hO1 hO2 x hmodel
      a₀ b₀ k₀ hk₀ hb Q hQ with
    ⟨lam, mu, u, y', hlm, hu, hy', hux, hxy, hchart, hmuc⟩ | ⟨hc0, lam, u, hu, hux, hchart⟩
  ·
    have key := wcpa_dj_glt_cc_lc_toric_completion O₀ Oy φ hreg N I n t α β c₀ hdim hspan x
      hmodel a₀ b₀ k₀ hk₀ hb Q hQ lam mu u y' hlm hu hy' hux hxy hchart hmuc
    obtain ⟨𝔭, h𝔭I, h𝔭, ε, hε⟩ := key (by
      intro 𝔭 _ h𝔭
      rcases wcpa_dj_glt_cc_lc_b_classify O₀ _ 𝔭 h𝔭 with ⟨hh, εB, _⟩ | ⟨P, hPI, εP, hP, _⟩
      · obtain ⟨hD, hIC, _⟩ :=
          wcpa_dj_glt_cc_lc_node_normal O₀ hreg n t hdim hspan (fun l => mu l - lam l) hh
        haveI := hD
        haveI := hIC
        exact ⟨εB.toMulEquiv.isDomain, IsIntegrallyClosed.of_equiv εB.symm⟩
      · haveI := hPI
        obtain ⟨hD, hIC⟩ := wcpa_dj_glt_cc_lc_smooth_normal O₀ hreg P hP
        haveI := hD
        haveI := hIC
        exact ⟨εP.toMulEquiv.isDomain, IsIntegrallyClosed.of_equiv εP.symm⟩)
    haveI := h𝔭I
    rcases wcpa_dj_glt_cc_lc_b_classify O₀ _ 𝔭 h𝔭 with ⟨hh, εB, hεB⟩ | ⟨P, hPI, εP, hP, hεP⟩
    ·
      refine Or.inl ⟨_, ε.trans εB, hh, ?_, ?_⟩
      · apply RingHom.ext
        intro a
        exact (congrArg εB (RingHom.congr_fun hε a)).trans (RingHom.congr_fun hεB a)
      · intro z
        obtain ⟨-, -, hres⟩ :=
          wcpa_dj_glt_cc_lc_node_normal O₀ hreg n t hdim hspan (fun l => mu l - lam l) hh
        obtain ⟨a, ha⟩ := hres ((ε.trans εB) z)
        refine ⟨a, fun hunit => ha ?_⟩
        have h1 := hunit.map (ε.trans εB)
        rw [map_sub] at h1
        have h2 := (congrArg εB (RingHom.congr_fun hε a)).trans (RingHom.congr_fun hεB a)
        convert h1 using 2
        exact h2.symm
    ·
      exact Or.inr ⟨P, hPI, ε.trans εP, hP, RingHom.ext fun a =>
        (congrArg εP (RingHom.congr_fun hε a)).trans (RingHom.congr_fun hεP a)⟩
  ·
    rcases hmodel with ⟨⟨l, hl⟩, -⟩ | ⟨-, hZ⟩
    · exact absurd (by rw [hc0]; rfl) hl
    · exact Or.inr (wcpa_dj_glt_cc_lc_toric_completion_z O₀ Oy φ hreg N I n t α β hdim hspan x hZ
        a₀ b₀ k₀ hk₀ hb Q hQ lam u hu hux hchart
        (fun P _ hP => wcpa_dj_glt_cc_lc_smooth_normal O₀ hreg P hP))

theorem wcpa_dj_glt_st_twist_ideals : ∀ (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D]
    (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))) [P.IsPrime],
    P.comap (Polynomial.C.comp (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) =
      IsLocalRing.maximalIdeal D →
    ∀ (δ : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
    δ ∈ ((IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))) ^ 2 →
    ∀ (σ : Polynomial D →+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
    (∀ d : D, σ (Polynomial.C d) = wcpaDjGltCcSmMap D P d) →
    σ Polynomial.X = algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) (Localization.AtPrime P)
        Polynomial.X) + δ →
    (∀ p : Polynomial D, σ p ∈ (IsLocalRing.maximalIdeal (Localization.AtPrime P)).map
        (algebraMap (Localization.AtPrime P)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))) ↔
      p ∈ P.comap (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))) ∧
    (P.comap (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))).map σ =
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))) ∧
    (∀ z : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P),
      ∃ p s : Polynomial D,
        s ∉ P.comap (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) ∧
        z * σ s - σ p ∈ (IsLocalRing.maximalIdeal (Localization.AtPrime P)).map
          (algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))) :=
by
  intro D _ _ _ P _ hPc δ hδ σ hσC hσX
  classical
  obtain ⟨hDloc, hDlh, hDnoeth, hDff, hDmax, hDapp⟩ := wcpa_dj_glt_st_completion_facts D
  haveI := hDnoeth
  haveI hBnoeth : IsNoetherianRing (Localization.AtPrime P) :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  obtain ⟨hBloc, hBlh, hBnoeth', hBff, hBmax, hBapp⟩ :=
    wcpa_dj_glt_st_completion_facts (Localization.AtPrime P)
  haveI := hBloc
  haveI := hBlh
  haveI := hBnoeth'
  set 𝔫 := (IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
    (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))
    with h𝔫
  set P₀ := P.comap (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))
    with hP₀
  obtain ⟨κ, hκ⟩ : ∃ κ : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D) →+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P),
      ∀ q, κ q = algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
        (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
          (Localization.AtPrime P) q) :=
    ⟨(algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))).comp
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
          (Localization.AtPrime P)), fun _ => rfl⟩
  have hκeq : κ = (algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))).comp
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
          (Localization.AtPrime P)) := RingHom.ext hκ

  have hRefl : ∀ b : Localization.AtPrime P, algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)) b ∈ 𝔫 ↔
      b ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
    intro b
    change _ ∈ 𝔫 ↔ _
    rw [← hBmax]
    simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
  have hJ : 𝔫 ≤ (⊥ : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
      (Localization.AtPrime P))).jacobson := by
    have h1 : (⊥ : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
        (Localization.AtPrime P))).jacobson = 𝔫 :=
      (IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top).trans hBmax
    exact h1.ge
  have hFG : 𝔫.FG := IsNoetherian.noetherian 𝔫
  have hApp : ∀ z, ∃ b : Localization.AtPrime P, z - algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)) b ∈ 𝔫 := by
    intro z
    obtain ⟨b, hb⟩ := hBapp 1 z
    exact ⟨b, by rwa [pow_one] at hb⟩
  have h𝔫2 : 𝔫 ^ 2 ≤ 𝔫 := Ideal.pow_le_self two_ne_zero

  have g1 : ∀ q, κ q ∈ 𝔫 ↔ q ∈ P := by
    intro q
    rw [hκ]
    exact (hRefl _).trans (IsLocalization.AtPrime.to_map_mem_maximal_iff _ P q)

  have g2 : Ideal.map Polynomial.C ((IsLocalRing.maximalIdeal D).map
      (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) ≤ P := by
    rw [Ideal.map_le_iff_le_comap, Ideal.map_le_iff_le_comap, Ideal.comap_comap, hPc]

  have g3i : ∀ d : D, κ (Polynomial.C (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) d)) =
      σ (Polynomial.C d) := by
    intro d
    rw [hκ, hσC]
    rfl
  have g3ii : ∀ d ∈ IsLocalRing.maximalIdeal D, Polynomial.C d ∈ P₀ := by
    intro d hd
    have h1 : d ∈ P.comap (Polynomial.C.comp
        (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) := by
      rw [hPc]; exact hd
    rw [hP₀, Ideal.mem_comap, Polynomial.coe_mapRingHom, Polynomial.map_C]
    exact h1
  have g3' : Ideal.map Polynomial.C ((IsLocalRing.maximalIdeal D).map
      (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) ≤ (P₀.map σ).comap κ := by
    rw [Ideal.map_le_iff_le_comap, Ideal.map_le_iff_le_comap]
    intro d hd
    show κ (Polynomial.C (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) d)) ∈ P₀.map σ
    rw [g3i]
    exact Ideal.mem_map_of_mem σ (g3ii d hd)

  have g4 : ∀ p : Polynomial D,
      σ p - κ (p.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) ∈ 𝔫 ^ 2 := by
    have hext : (Ideal.Quotient.mk (𝔫 ^ 2)).comp σ = (Ideal.Quotient.mk (𝔫 ^ 2)).comp
        (κ.comp (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))) := by
      apply Polynomial.ringHom_ext
      · intro d
        simp only [RingHom.comp_apply, Polynomial.coe_mapRingHom, Polynomial.map_C]
        rw [g3i]
      · simp only [RingHom.comp_apply, Polynomial.coe_mapRingHom, Polynomial.map_X]
        rw [Ideal.Quotient.eq, hσX, hκ]
        have e : algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) (Localization.AtPrime P)
              Polynomial.X) + δ - algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) (Localization.AtPrime P)
              Polynomial.X) = δ := by ring
        rw [e]
        exact hδ
    intro p
    have h := RingHom.congr_fun hext p
    simp only [RingHom.comp_apply, Polynomial.coe_mapRingHom] at h
    exact Ideal.Quotient.eq.mp h

  have s4 : ∀ q : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D), ∃ q₀ : Polynomial D,
      q - q₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)) ∈
        Ideal.map Polynomial.C ((IsLocalRing.maximalIdeal D).map
          (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) := by
    intro q
    induction q using Polynomial.induction_on' with
    | add p q hp hq =>
      obtain ⟨p₀, hp₀⟩ := hp
      obtain ⟨q₀, hq₀⟩ := hq
      refine ⟨p₀ + q₀, ?_⟩
      have h := Ideal.add_mem _ hp₀ hq₀
      rw [Polynomial.map_add]
      convert h using 1
      ring
    | monomial n a =>
      obtain ⟨d, hd⟩ := hDapp 1 a
      rw [pow_one] at hd
      refine ⟨Polynomial.monomial n d, ?_⟩
      rw [Polynomial.map_monomial, ← map_sub, ← Polynomial.C_mul_X_pow_eq_monomial]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ hd)

  have ha : ∀ p : Polynomial D, σ p ∈ 𝔫 ↔ p ∈ P₀ := by
    intro p
    have e := h𝔫2 (g4 p)
    have hmem : p ∈ P₀ ↔
        κ (p.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) ∈ 𝔫 := by
      rw [g1]; exact Iff.rfl
    rw [hmem]
    constructor
    · intro h
      have h2 := sub_mem h e
      rwa [sub_sub_cancel] at h2
    · intro h
      have h2 := add_mem e h
      rwa [sub_add_cancel] at h2

  have hb : P₀.map σ = 𝔫 := by
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro p hp
      exact (ha p).mpr hp
    · have h𝔫eq : 𝔫 = Ideal.map κ P := by
        rw [hκeq, ← Ideal.map_map, Localization.AtPrime.map_eq_maximalIdeal]
      have hstep : Ideal.map κ P ≤ P₀.map σ ⊔ 𝔫 ^ 2 := by
        rw [Ideal.map_le_iff_le_comap]
        intro q hq
        obtain ⟨q₀, hq₀⟩ := s4 q
        have hr := g2 hq₀
        have hq₀P : q₀ ∈ P₀ := by
          show Polynomial.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)) q₀ ∈ P
          have h2 := sub_mem hq hr
          rwa [sub_sub_cancel] at h2
        rw [Ideal.mem_comap, Submodule.mem_sup]
        refine ⟨σ q₀ + κ (q - q₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))),
          add_mem (Ideal.mem_map_of_mem σ hq₀P) (g3' hq₀),
          -(σ q₀ - κ (q₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))),
          neg_mem (g4 q₀), ?_⟩
        rw [map_sub]
        ring
      have hle : 𝔫 ≤ P₀.map σ ⊔ 𝔫 • 𝔫 := by
        rw [Ideal.smul_eq_mul, ← sq]
        calc 𝔫 = Ideal.map κ P := h𝔫eq
          _ ≤ _ := hstep
      exact Submodule.le_of_le_smul_of_le_jacobson_bot hFG hJ hle

  have hc : ∀ z : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P),
      ∃ p s : Polynomial D, s ∉ P₀ ∧ z * σ s - σ p ∈ 𝔫 := by
    intro z
    obtain ⟨b, hbz⟩ := hApp z
    obtain ⟨⟨a, t⟩, hat⟩ := IsLocalization.mk'_surjective P.primeCompl b
    have hat' : IsLocalization.mk' (Localization.AtPrime P) a t = b := hat
    subst hat'
    obtain ⟨a₀, ha₀⟩ := s4 a
    obtain ⟨t₀, ht₀⟩ := s4 (t : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
    have hra := (g1 _).mpr (g2 ha₀)
    have hrt := (g1 _).mpr (g2 ht₀)
    refine ⟨a₀, t₀, ?_, ?_⟩
    · intro ht
      have ht' : Polynomial.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)) t₀ ∈ P := ht
      apply t.2
      have e : (t : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) =
          Polynomial.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)) t₀ +
            ((t : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) -
              Polynomial.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)) t₀) := by ring
      rw [e]
      exact add_mem ht' (g2 ht₀)
    · have key : algebraMap (Localization.AtPrime P)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
          (IsLocalization.mk' (Localization.AtPrime P) a t) * κ t = κ a := by
        rw [hκ, hκ, ← map_mul, IsLocalization.mk'_spec]
      have h0 : algebraMap (Localization.AtPrime P)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
          (IsLocalization.mk' (Localization.AtPrime P) a t) * κ t - κ a ∈ 𝔫 := by
        rw [key, sub_self]; exact zero_mem _
      have iden : z * σ t₀ - σ a₀ =
          (z - algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (IsLocalization.mk' (Localization.AtPrime P) a t)) * σ t₀ +
          algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (IsLocalization.mk' (Localization.AtPrime P) a t) *
            (σ t₀ - κ (t₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))) -
          algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (IsLocalization.mk' (Localization.AtPrime P) a t) *
            κ ((t : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) -
              t₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) +
          (algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
            (IsLocalization.mk' (Localization.AtPrime P) a t) * κ t - κ a) +
          κ (a - a₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) +
          -(σ a₀ - κ (a₀.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))) := by
        simp only [map_sub]
        ring
      rw [iden]
      refine add_mem (add_mem (add_mem (sub_mem (add_mem ?_ ?_) ?_) h0) hra) (neg_mem (h𝔫2 (g4 a₀)))
      · exact Ideal.mul_mem_right _ _ hbz
      · exact Ideal.mul_mem_left _ _ (h𝔫2 (g4 t₀))
      · exact Ideal.mul_mem_left _ _ hrt
  exact ⟨ha, hb, hc⟩

theorem wcpa_dj_glt_st_twist_flat : ∀ (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D]
    (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))) [P.IsPrime],
    P.comap (Polynomial.C.comp (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) =
      IsLocalRing.maximalIdeal D →
    ∀ (δ : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
    δ ∈ ((IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))) ^ 2 →
    ∀ (σ : Polynomial D →+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)),
    (∀ d : D, σ (Polynomial.C d) = wcpaDjGltCcSmMap D P d) →
    σ Polynomial.X = algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D)) (Localization.AtPrime P)
        Polynomial.X) + δ →
    (P.comap (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)))).map σ =
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))) →
    σ.Flat :=
by

  have s3 : ∀ {S : Type u} [CommRing S] (I : Ideal S) [IsAdicComplete I S] (Φ : S →+* S),
      (∀ z, Φ z - z ∈ I ^ 2) → Function.Bijective Φ := by
    intro S _ I _ Φ h
    have hsm : ∀ n : ℕ, (I ^ n • ⊤ : Submodule S S) = I ^ n := fun n => by simp
    have hmod : ∀ (n : ℕ) (x y : S), x ≡ y [SMOD (I ^ n • ⊤ : Submodule S S)] ↔ x - y ∈ I ^ n := by
      intro n x y; rw [SModEq.sub_mem, hsm]
    have hD : ∀ k : ℕ, ∀ z ∈ I ^ k, Φ z - z ∈ I ^ (k + 1) := by
      intro k
      induction k with
      | zero => intro z _; exact Ideal.pow_le_pow_right (by norm_num) (h z)
      | succ k ih =>
        intro z hz
        rw [pow_succ'] at hz
        refine Submodule.mul_induction_on hz ?_ ?_
        · intro y hy x hx
          have e : Φ (y * x) - y * x = Φ y * (Φ x - x) + (Φ y - y) * x := by rw [map_mul]; ring
          rw [e]
          refine Ideal.add_mem _ ?_ ?_
          · have hΦy : Φ y ∈ I := by
              have := Ideal.add_mem _ hy (Ideal.pow_le_self two_ne_zero (h y))
              simpa using this
            have := Ideal.mul_mem_mul hΦy (ih x hx)
            rw [← pow_succ'] at this
            exact this
          · have := Ideal.mul_mem_mul (h y) hx
            rw [← pow_add] at this
            have e2 : 2 + k = k + 1 + 1 := by omega
            rw [e2] at this; exact this
        · intro a b ha hb
          have e : Φ (a + b) - (a + b) = (Φ a - a) + (Φ b - b) := by rw [map_add]; ring
          rw [e]; exact Ideal.add_mem _ ha hb
    have hD' : ∀ k : ℕ, ∀ z ∈ I ^ k, Φ z ∈ I ^ k := fun k z hz => by
      have := Ideal.add_mem _ hz (Ideal.pow_le_pow_right (Nat.le_succ k) (hD k z hz))
      simpa using this
    have hH : ∀ x : S, (∀ n : ℕ, x ∈ I ^ n) → x = 0 := fun x hx =>
      IsHausdorff.haus' (I := I) x (fun n => (hmod n x 0).mpr (by simpa using hx n))
    constructor
    · rw [injective_iff_map_eq_zero]
      intro x hx
      apply hH
      intro n
      induction n with
      | zero => simp
      | succ n ih =>
        have := hD n x ih
        rw [hx, zero_sub] at this
        simpa using this
    · intro z
      let r : ℕ → S := fun k => Nat.rec z (fun _ rk => rk - Φ rk) k
      have hr0 : r 0 = z := rfl
      have hrs : ∀ k, r (k+1) = r k - Φ (r k) := fun k => rfl
      have hrI : ∀ k, r k ∈ I ^ k := by
        intro k; induction k with
        | zero => simp
        | succ k ih =>
          rw [hrs]
          have := neg_mem (hD k _ ih)
          simpa using this
      let s : ℕ → S := fun n => ∑ k ∈ Finset.range n, r k
      have hΦs : ∀ n, Φ (s n) = z - r n := by
        intro n; induction n with
        | zero => simp [s, hr0]
        | succ n ih =>
          simp only [s, Finset.sum_range_succ, map_add] at ih ⊢
          rw [ih, hrs]; ring
      have hcauchy : ∀ {m n : ℕ}, m ≤ n → s m ≡ s n [SMOD (I ^ m • ⊤ : Submodule S S)] := by
        intro m n hmn
        rw [hmod]
        have : s n - s m = ∑ k ∈ Finset.Ico m n, r k := by
          simp only [s]; rw [Finset.sum_Ico_eq_sub _ hmn]
        rw [← neg_sub, this]
        exact neg_mem (Ideal.sum_mem _ fun k hk =>
          Ideal.pow_le_pow_right (Finset.mem_Ico.mp hk).1 (hrI k))
      obtain ⟨L, hL⟩ := IsPrecomplete.prec' (I := I) s hcauchy
      refine ⟨L, ?_⟩
      have : Φ L - z = 0 := hH _ fun n => by
        have h1 := (hmod n _ _).mp (hL n)
        have e : Φ L - z = -(Φ (s n - L)) - r n := by rw [map_sub, hΦs]; ring
        rw [e]; exact Ideal.sub_mem _ (neg_mem (hD' n _ h1)) (hrI n)
      exact sub_eq_zero.mp this

  have s2 : ∀ (R : Type u) [CommRing R] (I : Ideal R), I.FG →
      IsAdicComplete (I.map (algebraMap R (AdicCompletion I R))) (AdicCompletion I R) := by
    intro R _ I hI
    haveI h := AdicCompletion.isAdicComplete (M := R) hI
    have key : ∀ (n : ℕ) (x : AdicCompletion I R),
        x ∈ (I ^ n • ⊤ : Submodule R (AdicCompletion I R)) ↔
        x ∈ ((I.map (algebraMap R (AdicCompletion I R))) ^ n • ⊤ :
          Submodule (AdicCompletion I R) (AdicCompletion I R)) := by
      intro n x
      rw [Ideal.smul_top_eq_map, smul_eq_mul, Ideal.mul_top, Ideal.map_pow]
      rfl
    have hmod : ∀ n (x y : AdicCompletion I R),
        x ≡ y [SMOD (I ^ n • ⊤ : Submodule R (AdicCompletion I R))] ↔
        x ≡ y [SMOD ((I.map (algebraMap R (AdicCompletion I R))) ^ n • ⊤ :
          Submodule (AdicCompletion I R) (AdicCompletion I R))] := by
      intro n x y; rw [SModEq.sub_mem, SModEq.sub_mem, key]
    haveI : IsHausdorff (I.map (algebraMap R (AdicCompletion I R))) (AdicCompletion I R) :=
      ⟨fun x hx => IsHausdorff.haus' (I := I) x fun n => (hmod n x 0).mpr (hx n)⟩
    haveI : IsPrecomplete (I.map (algebraMap R (AdicCompletion I R))) (AdicCompletion I R) :=
      ⟨fun f hf => by
        obtain ⟨L, hL⟩ := IsPrecomplete.prec' (I := I) f fun hmn => (hmod _ _ _).mpr (hf hmn)
        exact ⟨L, fun n => (hmod n _ _).mp (hL n)⟩⟩
    exact IsAdicComplete.mk

  have sdense : ∀ (R : Type u) [CommRing R] (I : Ideal R), I.FG → ∀ z : AdicCompletion I R,
      ∃ p : R, z - algebraMap R (AdicCompletion I R) p ∈
        (I.map (algebraMap R (AdicCompletion I R))) ^ 2 := by
    intro R _ I hI z
    have hmem : ∀ b : AdicCompletion I R,
        b ∈ Ideal.map (algebraMap R (AdicCompletion I R)) (I ^ 2) ↔
        AdicCompletion.eval I R 2 b = 0 := by
      intro b
      have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := R) (n := 2) hI
      have h2 := Ideal.smul_top_eq_map (S := AdicCompletion I R) (I ^ 2)
      have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
      rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
      exact h3
    have hof : ∀ p : R, AdicCompletion.eval I R 2 (algebraMap R (AdicCompletion I R) p) =
        Submodule.Quotient.mk p := by
      intro p
      change AdicCompletion.eval I R 2 (AdicCompletion.of I R p) = _
      rw [AdicCompletion.eval_of]
      rfl
    obtain ⟨p, hp⟩ := Submodule.Quotient.mk_surjective _ (AdicCompletion.eval I R 2 z)
    refine ⟨p, ?_⟩
    rw [← Ideal.map_pow]
    refine (hmem _).mpr ?_
    rw [map_sub, hof, hp, sub_self]

  have s4 : ∀ {R L S : Type u} [CommRing R] [CommRing L] [CommRing S] [Algebra R L]
      (M : Submonoid R) [IsLocalization M L] (J : Ideal S), J ≤ (⊥ : Ideal S).jacobson →
      ∀ (j : L →+* S) (φ₀ : R →+* S), (∀ r, φ₀ r - j (algebraMap R L r) ∈ J) →
      ∃ φ₁ : L →+* S, (∀ r, φ₁ (algebraMap R L r) = φ₀ r) ∧ ∀ l, φ₁ l - j l ∈ J := by
    intro R L S _ _ _ _ M _ J hJ j φ₀ h
    have hunit : ∀ m : M, IsUnit (φ₀ m) := by
      intro m
      have hu : IsUnit (j (algebraMap R L m)) := (IsLocalization.map_units L m).map j
      obtain ⟨u, hu'⟩ := hu
      have he := hJ (h m)
      rw [Ideal.mem_jacobson_bot] at he
      have := he (↑u⁻¹)
      have e : (φ₀ m - j (algebraMap R L m)) * ↑u⁻¹ + 1 = φ₀ m * ↑u⁻¹ := by
        rw [← hu', sub_mul, Units.mul_inv]; ring
      rw [e] at this
      exact isUnit_of_mul_isUnit_left this
    refine ⟨IsLocalization.lift hunit, fun r => IsLocalization.lift_eq hunit r, ?_⟩
    intro l
    obtain ⟨⟨r, m⟩, rfl⟩ := IsLocalization.mk'_surjective M l
    dsimp only
    set a := IsLocalization.lift hunit (IsLocalization.mk' L r m) with ha_def
    set b := j (IsLocalization.mk' L r m) with hb_def
    have ha : a * φ₀ m = φ₀ r := by
      have := (IsLocalization.lift_mk'_spec hunit r a m).mp rfl
      rw [this, mul_comm]
    have hb : b * j (algebraMap R L m) = j (algebraMap R L r) := by
      rw [hb_def, ← map_mul, IsLocalization.mk'_spec]
    have hU : IsUnit (φ₀ m * j (algebraMap R L m)) :=
      (hunit m).mul ((IsLocalization.map_units L m).map j)
    obtain ⟨w, hw⟩ := hU
    have key : (a - b) * (φ₀ m * j (algebraMap R L m)) ∈ J := by
      have e : (a - b) * (φ₀ m * j (algebraMap R L m)) =
          (φ₀ r - j (algebraMap R L r)) * j (algebraMap R L m) -
            j (algebraMap R L r) * (φ₀ m - j (algebraMap R L m)) := by
        linear_combination (j (algebraMap R L m)) * ha - (φ₀ m) * hb
      rw [e]; exact J.sub_mem (J.mul_mem_right _ (h r)) (J.mul_mem_left _ (h m))
    have : a - b = (a - b) * (φ₀ m * j (algebraMap R L m)) * ↑w⁻¹ := by
      rw [← hw, mul_assoc, Units.mul_inv, mul_one]
    rw [this]; exact J.mul_mem_right _ key

  have s5 : ∀ {B : Type u} [CommRing B] (I : Ideal B)
      [IsAdicComplete (I.map (algebraMap B (AdicCompletion I B))) (AdicCompletion I B)],
      (∀ z : AdicCompletion I B, ∃ p : B,
        z - algebraMap B (AdicCompletion I B) p ∈ (I.map (algebraMap B (AdicCompletion I B))) ^ 2) →
      ∀ (Φ₁ : B →+* AdicCompletion I B),
      (∀ b, Φ₁ b - algebraMap B (AdicCompletion I B) b ∈
        (I.map (algebraMap B (AdicCompletion I B))) ^ 2) →
      ∃ Φ : AdicCompletion I B →+* AdicCompletion I B,
        (∀ b, Φ (algebraMap B (AdicCompletion I B) b) = Φ₁ b) ∧
        ∀ z, Φ z - z ∈ (I.map (algebraMap B (AdicCompletion I B))) ^ 2 := by
    intro B _ I _ hdense Φ₁ h
    set N := I.map (algebraMap B (AdicCompletion I B)) with hN
    have hsm : ∀ n : ℕ,
        (N ^ n • ⊤ : Submodule (AdicCompletion I B) (AdicCompletion I B)) = N ^ n :=
      fun n => by simp
    have hH : ∀ x : AdicCompletion I B, (∀ n : ℕ, x ∈ N ^ n) → x = 0 := fun x hx =>
      IsHausdorff.haus' (I := N) x (fun n => by rw [SModEq.sub_mem, hsm]; simpa using hx n)
    have hI1 : I.map Φ₁ ≤ N := by
      rw [Ideal.map_le_iff_le_comap]
      intro b hb
      show Φ₁ b ∈ N
      have h1 : algebraMap B (AdicCompletion I B) b ∈ N := Ideal.mem_map_of_mem _ hb
      have := Ideal.add_mem _ h1 (Ideal.pow_le_self two_ne_zero (h b))
      simpa using this
    have hn : ∀ n : ℕ, I ^ n ≤ (N ^ n).comap Φ₁ := fun n => by
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
      exact Ideal.pow_right_mono hI1 n
    let f : (n : ℕ) → AdicCompletion I B →+* AdicCompletion I B ⧸ N ^ n := fun n =>
      (Ideal.quotientMap (N ^ n) Φ₁ (hn n)).comp (AdicCompletion.evalₐ I n).toRingHom
    have hf : ∀ {m n : ℕ} (hle : m ≤ n), (Ideal.Quotient.factorPow N hle).comp (f n) = f m := by
      intro m n hle
      ext x
      obtain ⟨a, rfl⟩ := AdicCompletion.mk_surjective I B x
      simp only [f, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        AdicCompletion.evalₐ_mk, Ideal.quotientMap_mk]
      rw [Ideal.Quotient.factorPow, Ideal.Quotient.factor_mk, Ideal.Quotient.eq, ← map_sub]
      apply hn m
      have h2 := AdicCompletion.AdicCauchySequence.mk_eq_mk hle a
      rw [Submodule.Quotient.eq] at h2
      simpa using h2
    let Φ := IsAdicComplete.liftRingHom N f hf
    have hΦ : ∀ n x, Ideal.Quotient.mk (N ^ n) (Φ x) = f n x := fun n x =>
      RingHom.congr_fun (IsAdicComplete.mk_comp_liftRingHom N f hf n) x
    have hΦι : ∀ b, Φ (algebraMap B (AdicCompletion I B) b) = Φ₁ b := by
      intro b
      rw [← sub_eq_zero]
      apply hH
      intro n
      rw [← Ideal.Quotient.eq, hΦ]
      simp only [f, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        AdicCompletion.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply,
        AdicCompletion.evalₐ_of, Ideal.quotientMap_mk]
    refine ⟨Φ, hΦι, ?_⟩
    intro z
    obtain ⟨p, hp⟩ := hdense z
    set w := z - algebraMap B (AdicCompletion I B) p with hw
    have hΦw : Φ w ∈ N ^ 2 := by
      have h1 : w ∈ (I ^ 2).map (algebraMap B (AdicCompletion I B)) := by
        rw [Ideal.map_pow]; exact hp
      have h2 := Ideal.mem_map_of_mem Φ h1
      rw [Ideal.map_map] at h2
      have e : Φ.comp (algebraMap B (AdicCompletion I B)) = Φ₁ := RingHom.ext hΦι
      rw [e] at h2
      exact (Ideal.map_le_iff_le_comap.mpr (hn 2)) h2
    have e : Φ z - z = (Φ w - w) + (Φ₁ p - algebraMap B (AdicCompletion I B) p) := by
      rw [hw, map_sub, hΦι]; ring
    rw [e]
    exact Ideal.add_mem _ (Ideal.sub_mem _ hΦw hp) (h p)

  have s1a : ∀ (D A : Type u) [CommRing D] [CommRing A] [Algebra D A] [Module.Flat D A],
      (Polynomial.mapRingHom (algebraMap D A)).Flat := by
    intro D A _ _ _ _
    letI : Algebra (Polynomial D) (Polynomial A) := Polynomial.algebra D A
    have h := (instIsPushoutPolynomial_1 D (S := A)).out
    haveI := Module.Flat.isBaseChange D (Polynomial D) A (Polynomial A) h
    rw [← Polynomial.algebraMap_def, RingHom.flat_algebraMap_iff]
    infer_instance

  have sNoeth : ∀ (P : Type u) [CommRing P] [IsLocalRing P] [IsNoetherianRing P],
      IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal P) P) := by
    intro P _ _ _
    classical
    obtain ⟨r, x, hx⟩ := Submodule.fg_iff_exists_fin_generating_family.mp
      (IsNoetherian.noetherian (IsLocalRing.maximalIdeal P))
    set I := IsLocalRing.maximalIdeal P with hI
    have hxI : ∀ i, x i ∈ I := fun i => hx ▸ Ideal.subset_span ⟨i, rfl⟩

    have H2 : ∀ (n : ℕ) (q : MvPolynomial (Fin r) P),
        (∀ d : Fin r →₀ ℕ, d.degree < n → q.coeff d = 0) → MvPolynomial.eval x q ∈ I ^ n := by
      intro n q hq
      rw [MvPolynomial.eval_eq']
      refine Ideal.sum_mem _ (fun d hd => ?_)
      have hdeg : n ≤ d.degree := by
        by_contra h
        exact (MvPolynomial.mem_support_iff.mp hd) (hq d (not_le.mp h))
      apply Ideal.mul_mem_left
      have h1 : ∏ i, x i ^ d i ∈ ∏ i, I ^ d i :=
        Ideal.prod_mem_prod (fun i _ => Ideal.pow_mem_pow (hxI i) _)
      rw [Finset.prod_pow_eq_pow_sum, ← Finsupp.degree_eq_sum] at h1
      exact Ideal.pow_le_pow_right hdeg h1

    have HC : ∀ (n : ℕ) (p q : MvPolynomial (Fin r) P),
        (∀ d : Fin r →₀ ℕ, d.degree < n → p.coeff d = q.coeff d) →
        Ideal.Quotient.mk (I ^ n) (MvPolynomial.eval x p) =
          Ideal.Quotient.mk (I ^ n) (MvPolynomial.eval x q) := by
      intro n p q h
      rw [Ideal.Quotient.eq, ← map_sub]
      exact H2 n (p - q) (fun d hd => by rw [MvPolynomial.coeff_sub, h d hd, sub_self])

    have H3' : ∀ (n : ℕ) (y : P), y ∈ Ideal.span (Set.range x) ^ n →
        ∃ h : MvPolynomial (Fin r) P, h.IsHomogeneous n ∧ MvPolynomial.eval x h = y := by
      intro n
      induction n with
      | zero =>
        intro y _
        exact ⟨MvPolynomial.C y, MvPolynomial.isHomogeneous_C _ _, MvPolynomial.eval_C _⟩
      | succ n ih =>
        intro y hy
        rw [pow_succ] at hy
        refine Submodule.mul_induction_on hy ?_ ?_
        · intro a ha b hb
          obtain ⟨ha', hah, hae⟩ := ih a ha
          obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.mp hb
          refine ⟨ha' * ∑ i, MvPolynomial.C (c i) * MvPolynomial.X i, ?_, ?_⟩
          · apply hah.mul
            apply MvPolynomial.IsHomogeneous.sum
            intro i _
            have := (MvPolynomial.isHomogeneous_C (Fin r) (c i)).mul
              (MvPolynomial.isHomogeneous_X P i)
            rwa [zero_add] at this
          · simp only [map_mul, map_sum, MvPolynomial.eval_C, MvPolynomial.eval_X, hae, hc]
        · rintro _ _ ⟨h1, hh1, he1⟩ ⟨h2, hh2, he2⟩
          exact ⟨h1 + h2, hh1.add hh2, by rw [map_add, he1, he2]⟩
    have H3 : ∀ (n : ℕ) (y : P), y ∈ I ^ n →
        ∃ h : MvPolynomial (Fin r) P, h.IsHomogeneous n ∧ MvPolynomial.eval x h = y := by
      intro n y hy
      rw [← hx] at hy
      exact H3' n y hy

    let f : (n : ℕ) → MvPowerSeries (Fin r) P →+* P ⧸ I ^ n := fun n =>
      { toFun := fun F => Ideal.Quotient.mk (I ^ n) (MvPolynomial.eval x (MvPowerSeries.truncTotal n F))
        map_one' := by
          rw [← map_one (Ideal.Quotient.mk (I ^ n)), ← map_one (MvPolynomial.eval x)]
          apply HC
          intro d hd
          rw [MvPowerSeries.coeff_truncTotal _ hd, MvPowerSeries.coeff_one, MvPolynomial.coeff_one]
          by_cases h : d = 0
          · subst h; simp
          · simp [h, Ne.symm h]
        map_mul' := by
          intro F G
          rw [← map_mul, ← map_mul]
          apply HC
          intro d hd
          rw [MvPowerSeries.coeff_truncTotal _ hd, MvPowerSeries.coeff_mul, MvPolynomial.coeff_mul]
          refine Finset.sum_congr rfl (fun p hp => ?_)
          have hp' := Finset.HasAntidiagonal.mem_antidiagonal.mp hp
          have h1 : p.1.degree + p.2.degree = d.degree := by
            rw [← hp', Finsupp.degree_eq_sum, Finsupp.degree_eq_sum, Finsupp.degree_eq_sum,
              ← Finset.sum_add_distrib]
            rfl
          rw [MvPowerSeries.coeff_truncTotal _ (by omega), MvPowerSeries.coeff_truncTotal _ (by omega)]
        map_zero' := by simp
        map_add' := by intro F G; simp }
    have hf : ∀ {m n : ℕ} (hle : m ≤ n), (Ideal.Quotient.factorPow I hle).comp (f n) = f m := by
      intro m n hle
      refine RingHom.ext (fun F => ?_)
      have hfp : ∀ y : P, Ideal.Quotient.factorPow I hle (Ideal.Quotient.mk (I ^ n) y) =
          Ideal.Quotient.mk (I ^ m) y := fun y => rfl
      show Ideal.Quotient.factorPow I hle (Ideal.Quotient.mk (I ^ n)
          (MvPolynomial.eval x (MvPowerSeries.truncTotal n F))) =
        Ideal.Quotient.mk (I ^ m) (MvPolynomial.eval x (MvPowerSeries.truncTotal m F))
      rw [hfp]
      apply HC
      intro d hd
      rw [MvPowerSeries.coeff_truncTotal _ hd,
        MvPowerSeries.coeff_truncTotal _ (lt_of_lt_of_le hd hle)]
    set Ψ := AdicCompletion.liftRingHom I f hf with hΨdef
    have hΨ : ∀ (n : ℕ) (F : MvPowerSeries (Fin r) P), AdicCompletion.evalₐ I n (Ψ F) =
        Ideal.Quotient.mk (I ^ n) (MvPolynomial.eval x (MvPowerSeries.truncTotal n F)) := by
      intro n F
      rw [hΨdef, AdicCompletion.evalₐ_liftRingHom]
      rfl

    have hsurj : Function.Surjective Ψ := by
      intro b
      obtain ⟨a, rfl⟩ := AdicCompletion.mk_surjective I P b
      have ha : ∀ m n, m ≤ n → (a : ℕ → P) n - (a : ℕ → P) m ∈ I ^ m := by
        intro m n hmn
        have := AdicCompletion.AdicCauchySequence.mk_eq_mk hmn a
        rw [Submodule.Quotient.eq] at this
        simpa [Ideal.smul_eq_mul, Ideal.mul_top] using this
      let c : ℕ → P := fun k => if k = 0 then 0 else (a : ℕ → P) k
      have hc : ∀ k, c (k + 1) - c k ∈ I ^ k := by
        intro k
        rcases Nat.eq_zero_or_pos k with rfl | hk
        · simp
        · simp only [c, if_neg (Nat.succ_ne_zero k), if_neg hk.ne']
          exact ha k (k + 1) (Nat.le_succ k)
      choose h hh he using fun k => H3 k _ (hc k)
      let F : MvPowerSeries (Fin r) P := fun e => (h e.degree).coeff e
      refine ⟨F, ?_⟩
      apply AdicCompletion.ext_evalₐ
      intro n
      rw [hΨ, AdicCompletion.evalₐ_mk]
      have e1 : Ideal.Quotient.mk (I ^ n) (MvPolynomial.eval x (MvPowerSeries.truncTotal n F)) =
          Ideal.Quotient.mk (I ^ n) (MvPolynomial.eval x (∑ k ∈ Finset.range n, h k)) := by
        apply HC
        intro d hd
        rw [MvPowerSeries.coeff_truncTotal _ hd, MvPolynomial.coeff_sum,
          Finset.sum_eq_single_of_mem d.degree (Finset.mem_range.mpr hd)]
        · rfl
        · intro k _ hk
          exact (hh k).coeff_eq_zero (Ne.symm hk)
      rw [e1, map_sum]
      simp only [he]
      rw [Finset.sum_range_sub]
      have hc0 : c 0 = 0 := by simp [c]
      rw [hc0, sub_zero]
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · rw [Ideal.Quotient.eq]; simp
      · simp only [c, if_neg hn.ne']
    have : IsNoetherianRing (MvPowerSeries (Fin r) P) := MvPowerSeries.isNoetherianRing P
    exact isNoetherianRing_of_surjective (MvPowerSeries (Fin r) P) _ Ψ hsurj

  intro D _ _ _ P _ _ δ hδ σ hσC hσX _
  haveI hAnoeth : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal D) D) := sNoeth D
  haveI hBnoeth : IsNoetherianRing (Localization.AtPrime P) :=
    IsLocalization.isNoetherianRing P.primeCompl (Localization.AtPrime P) inferInstance
  have hmFG : (IsLocalRing.maximalIdeal (Localization.AtPrime P)).FG := IsNoetherian.noetherian _
  haveI hcompl := s2 (Localization.AtPrime P) (IsLocalRing.maximalIdeal (Localization.AtPrime P)) hmFG

  have hNflat : ((algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))).comp
      ((algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
        (Localization.AtPrime P)).comp
        (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))))).Flat := by
    haveI : Module.Flat D (AdicCompletion (IsLocalRing.maximalIdeal D) D) :=
      AdicCompletion.flat_of_isNoetherian _
    have f1 := s1a D (AdicCompletion (IsLocalRing.maximalIdeal D) D)
    have f2 : (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
        (Localization.AtPrime P)).Flat :=
      RingHom.flat_algebraMap_iff.mpr (IsLocalization.flat (Localization.AtPrime P) P.primeCompl)
    have f3 : (algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
          (Localization.AtPrime P))).Flat :=
      RingHom.flat_algebraMap_iff.mpr (AdicCompletion.flat_of_isNoetherian _)
    exact RingHom.Flat.comp (RingHom.Flat.comp f1 f2) f3

  set κ : Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D) →+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P) :=
    (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))).comp
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
        (Localization.AtPrime P)) with hκ
  set ψ := Polynomial.eval₂RingHom (κ.comp Polynomial.C) (κ Polynomial.X + δ) with hψ
  have hκe : κ = Polynomial.eval₂RingHom (κ.comp Polynomial.C) (κ Polynomial.X) :=
    Polynomial.ringHom_ext (fun a => by simp) (by simp)
  have htaylor : ∀ q, ψ q - κ q ∈
      ((IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))) ^ 2 := by
    intro q
    have e1 : κ q = Polynomial.eval₂ (κ.comp Polynomial.C) (κ Polynomial.X) q := by
      conv_lhs => rw [hκe]
      rfl
    have e2 : ψ q = Polynomial.eval₂ (κ.comp Polynomial.C) (κ Polynomial.X + δ) q := rfl
    rw [e1, e2, Polynomial.eval₂_eq_eval_map, Polynomial.eval₂_eq_eval_map]
    obtain ⟨c, hc⟩ := Polynomial.sub_dvd_eval_sub (κ Polynomial.X + δ) (κ Polynomial.X)
      (q.map (κ.comp Polynomial.C))
    rw [hc, add_sub_cancel_left]
    exact Ideal.mul_mem_right _ _ hδ
  have hjac : ((IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))) ^ 2 ≤
      (⊥ : Ideal (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
        (Localization.AtPrime P))).jacobson :=
    (Ideal.pow_le_self two_ne_zero).trans (IsAdicComplete.le_jacobson_bot _)
  obtain ⟨Φ₁, hΦ₁alg, hΦ₁near⟩ := s4 P.primeCompl _ hjac
    (algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))
    ψ htaylor
  obtain ⟨Φ, hΦι, hΦnear⟩ := s5 (IsLocalRing.maximalIdeal (Localization.AtPrime P))
    (sdense _ _ hmFG) Φ₁ hΦ₁near
  have hbij := s3 _ Φ hΦnear
  have hσeq : σ = Φ.comp ((algebraMap (Localization.AtPrime P)
      (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))).comp
      ((algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
        (Localization.AtPrime P)).comp
        (Polynomial.mapRingHom (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))))) := by
    apply Polynomial.ringHom_ext
    · intro d
      rw [hσC d]
      simp only [RingHom.comp_apply, Polynomial.coe_mapRingHom, Polynomial.map_C]
      rw [hΦι, hΦ₁alg, hψ, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C]
      rfl
    · rw [hσX]
      simp only [RingHom.comp_apply, Polynomial.coe_mapRingHom, Polynomial.map_X]
      rw [hΦι, hΦ₁alg, hψ, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
      rfl
  rw [hσeq]
  exact RingHom.Flat.comp hNflat (RingHom.Flat.of_bijective hbij)

theorem wcpa_dj_glt_st_flat_descent : ∀ (A₀ E R S : Type u) [CommRing A₀] [CommRing E] [CommRing R]
    [CommRing S] [Algebra A₀ E] (M : Submonoid A₀) [IsLocalization M E] [Algebra R S]
    [Module.FaithfullyFlat R S] (g : E →+* R),
    ((algebraMap R S).comp (g.comp (algebraMap A₀ E))).Flat → g.Flat :=
by
  intro A₀ E R S _ _ _ _ _ M _ _ _ g h
  letI : Algebra E R := g.toAlgebra
  letI : Algebra A₀ R := (g.comp (algebraMap A₀ E)).toAlgebra
  letI : Algebra A₀ S := ((algebraMap R S).comp (g.comp (algebraMap A₀ E))).toAlgebra
  haveI : IsScalarTower A₀ E R := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  haveI : IsScalarTower A₀ R S := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  haveI hAS : Module.Flat A₀ S := RingHom.flat_algebraMap_iff.mp h

  have hAR : Module.Flat A₀ R := by
    rw [Module.Flat.iff_lTensor_preserves_injective_linearMap]
    intro N N' _ _ _ _ f hf
    have key : Function.Injective (LinearMap.lTensor S (LinearMap.baseChange R f)) := by
      let e := TensorProduct.AlgebraTensorModule.cancelBaseChange A₀ R S S N
      let e' := TensorProduct.AlgebraTensorModule.cancelBaseChange A₀ R S S N'
      have hsq : ∀ x, e' (LinearMap.lTensor S (LinearMap.baseChange R f) x) =
          LinearMap.lTensor S f (e x) := by
        intro x
        induction x using TensorProduct.induction_on with
        | zero => simp
        | add x y hx hy => simp only [map_add, hx, hy]
        | tmul s y =>
          induction y using TensorProduct.induction_on with
          | zero => simp
          | add y z hy hz => simp only [TensorProduct.tmul_add, map_add, hy, hz]
          | tmul r n =>
            simp [e, e', LinearMap.baseChange_tmul,
              TensorProduct.AlgebraTensorModule.cancelBaseChange_tmul]
      have hS : Function.Injective (LinearMap.lTensor S f) :=
        Module.Flat.lTensor_preserves_injective_linearMap f hf
      intro x y hxy
      apply e.injective
      apply hS
      rw [← hsq, ← hsq, hxy]
    have h2 := (Module.FaithfullyFlat.lTensor_injective_iff_injective R S
      (LinearMap.baseChange R f)).mp key
    rwa [LinearMap.baseChange_eq_ltensor] at h2

  have hE : Module.Flat E R := (Module.flat_iff_of_isLocalization E M R).mpr hAR
  exact RingHom.flat_algebraMap_iff.mpr hE

theorem wcpa_dj_glt_st_unram_etale : ∀ (E R : Type u) [CommRing E] [CommRing R] [IsLocalRing E] [IsLocalRing R] [IsNoetherianRing E] [IsNoetherianRing R] [Algebra E R] [IsLocalHom (algebraMap E R)] [Algebra.EssFiniteType E R] [Module.Flat E R], (IsLocalRing.maximalIdeal E).map (algebraMap E R) = IsLocalRing.maximalIdeal R → (∀ r : R, ∃ e : E, r - algebraMap E R e ∈ IsLocalRing.maximalIdeal R) → Algebra.FormallyEtale E R :=
by
  have s1 (E R : Type u) [CommRing E] [CommRing R] [IsLocalRing E] [IsLocalRing R] [Algebra E R]
      [IsLocalHom (algebraMap E R)] [Algebra.EssFiniteType E R]
      (hmax : (IsLocalRing.maximalIdeal E).map (algebraMap E R) = IsLocalRing.maximalIdeal R)
      (hres : ∀ r : R, ∃ e : E, r - algebraMap E R e ∈ IsLocalRing.maximalIdeal R) :
      Algebra.FormallyUnramified E R := by
    rw [Algebra.FormallyUnramified.iff_map_maximalIdeal_eq]
    refine ⟨?_, hmax⟩
    have hsurj : Function.Surjective
        (algebraMap (IsLocalRing.ResidueField E) (IsLocalRing.ResidueField R)) := by
      intro w
      obtain ⟨r, rfl⟩ := IsLocalRing.residue_surjective w
      obtain ⟨e, he⟩ := hres r
      refine ⟨IsLocalRing.residue E e, ?_⟩
      show IsLocalRing.residue R (algebraMap E R e) = IsLocalRing.residue R r
      exact (Ideal.Quotient.eq.mpr he).symm
    let f := (AlgEquiv.ofBijective (Algebra.ofId (IsLocalRing.ResidueField E)
      (IsLocalRing.ResidueField R)) ⟨RingHom.injective _, hsurj⟩).symm.toAlgHom
    haveI := Algebra.isSeparable_self (IsLocalRing.ResidueField E)
    exact Algebra.IsSeparable.of_algHom _ _ f

  have s6 (E : Type u) [CommRing E] (σ : Type u) (q : Ideal (MvPolynomial σ E)) [q.IsPrime] :
      ∃ b : Module.Basis σ (Localization.AtPrime q) Ω[Localization.AtPrime q⁄E], ∀ j, b j =
        KaehlerDifferential.D E (Localization.AtPrime q)
          (algebraMap (MvPolynomial σ E) (Localization.AtPrime q) (MvPolynomial.X j)) := by
    refine ⟨IsBaseChange.basis (KaehlerDifferential.mvPolynomialBasis E σ)
      (KaehlerDifferential.isBaseChange_of_formallyEtale E (MvPolynomial σ E)
        (Localization.AtPrime q)), fun j => ?_⟩
    rw [IsBaseChange.basis_apply, KaehlerDifferential.mvPolynomialBasis_apply,
      KaehlerDifferential.map_D]

  have s2 (E P R : Type u) [CommRing E] [CommRing P] [CommRing R] [IsNoetherianRing E]
      [Algebra E P] [Algebra E R] [Algebra P R] [IsScalarTower E P R] [Module.Flat E R] (J : Ideal E)
      (hs : Function.Surjective (algebraMap P R)) :
      RingHom.ker (algebraMap P R) ⊓ J.map (algebraMap E P) ≤
        J.map (algebraMap E P) * RingHom.ker (algebraMap P R) := by
    obtain ⟨m, t, ht⟩ := (Submodule.fg_iff_exists_fin_generating_family).mp (IsNoetherian.noetherian J)
    have hJ : J.map (algebraMap E P) = Ideal.span (Set.range (fun k => algebraMap E P (t k))) := by
      have : J = Ideal.span (Set.range t) := ht.symm
      rw [this, Ideal.map_span, ← Set.range_comp]
      rfl
    intro w hw
    obtain ⟨hwI, hwJ⟩ := Submodule.mem_inf.mp hw
    rw [hJ, Ideal.mem_span_range_iff_exists_fun] at hwJ
    obtain ⟨c, rfl⟩ := hwJ
    have h0 : ∑ k, t k • algebraMap P R (c k) = 0 := by
      have := hwI
      rw [RingHom.mem_ker, map_sum] at this
      rw [← this]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [map_mul, ← IsScalarTower.algebraMap_apply, Algebra.smul_def, mul_comm]
    obtain ⟨k', a, y, hy, ha⟩ := Module.Flat.isTrivialRelation_of_sum_smul_eq_zero (R := E) (M := R)
      (f := t) (x := fun k => algebraMap P R (c k)) h0
    choose z hz using fun j => hs (y j)
    have key : ∑ k, (c k - ∑ j, algebraMap E P (a k j) * z j) * algebraMap E P (t k) =
        ∑ k, c k * algebraMap E P (t k) := by
      have h2 : ∑ k, (∑ j, algebraMap E P (a k j) * z j) * algebraMap E P (t k) = 0 := by
        simp_rw [Finset.sum_mul]
        rw [Finset.sum_comm]
        apply Finset.sum_eq_zero
        intro j _
        calc ∑ k, algebraMap E P (a k j) * z j * algebraMap E P (t k)
            = z j * algebraMap E P (∑ k, t k * a k j) := by
              rw [map_sum, Finset.mul_sum]
              refine Finset.sum_congr rfl fun k _ => ?_
              rw [map_mul]; ring
          _ = 0 := by rw [ha j, map_zero, mul_zero]
      simp_rw [sub_mul]
      rw [Finset.sum_sub_distrib, h2, sub_zero]
    rw [← key, hJ]
    refine Ideal.sum_mem _ fun k _ => ?_
    refine Ideal.mul_mem_mul_rev (Ideal.subset_span
      (Set.mem_range_self (f := fun k => algebraMap E P (t k)) k)) ?_
    rw [RingHom.mem_ker, map_sub, show algebraMap P R (c k) = _ from hy k, map_sum]
    rw [sub_eq_zero]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [map_mul, ← IsScalarTower.algebraMap_apply, hz, Algebra.smul_def]

  have s3 (E R : Type u) [CommRing E] [CommRing R] [IsLocalRing R] [Algebra E R]
      [Algebra.EssFiniteType E R] :
      ∃ (s : Finset R) (q : Ideal (MvPolynomial s E)) (_ : q.IsPrime)
        (ψ : Localization.AtPrime q →+* R), Function.Surjective ψ ∧
        ψ.comp (algebraMap E (Localization.AtPrime q)) = algebraMap E R ∧ IsLocalHom ψ := by
    obtain ⟨s, hs⟩ := Algebra.EssFiniteType.cond (R := E) (S := R)
    let φ : MvPolynomial s E →ₐ[E] R := MvPolynomial.aeval (fun x : s => (x : R))
    let q : Ideal (MvPolynomial s E) := (IsLocalRing.maximalIdeal R).comap φ
    haveI : q.IsPrime := Ideal.comap_isPrime _ _
    have hunit : ∀ y : q.primeCompl, IsUnit ((φ : MvPolynomial s E →+* R) y) := by
      intro y
      by_contra h
      exact y.2 (show φ y ∈ IsLocalRing.maximalIdeal R from (IsLocalRing.mem_maximalIdeal _).mpr h)
    let ψ : Localization.AtPrime q →+* R := IsLocalization.lift hunit
    have hψ : ∀ p, ψ (algebraMap _ (Localization.AtPrime q) p) = φ p := IsLocalization.lift_eq hunit
    have hψmk : ∀ (p : MvPolynomial s E) (g : q.primeCompl),
        ψ (IsLocalization.mk' (Localization.AtPrime q) p g) * φ g = φ p := by
      intro p g
      rw [← hψ (g : MvPolynomial s E), ← map_mul, IsLocalization.mk'_spec, hψ]
    refine ⟨s, q, inferInstance, ψ, ?_, ?_, ?_⟩
    · intro r
      obtain ⟨⟨x1, x2⟩, hx⟩ := IsLocalization.surj
        (Submonoid.comap (algebraMap (Algebra.adjoin E (s : Set R)) R) (IsUnit.submonoid R)) r
      have hrange : Algebra.adjoin E (s : Set R) = φ.range := by
        rw [← Subtype.range_coe (s := (s : Set R))]
        exact Algebra.adjoin_range_eq_range_aeval E _
      have h1 : (x1 : R) ∈ φ.range := hrange ▸ x1.2
      have h2 : ((x2 : Algebra.adjoin E (s : Set R)) : R) ∈ φ.range := hrange ▸ x2.1.2
      obtain ⟨f, hf⟩ := h1
      obtain ⟨g, hg⟩ := h2
      have hf' : φ f = (x1 : R) := hf
      have hg' : φ g = ((x2 : Algebra.adjoin E (s : Set R)) : R) := hg
      have hgu : IsUnit (φ g) := by rw [hg']; exact x2.2
      have hgq : g ∈ q.primeCompl := fun h => (IsLocalRing.mem_maximalIdeal _).mp h hgu
      refine ⟨IsLocalization.mk' _ f ⟨g, hgq⟩, ?_⟩
      apply hgu.mul_right_cancel
      rw [hψmk f ⟨g, hgq⟩, hf', hg']
      exact hx.symm
    · ext c
      simp only [RingHom.coe_comp, Function.comp_apply]
      rw [IsScalarTower.algebraMap_apply E (MvPolynomial s E) (Localization.AtPrime q), hψ]
      exact φ.commutes c
    · refine ⟨fun y hy => ?_⟩
      obtain ⟨⟨p, g⟩, rfl⟩ := IsLocalization.mk'_surjective q.primeCompl y
      rw [IsLocalization.AtPrime.isUnit_mk'_iff]
      intro hp
      have hu : IsUnit (φ p) := hψmk p g ▸ hy.mul (hunit g)
      exact (IsLocalRing.mem_maximalIdeal _).mp hp hu

  have s4 (E : Type u) [CommRing E] [IsLocalRing E] (σ : Type u) [Fintype σ]
      (q : Ideal (MvPolynomial σ E)) [q.IsPrime] (e : σ → E)
      (h1 : ∀ j, algebraMap (MvPolynomial σ E) (Localization.AtPrime q)
        (MvPolynomial.X j - MvPolynomial.C (e j)) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime q))
      (h2 : ∀ c : E, algebraMap E (Localization.AtPrime q) c ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime q) → c ∈ IsLocalRing.maximalIdeal E) :
      IsLocalRing.maximalIdeal (Localization.AtPrime q) ≤
        (IsLocalRing.maximalIdeal E).map (algebraMap E (Localization.AtPrime q)) ⊔
          Ideal.span (Set.range fun j => algebraMap (MvPolynomial σ E) (Localization.AtPrime q)
            (MvPolynomial.X j - MvPolynomial.C (e j))) := by
    set A := MvPolynomial σ E
    set P := Localization.AtPrime q
    have taylor : ∀ f : A, f - MvPolynomial.C (MvPolynomial.eval e f) ∈
        Ideal.span (Set.range fun j => (MvPolynomial.X j - MvPolynomial.C (e j) : A)) := by
      intro f
      induction f using MvPolynomial.induction_on with
      | C a => simp
      | add p r hp hr =>
        have : p + r - MvPolynomial.C (MvPolynomial.eval e (p + r)) =
            (p - MvPolynomial.C (MvPolynomial.eval e p)) +
              (r - MvPolynomial.C (MvPolynomial.eval e r)) := by
          rw [map_add, map_add]; ring
        rw [this]; exact add_mem hp hr
      | mul_X p j hp =>
        have : p * MvPolynomial.X j - MvPolynomial.C (MvPolynomial.eval e (p * MvPolynomial.X j)) =
            (p - MvPolynomial.C (MvPolynomial.eval e p)) * MvPolynomial.X j +
              MvPolynomial.C (MvPolynomial.eval e p) * (MvPolynomial.X j - MvPolynomial.C (e j)) := by
          rw [map_mul, MvPolynomial.eval_X, map_mul]; ring
        rw [this]
        exact add_mem (Ideal.mul_mem_right _ _ hp)
          (Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨j, rfl⟩))
    have hCP : ∀ c : E, algebraMap A P (MvPolynomial.C c) = algebraMap E P c := by
      intro c
      rw [IsScalarTower.algebraMap_apply E A P, MvPolynomial.algebraMap_eq]
    intro x hx
    obtain ⟨⟨f, g⟩, rfl⟩ := IsLocalization.mk'_surjective q.primeCompl x
    have hfq : f ∈ q := by
      by_contra hf
      apply (IsLocalRing.mem_maximalIdeal _).mp hx
      exact (IsLocalization.AtPrime.isUnit_mk'_iff P q f g).mpr hf
    obtain ⟨hcoef, hsum⟩ := (Ideal.mem_span_range_iff_exists_fun).mp (taylor f)
    have hf_eq : algebraMap A P f = algebraMap E P (MvPolynomial.eval e f) +
        ∑ j, algebraMap A P (hcoef j) * algebraMap A P (MvPolynomial.X j - MvPolynomial.C (e j)) := by
      rw [← hCP]
      simp_rw [← map_mul]
      rw [← map_sum, ← map_add, hsum]
      congr 1; ring
    have hfP : algebraMap A P f ∈ IsLocalRing.maximalIdeal P := by
      rw [← Localization.AtPrime.map_eq_maximalIdeal]
      exact Ideal.mem_map_of_mem _ hfq
    have hc : MvPolynomial.eval e f ∈ IsLocalRing.maximalIdeal E := by
      apply h2
      have : algebraMap E P (MvPolynomial.eval e f) = algebraMap A P f -
          ∑ j, algebraMap A P (hcoef j) * algebraMap A P (MvPolynomial.X j - MvPolynomial.C (e j)) := by
        rw [hf_eq]; ring
      rw [this]
      exact sub_mem hfP (Ideal.sum_mem _ fun j _ => Ideal.mul_mem_left _ _ (h1 j))
    show IsLocalization.mk' P f g ∈ _
    rw [IsLocalization.mk'_eq_mul_mk'_one, hf_eq]
    refine Ideal.mul_mem_right _ _ (add_mem (Submodule.mem_sup_left (Ideal.mem_map_of_mem _ hc))
      (Submodule.mem_sup_right (Ideal.sum_mem _ fun j _ =>
        Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨j, rfl⟩))))

  have s7 (E R P : Type u) [CommRing E] [CommRing R] [CommRing P] [IsLocalRing E] [IsLocalRing R]
      [IsLocalRing P] [Algebra E R] [Algebra E P] [Algebra P R] [IsScalarTower E P R]
      [IsLocalHom (algebraMap P R)] (σ : Type u) [Fintype σ] [DecidableEq σ]
      (b : Module.Basis σ P Ω[P⁄E]) (Y : σ → P)
      (hsurj : Function.Surjective (algebraMap P R))
      (hmax : (IsLocalRing.maximalIdeal E).map (algebraMap E R) = IsLocalRing.maximalIdeal R)
      (hflat : RingHom.ker (algebraMap P R) ⊓ (IsLocalRing.maximalIdeal E).map (algebraMap E P) ≤
        (IsLocalRing.maximalIdeal E).map (algebraMap E P) * RingHom.ker (algebraMap P R))
      (hY : ∀ j, KaehlerDifferential.D E P (Y j) = b j)
      (hYm : ∀ j, Y j ∈ IsLocalRing.maximalIdeal P)
      (hmP : IsLocalRing.maximalIdeal P ≤
        (IsLocalRing.maximalIdeal E).map (algebraMap E P) ⊔ Ideal.span (Set.range Y)) :
      ∀ i ∈ RingHom.ker (algebraMap P R),
        (∀ j, b.repr (KaehlerDifferential.D E P i) j ∈ IsLocalRing.maximalIdeal P) →
        i ∈ IsLocalRing.maximalIdeal P * RingHom.ker (algebraMap P R) := by
    set M := (IsLocalRing.maximalIdeal E).map (algebraMap E P) with hMdef
    set I := RingHom.ker (algebraMap P R) with hIdef
    have hi : ∀ x : P, algebraMap P R x ∈ IsLocalRing.maximalIdeal R →
        x ∈ IsLocalRing.maximalIdeal P := by
      intro x hx
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff] at hx ⊢
      exact hx
    have hM : M ≤ IsLocalRing.maximalIdeal P := by
      rw [hMdef, Ideal.map_le_iff_le_comap]
      intro t ht
      apply hi
      rw [← IsScalarTower.algebraMap_apply, ← hmax]
      exact Ideal.mem_map_of_mem _ ht
    have hiii : ∀ x ∈ IsLocalRing.maximalIdeal P, ∃ v ∈ M, x - v ∈ I := by
      intro x hx
      have h1 : algebraMap P R x ∈ IsLocalRing.maximalIdeal R := by
        simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff] at hx ⊢
        exact hx
      have h2 : IsLocalRing.maximalIdeal R = M.map (algebraMap P R) := by
        rw [hMdef, Ideal.map_map, ← IsScalarTower.algebraMap_eq, hmax]
      rw [h2, Ideal.mem_map_iff_of_surjective _ hsurj] at h1
      obtain ⟨v, hv, hvx⟩ := h1
      exact ⟨v, hv, by rw [hIdef, RingHom.mem_ker, map_sub, hvx, sub_self]⟩
    have hiv : ∀ u ∈ M, ∀ l, b.repr (KaehlerDifferential.D E P u) l ∈ IsLocalRing.maximalIdeal P := by
      intro u hu
      have hu' : u ∈ Ideal.span (⇑(algebraMap E P) '' (IsLocalRing.maximalIdeal E : Set E)) := hu
      induction hu' using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨t, _, rfl⟩ := hx
        intro l
        rw [Derivation.map_algebraMap, map_zero, Finsupp.zero_apply]
        exact zero_mem _
      | zero =>
        intro l
        rw [map_zero, map_zero, Finsupp.zero_apply]
        exact zero_mem _
      | add x y hx hy ihx ihy =>
        intro l
        rw [map_add, map_add, Finsupp.add_apply]
        exact add_mem (ihx hx l) (ihy hy l)
      | smul a x hx ihx =>
        intro l
        rw [smul_eq_mul, Derivation.leibniz, map_add, map_smul, map_smul, Finsupp.add_apply,
          Finsupp.smul_apply, Finsupp.smul_apply, smul_eq_mul, smul_eq_mul]
        exact add_mem (Ideal.mul_mem_left _ _ (ihx hx l)) (Ideal.mul_mem_right _ _ (hM hx))
    intro i hiI hcoord
    have hiP : i ∈ IsLocalRing.maximalIdeal P := hi i (by rw [hiI]; exact zero_mem _)
    obtain ⟨u, hu, s, hs, hus⟩ := Submodule.mem_sup.mp (hmP hiP)
    obtain ⟨c, rfl⟩ := (Ideal.mem_span_range_iff_exists_fun).mp hs
    have hcoordeq : ∀ l, b.repr (KaehlerDifferential.D E P i) l =
        b.repr (KaehlerDifferential.D E P u) l + c l +
          ∑ j, Y j * b.repr (KaehlerDifferential.D E P (c j)) l := by
      intro l
      rw [← hus]
      simp only [map_add, map_sum, Derivation.leibniz, hY, map_smul, Module.Basis.repr_self,
        Finsupp.add_apply, Finsupp.coe_finset_sum, Finset.sum_apply, Finsupp.smul_apply,
        smul_eq_mul, Finsupp.single_apply, Finset.sum_add_distrib]
      simp [Finset.sum_ite_eq']
      ring
    have hcl : ∀ l, c l ∈ IsLocalRing.maximalIdeal P := by
      intro l
      have : c l = b.repr (KaehlerDifferential.D E P i) l - b.repr (KaehlerDifferential.D E P u) l -
          ∑ j, Y j * b.repr (KaehlerDifferential.D E P (c j)) l := by
        rw [hcoordeq l]; ring
      rw [this]
      exact sub_mem (sub_mem (hcoord l) (hiv u hu l))
        (Ideal.sum_mem _ fun j _ => Ideal.mul_mem_right _ _ (hYm j))
    choose v hvM hvI using fun l => hiii (c l) (hcl l)
    set w := u + ∑ l, v l * Y l with hw
    have hwM : w ∈ M := add_mem hu (Ideal.sum_mem _ fun l _ => Ideal.mul_mem_right _ _ (hvM l))
    have hweq : w = (u + ∑ j, c j * Y j) - ∑ l, (c l - v l) * Y l := by
      rw [hw]; simp_rw [sub_mul]; rw [Finset.sum_sub_distrib]; ring
    have hwI : w ∈ I := by
      rw [hweq, hus]
      exact sub_mem hiI (Ideal.sum_mem _ fun l _ => Ideal.mul_mem_right _ _ (hvI l))
    have hwmI : w ∈ IsLocalRing.maximalIdeal P * I := Ideal.mul_mono_left hM (hflat ⟨hwI, hwM⟩)
    have hfin : u + ∑ j, c j * Y j = w + ∑ l, (c l - v l) * Y l := by rw [hweq]; ring
    rw [← hus, hfin]
    refine add_mem hwmI (Ideal.sum_mem _ fun l _ => ?_)
    rw [mul_comm (c l - v l)]
    exact Ideal.mul_mem_mul (hYm l) (hvI l)

  have s8 (E R P : Type u) [CommRing E] [CommRing R] [CommRing P] [IsLocalRing R] [IsLocalRing P]
      [Algebra E R] [Algebra E P] [Algebra P R] [IsScalarTower E P R] [IsLocalHom (algebraMap P R)]
      (σ : Type u) [Fintype σ] (b : Module.Basis σ P Ω[P⁄E])
      (hsurj : Function.Surjective (algebraMap P R))
      (hstep : ∀ i ∈ RingHom.ker (algebraMap P R),
        (∀ j, b.repr (KaehlerDifferential.D E P i) j ∈ IsLocalRing.maximalIdeal P) →
        i ∈ IsLocalRing.maximalIdeal P * RingHom.ker (algebraMap P R)) :
      Function.Injective (KaehlerDifferential.cotangentComplexBaseChange E R P
        (IsLocalRing.ResidueField R)) := by
    set κ := IsLocalRing.ResidueField R
    set I := RingHom.ker (algebraMap P R) with hIdef
    have halg : ∀ x : P, algebraMap P κ x = IsLocalRing.residue R (algebraMap P R x) := by
      intro x
      rw [IsScalarTower.algebraMap_apply P R κ, IsLocalRing.ResidueField.algebraMap_eq]
    have ha : Function.Surjective (algebraMap P κ) := by
      intro w
      obtain ⟨r, rfl⟩ := IsLocalRing.residue_surjective w
      obtain ⟨p, rfl⟩ := hsurj r
      exact ⟨p, halg p⟩
    have hb : ∀ x ∈ IsLocalRing.maximalIdeal P, algebraMap P κ x = 0 := by
      intro x hx
      rw [halg, IsLocalRing.residue_eq_zero_iff]
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff] at hx ⊢
      exact hx
    have hc : ∀ x : P, algebraMap P κ x = 0 → x ∈ IsLocalRing.maximalIdeal P := by
      intro x hx
      rw [halg, IsLocalRing.residue_eq_zero_iff] at hx
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff] at hx ⊢
      exact hx
    have h1 : ∀ z : TensorProduct P κ I, ∃ i₀ : I, z = TensorProduct.tmul P (1 : κ) i₀ := by
      intro z
      induction z using TensorProduct.induction_on with
      | zero => exact ⟨0, by rw [TensorProduct.tmul_zero]⟩
      | tmul a x =>
        obtain ⟨p, rfl⟩ := ha a
        refine ⟨p • x, ?_⟩
        rw [TensorProduct.tmul_smul, TensorProduct.smul_tmul', Algebra.smul_def, mul_one]
      | add x y hx hy =>
        obtain ⟨i₁, rfl⟩ := hx
        obtain ⟨i₂, rfl⟩ := hy
        exact ⟨i₁ + i₂, by rw [TensorProduct.tmul_add]⟩
    have h5 : ∀ r ∈ IsLocalRing.maximalIdeal P * I, ∀ hr : r ∈ I,
        TensorProduct.tmul P (1 : κ) (⟨r, hr⟩ : I) = 0 := by
      intro r hr
      induction hr using Submodule.mul_induction_on' with
      | mem_mul_mem m hm n hn =>
        intro hr'
        have : (⟨m * n, hr'⟩ : I) = m • (⟨n, hn⟩ : I) := Subtype.ext rfl
        rw [this, TensorProduct.tmul_smul, TensorProduct.smul_tmul', Algebra.smul_def, hb m hm,
          zero_mul, TensorProduct.zero_tmul]
      | add x hx y hy ihx ihy =>
        intro hr'
        have hxI : x ∈ I := Ideal.mul_le_right (I := IsLocalRing.maximalIdeal P) (J := I) hx
        have hyI : y ∈ I := Ideal.mul_le_right (I := IsLocalRing.maximalIdeal P) (J := I) hy
        have : (⟨x + y, hr'⟩ : I) = ⟨x, hxI⟩ + ⟨y, hyI⟩ := Subtype.ext rfl
        rw [this, TensorProduct.tmul_add, ihx hxI, ihy hyI, add_zero]
    rw [injective_iff_map_eq_zero]
    intro z hz
    obtain ⟨i₀, rfl⟩ := h1 z
    rw [KaehlerDifferential.cotangentComplexBaseChange_tmul, one_smul,
      KaehlerDifferential.kerToTensor_apply] at hz
    have hcoord : ∀ j, b.repr (KaehlerDifferential.D E P i₀) j ∈ IsLocalRing.maximalIdeal P := by
      intro j
      apply hc
      have := congrArg (fun t => (Algebra.TensorProduct.basis κ b).repr t j) hz
      simp only [Algebra.TensorProduct.basis_repr_tmul, map_zero, Finsupp.zero_apply, one_smul,
        Finsupp.mapRange_apply] at this
      exact this
    exact h5 _ (hstep _ i₀.2 hcoord) i₀.2
  intro E R _ _ _ _ _ _ _ _ _ _ hmax hres
  classical
  haveI hU : Algebra.FormallyUnramified E R := s1 E R hmax hres
  obtain ⟨s, q, hq, ψ, hsurj, hcomp, hloc⟩ := s3 E R
  letI : Algebra (Localization.AtPrime q) R := ψ.toAlgebra
  have hc' : ∀ c, ψ (algebraMap E (Localization.AtPrime q) c) = algebraMap E R c :=
    fun c => RingHom.congr_fun hcomp c
  haveI : IsScalarTower E (Localization.AtPrime q) R :=
    IsScalarTower.of_algebraMap_eq (fun c => (hc' c).symm)
  haveI : IsLocalHom (algebraMap (Localization.AtPrime q) R) := hloc
  obtain ⟨b, hb⟩ := s6 E s q
  choose e he using fun j : s =>
    hres (ψ (algebraMap (MvPolynomial s E) (Localization.AtPrime q) (MvPolynomial.X j)))
  have hCP : ∀ c : E, algebraMap (MvPolynomial s E) (Localization.AtPrime q) (MvPolynomial.C c) =
      algebraMap E (Localization.AtPrime q) c := by
    intro c
    rw [IsScalarTower.algebraMap_apply E (MvPolynomial s E) (Localization.AtPrime q),
      MvPolynomial.algebraMap_eq]
  let Y : s → Localization.AtPrime q := fun j =>
    algebraMap (MvPolynomial s E) (Localization.AtPrime q) (MvPolynomial.X j - MvPolynomial.C (e j))
  have hψY : ∀ j, ψ (Y j) ∈ IsLocalRing.maximalIdeal R := by
    intro j
    show ψ (algebraMap (MvPolynomial s E) (Localization.AtPrime q)
      (MvPolynomial.X j - MvPolynomial.C (e j))) ∈ _
    rw [map_sub, map_sub, hCP, hc']
    exact he j
  have hYm : ∀ j, Y j ∈ IsLocalRing.maximalIdeal (Localization.AtPrime q) := by
    intro j
    have h := hψY j
    simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at h ⊢
    exact fun hu => h (hu.map ψ)
  have hDY : ∀ j, KaehlerDifferential.D E (Localization.AtPrime q) (Y j) = b j := by
    intro j
    show KaehlerDifferential.D E (Localization.AtPrime q) (algebraMap (MvPolynomial s E)
      (Localization.AtPrime q) (MvPolynomial.X j - MvPolynomial.C (e j))) = _
    rw [map_sub, map_sub, hCP, Derivation.map_algebraMap, sub_zero, hb]
  have hmP := s4 E s q e hYm (fun c hc => by
    by_contra h
    exact (IsLocalRing.mem_maximalIdeal _).mp hc ((IsLocalRing.notMem_maximalIdeal.mp h).map _))
  have hflat := s2 E (Localization.AtPrime q) R (IsLocalRing.maximalIdeal E) hsurj
  have hstep := s7 E R (Localization.AtPrime q) s b Y hsurj hmax hflat hDY hYm hmP
  have hinj := s8 E R (Localization.AtPrime q) s b hsurj hstep
  haveI : Algebra.FormallySmooth E (Localization.AtPrime q) := inferInstance
  haveI : Module.Free (Localization.AtPrime q) Ω[Localization.AtPrime q⁄E] := Module.Free.of_basis b
  haveI : Module.Finite (Localization.AtPrime q) Ω[Localization.AtPrime q⁄E] :=
    Module.Finite.of_basis b
  haveI : Algebra.FormallySmooth E R :=
    (Algebra.FormallySmooth.iff_injective_cotangentComplexBaseChange_residueField
      (Localization.AtPrime q) hsurj (IsNoetherian.noetherian _)).mpr hinj
  exact Algebra.FormallyEtale.of_formallyUnramified_and_formallySmooth

theorem wcpa_dj_glt_st_poly_loc_omega : ∀ (D E R : Type u) [CommRing D] [CommRing E] [CommRing R] [Nontrivial R] [Algebra D E] [Algebra E R] [Algebra D R] [IsScalarTower D E R] [Algebra (Polynomial D) E] [IsScalarTower D (Polynomial D) E] (P₀ : Ideal (Polynomial D)) [P₀.IsPrime] [IsLocalization.AtPrime E P₀] [Algebra.FormallyEtale E R], Algebra.FormallySmooth D R ∧ Module.Free R Ω[R⁄D] ∧ Module.Finite R Ω[R⁄D] ∧ Module.finrank R Ω[R⁄D] = 1 :=
by
  intro D E R _ _ _ _ _ _ _ _ _ _ P₀ _ _ _
  haveI h1 : Algebra.FormallyEtale (Polynomial D) E :=
    Algebra.FormallyEtale.of_isLocalization P₀.primeCompl
  haveI : Algebra.FormallySmooth D E := Algebra.FormallySmooth.comp D (Polynomial D) E
  let b₀ : Module.Basis Unit (Polynomial D) Ω[Polynomial D⁄D] :=
    (Module.Basis.singleton Unit (Polynomial D)).map (KaehlerDifferential.polynomialEquiv D).symm
  let b₁ : Module.Basis Unit E Ω[E⁄D] :=
    IsBaseChange.basis b₀ (KaehlerDifferential.isBaseChange_of_formallyEtale D (Polynomial D) E)
  let b₂ : Module.Basis Unit R Ω[R⁄D] :=
    IsBaseChange.basis b₁ (KaehlerDifferential.isBaseChange_of_formallyEtale D E R)
  exact ⟨Algebra.FormallySmooth.comp D E R, Module.Free.of_basis b₂, Module.Finite.of_basis b₂,
    by rw [Module.finrank_eq_card_basis b₂, Fintype.card_unit]⟩

theorem wcpa_dj_glt_st_spread : ∀ {C T : Scheme.{u}} (f : C ⟶ T) [LocallyOfFiniteType f] [IsLocallyNoetherian T] (c : C), (letI := (f.stalkMap c).hom.toAlgebra; Algebra.FormallySmooth (T.presheaf.stalk (f c)) (C.presheaf.stalk c) ∧ Module.Free (C.presheaf.stalk c) Ω[C.presheaf.stalk c⁄T.presheaf.stalk (f c)] ∧ Module.Finite (C.presheaf.stalk c) Ω[C.presheaf.stalk c⁄T.presheaf.stalk (f c)] ∧ Module.finrank (C.presheaf.stalk c) Ω[C.presheaf.stalk c⁄T.presheaf.stalk (f c)] = 1) → ∃ V : C.Opens, c ∈ V ∧ SmoothOfRelativeDimension 1 (V.ι ≫ f) :=
by
  classical
  intro C T f _ _ c h
  obtain ⟨hfs, -, -, hrk⟩ := h

  obtain ⟨U₀, hU₀mem, hfcU₀, -⟩ :=
    (TopologicalSpace.Opens.isBasis_iff_nbhd.mp (Scheme.isBasis_affineOpens T))
      (show f c ∈ (⊤ : T.Opens) from trivial)
  have hU₀ : IsAffineOpen U₀ := hU₀mem
  obtain ⟨V₀, hV₀mem, hcV₀, e₀⟩ :=
    (TopologicalSpace.Opens.isBasis_iff_nbhd.mp (Scheme.isBasis_affineOpens C))
      (show c ∈ f ⁻¹ᵁ U₀ from hfcU₀)
  have hV₀ : IsAffineOpen V₀ := hV₀mem

  letI iAC : Algebra Γ(T, U₀) Γ(C, V₀) := (f.appLE U₀ V₀ e₀).hom.toAlgebra
  haveI : LocallyOfFinitePresentation f := inferInstance
  haveI hFP : Algebra.FinitePresentation Γ(T, U₀) Γ(C, V₀) :=
    LocallyOfFinitePresentation.finitePresentation_appLE f hU₀ hV₀ e₀
  letI iCO : Algebra Γ(C, V₀) (C.presheaf.stalk c) :=
    TopCat.Presheaf.algebra_section_stalk C.presheaf ⟨c, hcV₀⟩
  letI iAO : Algebra Γ(T, U₀) (C.presheaf.stalk c) :=
    (f.appLE U₀ V₀ e₀ ≫ C.presheaf.germ V₀ c hcV₀).hom.toAlgebra
  haveI : IsScalarTower Γ(T, U₀) Γ(C, V₀) (C.presheaf.stalk c) :=
    IsScalarTower.of_algebraMap_eq (fun x => rfl)
  haveI : IsLocalization.AtPrime (C.presheaf.stalk c) (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal :=
    hV₀.isLocalization_stalk ⟨c, hcV₀⟩

  letI iAP : Algebra Γ(T, U₀) (T.presheaf.stalk (f c)) :=
    TopCat.Presheaf.algebra_section_stalk T.presheaf ⟨f c, hfcU₀⟩
  haveI : IsLocalization.AtPrime (T.presheaf.stalk (f c))
      (hU₀.primeIdealOf ⟨f c, hfcU₀⟩).asIdeal :=
    hU₀.isLocalization_stalk ⟨f c, hfcU₀⟩
  haveI : Algebra.FormallySmooth Γ(T, U₀) (T.presheaf.stalk (f c)) :=
    Algebra.FormallySmooth.of_isLocalization (hU₀.primeIdealOf ⟨f c, hfcU₀⟩).asIdeal.primeCompl
  haveI : Algebra.FormallyEtale Γ(T, U₀) (T.presheaf.stalk (f c)) :=
    Algebra.FormallyEtale.of_isLocalization (hU₀.primeIdealOf ⟨f c, hfcU₀⟩).asIdeal.primeCompl
  letI iPO : Algebra (T.presheaf.stalk (f c)) (C.presheaf.stalk c) :=
    (f.stalkMap c).hom.toAlgebra
  haveI : Algebra.FormallySmooth (T.presheaf.stalk (f c)) (C.presheaf.stalk c) := hfs
  have hrk' : Module.finrank (C.presheaf.stalk c)
      Ω[C.presheaf.stalk c⁄T.presheaf.stalk (f c)] = 1 := hrk
  have key : f.appLE U₀ V₀ e₀ ≫ C.presheaf.germ V₀ c hcV₀ =
      T.presheaf.germ U₀ (f c) hfcU₀ ≫ f.stalkMap c := by
    rw [Scheme.Hom.germ_stalkMap, Scheme.Hom.appLE, Category.assoc, TopCat.Presheaf.germ_res]
  haveI : IsScalarTower Γ(T, U₀) (T.presheaf.stalk (f c)) (C.presheaf.stalk c) :=
    IsScalarTower.of_algebraMap_eq (fun x => congrArg (fun g => g.hom x) key)
  haveI : Algebra.FormallySmooth Γ(T, U₀) (C.presheaf.stalk c) :=
    Algebra.FormallySmooth.comp Γ(T, U₀) (T.presheaf.stalk (f c)) (C.presheaf.stalk c)

  have hrkA : Module.finrank (C.presheaf.stalk c) Ω[C.presheaf.stalk c⁄Γ(T, U₀)] = 1 := by
    haveI : Subsingleton Ω[T.presheaf.stalk (f c)⁄Γ(T, U₀)] :=
      Algebra.FormallyUnramified.subsingleton_kaehlerDifferential
    have hsurj := KaehlerDifferential.map_surjective Γ(T, U₀) (T.presheaf.stalk (f c))
      (C.presheaf.stalk c)
    have hex := KaehlerDifferential.exact_mapBaseChange_map Γ(T, U₀) (T.presheaf.stalk (f c))
      (C.presheaf.stalk c)
    have hinj : Function.Injective (KaehlerDifferential.map Γ(T, U₀) (T.presheaf.stalk (f c))
        (C.presheaf.stalk c) (C.presheaf.stalk c)) := by
      rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
      intro x hx
      obtain ⟨y, rfl⟩ := (hex x).mp hx
      have hy : y = 0 := by
        clear hx
        induction y using TensorProduct.induction_on with
        | zero => rfl
        | tmul o ω => rw [Subsingleton.elim ω 0, TensorProduct.tmul_zero]
        | add y₁ y₂ h₁ h₂ => rw [h₁, h₂, add_zero]
      rw [hy, map_zero]
    rw [LinearEquiv.finrank_eq (LinearEquiv.ofBijective _ ⟨hinj, hsurj⟩), hrk']

  have hsmq : Algebra.IsSmoothAt Γ(T, U₀) (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal := by
    have e1 : C.presheaf.stalk c ≃ₐ[Γ(C, V₀)]
        Localization.AtPrime (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal :=
      IsLocalization.algEquiv (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal.primeCompl _ _
    exact Algebra.FormallySmooth.of_equiv (e1.restrictScalars Γ(T, U₀))
  obtain ⟨b, hb, hstd⟩ :=
    @Algebra.IsSmoothAt.exists_notMem_isStandardSmooth Γ(T, U₀) Γ(C, V₀) _ _ _ _
      (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal _ hsmq
  obtain ⟨ι, σ, hσ, hι, ⟨P⟩⟩ := hstd.out
  haveI hstdm : Algebra.IsStandardSmoothOfRelativeDimension P.dimension Γ(T, U₀)
      (Localization.Away b) := ⟨⟨ι, σ, hσ, hι, P, rfl⟩⟩

  have hdim : P.dimension = 1 := by
    have hle : Submonoid.powers b ≤ (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal.primeCompl :=
      Submonoid.powers_le.mpr hb
    letI : Algebra (Localization.Away b) (C.presheaf.stalk c) :=
      IsLocalization.localizationAlgebraOfSubmonoidLe (Localization.Away b) (C.presheaf.stalk c)
        (Submonoid.powers b) (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal.primeCompl hle
    haveI : IsScalarTower Γ(C, V₀) (Localization.Away b) (C.presheaf.stalk c) :=
      IsLocalization.localization_isScalarTower_of_submonoid_le (Localization.Away b)
        (C.presheaf.stalk c) _ _ hle
    haveI : IsLocalization (Submonoid.map (algebraMap Γ(C, V₀) (Localization.Away b))
        (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal.primeCompl) (C.presheaf.stalk c) :=
      IsLocalization.isLocalization_of_submonoid_le (Localization.Away b) (C.presheaf.stalk c)
        _ _ hle
    haveI : Algebra.FormallyEtale (Localization.Away b) (C.presheaf.stalk c) :=
      Algebra.FormallyEtale.of_isLocalization
        (Submonoid.map (algebraMap Γ(C, V₀) (Localization.Away b))
          (hV₀.primeIdealOf ⟨c, hcV₀⟩).asIdeal.primeCompl)
    haveI : IsScalarTower Γ(T, U₀) (Localization.Away b) (C.presheaf.stalk c) :=
      IsScalarTower.of_algebraMap_eq (fun x => by
        rw [IsScalarTower.algebraMap_apply Γ(T, U₀) Γ(C, V₀) (Localization.Away b) x,
          ← IsScalarTower.algebraMap_apply Γ(C, V₀) (Localization.Away b) (C.presheaf.stalk c)]
        rfl)
    haveI : Nontrivial (Localization.Away b) :=
      RingHom.domain_nontrivial (algebraMap (Localization.Away b) (C.presheaf.stalk c))
    haveI : Module.Free (Localization.Away b) Ω[Localization.Away b⁄Γ(T, U₀)] :=
      Algebra.IsStandardSmooth.free_kaehlerDifferential
    have hrkL : Module.finrank (Localization.Away b) Ω[Localization.Away b⁄Γ(T, U₀)] =
        P.dimension :=
      Module.finrank_eq_of_rank_eq
        (Algebra.IsStandardSmoothOfRelativeDimension.rank_kaehlerDifferential P.dimension)
    obtain ⟨Φ, -⟩ : ∃ Φ : TensorProduct (Localization.Away b) (C.presheaf.stalk c)
        Ω[Localization.Away b⁄Γ(T, U₀)] ≃ₗ[C.presheaf.stalk c] Ω[C.presheaf.stalk c⁄Γ(T, U₀)],
        Φ = KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale Γ(T, U₀)
          (Localization.Away b) (C.presheaf.stalk c) := ⟨_, rfl⟩
    rw [← hrkA, ← LinearEquiv.finrank_eq Φ, Module.finrank_baseChange, hrkL]

  have hD : IsAffineOpen (C.basicOpen b) := hV₀.basicOpen b
  have hcD : c ∈ C.basicOpen b := by
    have h2 : hV₀.primeIdealOf ⟨c, hcV₀⟩ ∈ hV₀.fromSpec ⁻¹ᵁ C.basicOpen b := by
      rw [hV₀.fromSpec_preimage_basicOpen]
      exact hb
    have h3 : hV₀.fromSpec (hV₀.primeIdealOf ⟨c, hcV₀⟩) ∈ C.basicOpen b := h2
    rw [hV₀.fromSpec_primeIdealOf] at h3
    exact h3
  have e' : C.basicOpen b ≤ f ⁻¹ᵁ U₀ := (C.basicOpen_le b).trans e₀
  have hcomp : (f.appLE U₀ (C.basicOpen b) e').hom =
      (C.presheaf.map (homOfLE (C.basicOpen_le b)).op).hom.comp (f.appLE U₀ V₀ e₀).hom := by
    rw [← Scheme.Hom.appLE_map f e₀ (homOfLE (C.basicOpen_le b)).op]
    rfl
  have H : RingHom.IsStandardSmoothOfRelativeDimension P.dimension
      ((algebraMap Γ(C, V₀) (Localization.Away b)).comp (f.appLE U₀ V₀ e₀).hom) := by
    have h := (RingHom.isStandardSmoothOfRelativeDimension_algebraMap P.dimension).mpr hstdm
    have h2 : algebraMap Γ(T, U₀) (Localization.Away b) =
        (algebraMap Γ(C, V₀) (Localization.Away b)).comp (f.appLE U₀ V₀ e₀).hom :=
      IsScalarTower.algebraMap_eq _ _ _
    rw [h2] at h
    exact h
  haveI hloc : IsLocalization.Away b Γ(C, C.basicOpen b) := hV₀.isLocalization_basicOpen b
  obtain ⟨εb, -⟩ : ∃ εb : Localization.Away b ≃ₐ[Γ(C, V₀)] Γ(C, C.basicOpen b),
      εb = IsLocalization.algEquiv (Submonoid.powers b) (Localization.Away b)
        Γ(C, C.basicOpen b) := ⟨_, rfl⟩
  have hε : (εb.toRingEquiv.toRingHom).comp (algebraMap Γ(C, V₀) (Localization.Away b)) =
      (C.presheaf.map (homOfLE (C.basicOpen_le b)).op).hom := by
    ext r
    exact εb.commutes r
  have hV'std :=
    (@RingHom.isStandardSmoothOfRelativeDimension_respectsIso P.dimension).1 _ εb.toRingEquiv H
  rw [← RingHom.comp_assoc, hε, ← hcomp] at hV'std
  have hIsoGen : ∀ {A B : C.Opens} (h : A ≤ B), A = B →
      IsIso (C.presheaf.map (homOfLE h).op) := by
    intro A B h hAB
    subst hAB
    have : homOfLE h = 𝟙 A := Subsingleton.elim _ _
    rw [this, op_id, CategoryTheory.Functor.map_id]
    infer_instance
  have hsm : SmoothOfRelativeDimension P.dimension ((C.basicOpen b).ι ≫ f) := by
    rw [smoothOfRelativeDimension_iff]
    intro x
    haveI : IsAffine (C.basicOpen b) := hD
    have e3 : (⊤ : (C.basicOpen b).toScheme.Opens) ≤ ((C.basicOpen b).ι ≫ f) ⁻¹ᵁ U₀ :=
      fun y _ => e' y.2
    refine ⟨U₀, hU₀, ⊤, isAffineOpen_top _, trivial, e3, ?_⟩
    have e'' : (⊤ : (C.basicOpen b).toScheme.Opens) ≤ (C.basicOpen b).ι ⁻¹ᵁ (C.basicOpen b) :=
      fun y _ => y.2
    obtain ⟨gι, hgι⟩ : ∃ gι, gι = Scheme.Hom.appLE (C.basicOpen b).ι (C.basicOpen b) ⊤ e'' :=
      ⟨_, rfl⟩
    have hgiso : IsIso gι := by
      rw [hgι, Scheme.Opens.ι_appLE]
      exact hIsoGen _ (Scheme.Opens.ι_image_top (C.basicOpen b))
    rw [← Scheme.Hom.appLE_comp_appLE (C.basicOpen b).ι f U₀ (C.basicOpen b) ⊤ e' e'', ← hgι,
      CommRingCat.hom_comp]
    have h0 : RingHom.IsStandardSmoothOfRelativeDimension 0 gι.hom :=
      RingHom.IsStandardSmoothOfRelativeDimension.equiv (asIso gι).commRingCatIsoToRingEquiv
    have h5 := h0.comp hV'std
    rwa [zero_add] at h5
  rw [hdim] at hsm
  exact ⟨C.basicOpen b, hcD, hsm⟩

theorem wcpa_dj_glt_smooth_transfer : ∀ {C T : Scheme.{u}} (f : C ⟶ T) [LocallyOfFiniteType f]
    [IsLocallyNoetherian T] (c : C), IsRegularLocalRing (T.presheaf.stalk (f c)) →
    ∀ (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal (T.presheaf.stalk (f c)))
        (T.presheaf.stalk (f c))))) [P.IsPrime],
      P.comap (Polynomial.C.comp (algebraMap (T.presheaf.stalk (f c))
        (AdicCompletion (IsLocalRing.maximalIdeal (T.presheaf.stalk (f c)))
          (T.presheaf.stalk (f c))))) = IsLocalRing.maximalIdeal (T.presheaf.stalk (f c)) →
      ∀ ε : AdicCompletion (IsLocalRing.maximalIdeal (C.presheaf.stalk c)) (C.presheaf.stalk c) ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P),
        ε.toRingHom.comp ((algebraMap (C.presheaf.stalk c) (AdicCompletion
            (IsLocalRing.maximalIdeal (C.presheaf.stalk c)) (C.presheaf.stalk c))).comp
            (f.stalkMap c).hom) = wcpaDjGltCcSmMap (T.presheaf.stalk (f c)) P →
        ∃ V : C.Opens, c ∈ V ∧ SmoothOfRelativeDimension 1 (V.ι ≫ f) :=
by
  have core : ∀ (D R : Type u) [CommRing D] [CommRing R] [IsLocalRing D] [IsNoetherianRing D]
      [IsLocalRing R] [IsNoetherianRing R] (φ : D →+* R)
      (P : Ideal (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))) [P.IsPrime],
      P.comap (Polynomial.C.comp (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) =
        IsLocalRing.maximalIdeal D →
      ∀ ε : AdicCompletion (IsLocalRing.maximalIdeal R) R ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P),
        ε.toRingHom.comp ((algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp φ) =
          wcpaDjGltCcSmMap D P →
        (letI := φ.toAlgebra; Algebra.EssFiniteType D R) →
        (letI := φ.toAlgebra; Algebra.FormallySmooth D R ∧ Module.Free R Ω[R⁄D] ∧
          Module.Finite R Ω[R⁄D] ∧ Module.finrank R Ω[R⁄D] = 1) := by
    intro D R _ _ _ _ _ _ φ P _ hPc ε hε hEFT
    classical
    obtain ⟨hDloc, hDlh, hDnoeth, hDff, hDmax, hDapp⟩ := wcpa_dj_glt_st_completion_facts D
    obtain ⟨hRloc, hRlh, hRnoeth, hRff, hRmax, hRapp⟩ := wcpa_dj_glt_st_completion_facts R
    haveI := hDnoeth
    obtain ⟨hBloc, hBlh, hBnoeth, hBff, hBmax, hBapp⟩ :=
      wcpa_dj_glt_st_completion_facts (Localization.AtPrime P)
    have hεm : ∀ x, ε x ∈ IsLocalRing.maximalIdeal (AdicCompletion
        (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)) ↔
        x ∈ IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal R) R) := by
      intro x
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
    have hRloc_iff : ∀ x : R, algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x ∈
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal R) R) ↔
        x ∈ IsLocalRing.maximalIdeal R := by
      intro x
      simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
    obtain ⟨u₀, hu₀⟩ := hRapp 2 (ε.symm (algebraMap (Localization.AtPrime P) (AdicCompletion
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
      (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
        (Localization.AtPrime P) Polynomial.X)))
    have hδ : ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) u₀) -
        algebraMap (Localization.AtPrime P) (AdicCompletion
          (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
          (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
            (Localization.AtPrime P) Polynomial.X) ∈
        ((IsLocalRing.maximalIdeal (Localization.AtPrime P)).map (algebraMap (Localization.AtPrime P)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P)))) ^ 2 := by
      have h1 := Ideal.mem_map_of_mem ε hu₀
      have h2 : Ideal.map ε (((IsLocalRing.maximalIdeal R).map
          (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))) ^ 2) ≤
          ((IsLocalRing.maximalIdeal (Localization.AtPrime P)).map
            (algebraMap (Localization.AtPrime P) (AdicCompletion
              (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P)))) ^ 2 := by
        rw [Ideal.map_pow]
        apply Ideal.pow_right_mono
        rw [← hRmax, ← hBmax, Ideal.map_le_iff_le_comap]
        intro x hx
        exact (hεm x).mpr hx
      have h3 := h2 h1
      rw [map_sub, RingEquiv.apply_symm_apply] at h3
      have h4 := neg_mem h3
      rwa [neg_sub] at h4
    obtain ⟨θ, hθC, hθX⟩ : ∃ θ : Polynomial D →+* R, (∀ d, θ (Polynomial.C d) = φ d) ∧
        θ Polynomial.X = u₀ :=
      ⟨Polynomial.eval₂RingHom φ u₀, fun d => Polynomial.eval₂_C _ _, Polynomial.eval₂_X _ _⟩
    obtain ⟨σ, hσdef⟩ : ∃ σ : Polynomial D →+* AdicCompletion
        (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P),
        ∀ p, σ p = ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (θ p)) :=
      ⟨ε.toRingHom.comp ((algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp θ),
        fun p => rfl⟩
    have hσC : ∀ d : D, σ (Polynomial.C d) = wcpaDjGltCcSmMap D P d := by
      intro d
      have h := RingHom.congr_fun hε d
      rw [hσdef, hθC]
      exact h
    have hσX : σ Polynomial.X = algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
        (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
          (Localization.AtPrime P) Polynomial.X) +
        (ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) u₀) -
        algebraMap (Localization.AtPrime P) (AdicCompletion
          (IsLocalRing.maximalIdeal (Localization.AtPrime P)) (Localization.AtPrime P))
          (algebraMap (Polynomial (AdicCompletion (IsLocalRing.maximalIdeal D) D))
            (Localization.AtPrime P) Polynomial.X)) := by
      rw [hσdef, hθX]
      ring
    obtain ⟨h2a, h2b, h2c⟩ := wcpa_dj_glt_st_twist_ideals D P hPc _ hδ σ hσC hσX
    have hσflat := wcpa_dj_glt_st_twist_flat D P hPc _ hδ σ hσC hσX h2b
    rw [← hBmax] at h2a h2b h2c
    obtain ⟨P₀, hP₀⟩ : ∃ Q : Ideal (Polynomial D), Q = P.comap (Polynomial.mapRingHom
        (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))) := ⟨_, rfl⟩
    rw [← hP₀] at h2a h2b h2c
    haveI hP₀prime : P₀.IsPrime := by rw [hP₀]; infer_instance
    have hθm : ∀ p, θ p ∈ IsLocalRing.maximalIdeal R ↔ p ∈ P₀ := by
      intro p
      rw [← h2a p, hσdef, hεm, hRloc_iff]
    have hunit : ∀ y : P₀.primeCompl, IsUnit (θ y) := by
      intro y
      by_contra hy
      have hy2 : (y : Polynomial D) ∉ P₀ := y.2
      exact hy2 ((hθm y).mp ((IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hy)))
    obtain ⟨θE, hθEalg⟩ : ∃ g : Localization.AtPrime P₀ →+* R,
        ∀ p, g (algebraMap (Polynomial D) (Localization.AtPrime P₀) p) = θ p :=
      ⟨IsLocalization.lift hunit, IsLocalization.lift_eq hunit⟩
    have hθEcomp : θE.comp (algebraMap (Polynomial D) (Localization.AtPrime P₀)) = θ :=
      RingHom.ext hθEalg
    have hθE_mk : ∀ (p : Polynomial D) (s : P₀.primeCompl),
        θE (IsLocalization.mk' (Localization.AtPrime P₀) p s) * θ s = θ p := by
      intro p s
      rw [← hθEalg (s : Polynomial D), ← map_mul, IsLocalization.mk'_spec, hθEalg]
    letI algER : Algebra (Localization.AtPrime P₀) R := θE.toAlgebra
    haveI hlh : IsLocalHom (algebraMap (Localization.AtPrime P₀) R) := by
      refine ⟨fun y hy => ?_⟩
      obtain ⟨p, s, rfl⟩ := IsLocalization.exists_mk'_eq P₀.primeCompl y
      rw [IsLocalization.AtPrime.isUnit_mk'_iff (Localization.AtPrime P₀) P₀]
      have h1 : IsUnit (θ p) := by
        rw [← hθE_mk p s]
        exact hy.mul (hunit s)
      show p ∉ P₀
      intro hp
      exact mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp ((hθm p).mpr hp)) h1
    have hmE : (IsLocalRing.maximalIdeal (Localization.AtPrime P₀)).map
        (algebraMap (Localization.AtPrime P₀) R) = IsLocalRing.maximalIdeal R := by
      have hmax0 : IsLocalRing.maximalIdeal (Localization.AtPrime P₀) =
          P₀.map (algebraMap (Polynomial D) (Localization.AtPrime P₀)) :=
        Localization.AtPrime.map_eq_maximalIdeal.symm
      rw [hmax0, Ideal.map_map]
      change P₀.map (θE.comp (algebraMap (Polynomial D) (Localization.AtPrime P₀))) = _
      rw [hθEcomp]
      apply le_antisymm
      · rw [Ideal.map_le_iff_le_comap]
        intro p hp
        exact (hθm p).mpr hp
      · intro x hx
        have h1 := (hRloc_iff x).mpr hx
        have h2 : ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x) ∈
            P₀.map σ := by
          rw [h2b]; exact (hεm _).mpr h1
        have h3 := Ideal.mem_map_of_mem ε.symm.toRingHom h2
        rw [Ideal.map_map] at h3
        have h4 : ε.symm.toRingHom.comp σ =
            (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp θ := by
          refine RingHom.ext fun p => ?_
          show ε.symm (σ p) = _
          rw [hσdef, RingEquiv.symm_apply_apply]
          try rfl
        rw [h4, ← Ideal.map_map] at h3
        have h5 : ε.symm.toRingHom
            (ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x)) =
            algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) x :=
          ε.symm_apply_apply _
        rw [h5] at h3
        rw [← Ideal.comap_map_eq_self_of_faithfullyFlat
          (B := AdicCompletion (IsLocalRing.maximalIdeal R) R) (P₀.map θ)]
        exact h3
    have hres : ∀ r : R, ∃ e : Localization.AtPrime P₀,
        r - algebraMap (Localization.AtPrime P₀) R e ∈ IsLocalRing.maximalIdeal R := by
      intro r
      obtain ⟨p, s, hs, hz⟩ := h2c (ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) r))
      refine ⟨IsLocalization.mk' (Localization.AtPrime P₀) p (⟨s, hs⟩ : P₀.primeCompl), ?_⟩
      have h1 : r * θ s - θ p ∈ IsLocalRing.maximalIdeal R := by
        rw [← hRloc_iff, ← hεm]
        have e1 : ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (r * θ s - θ p)) =
            ε (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) r) * σ s - σ p := by
          simp only [hσdef, map_sub, map_mul]
        rw [e1]; exact hz
      have h2 : (r - θE (IsLocalization.mk' (Localization.AtPrime P₀) p
          (⟨s, hs⟩ : P₀.primeCompl))) * θ s = r * θ s - θ p := by
        have h := hθE_mk p (⟨s, hs⟩ : P₀.primeCompl)
        rw [sub_mul]
        exact congrArg (fun t => r * θ s - t) h
      have h3 : θ s ∉ IsLocalRing.maximalIdeal R := fun h => hs ((hθm s).mp h)
      rw [← h2] at h1
      exact ((inferInstance : (IsLocalRing.maximalIdeal R).IsPrime).mem_or_mem h1).resolve_right h3
    have hflatE : θE.Flat := by
      apply wcpa_dj_glt_st_flat_descent (Polynomial D) (Localization.AtPrime P₀) R
        (AdicCompletion (IsLocalRing.maximalIdeal R) R) P₀.primeCompl θE
      rw [hθEcomp]
      have e2 : (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp θ =
          ε.symm.toRingHom.comp σ := by
        refine RingHom.ext fun p => ?_
        show _ = ε.symm (σ p)
        rw [hσdef, RingEquiv.symm_apply_apply]
        try rfl
      rw [e2]
      exact RingHom.Flat.comp hσflat (RingHom.Flat.of_bijective ε.symm.bijective)
    haveI : Module.Flat (Localization.AtPrime P₀) R := by
      rw [← RingHom.flat_algebraMap_iff]; exact hflatE
    letI algDR : Algebra D R := φ.toAlgebra
    haveI htow : IsScalarTower D (Localization.AtPrime P₀) R := IsScalarTower.of_algebraMap_eq
      (fun d => by
        show φ d = θE (algebraMap D (Localization.AtPrime P₀) d)
        rw [IsScalarTower.algebraMap_apply D (Polynomial D) (Localization.AtPrime P₀) d, hθEalg,
          Polynomial.algebraMap_eq, hθC])
    haveI : Algebra.EssFiniteType D R := hEFT
    haveI : Algebra.EssFiniteType (Localization.AtPrime P₀) R :=
      Algebra.EssFiniteType.of_comp D (Localization.AtPrime P₀) R
    haveI hEt : Algebra.FormallyEtale (Localization.AtPrime P₀) R :=
      wcpa_dj_glt_st_unram_etale (Localization.AtPrime P₀) R hmE hres
    exact wcpa_dj_glt_st_poly_loc_omega D (Localization.AtPrime P₀) R P₀
  intro C T f _ _ c hreg P _ hPc ε hε
  haveI := hreg
  obtain ⟨hEFT, hRnoeth⟩ := wcpa_dj_mn_stalk_eft T C f c inferInstance inferInstance
  haveI := hRnoeth
  exact wcpa_dj_glt_st_spread f c (core _ _ (f.stalkMap c).hom P hPc ε hε hEFT)

theorem wcpa_dj_glt_chart_classify : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ (C : Scheme.{u}) [AlgebraicGeometry.IsIntegral C] (π₅ : C ⟶ Limits.pullback g ρ)
      (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra),
      wcpaDjGcModel k sS g ρ O a π₅ A → IsProper π₅ →
      ∀ (c : C) (i₀ : Fin (N + 1)), i₀ ∈ I →
      ∀ (n : ℕ) (t : Fin n → S''.presheaf.stalk (Limits.pullback.snd g ρ (π₅ c)))
        (J : Finset (Fin n)) (α : Fin (N + 1) → ℤ) (β : Fin (N + 1) → Fin n → ℤ)
        (c₀ : Fin n → ℕ),
      wcpaDjStcMonoData (Limits.pullback.snd g ρ) m (wcpaDjStcLift g ρ τ hτ) D'' I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t J α β c₀ →
      (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
      (∀ v ∈ wcpaDjStcBreaks I α β c₀, ∀ w ∈ wcpaDjStcBreaks I α β c₀, v ≤ w ∨ w ≤ v) →
      ∀ x : wcpaDjGltHat (Limits.pullback g ρ) (π₅ c),
      wcpaDjGltLocModel (Limits.pullback.snd g ρ) I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t α β c₀ x →
      ∀ (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I →
        (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) →
        ∀ (Q : Ideal (wcpaDjGltNC (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
            (wcpaDjGltMon I x (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
              (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
              (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀) k₀))
          [Q.IsPrime]
          (e : wcpaDjGltHat C c ≃+* AdicCompletion
            (IsLocalRing.maximalIdeal (Localization.AtPrime Q)) (Localization.AtPrime Q)),
          wcpaDjGltChartId π₅ c
            (wcpaDjGltMon I x (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
              (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
              (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀) k₀ Q e →
          wcpaDjGcPtType (π₅ ≫ Limits.pullback.snd g ρ) c :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ c i₀ hi₀ n t J α β
    c₀ hMono hO1 hO2 x hLM a₀ b₀ k₀ hk₀ hb Q _ e hid
  classical

  have hss : wcpaDjSplitSemistable g := H.1.2.2.1
  haveI : IsProper g := hss.2.1
  haveI : IsProper π₅ := hπ
  haveI : IsProper (ρ ≫ sS) := wcpa_dj_proj_proper k (ρ ≫ sS) H.2.1
  haveI : IsLocallyNoetherian S'' := LocallyOfFiniteType.isLocallyNoetherian (ρ ≫ sS)
  haveI : IsLocallyNoetherian (Limits.pullback g ρ) :=
    LocallyOfFiniteType.isLocallyNoetherian (Limits.pullback.snd g ρ)
  haveI : LocallyOfFiniteType (π₅ ≫ Limits.pullback.snd g ρ) := inferInstance
  have hreg : ∀ s : S'', IsRegularLocalRing (S''.presheaf.stalk s) := H.2.2.2.2.2.1

  have hcomp : ∀ a : S''.presheaf.stalk ((π₅ ≫ Limits.pullback.snd g ρ) c),
      ((π₅ ≫ Limits.pullback.snd g ρ).stalkMap c).hom a =
        (π₅.stalkMap c).hom (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom a) := by
    intro a
    rw [Scheme.Hom.stalkMap_comp]
    rfl

  have E : ∀ a : S''.presheaf.stalk (Limits.pullback.snd g ρ (π₅ c)),
      e (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c)
        ((π₅.stalkMap c).hom (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom a))) =
      wcpaDjGltCcPsi ((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom _ k₀ Q a :=
    fun a => RingHom.congr_fun hid.2 _

  rcases wcpa_dj_glt_cc_local_classify (S''.presheaf.stalk (Limits.pullback.snd g ρ (π₅ c)))
      ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) ((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom
      (hreg _) N I n t α β c₀ hMono.1 hMono.2.1 hO1 hO2 x hLM.2 a₀ b₀ k₀ hk₀ hb Q hid.1 with
    ⟨h, ε, hh, hε, hres⟩ | ⟨P, hP, ε, hPc, hε⟩
  ·
    unfold wcpaDjGcPtType
    right
    refine ⟨?_, h, e.trans ε, hh, ?_⟩
    · rw [ConcreteCategory.isIso_iff_bijective]
      refine ⟨RingHom.injective _, ?_⟩
      intro w
      obtain ⟨w', rfl⟩ := IsLocalRing.residue_surjective w
      obtain ⟨a', ha'⟩ := hres (e (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c) w'))
      refine ⟨IsLocalRing.residue (S''.presheaf.stalk ((π₅ ≫ Limits.pullback.snd g ρ) c)) a', ?_⟩
      refine (IsLocalRing.ResidueField.map_residue
        ((π₅ ≫ Limits.pullback.snd g ρ).stalkMap c).hom a').trans ?_
      show Ideal.Quotient.mk _ (((π₅ ≫ Limits.pullback.snd g ρ).stalkMap c).hom a') =
        Ideal.Quotient.mk _ w'
      rw [hcomp a']
      symm
      rw [Ideal.Quotient.eq, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      apply ha'
      have hu' := hu.map (e.toRingHom.comp (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c)))
      have key : (e.toRingHom.comp (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c)))
          (w' - (π₅.stalkMap c).hom (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom a')) =
          e (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c) w') -
            wcpaDjGltCcPsi ((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom _ k₀ Q a' := by
        rw [map_sub]
        exact congrArg₂ HSub.hSub rfl (E a')
      rw [key] at hu'
      exact hu'
    · apply RingHom.ext
      intro a
      have h2 := RingHom.congr_fun hε a
      show (e.trans ε) (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c)
        (((π₅ ≫ Limits.pullback.snd g ρ).stalkMap c).hom a)) = _
      rw [hcomp a]
      exact (congrArg ε (E a)).trans h2
  ·
    unfold wcpaDjGcPtType
    left
    refine @wcpa_dj_glt_smooth_transfer _ _ (π₅ ≫ Limits.pullback.snd g ρ) _ _ c (hreg _) P hP hPc
      (e.trans ε) ?_
    apply RingHom.ext
    intro a
    have h2 := RingHom.congr_fun hε a
    show (e.trans ε) (algebraMap (C.presheaf.stalk c) (wcpaDjGltHat C c)
      (((π₅ ≫ Limits.pullback.snd g ρ).stalkMap c).hom a)) = _
    rw [hcomp a]
    exact (congrArg ε (E a)).trans h2

end GRWTSK.FiniteFieldWeil
