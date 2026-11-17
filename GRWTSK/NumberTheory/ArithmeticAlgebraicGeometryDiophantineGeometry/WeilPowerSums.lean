import Mathlib

/-!
# Integrality, Galois invariance, and construction of weight multisets

Source candidate split from `weil_conjecture_main.lean`, lines 52433–52934.
See the adjacent `WeilPowerSums.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem isIntegral_of_int_power_sums (m : ℂ →₀ ℤ) (hm0 : (0 : ℂ) ∉ m.support)
    (hint : ∀ n : ℕ, 1 ≤ n → ∃ k : ℤ, ∑ α ∈ m.support, (m α : ℂ) * α ^ n = k) :
    ∀ α ∈ m.support, IsIntegral ℤ α :=
by
  classical
  intro α hα
  set S := m.support with hS
  set P : Polynomial ℂ := ∏ β ∈ S.erase α, (Polynomial.X - Polynomial.C β) with hP
  set Q : ℂ := ∏ β ∈ S.erase α, (α - β) with hQ
  have hα0 : α ≠ 0 := fun h => hm0 (h ▸ hα)
  have hcα : (m α : ℂ) ≠ 0 := by
    have := (Finsupp.mem_support_iff.mp hα)
    exact_mod_cast this
  have hQ0 : Q ≠ 0 := by
    rw [hQ, Finset.prod_ne_zero_iff]
    intro β hβ
    exact sub_ne_zero.mpr (Finset.ne_of_mem_erase hβ).symm
  have hPeval : ∀ β, P.eval β = ∏ γ ∈ S.erase α, (β - γ) := by
    intro β
    rw [hP, Polynomial.eval_prod]
    simp
  have iso : ∀ n : ℕ, ∑ k ∈ Finset.range (P.natDegree + 1),
      P.coeff k * ∑ β ∈ S, (m β : ℂ) * β ^ (n + k) = (m α : ℂ) * α ^ n * Q := by
    intro n
    calc ∑ k ∈ Finset.range (P.natDegree + 1), P.coeff k * ∑ β ∈ S, (m β : ℂ) * β ^ (n + k)
        = ∑ β ∈ S, (m β : ℂ) * β ^ n *
            ∑ k ∈ Finset.range (P.natDegree + 1), P.coeff k * β ^ k := by
          simp_rw [Finset.mul_sum]
          rw [Finset.sum_comm]
          refine Finset.sum_congr rfl fun β _ => Finset.sum_congr rfl fun k _ => ?_
          rw [pow_add]; ring
      _ = ∑ β ∈ S, (m β : ℂ) * β ^ n * P.eval β := by
          refine Finset.sum_congr rfl fun β _ => ?_
          rw [Polynomial.eval_eq_sum_range]
      _ = (m α : ℂ) * α ^ n * P.eval α := by
          refine Finset.sum_eq_single α ?_ ?_
          · intro β hβ hne
            rw [hPeval, Finset.prod_eq_zero (Finset.mem_erase.mpr ⟨hne, hβ⟩) (sub_self β),
              mul_zero]
          · intro h; exact absurd hα h
      _ = (m α : ℂ) * α ^ n * Q := by rw [hPeval]
  set γ : ℂ := ((m α : ℂ) * Q)⁻¹ with hγ
  set G : Finset ℂ := (Finset.range (P.natDegree + 1)).image (fun k => γ * P.coeff k) with hG
  have hspan : ∀ n : ℕ, 1 ≤ n → α ^ n ∈ Submodule.span ℤ (G : Set ℂ) := by
    intro n hn
    have h1 : α ^ n = ∑ k ∈ Finset.range (P.natDegree + 1),
        (∑ β ∈ S, (m β : ℂ) * β ^ (n + k)) * (γ * P.coeff k) := by
      have : α ^ n = γ * ((m α : ℂ) * α ^ n * Q) := by
        rw [hγ]; field_simp
      rw [this, ← iso n, Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      ring
    rw [h1]
    refine Submodule.sum_mem _ fun k hk => ?_
    obtain ⟨z, hz⟩ := hint (n + k) (by omega)
    rw [hz, ← zsmul_eq_mul]
    exact Submodule.smul_mem _ z
      (Submodule.subset_span (Finset.mem_coe.mpr (Finset.mem_image_of_mem _ hk)))
  let N : Submodule ℤ ℂ := Submodule.span ℤ (Set.range (fun n : ℕ => α ^ (n + 1)))
  have hNle : N ≤ Submodule.span ℤ (G : Set ℂ) := by
    rw [Submodule.span_le]
    rintro _ ⟨n, rfl⟩
    exact hspan (n + 1) (by omega)
  have hNfg : N.FG := Submodule.FG.of_le (Submodule.fg_span G.finite_toSet) hNle
  have hαN : α ∈ N := Submodule.subset_span ⟨0, by simp⟩
  have hNbot : N ≠ ⊥ := by
    intro h
    have h' : α ∈ (⊥ : Submodule ℤ ℂ) := h ▸ hαN
    rw [Submodule.mem_bot] at h'
    exact hα0 h'
  have hsmul : ∀ x ∈ N, α • x ∈ N := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨n, rfl⟩ := hy
      exact Submodule.subset_span ⟨n + 1, by simp only [smul_eq_mul]; ring⟩
    | zero => simp
    | add x y _ _ hx hy => rw [smul_add]; exact N.add_mem hx hy
    | smul a x _ hx => rw [smul_comm]; exact N.smul_mem a hx
  exact isIntegral_of_smul_mem_submodule N hNbot hNfg α hsmul

theorem galois_invariant_of_int_power_sums (m : ℂ →₀ ℤ) (hm0 : (0 : ℂ) ∉ m.support)
    (hint : ∀ n : ℕ, 1 ≤ n → ∃ k : ℤ, ∑ α ∈ m.support, (m α : ℂ) * α ^ n = k) :
    ∀ (φ : ℂ ≃+* ℂ) (α : ℂ), m (φ α) = m α :=
by
  classical

  have key : ∀ (T : Finset ℂ), (0 : ℂ) ∉ T → ∀ c : ℂ → ℂ,
      (∀ n : ℕ, 1 ≤ n → ∑ β ∈ T, c β * β ^ n = 0) → ∀ β ∈ T, c β = 0 := by
    intro T
    induction T using Finset.induction_on with
    | empty => intro _ c _ β hβ; simp at hβ
    | insert a T' haT' ih =>
      intro h0 c hc
      have ha0 : a ≠ 0 := fun h => h0 (h ▸ Finset.mem_insert_self _ _)
      have h0' : (0 : ℂ) ∉ T' := fun h => h0 (Finset.mem_insert_of_mem h)
      have hc' : ∀ n : ℕ, 1 ≤ n → ∑ β ∈ T', (c β * (β - a)) * β ^ n = 0 := by
        intro n hn
        have h1 := hc (n+1) (by omega)
        have h2 := hc n hn
        rw [Finset.sum_insert haT'] at h1 h2
        have e : ∑ β ∈ T', (c β * (β - a)) * β ^ n
            = (c a * a ^ (n+1) + ∑ β ∈ T', c β * β ^ (n+1))
              - a * (c a * a ^ n + ∑ β ∈ T', c β * β ^ n) := by
          rw [mul_add, Finset.mul_sum]
          have e2 : ∑ β ∈ T', (c β * (β - a)) * β ^ n
              = ∑ β ∈ T', c β * β ^ (n+1) - ∑ β ∈ T', a * (c β * β ^ n) := by
            rw [← Finset.sum_sub_distrib]
            exact Finset.sum_congr rfl (fun β _ => by ring)
          rw [e2]; ring
        rw [e, h1, h2]; ring
      have hT' := ih h0' _ hc'
      have hT'0 : ∀ β ∈ T', c β = 0 := by
        intro β hβ
        have hne : β - a ≠ 0 := sub_ne_zero.mpr (fun h => haT' (h ▸ hβ))
        exact (mul_eq_zero.mp (hT' β hβ)).resolve_right hne
      have h1 := hc 1 le_rfl
      rw [Finset.sum_insert haT',
        Finset.sum_eq_zero (fun β hβ => by rw [hT'0 β hβ, zero_mul])] at h1
      have hca : c a = 0 := by
        simp only [pow_one, add_zero] at h1
        exact (mul_eq_zero.mp h1).resolve_right ha0
      intro β hβ
      rcases Finset.mem_insert.mp hβ with rfl | hβ
      · exact hca
      · exact hT'0 β hβ
  intro φ α
  set S := m.support with hS
  set T := S ∪ S.image φ with hT
  have hT0 : (0 : ℂ) ∉ T := by
    intro h
    rcases Finset.mem_union.mp h with h | h
    · exact hm0 h
    · obtain ⟨γ, hγ, hγ0⟩ := Finset.mem_image.mp h
      have : γ = 0 := (map_eq_zero_iff φ φ.injective).mp hγ0
      exact hm0 (this ▸ hγ)
  have hA : ∀ n : ℕ, ∑ α ∈ S, (m α : ℂ) * α ^ n = ∑ β ∈ T, (m β : ℂ) * β ^ n := by
    intro n
    apply Finset.sum_subset Finset.subset_union_left
    intro β _ hβ
    rw [Finsupp.notMem_support_iff.mp hβ]; simp
  have hB : ∀ n : ℕ, ∑ α ∈ S, (m α : ℂ) * (φ α) ^ n
      = ∑ β ∈ T, (m (φ.symm β) : ℂ) * β ^ n := by
    intro n
    have e1 : ∑ β ∈ S.image φ, (m (φ.symm β) : ℂ) * β ^ n
        = ∑ α ∈ S, (m α : ℂ) * (φ α) ^ n := by
      rw [Finset.sum_image (fun x _ y _ h => φ.injective h)]
      simp
    rw [← e1]
    apply Finset.sum_subset Finset.subset_union_right
    intro β _ hβ
    have : φ.symm β ∉ S := by
      intro h
      exact hβ (Finset.mem_image.mpr ⟨φ.symm β, h, by simp⟩)
    rw [Finsupp.notMem_support_iff.mp this]; simp
  have hC : ∀ n : ℕ, 1 ≤ n →
      ∑ α ∈ S, (m α : ℂ) * (φ α) ^ n = ∑ α ∈ S, (m α : ℂ) * α ^ n := by
    intro n hn
    obtain ⟨k, hk⟩ := hint n hn
    have h := congrArg φ hk
    rw [map_sum, map_intCast] at h
    simp only [map_mul, map_pow, map_intCast] at h
    rw [h, hk]
  have hcz := key T hT0 (fun β => (m β : ℂ) - (m (φ.symm β) : ℂ)) (by
    intro n hn
    simp only [sub_mul, Finset.sum_sub_distrib]
    rw [← hA, ← hB, hC n hn, sub_self])
  have hmT : ∀ β ∈ T, m β = m (φ.symm β) := by
    intro β hβ
    have h := hcz β hβ
    exact_mod_cast sub_eq_zero.mp h
  by_cases hα : α ∈ S
  · have hmem : φ α ∈ T := Finset.mem_union_right _ (Finset.mem_image_of_mem _ hα)
    rw [hmT _ hmem, RingEquiv.symm_apply_apply]
  · have hα0 : m α = 0 := Finsupp.notMem_support_iff.mp hα
    rw [hα0]
    by_contra hne
    have hmem : φ α ∈ S := Finsupp.mem_support_iff.mpr hne
    have h := hmT _ (Finset.mem_union_left _ hmem)
    rw [RingEquiv.symm_apply_apply, hα0] at h
    exact hne h

theorem weight_zero_of_asymptotic (q d : ℕ) (m : ℂ →₀ ℤ) (hq : 2 ≤ q)
    (hm0 : (0 : ℂ) ∉ m.support)
    (hw : ∀ α ∈ m.support, ∃ i ≤ 2 * d, ‖α‖ = √((q : ℝ) ^ i))
    (hdual : ∀ α : ℂ, α ≠ 0 → m ((q : ℂ) ^ d / α) = m α)
    (htend : Filter.Tendsto (fun n : ℕ => (∑ α ∈ m.support, (m α : ℂ) * α ^ n) / (q : ℂ) ^ (d * n))
      Filter.atTop (nhds 1)) :
    m 1 = 1 ∧ ∀ α ∈ m.support, ‖α‖ = 1 → α = 1 :=
by
  classical

  have s1 : ∀ g : ℂ, ‖g‖ ≤ 1 → Filter.Tendsto
      (fun N : ℕ => (N : ℝ)⁻¹ • ∑ n ∈ Finset.range N, g ^ n) Filter.atTop
      (nhds (if g = 1 then (1 : ℂ) else 0)) := by
    intro g hg
    by_cases h1 : g = 1
    · subst h1
      rw [if_pos rfl]
      apply tendsto_const_nhds.congr'
      filter_upwards [Filter.eventually_ge_atTop 1] with N hN
      have hN' : (N : ℝ) ≠ 0 := by
        have : (1 : ℝ) ≤ N := by exact_mod_cast hN
        linarith
      simp only [one_pow, Finset.sum_const, Finset.card_range, nsmul_eq_mul, mul_one]
      rw [Complex.real_smul]
      push_cast
      have hN'' : (N : ℂ) ≠ 0 := by exact_mod_cast hN'
      field_simp
    · rw [if_neg h1]
      have hpos : 0 < ‖g - 1‖ := norm_pos_iff.mpr (sub_ne_zero.mpr h1)
      apply squeeze_zero_norm (a := fun N : ℕ => (2 / ‖g - 1‖) / (N : ℝ))
      · intro N
        rw [norm_smul, geom_sum_eq h1, norm_div, Real.norm_eq_abs, abs_inv, Nat.abs_cast,
          div_eq_inv_mul (2 / ‖g - 1‖)]
        have hb : ‖g ^ N - 1‖ ≤ 2 := by
          calc ‖g ^ N - 1‖ ≤ ‖g ^ N‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
            _ ≤ 1 + 1 := by
                rw [norm_pow, norm_one]
                gcongr
                exact pow_le_one₀ (norm_nonneg _) hg
            _ = 2 := by norm_num
        exact mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_right hb hpos.le)
          (inv_nonneg.mpr (Nat.cast_nonneg N))
      · exact tendsto_const_div_atTop_nhds_zero_nat (2 / ‖g - 1‖)

  have s2 : ∀ (w : ℕ → ℂ) (L g : ℂ), Filter.Tendsto w Filter.atTop (nhds L) → ‖g‖ ≤ 1 →
      Filter.Tendsto (fun N : ℕ => (N : ℝ)⁻¹ • ∑ n ∈ Finset.range N, (w n - L) * g ^ n)
        Filter.atTop (nhds 0) := by
    intro w L g hwL hg
    apply Filter.Tendsto.cesaro_smul
    have h0 : Filter.Tendsto (fun n => ‖w n - L‖) Filter.atTop (nhds 0) :=
      tendsto_iff_norm_sub_tendsto_zero.mp hwL
    apply squeeze_zero_norm _ h0
    intro n
    rw [norm_mul, norm_pow]
    calc ‖w n - L‖ * ‖g‖ ^ n ≤ ‖w n - L‖ * 1 := by
          gcongr
          exact pow_le_one₀ (norm_nonneg _) hg
      _ = ‖w n - L‖ := mul_one _

  have s7 : ∀ β : ℂ, β ≠ 0 → (∀ α ∈ m.support, ‖α‖ ≤ ‖β‖) → Filter.Tendsto
      (fun N : ℕ => (N : ℝ)⁻¹ • ∑ n ∈ Finset.range N, ∑ α ∈ m.support, (m α : ℂ) * (α / β) ^ n)
      Filter.atTop (nhds (m β : ℂ)) := by
    intro β hβ hle
    have heq : (fun N : ℕ => (N : ℝ)⁻¹ • ∑ n ∈ Finset.range N,
        ∑ α ∈ m.support, (m α : ℂ) * (α / β) ^ n) = fun N : ℕ => ∑ α ∈ m.support,
        (m α : ℂ) * ((N : ℝ)⁻¹ • ∑ n ∈ Finset.range N, (α / β) ^ n) := by
      funext N
      rw [Finset.sum_comm, Finset.smul_sum]
      refine Finset.sum_congr rfl fun α _ => ?_
      rw [← Finset.mul_sum, mul_smul_comm]
    rw [heq]
    have hlim : Filter.Tendsto (fun N : ℕ => ∑ α ∈ m.support,
        (m α : ℂ) * ((N : ℝ)⁻¹ • ∑ n ∈ Finset.range N, (α / β) ^ n)) Filter.atTop
        (nhds (∑ α ∈ m.support, (m α : ℂ) * (if α / β = 1 then 1 else 0))) := by
      apply tendsto_finset_sum
      intro α hα
      apply Filter.Tendsto.const_mul
      apply s1
      rw [norm_div]
      exact div_le_one_of_le₀ (hle α hα) (norm_nonneg _)
    have hval : (∑ α ∈ m.support, (m α : ℂ) * (if α / β = 1 then 1 else 0)) = (m β : ℂ) := by
      simp only [div_eq_one_iff_eq hβ, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq']
      split_ifs with h
      · rfl
      · rw [Finsupp.notMem_support_iff.mp h]; simp
    rw [hval] at hlim
    exact hlim

  simp only [pow_mul] at htend
  set R : ℂ := (q : ℂ) ^ d with hRdef
  have hqpos : (0 : ℝ) < q := by exact_mod_cast (by omega : 0 < q)
  have hnR : ‖R‖ = (q : ℝ) ^ d := by rw [hRdef, norm_pow, Complex.norm_natCast]
  have hRpos : 0 < ‖R‖ := by rw [hnR]; positivity
  have hR0 : R ≠ 0 := norm_pos_iff.mp hRpos
  have hle : ∀ α ∈ m.support, ‖α‖ ≤ ‖R‖ := by
    intro α hα
    obtain ⟨i, hi, hn⟩ := hw α hα
    rw [hn, hnR]
    have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast (by omega : 1 ≤ q)
    calc √((q : ℝ) ^ i) ≤ √((q : ℝ) ^ (2 * d)) :=
          Real.sqrt_le_sqrt (pow_le_pow_right₀ hq1 hi)
      _ = (q : ℝ) ^ d := by rw [mul_comm, pow_mul, Real.sqrt_sq (by positivity)]
  set w : ℕ → ℂ := fun n => (∑ α ∈ m.support, (m α : ℂ) * α ^ n) / R ^ n with hw_def
  have hwt : Filter.Tendsto w Filter.atTop (nhds 1) := htend

  have s5 : ∀ β : ℂ, ‖β‖ = ‖R‖ → (m β : ℂ) = if β = R then 1 else 0 := by
    intro β hβn
    have hβ0 : β ≠ 0 := by rw [← norm_pos_iff, hβn]; exact hRpos
    have hg : ‖R / β‖ ≤ 1 := by rw [norm_div, hβn, div_self hRpos.ne']
    have hb := s7 β hβ0 (fun α hα => hβn ▸ hle α hα)
    have hid : ∀ n : ℕ, ∑ α ∈ m.support, (m α : ℂ) * (α / β) ^ n =
        (w n - 1) * (R / β) ^ n + (R / β) ^ n := by
      intro n
      have hRn : R ^ n ≠ 0 := pow_ne_zero _ hR0
      have hβn' : β ^ n ≠ 0 := pow_ne_zero _ hβ0
      rw [show (w n - 1) * (R / β) ^ n + (R / β) ^ n = w n * (R / β) ^ n by ring]
      simp only [hw_def, div_pow, Finset.sum_div, Finset.sum_mul]
      refine Finset.sum_congr rfl fun α _ => ?_
      field_simp
    have hc : Filter.Tendsto (fun N : ℕ => (N : ℝ)⁻¹ • ∑ n ∈ Finset.range N,
        ∑ α ∈ m.support, (m α : ℂ) * (α / β) ^ n) Filter.atTop
        (nhds (0 + if R / β = 1 then (1 : ℂ) else 0)) := by
      have := (s2 w 1 (R / β) hwt hg).add (s1 (R / β) hg)
      refine this.congr (fun N => ?_)
      rw [← smul_add, ← Finset.sum_add_distrib]
      simp only [hid]
    have hu := tendsto_nhds_unique hb hc
    rw [hu, zero_add]
    by_cases h : β = R
    · rw [if_pos h, if_pos ((div_eq_one_iff_eq hβ0).mpr h.symm)]
    · rw [if_neg h, if_neg (fun h' => h ((div_eq_one_iff_eq hβ0).mp h').symm)]

  have hRR := s5 R rfl
  rw [if_pos rfl] at hRR
  have hmR : m R = 1 := by exact_mod_cast hRR
  refine ⟨?_, ?_⟩
  · have h1 := hdual R hR0
    rw [div_self hR0] at h1
    rw [h1, hmR]
  · intro α hα hα1
    have hα0 : α ≠ 0 := by rw [← norm_pos_iff, hα1]; norm_num
    have hd := hdual α hα0
    have hβn : ‖R / α‖ = ‖R‖ := by rw [norm_div, hα1, div_one]
    have h5 := s5 (R / α) hβn
    have hne : m α ≠ 0 := Finsupp.mem_support_iff.mp hα
    by_cases h : R / α = R
    · rw [div_eq_iff hα0] at h
      exact mul_left_cancel₀ hR0 (h.symm.trans (mul_one R).symm)
    · rw [if_neg h, hd] at h5
      exact absurd (by exact_mod_cast h5) hne

theorem assemble_weil_multisets (q d : ℕ) (m : ℂ →₀ ℤ) (hq : 2 ≤ q)
    (hm0 : (0 : ℂ) ∉ m.support)
    (hpure : ∀ α ∈ m.support, ∃ i ≤ 2 * d, 0 < (-1 : ℤ) ^ i * m α ∧
      ∀ φ : ℂ ≃+* ℂ, ‖φ α‖ = √((q : ℝ) ^ i))
    (hw0 : m 1 = 1 ∧ ∀ α ∈ m.support, ‖α‖ = 1 → α = 1)
    (hdual : ∀ α : ℂ, α ≠ 0 → m ((q : ℂ) ^ d / α) = m α)
    (hintegral : ∀ α ∈ m.support, IsIntegral ℤ α)
    (hgal : ∀ (φ : ℂ ≃+* ℂ) (α : ℂ), m (φ α) = m α) :
    ∃ A : ℕ → Multiset ℂ, A 0 = {1} ∧
      (∀ i ≤ 2 * d, A (2 * d - i) = (A i).map ((q : ℂ) ^ d / · : ℂ → ℂ) ∧
        (∀ φ : ℂ ≃+* ℂ, (A i).map φ = A i) ∧
        ∀ α ∈ A i, IsIntegral ℤ α ∧ ‖α‖ = √((q : ℝ) ^ i)) ∧
      ∀ n : ℕ, ∑ α ∈ m.support, (m α : ℂ) * α ^ n =
        ∑ i ∈ Finset.Iic (2 * d), (-1) ^ i * ((A i).map (· ^ n)).sum :=
by
  classical
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)

  have huniq : ∀ i j : ℕ, √((q : ℝ) ^ i) = √((q : ℝ) ^ j) → i = j := by
    intro i j h
    rw [Real.sqrt_inj (pow_pos hq0 i).le (pow_pos hq0 j).le] at h
    have h' : ((q ^ i : ℕ) : ℝ) = ((q ^ j : ℕ) : ℝ) := by push_cast; exact h
    exact Nat.pow_right_injective hq (Nat.cast_inj.mp h')

  have s1 : ∀ (S : Finset ℂ) (c : ℂ → ℕ) (n : ℕ),
      ((∑ α ∈ S, Multiset.replicate (c α) α).map (· ^ n)).sum = ∑ α ∈ S, (c α : ℂ) * α ^ n := by
    intro S c n
    induction S using Finset.induction_on with
    | empty => simp
    | insert a S ha ih =>
      rw [Finset.sum_insert ha, Finset.sum_insert ha, Multiset.map_add, Multiset.sum_add, ih,
        Multiset.map_replicate, Multiset.sum_replicate, nsmul_eq_mul]

  have hmapsum : ∀ (S : Finset ℂ) (c : ℂ → ℕ) (τ : ℂ → ℂ),
      (∑ α ∈ S, Multiset.replicate (c α) α).map τ = ∑ α ∈ S, Multiset.replicate (c α) (τ α) := by
    intro S c τ
    induction S using Finset.induction_on with
    | empty => simp
    | insert a S ha ih =>
      rw [Finset.sum_insert ha, Finset.sum_insert ha, Multiset.map_add, ih, Multiset.map_replicate]

  have s2 : ∀ (S T : Finset ℂ) (c : ℂ → ℕ) (τ σ : ℂ → ℂ), (∀ α ∈ S, τ α ∈ T) →
      (∀ β ∈ T, σ β ∈ S) → (∀ α ∈ S, σ (τ α) = α) → (∀ β ∈ T, τ (σ β) = β) →
      (∀ α ∈ S, c (τ α) = c α) →
      (∑ α ∈ S, Multiset.replicate (c α) α).map τ = ∑ β ∈ T, Multiset.replicate (c β) β := by
    intro S T c τ σ hτ hσ hστ hτσ hc
    rw [hmapsum]
    exact Finset.sum_nbij' τ σ hτ hσ hστ hτσ (fun α hα => by rw [hc α hα])

  have s3 : ∀ i, i ≤ 2 * d → ∀ α : ℂ, ‖α‖ = √((q : ℝ) ^ i) →
      ‖(q : ℂ) ^ d / α‖ = √((q : ℝ) ^ (2 * d - i)) := by
    intro i hi α hα
    rw [norm_div, norm_pow, Complex.norm_natCast, hα]
    have hb : 0 < √((q : ℝ) ^ i) := Real.sqrt_pos.mpr (pow_pos hq0 i)
    rw [div_eq_iff hb.ne', ← Real.sqrt_mul (pow_pos hq0 _).le, ← pow_add, Nat.sub_add_cancel hi,
      pow_mul', Real.sqrt_sq (pow_pos hq0 _).le]

  obtain ⟨S, hS⟩ : ∃ S : ℕ → Finset ℂ,
      ∀ i, S i = m.support.filter (fun α => ‖α‖ = √((q : ℝ) ^ i)) := ⟨_, fun _ => rfl⟩
  have hmemS : ∀ i α, α ∈ S i ↔ m α ≠ 0 ∧ ‖α‖ = √((q : ℝ) ^ i) := by
    intro i α
    rw [hS, Finset.mem_filter, Finsupp.mem_support_iff]
  have hne0 : ∀ α, m α ≠ 0 → α ≠ 0 := by
    rintro α h rfl
    exact hm0 (Finsupp.mem_support_iff.mpr h)
  have hqd : (q : ℂ) ^ d ≠ 0 := pow_ne_zero _ (by exact_mod_cast (show q ≠ 0 by omega))
  refine ⟨fun i => ∑ α ∈ S i, Multiset.replicate (m α).natAbs α, ?_, ?_, ?_⟩
  ·
    have hS0 : S 0 = {1} := by
      ext α
      rw [hmemS, Finset.mem_singleton, pow_zero, Real.sqrt_one]
      constructor
      · rintro ⟨h1, h2⟩
        exact hw0.2 α (Finsupp.mem_support_iff.mpr h1) h2
      · rintro rfl
        exact ⟨by rw [hw0.1]; norm_num, norm_one⟩
    show ∑ α ∈ S 0, Multiset.replicate (m α).natAbs α = {1}
    rw [hS0, Finset.sum_singleton, hw0.1]
    rfl
  · intro i hi
    refine ⟨?_, ?_, ?_⟩
    ·
      refine (s2 (S i) (S (2 * d - i)) (fun α => (m α).natAbs) (fun x => (q : ℂ) ^ d / x)
        (fun x => (q : ℂ) ^ d / x) ?_ ?_ ?_ ?_ ?_).symm
      · intro α hα
        rw [hmemS] at hα ⊢
        obtain ⟨h1, h2⟩ := hα
        exact ⟨by rw [hdual α (hne0 α h1)]; exact h1, s3 i hi α h2⟩
      · intro β hβ
        rw [hmemS] at hβ ⊢
        obtain ⟨h1, h2⟩ := hβ
        have := s3 (2 * d - i) (by omega) β h2
        rw [show 2 * d - (2 * d - i) = i by omega] at this
        exact ⟨by rw [hdual β (hne0 β h1)]; exact h1, this⟩
      · intro α _
        exact div_div_cancel₀ hqd
      · intro β _
        exact div_div_cancel₀ hqd
      · intro α hα
        rw [hmemS] at hα
        show (m ((q : ℂ) ^ d / α)).natAbs = (m α).natAbs
        rw [hdual α (hne0 α hα.1)]
    ·
      intro φ
      refine s2 (S i) (S i) (fun α => (m α).natAbs) φ φ.symm ?_ ?_ ?_ ?_ ?_
      · intro α hα
        rw [hmemS] at hα ⊢
        obtain ⟨h1, h2⟩ := hα
        obtain ⟨j, -, -, hj⟩ := hpure α (Finsupp.mem_support_iff.mpr h1)
        have hr := hj (RingEquiv.refl ℂ)
        rw [RingEquiv.refl_apply] at hr
        refine ⟨by rw [hgal]; exact h1, ?_⟩
        rw [hj φ, ← hr, h2]
      · intro β hβ
        rw [hmemS] at hβ ⊢
        obtain ⟨h1, h2⟩ := hβ
        have hm : m β = m (φ.symm β) := by
          have := hgal φ (φ.symm β)
          rwa [RingEquiv.apply_symm_apply] at this
        have h1' : m (φ.symm β) ≠ 0 := by rw [← hm]; exact h1
        obtain ⟨j, -, -, hj⟩ := hpure (φ.symm β) (Finsupp.mem_support_iff.mpr h1')
        have hr := hj (RingEquiv.refl ℂ)
        rw [RingEquiv.refl_apply] at hr
        have hφ := hj φ
        rw [RingEquiv.apply_symm_apply] at hφ
        exact ⟨h1', by rw [hr, ← hφ, h2]⟩
      · intro α _
        exact φ.symm_apply_apply α
      · intro β _
        exact φ.apply_symm_apply β
      · intro α _
        show (m (φ α)).natAbs = (m α).natAbs
        rw [hgal]
    ·
      intro α hα
      obtain ⟨β, hβ, hαβ⟩ := Multiset.mem_sum.mp hα
      rw [Multiset.mem_replicate] at hαβ
      rw [hαβ.2]
      rw [hmemS] at hβ
      exact ⟨hintegral β (Finsupp.mem_support_iff.mpr hβ.1), hβ.2⟩
  ·
    intro n
    have hR : ∑ i ∈ Finset.Iic (2 * d), (-1 : ℂ) ^ i *
        ((∑ α ∈ S i, Multiset.replicate (m α).natAbs α).map (· ^ n)).sum =
        ∑ i ∈ Finset.Iic (2 * d), ∑ α ∈ m.support,
          if ‖α‖ = √((q : ℝ) ^ i) then (-1 : ℂ) ^ i * (((m α).natAbs : ℂ) * α ^ n) else 0 := by
      refine Finset.sum_congr rfl (fun i _ => ?_)
      rw [s1 (S i) (fun α => (m α).natAbs) n, hS, Finset.mul_sum, Finset.sum_filter]
    show ∑ α ∈ m.support, (m α : ℂ) * α ^ n = ∑ i ∈ Finset.Iic (2 * d), (-1 : ℂ) ^ i *
        ((∑ α ∈ S i, Multiset.replicate (m α).natAbs α).map (· ^ n)).sum
    rw [hR, Finset.sum_comm]
    refine Finset.sum_congr rfl (fun α hα => ?_)
    obtain ⟨i₀, hi₀, hpos, hφ⟩ := hpure α hα
    have hn : ‖α‖ = √((q : ℝ) ^ i₀) := by
      have := hφ (RingEquiv.refl ℂ)
      rwa [RingEquiv.refl_apply] at this
    rw [Finset.sum_eq_single_of_mem i₀ (Finset.mem_Iic.mpr hi₀)
      (fun j _ hj => if_neg (fun h => hj (huniq _ _ (h.symm.trans hn)))), if_pos hn]
    have key : (-1 : ℤ) ^ i₀ * ((m α).natAbs : ℤ) = m α := by
      rcases neg_one_pow_eq_or ℤ i₀ with h | h <;> rw [h] at hpos ⊢
      · rw [one_mul] at hpos ⊢
        exact Int.natAbs_of_nonneg hpos.le
      · rw [neg_one_mul] at hpos ⊢
        rw [Int.ofNat_natAbs_of_nonpos (by linarith)]
        ring
    have key' : ((((-1 : ℤ) ^ i₀ * ((m α).natAbs : ℤ) : ℤ)) : ℂ) = (m α : ℂ) := by rw [key]
    rw [Int.cast_mul, Int.cast_pow, Int.cast_neg, Int.cast_one, Int.cast_natCast] at key'
    rw [← mul_assoc, key']

end GRWTSK.FiniteFieldWeil
