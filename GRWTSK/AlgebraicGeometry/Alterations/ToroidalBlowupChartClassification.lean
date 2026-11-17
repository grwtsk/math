import GRWTSK.AlgebraicGeometry.Alterations.ToroidalBlowupLocalModels

/-!
# Chart presentations and regular sequences over the blowup centre

Source candidate split from `weil_conjecture_main.lean`, lines 29930–34947.
See the adjacent `ToroidalBlowupChartClassification.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_rtsxs_switch_chart : ∀ (R : Type u) [CommRing R] (r m : ℕ) (φ : Fin (r + 1) → R) (ψ : Fin (m + 1) → R) (i : Fin (r + 1)) (j : Fin (m + 1)) (P : Ideal (wcpaDjChartAlg R φ i)) [P.IsPrime] (c : wcpaDjChartAlg R φ i), Ideal.span (Set.range φ) = Ideal.span (Set.range ψ) → φ i ∈ nonZeroDivisors R → ψ j ∈ nonZeroDivisors R → (c : Localization.Away (φ i)) * algebraMap R _ (φ i) = algebraMap R _ (ψ j) → c ∉ P → ∃ (Q : Ideal (wcpaDjChartAlg R ψ j)) (_ : Q.IsPrime) (Θ : Localization.AtPrime P ≃+* Localization.AtPrime Q), Q.comap (algebraMap R (wcpaDjChartAlg R ψ j)) = P.comap (algebraMap R (wcpaDjChartAlg R φ i)) ∧ ∀ a : R, Θ (algebraMap (wcpaDjChartAlg R φ i) (Localization.AtPrime P) (algebraMap R (wcpaDjChartAlg R φ i) a)) = algebraMap (wcpaDjChartAlg R ψ j) (Localization.AtPrime Q) (algebraMap R (wcpaDjChartAlg R ψ j) a) :=
by
  intro R _ r m φ ψ i j P hP c hspan hφ hψ hc hcP
  classical

  have gen : ∀ (n : ℕ) (f : Fin (n + 1) → R) (k : Fin (n + 1)) (a : R),
      a ∈ Ideal.span (Set.range f) → ∃ v : wcpaDjChartAlg R f k,
        (v : Localization.Away (f k)) * algebraMap R _ (f k) = algebraMap R _ a := by
    intro n f k a ha
    obtain ⟨d, hd⟩ := (Submodule.mem_span_range_iff_exists_fun R).1 ha
    let g : Fin (n + 1) → wcpaDjChartAlg R f k := fun l =>
      ⟨IsLocalization.mk' _ (f l) ⟨f k, Submonoid.mem_powers _⟩, Algebra.subset_adjoin ⟨l, rfl⟩⟩
    have hg : ∀ l, ((g l : wcpaDjChartAlg R f k) : Localization.Away (f k)) *
        algebraMap R _ (f k) = algebraMap R _ (f l) := fun l => IsLocalization.mk'_spec _ _ _
    refine ⟨∑ l, algebraMap R _ (d l) * g l, ?_⟩
    have e : ((∑ l, algebraMap R _ (d l) * g l : wcpaDjChartAlg R f k) : Localization.Away (f k)) =
        ∑ l, algebraMap R (Localization.Away (f k)) (d l) * (g l : Localization.Away (f k)) := by
      simp only [AddSubmonoidClass.coe_finsetSum, Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
    rw [e, Finset.sum_mul, ← hd, map_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [mul_assoc, hg l, smul_eq_mul, map_mul]

  have embed : ∀ (L : Type u) [CommRing L] [Algebra R L] (n : ℕ) (f : Fin (n + 1) → R)
      (k : Fin (n + 1)), Function.Injective (algebraMap R L) → IsUnit (algebraMap R L (f k)) →
      ∃ α : wcpaDjChartAlg R f k →ₐ[R] L, Function.Injective α ∧
        ∀ (y : wcpaDjChartAlg R f k) (a : R),
          (y : Localization.Away (f k)) * algebraMap R _ (f k) = algebraMap R _ a →
          α y * algebraMap R L (f k) = algebraMap R L a := by
    intro L _ _ n f k hinj hu
    let ℓ : Localization.Away (f k) →+* L := IsLocalization.Away.lift (f k) hu
    have hℓ : ∀ a, ℓ (algebraMap R _ a) = algebraMap R L a := IsLocalization.Away.lift_eq (f k) hu
    have hℓinj : Function.Injective ℓ := by
      rw [injective_iff_map_eq_zero]
      intro z hz
      obtain ⟨⟨a, s⟩, hs⟩ := IsLocalization.surj (Submonoid.powers (f k)) z
      have h1 : algebraMap R L a = 0 := by
        rw [← hℓ, ← hs, map_mul, hz, zero_mul]
      have h2 : a = 0 := hinj (h1.trans (map_zero _).symm)
      rw [h2, map_zero] at hs
      exact (IsLocalization.map_units (Localization.Away (f k)) s).mul_left_eq_zero.1 hs
    let α : wcpaDjChartAlg R f k →ₐ[R] L :=
      { toRingHom := ℓ.comp (wcpaDjChartAlg R f k).val.toRingHom
        commutes' := fun a => hℓ a }
    refine ⟨α, ?_, ?_⟩
    · intro y y' h
      exact Subtype.ext (hℓinj h)
    · intro y a h
      show ℓ (y : Localization.Away (f k)) * algebraMap R L (f k) = algebraMap R L a
      rw [← hℓ, ← map_mul, h, hℓ]

  have away : ∀ (C E : Type u) [CommRing C] [CommRing E] (β : C →+* E) (c : C),
      Function.Injective β → IsUnit (β c) → (∀ z : E, ∃ (n : ℕ) (y : C), z * β c ^ n = β y) →
      @IsLocalization.Away C _ c E _ β.toAlgebra := by
    intro C E _ _ β c hβ hu hz
    letI := β.toAlgebra
    refine (isLocalization_iff _ _).2 ⟨?_, ?_, ?_⟩
    · rintro ⟨y, n, rfl⟩
      show IsUnit (β (c ^ n))
      rw [map_pow]; exact hu.pow n
    · intro z
      obtain ⟨n, y, h⟩ := hz z
      exact ⟨⟨y, ⟨c ^ n, n, rfl⟩⟩, by show z * β (c ^ n) = β y; rw [map_pow]; exact h⟩
    · intro x y h
      exact ⟨1, by rw [hβ h]⟩

  have transport : ∀ (C C' E : Type u) [CommRing C] [CommRing C'] [CommRing E] [Algebra C E]
      [Algebra C' E] (c : C) (c' : C') [IsLocalization.Away c E] [IsLocalization.Away c' E]
      (P : Ideal C) [P.IsPrime], c ∉ P →
      ∃ (Q : Ideal C') (_ : Q.IsPrime) (Θ : Localization.AtPrime P ≃+* Localization.AtPrime Q),
        (∀ x : C, x ∈ P ↔ algebraMap C E x ∈ Ideal.map (algebraMap C E) P) ∧
        (∀ x' : C', x' ∈ Q ↔ algebraMap C' E x' ∈ Ideal.map (algebraMap C E) P) ∧
        ∀ (x : C) (x' : C'), algebraMap C E x = algebraMap C' E x' →
          Θ (algebraMap C (Localization.AtPrime P) x) = algebraMap C' (Localization.AtPrime Q) x' := by
    intro C C' E _ _ _ _ _ c c' _ _ P hPp hcP
    have hdisj : Disjoint (Submonoid.powers c : Set C) (P : Set C) := by
      rw [Set.disjoint_left]
      rintro _ ⟨n, rfl⟩ hn
      exact hcP (hPp.mem_of_pow_mem n hn)
    set 𝔓 := Ideal.map (algebraMap C E) P with h𝔓
    haveI h𝔓p : 𝔓.IsPrime :=
      IsLocalization.isPrime_of_isPrime_disjoint (Submonoid.powers c) E P hPp hdisj
    have hcomap : Ideal.comap (algebraMap C E) 𝔓 = P := by
      rw [← Ideal.under_def]
      exact IsLocalization.under_map_of_isPrime_disjoint (Submonoid.powers c) E hPp hdisj
    let Q := Ideal.comap (algebraMap C' E) 𝔓
    haveI hQ : Q.IsPrime := Ideal.IsPrime.comap _
    have h1 : IsLocalization.AtPrime (Localization.AtPrime 𝔓) (Ideal.comap (algebraMap C E) 𝔓) :=
      IsLocalization.isLocalization_isLocalization_atPrime_isLocalization (Submonoid.powers c)
        (Localization.AtPrime 𝔓) 𝔓
    haveI h2 : IsLocalization.AtPrime (Localization.AtPrime 𝔓) Q :=
      IsLocalization.isLocalization_isLocalization_atPrime_isLocalization (Submonoid.powers c')
        (Localization.AtPrime 𝔓) 𝔓
    have hsub : P.primeCompl = (Ideal.comap (algebraMap C E) 𝔓).primeCompl := by
      ext x
      rw [Ideal.mem_primeCompl_iff, Ideal.mem_primeCompl_iff, hcomap]
    haveI h1' : IsLocalization.AtPrime (Localization.AtPrime 𝔓) P := by
      unfold IsLocalization.AtPrime
      rw [hsub]
      exact h1
    let e₁ := IsLocalization.algEquiv P.primeCompl (Localization.AtPrime P)
      (Localization.AtPrime 𝔓)
    let e₂ := IsLocalization.algEquiv Q.primeCompl (Localization.AtPrime Q)
      (Localization.AtPrime 𝔓)
    refine ⟨Q, hQ, e₁.toRingEquiv.trans e₂.symm.toRingEquiv, ?_, ?_, ?_⟩
    · intro x
      rw [show (algebraMap C E x ∈ 𝔓) ↔ x ∈ Ideal.comap (algebraMap C E) 𝔓 from Iff.rfl, hcomap]
    · intro x'
      exact Iff.rfl
    · intro x x' hxx'
      show e₂.symm (e₁ (algebraMap C _ x)) = _
      rw [AlgEquiv.symm_apply_eq, AlgEquiv.commutes, AlgEquiv.commutes,
        IsScalarTower.algebraMap_apply C E (Localization.AtPrime 𝔓),
        IsScalarTower.algebraMap_apply C' E (Localization.AtPrime 𝔓), hxx']

  have hPi : φ i * ψ j ∈ nonZeroDivisors R := (nonZeroDivisors R).mul_mem hφ hψ
  let L := Localization.Away (φ i * ψ j)
  have hinj : Function.Injective (algebraMap R L) :=
    IsLocalization.injective L (Submonoid.powers_le.mpr hPi)
  have hPiu : IsUnit (algebraMap R L (φ i * ψ j)) := IsLocalization.Away.algebraMap_isUnit _
  rw [map_mul] at hPiu
  have hu₁ : IsUnit (algebraMap R L (φ i)) := isUnit_of_mul_isUnit_left hPiu
  have hu₂ : IsUnit (algebraMap R L (ψ j)) := isUnit_of_mul_isUnit_right hPiu

  have overlap : ∀ (n₁ n₂ : ℕ) (f₁ : Fin (n₁ + 1) → R) (f₂ : Fin (n₂ + 1) → R) (k₁ : Fin (n₁ + 1))
      (k₂ : Fin (n₂ + 1)) (γ₁ : wcpaDjChartAlg R f₁ k₁ →ₐ[R] L)
      (γ₂ : wcpaDjChartAlg R f₂ k₂ →ₐ[R] L) (e : wcpaDjChartAlg R f₁ k₁),
      Ideal.span (Set.range f₁) = Ideal.span (Set.range f₂) → IsUnit (algebraMap R L (f₁ k₁)) →
      (∀ (y : wcpaDjChartAlg R f₁ k₁) (a : R),
        (y : Localization.Away (f₁ k₁)) * algebraMap R _ (f₁ k₁) = algebraMap R _ a →
        γ₁ y * algebraMap R L (f₁ k₁) = algebraMap R L a) →
      (∀ (y : wcpaDjChartAlg R f₂ k₂) (a : R),
        (y : Localization.Away (f₂ k₂)) * algebraMap R _ (f₂ k₂) = algebraMap R _ a →
        γ₂ y * algebraMap R L (f₂ k₂) = algebraMap R L a) →
      γ₁ e * algebraMap R L (f₁ k₁) = algebraMap R L (f₂ k₂) →
      ∀ z ∈ γ₁.range ⊔ γ₂.range, ∃ (n : ℕ) (y : wcpaDjChartAlg R f₁ k₁), z * γ₁ e ^ n = γ₁ y := by
    intro n₁ n₂ f₁ f₂ k₁ k₂ γ₁ γ₂ e hsp hu h1 h2 he
    let S : Subalgebra R L :=
      { carrier := {z | ∃ (n : ℕ) (y : wcpaDjChartAlg R f₁ k₁), z * γ₁ e ^ n = γ₁ y}
        mul_mem' := by
          rintro z₁ z₂ ⟨a₁, y₁, hy₁⟩ ⟨a₂, y₂, hy₂⟩
          exact ⟨a₁ + a₂, y₁ * y₂, by rw [map_mul, ← hy₁, ← hy₂, pow_add]; ring⟩
        add_mem' := by
          rintro z₁ z₂ ⟨a₁, y₁, hy₁⟩ ⟨a₂, y₂, hy₂⟩
          exact ⟨a₁ + a₂, y₁ * e ^ a₂ + y₂ * e ^ a₁, by
            rw [map_add, map_mul, map_mul, map_pow, map_pow, ← hy₁, ← hy₂, pow_add]; ring⟩
        algebraMap_mem' := fun a =>
          ⟨0, algebraMap R _ a, by rw [pow_zero, mul_one, AlgHom.commutes]⟩ }
    have hS1 : γ₁.range ≤ S := by
      intro z hz
      obtain ⟨y, rfl⟩ := (AlgHom.mem_range _).1 hz
      exact ⟨0, y, by rw [pow_zero, mul_one]⟩
    have hS2 : γ₂.range ≤ S := by
      intro z hz
      obtain ⟨y, rfl⟩ := (AlgHom.mem_range _).1 hz
      obtain ⟨x, hx⟩ := y
      clear hz
      induction hx using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        obtain ⟨v, hv⟩ := gen n₁ f₁ k₁ (f₂ l)
          (hsp ▸ (Ideal.subset_span ⟨l, rfl⟩ : f₂ l ∈ Ideal.span (Set.range f₂)))
        refine ⟨1, v, ?_⟩
        apply hu.mul_left_inj.1
        rw [h1 v _ hv, pow_one, mul_assoc, he]
        exact h2 _ _ (IsLocalization.mk'_spec _ _ _)
      | algebraMap a =>
        show γ₂ (algebraMap R _ a) ∈ S
        rw [AlgHom.commutes]
        exact S.algebraMap_mem a
      | add x y hx hy ihx ihy =>
        show γ₂ (⟨x, hx⟩ + ⟨y, hy⟩) ∈ S
        rw [map_add]
        exact S.add_mem ihx ihy
      | mul x y hx hy ihx ihy =>
        show γ₂ (⟨x, hx⟩ * ⟨y, hy⟩) ∈ S
        rw [map_mul]
        exact S.mul_mem ihx ihy
    intro z hz
    exact sup_le hS1 hS2 hz

  obtain ⟨α, hαinj, hα⟩ := embed L r φ i hinj hu₁
  obtain ⟨α', hα'inj, hα'⟩ := embed L m ψ j hinj hu₂
  obtain ⟨c', hc'⟩ := gen m ψ j (φ i)
    (hspan ▸ (Ideal.subset_span ⟨i, rfl⟩ : φ i ∈ Ideal.span (Set.range φ)))
  have ht : α c * algebraMap R L (φ i) = algebraMap R L (ψ j) := hα c _ hc
  have ht' : α' c' * algebraMap R L (ψ j) = algebraMap R L (φ i) := hα' c' _ hc'
  have htt' : α c * α' c' = 1 := by
    apply hu₂.mul_left_inj.1
    rw [mul_assoc, ht', ht, one_mul]

  let E : Subalgebra R L := α.range ⊔ α'.range
  let β : wcpaDjChartAlg R φ i →+* E := α.toRingHom.codRestrict E
    (fun y => (le_sup_left : α.range ≤ E) (α.mem_range_self y))
  let β' : wcpaDjChartAlg R ψ j →+* E := α'.toRingHom.codRestrict E
    (fun y => (le_sup_right : α'.range ≤ E) (α'.mem_range_self y))
  have hβinj : Function.Injective β := fun x y h => hαinj (congrArg Subtype.val h)
  have hβ'inj : Function.Injective β' := fun x y h => hα'inj (congrArg Subtype.val h)
  have hββ : β c * β' c' = 1 := Subtype.ext htt'
  have hβu : IsUnit (β c) := IsUnit.of_mul_eq_one _ hββ
  have hβ'u : IsUnit (β' c') := IsUnit.of_mul_eq_one _ ((mul_comm _ _).trans hββ)

  have hgenβ : ∀ z : E, ∃ (n : ℕ) (y : wcpaDjChartAlg R φ i), z * β c ^ n = β y := by
    intro z
    obtain ⟨n, y, h⟩ := overlap r m φ ψ i j α α' c hspan hu₁ hα hα' ht z.1 z.2
    exact ⟨n, y, Subtype.ext h⟩
  have hgenβ' : ∀ z : E, ∃ (n : ℕ) (y : wcpaDjChartAlg R ψ j), z * β' c' ^ n = β' y := by
    intro z
    have hz : z.1 ∈ α'.range ⊔ α.range := by rw [sup_comm]; exact z.2
    obtain ⟨n, y, h⟩ := overlap m r ψ φ j i α' α c' hspan.symm hu₂ hα' hα ht' z.1 hz
    exact ⟨n, y, Subtype.ext h⟩

  have hlocC := away (wcpaDjChartAlg R φ i) E β c hβinj hβu hgenβ
  have hlocC' := away (wcpaDjChartAlg R ψ j) E β' c' hβ'inj hβ'u hgenβ'
  obtain ⟨Q, hQ, Θ, hmemP, hmemQ, hcompat⟩ :=
    @transport (wcpaDjChartAlg R φ i) (wcpaDjChartAlg R ψ j) E _ _ _ β.toAlgebra β'.toAlgebra
      c c' hlocC hlocC' P hP hcP

  have hR : ∀ a : R, β (algebraMap R _ a) = β' (algebraMap R _ a) := fun a =>
    Subtype.ext (by
      show α (algebraMap R _ a) = α' (algebraMap R _ a)
      rw [AlgHom.commutes, AlgHom.commutes])
  refine ⟨Q, hQ, Θ, ?_, fun a => hcompat _ _ (hR a)⟩
  ext a
  rw [Ideal.mem_comap, Ideal.mem_comap, hmemQ, hmemP]
  show β' (algebraMap R _ a) ∈ _ ↔ β (algebraMap R _ a) ∈ _
  rw [hR a]

theorem wcpa_dj_rtsxc_p1_sigma_graph (A : Type u) [CommRing A] [IsRegularLocalRing A]
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
    (hXY : ¬ (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0 ∈ 𝔔 ∧
      wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1 ∈ 𝔔)) :
    wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
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
      {l} :=
by
  classical

  have transport : ∀ (B B' : Type u) [CommRing B] [IsLocalRing B] [CommRing B'] [IsLocalRing B']
      (Θ : B ≃+* B') (τ : Fin n → B) (γ : B) (T : Finset (Fin n)),
      wcpaDjRtsxcPt B' (fun m => Θ (τ m)) (Θ γ) T → wcpaDjRtsxcPt B τ γ T := by
    intro B B' _ _ _ _ Θ τ γ T h
    obtain ⟨n', s', κ, e₀, P1, P2, P3, P4, P5, P6, P7⟩ := h
    obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_adic_congr B B' Θ
    have K : ∀ c : B, ε.symm (algebraMap B' (AdicCompletion (IsLocalRing.maximalIdeal B') B') (Θ c)) =
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) c := by
      intro c
      have h1 := RingHom.congr_fun hε c
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at h1
      rw [← h1, RingEquiv.symm_apply_apply]
    have hm : Ideal.map (Θ : B →+* B') (IsLocalRing.maximalIdeal B) = IsLocalRing.maximalIdeal B' :=
      IsLocalRing.eq_maximalIdeal (Ideal.map_isMaximal_of_equiv Θ)
    have e1 : ∀ I : Ideal B, Ideal.map (ε.symm : _ →+* _)
        (Ideal.map (algebraMap B' (AdicCompletion (IsLocalRing.maximalIdeal B') B'))
          (Ideal.map (Θ : B →+* B') I)) =
        Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) I := by
      intro I
      rw [Ideal.map_map, Ideal.map_map]
      congr 1
      exact RingHom.ext fun c => K c
    refine ⟨n', fun c => ε.symm (s' c), κ, e₀, ?_, ?_, ?_, P4, P5, ?_, ?_⟩
    · rw [P1]; exact (ringKrullDim_eq_of_ringEquiv Θ).symm
    · calc Ideal.span (Set.range fun c => ε.symm (s' c))
          = Ideal.map (ε.symm : _ →+* _) (Ideal.span (Set.range s')) := by
            rw [Ideal.map_span, ← Set.range_comp]; rfl
        _ = _ := by
            have e2 := e1 (IsLocalRing.maximalIdeal B)
            rw [hm] at e2
            rw [P2]
            exact e2
    · have h1 := P3.map ε.symm
      rw [K] at h1
      exact h1
    · intro m hm'
      have h1 := (P6 m hm').map ε.symm
      simp only [K, map_prod] at h1
      exact h1
    · intro m hm'
      have h1 := (P7 m hm').map ε.symm
      simp only [K, map_prod, map_mul] at h1
      exact h1

  have assoc : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (τ : Fin n → B) (γ γ₁ : B)
      (T : Finset (Fin n)), wcpaDjRtsxcPt B τ γ₁ T → Associated γ γ₁ → wcpaDjRtsxcPt B τ γ T := by
    intro B _ _ τ γ γ₁ T h hγ
    obtain ⟨n', s, κ, e₀, P1, P2, P3, P4, P5, P6, P7⟩ := h
    have a := hγ.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))
    exact ⟨n', s, κ, e₀, P1, P2, a.trans P3, P4, P5, P6,
      fun m hm => (P7 m hm).trans (a.symm.mul_right _)⟩

  have hnzd := wcpa_dj_rtsxc_model_nzd A n x y v σ b hv hdim hmax
  have hG : ∀ k, wcpaDjP1Gen A x y v σ b l k ∈ nonZeroDivisors (wcpaDjP1Ring A x y v σ b) := by
    intro k
    fin_cases k
    · exact hnzd.1
    · exact hnzd.2.1
    · exact hnzd.2.2 l

  have hj' : ∃ j' : Fin (2 + 1), j' ≠ 2 ∧
      wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 j' ∉ 𝔔 := by
    rcases not_and_or.mp hXY with h | h
    · exact ⟨0, by decide, h⟩
    · exact ⟨1, by decide, h⟩
  obtain ⟨j', hj'2, hW⟩ := hj'

  have hspec : ((wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 j' :
      wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2) :
        Localization.Away (wcpaDjP1Gen A x y v σ b l 2)) *
      algebraMap (wcpaDjP1Ring A x y v σ b) _ (wcpaDjP1Gen A x y v σ b l 2) =
      algebraMap (wcpaDjP1Ring A x y v σ b) _ (wcpaDjP1Gen A x y v σ b l j') :=
    IsLocalization.mk'_spec _ _ _

  obtain ⟨Q', hQ'p, Θ, hQc, hΘ⟩ := wcpa_dj_rtsxs_switch_chart (wcpaDjP1Ring A x y v σ b) 2 2
    (wcpaDjP1Gen A x y v σ b l) (wcpaDjP1Gen A x y v σ b l) 2 j' 𝔔
    (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 j') rfl
    (hG 2) (hG j') hspec hW
  haveI := hQ'p

  have hQ' : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j') c ∈ Q' ↔
        ¬ IsUnit c := by
    intro c
    rw [← Ideal.mem_comap, hQc, Ideal.mem_comap]
    exact h𝔔 c

  have HB' := wcpa_dj_rtsxc_p1_axis A n x y v σ b l hv hdim hmax hb j' hj'2 Q' hQ'

  have HB : wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
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
        (wcpaDjP1Gen A x y v σ b l j'))
      {l} := by
    refine transport (Localization.AtPrime 𝔔) (Localization.AtPrime Q') Θ _ _ _ ?_
    simp only [RingHom.comp_apply, hΘ]
    simpa only [RingHom.comp_apply] using HB'

  have hu : IsUnit (algebraMap
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
      (Localization.AtPrime 𝔔)
      (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 j')) :=
    (IsLocalization.AtPrime.isUnit_to_map_iff _ 𝔔 _).mpr hW
  have hC : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 j' *
      algebraMap (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
        (wcpaDjP1Gen A x y v σ b l 2) =
      algebraMap (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
        (wcpaDjP1Gen A x y v σ b l j') :=
    Subtype.ext hspec
  have hγ : Associated
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)))
        (wcpaDjP1Gen A x y v σ b l 2))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2)))
        (wcpaDjP1Gen A x y v σ b l j')) := by
    refine ⟨hu.unit, ?_⟩
    rw [IsUnit.unit_spec, RingHom.comp_apply, RingHom.comp_apply, ← hC, map_mul]
    exact mul_comm _ _

  exact assoc _ _ _ _ {l} HB hγ

theorem wcpa_dj_rtsxc_model_p1 (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hb : 2 ≤ b l) :
    wcpaDjRtsxcChartOut (A ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b m})
      (![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l)] : Fin (2 + 1) → _)
      (fun m => Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)) {l} b :=
by
  classical
  intro j 𝔔 _ h𝔔
  have hgam : ∀ (B : Type u) [CommRing B] [IsLocalRing B]
      [Algebra (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) B]
      [IsLocalization.AtPrime B 𝔔],
      algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)
        (((algebraMap (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) B).comp
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)))
          (wcpaDjP1Gen A x y v σ b l j)) ∈
      nonZeroDivisors (AdicCompletion (IsLocalRing.maximalIdeal B) B) := by
    intro B _ _ _ _
    haveI : Algebra.FiniteType (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) :=
      (Subalgebra.fg_iff_finiteType _).mp (Subalgebra.fg_def.mpr ⟨_, Set.finite_range _, rfl⟩)
    haveI : IsNoetherianRing
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) :=
      Algebra.FiniteType.isNoetherianRing (wcpaDjP1Ring A x y v σ b) _
    haveI : IsNoetherianRing B := IsLocalization.isNoetherianRing 𝔔.primeCompl B inferInstance
    haveI : Module.Flat
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j) B :=
      IsLocalization.flat B 𝔔.primeCompl
    haveI : Module.Flat B (AdicCompletion (IsLocalRing.maximalIdeal B) B) :=
      AdicCompletion.flat_of_isNoetherian _
    have h1 : IsSMulRegular
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
          (wcpaDjP1Gen A x y v σ b l j)) := by
      intro a c hac
      have hac' : algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
            (wcpaDjP1Gen A x y v σ b l j) * a =
          algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) j)
            (wcpaDjP1Gen A x y v σ b l j) * c := hac
      apply Subtype.ext
      have h2 : (algebraMap (wcpaDjP1Ring A x y v σ b)
            (Localization.Away (wcpaDjP1Gen A x y v σ b l j)) (wcpaDjP1Gen A x y v σ b l j)) * a.1 =
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (Localization.Away (wcpaDjP1Gen A x y v σ b l j)) (wcpaDjP1Gen A x y v σ b l j)) * c.1 :=
        congrArg Subtype.val hac'
      exact (IsLocalization.Away.algebraMap_isUnit (wcpaDjP1Gen A x y v σ b l j)).mul_left_cancel h2
    have h2 := h1.of_flat (S := B)
    have h3 := h2.of_flat (S := AdicCompletion (IsLocalRing.maximalIdeal B) B)
    refine mem_nonZeroDivisors_iff.mpr ⟨fun z hz => h3 ?_, fun z hz => h3 ?_⟩
    · show _ • z = _ • (0 : AdicCompletion (IsLocalRing.maximalIdeal B) B)
      rw [smul_zero, smul_eq_mul]
      exact hz
    · show _ • z = _ • (0 : AdicCompletion (IsLocalRing.maximalIdeal B) B)
      rw [smul_zero, smul_eq_mul, mul_comm]
      exact hz
  refine ⟨hgam (Localization.AtPrime 𝔔), ?_⟩
  by_cases hj : j = 2
  · subst hj
    by_cases hXY :
        wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 0 ∈ 𝔔 ∧
        wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP1Gen A x y v σ b l) 2 1 ∈ 𝔔
    · exact Or.inr (wcpa_dj_rtsxc_p1_node A n x y v σ b l hv hdim hmax hb 𝔔 h𝔔 hXY.1 hXY.2)
    · exact Or.inl (wcpa_dj_rtsxc_p1_sigma_graph A n x y v σ b l hv hdim hmax hb 𝔔 h𝔔 hXY)
  · exact Or.inl (wcpa_dj_rtsxc_p1_axis A n x y v σ b l hv hdim hmax hb j hj 𝔔 h𝔔)

theorem wcpa_dj_scr_weakly_regular : ∀ (O : Type u) [CommRing O] [IsRegularLocalRing O] (m : ℕ) (x : Fin m → IsLocalRing.maximalIdeal O), LinearIndependent (IsLocalRing.ResidueField O) (fun i => (IsLocalRing.maximalIdeal O).toCotangent (x i)) → RingTheory.Sequence.IsWeaklyRegular O (List.ofFn fun i => (x i : O)) :=
by
  intro O _ _ m x hli
  classical
  rw [RingTheory.Sequence.isWeaklyRegular_iff]
  intro i h
  have hi : i < m := by simpa using h
  set I : Ideal O := Ideal.span (Set.range fun j : Fin i => (x (Fin.castLE hi.le j) : O)) with hI
  have hli' : LinearIndependent (IsLocalRing.ResidueField O)
      (fun j : Fin i => (IsLocalRing.maximalIdeal O).toCotangent (x (Fin.castLE hi.le j))) :=
    hli.comp _ (Fin.castLE_injective hi.le)
  haveI hreg : IsRegularLocalRing (O ⧸ I) :=
    (wcpa_rs_quotient_regular O i (fun j => x (Fin.castLE hi.le j)) hli').1
  haveI hdom : IsDomain (O ⧸ I) := wcpa_regular_isDomain (O ⧸ I) wcpa_rs_quotient_regular hreg
  have hprime : I.IsPrime := (Ideal.Quotient.isDomain_iff_prime I).mp hdom
  have hnot : (x ⟨i, hi⟩ : O) ∉ I := by
    intro hmem
    obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.mp hmem
    have h1 : x ⟨i, hi⟩ = ∑ j, c j • x (Fin.castLE hi.le j) := by
      apply Subtype.ext
      rw [← hc, Submodule.coe_sum]
      simp [smul_eq_mul]
    have h2 : (IsLocalRing.maximalIdeal O).toCotangent (x ⟨i, hi⟩) =
        ∑ j, (algebraMap O (IsLocalRing.ResidueField O) (c j)) •
          (IsLocalRing.maximalIdeal O).toCotangent (x (Fin.castLE hi.le j)) := by
      rw [h1, map_sum]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rw [map_smul]
      exact (algebraMap_smul (IsLocalRing.ResidueField O) (c j) _).symm
    apply hli.notMem_span_image (s := {k : Fin m | (k : ℕ) < i}) (x := ⟨i, hi⟩) (by simp)
    rw [h2]
    apply Submodule.sum_mem
    intro j _
    apply Submodule.smul_mem
    apply Submodule.subset_span
    exact ⟨Fin.castLE hi.le j, by simp, rfl⟩
  have hofList : Ideal.ofList ((List.ofFn fun i => (x i : O)).take i) = I := by
    rw [Ideal.ofList.eq_1, hI]
    congr 1
    ext r
    simp only [Set.mem_setOf_eq, Set.mem_range, List.mem_take_iff_getElem, List.getElem_ofFn,
      List.length_ofFn]
    constructor
    · rintro ⟨j, hj, rfl⟩
      exact ⟨⟨j, (lt_min_iff.mp hj).1⟩, rfl⟩
    · rintro ⟨j, rfl⟩
      exact ⟨j.val, lt_min j.2 (lt_of_lt_of_le j.2 hi.le), rfl⟩
  have hget : (List.ofFn fun i => (x i : O))[i] = (x ⟨i, hi⟩ : O) := by simp
  rw [isSMulRegular_iff_right_eq_zero_of_smul]
  intro q hq
  induction q using Submodule.Quotient.induction_on with
  | H c =>
    rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at hq
    rw [Submodule.Quotient.mk_eq_zero]
    rw [hofList, Ideal.smul_eq_mul, Ideal.mul_top] at hq ⊢
    rw [hget, smul_eq_mul] at hq
    exact (hprime.mem_or_mem hq).resolve_left hnot

theorem wcpa_dj_rtsxc_p2xy_param_seq : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (N : ℕ) (t : Fin N → A), (N : WithBot ℕ∞) = ringKrullDim A → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A → ∀ (k : ℕ) (ι : Fin k → Fin N), Function.Injective ι → RingTheory.Sequence.IsWeaklyRegular A (List.ofFn (t ∘ ι)) :=
by
  intro A _ _ N t hN ht k ι hι
  have hmem : ∀ i, t i ∈ IsLocalRing.maximalIdeal A := fun i => by
    rw [← ht]; exact Ideal.subset_span (Set.mem_range_self i)
  let t' : Fin N → IsLocalRing.maximalIdeal A := fun i => ⟨t i, hmem i⟩
  have hspan : Submodule.span A (Set.range t') = ⊤ := by
    apply Submodule.map_injective_of_injective (IsLocalRing.maximalIdeal A).injective_subtype
    rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp]
    exact ht
  have hcot : Submodule.span (IsLocalRing.ResidueField A)
      ((IsLocalRing.maximalIdeal A).toCotangent '' Set.range t') = ⊤ :=
    (IsLocalRing.CotangentSpace.span_image_eq_top_iff).mpr hspan
  rw [← Set.range_comp] at hcot
  have hsf : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal A) : ℕ) : WithBot ℕ∞) =
      ringKrullDim A := IsRegularLocalRing.spanFinrank_maximalIdeal
  have hN' : Submodule.spanFinrank (IsLocalRing.maximalIdeal A) = N := by
    have := hsf.trans hN.symm
    exact_mod_cast this
  have hcard : Fintype.card (Fin N) =
      Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.CotangentSpace A) := by
    rw [Fintype.card_fin, ← IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace, hN']
  have hli : LinearIndependent (IsLocalRing.ResidueField A)
      ((IsLocalRing.maximalIdeal A).toCotangent ∘ t') :=
    linearIndependent_of_top_le_span_of_card_eq_finrank (le_of_eq hcot.symm) hcard
  have hli' := hli.comp ι hι
  exact wcpa_dj_scr_weakly_regular A k (t' ∘ ι) hli'

theorem wcpa_dj_rtsxc_p2xy_present : ∀ (A : Type u) [CommRing A] (I : Ideal A) (a c s t w : A) (G : Fin (3 + 1) → A ⧸ I) (j js jt : Fin (3 + 1)), I = Ideal.span {a * c - w * s * t} → G j = Ideal.Quotient.mk I a → G js = Ideal.Quotient.mk I s → G jt = Ideal.Quotient.mk I t → (∀ k, G k = Ideal.Quotient.mk I a ∨ G k = Ideal.Quotient.mk I c ∨ G k = Ideal.Quotient.mk I s ∨ G k = Ideal.Quotient.mk I t) → Ideal.Quotient.mk I a ∈ nonZeroDivisors (A ⧸ I) → ∃ θ : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ I) G j, Function.Surjective θ ∧ (∀ r : A, θ (MvPolynomial.C r) = algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) G j) (Ideal.Quotient.mk I r)) ∧ θ (MvPolynomial.X 0) = wcpaDjChartGen (A ⧸ I) G j js ∧ θ (MvPolynomial.X 1) = wcpaDjChartGen (A ⧸ I) G j jt ∧ θ (MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0) = 0 ∧ θ (MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1) = 0 ∧ θ (MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 * MvPolynomial.X 1) = 0 ∧ ∀ p, θ p = 0 → ∃ N : ℕ, MvPolynomial.C a ^ N * p ∈ Ideal.span {MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0, MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1, MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 * MvPolynomial.X 1} :=
by
  intro A _ I a c s t w G j js jt hI hGj hGs hGt hcov _hnzd
  classical
  let φ : A →+* Localization.Away (G j) :=
    (algebraMap (A ⧸ I) (Localization.Away (G j))).comp (Ideal.Quotient.mk I)
  let gen : Fin (3 + 1) → Localization.Away (G j) := fun l =>
    IsLocalization.mk' (Localization.Away (G j)) (G l)
      (⟨G j, Submonoid.mem_powers _⟩ : Submonoid.powers (G j))
  let u : Fin 2 → Localization.Away (G j) := ![gen js, gen jt]
  have hu_0 : u 0 = gen js := rfl
  have hu_1 : u 1 = gen jt := rfl
  let θ : MvPolynomial (Fin 2) A →+* wcpaDjChartAlg (A ⧸ I) G j :=
    MvPolynomial.eval₂Hom
      ((algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) G j)).comp (Ideal.Quotient.mk I))
      ![wcpaDjChartGen (A ⧸ I) G j js, wcpaDjChartGen (A ⧸ I) G j jt]
  have hθC : ∀ r : A, θ (MvPolynomial.C r) =
      algebraMap (A ⧸ I) (wcpaDjChartAlg (A ⧸ I) G j) (Ideal.Quotient.mk I r) :=
    fun r => MvPolynomial.eval₂Hom_C _ _ _
  have hθX : ∀ n : Fin 2, θ (MvPolynomial.X n) =
      ![wcpaDjChartGen (A ⧸ I) G j js, wcpaDjChartGen (A ⧸ I) G j jt] n :=
    fun n => MvPolynomial.eval₂Hom_X' _ _ _
  have hφ : ∀ r, φ r = algebraMap (A ⧸ I) (Localization.Away (G j)) (Ideal.Quotient.mk I r) :=
    fun r => rfl
  have hCF : ∀ q : MvPolynomial (Fin 2) A,
      ((θ q : wcpaDjChartAlg (A ⧸ I) G j) : Localization.Away (G j)) =
        MvPolynomial.eval₂ φ u q := by
    intro q
    induction q using MvPolynomial.induction_on with
    | C r =>
      rw [hθC, MvPolynomial.eval₂_C]
      rfl
    | add p q hp hq =>
      rw [map_add, Subalgebra.coe_add, hp, hq, MvPolynomial.eval₂_add]
    | mul_X p n hp =>
      rw [map_mul, Subalgebra.coe_mul, hp, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_X, hθX]
      congr 1
      fin_cases n <;> rfl
  have hZT : ∀ q, θ q = 0 ↔ MvPolynomial.eval₂ φ u q = 0 := by
    intro q
    rw [← hCF]
    exact ⟨fun h => by simp [h], fun h => Subtype.ext h⟩
  have hunit : IsUnit (φ a) := by
    rw [hφ, ← hGj]
    exact IsLocalization.Away.algebraMap_isUnit (G j)
  have hgen : ∀ l, φ a * gen l = algebraMap (A ⧸ I) (Localization.Away (G j)) (G l) := by
    intro l
    rw [hφ, ← hGj]
    exact IsLocalization.mk'_spec' (Localization.Away (G j)) (G l) _
  have hu0 : φ a * gen js = φ s := by rw [hgen js, hGs, ← hφ]
  have hu1 : φ a * gen jt = φ t := by rw [hgen jt, hGt, ← hφ]
  have hF : φ a * φ c = φ w * φ s * φ t := by
    have h0 : Ideal.Quotient.mk I (a * c - w * s * t) = 0 := by
      rw [Ideal.Quotient.eq_zero_iff_mem, hI]
      exact Ideal.mem_span_singleton_self _
    have h1 : φ (a * c - w * s * t) = 0 := by rw [hφ, h0, map_zero]
    rw [map_sub, map_mul, map_mul, map_mul] at h1
    exact sub_eq_zero.mp h1
  have he1 : MvPolynomial.eval₂ φ u
      (MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0) = 0 := by
    simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
      MvPolynomial.eval₂_X]
    rw [hu_0, hu0, sub_self]
  have he2 : MvPolynomial.eval₂ φ u
      (MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1) = 0 := by
    simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
      MvPolynomial.eval₂_X]
    rw [hu_1, hu1, sub_self]
  have he3 : MvPolynomial.eval₂ φ u (MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a *
      MvPolynomial.X 0 * MvPolynomial.X 1) = 0 := by
    simp only [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C,
      MvPolynomial.eval₂_X]
    rw [hu_0, hu_1]
    apply hunit.mul_left_cancel
    linear_combination hF - φ w * φ a * gen jt * hu0 - φ w * φ s * hu1
  have hgenq : ∀ l, ∃ q : MvPolynomial (Fin 2) A, MvPolynomial.eval₂ φ u q = gen l := by
    intro l
    rcases hcov l with h | h | h | h
    · refine ⟨1, ?_⟩
      apply hunit.mul_left_cancel
      rw [MvPolynomial.eval₂_one, mul_one, hgen l, h, ← hφ]
    · refine ⟨MvPolynomial.C w * MvPolynomial.X 0 * MvPolynomial.X 1, ?_⟩
      apply hunit.mul_left_cancel
      rw [hgen l, h, ← hφ]
      apply hunit.mul_left_cancel
      simp only [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C, MvPolynomial.eval₂_X]
      rw [hu_0, hu_1]
      linear_combination φ w * φ a * gen jt * hu0 + φ w * φ s * hu1 - hF
    · refine ⟨MvPolynomial.X 0, ?_⟩
      apply hunit.mul_left_cancel
      rw [MvPolynomial.eval₂_X, hu_0, hgen l, h, ← hφ, hu0]
    · refine ⟨MvPolynomial.X 1, ?_⟩
      apply hunit.mul_left_cancel
      rw [MvPolynomial.eval₂_X, hu_1, hgen l, h, ← hφ, hu1]
  have hsurj : Function.Surjective θ := by
    have key : ∀ x ∈ Algebra.adjoin (A ⧸ I) (Set.range gen),
        ∃ q : MvPolynomial (Fin 2) A, MvPolynomial.eval₂ φ u q = x := by
      intro x hx
      induction hx using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        exact hgenq l
      | algebraMap r =>
        obtain ⟨r', rfl⟩ := Ideal.Quotient.mk_surjective r
        exact ⟨MvPolynomial.C r', by rw [MvPolynomial.eval₂_C]; rfl⟩
      | add x y _ _ hx hy =>
        obtain ⟨q1, h1⟩ := hx
        obtain ⟨q2, h2⟩ := hy
        exact ⟨q1 + q2, by rw [MvPolynomial.eval₂_add, h1, h2]⟩
      | mul x y _ _ hx hy =>
        obtain ⟨q1, h1⟩ := hx
        obtain ⟨q2, h2⟩ := hy
        exact ⟨q1 * q2, by rw [MvPolynomial.eval₂_mul, h1, h2]⟩
    intro z
    obtain ⟨q, hq⟩ := key (z : Localization.Away (G j)) z.2
    exact ⟨q, Subtype.ext ((hCF q).trans hq)⟩
  obtain ⟨J, hJ⟩ : ∃ J : Ideal (MvPolynomial (Fin 2) A), J = Ideal.span
      {MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0,
        MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1,
        MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
          MvPolynomial.X 1} := ⟨_, rfl⟩
  have hp1J : MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0 ∈ J := by
    rw [hJ]; exact Ideal.subset_span (Set.mem_insert _ _)
  have hp2J : MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1 ∈ J := by
    rw [hJ]; exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
  have hp3J : MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
      MvPolynomial.X 1 ∈ J := by
    rw [hJ]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
  have hNF : ∀ p : MvPolynomial (Fin 2) A, ∃ (N : ℕ) (r : A),
      MvPolynomial.C a ^ N * p - MvPolynomial.C r ∈ J := by
    intro p
    induction p using MvPolynomial.induction_on with
    | C r => exact ⟨0, r, by rw [pow_zero, one_mul, sub_self]; exact J.zero_mem⟩
    | add p q hp hq =>
      obtain ⟨N1, r1, h1⟩ := hp
      obtain ⟨N2, r2, h2⟩ := hq
      refine ⟨N1 + N2, a ^ N2 * r1 + a ^ N1 * r2, ?_⟩
      have e : MvPolynomial.C a ^ (N1 + N2) * (p + q) -
          MvPolynomial.C (a ^ N2 * r1 + a ^ N1 * r2) =
          MvPolynomial.C a ^ N2 * (MvPolynomial.C a ^ N1 * p - MvPolynomial.C r1) +
          MvPolynomial.C a ^ N1 * (MvPolynomial.C a ^ N2 * q - MvPolynomial.C r2) := by
        simp only [map_add, map_mul, map_pow]; ring
      rw [e]
      exact J.add_mem (J.mul_mem_left _ h1) (J.mul_mem_left _ h2)
    | mul_X p n hp =>
      obtain ⟨N, r, h⟩ := hp
      have hn : n = 0 ∨ n = 1 := by fin_cases n <;> simp
      rcases hn with rfl | rfl
      · refine ⟨N + 1, r * s, ?_⟩
        have e : MvPolynomial.C a ^ (N + 1) * (p * MvPolynomial.X 0) - MvPolynomial.C (r * s) =
            MvPolynomial.C s * (MvPolynomial.C a ^ N * p - MvPolynomial.C r) -
            (MvPolynomial.C a ^ N * p) *
              (MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0) := by
          simp only [map_mul]; ring
        rw [e]
        exact J.sub_mem (J.mul_mem_left _ h) (J.mul_mem_left _ hp1J)
      · refine ⟨N + 1, r * t, ?_⟩
        have e : MvPolynomial.C a ^ (N + 1) * (p * MvPolynomial.X 1) - MvPolynomial.C (r * t) =
            MvPolynomial.C t * (MvPolynomial.C a ^ N * p - MvPolynomial.C r) -
            (MvPolynomial.C a ^ N * p) *
              (MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1) := by
          simp only [map_mul]; ring
        rw [e]
        exact J.sub_mem (J.mul_mem_left _ h) (J.mul_mem_left _ hp2J)
  have hevJ : ∀ q ∈ J, MvPolynomial.eval₂ φ u q = 0 := by
    intro q hq
    have hle : J ≤ RingHom.ker (MvPolynomial.eval₂Hom φ u) := by
      rw [hJ, Ideal.span_le]
      intro z hz
      rcases hz with rfl | rfl | rfl
      · exact RingHom.mem_ker.mpr he1
      · exact RingHom.mem_ker.mpr he2
      · exact RingHom.mem_ker.mpr he3
    exact RingHom.mem_ker.mp (hle hq)
  have hCFJ : MvPolynomial.C (a * c - w * s * t) ∈ J := by
    have e : (MvPolynomial.C (a * c - w * s * t) : MvPolynomial (Fin 2) A) =
        MvPolynomial.C a * (MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a *
          MvPolynomial.X 0 * MvPolynomial.X 1) -
        MvPolynomial.C w * (MvPolynomial.C t *
          (MvPolynomial.C s - MvPolynomial.C a * MvPolynomial.X 0) +
          MvPolynomial.C a * MvPolynomial.X 0 *
          (MvPolynomial.C t - MvPolynomial.C a * MvPolynomial.X 1)) := by
      simp only [map_sub, map_mul]; ring
    rw [e]
    exact J.sub_mem (J.mul_mem_left _ hp3J)
      (J.mul_mem_left _ (J.add_mem (J.mul_mem_left _ hp1J) (J.mul_mem_left _ hp2J)))
  refine ⟨θ, hsurj, hθC, hθX 0, hθX 1, (hZT _).mpr he1, (hZT _).mpr he2, (hZT _).mpr he3, ?_⟩
  intro p hp
  have hp0 := (hZT p).mp hp
  obtain ⟨N, r, h⟩ := hNF p
  have hφr : φ r = 0 := by
    have h' := hevJ _ h
    rw [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, hp0, mul_zero, MvPolynomial.eval₂_C,
      zero_sub, neg_eq_zero] at h'
    exact h'
  have hmk : algebraMap (A ⧸ I) (Localization.Away (G j)) (Ideal.Quotient.mk I r) = 0 := hφr
  obtain ⟨m, hm⟩ :=
    (IsLocalization.map_eq_zero_iff (Submonoid.powers (G j)) (Localization.Away (G j)) _).mp hmk
  obtain ⟨M, hM⟩ := (Submonoid.mem_powers_iff _ _).mp m.2
  have hIa : a ^ M * r ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow, ← hGj, hM]
    exact hm
  rw [hI] at hIa
  obtain ⟨k, hk⟩ := Ideal.mem_span_singleton'.mp hIa
  have hk' : (MvPolynomial.C k * MvPolynomial.C (a * c - w * s * t) : MvPolynomial (Fin 2) A) =
      MvPolynomial.C a ^ M * MvPolynomial.C r := by
    rw [← map_mul, hk, map_mul, map_pow]
  refine ⟨M + N, ?_⟩
  rw [← hJ]
  have e2 : MvPolynomial.C a ^ (M + N) * p =
      MvPolynomial.C a ^ M * (MvPolynomial.C a ^ N * p - MvPolynomial.C r) +
        MvPolynomial.C k * MvPolynomial.C (a * c - w * s * t) := by
    linear_combination (-1 : MvPolynomial (Fin 2) A) * hk'
  rw [e2]
  exact J.add_mem (J.mul_mem_left _ h) (J.mul_mem_left _ hCFJ)

theorem wcpa_dj_rtsxc_p2xy_shift_nzd : ∀ (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D] (k : ℕ) (r₀ : D) (r r' : Fin k → D), RingTheory.Sequence.IsWeaklyRegular D (r₀ :: List.ofFn r) → r₀ ∈ IsLocalRing.maximalIdeal D → (∀ i, r' i ∈ IsLocalRing.maximalIdeal D) → (∀ i, r' i - r i ∈ Ideal.span {r₀}) → Ideal.Quotient.mk (Ideal.span (Set.range r')) r₀ ∈ nonZeroDivisors (D ⧸ Ideal.span (Set.range r')) :=
by
  intro D _ _ _ k r₀ r r' H1 H2 H3 H4

  have s1 : RingTheory.Sequence.IsWeaklyRegular D (r₀ :: List.ofFn r') := by
    have h := (RingTheory.Sequence.isWeaklyRegular_append_iff' D [r₀] (List.ofFn r)).mp H1
    have heq : List.map (Ideal.Quotient.mk (Ideal.ofList [r₀])) (List.ofFn r)
        = List.map (Ideal.Quotient.mk (Ideal.ofList [r₀])) (List.ofFn r') := by
      rw [List.map_ofFn, List.map_ofFn]
      congr 1
      funext i
      simp only [Function.comp_apply]
      rw [Ideal.Quotient.mk_eq_mk_iff_sub_mem, Ideal.ofList_singleton]
      rw [← neg_sub]
      exact (Ideal.span {r₀}).neg_mem (H4 i)
    rw [heq] at h
    exact (RingTheory.Sequence.isWeaklyRegular_append_iff' D [r₀] (List.ofFn r')).mpr h

  have s2 : RingTheory.Sequence.IsWeaklyRegular D (List.ofFn r' ++ [r₀]) := by
    refine IsLocalRing.isWeaklyRegular_of_perm_of_subset_maximalIdeal s1
      (List.perm_append_singleton r₀ (List.ofFn r')).symm ?_
    intro x hx
    rcases List.mem_cons.mp hx with h | h
    · rw [h]; exact H2
    · obtain ⟨i, rfl⟩ := List.mem_ofFn.mp h
      exact H3 i

  have s3 : IsSMulRegular (D ⧸ Ideal.ofList (List.ofFn r') • (⊤ : Submodule D D)) r₀ := by
    have h := ((RingTheory.Sequence.isWeaklyRegular_append_iff D (List.ofFn r') [r₀]).mp s2).2
    exact (RingTheory.Sequence.isWeaklyRegular_singleton_iff _ r₀).mp h

  have s4 : Ideal.ofList (List.ofFn r') • (⊤ : Submodule D D) = Ideal.span (Set.range r') := by
    have e : Ideal.ofList (List.ofFn r') = Ideal.span (Set.range r') := by
      unfold Ideal.ofList
      congr 1
      ext x
      simp [List.mem_ofFn, Set.mem_range]
    rw [e, Ideal.smul_eq_mul, Ideal.mul_top]

  rw [mem_nonZeroDivisors_iff_right]
  intro z hz
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective z
  rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem] at hz
  rw [Ideal.Quotient.eq_zero_iff_mem, ← s4]
  rw [← Submodule.Quotient.mk_eq_zero]
  apply s3
  simp only [smul_zero]
  rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero, s4, smul_eq_mul, mul_comm]
  exact hz

theorem wcpa_dj_sfp_lift_gens : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (F : Type u) [CommRing F] [IsLocalRing F] (K : Ideal B) (e : (B ⧸ K) ≃+* F) (p : ℕ) (v : Fin p → B) (g : Fin p → F) (A'' : Finset (Fin p)) (q : ℕ) (w : Fin q → F), K ≤ IsLocalRing.maximalIdeal B → (∀ j, e (Ideal.Quotient.mk K (v j)) = g j) → (∀ j ∈ A'', v j ∈ IsLocalRing.maximalIdeal B) → (∀ k, w k ∈ IsLocalRing.maximalIdeal F) → IsLocalRing.maximalIdeal F = Ideal.span (g '' (A'' : Set (Fin p))) ⊔ Ideal.span (Set.range w) → ∃ u : Fin q → B, IsLocalRing.maximalIdeal B = K ⊔ Ideal.span (v '' (A'' : Set (Fin p))) ⊔ Ideal.span (Set.range u) :=
by
  intro B _ _ F _ _ K e p v g A'' q w _ hv _ _ hmF
  classical
  have hsurj : Function.Surjective ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) :=
    e.surjective.comp Ideal.Quotient.mk_surjective
  have hπv : ∀ j, ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) (v j) = g j := fun j => hv j
  have hker : RingHom.ker ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) = K := by
    rw [RingHom.ker_comp_of_injective _ e.injective, Ideal.mk_ker]
  refine ⟨fun k => Function.surjInv hsurj (w k), ?_⟩
  have hπu : ∀ k, ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K))
      (Function.surjInv hsurj (w k)) = w k := fun k => Function.surjInv_eq hsurj (w k)
  have hcomap : (IsLocalRing.maximalIdeal F).comap ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K))
      = IsLocalRing.maximalIdeal B := by
    haveI := Ideal.comap_isMaximal_of_surjective
      ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) hsurj (K := IsLocalRing.maximalIdeal F)
    exact IsLocalRing.eq_maximalIdeal this
  have hmap : (Ideal.span (v '' (A'' : Set (Fin p))) ⊔
      Ideal.span (Set.range (fun k => Function.surjInv hsurj (w k)))).map
      ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) = IsLocalRing.maximalIdeal F := by
    have e1 : (fun j => ((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) (v j)) ''
        (A'' : Set (Fin p)) = g '' (A'' : Set (Fin p)) :=
      Set.image_congr (fun j _ => hπv j)
    have e2 : (((e : B ⧸ K →+* F).comp (Ideal.Quotient.mk K)) ∘
        (fun k => Function.surjInv hsurj (w k))) = w := funext hπu
    rw [Ideal.map_sup, Ideal.map_span, Ideal.map_span, Set.image_image, ← Set.range_comp, hmF,
      e1, e2]
  rw [← hcomap, ← hmap, Ideal.comap_map_of_surjective' _ hsurj, hker]
  exact (sup_comm _ _).trans (sup_assoc _ _ _).symm

theorem wcpa_dj_sfp_regseq_dim : ∀ (C : Type u) [CommRing C] (k m : ℕ) (t : Fin m → C) (Q : Ideal (MvPolynomial (Fin k) C)) [Q.IsPrime] (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D] (e : D ≃+* Localization.AtPrime Q) (tD : Fin m → D), RingTheory.Sequence.IsWeaklyRegular C (List.ofFn t) → (∀ i, e (tD i) = algebraMap (MvPolynomial (Fin k) C) (Localization.AtPrime Q) (MvPolynomial.C (t i))) → (∀ i, tD i ∈ IsLocalRing.maximalIdeal D) → ringKrullDim (D ⧸ Ideal.span (Set.range tD)) + m = ringKrullDim D :=
by
  intro C _ k m t Q _ D _ _ _ e tD hreg he hmax
  classical
  have : Module.Flat (MvPolynomial (Fin k) C) (Localization.AtPrime Q) :=
    IsLocalization.flat (Localization.AtPrime Q) Q.primeCompl
  have : Module.Flat C (Localization.AtPrime Q) :=
    Module.Flat.trans C (MvPolynomial (Fin k) C) (Localization.AtPrime Q)
  have h3 := RingTheory.Sequence.IsWeaklyRegular.of_flat (S := Localization.AtPrime Q) hreg
  have hs2 : ∀ i, algebraMap C (Localization.AtPrime Q) (t i) = e (tD i) := by
    intro i
    rw [he i, IsScalarTower.algebraMap_apply C (MvPolynomial (Fin k) C) (Localization.AtPrime Q),
      MvPolynomial.algebraMap_eq]
  have hmap : List.map (algebraMap C (Localization.AtPrime Q)) (List.ofFn t) =
      List.map e (List.ofFn tD) := by
    rw [List.map_ofFn, List.map_ofFn]
    congr 1
    funext i
    exact hs2 i
  rw [hmap] at h3
  have h4 : RingTheory.Sequence.IsWeaklyRegular D (List.ofFn tD) := by
    refine (AddEquiv.isWeaklyRegular_congr (e := e.symm.toAddEquiv) ?_).mp h3
    rw [List.forall₂_map_left_iff]
    refine List.forall₂_same.mpr ?_
    intro c _ x
    simp [smul_eq_mul, map_mul]
  have h5 : RingTheory.Sequence.IsRegular D (List.ofFn tD) := by
    refine (IsLocalRing.isRegular_iff_isWeaklyRegular_of_subset_maximalIdeal ?_).mpr h4
    intro r hr
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hr
    exact hmax i
  have h6 := ringKrullDim_add_length_eq_ringKrullDim_of_isRegular (List.ofFn tD) h5
  have hspan : Ideal.ofList (List.ofFn tD) = Ideal.span (Set.range tD) := by
    unfold Ideal.ofList
    congr 1
    ext r
    simp [List.mem_ofFn]
  rw [hspan, List.length_ofFn] at h6
  exact h6

theorem wcpa_dj_sfp_fibre_cot_indep : ∀ (κ : Type u) [CommRing κ] (r : ℕ) (a : Fin (r + 1)) (Nb : Matrix (Fin (r + 1)) (Fin (r + 1)) κ) (Q : Ideal (MvPolynomial (Fin r) κ)) [Q.IsPrime] (A'' : Finset (Fin (r + 1))), IsUnit Nb.det → (∀ j ∈ A'', (∑ l, MvPolynomial.C (Nb j l) * Fin.insertNth (α := fun _ => MvPolynomial (Fin r) κ) a 1 MvPolynomial.X l) ∈ Q) → ∀ ν : Fin (r + 1) → Localization.AtPrime Q, (∑ j ∈ A'', ν j * algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q) (∑ l, MvPolynomial.C (Nb j l) * Fin.insertNth (α := fun _ => MvPolynomial (Fin r) κ) a 1 MvPolynomial.X l)) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ 2 → ∀ j ∈ A'', ν j ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) :=
by
  intro κ _ r a Nb Q hQ A'' hdet hw ν hν
  classical

  have hloc : ∀ g : Fin (r + 1) → MvPolynomial (Fin r) κ,
      (∀ μ : Fin (r + 1) → MvPolynomial (Fin r) κ,
        (∑ j ∈ A'', μ j * g j) ∈ Q ^ 2 → ∀ j ∈ A'', μ j ∈ Q) →
      ∀ ν : Fin (r + 1) → Localization.AtPrime Q,
      (∑ j ∈ A'', ν j * algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q) (g j)) ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ 2 →
      ∀ j ∈ A'', ν j ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
    intro g H ν hν
    obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finite Q.primeCompl ν
    simp only [IsLocalization.IsInteger, RingHom.mem_rangeS] at hb
    choose μ hμ using hb
    have hmax : IsLocalRing.maximalIdeal (Localization.AtPrime Q) ^ 2 =
        (Q ^ 2).map (algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q)) := by
      rw [Ideal.map_pow, IsLocalization.AtPrime.map_eq_maximalIdeal]
    have hT : algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q) (∑ j ∈ A'', μ j * g j) ∈
        (Q ^ 2).map (algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q)) := by
      rw [← hmax]
      have e : algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q) (∑ j ∈ A'', μ j * g j) =
          algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q) (b : MvPolynomial (Fin r) κ) *
            ∑ j ∈ A'', ν j * algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q) (g j) := by
        rw [map_sum, Finset.mul_sum]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [map_mul, hμ j, Algebra.smul_def, mul_assoc]
      rw [e]
      exact Ideal.mul_mem_left _ _ hν
    obtain ⟨⟨⟨z, hz⟩, s⟩, hzs⟩ :=
      (IsLocalization.mem_map_algebraMap_iff Q.primeCompl (Localization.AtPrime Q)).mp hT
    simp only at hzs
    rw [← map_mul] at hzs
    obtain ⟨c, hc⟩ := (IsLocalization.eq_iff_exists Q.primeCompl (Localization.AtPrime Q)).mp hzs
    have hμQ : ∀ j ∈ A'', μ j ∈ Q := by
      have h1 := H (fun j => (c : MvPolynomial (Fin r) κ) * s * μ j) (by
        have e : (∑ j ∈ A'', (c : MvPolynomial (Fin r) κ) * s * μ j * g j) =
            c * ((∑ j ∈ A'', μ j * g j) * s) := by
          rw [Finset.sum_mul, Finset.mul_sum]
          refine Finset.sum_congr rfl (fun j _ => ?_)
          ring
        show (∑ j ∈ A'', (c : MvPolynomial (Fin r) κ) * s * μ j * g j) ∈ Q ^ 2
        rw [e, hc]
        exact Ideal.mul_mem_left _ _ hz)
      intro j hj
      have h2 := h1 j hj
      rcases hQ.mem_or_mem h2 with h3 | h3
      · rcases hQ.mem_or_mem h3 with h4 | h4
        · exact absurd h4 (Ideal.mem_primeCompl_iff.mp c.2)
        · exact absurd h4 (Ideal.mem_primeCompl_iff.mp s.2)
      · exact h3
    intro j hj
    have h1 := (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q (μ j)).mpr
      (hμQ j hj)
    rw [hμ j, Algebra.smul_def] at h1
    have hu : IsUnit (algebraMap (MvPolynomial (Fin r) κ) (Localization.AtPrime Q)
        (b : MvPolynomial (Fin r) κ)) := IsLocalization.map_units _ b
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at h1 ⊢
    intro hνu
    exact h1 (hu.mul hνu)

  have s1 : ∀ (D : Derivation κ (MvPolynomial (Fin r) κ) (MvPolynomial (Fin r) κ))
      (p : MvPolynomial (Fin r) κ), p ∈ Q ^ 2 → D p ∈ Q := by
    intro D p hp
    rw [pow_two] at hp
    refine Submodule.mul_induction_on hp ?_ ?_
    · intro m hm n hn
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
      exact Q.add_mem (Q.mul_mem_right _ hm) (Q.mul_mem_right _ hn)
    · intro x y hx hy
      rw [map_add]
      exact Q.add_mem hx hy

  have s2 : ∀ (c : Fin (r + 1) → κ) (i : Fin r), MvPolynomial.pderiv i
      (∑ l, MvPolynomial.C (c l) * Fin.insertNth (α := fun _ => MvPolynomial (Fin r) κ) a 1
        MvPolynomial.X l) = MvPolynomial.C (c (a.succAbove i)) := by
    intro c i
    rw [Fin.sum_univ_succAbove _ a, Fin.insertNth_apply_same]
    simp only [Fin.insertNth_apply_succAbove, map_add, map_sum, MvPolynomial.pderiv_C_mul,
      mul_zero, MvPolynomial.pderiv_X, Pi.single_apply, mul_ite, mul_one]
    simp
  apply hloc _ ?_ ν hν
  intro μ hS
  set Y : Fin (r + 1) → MvPolynomial (Fin r) κ :=
    Fin.insertNth (α := fun _ => MvPolynomial (Fin r) κ) a 1 MvPolynomial.X with hY
  set μ' : Fin (r + 1) → MvPolynomial (Fin r) κ := fun j => if j ∈ A'' then μ j else 0 with hμ'
  have hext : ∀ f : Fin (r + 1) → MvPolynomial (Fin r) κ,
      ∑ j, μ' j * f j = ∑ j ∈ A'', μ j * f j := by
    intro f
    simp only [hμ', ite_mul, zero_mul]
    rw [Finset.sum_ite_mem, Finset.univ_inter]
  have hS1 : ∑ j, μ' j * ∑ l, MvPolynomial.C (Nb j l) * Y l ∈ Q := by
    rw [hext]
    exact Ideal.pow_le_self two_ne_zero hS
  have hR : ∀ i : Fin r, ∑ j, μ' j * MvPolynomial.C (Nb j (a.succAbove i)) ∈ Q := by
    intro i
    rw [hext]
    have h1 := s1 (MvPolynomial.pderiv i) _ hS
    rw [map_sum] at h1
    have h2 : ∀ j ∈ A'', MvPolynomial.pderiv i (μ j * ∑ l, MvPolynomial.C (Nb j l) * Y l) =
        μ j * MvPolynomial.C (Nb j (a.succAbove i)) +
          (∑ l, MvPolynomial.C (Nb j l) * Y l) * MvPolynomial.pderiv i (μ j) := by
      intro j _
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul, s2]
    rw [Finset.sum_congr rfl h2, Finset.sum_add_distrib] at h1
    have h3 : ∑ j ∈ A'', (∑ l, MvPolynomial.C (Nb j l) * Y l) * MvPolynomial.pderiv i (μ j) ∈ Q :=
      Q.sum_mem (fun j hj => Q.mul_mem_right _ (hw j hj))
    have h4 := Q.sub_mem h1 h3
    rwa [add_sub_cancel_right] at h4

  set M : Matrix (Fin (r + 1)) (Fin (r + 1)) (MvPolynomial (Fin r) κ) :=
    Nb.map MvPolynomial.C with hM
  have hMdet : IsUnit M.det := by
    have e : M.det = MvPolynomial.C Nb.det := by
      rw [RingHom.map_det]
      rfl
    rw [e]
    exact hdet.map _
  set cv := Matrix.vecMul μ' M with hcv
  have hcl : ∀ l, cv l = ∑ j, μ' j * MvPolynomial.C (Nb j l) := by
    intro l
    simp only [hcv, Matrix.vecMul, dotProduct, hM, Matrix.map_apply]
  have hSc : ∑ j, μ' j * ∑ l, MvPolynomial.C (Nb j l) * Y l = ∑ l, cv l * Y l := by
    simp only [hcl, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun l _ => Finset.sum_congr rfl (fun j _ => by ring))
  have hcsucc : ∀ i : Fin r, cv (a.succAbove i) ∈ Q := fun i => by
    rw [hcl]
    exact hR i
  have hca : cv a ∈ Q := by
    have h1 := hS1
    rw [hSc, Fin.sum_univ_succAbove _ a] at h1
    have h2 : ∑ i : Fin r, cv (a.succAbove i) * Y (a.succAbove i) ∈ Q :=
      Q.sum_mem (fun i _ => Q.mul_mem_right _ (hcsucc i))
    have h3 := Q.sub_mem h1 h2
    rw [add_sub_cancel_right, hY, Fin.insertNth_apply_same, mul_one] at h3
    exact h3
  have hcall : ∀ l, cv l ∈ Q := by
    intro l
    by_cases hl : l = a
    · rw [hl]
      exact hca
    · obtain ⟨z, rfl⟩ := Fin.exists_succAbove_eq hl
      exact hcsucc z
  have hinv : Matrix.vecMul cv M⁻¹ = μ' := by
    rw [hcv, Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hMdet, Matrix.vecMul_one]
  intro j hj
  have h1 : μ' j ∈ Q := by
    rw [← hinv]
    simp only [Matrix.vecMul, dotProduct]
    exact Q.sum_mem (fun l _ => Q.mul_mem_right _ (hcall l))
  simpa [hμ', hj] using h1

theorem wcpa_dj_sfp_cot_extend : ∀ (R : Type u) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (p : ℕ) (g : Fin p → R) (A : Finset (Fin p)), (∀ j ∈ A, g j ∈ IsLocalRing.maximalIdeal R) → (∀ ν : Fin p → R, ∑ j ∈ A, ν j * g j ∈ IsLocalRing.maximalIdeal R ^ 2 → ∀ j ∈ A, ν j ∈ IsLocalRing.maximalIdeal R) → ∃ (q : ℕ) (u : Fin q → R), A.card + q = Submodule.spanFinrank (IsLocalRing.maximalIdeal R) ∧ (∀ k, u k ∈ IsLocalRing.maximalIdeal R) ∧ IsLocalRing.maximalIdeal R = Ideal.span (g '' (A : Set (Fin p))) ⊔ Ideal.span (Set.range u) :=
by
  intro R _ _ _ p g A hg hν
  classical
  let e : A → IsLocalRing.maximalIdeal R := fun j => ⟨g j, hg j j.2⟩
  let f : A → IsLocalRing.CotangentSpace R := fun j => (IsLocalRing.maximalIdeal R).toCotangent (e j)

  have hli : LinearIndependent (IsLocalRing.ResidueField R) f := by
    rw [Fintype.linearIndependent_iff]
    intro c hc j
    choose ν0 hν0 using fun j : A => IsLocalRing.residue_surjective (c j)
    let ν : Fin p → R := fun i => if h : i ∈ A then ν0 ⟨i, h⟩ else 0
    have hνA : ∀ j : A, ν j = ν0 j := fun j => dif_pos j.2
    have hsum : ∑ j : A, c j • f j =
        (IsLocalRing.maximalIdeal R).toCotangent (∑ j : A, ν j • e j) := by
      rw [map_sum]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rw [map_smul, ← IsScalarTower.algebraMap_smul (IsLocalRing.ResidueField R) (ν j),
        IsLocalRing.ResidueField.algebraMap_eq, hνA j, hν0 j]
    rw [hsum, Ideal.toCotangent_eq_zero] at hc
    have hc' : ∑ j ∈ A, ν j * g j ∈ IsLocalRing.maximalIdeal R ^ 2 := by
      have h1 : ((∑ j : A, ν j • e j : IsLocalRing.maximalIdeal R) : R) = ∑ j ∈ A, ν j * g j := by
        rw [Submodule.coe_sum]
        simp only [Submodule.coe_smul, smul_eq_mul, e]
        exact Finset.sum_coe_sort A (fun j => ν j * g j)
      rw [← h1]; exact hc
    have h2 := hν ν hc' j j.2
    rw [hνA j, ← IsLocalRing.residue_eq_zero_iff, hν0 j] at h2
    exact h2

  let W : Submodule (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) :=
    Submodule.span (IsLocalRing.ResidueField R) (Set.range f)
  have hW : Module.finrank (IsLocalRing.ResidueField R) W = Fintype.card A :=
    finrank_span_eq_card hli
  obtain ⟨q, hqdef⟩ : ∃ q, Module.finrank (IsLocalRing.ResidueField R)
      (IsLocalRing.CotangentSpace R ⧸ W) = q := ⟨_, rfl⟩
  have hq : Fintype.card A + q =
      Module.finrank (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) := by
    rw [← hW, ← hqdef, add_comm]
    exact Submodule.finrank_quotient_add_finrank W
  let β := Module.finBasisOfFinrankEq (IsLocalRing.ResidueField R)
    (IsLocalRing.CotangentSpace R ⧸ W) hqdef
  choose b hb using fun k => Submodule.mkQ_surjective W (β k)
  have hspan : Submodule.span (IsLocalRing.ResidueField R) (Set.range f ∪ Set.range b) = ⊤ := by
    have hWT : W ≤ Submodule.span (IsLocalRing.ResidueField R) (Set.range f ∪ Set.range b) :=
      Submodule.span_mono Set.subset_union_left
    have hmap : Submodule.map W.mkQ
        (Submodule.span (IsLocalRing.ResidueField R) (Set.range f ∪ Set.range b)) = ⊤ := by
      rw [eq_top_iff, ← β.span_eq, Submodule.map_span]
      apply Submodule.span_mono
      rintro _ ⟨k, rfl⟩
      exact ⟨b k, Or.inr ⟨k, rfl⟩, hb k⟩
    have h3 := (Submodule.map_mkQ_eq_top W _).mp hmap
    rwa [sup_eq_right.mpr hWT] at h3

  choose ũ hũ using fun k => (IsLocalRing.maximalIdeal R).toCotangent_surjective (b k)
  refine ⟨q, fun k => (ũ k : R), ?_, fun k => (ũ k).2, ?_⟩
  · rw [IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace, ← hq, Fintype.card_coe]
  · have himg : (IsLocalRing.maximalIdeal R).toCotangent '' (Set.range e ∪ Set.range ũ) =
        Set.range f ∪ Set.range b := by
      rw [Set.image_union, ← Set.range_comp, ← Set.range_comp]
      congr 2
      funext k
      exact hũ k
    have hS : Submodule.span R (Set.range e ∪ Set.range ũ) = ⊤ := by
      rw [← IsLocalRing.CotangentSpace.span_image_eq_top_iff, himg]
      exact hspan
    have h4 := congrArg (Submodule.map (IsLocalRing.maximalIdeal R).subtype) hS
    rw [Submodule.map_span, Submodule.map_subtype_top] at h4
    have hval : ((IsLocalRing.maximalIdeal R).subtype '' (Set.range e ∪ Set.range ũ)) =
        g '' (A : Set (Fin p)) ∪ Set.range (fun k => (ũ k : R)) := by
      rw [Set.image_union, ← Set.range_comp, ← Set.range_comp, Set.image_eq_range]
      rfl
    rw [hval] at h4
    rw [← Ideal.span_union]
    exact h4.symm

theorem wcpa_dj_rtsxc_p2xy_fibre : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (N : ℕ) (t : Fin N → A), (N : WithBot ℕ∞) = ringKrullDim A → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A → ∀ (Q : Ideal (MvPolynomial (Fin 2) A)) [Q.IsPrime], Q.comap MvPolynomial.C = IsLocalRing.maximalIdeal A → ∃ (d : ℕ) (u : Fin d → Localization.AtPrime Q), IsLocalRing.maximalIdeal (Localization.AtPrime Q) = Ideal.span (Set.range fun i => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime Q) (MvPolynomial.C (t i))) ⊔ Ideal.span ((fun i => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime Q) (MvPolynomial.X i)) '' {i | MvPolynomial.X i ∈ Q}) ⊔ Ideal.span (Set.range u) ∧ ringKrullDim (Localization.AtPrime Q) = ((N + {i : Fin 2 | MvPolynomial.X i ∈ Q}.ncard + d : ℕ) : WithBot ℕ∞) :=
by
  intro A _ _ N t hN ht Q _ hQ
  classical

  have htm : ∀ i, t i ∈ IsLocalRing.maximalIdeal A := fun i => ht ▸ Ideal.subset_span ⟨i, rfl⟩
  have hCtQ : ∀ i, (MvPolynomial.C (t i) : MvPolynomial (Fin 2) A) ∈ Q := fun i => by
    have h : t i ∈ Q.comap MvPolynomial.C := hQ.symm ▸ htm i
    exact h
  have hmemt : ∀ i, algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime Q)
      (MvPolynomial.C (t i)) ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := fun i =>
    (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q _).mpr (hCtQ i)
  have hKle : Ideal.span (Set.range fun i => algebraMap (MvPolynomial (Fin 2) A)
      (Localization.AtPrime Q) (MvPolynomial.C (t i))) ≤
      IsLocalRing.maximalIdeal (Localization.AtPrime Q) :=
    Ideal.span_le.mpr (Set.range_subset_iff.mpr hmemt)

  let ψ : MvPolynomial (Fin 2) A →+* MvPolynomial (Fin 2) (IsLocalRing.ResidueField A) :=
    MvPolynomial.map (IsLocalRing.residue A)
  have hψs : Function.Surjective ψ :=
    MvPolynomial.map_surjective _ IsLocalRing.residue_surjective
  have hψX : ∀ i, ψ (MvPolynomial.X i) = MvPolynomial.X i := fun i => MvPolynomial.map_X _ _
  have hker : RingHom.ker ψ = Ideal.span (Set.range fun i => MvPolynomial.C (t i)) := by
    show RingHom.ker (MvPolynomial.map (IsLocalRing.residue A)) = _
    rw [MvPolynomial.ker_map, IsLocalRing.ker_residue, ← ht, Ideal.map_span, ← Set.range_comp]
    rfl
  have hkerQ : RingHom.ker ψ ≤ Q := by
    rw [hker, Ideal.span_le]
    rintro _ ⟨i, rfl⟩
    exact hCtQ i
  obtain ⟨q, hqdef⟩ : ∃ q, q = Q.map ψ := ⟨_, rfl⟩
  haveI hq : q.IsPrime := hqdef ▸ Ideal.map_isPrime_of_surjective hψs hkerQ
  have hqc : q.comap ψ = Q := by
    rw [hqdef, Ideal.comap_map_of_surjective' ψ hψs, sup_eq_left.mpr hkerQ]
  have hsub : (q.comap ψ).primeCompl = Q.primeCompl := by
    ext x
    simp only [Ideal.mem_primeCompl_iff, Ideal.mem_comap]
    rw [← Ideal.mem_comap, hqc]
  haveI : IsLocalization.AtPrime (Localization.AtPrime Q) (q.comap ψ) := by
    show IsLocalization (q.comap ψ).primeCompl (Localization.AtPrime Q)
    rw [hsub]
    infer_instance
  have hXiff : ∀ i, (MvPolynomial.X i : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ∈ q ↔
      (MvPolynomial.X i : MvPolynomial (Fin 2) A) ∈ Q := by
    intro i
    rw [← hψX i, ← Ideal.mem_comap, hqc]
  have hSq : {i : Fin 2 | (MvPolynomial.X i : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ∈ q} =
      {i : Fin 2 | (MvPolynomial.X i : MvPolynomial (Fin 2) A) ∈ Q} := Set.ext hXiff
  obtain ⟨Θ, hΘ⟩ := wcpa_dj_rtsxc_p1_present (MvPolynomial (Fin 2) A)
    (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ψ hψs
    (Ideal.span (Set.range fun i => MvPolynomial.C (t i))) hker.ge 1
    (fun p hp => ⟨0, by rw [pow_zero, one_mul, ← hker]; exact hp⟩) q (Localization.AtPrime Q)
    (by rw [map_one, map_one]; exact Submonoid.one_mem _)
  have hK : (Ideal.span (Set.range fun i => (MvPolynomial.C (t i) : MvPolynomial (Fin 2) A))).map
      (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime Q)) =
      Ideal.span (Set.range fun i => algebraMap (MvPolynomial (Fin 2) A)
        (Localization.AtPrime Q) (MvPolynomial.C (t i))) := by
    rw [Ideal.map_span, ← Set.range_comp]
    rfl
  let e := (Θ.trans (Ideal.quotEquivOfEq hK)).symm
  have he : ∀ i, e (Ideal.Quotient.mk _ (algebraMap (MvPolynomial (Fin 2) A)
      (Localization.AtPrime Q) (MvPolynomial.X i))) =
      algebraMap (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) (Localization.AtPrime q)
        (MvPolynomial.X i) := by
    intro i
    rw [RingEquiv.symm_apply_eq, RingEquiv.trans_apply, ← hψX i, hΘ, Ideal.quotEquivOfEq_mk]

  haveI : IsRegularLocalRing (Localization.AtPrime q) :=
    wcpa_dj_rss_poly_field_regular _ 2 q
  let G : Fin (2 + 1) → MvPolynomial (Fin 2) (IsLocalRing.ResidueField A) := fun j =>
    ∑ l, MvPolynomial.C ((1 : Matrix (Fin (2 + 1)) (Fin (2 + 1)) (IsLocalRing.ResidueField A)) j l) *
      Fin.insertNth (α := fun _ => MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) 0 1
        MvPolynomial.X l
  have hG : ∀ i : Fin 2, G i.succ = MvPolynomial.X i := by
    intro i
    show ∑ l, _ = _
    rw [Finset.sum_eq_single i.succ]
    · rw [Matrix.one_apply_eq, map_one, one_mul, Fin.insertNth_zero', Fin.cons_succ]
    · intro b _ hb
      rw [Matrix.one_apply_ne (Ne.symm hb), map_zero, zero_mul]
    · intro h
      exact absurd (Finset.mem_univ _) h
  let F₀ := Finset.univ.filter fun i : Fin 2 =>
    (MvPolynomial.X i : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ∈ q
  have hF₀ : (↑F₀ : Set (Fin 2)) =
      {i : Fin 2 | (MvPolynomial.X i : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ∈ q} := by
    ext i
    simp [F₀]
  let A'' := F₀.map (Fin.succEmb 2)
  have hA''mem : ∀ j ∈ A'', G j ∈ q := by
    intro j hj
    obtain ⟨i, hi, rfl⟩ := Finset.mem_map.mp hj
    show G i.succ ∈ q
    rw [hG]
    exact (Finset.mem_filter.mp hi).2
  have hind := wcpa_dj_sfp_fibre_cot_indep (IsLocalRing.ResidueField A) 2 0 1 q A''
    (by rw [Matrix.det_one]; exact isUnit_one) hA''mem
  obtain ⟨d, w, hcard, hwm, hmax⟩ := wcpa_dj_sfp_cot_extend (Localization.AtPrime q) (2 + 1)
    (fun j => algebraMap _ (Localization.AtPrime q) (G j)) A''
    (fun j hj => (IsLocalization.AtPrime.to_map_mem_maximal_iff _ q _).mpr (hA''mem j hj)) hind
  have himg : (fun j => algebraMap _ (Localization.AtPrime q) (G j)) '' (A'' : Set (Fin (2 + 1))) =
      (fun i => algebraMap (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))
        (Localization.AtPrime q) (MvPolynomial.X i)) ''
        {i : Fin 2 | (MvPolynomial.X i : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ∈ q} := by
    rw [Finset.coe_map, Set.image_image, hF₀]
    apply Set.image_congr
    intro i _
    show algebraMap _ _ (G i.succ) = _
    rw [hG]
  have hcardA : A''.card =
      {i : Fin 2 | (MvPolynomial.X i : MvPolynomial (Fin 2) (IsLocalRing.ResidueField A)) ∈ q}.ncard := by
    rw [Finset.card_map, ← Set.ncard_coe_finset, hF₀]

  let A' := Finset.univ.filter fun i : Fin 2 => (MvPolynomial.X i : MvPolynomial (Fin 2) A) ∈ Q
  have hA' : (↑A' : Set (Fin 2)) = {i : Fin 2 | (MvPolynomial.X i : MvPolynomial (Fin 2) A) ∈ Q} := by
    ext i
    simp [A']
  obtain ⟨u, hu⟩ := wcpa_dj_sfp_lift_gens (Localization.AtPrime Q) (Localization.AtPrime q) _ e 2
    (fun i => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime Q) (MvPolynomial.X i))
    (fun i => algebraMap (MvPolynomial (Fin 2) (IsLocalRing.ResidueField A))
      (Localization.AtPrime q) (MvPolynomial.X i)) A' d w hKle he
    (fun j hj => (IsLocalization.AtPrime.to_map_mem_maximal_iff _ Q _).mpr
      (Finset.mem_filter.mp hj).2) hwm
    (by rw [hA', ← hSq, ← himg]; exact hmax)
  rw [hA'] at hu
  refine ⟨d, u, hu, ?_⟩

  have hreg : RingTheory.Sequence.IsWeaklyRegular A (List.ofFn t) :=
    wcpa_dj_rtsxc_p2xy_param_seq A N t hN ht N id Function.injective_id
  have hdimD := wcpa_dj_sfp_regseq_dim A 2 N t Q (Localization.AtPrime Q) (RingEquiv.refl _)
    (fun i => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime Q) (MvPolynomial.C (t i)))
    hreg (fun i => rfl) hmemt
  rw [← hdimD, ringKrullDim_eq_of_ringEquiv e,
    ← IsRegularLocalRing.spanFinrank_maximalIdeal (R := Localization.AtPrime q), ← hcard, hcardA,
    hSq, ← Nat.cast_add]
  congr 1
  omega

theorem wcpa_dj_rtsxc_p2xy_pt : ∀ (D : Type u) [CommRing D] [IsLocalRing D] [IsNoetherianRing D] (n : ℕ) (σ : Fin n → D) (a c w : D) (X : Fin 2 → D) (l l' : Fin n), l ≠ l' → ∀ (M : ℕ) (u : Fin M → D) (T : Set D) (S : Set (Fin 2)), T = {a, c} ∪ Set.range σ → (∀ i, i ∈ S ↔ X i ∈ IsLocalRing.maximalIdeal D) → IsLocalRing.maximalIdeal D = Ideal.span T ⊔ Ideal.span (X '' S) ⊔ Ideal.span (Set.range u) → ringKrullDim D = ((n + 2 + S.ncard + M : ℕ) : WithBot ℕ∞) → ∀ (E : Type u) [CommRing E] [IsLocalRing E] (π : D →+* E), Function.Surjective π → RingHom.ker π = Ideal.span {σ l - a * X 0, σ l' - a * X 1, c - w * a * X 0 * X 1} → wcpaDjRtsxcPt E (fun m => π (σ m)) (π a) {l, l'} :=
by
  classical
  intro D _ _ _ n σ a c w X l l' hll' M u T S hT hS hmax hdim E _ _ π hπ hker

  have hkmem : ∀ z ∈ ({σ l - a * X 0, σ l' - a * X 1, c - w * a * X 0 * X 1} : Set D),
      π z = 0 := by
    intro z hz
    have h : z ∈ RingHom.ker π := by rw [hker]; exact Ideal.subset_span hz
    exact h
  have r1 : π (σ l) = π a * π (X 0) := by
    have h := hkmem _ (Set.mem_insert _ _)
    rw [map_sub, map_mul, sub_eq_zero] at h; exact h
  have r2 : π (σ l') = π a * π (X 1) := by
    have h := hkmem _ (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
    rw [map_sub, map_mul, sub_eq_zero] at h; exact h
  have r3 : π c = π w * π a * π (X 0) * π (X 1) := by
    have h := hkmem _ (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))
    rw [map_sub, map_mul, map_mul, map_mul, sub_eq_zero] at h; exact h
  have hn2 : 2 ≤ n := by
    by_contra h
    apply hll'
    have h1 := l.isLt
    have h2 := l'.isLt
    ext; omega

  obtain ⟨f, hf0, hf1, hf2, hf3⟩ : ∃ f : Option (↥(({l, l'} : Set (Fin n))ᶜ) ⊕ (↥S ⊕ Fin M)) → E,
      f none = π a ∧ (∀ o, f (some (Sum.inl o)) = π (σ o.1)) ∧
      (∀ i, f (some (Sum.inr (Sum.inl i))) = π (X i.1)) ∧
      (∀ k, f (some (Sum.inr (Sum.inr k))) = π (u k)) :=
    ⟨fun x => Option.elim x (π a) (Sum.elim (fun o => π (σ o.1))
      (Sum.elim (fun i => π (X i.1)) (fun k => π (u k)))), rfl, fun _ => rfl, fun _ => rfl,
      fun _ => rfl⟩
  have hcardOc : Nat.card ↥(({l, l'} : Set (Fin n))ᶜ) = n - 2 := by
    rw [Nat.card_coe_set_eq, Set.ncard_compl, Set.ncard_pair hll', Nat.card_fin]
  obtain ⟨N₀, hN₀⟩ : ∃ N₀ : ℕ, N₀ = n - 2 + S.ncard + M + 1 := ⟨_, rfl⟩
  have hcard : Nat.card (Option (↥(({l, l'} : Set (Fin n))ᶜ) ⊕ (↥S ⊕ Fin M))) = N₀ := by
    rw [Finite.card_option, Nat.card_sum, Nat.card_sum, hcardOc, Nat.card_coe_set_eq,
      Nat.card_fin, hN₀]
    omega

  have hmE : Ideal.map π (IsLocalRing.maximalIdeal D) = IsLocalRing.maximalIdeal E :=
    IsLocalRing.map_maximalIdeal_of_surjective π hπ
  have hTm : ∀ z ∈ T, z ∈ IsLocalRing.maximalIdeal D := fun z hz => by
    rw [hmax]; exact Ideal.mem_sup_left (Ideal.mem_sup_left (Ideal.subset_span hz))
  have hum : ∀ k, u k ∈ IsLocalRing.maximalIdeal D := fun k => by
    rw [hmax]; exact Ideal.mem_sup_right (Ideal.subset_span ⟨k, rfl⟩)
  have haT : a ∈ T := by rw [hT]; exact Or.inl (Set.mem_insert _ _)
  have hσT : ∀ m, σ m ∈ T := fun m => by rw [hT]; exact Or.inr ⟨m, rfl⟩
  have hspan : Ideal.span (Set.range f) = IsLocalRing.maximalIdeal E := by
    apply le_antisymm
    · rw [Ideal.span_le, ← hmE]
      rintro _ ⟨o, rfl⟩
      rcases o with _ | (o | (i | k))
      · rw [hf0]; exact Ideal.mem_map_of_mem π (hTm a haT)
      · rw [hf1]; exact Ideal.mem_map_of_mem π (hTm _ (hσT o.1))
      · rw [hf2]; exact Ideal.mem_map_of_mem π ((hS i.1).mp i.2)
      · rw [hf3]; exact Ideal.mem_map_of_mem π (hum k)
    · rw [← hmE, Ideal.map_le_iff_le_comap, hmax]
      have hgen : ∀ o, f o ∈ Ideal.span (Set.range f) := fun o => Ideal.subset_span ⟨o, rfl⟩
      have hA : π a ∈ Ideal.span (Set.range f) := hf0 ▸ hgen none
      refine sup_le (sup_le ?_ ?_) ?_
      · rw [Ideal.span_le]
        intro z hz
        rw [hT] at hz
        simp only [Set.mem_union, Set.mem_insert_iff, Set.mem_singleton_iff, Set.mem_range] at hz
        show π z ∈ Ideal.span (Set.range f)
        rcases hz with (hz | hz) | ⟨m, hz⟩
        · rw [hz]; exact hA
        · rw [hz, r3]
          have e : π w * π a * π (X 0) * π (X 1) = (π w * π (X 0) * π (X 1)) * π a := by ring
          rw [e]; exact Ideal.mul_mem_left _ _ hA
        · rw [← hz]
          by_cases hm : m ∈ ({l, l'} : Set (Fin n))ᶜ
          · have h := hgen (some (Sum.inl ⟨m, hm⟩))
            rw [hf1] at h; exact h
          · simp only [Set.mem_compl_iff, Set.mem_insert_iff, Set.mem_singleton_iff,
              not_not] at hm
            rcases hm with hm | hm
            · rw [hm, r1]; exact Ideal.mul_mem_right _ _ hA
            · rw [hm, r2]; exact Ideal.mul_mem_right _ _ hA
      · rw [Ideal.span_le]
        rintro _ ⟨i, hi, rfl⟩
        have h := hgen (some (Sum.inr (Sum.inl ⟨i, hi⟩)))
        rw [hf2] at h; exact h
      · rw [Ideal.span_le]
        rintro _ ⟨k, rfl⟩
        have h := hgen (some (Sum.inr (Sum.inr k)))
        rw [hf3] at h; exact h

  haveI : IsNoetherianRing E := isNoetherianRing_of_surjective D E π hπ
  have hmEne : IsLocalRing.maximalIdeal E ≠ ⊤ := (IsLocalRing.maximalIdeal.isMaximal E).ne_top
  have hr : (IsLocalRing.maximalIdeal E).spanFinrank ≤ N₀ := by
    rw [← hspan]
    refine (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range f)).trans ?_
    rw [← hcard, ← Set.image_univ]
    exact (Set.ncard_image_le Set.finite_univ).trans (by rw [Set.ncard_univ])
  have hht : (IsLocalRing.maximalIdeal E).height ≤ (N₀ : ℕ∞) :=
    (Ideal.height_le_spanFinrank _ hmEne).trans (by exact_mod_cast hr)
  obtain ⟨m₀, hm₀⟩ :=
    ENat.ne_top_iff_exists.mp (ne_top_of_le_ne_top (ENat.natCast_ne_top N₀) hht)
  have hdimE : ringKrullDim E = ((m₀ : ℕ∞) : WithBot ℕ∞) := by
    rw [← IsLocalRing.maximalIdeal_height_eq_ringKrullDim, ← hm₀]
  have hmN : m₀ ≤ N₀ := by rw [← hm₀] at hht; exact_mod_cast hht
  obtain ⟨s₃, hs₃⟩ : ∃ s₃ : Finset D, s₃ = {σ l - a * X 0, σ l' - a * X 1, c - w * a * X 0 * X 1} :=
    ⟨_, rfl⟩
  have hs₃coe : (↑s₃ : Set D) = {σ l - a * X 0, σ l' - a * X 1, c - w * a * X 0 * X 1} := by
    rw [hs₃]; simp only [Finset.coe_insert, Finset.coe_singleton]
  have hs₃card : s₃.card ≤ 3 := by rw [hs₃]; exact Finset.card_le_three
  have hs₃jac : (↑s₃ : Set D) ⊆ ↑(Ring.jacobson D) := by
    rw [IsLocalRing.ringJacobson_eq_maximalIdeal, hs₃coe]
    intro z hz
    by_contra hzm
    have hu : IsUnit (π z) := (IsLocalRing.notMem_maximalIdeal.mp hzm).map π
    rw [hkmem z hz] at hu
    exact not_isUnit_zero hu
  have hK := ringKrullDim_le_ringKrullDim_quotient_add_card s₃ hs₃jac
  rw [hs₃coe, ← hker, ringKrullDim_eq_of_ringEquiv (RingHom.quotientKerEquivOfSurjective hπ),
    hdimE, hdim] at hK
  have hK' : n + 2 + S.ncard + M ≤ m₀ + s₃.card := by
    have h2 : (((n + 2 + S.ncard + M : ℕ) : ℕ∞) : WithBot ℕ∞) ≤
        (((m₀ + s₃.card : ℕ) : ℕ∞) : WithBot ℕ∞) := by
      rw [Nat.cast_add (R := ℕ∞), WithBot.coe_add]; exact hK
    exact_mod_cast WithBot.coe_le_coe.mp h2
  have hmeq : m₀ = N₀ := by omega
  have hP1 : (N₀ : WithBot ℕ∞) = ringKrullDim E := by rw [hdimE, hmeq]; rfl

  obtain ⟨eqv, -⟩ : ∃ eqv : Option (↥(({l, l'} : Set (Fin n))ᶜ) ⊕ (↥S ⊕ Fin M)) ≃ Fin N₀, True :=
    ⟨(Finite.equivFin _).trans (finCongr hcard), trivial⟩

  obtain ⟨kk, hkk⟩ : ∃ kk : Fin n → Finset (Option (↥(({l, l'} : Set (Fin n))ᶜ) ⊕ (↥S ⊕ Fin M))),
      ∀ m, kk m = if hm : m ∈ ({l, l'} : Set (Fin n))ᶜ then {some (Sum.inl ⟨m, hm⟩)}
        else if m = l then
          (if h0 : (0 : Fin 2) ∈ S then {some (Sum.inr (Sum.inl ⟨0, h0⟩))} else ∅)
        else (if h1 : (1 : Fin 2) ∈ S then {some (Sum.inr (Sum.inl ⟨1, h1⟩))} else ∅) :=
    ⟨_, fun _ => rfl⟩
  obtain ⟨own, hown1, hown2⟩ : ∃ own : Option (↥(({l, l'} : Set (Fin n))ᶜ) ⊕ (↥S ⊕ Fin M)) → Fin n,
      (∀ o, own (some (Sum.inl o)) = o.1) ∧
      (∀ i : ↥S, own (some (Sum.inr (Sum.inl i))) = if i.1 = 0 then l else l') :=
    ⟨fun x => Option.elim x l (Sum.elim (fun o => o.1)
      (Sum.elim (fun i => if i.1 = 0 then l else l') (fun _ => l))), fun _ => rfl, fun _ => rfl⟩
  have hkcard : ∀ m, (kk m).card ≤ 1 := by
    intro m; rw [hkk]; split_ifs <;> simp
  have hknone : ∀ m, none ∉ kk m := by
    intro m; rw [hkk]; split_ifs <;> simp
  have hkown : ∀ m x, x ∈ kk m → own x = m := by
    intro m x hx
    rw [hkk] at hx
    by_cases hm : m ∈ ({l, l'} : Set (Fin n))ᶜ
    · rw [dif_pos hm, Finset.mem_singleton] at hx; rw [hx, hown1]
    · rw [dif_neg hm] at hx
      have hm' : m = l ∨ m = l' := by
        simpa only [Set.mem_compl_iff, Set.mem_insert_iff, Set.mem_singleton_iff,
          not_not] using hm
      by_cases hml : m = l
      · rw [if_pos hml] at hx
        by_cases h0 : (0 : Fin 2) ∈ S
        · rw [dif_pos h0, Finset.mem_singleton] at hx
          rw [hx, hown2]; simp [hml]
        · rw [dif_neg h0] at hx; simp at hx
      · rw [if_neg hml] at hx
        by_cases h1 : (1 : Fin 2) ∈ S
        · rw [dif_pos h1, Finset.mem_singleton] at hx
          rw [hx, hown2]
          have h10 : ((⟨1, h1⟩ : ↥S) : Fin 2) ≠ 0 := by
            show (1 : Fin 2) ≠ 0; exact one_ne_zero
          rw [if_neg h10]; exact (hm'.resolve_left hml).symm
        · rw [dif_neg h1] at hx; simp at hx
  have hkdisj : ∀ m m', m ≠ m' → Disjoint (kk m) (kk m') := by
    intro m m' hmm
    rw [Finset.disjoint_left]
    intro x hx hx'
    exact hmm ((hkown m x hx).symm.trans (hkown m' x hx'))
  have hunit : ∀ i, i ∉ S →
      IsUnit (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (π (X i))) := by
    intro i hi
    exact ((IsLocalRing.notMem_maximalIdeal.mp (fun h => hi ((hS i).mpr h))).map π).map _
  refine ⟨N₀, fun j => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)
      (f (eqv.symm j)), fun m => (kk m).map eqv.toEmbedding, eqv none, hP1, ?_, ?_, ?_, ?_, ?_, ?_⟩
  ·
    have hrange : Set.range (fun j => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)
        (f (eqv.symm j))) =
        (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)) '' Set.range f := by
      ext z
      simp only [Set.mem_range, Set.mem_image]
      constructor
      · rintro ⟨j, rfl⟩; exact ⟨_, ⟨_, rfl⟩, rfl⟩
      · rintro ⟨_, ⟨o, rfl⟩, rfl⟩; exact ⟨eqv o, by simp⟩
    rw [hrange, ← Ideal.map_span, hspan]
  ·
    simp only [Equiv.symm_apply_apply, hf0]
    exact Associated.refl _
  ·
    intro m
    refine ⟨by rw [Finset.card_map]; exact hkcard m, ?_⟩
    rw [Finset.mem_map_equiv, Equiv.symm_apply_apply]
    exact hknone m
  ·
    intro m m' hmm
    rw [Finset.disjoint_map]
    exact hkdisj m m' hmm
  ·
    intro m hm
    dsimp only
    have hm' : m ∈ ({l, l'} : Set (Fin n))ᶜ := by
      simp only [Finset.mem_insert, Finset.mem_singleton] at hm
      simpa only [Set.mem_compl_iff, Set.mem_insert_iff, Set.mem_singleton_iff] using hm
    rw [hkk, dif_pos hm', Finset.map_singleton, Finset.prod_singleton]
    simp only [Equiv.coe_toEmbedding, Equiv.symm_apply_apply, hf1]
    exact Associated.refl _
  ·
    intro m hm
    dsimp only
    rw [Finset.mem_insert, Finset.mem_singleton] at hm
    rcases hm with hm | hm
    · have hlOc : m ∉ ({l, l'} : Set (Fin n))ᶜ := by
        rw [hm]; simp
      rw [hkk, dif_neg hlOc, if_pos hm]
      by_cases h0 : (0 : Fin 2) ∈ S
      · rw [dif_pos h0, Finset.map_singleton, Finset.prod_singleton]
        simp only [Equiv.coe_toEmbedding, Equiv.symm_apply_apply, hf2]
        rw [hm, r1, map_mul]
      · rw [dif_neg h0, Finset.map_empty, Finset.prod_empty, mul_one]
        show Associated (algebraMap E _ (π (σ m))) _
        rw [hm, r1, map_mul]
        exact associated_mul_unit_left _ _ (hunit 0 h0)
    · have hlOc : m ∉ ({l, l'} : Set (Fin n))ᶜ := by
        rw [hm]; simp
      have hml : m ≠ l := by rw [hm]; exact fun h => hll' h.symm
      rw [hkk, dif_neg hlOc, if_neg hml]
      by_cases h1 : (1 : Fin 2) ∈ S
      · rw [dif_pos h1, Finset.map_singleton, Finset.prod_singleton]
        simp only [Equiv.coe_toEmbedding, Equiv.symm_apply_apply, hf2]
        rw [hm, r2, map_mul]
      · rw [dif_neg h1, Finset.map_empty, Finset.prod_empty, mul_one]
        show Associated (algebraMap E _ (π (σ m))) _
        rw [hm, r2, map_mul]
        exact associated_mul_unit_left _ _ (hunit 1 h1)

theorem wcpa_dj_rtsxc_p2_xy_chart (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l l' : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (hb : b l = 1) (hb' : b l' = 1)
    (j : Fin (3 + 1)) (hj : (j : ℕ) < 2)
    (𝔔 : Ideal (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j))
    [𝔔.IsPrime]
    (h𝔔 : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) c ∈ 𝔔 ↔
        ¬ IsUnit c) :
    wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
      (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j))
      {l, l'} :=
by
  classical
  obtain ⟨hnx, hny, -⟩ := wcpa_dj_rtsxc_model_nzd A n x y v σ b hv hdim hmax
  have hxm : x ∈ IsLocalRing.maximalIdeal A := by
    rw [← hmax]; exact Ideal.subset_span (Set.mem_union_left _ (Set.mem_insert x _))
  have hσm : ∀ m, σ m ∈ IsLocalRing.maximalIdeal A := fun m => by
    rw [← hmax]; exact Ideal.subset_span (Set.mem_union_right _ (Set.mem_range_self m))
  have hprod : ∏ m, σ m ^ b m =
      σ l * σ l' * ∏ m ∈ (Finset.univ.erase l).erase l', σ m ^ b m := by
    rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ l),
      ← Finset.mul_prod_erase _ _ (Finset.mem_erase.mpr ⟨hll'.symm, Finset.mem_univ l'⟩)]
    simp only [hb, hb', pow_one]
    ring
  obtain ⟨w, hw⟩ : ∃ w : A, w = v * ∏ m ∈ (Finset.univ.erase l).erase l', σ m ^ b m :=
    ⟨_, rfl⟩
  have hIm : Ideal.span {x * y - v * ∏ m, σ m ^ b m} ≤ IsLocalRing.maximalIdeal A := by
    rw [Ideal.span_le, Set.singleton_subset_iff]
    exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hxm)
      (Ideal.mul_mem_left _ _ (by
        rw [hprod]; exact Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ (hσm l))))
  have hunitR : ∀ r : A, IsUnit (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) r) ↔
      r ∉ IsLocalRing.maximalIdeal A := by
    intro r
    constructor
    · intro hu hr
      obtain ⟨s, hs⟩ := hu.exists_right_inv
      obtain ⟨s', rfl⟩ := Ideal.Quotient.mk_surjective s
      rw [← map_mul, ← map_one (Ideal.Quotient.mk _), Ideal.Quotient.eq] at hs
      have h1 := hIm hs
      have h2 : r * s' ∈ IsLocalRing.maximalIdeal A := Ideal.mul_mem_right _ _ hr
      have h3 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
        have := Ideal.sub_mem _ h2 h1
        rwa [sub_sub_cancel] at this
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h3)
    · intro hr
      exact (IsLocalRing.notMem_maximalIdeal.mp hr).map _
  obtain ⟨t₀, ht0⟩ : ∃ t₀ : Fin (n + 2) → A, t₀ = Fin.cons x (Fin.cons y σ) := ⟨_, rfl⟩
  have hj01 : j = 0 ∨ j = 1 := by
    have key : ∀ j : Fin (3 + 1), (j : ℕ) < 2 → j = 0 ∨ j = 1 := by decide
    exact key j hj
  obtain ⟨a, c, ia, ic, hta, htc, hiaic, hia2, hic2, hGj, hcov, hxy, hsetac, hna⟩ :
      ∃ (a c : A) (ia ic : Fin (n + 2)), t₀ ia = a ∧ t₀ ic = c ∧ (ia : ℕ) ≠ ic ∧
        (ia : ℕ) < 2 ∧ (ic : ℕ) < 2 ∧
        wcpaDjP2Gen A x y v σ b l l' j =
          Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a ∧
        (∀ k, wcpaDjP2Gen A x y v σ b l l' k =
            Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a ∨
          wcpaDjP2Gen A x y v σ b l l' k =
            Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) c ∨
          wcpaDjP2Gen A x y v σ b l l' k =
            Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l) ∨
          wcpaDjP2Gen A x y v σ b l l' k =
            Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l')) ∧
        x * y = a * c ∧ ({x, y} ∪ Set.range σ : Set A) = {a, c} ∪ Set.range σ ∧
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a ∈
          nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b m}) := by
    rcases hj01 with rfl | rfl
    · refine ⟨x, y, ⟨0, by omega⟩, ⟨1, by omega⟩, by rw [ht0]; rfl, by rw [ht0]; rfl,
        by simp, by simp, by simp, rfl, ?_, rfl, rfl, hnx⟩
      intro k
      fin_cases k
      exacts [Or.inl rfl, Or.inr (Or.inl rfl), Or.inr (Or.inr (Or.inl rfl)),
        Or.inr (Or.inr (Or.inr rfl))]
    · refine ⟨y, x, ⟨1, by omega⟩, ⟨0, by omega⟩, by rw [ht0]; rfl, by rw [ht0]; rfl,
        by simp, by simp, by simp, rfl, ?_, mul_comm x y, ?_, hny⟩
      · intro k
        fin_cases k
        exacts [Or.inr (Or.inl rfl), Or.inl rfl, Or.inr (Or.inr (Or.inl rfl)),
          Or.inr (Or.inr (Or.inr rfl))]
      · rw [Set.insert_union, Set.singleton_union, Set.insert_union, Set.singleton_union,
          Set.insert_comm]
  have ht0range : Set.range t₀ = {a, c} ∪ Set.range σ := by
    rw [← hsetac, ht0, Fin.range_cons, Fin.range_cons, Set.insert_union, Set.singleton_union]
  have ht0span : Ideal.span (Set.range t₀) = IsLocalRing.maximalIdeal A := by
    rw [ht0range, ← hsetac]; exact hmax
  have ht0m : ∀ i, t₀ i ∈ IsLocalRing.maximalIdeal A := fun i => by
    rw [← ht0span]; exact Ideal.subset_span ⟨i, rfl⟩
  have ham : a ∈ IsLocalRing.maximalIdeal A := hta ▸ ht0m ia
  have hFeq : x * y - v * ∏ m, σ m ^ b m = a * c - w * σ l * σ l' := by
    rw [hw, hprod, hxy]; ring

  obtain ⟨θ, hθs, hθC, -, -, hp1, hp2, hp3, hsat⟩ :=
    wcpa_dj_rtsxc_p2xy_present A _ a c (σ l) (σ l') w (wcpaDjP2Gen A x y v σ b l l') j 2 3
      (by rw [hFeq]) hGj rfl rfl hcov hna

  have hQ : (𝔔.comap θ).comap MvPolynomial.C = IsLocalRing.maximalIdeal A := by
    ext r
    show θ (MvPolynomial.C r) ∈ 𝔔 ↔ r ∈ IsLocalRing.maximalIdeal A
    rw [hθC]
    exact (h𝔔 _).trans (by rw [hunitR, not_not])
  have hCQ : ∀ r ∈ IsLocalRing.maximalIdeal A, MvPolynomial.C r ∈ 𝔔.comap θ := by
    intro r hr
    have h : r ∈ (𝔔.comap θ).comap MvPolynomial.C := by rw [hQ]; exact hr
    exact h
  haveI : IsNoetherianRing (Localization.AtPrime (𝔔.comap θ)) :=
    IsLocalization.isNoetherianRing (𝔔.comap θ).primeCompl _ inferInstance
  have hmemD : ∀ p : MvPolynomial (Fin 2) A, p ∈ 𝔔.comap θ →
      algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) p ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime (𝔔.comap θ)) := fun p hp =>
    (IsLocalization.AtPrime.to_map_mem_maximal_iff _ (𝔔.comap θ) p).mpr hp
  have hp1Q : MvPolynomial.C (σ l) - MvPolynomial.C a * MvPolynomial.X 0 ∈ 𝔔.comap θ := by
    show θ _ ∈ 𝔔
    rw [hp1]; exact 𝔔.zero_mem
  have hp2Q : MvPolynomial.C (σ l') - MvPolynomial.C a * MvPolynomial.X 1 ∈ 𝔔.comap θ := by
    show θ _ ∈ 𝔔
    rw [hp2]; exact 𝔔.zero_mem
  have hp3Q : MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
      MvPolynomial.X 1 ∈ 𝔔.comap θ := by
    show θ _ ∈ 𝔔
    rw [hp3]; exact 𝔔.zero_mem

  have hll'v : (l : ℕ) ≠ l' := fun h => hll' (Fin.ext h)
  have hinj : Function.Injective
      (![ia, l.succ.succ, l'.succ.succ, ic] : Fin 4 → Fin (n + 2)) := by
    intro p q hpq
    have hv := congrArg Fin.val hpq
    fin_cases p <;> fin_cases q <;> simp at hv ⊢ <;>
      first | omega | exact hll' hv | exact hll' hv.symm | exact hiaic hv | exact hiaic hv.symm
  have htl : t₀ l.succ.succ = σ l := by rw [ht0]; simp
  have htl' : t₀ l'.succ.succ = σ l' := by rw [ht0]; simp
  have hregA := wcpa_dj_rtsxc_p2xy_param_seq A (n + 2) t₀ hdim ht0span 4 _ hinj
  have hl : List.ofFn (t₀ ∘ (![ia, l.succ.succ, l'.succ.succ, ic] : Fin 4 → Fin (n + 2))) =
      [a, σ l, σ l', c] := by
    simp [List.ofFn_succ, hta, htc, htl, htl']
  rw [hl] at hregA
  have hregD := (hregA.of_flat (S := MvPolynomial (Fin 2) A)).of_flat
    (S := Localization.AtPrime (𝔔.comap θ))

  have hnzd := wcpa_dj_rtsxc_p2xy_shift_nzd (Localization.AtPrime (𝔔.comap θ)) 3
    (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C a))
    ![algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C (σ l)),
      algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C (σ l')),
      algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C c)]
    ![algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C (σ l) - MvPolynomial.C a * MvPolynomial.X 0),
      algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C (σ l') - MvPolynomial.C a * MvPolynomial.X 1),
      algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
          MvPolynomial.X 1)]
    (by simpa [List.ofFn_succ, MvPolynomial.algebraMap_eq] using hregD)
    (hmemD _ (hCQ a ham))
    (by
      intro i
      fin_cases i
      · exact hmemD _ hp1Q
      · exact hmemD _ hp2Q
      · exact hmemD _ hp3Q)
    (by
      intro i
      fin_cases i
      · refine Ideal.mem_span_singleton'.mpr ⟨-algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.X 0), ?_⟩
        show _ = algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
            (MvPolynomial.C (σ l) - MvPolynomial.C a * MvPolynomial.X 0) -
          algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
            (MvPolynomial.C (σ l))
        simp only [map_sub, map_mul]; ring
      · refine Ideal.mem_span_singleton'.mpr ⟨-algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.X 1), ?_⟩
        show _ = algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
            (MvPolynomial.C (σ l') - MvPolynomial.C a * MvPolynomial.X 1) -
          algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
            (MvPolynomial.C (σ l'))
        simp only [map_sub, map_mul]; ring
      · refine Ideal.mem_span_singleton'.mpr ⟨-(algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C w) *
          algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.X 0) *
          algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.X 1)), ?_⟩
        show _ = algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
            (MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
              MvPolynomial.X 1) -
          algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
            (MvPolynomial.C c)
        simp only [map_sub, map_mul]; ring)
  have hJD : (Ideal.span {MvPolynomial.C (σ l) - MvPolynomial.C a * MvPolynomial.X 0,
        MvPolynomial.C (σ l') - MvPolynomial.C a * MvPolynomial.X 1,
        MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
          MvPolynomial.X 1}).map
        (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))) =
      Ideal.span (Set.range ![algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C (σ l) - MvPolynomial.C a * MvPolynomial.X 0),
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C (σ l') - MvPolynomial.C a * MvPolynomial.X 1),
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
            MvPolynomial.X 1)]) := by
    rw [Ideal.map_span, Set.image_insert_eq, Set.image_insert_eq, Set.image_singleton,
      Matrix.range_cons, Matrix.range_cons, Matrix.range_cons_empty, Set.singleton_union,
      Set.singleton_union]
  have hJle : Ideal.span {MvPolynomial.C (σ l) - MvPolynomial.C a * MvPolynomial.X 0,
        MvPolynomial.C (σ l') - MvPolynomial.C a * MvPolynomial.X 1,
        MvPolynomial.C c - MvPolynomial.C w * MvPolynomial.C a * MvPolynomial.X 0 *
          MvPolynomial.X 1} ≤ RingHom.ker θ := by
    rw [Ideal.span_le]
    intro z hz
    rcases hz with rfl | rfl | rfl
    · exact RingHom.mem_ker.mpr hp1
    · exact RingHom.mem_ker.mpr hp2
    · exact RingHom.mem_ker.mpr hp3

  obtain ⟨Θ, hΘ⟩ := wcpa_dj_rtsxc_p1_present (MvPolynomial (Fin 2) A) _ θ hθs _ hJle
    (MvPolynomial.C a) hsat 𝔔 (Localization.AtPrime (𝔔.comap θ)) (by rw [hJD]; exact hnzd)

  obtain ⟨d, u, hmaxD, hdimD⟩ :=
    wcpa_dj_rtsxc_p2xy_fibre A (n + 2) t₀ hdim ht0span (𝔔.comap θ) hQ

  obtain ⟨π, hπ⟩ : ∃ π : Localization.AtPrime (𝔔.comap θ) →+* Localization.AtPrime 𝔔,
      π = Θ.symm.toRingHom.comp (Ideal.Quotient.mk _) := ⟨_, rfl⟩
  have hπs : Function.Surjective π := by
    rw [hπ]; exact Θ.symm.surjective.comp Ideal.Quotient.mk_surjective
  have hker : RingHom.ker π = Ideal.span
      {algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C (σ l)) -
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C a) *
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.X 0),
       algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C (σ l')) -
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C a) *
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.X 1),
       algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C c) -
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C w) *
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C a) *
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.X 0) *
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.X 1)} := by
    rw [hπ, RingHom.ker_equiv_comp, Ideal.mk_ker, Ideal.map_span, Set.image_insert_eq,
      Set.image_insert_eq, Set.image_singleton]
    simp only [map_sub, map_mul]
  have hτ : ∀ r : A, π (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
      (MvPolynomial.C r)) =
      ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) r) := by
    intro r
    rw [hπ]
    exact (RingEquiv.symm_apply_eq Θ).mpr ((hΘ (MvPolynomial.C r)).symm.trans
      (congrArg (fun z => Θ (algebraMap _ (Localization.AtPrime 𝔔) z)) (hθC r)))

  have hr : Set.range (fun i => algebraMap (MvPolynomial (Fin 2) A)
      (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C (t₀ i))) =
      {algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C a),
        algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
          (MvPolynomial.C c)} ∪
      Set.range (fun m => algebraMap (MvPolynomial (Fin 2) A)
        (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C (σ m))) := by
    have e1 : Set.range (fun i => algebraMap (MvPolynomial (Fin 2) A)
        (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C (t₀ i))) =
        (fun z => algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C z)) '' Set.range t₀ := by
      ext z; simp only [Set.mem_range, Set.mem_image, exists_exists_eq_and]
    have e2 : Set.range (fun m => algebraMap (MvPolynomial (Fin 2) A)
        (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C (σ m))) =
        (fun z => algebraMap (MvPolynomial (Fin 2) A)
          (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C z)) '' Set.range σ := by
      ext z; simp only [Set.mem_range, Set.mem_image, exists_exists_eq_and]
    rw [e1, e2, ht0range, Set.image_union, Set.image_pair]

  have key := wcpa_dj_rtsxc_p2xy_pt (Localization.AtPrime (𝔔.comap θ)) n
    (fun m => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
      (MvPolynomial.C (σ m)))
    (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C a))
    (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C c))
    (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ)) (MvPolynomial.C w))
    (fun i => algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
      (MvPolynomial.X i))
    l l' hll' d u _ {i : Fin 2 | MvPolynomial.X i ∈ 𝔔.comap θ} hr
    (fun i => (IsLocalization.AtPrime.to_map_mem_maximal_iff _ (𝔔.comap θ)
      (MvPolynomial.X i)).symm)
    hmaxD hdimD (Localization.AtPrime 𝔔) π hπs hker
  have hfun : (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m))) =
      fun m => π (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C (σ m))) :=
    funext fun m => (hτ (σ m)).symm
  have hγ : ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j) =
      π (algebraMap (MvPolynomial (Fin 2) A) (Localization.AtPrime (𝔔.comap θ))
        (MvPolynomial.C a)) := by
    exact (congrArg (⇑((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j))))
      hGj).trans (hτ a).symm
  rw [hfun, hγ]
  exact key

theorem wcpa_dj_scr_chart_present : ∀ (A : Type u) [CommRing A] [IsDomain A] [IsNoetherianRing A] (𝔭 : Ideal A) [𝔭.IsPrime] (O : Type u) [CommRing O] [IsLocalRing O] [Algebra A O] [IsLocalization.AtPrime O 𝔭] (r : ℕ) (f : Fin (r + 1) → A) (a : Fin (r + 1)) (𝔮 : Ideal (wcpaDjChart A f a)) [𝔮.IsPrime] (B : Type u) [CommRing B] [IsLocalRing B] [Algebra (wcpaDjChart A f a) B] [IsLocalization.AtPrime B 𝔮] (φ : O →+* B), f a ≠ 0 → 𝔮.comap (algebraMap A (wcpaDjChart A f a)) = 𝔭 → (∀ c : A, φ (algebraMap A O c) = algebraMap (wcpaDjChart A f a) B (algebraMap A (wcpaDjChart A f a) c)) → IsDomain B ∧ IsNoetherianRing B ∧ Function.Injective φ ∧ (∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O) ∧ ∃ y : Fin (r + 1) → B, y a = 1 ∧ (∀ l, φ (algebraMap A O (f l)) = φ (algebraMap A O (f a)) * y l) ∧ ∀ b : B, ∃ G H : MvPolynomial (Fin (r + 1)) O, IsUnit (MvPolynomial.eval₂ φ y H) ∧ b * MvPolynomial.eval₂ φ y H = MvPolynomial.eval₂ φ y G :=
by
  intro A _ _ _ 𝔭 _ O _ _ _ _ r f a 𝔮 _ B _ _ _ _ φ hfa hcomap hφ
  classical

  have hM : Submonoid.powers (f a) ≤ nonZeroDivisors A :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hfa
  haveI hLdom : IsDomain (Localization.Away (f a)) := IsLocalization.isDomain_localization hM
  haveI hSdom : IsDomain (wcpaDjChart A f a) := inferInstance
  haveI hSft : Algebra.FiniteType A (wcpaDjChart A f a) :=
    Algebra.FiniteType.adjoin_of_finite (Set.finite_range _)
  haveI hSnoeth : IsNoetherianRing (wcpaDjChart A f a) :=
    Algebra.FiniteType.isNoetherianRing A (wcpaDjChart A f a)
  have hjinj : Function.Injective (algebraMap A (wcpaDjChart A f a)) := by
    intro c c' h
    apply IsLocalization.injective (Localization.Away (f a)) hM
    have h' := congrArg Subtype.val h
    simpa using h'

  have hBdom : IsDomain B := IsLocalization.isDomain_of_atPrime B 𝔮
  have hBnoeth : IsNoetherianRing B :=
    IsLocalization.isNoetherianRing 𝔮.primeCompl B inferInstance
  have hρinj : Function.Injective (algebraMap (wcpaDjChart A f a) B) :=
    IsLocalization.injective B (Ideal.primeCompl_le_nonZeroDivisors 𝔮)

  have hfrac : ∀ o : O, ∃ (c : A) (t : 𝔭.primeCompl),
      algebraMap A O t * o = algebraMap A O c := by
    intro o
    obtain ⟨⟨c, t⟩, rfl⟩ := IsLocalization.mk'_surjective 𝔭.primeCompl o
    exact ⟨c, t, IsLocalization.mk'_spec' O c t⟩
  have hunit : ∀ t : 𝔭.primeCompl, IsUnit (φ (algebraMap A O t)) := by
    intro t
    rw [hφ]
    apply (IsLocalization.AtPrime.isUnit_to_map_iff B 𝔮 _).mpr
    intro h
    apply t.2
    have h' : (t : A) ∈ 𝔮.comap (algebraMap A (wcpaDjChart A f a)) := h
    rw [hcomap] at h'
    exact h'
  have hφinj : Function.Injective φ := by
    rw [injective_iff_map_eq_zero]
    intro o ho
    obtain ⟨c, t, hct⟩ := hfrac o
    have h1 : φ (algebraMap A O t * o) = φ (algebraMap A O c) := by rw [hct]
    rw [map_mul, ho, mul_zero, hφ] at h1
    have hc : c = 0 := by
      apply hjinj
      apply hρinj
      rw [map_zero, map_zero]
      exact h1.symm
    rw [hc, map_zero] at hct
    exact ((IsLocalization.map_units O t).mul_right_eq_zero).mp hct
  have hφloc : ∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O := by
    intro o
    obtain ⟨c, t, hct⟩ := hfrac o
    have e1 : o ∈ IsLocalRing.maximalIdeal O ↔ c ∈ 𝔭 := by
      rw [← Ideal.unit_mul_mem_iff_mem _ (IsLocalization.map_units O t), hct]
      exact IsLocalization.AtPrime.to_map_mem_maximal_iff O 𝔭 c ‹IsLocalRing O›
    have e2 : φ o ∈ IsLocalRing.maximalIdeal B ↔ c ∈ 𝔭 := by
      rw [← Ideal.unit_mul_mem_iff_mem _ (hunit t), ← map_mul, hct, hφ]
      rw [IsLocalization.AtPrime.to_map_mem_maximal_iff B 𝔮 _ ‹IsLocalRing B›, ← Ideal.mem_comap,
        hcomap]
    rw [e1, e2]

  let g' : Fin (r + 1) → wcpaDjChart A f a := fun l =>
    ⟨IsLocalization.mk' (Localization.Away (f a)) (f l)
      (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a)), Algebra.subset_adjoin ⟨l, rfl⟩⟩
  have hga : g' a = 1 := Subtype.ext (by exact IsLocalization.mk'_self' (Localization.Away (f a)))
  have hgl : ∀ l, algebraMap A (wcpaDjChart A f a) (f l) =
      algebraMap A (wcpaDjChart A f a) (f a) * g' l := by
    intro l
    apply Subtype.ext
    simp only [Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
    exact (IsLocalization.mk'_spec' (Localization.Away (f a)) (f l)
      (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a))).symm

  have hP : ∀ z : wcpaDjChart A f a, ∃ P : MvPolynomial (Fin (r + 1)) A,
      MvPolynomial.aeval g' P = z := by
    intro z
    have hz : z.1 ∈ (MvPolynomial.aeval (R := A) (fun l => IsLocalization.mk' (Localization.Away (f a)) (f l)
        (⟨f a, Submonoid.mem_powers _⟩ : Submonoid.powers (f a)))).range := by
      rw [← Algebra.adjoin_range_eq_range_aeval]
      exact z.2
    obtain ⟨P, hP⟩ := hz
    refine ⟨P, Subtype.ext ?_⟩
    rw [← hP, ← Subalgebra.coe_val, ← AlgHom.comp_apply, MvPolynomial.comp_aeval]
    rfl
  have hQ : ∀ P : MvPolynomial (Fin (r + 1)) A,
      algebraMap (wcpaDjChart A f a) B (MvPolynomial.aeval g' P) =
        MvPolynomial.eval₂ φ (fun l => algebraMap (wcpaDjChart A f a) B (g' l))
          (MvPolynomial.map (algebraMap A O) P) := by
    intro P
    rw [MvPolynomial.aeval_def, MvPolynomial.eval₂_comp_left, MvPolynomial.eval₂_map]
    congr 1
    exact RingHom.ext fun c => (hφ c).symm
  refine ⟨hBdom, hBnoeth, hφinj, hφloc, fun l => algebraMap (wcpaDjChart A f a) B (g' l), ?_, ?_, ?_⟩
  · show algebraMap (wcpaDjChart A f a) B (g' a) = 1
    rw [hga, map_one]
  · intro l
    show φ (algebraMap A O (f l)) = φ (algebraMap A O (f a)) * algebraMap (wcpaDjChart A f a) B (g' l)
    rw [hφ, hφ, ← map_mul, ← hgl]
  · intro b
    obtain ⟨⟨u, t⟩, rfl⟩ := IsLocalization.mk'_surjective 𝔮.primeCompl b
    obtain ⟨Pu, hPu⟩ := hP u
    obtain ⟨Pt, hPt⟩ := hP t
    refine ⟨MvPolynomial.map (algebraMap A O) Pu, MvPolynomial.map (algebraMap A O) Pt, ?_, ?_⟩
    · rw [← hQ, hPt]
      exact IsLocalization.map_units B t
    · rw [← hQ, ← hQ, hPt, hPu]
      exact IsLocalization.mk'_spec B u t

theorem wcpa_dj_scr_chart_kernel : ∀ (O : Type u) [CommRing O] (B : Type u) [CommRing B] (r : ℕ) (x : Fin (r + 1) → O) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B), Function.Injective φ → (∀ b : B, φ (x a) * b = 0 → b = 0) → y a = 1 → (∀ l, φ (x l) = φ (x a) * y l) → (∀ (d : ℕ) (F : MvPolynomial (Fin (r + 1)) O), F.IsHomogeneous d → MvPolynomial.eval x F ∈ (Ideal.span (Set.range x)) ^ (d + 1) → ∀ α, F.coeff α ∈ Ideal.span (Set.range x)) → ∀ G : MvPolynomial (Fin (r + 1)) O, MvPolynomial.eval₂ φ y G = 0 → G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) ⊔ Ideal.span {MvPolynomial.X a - 1} :=
by
  intro O _ B _ r x a φ y hφ _ hya hxy hQR G hG
  classical
  obtain ⟨ξ, hξ⟩ : ∃ ξ, φ (x a) = ξ := ⟨_, rfl⟩
  rw [hξ] at hxy
  set N := G.totalDegree with hN
  set H : MvPolynomial (Fin (r + 1)) O := ∑ α ∈ G.support,
    MvPolynomial.monomial α (G.coeff α) * MvPolynomial.X a ^ (N - Finsupp.degree α) with hH
  have hdeg : ∀ α ∈ G.support, Finsupp.degree α ≤ N := fun α hα =>
    MvPolynomial.le_totalDegree hα
  have hhom : H.IsHomogeneous N := by
    rw [hH]
    apply MvPolynomial.IsHomogeneous.sum
    intro α hα
    have h := (MvPolynomial.isHomogeneous_monomial (d := α) (G.coeff α) rfl).mul
      (MvPolynomial.isHomogeneous_X_pow a (N - Finsupp.degree α))
    rwa [Nat.add_sub_cancel' (hdeg α hα)] at h
  have hev : φ (MvPolynomial.eval x H) = ξ ^ N * MvPolynomial.eval₂ φ y G := by
    rw [MvPolynomial.eval₂_eq, Finset.mul_sum, hH, map_sum, map_sum]
    refine Finset.sum_congr rfl (fun α hα => ?_)
    rw [map_mul, map_mul, MvPolynomial.eval_monomial, map_pow, MvPolynomial.eval_X, map_mul,
      Finsupp.prod, map_prod]
    simp only [map_pow, hxy, mul_pow, Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, hya,
      mul_one]
    have e : ξ ^ N = ξ ^ (∑ i ∈ α.support, α i) * ξ ^ (N - Finsupp.degree α) := by
      rw [← pow_add]
      congr 1
      exact (Nat.add_sub_cancel' (hdeg α hα)).symm
    rw [e]
    ring
  have hH0 : MvPolynomial.eval x H = 0 := by
    apply hφ
    rw [map_zero, hev, hG, mul_zero]
  have hcoeff := hQR N H hhom (by rw [hH0]; exact Ideal.zero_mem _)
  have hmem : H ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) :=
    MvPolynomial.mem_map_C_iff.mpr hcoeff
  have hsub : G - H ∈ Ideal.span {MvPolynomial.X a - 1} := by
    have e : G - H = ∑ α ∈ G.support, MvPolynomial.monomial α (G.coeff α) *
        (1 - MvPolynomial.X a ^ (N - Finsupp.degree α)) := by
      simp only [mul_sub, mul_one, Finset.sum_sub_distrib, MvPolynomial.support_sum_monomial_coeff,
        hH]
    rw [e]
    refine Ideal.sum_mem _ (fun α _ => Ideal.mul_mem_left _ _ ?_)
    rw [Ideal.mem_span_singleton]
    have hd := sub_dvd_pow_sub_pow (MvPolynomial.X a : MvPolynomial (Fin (r + 1)) O) 1
      (N - Finsupp.degree α)
    rw [one_pow] at hd
    have hneg : (1 : MvPolynomial (Fin (r + 1)) O) - MvPolynomial.X a ^ (N - Finsupp.degree α) =
        -(MvPolynomial.X a ^ (N - Finsupp.degree α) - 1) := (neg_sub _ _).symm
    rw [hneg]
    exact (dvd_neg).mpr hd
  have hsum : H + (G - H) ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) ⊔
      Ideal.span {MvPolynomial.X a - 1} :=
    Ideal.add_mem _ (Ideal.mem_sup_left hmem) (Ideal.mem_sup_right hsub)
  rwa [add_sub_cancel] at hsum

theorem wcpa_dj_scr_quasi_regular : ∀ (O : Type u) [CommRing O] (k : ℕ) (x : Fin k → O), RingTheory.Sequence.IsWeaklyRegular O (List.ofFn x) → ∀ (d : ℕ) (F : MvPolynomial (Fin k) O), F.IsHomogeneous d → MvPolynomial.eval x F ∈ (Ideal.span (Set.range x)) ^ (d + 1) → ∀ α, F.coeff α ∈ Ideal.span (Set.range x) :=
by
  intro O _
  classical

  have s1b : ∀ (k : ℕ) (x : Fin k → O) (J : Ideal O) (d : ℕ) (G : MvPolynomial (Fin k) O),
      G.IsHomogeneous d → (∀ α, G.coeff α ∈ J) →
      MvPolynomial.eval x G ∈ J * (Ideal.span (Set.range x)) ^ d := by
    intro k x J d G hG hJ
    rw [MvPolynomial.eval_eq]
    refine Ideal.sum_mem _ (fun α hα => ?_)
    refine Ideal.mul_mem_mul (hJ α) ?_
    have hdeg : Finsupp.degree α = d := by
      by_contra h
      exact (MvPolynomial.mem_support_iff.mp hα) (hG.coeff_eq_zero h)
    rw [← hdeg, Finsupp.degree_apply, ← Finset.prod_pow_eq_pow_sum]
    exact Ideal.prod_mem_prod (fun i _ => Ideal.pow_mem_pow (Ideal.subset_span (Set.mem_range_self i)) _)

  have s1f : ∀ (k : ℕ) (x : Fin k → O) (J : Ideal O) (d : ℕ) (y : O),
      y ∈ J * (Ideal.span (Set.range x)) ^ d →
      ∃ G : MvPolynomial (Fin k) O, G.IsHomogeneous d ∧ (∀ α, G.coeff α ∈ J) ∧
        MvPolynomial.eval x G = y := by
    intro k x J d
    induction d with
    | zero =>
      intro y hy
      rw [pow_zero, Ideal.one_eq_top, Ideal.mul_top] at hy
      refine ⟨MvPolynomial.C y, MvPolynomial.isHomogeneous_C _ y, fun α => ?_,
        MvPolynomial.eval_C y⟩
      rw [MvPolynomial.coeff_C]
      split_ifs
      · exact hy
      · exact J.zero_mem
    | succ d ih =>
      intro y hy
      rw [pow_succ, ← mul_assoc] at hy
      refine Submodule.mul_induction_on (C := fun y => ∃ G : MvPolynomial (Fin k) O,
        G.IsHomogeneous (d + 1) ∧ (∀ α, G.coeff α ∈ J) ∧ MvPolynomial.eval x G = y) hy ?_ ?_
      · intro m hm n hn
        obtain ⟨Gm, hGm, hJm, hem⟩ := ih m hm
        obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.mp hn
        have hJm' : Gm ∈ Ideal.map MvPolynomial.C J := MvPolynomial.mem_map_C_iff.mpr hJm
        refine ⟨∑ i, MvPolynomial.C (c i) * MvPolynomial.X i * Gm, ?_, ?_, ?_⟩
        · refine MvPolynomial.IsHomogeneous.sum _ _ _ (fun i _ => ?_)
          rw [add_comm]
          exact (MvPolynomial.isHomogeneous_C_mul_X (c i) i).mul hGm
        · apply MvPolynomial.mem_map_C_iff.mp
          exact Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ hJm')
        · rw [← hc, map_sum, Finset.mul_sum]
          refine Finset.sum_congr rfl (fun i _ => ?_)
          rw [map_mul, map_mul, MvPolynomial.eval_C, MvPolynomial.eval_X, hem]
          ring
      · rintro a b ⟨Ga, hGa, hJa, hea⟩ ⟨Gb, hGb, hJb, heb⟩
        refine ⟨Ga + Gb, hGa.add hGb, fun α => ?_, by rw [map_add, hea, heb]⟩
        rw [MvPolynomial.coeff_add]
        exact J.add_mem (hJa α) (hJb α)

  have s2 : ∀ (k : ℕ) (x : Fin (k + 1) → O), RingTheory.Sequence.IsWeaklyRegular O (List.ofFn x) →
      RingTheory.Sequence.IsWeaklyRegular O (List.ofFn fun i : Fin k => x i.castSucc) ∧
      ∀ m : O, x (Fin.last k) * m ∈ Ideal.span (Set.range fun i : Fin k => x i.castSucc) →
        m ∈ Ideal.span (Set.range fun i : Fin k => x i.castSucc) := by
    intro k x h
    rw [List.ofFn_succ', List.concat_eq_append, RingTheory.Sequence.isWeaklyRegular_append_iff,
      RingTheory.Sequence.isWeaklyRegular_cons_iff] at h
    obtain ⟨h1, h2, -⟩ := h
    refine ⟨h1, fun m hm => ?_⟩
    have key : ∀ (N : Submodule O O), IsSMulRegular (O ⧸ N) (x (Fin.last k)) →
        ∀ m, x (Fin.last k) * m ∈ N → m ∈ N := by
      intro N hN m hm
      have h0 : (Submodule.Quotient.mk m : O ⧸ N) = 0 := by
        refine hN ?_
        show x (Fin.last k) • (Submodule.Quotient.mk m : O ⧸ N) = x (Fin.last k) • (0 : O ⧸ N)
        rw [smul_zero, ← Submodule.Quotient.mk_smul, smul_eq_mul]
        exact (Submodule.Quotient.mk_eq_zero N).mpr hm
      exact (Submodule.Quotient.mk_eq_zero N).mp h0
    have hI : Ideal.ofList (List.ofFn fun i : Fin k => x i.castSucc) • (⊤ : Submodule O O) =
        Ideal.span (Set.range fun i : Fin k => x i.castSucc) := by
      rw [Ideal.smul_eq_mul, Ideal.mul_top, Ideal.ofList]
      congr 1
      ext r
      simp [List.mem_ofFn]
    have := key _ h2 m (by rw [hI]; exact hm)
    rwa [hI] at this

  have s5 : ∀ (k d : ℕ) (F : MvPolynomial (Fin (k + 1)) O), F.IsHomogeneous (d + 1) →
      ∃ (H : MvPolynomial (Fin (k + 1)) O) (G : MvPolynomial (Fin k) O), H.IsHomogeneous d ∧
        G.IsHomogeneous (d + 1) ∧
        F = MvPolynomial.X (Fin.last k) * H + MvPolynomial.rename Fin.castSucc G := by
    intro k d F hF
    have hR : (F.modMonomial (Finsupp.single (Fin.last k) 1)).IsHomogeneous (d + 1) := by
      intro α hα
      by_cases hle : Finsupp.single (Fin.last k) 1 ≤ α
      · exact absurd (MvPolynomial.coeff_modMonomial_of_le F hle) hα
      · rw [MvPolynomial.coeff_modMonomial_of_not_le F hle] at hα
        exact hF hα
    have hvars : ((F.modMonomial (Finsupp.single (Fin.last k) 1)).vars : Set (Fin (k + 1))) ⊆
        Set.range Fin.castSucc := by
      intro i hi
      rw [Finset.mem_coe, MvPolynomial.mem_vars] at hi
      obtain ⟨α, hα, hiα⟩ := hi
      have hle : ¬ Finsupp.single (Fin.last k) 1 ≤ α := by
        intro hle
        exact (MvPolynomial.mem_support_iff.mp hα) (MvPolynomial.coeff_modMonomial_of_le F hle)
      apply Fin.exists_castSucc_eq.mpr
      rintro rfl
      apply hle
      rw [Finsupp.single_le_iff]
      exact Nat.one_le_iff_ne_zero.mpr (Finsupp.mem_support_iff.mp hiα)
    obtain ⟨G, hG⟩ := MvPolynomial.exists_rename_eq_of_vars_subset_range _ Fin.castSucc
      (Fin.castSucc_injective _) hvars
    refine ⟨F.divMonomial (Finsupp.single (Fin.last k) 1), G, ?_, ?_, ?_⟩
    · intro β hβ
      rw [MvPolynomial.coeff_divMonomial] at hβ
      have h1 := hF hβ
      rw [map_add] at h1
      have h2 : Finsupp.weight 1 (Finsupp.single (Fin.last k) 1) = 1 := by
        simp [Finsupp.weight_apply]
      omega
    · rw [← MvPolynomial.IsHomogeneous.rename_isHomogeneous_iff (Fin.castSucc_injective _), hG]
      exact hR
    · rw [hG]
      exact (MvPolynomial.divMonomial_add_modMonomial_single F (Fin.last k)).symm

  have s3 : ∀ (k : ℕ) (x : Fin k → O) (t : O),
      (∀ (d : ℕ) (F : MvPolynomial (Fin k) O), F.IsHomogeneous d →
        MvPolynomial.eval x F ∈ (Ideal.span (Set.range x)) ^ (d + 1) →
        ∀ α, F.coeff α ∈ Ideal.span (Set.range x)) →
      (∀ m : O, t * m ∈ Ideal.span (Set.range x) → m ∈ Ideal.span (Set.range x)) →
      ∀ (j : ℕ) (m : O), t * m ∈ (Ideal.span (Set.range x)) ^ j →
        m ∈ (Ideal.span (Set.range x)) ^ j := by
    intro k x t hQR hcol j
    induction j with
    | zero => intro m _; rw [pow_zero, Ideal.one_eq_top]; exact Submodule.mem_top
    | succ j ih =>
      intro m hm
      have hmj : m ∈ (Ideal.span (Set.range x)) ^ j :=
        ih m (Ideal.pow_le_pow_right (Nat.le_succ j) hm)
      obtain ⟨G, hG, -, hGe⟩ := s1f k x ⊤ j m (by rw [Ideal.top_mul]; exact hmj)
      have hc := hQR j (MvPolynomial.C t * G) (hG.C_mul t)
        (by rw [map_mul, MvPolynomial.eval_C, hGe]; exact hm)
      have hGI : ∀ α, G.coeff α ∈ Ideal.span (Set.range x) := fun α =>
        hcol _ (by have := hc α; rwa [MvPolynomial.coeff_C_mul] at this)
      rw [pow_succ', ← hGe]
      exact s1b k x _ j G hG hGI

  have s4 : ∀ (k : ℕ) (x : Fin (k + 1) → O),
      (∀ (d : ℕ) (F : MvPolynomial (Fin k) O), F.IsHomogeneous d →
        MvPolynomial.eval (fun i : Fin k => x i.castSucc) F ∈
          (Ideal.span (Set.range fun i : Fin k => x i.castSucc)) ^ (d + 1) →
        ∀ α, F.coeff α ∈ Ideal.span (Set.range fun i : Fin k => x i.castSucc)) →
      (∀ (j : ℕ) (m : O), x (Fin.last k) * m ∈
          (Ideal.span (Set.range fun i : Fin k => x i.castSucc)) ^ j →
        m ∈ (Ideal.span (Set.range fun i : Fin k => x i.castSucc)) ^ j) →
      ∀ (d : ℕ) (F : MvPolynomial (Fin (k + 1)) O), F.IsHomogeneous d →
        MvPolynomial.eval x F ∈ (Ideal.span (Set.range x)) ^ (d + 1) →
        ∀ α, F.coeff α ∈ Ideal.span (Set.range x) := by
    intro k x hQR hcol
    have hI'I : Ideal.span (Set.range fun i : Fin k => x i.castSucc) ≤ Ideal.span (Set.range x) :=
      Ideal.span_mono (by rintro _ ⟨i, rfl⟩; exact ⟨i.castSucc, rfl⟩)
    have htI : x (Fin.last k) ∈ Ideal.span (Set.range x) := Ideal.subset_span ⟨Fin.last k, rfl⟩
    intro d
    induction d with
    | zero =>
      intro F hF hFx α
      have hF0 : F = MvPolynomial.C (F.coeff 0) :=
        MvPolynomial.totalDegree_eq_zero_iff_eq_C.mp (Nat.le_zero.mp hF.totalDegree_le)
      have hc : F.coeff 0 ∈ Ideal.span (Set.range x) := by
        have h1 : MvPolynomial.eval x F ∈ Ideal.span (Set.range x) := by simpa using hFx
        rw [hF0, MvPolynomial.eval_C] at h1
        exact h1
      rw [hF0, MvPolynomial.coeff_C]
      split_ifs
      · exact hc
      · exact Submodule.zero_mem _
    | succ d ih =>
      intro F hF hFx
      rw [← MvPolynomial.mem_map_C_iff]
      rw [pow_succ'] at hFx
      obtain ⟨G₀, hG₀, hG₀I, hG₀e⟩ := s1f (k + 1) x _ (d + 1) _ hFx
      have hG₀m : G₀ ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) :=
        MvPolynomial.mem_map_C_iff.mpr hG₀I
      have hF₁ : (F - G₀).IsHomogeneous (d + 1) := hF.sub hG₀
      have hF₁e : MvPolynomial.eval x (F - G₀) = 0 := by rw [map_sub, hG₀e, sub_self]
      obtain ⟨H, G, hH, hG, hsplit⟩ := s5 k d (F - G₀) hF₁
      have hstar : x (Fin.last k) * MvPolynomial.eval x H +
          MvPolynomial.eval (fun i : Fin k => x i.castSucc) G = 0 := by
        have := congrArg (MvPolynomial.eval x) hsplit
        rw [hF₁e, map_add, map_mul, MvPolynomial.eval_X, MvPolynomial.eval_rename] at this
        exact this.symm
      have hGx' : MvPolynomial.eval (fun i : Fin k => x i.castSucc) G ∈
          (Ideal.span (Set.range fun i : Fin k => x i.castSucc)) ^ (d + 1) := by
        have := s1b k (fun i : Fin k => x i.castSucc) ⊤ (d + 1) G hG (fun _ => Submodule.mem_top)
        rwa [Ideal.top_mul] at this
      have hHx : MvPolynomial.eval x H ∈
          (Ideal.span (Set.range fun i : Fin k => x i.castSucc)) ^ (d + 1) := by
        apply hcol (d + 1)
        rw [eq_neg_of_add_eq_zero_left hstar]
        exact neg_mem hGx'
      have hHm : H ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) :=
        MvPolynomial.mem_map_C_iff.mpr (ih H hH (Ideal.pow_right_mono hI'I _ hHx))
      obtain ⟨H', hH', -, hH'e⟩ := s1f k (fun i : Fin k => x i.castSucc) ⊤ (d + 1)
        (MvPolynomial.eval x H) (by rw [Ideal.top_mul]; exact hHx)
      have hK := hQR (d + 1) (G + MvPolynomial.C (x (Fin.last k)) * H')
        (hG.add (hH'.C_mul _)) (by
          have hstar' : MvPolynomial.eval (fun i : Fin k => x i.castSucc) G +
              x (Fin.last k) * MvPolynomial.eval x H = 0 := by rw [add_comm]; exact hstar
          rw [map_add, map_mul, MvPolynomial.eval_C, hH'e, hstar']
          exact Submodule.zero_mem _)
      have hGm : G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) := by
        rw [MvPolynomial.mem_map_C_iff]
        intro β
        have h1 := hK β
        rw [MvPolynomial.coeff_add, MvPolynomial.coeff_C_mul] at h1
        have h2 : G.coeff β = (G.coeff β + x (Fin.last k) * H'.coeff β) -
            x (Fin.last k) * H'.coeff β := by ring
        rw [h2]
        exact Submodule.sub_mem _ (hI'I h1) (Ideal.mul_mem_right _ _ htI)
      have hrename : MvPolynomial.rename Fin.castSucc G ∈
          Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) := by
        have hrc : ((MvPolynomial.rename Fin.castSucc : MvPolynomial (Fin k) O →ₐ[O]
            MvPolynomial (Fin (k + 1)) O).toRingHom.comp MvPolynomial.C) = MvPolynomial.C :=
          RingHom.ext fun r => MvPolynomial.rename_C _ r
        have := Ideal.mem_map_of_mem (MvPolynomial.rename Fin.castSucc : MvPolynomial (Fin k) O →ₐ[O]
            MvPolynomial (Fin (k + 1)) O).toRingHom hGm
        rw [Ideal.map_map, hrc] at this
        exact this
      have hF₁m : F - G₀ ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) := by
        rw [hsplit]
        exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hHm) hrename
      rw [← sub_add_cancel F G₀]
      exact Ideal.add_mem _ hF₁m hG₀m

  intro k
  induction k with
  | zero =>
    intro x _ d F hF hFx α
    have hα : α = 0 := Finsupp.ext (fun i => i.elim0)
    subst hα
    by_cases hd : d = 0
    · subst hd
      rw [MvPolynomial.eq_C_of_isEmpty F, MvPolynomial.eval_C] at hFx
      simpa using hFx
    · rw [hF.coeff_eq_zero (by rw [map_zero]; exact Ne.symm hd)]
      exact Submodule.zero_mem _
  | succ k ih =>
    intro x hx
    obtain ⟨hx', hcol⟩ := s2 k x hx
    have hQR' := ih (fun i => x i.castSucc) hx'
    exact s4 k x hQR' (s3 k _ _ hQR' hcol)

theorem wcpa_dj_scr_fibre_loc : ∀ (O : Type u) [CommRing O] [IsLocalRing O] (B : Type u) [CommRing B] [IsLocalRing B] (r : ℕ) (x : Fin (r + 1) → O) (a : Fin (r + 1)) (φ : O →+* B) (y : Fin (r + 1) → B) (J : Ideal O), Ideal.span (Set.range x) ≤ J → J ≤ IsLocalRing.maximalIdeal O → (∀ c : O, φ c ∈ IsLocalRing.maximalIdeal B ↔ c ∈ IsLocalRing.maximalIdeal O) → y a = 1 → (∀ l, φ (x l) = φ (x a) * y l) → (∀ b : B, ∃ G H : MvPolynomial (Fin (r + 1)) O, IsUnit (MvPolynomial.eval₂ φ y H) ∧ b * MvPolynomial.eval₂ φ y H = MvPolynomial.eval₂ φ y G) → (∀ G : MvPolynomial (Fin (r + 1)) O, MvPolynomial.eval₂ φ y G = 0 → G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range x)) ⊔ Ideal.span {MvPolynomial.X a - 1}) → ∃ (Q : Ideal (MvPolynomial (Fin r) (O ⧸ J))) (_ : Q.IsPrime) (e : (B ⧸ J.map φ) ≃+* Localization.AtPrime Q), Q.comap MvPolynomial.C = (IsLocalRing.maximalIdeal O).map (Ideal.Quotient.mk J) ∧ (∀ c : O, e (Ideal.Quotient.mk _ (φ c)) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q) (MvPolynomial.C (Ideal.Quotient.mk J c))) ∧ ∀ i : Fin r, e (Ideal.Quotient.mk _ (y (a.succAbove i))) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q) (MvPolynomial.X i) :=
by
  intro O _ _ B _ _ r x a φ y J h1 h2 h3 h4 _h5 h6 h7
  classical
  set K : Ideal B := J.map φ with hK
  set π : B →+* B ⧸ K := Ideal.Quotient.mk K with hπ

  have hKm : K ≤ IsLocalRing.maximalIdeal B := by
    rw [hK, Ideal.map_le_iff_le_comap]
    intro j hj
    exact (h3 j).mpr (h2 hj)
  have hKne : K ≠ ⊤ := by
    intro h
    apply (IsLocalRing.maximalIdeal.isMaximal B).ne_top
    exact top_le_iff.mp (h ▸ hKm)
  haveI : Nontrivial (B ⧸ K) := Ideal.Quotient.nontrivial_iff.mpr hKne
  haveI : IsLocalRing (B ⧸ K) := IsLocalRing.of_surjective' π Ideal.Quotient.mk_surjective
  have hmemB : ∀ b : B, π b ∈ IsLocalRing.maximalIdeal (B ⧸ K) ↔
      b ∈ IsLocalRing.maximalIdeal B := by
    intro b
    constructor
    · intro hb
      by_contra hn
      have hu : IsUnit b := IsLocalRing.notMem_maximalIdeal.mp hn
      exact IsLocalRing.notMem_maximalIdeal.mpr (hu.map π) hb
    · intro hb
      rw [← IsLocalRing.map_maximalIdeal_of_surjective π Ideal.Quotient.mk_surjective]
      exact Ideal.mem_map_of_mem π hb

  have hJK : ∀ j ∈ J, (π.comp φ) j = 0 := by
    intro j hj
    rw [RingHom.comp_apply, hπ]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_map_of_mem φ hj)
  set lam : O ⧸ J →+* B ⧸ K := Ideal.Quotient.lift J (π.comp φ) hJK with hlam
  set Ψ : MvPolynomial (Fin r) (O ⧸ J) →+* B ⧸ K :=
    MvPolynomial.eval₂Hom lam (fun i => π (y (a.succAbove i))) with hΨ
  set σ : MvPolynomial (Fin (r + 1)) O →+* MvPolynomial (Fin r) (O ⧸ J) :=
    MvPolynomial.eval₂Hom ((MvPolynomial.C).comp (Ideal.Quotient.mk J))
      (Fin.insertNth a (1 : MvPolynomial (Fin r) (O ⧸ J)) MvPolynomial.X) with hσ
  have hΨC : ∀ c : O, Ψ (MvPolynomial.C (Ideal.Quotient.mk J c)) = π (φ c) := by
    intro c
    rw [hΨ, MvPolynomial.eval₂Hom_C, hlam, Ideal.Quotient.lift_mk, RingHom.comp_apply]
  have hΨX : ∀ i, Ψ (MvPolynomial.X i) = π (y (a.succAbove i)) := by
    intro i
    rw [hΨ, MvPolynomial.eval₂Hom_X']
  have hσC : ∀ c : O, σ (MvPolynomial.C c) = MvPolynomial.C (Ideal.Quotient.mk J c) := by
    intro c
    rw [hσ, MvPolynomial.eval₂Hom_C, RingHom.comp_apply]
  have hσXa : σ (MvPolynomial.X a) = 1 := by
    rw [hσ, MvPolynomial.eval₂Hom_X', Fin.insertNth_apply_same]
  have hσXs : ∀ i, σ (MvPolynomial.X (a.succAbove i)) = MvPolynomial.X i := by
    intro i
    rw [hσ, MvPolynomial.eval₂Hom_X', Fin.insertNth_apply_succAbove]
  have hcomp' : ∀ G, Ψ (σ G) = π (MvPolynomial.eval₂ φ y G) := by
    have hcomp : Ψ.comp σ = π.comp (MvPolynomial.eval₂Hom φ y) := by
      apply MvPolynomial.ringHom_ext
      · intro c
        rw [RingHom.comp_apply, RingHom.comp_apply, hσC, hΨC, MvPolynomial.eval₂Hom_C]
      · intro l
        rcases Fin.eq_self_or_eq_succAbove a l with h | ⟨i, rfl⟩
        · subst h
          rw [RingHom.comp_apply, RingHom.comp_apply, hσXa, map_one, MvPolynomial.eval₂Hom_X',
            h4, map_one]
        · rw [RingHom.comp_apply, RingHom.comp_apply, hσXs, hΨX, MvPolynomial.eval₂Hom_X']
    intro G
    have := RingHom.congr_fun hcomp G
    rw [RingHom.comp_apply, RingHom.comp_apply, MvPolynomial.coe_eval₂Hom] at this
    exact this

  have hσsurj : Function.Surjective σ := by
    intro p
    refine MvPolynomial.induction_on (motive := fun p => ∃ G, σ G = p) p ?_ ?_ ?_
    · intro c
      obtain ⟨c', rfl⟩ := Ideal.Quotient.mk_surjective c
      exact ⟨MvPolynomial.C c', hσC c'⟩
    · rintro p q ⟨G, rfl⟩ ⟨H, rfl⟩
      exact ⟨G + H, map_add σ G H⟩
    · rintro p i ⟨G, rfl⟩
      exact ⟨G * MvPolynomial.X (a.succAbove i), by rw [map_mul, hσXs]⟩
  have hσJ : ∀ G ∈ Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O) J,
      σ G = 0 := by
    have hle : Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O) J ≤
        RingHom.ker σ := by
      rw [Ideal.map_le_iff_le_comap]
      intro j hj
      rw [Ideal.mem_comap, RingHom.mem_ker, hσC, Ideal.Quotient.eq_zero_iff_mem.mpr hj, map_zero]
    intro G hG
    exact RingHom.mem_ker.mp (hle hG)
  have hker : Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O) J ⊔
      Ideal.span {MvPolynomial.X a - 1} ≤ RingHom.ker σ := by
    apply sup_le
    · intro G hG
      exact RingHom.mem_ker.mpr (hσJ G hG)
    · rw [Ideal.span_le, Set.singleton_subset_iff]
      show σ (MvPolynomial.X a - 1) = 0
      rw [map_sub, hσXa, map_one, sub_self]

  have hstar : ∀ β ∈ K, ∃ G' H : MvPolynomial (Fin (r + 1)) O,
      G' ∈ Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O) J ∧
      IsUnit (MvPolynomial.eval₂ φ y H) ∧
      β * MvPolynomial.eval₂ φ y H = MvPolynomial.eval₂ φ y G' := by
    intro β hβ
    change β ∈ Ideal.span (⇑φ '' (J : Set O)) at hβ
    induction hβ using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨j, hj, rfl⟩ := hz
      exact ⟨MvPolynomial.C j, 1, Ideal.mem_map_of_mem _ hj, by simp, by simp⟩
    | zero => exact ⟨0, 1, Ideal.zero_mem _, by simp, by simp⟩
    | add u v _ _ hu hv =>
      obtain ⟨G1, H1, hG1, hH1, e1⟩ := hu
      obtain ⟨G2, H2, hG2, hH2, e2⟩ := hv
      refine ⟨G1 * H2 + G2 * H1, H1 * H2,
        Ideal.add_mem _ (Ideal.mul_mem_right _ _ hG1) (Ideal.mul_mem_right _ _ hG2), ?_, ?_⟩
      · rw [MvPolynomial.eval₂_mul]
        exact hH1.mul hH2
      · rw [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_add, MvPolynomial.eval₂_mul,
          MvPolynomial.eval₂_mul, ← e1, ← e2]
        ring
    | smul c u _ hu =>
      obtain ⟨G1, H1, hG1, hH1, e1⟩ := hu
      obtain ⟨Gc, Hc, hHc, ec⟩ := h6 c
      refine ⟨Gc * G1, Hc * H1, Ideal.mul_mem_left _ _ hG1, ?_, ?_⟩
      · rw [MvPolynomial.eval₂_mul]
        exact hHc.mul hH1
      · rw [smul_eq_mul, MvPolynomial.eval₂_mul, MvPolynomial.eval₂_mul, ← e1, ← ec]
        ring

  set Q : Ideal (MvPolynomial (Fin r) (O ⧸ J)) :=
    (IsLocalRing.maximalIdeal (B ⧸ K)).comap Ψ with hQ
  haveI hQp : Q.IsPrime := Ideal.comap_isPrime Ψ _
  have hunit : ∀ s, s ∉ Q ↔ IsUnit (Ψ s) := by
    intro s
    rw [hQ, Ideal.mem_comap]
    exact IsLocalRing.notMem_maximalIdeal
  letI : Algebra (MvPolynomial (Fin r) (O ⧸ J)) (B ⧸ K) := Ψ.toAlgebra
  have halg : algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (B ⧸ K) = Ψ :=
    RingHom.algebraMap_toAlgebra Ψ
  have hsQ : ∀ H : MvPolynomial (Fin (r + 1)) O, IsUnit (MvPolynomial.eval₂ φ y H) →
      σ H ∈ Q.primeCompl := by
    intro H hH
    exact (hunit _).mpr (by rw [hcomp']; exact hH.map π)
  haveI hloc : IsLocalization Q.primeCompl (B ⧸ K) := by
    rw [isLocalization_iff]
    refine ⟨?_, ?_, ?_⟩
    · rintro ⟨s, hs⟩
      rw [halg]
      exact (hunit s).mp hs
    · intro z
      obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective z
      obtain ⟨G, H, hH, e⟩ := h6 b
      refine ⟨⟨σ G, ⟨σ H, hsQ H hH⟩⟩, ?_⟩
      simp only [halg]
      rw [hcomp', hcomp', ← e, map_mul]
    · intro p q hpq
      rw [halg] at hpq
      obtain ⟨G, hG⟩ := hσsurj (p - q)
      have h0 : π (MvPolynomial.eval₂ φ y G) = 0 := by
        rw [← hcomp', hG, map_sub, hpq, sub_self]
      have hGK : MvPolynomial.eval₂ φ y G ∈ K := Ideal.Quotient.eq_zero_iff_mem.mp h0
      obtain ⟨G', H, hG', hH, e⟩ := hstar _ hGK
      have hev0 : MvPolynomial.eval₂ φ y (G * H - G') = 0 := by
        rw [MvPolynomial.eval₂_sub, MvPolynomial.eval₂_mul, e, sub_self]
      have hmem := h7 _ hev0
      have hle : Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O)
            (Ideal.span (Set.range x)) ⊔ Ideal.span {MvPolynomial.X a - 1} ≤
          Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O) J ⊔
            Ideal.span {MvPolynomial.X a - 1} :=
        sup_le_sup_right (Ideal.map_mono h1) _
      have hmem' : G * H - G' ∈ Ideal.map (MvPolynomial.C : O →+* MvPolynomial (Fin (r + 1)) O) J ⊔
          Ideal.span {MvPolynomial.X a - 1} := hle hmem
      have hz1 : σ (G * H - G') = 0 := RingHom.mem_ker.mp (hker hmem')
      have hz2 : σ G' = 0 := hσJ G' hG'
      have hz : σ G * σ H = 0 := by
        rw [map_sub, map_mul, hz2, sub_zero] at hz1
        exact hz1
      refine ⟨⟨σ H, hsQ H hH⟩, ?_⟩
      show σ H * p = σ H * q
      rw [← sub_eq_zero, ← mul_sub, ← hG, mul_comm, hz]

  let e : (B ⧸ K) ≃+* Localization.AtPrime Q :=
    (IsLocalization.algEquiv Q.primeCompl (B ⧸ K) (Localization.AtPrime Q)).toRingEquiv
  have he : ∀ p, e (Ψ p) = algebraMap (MvPolynomial (Fin r) (O ⧸ J)) (Localization.AtPrime Q) p := by
    intro p
    rw [← halg]
    exact AlgEquiv.commutes _ p
  refine ⟨Q, hQp, e, ?_, ?_, ?_⟩
  · ext c
    obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c
    change Ψ (MvPolynomial.C (Ideal.Quotient.mk J c)) ∈ IsLocalRing.maximalIdeal (B ⧸ K) ↔ _
    rw [hΨC, hmemB, h3]
    constructor
    · intro hc
      exact Ideal.mem_map_of_mem _ hc
    · intro hc
      obtain ⟨c', hc', he'⟩ :=
        (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).mp hc
      have hd : c' - c ∈ J := Ideal.Quotient.eq.mp he'
      have := Ideal.sub_mem _ hc' (h2 hd)
      simpa using this
  · intro c
    rw [← hΨC]
    exact he _
  · intro i
    rw [← hΨX]
    exact he _

theorem wcpa_dj_rtsxc_p2sp_fibre (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y : A) (σ : Fin n → A) (l l' : Fin n)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (j : Fin (3 + 1))
    (P : Ideal (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) [P.IsPrime]
    (hP : P.comap (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) =
      IsLocalRing.maximalIdeal A)
    (E : Type u) [CommRing E] [Algebra (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) E]
    [IsLocalization.AtPrime E P] :
    IsDomain E ∧
    IsDomain (A ⧸ Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l'))) ∧
    algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) E
      (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
        (wcpaDjP2GenA A x y σ l l' j)) ≠ 0 ∧
    ∃ (Q' : Ideal (MvPolynomial (Fin 3) (A ⧸ Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l')))))
      (_ : Q'.IsPrime) (θ : E →+* Localization.AtPrime Q'),
      Function.Surjective θ ∧
      RingHom.ker θ = Ideal.span {algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) E
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (wcpaDjP2GenA A x y σ l l' j))} ∧
      (∀ a : A, θ (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) E
          (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) a)) =
        algebraMap (MvPolynomial (Fin 3) (A ⧸ Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l'))))
          (Localization.AtPrime Q')
          (MvPolynomial.C (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l'))) a))) ∧
      ∀ i : Fin 3, θ (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) E
          (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove i))) =
        algebraMap (MvPolynomial (Fin 3) (A ⧸ Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l'))))
          (Localization.AtPrime Q') (MvPolynomial.X i) :=
by
  haveI hdomA : IsDomain A := wcpa_regular_isDomain A wcpa_rs_quotient_regular inferInstance
  haveI hlocA : IsLocalization.AtPrime A (IsLocalRing.maximalIdeal A) :=
    IsLocalization.of_le_isUnit (fun z hz => (IsUnit.mem_submonoid_iff z).mpr
      (IsLocalRing.notMem_maximalIdeal.mp hz))



  have hgm : ∀ k, wcpaDjP2GenA A x y σ l l' k ∈ IsLocalRing.maximalIdeal A := by
    intro k
    rw [← hmax]
    apply Ideal.subset_span
    fin_cases k <;> simp [wcpaDjP2GenA]
  have hlin : LinearIndependent (IsLocalRing.ResidueField A)
      (fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨wcpaDjP2GenA A x y σ l l' k, hgm k⟩) := by
    obtain ⟨v, hv⟩ : ∃ v : Fin (n + 2) → A, v = Fin.cons x (Fin.cons y σ : Fin (n + 1) → A) :=
      ⟨_, rfl⟩
    have hvr : Set.range v = {x, y} ∪ Set.range σ := by
      rw [hv, Fin.range_cons, Fin.range_cons]
      ext z
      simp only [Set.mem_insert_iff, Set.mem_union, Set.mem_singleton_iff]
      tauto
    have hvm : ∀ i, v i ∈ IsLocalRing.maximalIdeal A := fun i => by
      rw [← hmax, ← hvr]
      exact Ideal.subset_span ⟨i, rfl⟩
    obtain ⟨w, hw⟩ : ∃ w : Fin (n + 2) → IsLocalRing.maximalIdeal A, ∀ i, (w i : A) = v i :=
      ⟨fun i => ⟨v i, hvm i⟩, fun _ => rfl⟩
    have hwv : ⇑(IsLocalRing.maximalIdeal A).subtype ∘ w = v := funext fun i => hw i
    have hspan : Submodule.span A (Set.range w) = ⊤ := by
      apply Submodule.map_injective_of_injective (IsLocalRing.maximalIdeal A).injective_subtype
      rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp, hwv]
      show Ideal.span (Set.range v) = _
      rw [hvr, hmax]
    have hcot : Submodule.span (IsLocalRing.ResidueField A)
        (Set.range ((IsLocalRing.maximalIdeal A).toCotangent ∘ w)) = ⊤ := by
      rw [Set.range_comp]
      exact IsLocalRing.CotangentSpace.span_image_eq_top_iff.mpr hspan
    have h3 : Submodule.spanFinrank (IsLocalRing.maximalIdeal A) = n + 2 := by
      have h2 : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal A) : ℕ) : WithBot ℕ∞) =
          ((n + 2 : ℕ) : WithBot ℕ∞) := by
        rw [hdim]
        exact IsRegularLocalRing.spanFinrank_maximalIdeal
      exact_mod_cast h2
    have hfr : Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.maximalIdeal A).Cotangent =
        n + 2 := by
      calc Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.maximalIdeal A).Cotangent
          = Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.CotangentSpace A) := rfl
        _ = Submodule.spanFinrank (IsLocalRing.maximalIdeal A) :=
          (IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace A).symm
        _ = n + 2 := h3
    have hlinv : LinearIndependent (IsLocalRing.ResidueField A)
        ((IsLocalRing.maximalIdeal A).toCotangent ∘ w) :=
      linearIndependent_of_top_le_span_of_card_eq_finrank hcot.ge
        (by rw [Fintype.card_fin, hfr])
    obtain ⟨ι, hιdef⟩ : ∃ ι : Fin (3 + 1) → Fin (n + 2),
        ι = ![0, (0 : Fin (n + 1)).succ, l.succ.succ, l'.succ.succ] := ⟨_, rfl⟩
    have hι : Function.Injective ι := by
      have hl : (l : ℕ) ≠ l' := fun h => hll' (Fin.ext h)
      rw [hιdef]
      intro a b h
      fin_cases a <;> fin_cases b <;> simp [Fin.ext_iff, Fin.val_succ] at h ⊢ <;> omega
    have hvι : ∀ k, v (ι k) = wcpaDjP2GenA A x y σ l l' k := by
      intro k
      rw [hv, hιdef]
      fin_cases k <;> simp [wcpaDjP2GenA]
    have h4 := hlinv.comp ι hι
    convert h4 using 1
    funext k
    simp only [Function.comp_apply]
    congr 1
    exact Subtype.ext ((hvι k).symm.trans (hw (ι k)).symm)



  have hdomJ : IsDomain (A ⧸ Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l'))) := by
    haveI hR : IsRegularLocalRing (A ⧸ Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l'))) :=
      (wcpa_rs_quotient_regular A (3 + 1)
        (fun k => ⟨wcpaDjP2GenA A x y σ l l' k, hgm k⟩) hlin).1
    exact wcpa_regular_isDomain _ wcpa_rs_quotient_regular hR



  have key : ∀ (r : ℕ) (f : Fin (r + 1) → A) (a : Fin (r + 1))
      (hf : ∀ k, f k ∈ IsLocalRing.maximalIdeal A),
      LinearIndependent (IsLocalRing.ResidueField A)
        (fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨f k, hf k⟩) →
      ∀ (P : Ideal (wcpaDjChartAlg A f a)) [P.IsPrime],
      P.comap (algebraMap A (wcpaDjChartAlg A f a)) = IsLocalRing.maximalIdeal A →
      ∀ (E : Type u) [CommRing E] [Algebra (wcpaDjChartAlg A f a) E]
        [IsLocalization.AtPrime E P],
      IsDomain E ∧
      algebraMap (wcpaDjChartAlg A f a) E (algebraMap A (wcpaDjChartAlg A f a) (f a)) ≠ 0 ∧
      ∃ (Q' : Ideal (MvPolynomial (Fin r) (A ⧸ Ideal.span (Set.range f))))
        (_ : Q'.IsPrime) (θ : E →+* Localization.AtPrime Q'),
        Function.Surjective θ ∧
        RingHom.ker θ = Ideal.span {algebraMap (wcpaDjChartAlg A f a) E
          (algebraMap A (wcpaDjChartAlg A f a) (f a))} ∧
        (∀ c : A, θ (algebraMap (wcpaDjChartAlg A f a) E
            (algebraMap A (wcpaDjChartAlg A f a) c)) =
          algebraMap (MvPolynomial (Fin r) (A ⧸ Ideal.span (Set.range f)))
            (Localization.AtPrime Q')
            (MvPolynomial.C (Ideal.Quotient.mk (Ideal.span (Set.range f)) c))) ∧
        ∀ i : Fin r, θ (algebraMap (wcpaDjChartAlg A f a) E
            (wcpaDjChartGen A f a (a.succAbove i))) =
          algebraMap (MvPolynomial (Fin r) (A ⧸ Ideal.span (Set.range f)))
            (Localization.AtPrime Q') (MvPolynomial.X i) := by
    intro r f a hf hlinf P _ hPc E _ _ _
    haveI : IsLocalRing E := IsLocalization.AtPrime.isLocalRing E P
    have hfa : f a ≠ 0 := by
      intro h0
      apply hlinf.ne_zero a
      have h00 : (⟨f a, hf a⟩ : IsLocalRing.maximalIdeal A) = 0 := Subtype.ext h0
      rw [h00, map_zero]
    obtain ⟨φ, hφ⟩ : ∃ φ : A →+* E, φ = (algebraMap (wcpaDjChartAlg A f a) E).comp
        (algebraMap A (wcpaDjChartAlg A f a)) := ⟨_, rfl⟩
    obtain ⟨zE, hzE⟩ : ∃ zE : Fin (r + 1) → E, zE = (fun k => algebraMap
        (wcpaDjChartAlg A f a) E (wcpaDjChartGen A f a k)) := ⟨_, rfl⟩
    obtain ⟨hEdom, _, hφinj, hφloc, yv, hy1, hyrel, hyfrac⟩ :=
      wcpa_dj_scr_chart_present A (IsLocalRing.maximalIdeal A) A r f a P E φ hfa hPc
        (fun c => by rw [hφ]; rfl)
    haveI := hEdom
    have hrelC : ∀ k, wcpaDjChartGen A f a k * algebraMap A (wcpaDjChartAlg A f a) (f a) =
        algebraMap A (wcpaDjChartAlg A f a) (f k) := fun k =>
      Subtype.ext (IsLocalization.mk'_spec _ _ _)
    have hzrel : ∀ k, φ (f k) = φ (f a) * zE k := by
      intro k
      rw [hφ, hzE]
      show algebraMap (wcpaDjChartAlg A f a) E (algebraMap A (wcpaDjChartAlg A f a) (f k)) =
        algebraMap (wcpaDjChartAlg A f a) E (algebraMap A (wcpaDjChartAlg A f a) (f a)) *
        algebraMap (wcpaDjChartAlg A f a) E (wcpaDjChartGen A f a k)
      rw [← map_mul, mul_comm, hrelC]
    have hφa : φ (f a) ≠ 0 := (map_ne_zero_iff φ hφinj).mpr hfa
    have hyrel' : ∀ k, φ (f k) = φ (f a) * yv k := hyrel
    have hyz : yv = zE := funext fun k =>
      mul_left_cancel₀ hφa ((hyrel' k).symm.trans (hzrel k))
    subst hyz
    have hw := wcpa_dj_scr_weakly_regular A (r + 1) (fun k => ⟨f k, hf k⟩) hlinf
    have hq := wcpa_dj_scr_quasi_regular A (r + 1) f hw
    have hker := wcpa_dj_scr_chart_kernel A E r f a φ yv hφinj
      (fun b hb => (mul_eq_zero.mp hb).resolve_left hφa) hy1 hzrel hq
    have hJle : Ideal.span (Set.range f) ≤ IsLocalRing.maximalIdeal A := by
      rw [Ideal.span_le]
      rintro _ ⟨k, rfl⟩
      exact hf k
    obtain ⟨Q', hQ', e', -, hc, hX⟩ := wcpa_dj_scr_fibre_loc A E r f a φ yv
      (Ideal.span (Set.range f)) le_rfl hJle hφloc hy1 hzrel hyfrac hker
    have hJφ : (Ideal.span (Set.range f)).map φ = Ideal.span {φ (f a)} := by
      rw [Ideal.map_span]
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨_, ⟨k, rfl⟩, rfl⟩
        rw [hzrel k]
        exact Ideal.mul_mem_right _ _ (Ideal.subset_span (Set.mem_singleton _))
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.subset_span ⟨f a, ⟨a, rfl⟩, rfl⟩
    have hk : RingHom.ker (e'.toRingHom.comp
        (Ideal.Quotient.mk ((Ideal.span (Set.range f)).map φ))) = Ideal.span {φ (f a)} :=
      ((RingHom.ker_comp_of_injective (Ideal.Quotient.mk ((Ideal.span (Set.range f)).map φ))
        (f := e'.toRingHom) e'.injective).trans Ideal.mk_ker).trans hJφ
    subst hφ hzE
    exact ⟨hEdom, hφa, Q', hQ', e'.toRingHom.comp (Ideal.Quotient.mk _),
      e'.surjective.comp Ideal.Quotient.mk_surjective, hk, fun c => hc c, fun i => hX i⟩
  have h := key 3 (wcpaDjP2GenA A x y σ l l') j hgm hlin P hP E
  exact ⟨h.1, hdomJ, h.2.1, h.2.2⟩

theorem wcpa_dj_rtsxc_p2_strict_present (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y v : A) (σ : Fin n → A) (b : Fin n → ℕ) (l l' : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (hb : b l = 1) (hb' : b l' = 1) (j : Fin (3 + 1))
    (𝔔 : Ideal (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j))
    [𝔔.IsPrime]
    (h𝔔 : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) c ∈ 𝔔 ↔
        ¬ IsUnit c) :
    ∃ (P : Ideal (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) (_ : P.IsPrime)
      (Gs : wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
      (Θ : Localization.AtPrime P →+* Localization.AtPrime 𝔔),
      Function.Surjective Θ ∧
      RingHom.ker Θ = Ideal.span {algebraMap
          (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P) Gs} ∧
      P.comap (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) =
        IsLocalRing.maximalIdeal A ∧
      (j = 0 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 2 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 3) ∧
      (j = 1 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 2 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 3) ∧
      (j = 2 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 3) ∧
      (j = 3 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 2) ∧
      (∀ a : A, Θ (algebraMap
          (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
          (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) a)) =
        algebraMap (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
            (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a))) ∧
      ∀ k, Θ (algebraMap
          (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
          (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j k)) =
        algebraMap (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)
          (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j k) :=
by
  classical

  have swap : ∀ (E K : Type u) [CommRing E] [IsDomain E] [CommRing K] [IsDomain K]
      (θ : E →+* K) (t G : E), t ≠ 0 → RingHom.ker θ = Ideal.span {t} → θ G ≠ 0 →
      ∀ e : E, t * e ∈ Ideal.span {G} → e ∈ Ideal.span {G} := by
    intro E K _ _ _ _ θ t G ht hker hG e he
    obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp he
    have hθt : θ t = 0 := by
      rw [← RingHom.mem_ker, hker]; exact Ideal.mem_span_singleton_self t
    have h1 : θ w * θ G = 0 := by
      rw [← map_mul, hw, map_mul, hθt, zero_mul]
    have h2 : θ w = 0 := (mul_eq_zero.mp h1).resolve_right hG
    have h3 : w ∈ Ideal.span {t} := by rw [← hker]; exact h2
    obtain ⟨w', hw'⟩ := Ideal.mem_span_singleton'.mp h3
    have h4 : t * e = t * (w' * G) := by rw [← hw, ← hw']; ring
    rw [mul_left_cancel₀ ht h4]
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self G)

  have fne : ∀ (D : Type u) [CommRing D] [IsDomain D] (Q' : Ideal (MvPolynomial (Fin 3) D))
      [Q'.IsPrime] (c : D),
      IsDomain (Localization.AtPrime Q') ∧
      algebraMap (MvPolynomial (Fin 3) D) (Localization.AtPrime Q')
        (MvPolynomial.X 0 - MvPolynomial.C c * MvPolynomial.X 1 * MvPolynomial.X 2) ≠ 0 ∧
      algebraMap (MvPolynomial (Fin 3) D) (Localization.AtPrime Q')
        (MvPolynomial.X 0 * MvPolynomial.X 1 - MvPolynomial.C c * MvPolynomial.X 2) ≠ 0 := by
    intro D _ _ Q' _ c
    have hle := Q'.primeCompl_le_nonZeroDivisors
    refine ⟨IsLocalization.isDomain_of_le_nonZeroDivisors _ hle, ?_, ?_⟩
    · intro h
      have h0 := IsLocalization.injective (Localization.AtPrime Q') hle
        (h.trans (map_zero _).symm)
      have h1 := congrArg (MvPolynomial.eval ![(1 : D), 0, 0]) h0
      simp at h1
    · intro h
      have h0 := IsLocalization.injective (Localization.AtPrime Q') hle
        (h.trans (map_zero _).symm)
      have h1 := congrArg (MvPolynomial.eval ![(1 : D), 1, 0]) h0
      simp at h1

  have locp : ∀ (P' C : Type u) [CommRing P'] [CommRing C] (π : P' →+* C),
      Function.Surjective π → ∀ (t G : P'), π G = 0 →
      (∀ p, π p = 0 → ∃ N : ℕ, t ^ N * p ∈ Ideal.span {G}) →
      ∀ (𝔔 : Ideal C) [𝔔.IsPrime] (E : Type u) [CommRing E] [Algebra P' E]
        [IsLocalization.AtPrime E (𝔔.comap π)],
      (∀ e : E, algebraMap P' E t * e ∈ Ideal.span {algebraMap P' E G} →
        e ∈ Ideal.span {algebraMap P' E G}) →
      ∃ Θ : E →+* Localization.AtPrime 𝔔, Function.Surjective Θ ∧
        RingHom.ker Θ = Ideal.span {algebraMap P' E G} ∧
        ∀ p, Θ (algebraMap P' E p) = algebraMap C (Localization.AtPrime 𝔔) (π p) := by
    intro P' C _ _ π hπ t G hG hsat 𝔔 _ E _ _ _ hreg
    have hunit : ∀ s : (𝔔.comap π).primeCompl,
        IsUnit (((algebraMap C (Localization.AtPrime 𝔔)).comp π) s) := by
      intro s
      rw [RingHom.comp_apply]
      exact (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime 𝔔) 𝔔 (π s)).mpr s.2
    let Θ : E →+* Localization.AtPrime 𝔔 :=
      IsLocalization.lift (M := (𝔔.comap π).primeCompl) (S := E) hunit
    have hΘ : ∀ p, Θ (algebraMap P' E p) = algebraMap C (Localization.AtPrime 𝔔) (π p) :=
      fun p => IsLocalization.lift_eq hunit p
    refine ⟨Θ, ?_, ?_, hΘ⟩
    · intro z
      obtain ⟨⟨c, s⟩, rfl⟩ := IsLocalization.mk'_surjective 𝔔.primeCompl z
      obtain ⟨p, rfl⟩ := hπ c
      obtain ⟨q, hq⟩ := hπ s
      have hqM : q ∈ (𝔔.comap π).primeCompl := by
        show π q ∉ 𝔔
        rw [hq]; exact s.2
      have hs1 := IsLocalization.mk'_spec E (1 : P') (⟨q, hqM⟩ : (𝔔.comap π).primeCompl)
      simp only [map_one] at hs1
      have h1 : Θ (IsLocalization.mk' E (1 : P') (⟨q, hqM⟩ : (𝔔.comap π).primeCompl)) *
          algebraMap C (Localization.AtPrime 𝔔) (π q) = 1 := by
        rw [← hΘ, ← map_mul, hs1, map_one]
      refine ⟨algebraMap P' E p *
        IsLocalization.mk' E (1 : P') (⟨q, hqM⟩ : (𝔔.comap π).primeCompl), ?_⟩
      rw [IsLocalization.eq_mk'_iff_mul_eq, ← hq, map_mul, hΘ, mul_assoc, h1, mul_one]
    · apply le_antisymm
      · intro z hz
        rw [RingHom.mem_ker] at hz
        obtain ⟨⟨p, q⟩, hpq⟩ := IsLocalization.surj (𝔔.comap π).primeCompl z
        dsimp only at hpq
        have h1 : algebraMap C (Localization.AtPrime 𝔔) (π p) = 0 := by
          rw [← hΘ, ← hpq, map_mul, hz, zero_mul]
        obtain ⟨m, hm⟩ := (IsLocalization.map_eq_zero_iff 𝔔.primeCompl _ (π p)).mp h1
        obtain ⟨u, hu⟩ := hπ m
        have huM : u ∈ (𝔔.comap π).primeCompl := by
          show π u ∉ 𝔔
          rw [hu]; exact m.2
        obtain ⟨N, hN⟩ := hsat (u * p) (by rw [map_mul, hu, hm])
        have h3 : algebraMap P' E (t ^ N * (u * p)) ∈ Ideal.span {algebraMap P' E G} := by
          obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp hN
          rw [← hw, map_mul]
          exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
        have h2 : algebraMap P' E t ^ N * algebraMap P' E p ∈
            Ideal.span {algebraMap P' E G} := by
          obtain ⟨v', hv'⟩ := (IsLocalization.map_units E
            (⟨u, huM⟩ : (𝔔.comap π).primeCompl)).exists_left_inv
          have hv'' : v' * algebraMap P' E u = 1 := hv'
          have h5 := Ideal.mul_mem_left (Ideal.span {algebraMap P' E G}) v' h3
          convert h5 using 1
          simp only [map_mul, map_pow]
          linear_combination (-(algebraMap P' E t ^ N * algebraMap P' E p)) * hv''
        have h4 : ∀ N : ℕ, ∀ e : E, algebraMap P' E t ^ N * e ∈ Ideal.span {algebraMap P' E G} →
            e ∈ Ideal.span {algebraMap P' E G} := by
          intro N
          induction N with
          | zero => intro e he; simpa using he
          | succ N ih =>
            intro e he
            apply ih
            apply hreg
            convert he using 1
            ring
        have h5 := h4 N _ h2
        obtain ⟨v', hv'⟩ := (IsLocalization.map_units E q).exists_left_inv
        have h6 : z = algebraMap P' E p * v' := by
          rw [← hpq]
          linear_combination (-z) * hv'
        rw [h6]
        exact Ideal.mul_mem_right _ _ h5
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        show _ ∈ RingHom.ker Θ
        rw [RingHom.mem_ker, hΘ, hG, map_zero]

  have chart_map : ∀ (O R : Type u) [CommRing O] [CommRing R] (h : O →+* R) (r : ℕ)
      (f : Fin (r + 1) → O) (f' : Fin (r + 1) → R), (∀ k, h (f k) = f' k) →
      ∀ (i : Fin (r + 1)), ∃ π : wcpaDjChartAlg O f i →+* wcpaDjChartAlg R f' i,
        (∀ a : O, π (algebraMap O (wcpaDjChartAlg O f i) a) =
          algebraMap R (wcpaDjChartAlg R f' i) (h a)) ∧
        ∀ k, π (wcpaDjChartGen O f i k) = wcpaDjChartGen R f' i k := by
    intro O R _ _ h r f f' hf i
    have hle : Submonoid.powers (f i) ≤ (Submonoid.powers (f' i)).comap h := by
      rintro _ ⟨m, rfl⟩
      show h (f i ^ m) ∈ Submonoid.powers (f' i)
      rw [map_pow, hf]
      exact ⟨m, rfl⟩
    let π0 : Localization.Away (f i) →+* Localization.Away (f' i) :=
      IsLocalization.map (Localization.Away (f' i)) h hle
    have hgen : ∀ k, π0 (IsLocalization.mk' (Localization.Away (f i)) (f k)
        (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))) =
        IsLocalization.mk' (Localization.Away (f' i)) (f' k)
          (⟨f' i, Submonoid.mem_powers _⟩ : Submonoid.powers (f' i)) := by
      intro k
      rw [IsLocalization.map_mk', IsLocalization.mk'_eq_iff_eq]
      simp [hf]
    have hmem : ∀ w ∈ wcpaDjChartAlg O f i, π0 w ∈ wcpaDjChartAlg R f' i := by
      intro w hw
      induction hw using Algebra.adjoin_induction with
      | mem z hz =>
        obtain ⟨k, rfl⟩ := hz
        rw [hgen]
        exact Algebra.subset_adjoin ⟨k, rfl⟩
      | algebraMap a =>
        rw [IsLocalization.map_eq]
        exact Subalgebra.algebraMap_mem _ _
      | add z w _ _ hz hw => rw [map_add]; exact add_mem hz hw
      | mul z w _ _ hz hw => rw [map_mul]; exact mul_mem hz hw
    refine ⟨RingHom.codRestrict (π0.comp (wcpaDjChartAlg O f i).val.toRingHom)
      (wcpaDjChartAlg R f' i) (fun w => hmem w.1 w.2), ?_, ?_⟩
    · intro a
      apply Subtype.ext
      show π0 (algebraMap O (Localization.Away (f i)) a) = algebraMap R (Localization.Away (f' i)) (h a)
      exact IsLocalization.map_eq hle a
    · intro k
      apply Subtype.ext
      exact hgen k

  have saturate : ∀ (O R : Type u) [CommRing O] [CommRing R] (h : O →+* R) (F : O),
      RingHom.ker h = Ideal.span {F} → ∀ (r : ℕ) (f : Fin (r + 1) → O)
      (f' : Fin (r + 1) → R), (∀ k, h (f k) = f' k) → ∀ (i : Fin (r + 1))
      (π : wcpaDjChartAlg O f i →+* wcpaDjChartAlg R f' i),
      (∀ a : O, π (algebraMap O (wcpaDjChartAlg O f i) a) =
        algebraMap R (wcpaDjChartAlg R f' i) (h a)) →
      ∀ (Gs : wcpaDjChartAlg O f i),
      algebraMap O (wcpaDjChartAlg O f i) F =
        algebraMap O (wcpaDjChartAlg O f i) (f i) ^ 2 * Gs →
      π Gs = 0 ∧ ∀ α : wcpaDjChartAlg O f i, π α = 0 →
        ∃ N : ℕ, algebraMap O (wcpaDjChartAlg O f i) (f i) ^ N * α ∈ Ideal.span {Gs} := by
    intro O R _ _ h F hker r f f' hf i π hπ Gs hFG
    have hu : ∀ c : wcpaDjChartAlg R f' i,
        algebraMap R (wcpaDjChartAlg R f' i) (f' i) * c = 0 → c = 0 := by
      intro c hc
      apply Subtype.ext
      have h1 : algebraMap R (Localization.Away (f' i)) (f' i) *
          (c : Localization.Away (f' i)) = 0 := congrArg Subtype.val hc
      exact (IsLocalization.Away.algebraMap_isUnit (f' i)).mul_right_eq_zero.mp h1
    have hπg : π (algebraMap O (wcpaDjChartAlg O f i) (f i)) =
        algebraMap R (wcpaDjChartAlg R f' i) (f' i) := by rw [hπ, hf]
    have hGs : π Gs = 0 := by
      have h1 : π (algebraMap O (wcpaDjChartAlg O f i) F) = 0 := by
        have h2 : h F = 0 := by
          rw [← RingHom.mem_ker, hker]; exact Ideal.mem_span_singleton_self F
        rw [hπ, h2, map_zero]
      rw [hFG, map_mul, map_pow, hπg, pow_two, mul_assoc] at h1
      exact hu _ (hu _ h1)
    refine ⟨hGs, fun α hα => ?_⟩
    obtain ⟨⟨a, s⟩, has⟩ := IsLocalization.surj (Submonoid.powers (f i))
      (α : Localization.Away (f i))
    obtain ⟨N, hN⟩ := (Submonoid.mem_powers_iff _ _).mp s.2
    have has' : α * algebraMap O (wcpaDjChartAlg O f i) (f i ^ N) =
        algebraMap O (wcpaDjChartAlg O f i) a := by
      apply Subtype.ext
      rw [hN]
      exact has
    have h1 : algebraMap R (Localization.Away (f' i)) (h a) = 0 := by
      have h2 : π α * π (algebraMap O (wcpaDjChartAlg O f i) (f i ^ N)) =
          π (algebraMap O (wcpaDjChartAlg O f i) a) := by rw [← map_mul, has']
      rw [hα, zero_mul, hπ] at h2
      exact congrArg Subtype.val h2.symm
    obtain ⟨⟨m, hm⟩, hm0⟩ :=
      (IsLocalization.map_eq_zero_iff (Submonoid.powers (f' i)) _ (h a)).mp h1
    obtain ⟨M, rfl⟩ := (Submonoid.mem_powers_iff _ _).mp hm
    have h3 : f i ^ M * a ∈ Ideal.span {F} := by
      rw [← hker, RingHom.mem_ker, map_mul, map_pow, hf]
      exact hm0
    obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp h3
    have e1 : algebraMap O (wcpaDjChartAlg O f i) (f i) ^ M *
        algebraMap O (wcpaDjChartAlg O f i) a =
        algebraMap O (wcpaDjChartAlg O f i) w *
          (algebraMap O (wcpaDjChartAlg O f i) (f i) ^ 2 * Gs) := by
      rw [← hFG, ← map_pow, ← map_mul, ← map_mul, hw]
    have e2 := has'
    rw [map_pow] at e2
    refine ⟨M + N, ?_⟩
    have e3 : algebraMap O (wcpaDjChartAlg O f i) (f i) ^ (M + N) * α =
        (algebraMap O (wcpaDjChartAlg O f i) w *
          algebraMap O (wcpaDjChartAlg O f i) (f i) ^ 2) * Gs := by
      linear_combination (algebraMap O (wcpaDjChartAlg O f i) (f i) ^ M) * e2 + e1
    rw [e3]
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

  have hprod : ∏ m, σ m ^ b m = σ l * σ l' * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o := by
    rw [← Finset.prod_sdiff (Finset.subset_univ {l, l'}), Finset.prod_pair hll', hb, hb',
      pow_one, pow_one]
    ring
  have hx : x ∈ IsLocalRing.maximalIdeal A := by rw [← hmax]; exact Ideal.subset_span (by simp)
  have hσ : ∀ m, σ m ∈ IsLocalRing.maximalIdeal A := fun m => by
    rw [← hmax]; exact Ideal.subset_span (by simp)
  have hFm : x * y - v * ∏ m, σ m ^ b m ∈ IsLocalRing.maximalIdeal A := by
    rw [hprod]
    exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hx)
      (Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ (hσ l))))
  have hunitA : ∀ a : A, IsUnit (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) a) ↔
      a ∉ IsLocalRing.maximalIdeal A := by
    intro a
    constructor
    · rintro ⟨u, hu⟩ ha
      obtain ⟨a', ha'⟩ :=
        Ideal.Quotient.mk_surjective (↑u⁻¹ : A ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b m})
      have h1 : Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (a * a' - 1) = 0 := by
        rw [map_sub, map_mul, ha', ← hu, Units.mul_inv, map_one, sub_self]
      rw [Ideal.Quotient.eq_zero_iff_mem] at h1
      have h2 : a * a' - 1 ∈ IsLocalRing.maximalIdeal A :=
        (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr hFm)) h1
      have h3 : a * a' ∈ IsLocalRing.maximalIdeal A := Ideal.mul_mem_right _ _ ha
      have h4 : (1 : A) ∈ IsLocalRing.maximalIdeal A := by
        have := Ideal.sub_mem _ h3 h2
        simpa using this
      exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h4)
    · intro ha
      exact (IsLocalRing.notMem_maximalIdeal.mp ha).map _
  have hf : ∀ k, Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})
      (wcpaDjP2GenA A x y σ l l' k) = wcpaDjP2Gen A x y v σ b l l' k := by
    intro k; fin_cases k <;> rfl
  have hj4 : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by
    have h' : (j : ℕ) = 0 ∨ (j : ℕ) = 1 ∨ (j : ℕ) = 2 ∨ (j : ℕ) = 3 := by omega
    rcases h' with h' | h' | h' | h'
    · exact Or.inl (Fin.ext h')
    · exact Or.inr (Or.inl (Fin.ext h'))
    · exact Or.inr (Or.inr (Or.inl (Fin.ext h')))
    · exact Or.inr (Or.inr (Or.inr (Fin.ext h')))

  obtain ⟨π, hπa, hπz⟩ := chart_map A (wcpaDjP1Ring A x y v σ b)
    (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})) 3
    (wcpaDjP2GenA A x y σ l l') (wcpaDjP2Gen A x y v σ b l l') hf j
  have hπs : Function.Surjective π := by
    refine wcpa_dj_rtsxc_p1n_chart_surj (wcpaDjP1Ring A x y v σ b) 3
      (wcpaDjP2Gen A x y v σ b l l') j (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) π
      ?_ ?_
    · intro a
      obtain ⟨a', rfl⟩ := Ideal.Quotient.mk_surjective a
      exact ⟨_, hπa a'⟩
    · intro k
      exact ⟨_, hπz k⟩
  have hrel : ∀ k, algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
      (wcpaDjP2GenA A x y σ l l' k) =
      wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j k *
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (wcpaDjP2GenA A x y σ l l' j) := by
    intro k
    apply Subtype.ext
    exact (IsLocalization.mk'_spec _ _ _).symm
  obtain ⟨Gs, hG0, hG1, hG2, hG3⟩ : ∃ Gs : wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j,
      (j = 0 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 2 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 3) ∧
      (j = 1 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 2 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 3) ∧
      (j = 2 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 3) ∧
      (j = 3 → Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
          wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 2) := by
    rcases hj4 with rfl | rfl | rfl | rfl
    · exact ⟨_, fun _ => rfl, fun h => absurd h (by decide), fun h => absurd h (by decide),
        fun h => absurd h (by decide)⟩
    · exact ⟨_, fun h => absurd h (by decide), fun _ => rfl, fun h => absurd h (by decide),
        fun h => absurd h (by decide)⟩
    · exact ⟨_, fun h => absurd h (by decide), fun h => absurd h (by decide), fun _ => rfl,
        fun h => absurd h (by decide)⟩
    · exact ⟨_, fun h => absurd h (by decide), fun h => absurd h (by decide),
        fun h => absurd h (by decide), fun _ => rfl⟩
  have hFG : algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
      (x * y - v * ∏ m, σ m ^ b m) =
      algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
        (wcpaDjP2GenA A x y σ l l' j) ^ 2 * Gs := by
    have r0 := hrel 0
    have r1 := hrel 1
    have r2 := hrel 2
    have r3 := hrel 3
    rw [hprod]
    simp only [map_sub, map_mul]
    rcases hj4 with rfl | rfl | rfl | rfl
    · change algebraMap A _ y = _ * algebraMap A _ x at r1
      change algebraMap A _ (σ l) = _ * algebraMap A _ x at r2
      change algebraMap A _ (σ l') = _ * algebraMap A _ x at r3
      change algebraMap A _ x * algebraMap A _ y - _ = algebraMap A _ x ^ 2 * Gs
      rw [hG0 rfl, r1, r2, r3]
      simp only [map_mul]
      ring
    · change algebraMap A _ x = _ * algebraMap A _ y at r0
      change algebraMap A _ (σ l) = _ * algebraMap A _ y at r2
      change algebraMap A _ (σ l') = _ * algebraMap A _ y at r3
      change algebraMap A _ x * algebraMap A _ y - _ = algebraMap A _ y ^ 2 * Gs
      rw [hG1 rfl, r0, r2, r3]
      simp only [map_mul]
      ring
    · change algebraMap A _ x = _ * algebraMap A _ (σ l) at r0
      change algebraMap A _ y = _ * algebraMap A _ (σ l) at r1
      change algebraMap A _ (σ l') = _ * algebraMap A _ (σ l) at r3
      change algebraMap A _ x * algebraMap A _ y - _ = algebraMap A _ (σ l) ^ 2 * Gs
      rw [hG2 rfl, r0, r1, r3]
      simp only [map_mul]
      ring
    · change algebraMap A _ x = _ * algebraMap A _ (σ l') at r0
      change algebraMap A _ y = _ * algebraMap A _ (σ l') at r1
      change algebraMap A _ (σ l) = _ * algebraMap A _ (σ l') at r2
      change algebraMap A _ x * algebraMap A _ y - _ = algebraMap A _ (σ l') ^ 2 * Gs
      rw [hG3 rfl, r0, r1, r2]
      simp only [map_mul]
      ring
  obtain ⟨hGs0, hsat⟩ := saturate A (wcpaDjP1Ring A x y v σ b)
    (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m})) (x * y - v * ∏ m, σ m ^ b m)
    (Ideal.mk_ker) 3 (wcpaDjP2GenA A x y σ l l') (wcpaDjP2Gen A x y v σ b l l') hf j π hπa Gs hFG
  have hP : (𝔔.comap π).comap (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) =
      IsLocalRing.maximalIdeal A := by
    ext a
    rw [Ideal.mem_comap, Ideal.mem_comap, hπa, h𝔔, hunitA, not_not]

  obtain ⟨hdomE, hdomD, hne, Q', hQ', θ, hθs, hθk, hθa, hθz⟩ :=
    wcpa_dj_rtsxc_p2sp_fibre A n x y σ l l' hdim hmax hll' j (𝔔.comap π) hP
      (Localization.AtPrime (𝔔.comap π))
  haveI := hdomE
  haveI := hdomD
  haveI := hQ'
  have hc := fne _ Q' (Ideal.Quotient.mk (Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l')))
      (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o))
  obtain ⟨hdomK, hc1, hc2⟩ := hc
  haveI := hdomK
  rw [map_sub, map_mul, map_mul, ← hθa] at hc1 hc2
  have hθG : θ (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
      (Localization.AtPrime (𝔔.comap π)) Gs) ≠ 0 := by
    have e0 := hθz 0
    have e1 := hθz 1
    have e2 := hθz 2
    rcases hj4 with rfl | rfl | rfl | rfl
    · rw [show (0 : Fin (3 + 1)).succAbove 0 = 1 from by decide] at e0
      rw [show (0 : Fin (3 + 1)).succAbove 1 = 2 from by decide] at e1
      rw [show (0 : Fin (3 + 1)).succAbove 2 = 3 from by decide] at e2
      rw [← e0, ← e1, ← e2] at hc1
      rw [hG0 rfl]
      simpa only [map_sub, map_mul] using hc1
    · rw [show (1 : Fin (3 + 1)).succAbove 0 = 0 from by decide] at e0
      rw [show (1 : Fin (3 + 1)).succAbove 1 = 2 from by decide] at e1
      rw [show (1 : Fin (3 + 1)).succAbove 2 = 3 from by decide] at e2
      rw [← e0, ← e1, ← e2] at hc1
      rw [hG1 rfl]
      simpa only [map_sub, map_mul] using hc1
    · rw [show (2 : Fin (3 + 1)).succAbove 0 = 0 from by decide] at e0
      rw [show (2 : Fin (3 + 1)).succAbove 1 = 1 from by decide] at e1
      rw [show (2 : Fin (3 + 1)).succAbove 2 = 3 from by decide] at e2
      rw [← e0, ← e1, ← e2] at hc2
      rw [hG2 rfl]
      simpa only [map_sub, map_mul] using hc2
    · rw [show (3 : Fin (3 + 1)).succAbove 0 = 0 from by decide] at e0
      rw [show (3 : Fin (3 + 1)).succAbove 1 = 1 from by decide] at e1
      rw [show (3 : Fin (3 + 1)).succAbove 2 = 2 from by decide] at e2
      rw [← e0, ← e1, ← e2] at hc2
      rw [hG3 rfl]
      simpa only [map_sub, map_mul] using hc2
  have hreg := swap (Localization.AtPrime (𝔔.comap π)) (Localization.AtPrime Q') θ
    (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime (𝔔.comap π))
      (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (wcpaDjP2GenA A x y σ l l' j)))
    (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime (𝔔.comap π))
      Gs) hne hθk hθG

  obtain ⟨Θ, hΘs, hΘk, hΘ⟩ := locp (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
    (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) π hπs
    (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (wcpaDjP2GenA A x y σ l l' j))
    Gs hGs0 hsat 𝔔 (Localization.AtPrime (𝔔.comap π)) hreg
  refine ⟨𝔔.comap π, inferInstance, Gs, Θ, hΘs, hΘk, hP, hG0, hG1, hG2, hG3, ?_, ?_⟩
  · intro a
    rw [hΘ, hπa]
  · intro k
    rw [hΘ, hπz]

theorem wcpa_dj_sfp_quot_regseq : ∀ (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] (n r m : ℕ) (x : Fin (r + 1) → O) (t : Fin m → O), IsRegularLocalRing O → (n : WithBot ℕ∞) = ringKrullDim O → ∀ (hx : ∀ l, x l ∈ IsLocalRing.maximalIdeal O), LinearIndependent (IsLocalRing.ResidueField O) (fun l => (IsLocalRing.maximalIdeal O).toCotangent ⟨x l, hx l⟩) → r + 1 + m = n → IsLocalRing.maximalIdeal O = Ideal.span (Set.range x) ⊔ Ideal.span (Set.range t) → RingTheory.Sequence.IsWeaklyRegular (O ⧸ Ideal.span (Set.range x)) (List.ofFn fun i => Ideal.Quotient.mk (Ideal.span (Set.range x)) (t i)) :=
by
  intro O _ _ _ n r m x t hO hn hx hli hm h𝔪
  haveI := hO
  obtain ⟨hR, hdim⟩ := wcpa_rs_quotient_regular O (r + 1) (fun l => ⟨x l, hx l⟩) hli
  haveI hR' : IsRegularLocalRing (O ⧸ Ideal.span (Set.range x)) := hR
  have hdim' : ringKrullDim (O ⧸ Ideal.span (Set.range x)) + ((r + 1 : ℕ) : WithBot ℕ∞) =
      ringKrullDim O := hdim
  have hs : (Submodule.spanFinrank (IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x))) :
      WithBot ℕ∞) = ringKrullDim (O ⧸ Ideal.span (Set.range x)) :=
    IsRegularLocalRing.spanFinrank_maximalIdeal
  have hsm : Submodule.spanFinrank (IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x))) = m := by
    rw [← hs, ← hn, ← hm] at hdim'
    have h2 : Submodule.spanFinrank (IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x))) +
        (r + 1) = r + 1 + m := by exact_mod_cast hdim'
    omega
  have hmax : IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x)) =
      Ideal.span (Set.range fun i => Ideal.Quotient.mk (Ideal.span (Set.range x)) (t i)) := by
    rw [← IsLocalRing.map_maximalIdeal_of_surjective (Ideal.Quotient.mk (Ideal.span (Set.range x)))
      Ideal.Quotient.mk_surjective, h𝔪, Ideal.map_sup, Ideal.map_quotient_self, bot_sup_eq,
      Ideal.map_span, ← Set.range_comp]
    rfl
  have ht : ∀ i, Ideal.Quotient.mk (Ideal.span (Set.range x)) (t i) ∈
      IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x)) := fun i => by
    rw [hmax]; exact Ideal.subset_span ⟨i, rfl⟩
  have hspan : Submodule.span (O ⧸ Ideal.span (Set.range x))
      (Set.range fun i => (⟨_, ht i⟩ : IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x)))) = ⊤ := by
    apply Submodule.map_injective_of_injective
      (IsLocalRing.maximalIdeal (O ⧸ Ideal.span (Set.range x))).injective_subtype
    rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp]
    exact hmax.symm
  have htop := (IsLocalRing.CotangentSpace.span_image_eq_top_iff).mpr hspan
  rw [← Set.range_comp] at htop
  have hli' := linearIndependent_of_top_le_span_of_card_eq_finrank htop.ge
    (by rw [Fintype.card_fin, ← hsm, IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace])
  exact wcpa_dj_scr_weakly_regular (O ⧸ Ideal.span (Set.range x)) m (fun i => ⟨_, ht i⟩) hli'

theorem wcpa_dj_scr_poly_loc_regular : ∀ (C : Type u) [CommRing C] [IsLocalRing C] [IsNoetherianRing C] (k : ℕ) (Q : Ideal (MvPolynomial (Fin k) C)) [Q.IsPrime], IsRegularLocalRing C → Q.comap MvPolynomial.C = IsLocalRing.maximalIdeal C → IsRegularLocalRing (Localization.AtPrime Q) :=
by
  intro C _ _ _ k
  have PL := wc_pfc_pc_poly_localization_regular wc_hnas_pfc_regular_flat_ascent

  have relocalize : ∀ (R : Type u) [CommRing R] (P : Ideal (Polynomial R)) [P.IsPrime],
      (P.map (Polynomial.mapRingHom (algebraMap R (Localization.AtPrime (P.comap Polynomial.C))))).IsPrime ∧
      (P.map (Polynomial.mapRingHom (algebraMap R (Localization.AtPrime (P.comap Polynomial.C))))).comap
        Polynomial.C = IsLocalRing.maximalIdeal (Localization.AtPrime (P.comap Polynomial.C)) ∧
      (P.map (Polynomial.mapRingHom (algebraMap R (Localization.AtPrime (P.comap Polynomial.C))))).comap
        (Polynomial.mapRingHom (algebraMap R (Localization.AtPrime (P.comap Polynomial.C)))) = P := by
    intro R _ P _
    letI := Polynomial.algebra R (Localization.AtPrime (P.comap Polynomial.C))
    haveI : IsLocalization ((P.comap Polynomial.C).primeCompl.map Polynomial.C)
        (Polynomial (Localization.AtPrime (P.comap Polynomial.C))) :=
      Polynomial.isLocalization (P.comap Polynomial.C).primeCompl
        (Localization.AtPrime (P.comap Polynomial.C))
    have hdisj : Disjoint (((P.comap Polynomial.C).primeCompl.map Polynomial.C :
        Submonoid (Polynomial R)) : Set (Polynomial R)) (P : Set (Polynomial R)) := by
      rw [Set.disjoint_left]
      rintro _ ⟨s, hs, rfl⟩ hsP
      exact hs hsP
    have hmap : algebraMap (Polynomial R) (Polynomial (Localization.AtPrime (P.comap Polynomial.C))) =
        Polynomial.mapRingHom (algebraMap R (Localization.AtPrime (P.comap Polynomial.C))) :=
      Polynomial.algebraMap_def _ _
    have h1 := IsLocalization.isPrime_of_isPrime_disjoint
      ((P.comap Polynomial.C).primeCompl.map Polynomial.C)
      (Polynomial (Localization.AtPrime (P.comap Polynomial.C))) P ‹_› hdisj
    have h3 := IsLocalization.under_map_of_isPrime_disjoint
      ((P.comap Polynomial.C).primeCompl.map Polynomial.C)
      (Polynomial (Localization.AtPrime (P.comap Polynomial.C))) ‹_› hdisj
    rw [Ideal.under_def, hmap] at h3
    rw [hmap] at h1
    refine ⟨h1, ?_, h3⟩
    ext z
    obtain ⟨x, hrs⟩ := IsLocalization.surj (P.comap Polynomial.C).primeCompl z
    have hu : IsUnit (algebraMap R (Localization.AtPrime (P.comap Polynomial.C)) x.2) :=
      IsLocalization.map_units _ x.2
    have hCu : IsUnit (Polynomial.C (algebraMap R (Localization.AtPrime (P.comap Polynomial.C)) x.2)) :=
      hu.map Polynomial.C
    rw [Ideal.mem_comap, ← Ideal.mul_unit_mem_iff_mem (x := Polynomial.C z) _ hCu, ← map_mul, hrs,
      ← Polynomial.map_C, ← Polynomial.coe_mapRingHom, ← Ideal.mem_comap, h3, ← Ideal.mem_comap,
      ← IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime (P.comap Polynomial.C))
        (P.comap Polynomial.C) x.1, ← hrs, Ideal.mul_unit_mem_iff_mem _ hu]

  have transfer : ∀ (R : Type u) [CommRing R] (P : Ideal (Polynomial R)) [P.IsPrime]
      (𝔓 : Ideal (Polynomial (Localization.AtPrime (P.comap Polynomial.C)))) [𝔓.IsPrime],
      𝔓.comap (Polynomial.mapRingHom (algebraMap R (Localization.AtPrime (P.comap Polynomial.C)))) = P →
      Nonempty (Localization.AtPrime 𝔓 ≃+* Localization.AtPrime P) := by
    intro R _ P _ 𝔓 _ h
    letI := Polynomial.algebra R (Localization.AtPrime (P.comap Polynomial.C))
    haveI : IsLocalization ((P.comap Polynomial.C).primeCompl.map Polynomial.C)
        (Polynomial (Localization.AtPrime (P.comap Polynomial.C))) :=
      Polynomial.isLocalization (P.comap Polynomial.C).primeCompl
        (Localization.AtPrime (P.comap Polynomial.C))
    have hL := IsLocalization.isLocalization_isLocalization_atPrime_isLocalization
      ((P.comap Polynomial.C).primeCompl.map Polynomial.C) (Localization.AtPrime 𝔓) 𝔓
    have e : (𝔓.comap (algebraMap (Polynomial R)
        (Polynomial (Localization.AtPrime (P.comap Polynomial.C))))).primeCompl = P.primeCompl := by
      ext x
      rw [Ideal.mem_primeCompl_iff, Ideal.mem_primeCompl_iff, Polynomial.algebraMap_def, h]
    haveI : IsLocalization P.primeCompl (Localization.AtPrime 𝔓) := by
      rw [← e]; exact hL
    exact ⟨(IsLocalization.algEquiv P.primeCompl (Localization.AtPrime 𝔓)
      (Localization.AtPrime P)).toRingEquiv⟩

  have transport : ∀ (k : ℕ) (Q : Ideal (MvPolynomial (Fin (k + 1)) C)) [Q.IsPrime],
      ((Q.comap ((MvPolynomial.finSuccEquiv C k).symm : Polynomial (MvPolynomial (Fin k) C) →+*
        MvPolynomial (Fin (k + 1)) C)).comap Polynomial.C).comap MvPolynomial.C =
        Q.comap MvPolynomial.C ∧
      Nonempty (Localization.AtPrime (Q.comap ((MvPolynomial.finSuccEquiv C k).symm :
        Polynomial (MvPolynomial (Fin k) C) →+* MvPolynomial (Fin (k + 1)) C)) ≃+*
        Localization.AtPrime Q) := by
    intro k Q _
    constructor
    · rw [Ideal.comap_comap, Ideal.comap_comap, MvPolynomial.finSuccEquiv_comp_C_eq_C]
    · refine ⟨IsLocalization.ringEquivOfRingEquiv (M := (Q.comap ((MvPolynomial.finSuccEquiv C k).symm :
          Polynomial (MvPolynomial (Fin k) C) →+* MvPolynomial (Fin (k + 1)) C)).primeCompl)
        (T := Q.primeCompl)
        (Localization.AtPrime (Q.comap ((MvPolynomial.finSuccEquiv C k).symm :
          Polynomial (MvPolynomial (Fin k) C) →+* MvPolynomial (Fin (k + 1)) C)))
        (Localization.AtPrime Q)
        (MvPolynomial.finSuccEquiv C k).symm.toRingEquiv ?_⟩
      ext x
      constructor
      · rintro ⟨y, hy, rfl⟩
        exact hy
      · intro hx
        refine ⟨MvPolynomial.finSuccEquiv C k x, ?_, ?_⟩
        · rw [SetLike.mem_coe, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
          simpa using hx
        · simp

  have base : ∀ (Q : Ideal (MvPolynomial (Fin 0) C)) [Q.IsPrime], IsRegularLocalRing C →
      Q.comap MvPolynomial.C = IsLocalRing.maximalIdeal C →
      IsRegularLocalRing (Localization.AtPrime Q) := by
    intro Q _ hreg hQ
    have ha : ∀ p, MvPolynomial.C (MvPolynomial.isEmptyAlgEquiv C (Fin 0) p) = p := by
      intro p
      apply (MvPolynomial.isEmptyAlgEquiv C (Fin 0)).injective
      rw [← MvPolynomial.algebraMap_eq, AlgEquiv.commutes]
      rfl
    have hb : Q.primeCompl ≤ IsUnit.submonoid _ := by
      intro p hp
      rw [Ideal.mem_primeCompl_iff] at hp
      rw [IsUnit.mem_submonoid_iff, ← ha p]
      apply IsUnit.map
      by_contra hu
      have hm : MvPolynomial.isEmptyAlgEquiv C (Fin 0) p ∈ IsLocalRing.maximalIdeal C :=
        (IsLocalRing.mem_maximalIdeal _).mpr hu
      rw [← hQ, Ideal.mem_comap, ha] at hm
      exact hp hm
    haveI := hreg
    exact IsRegularLocalRing.of_ringEquiv ((MvPolynomial.isEmptyAlgEquiv C (Fin 0)).symm.toRingEquiv.trans
      (IsLocalization.atUnits _ Q.primeCompl (S := Localization.AtPrime Q) hb).toRingEquiv)

  induction k with
  | zero => exact base
  | succ k ih =>
    intro Q _ hreg hQ
    obtain ⟨hP, ⟨e₂⟩⟩ := transport k Q
    haveI : IsNoetherianRing (MvPolynomial (Fin k) C) := MvPolynomial.isNoetherianRing
    have hC₁ := ih ((Q.comap ((MvPolynomial.finSuccEquiv C k).symm : Polynomial (MvPolynomial (Fin k) C) →+*
        MvPolynomial (Fin (k + 1)) C)).comap Polynomial.C) hreg (hP.trans hQ)
    haveI : IsNoetherianRing (Localization.AtPrime ((Q.comap ((MvPolynomial.finSuccEquiv C k).symm :
        Polynomial (MvPolynomial (Fin k) C) →+* MvPolynomial (Fin (k + 1)) C)).comap Polynomial.C)) :=
      IsLocalization.isNoetherianRing ((Q.comap ((MvPolynomial.finSuccEquiv C k).symm :
        Polynomial (MvPolynomial (Fin k) C) →+* MvPolynomial (Fin (k + 1)) C)).comap
          Polynomial.C).primeCompl _ inferInstance
    obtain ⟨h1, h2, h3⟩ := relocalize (MvPolynomial (Fin k) C) (Q.comap
      ((MvPolynomial.finSuccEquiv C k).symm : Polynomial (MvPolynomial (Fin k) C) →+*
        MvPolynomial (Fin (k + 1)) C))
    haveI := h1
    have hreg𝔓 := PL _ hC₁ _ h2
    obtain ⟨e₁⟩ := transfer (MvPolynomial (Fin k) C) _ _ h3
    exact @IsRegularLocalRing.of_ringEquiv _ _ hreg𝔓 _ _ (e₁.trans e₂)

theorem wcpa_dj_rtsxc_p2_ambient_chart (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ)
    (x y : A) (σ : Fin n → A) (l l' : Fin n)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (j : Fin (3 + 1))
    (P : Ideal (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) [P.IsPrime]
    (hP : P.comap (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)) =
      IsLocalRing.maximalIdeal A) :
    ∃ (Q : Ideal (MvPolynomial (Fin 3) (IsLocalRing.ResidueField A))) (_ : Q.IsPrime)
      (ψ : Localization.AtPrime P →+* Localization.AtPrime Q),
      IsRegularLocalRing (Localization.AtPrime P) ∧
      ringKrullDim (Localization.AtPrime P) =
        ringKrullDim (Localization.AtPrime Q) + ((n - 1 : ℕ) : WithBot ℕ∞) ∧
      Function.Surjective ψ ∧
      RingHom.ker ψ = Ideal.span ((fun a => algebraMap
          (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
          (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) a)) ''
        insert (wcpaDjP2GenA A x y σ l l' j) (σ '' ↑(Finset.univ \ {l, l'}))) ∧
      (∀ a : A, ψ (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (Localization.AtPrime P)
          (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) a)) =
        algebraMap (MvPolynomial (Fin 3) (IsLocalRing.ResidueField A)) (Localization.AtPrime Q)
          (MvPolynomial.C (IsLocalRing.residue A a))) ∧
      ∀ i : Fin 3, ψ (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (Localization.AtPrime P)
          (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove i))) =
        algebraMap (MvPolynomial (Fin 3) (IsLocalRing.ResidueField A)) (Localization.AtPrime Q)
          (MvPolynomial.X i) :=
by
  haveI hdomA : IsDomain A := wcpa_regular_isDomain A wcpa_rs_quotient_regular inferInstance



  have hgm : ∀ k, wcpaDjP2GenA A x y σ l l' k ∈ IsLocalRing.maximalIdeal A := by
    intro k
    rw [← hmax]
    apply Ideal.subset_span
    fin_cases k <;> simp [wcpaDjP2GenA]
  have hlin : LinearIndependent (IsLocalRing.ResidueField A)
      (fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨wcpaDjP2GenA A x y σ l l' k, hgm k⟩) := by
    obtain ⟨v, hv⟩ : ∃ v : Fin (n + 2) → A, v = Fin.cons x (Fin.cons y σ : Fin (n + 1) → A) :=
      ⟨_, rfl⟩
    have hvr : Set.range v = {x, y} ∪ Set.range σ := by
      rw [hv, Fin.range_cons, Fin.range_cons]
      ext z
      simp only [Set.mem_insert_iff, Set.mem_union, Set.mem_singleton_iff]
      tauto
    have hvm : ∀ i, v i ∈ IsLocalRing.maximalIdeal A := fun i => by
      rw [← hmax, ← hvr]
      exact Ideal.subset_span ⟨i, rfl⟩
    obtain ⟨w, hw⟩ : ∃ w : Fin (n + 2) → IsLocalRing.maximalIdeal A, ∀ i, (w i : A) = v i :=
      ⟨fun i => ⟨v i, hvm i⟩, fun _ => rfl⟩
    have hwv : ⇑(IsLocalRing.maximalIdeal A).subtype ∘ w = v := funext fun i => hw i
    have hspan : Submodule.span A (Set.range w) = ⊤ := by
      apply Submodule.map_injective_of_injective (IsLocalRing.maximalIdeal A).injective_subtype
      rw [Submodule.map_span, Submodule.map_subtype_top, ← Set.range_comp, hwv]
      show Ideal.span (Set.range v) = _
      rw [hvr, hmax]
    have hcot : Submodule.span (IsLocalRing.ResidueField A)
        (Set.range ((IsLocalRing.maximalIdeal A).toCotangent ∘ w)) = ⊤ := by
      rw [Set.range_comp]
      exact IsLocalRing.CotangentSpace.span_image_eq_top_iff.mpr hspan
    have h3 : Submodule.spanFinrank (IsLocalRing.maximalIdeal A) = n + 2 := by
      have h2 : ((Submodule.spanFinrank (IsLocalRing.maximalIdeal A) : ℕ) : WithBot ℕ∞) =
          ((n + 2 : ℕ) : WithBot ℕ∞) := by
        rw [hdim]
        exact IsRegularLocalRing.spanFinrank_maximalIdeal
      exact_mod_cast h2
    have hfr : Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.maximalIdeal A).Cotangent =
        n + 2 := by
      calc Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.maximalIdeal A).Cotangent
          = Module.finrank (IsLocalRing.ResidueField A) (IsLocalRing.CotangentSpace A) := rfl
        _ = Submodule.spanFinrank (IsLocalRing.maximalIdeal A) :=
          (IsLocalRing.spanFinrank_maximalIdeal_eq_finrank_cotangentSpace A).symm
        _ = n + 2 := h3
    have hlinv : LinearIndependent (IsLocalRing.ResidueField A)
        ((IsLocalRing.maximalIdeal A).toCotangent ∘ w) :=
      linearIndependent_of_top_le_span_of_card_eq_finrank hcot.ge
        (by rw [Fintype.card_fin, hfr])
    obtain ⟨ι, hιdef⟩ : ∃ ι : Fin (3 + 1) → Fin (n + 2),
        ι = ![0, (0 : Fin (n + 1)).succ, l.succ.succ, l'.succ.succ] := ⟨_, rfl⟩
    have hι : Function.Injective ι := by
      have hl : (l : ℕ) ≠ l' := fun h => hll' (Fin.ext h)
      rw [hιdef]
      intro a b h
      fin_cases a <;> fin_cases b <;> simp [Fin.ext_iff, Fin.val_succ] at h ⊢ <;> omega
    have hvι : ∀ k, v (ι k) = wcpaDjP2GenA A x y σ l l' k := by
      intro k
      rw [hv, hιdef]
      fin_cases k <;> simp [wcpaDjP2GenA]
    have h4 := hlinv.comp ι hι
    convert h4 using 1
    funext k
    simp only [Function.comp_apply]
    congr 1
    exact Subtype.ext ((hvι k).symm.trans (hw (ι k)).symm)



  obtain ⟨m, eS, hrange, hm⟩ : ∃ (m : ℕ) (eS : Fin m → Fin n),
      Set.range eS = ↑(Finset.univ \ ({l, l'} : Finset (Fin n))) ∧ m = n - 2 :=
    ⟨(Finset.univ \ ({l, l'} : Finset (Fin n))).card,
      ⇑((Finset.univ \ ({l, l'} : Finset (Fin n))).orderEmbOfFin rfl),
      Finset.range_orderEmbOfFin _ rfl,
      by rw [Finset.card_univ_diff, Finset.card_pair hll', Fintype.card_fin]⟩
  have hn2 : 2 ≤ n := by
    have := Finset.card_le_univ ({l, l'} : Finset (Fin n))
    rw [Finset.card_pair hll', Fintype.card_fin] at this
    exact this
  have hsum : 3 + 1 + m = n + 2 := by omega



  have hI1 : IsLocalRing.maximalIdeal A = Ideal.span (Set.range (wcpaDjP2GenA A x y σ l l')) ⊔
      Ideal.span (Set.range (σ ∘ eS)) := by
    rw [← hmax]
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro z ((rfl | rfl) | ⟨o, rfl⟩)
      · exact Ideal.mem_sup_left (Ideal.subset_span ⟨0, rfl⟩)
      · exact Ideal.mem_sup_left (Ideal.subset_span ⟨1, rfl⟩)
      · by_cases ho : o = l
        · rw [ho]
          exact Ideal.mem_sup_left (Ideal.subset_span ⟨2, rfl⟩)
        · by_cases ho' : o = l'
          · rw [ho']
            exact Ideal.mem_sup_left (Ideal.subset_span ⟨3, rfl⟩)
          · have hoS : o ∈ Set.range eS := by
              rw [hrange]
              simp [ho, ho']
            obtain ⟨i, rfl⟩ := hoS
            exact Ideal.mem_sup_right (Ideal.subset_span ⟨i, rfl⟩)
    · apply sup_le
      · apply Ideal.span_mono
        rintro _ ⟨k, rfl⟩
        fin_cases k <;> simp [wcpaDjP2GenA]
      · apply Ideal.span_mono
        rintro _ ⟨i, rfl⟩
        exact Or.inr ⟨eS i, rfl⟩
  have hI2 : ∀ (E : Type u) [CommRing E] (φ : A →+* E) (zE : Fin (3 + 1) → E),
      (∀ k, φ (wcpaDjP2GenA A x y σ l l' k) = φ (wcpaDjP2GenA A x y σ l l' j) * zE k) →
      (IsLocalRing.maximalIdeal A).map φ =
        Ideal.span (φ '' insert (wcpaDjP2GenA A x y σ l l' j) (σ '' ↑(Finset.univ \ {l, l'}))) := by
    intro E _ φ zE hrel
    rw [hI1, Ideal.map_sup, Ideal.map_span, Ideal.map_span, Set.image_insert_eq, Ideal.span_insert,
      ← hrange, Set.range_comp]
    congr 1
    apply le_antisymm
    · rw [Ideal.span_le]
      rintro _ ⟨_, ⟨k, rfl⟩, rfl⟩
      rw [hrel k]
      exact Ideal.mul_mem_right _ _ (Ideal.subset_span (Set.mem_singleton _))
    · rw [Ideal.span_le, Set.singleton_subset_iff]
      exact Ideal.subset_span ⟨_, ⟨j, rfl⟩, rfl⟩



  haveI hlocA : IsLocalization.AtPrime A (IsLocalRing.maximalIdeal A) :=
    IsLocalization.of_le_isUnit (fun z hz => (IsUnit.mem_submonoid_iff z).mpr
      (IsLocalRing.notMem_maximalIdeal.mp hz))
  have key3 : ∀ (r : ℕ) (f : Fin (r + 1) → A) (a : Fin (r + 1))
      (hf : ∀ k, f k ∈ IsLocalRing.maximalIdeal A),
      LinearIndependent (IsLocalRing.ResidueField A)
        (fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨f k, hf k⟩) →
      ∀ (P : Ideal (wcpaDjChartAlg A f a)) [P.IsPrime],
      P.comap (algebraMap A (wcpaDjChartAlg A f a)) = IsLocalRing.maximalIdeal A →
      ∀ (φ : A →+* Localization.AtPrime P),
      φ = (algebraMap (wcpaDjChartAlg A f a) (Localization.AtPrime P)).comp
        (algebraMap A (wcpaDjChartAlg A f a)) →
      ∀ (zE : Fin (r + 1) → Localization.AtPrime P),
      zE = (fun k => algebraMap (wcpaDjChartAlg A f a) (Localization.AtPrime P)
        (wcpaDjChartGen A f a k)) →
      IsNoetherianRing (Localization.AtPrime P) ∧
      φ (f a) ∈ nonZeroDivisors (Localization.AtPrime P) ∧
      (∀ c : A, φ c ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P) ↔
        c ∈ IsLocalRing.maximalIdeal A) ∧
      zE a = 1 ∧ (∀ k, φ (f k) = φ (f a) * zE k) ∧
      (∀ b : Localization.AtPrime P, ∃ G H : MvPolynomial (Fin (r + 1)) A,
        IsUnit (MvPolynomial.eval₂ φ zE H) ∧ b * MvPolynomial.eval₂ φ zE H =
          MvPolynomial.eval₂ φ zE G) ∧
      (∀ G : MvPolynomial (Fin (r + 1)) A, MvPolynomial.eval₂ φ zE G = 0 →
        G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range f)) ⊔
          Ideal.span {MvPolynomial.X a - 1}) := by
    intro r f a hf hlinf P _ hPc φ hφ zE hzE
    have hfa : f a ≠ 0 := by
      intro h0
      apply hlinf.ne_zero a
      have h00 : (⟨f a, hf a⟩ : IsLocalRing.maximalIdeal A) = 0 := Subtype.ext h0
      rw [h00, map_zero]
    obtain ⟨hEdom, hEnoeth, hφinj, hφloc, yv, hy1, hyrel, hyfrac⟩ :=
      wcpa_dj_scr_chart_present A (IsLocalRing.maximalIdeal A) A r f a P
        (Localization.AtPrime P) φ hfa hPc (fun c => by rw [hφ]; rfl)
    haveI := hEdom
    have hrelC : ∀ k, wcpaDjChartGen A f a k * algebraMap A (wcpaDjChartAlg A f a) (f a) =
        algebraMap A (wcpaDjChartAlg A f a) (f k) := fun k =>
      Subtype.ext (IsLocalization.mk'_spec _ _ _)
    have hzrel : ∀ k, φ (f k) = φ (f a) * zE k := by
      intro k
      rw [hφ, hzE]
      show algebraMap (wcpaDjChartAlg A f a) (Localization.AtPrime P)
          (algebraMap A (wcpaDjChartAlg A f a) (f k)) =
        algebraMap (wcpaDjChartAlg A f a) (Localization.AtPrime P)
          (algebraMap A (wcpaDjChartAlg A f a) (f a)) *
        algebraMap (wcpaDjChartAlg A f a) (Localization.AtPrime P) (wcpaDjChartGen A f a k)
      rw [← map_mul, mul_comm, hrelC]
    have hφa : φ (f a) ≠ 0 := (map_ne_zero_iff φ hφinj).mpr hfa
    have hyrel' : ∀ k, φ (f k) = φ (f a) * yv k := hyrel
    have hyz : yv = zE := funext fun k =>
      mul_left_cancel₀ hφa ((hyrel' k).symm.trans (hzrel k))
    subst hyz
    have hw := wcpa_dj_scr_weakly_regular A (r + 1) (fun k => ⟨f k, hf k⟩) hlinf
    have hq := wcpa_dj_scr_quasi_regular A (r + 1) f hw
    have hker := wcpa_dj_scr_chart_kernel A (Localization.AtPrime P) r f a φ yv hφinj
      (fun b hb => (mul_eq_zero.mp hb).resolve_left hφa) hy1 hzrel hq
    exact ⟨hEnoeth, mem_nonZeroDivisors_of_ne_zero hφa, hφloc, hy1, hzrel, hyfrac, hker⟩



  have key5 : ∀ (E : Type u) [CommRing E] [IsLocalRing E] (r : ℕ) (f : Fin (r + 1) → A)
      (a : Fin (r + 1)) (φ : A →+* E) (zE : Fin (r + 1) → E),
      (∀ k, f k ∈ IsLocalRing.maximalIdeal A) →
      (∀ c : A, φ c ∈ IsLocalRing.maximalIdeal E ↔ c ∈ IsLocalRing.maximalIdeal A) →
      zE a = 1 → (∀ k, φ (f k) = φ (f a) * zE k) →
      (∀ b : E, ∃ G H : MvPolynomial (Fin (r + 1)) A, IsUnit (MvPolynomial.eval₂ φ zE H) ∧
        b * MvPolynomial.eval₂ φ zE H = MvPolynomial.eval₂ φ zE G) →
      (∀ G : MvPolynomial (Fin (r + 1)) A, MvPolynomial.eval₂ φ zE G = 0 →
        G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range f)) ⊔
          Ideal.span {MvPolynomial.X a - 1}) →
      ∃ (Q : Ideal (MvPolynomial (Fin r) (IsLocalRing.ResidueField A))) (_ : Q.IsPrime)
        (ψ : E →+* Localization.AtPrime Q), Function.Surjective ψ ∧
        RingHom.ker ψ = (IsLocalRing.maximalIdeal A).map φ ∧
        (∀ c : A, ψ (φ c) = algebraMap (MvPolynomial (Fin r) (IsLocalRing.ResidueField A))
          (Localization.AtPrime Q) (MvPolynomial.C (IsLocalRing.residue A c))) ∧
        ∀ i : Fin r, ψ (zE (a.succAbove i)) =
          algebraMap (MvPolynomial (Fin r) (IsLocalRing.ResidueField A))
            (Localization.AtPrime Q) (MvPolynomial.X i) := by
    intro E _ _ r f a φ zE hf hloc hz1 hrel hfrac hker
    have hspanle : Ideal.span (Set.range f) ≤ IsLocalRing.maximalIdeal A := by
      rw [Ideal.span_le]
      rintro _ ⟨k, rfl⟩
      exact hf k
    obtain ⟨Q₀, hQ₀, e₀, -, hc, hX⟩ := wcpa_dj_scr_fibre_loc A E r f a φ zE
      (IsLocalRing.maximalIdeal A) hspanle le_rfl hloc hz1 hrel hfrac hker
    refine ⟨Q₀, hQ₀, e₀.toRingHom.comp (Ideal.Quotient.mk _),
      e₀.surjective.comp Ideal.Quotient.mk_surjective, ?_, fun c => hc c, fun i => hX i⟩
    have hk : RingHom.ker (e₀.toRingHom.comp
        (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal A).map φ))) =
        (IsLocalRing.maximalIdeal A).map φ :=
      (RingHom.ker_comp_of_injective (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal A).map φ))
        (f := e₀.toRingHom) e₀.injective).trans Ideal.mk_ker
    exact hk



  have key7 : ∀ (E : Type u) [CommRing E] [IsLocalRing E] [IsNoetherianRing E] (N r m : ℕ)
      (f : Fin (r + 1) → A) (t : Fin m → A) (a : Fin (r + 1)) (φ : A →+* E)
      (zE : Fin (r + 1) → E) (hf : ∀ k, f k ∈ IsLocalRing.maximalIdeal A),
      (N : WithBot ℕ∞) = ringKrullDim A →
      LinearIndependent (IsLocalRing.ResidueField A)
        (fun k => (IsLocalRing.maximalIdeal A).toCotangent ⟨f k, hf k⟩) →
      r + 1 + m = N →
      IsLocalRing.maximalIdeal A = Ideal.span (Set.range f) ⊔ Ideal.span (Set.range t) →
      φ (f a) ∈ nonZeroDivisors E →
      (∀ c : A, φ c ∈ IsLocalRing.maximalIdeal E ↔ c ∈ IsLocalRing.maximalIdeal A) →
      zE a = 1 → (∀ k, φ (f k) = φ (f a) * zE k) →
      (∀ b : E, ∃ G H : MvPolynomial (Fin (r + 1)) A, IsUnit (MvPolynomial.eval₂ φ zE H) ∧
        b * MvPolynomial.eval₂ φ zE H = MvPolynomial.eval₂ φ zE G) →
      (∀ G : MvPolynomial (Fin (r + 1)) A, MvPolynomial.eval₂ φ zE G = 0 →
        G ∈ Ideal.map MvPolynomial.C (Ideal.span (Set.range f)) ⊔
          Ideal.span {MvPolynomial.X a - 1}) →
      IsRegularLocalRing E ∧ ∀ (L : Type u) [CommRing L] (ψ : E →+* L),
        Function.Surjective ψ → RingHom.ker ψ = (IsLocalRing.maximalIdeal A).map φ →
        ringKrullDim E = ringKrullDim L + ((m + 1 : ℕ) : WithBot ℕ∞) := by
    intro E _ _ _ N r m f t a φ zE hf hN hlinf hrm hI hnzd hloc hz1 hrel hfrac hker
    have hJle : Ideal.span (Set.range f) ≤ IsLocalRing.maximalIdeal A := by
      rw [Ideal.span_le]
      rintro _ ⟨k, rfl⟩
      exact hf k

    haveI hAJ : IsRegularLocalRing (A ⧸ Ideal.span (Set.range f)) :=
      (wcpa_rs_quotient_regular A (r + 1) (fun k => ⟨f k, hf k⟩) hlinf).1

    have hwr := wcpa_dj_sfp_quot_regseq A N r m f t inferInstance hN hf hlinf hrm hI

    obtain ⟨Q', hQ', e', hQ'c, he', -⟩ := wcpa_dj_scr_fibre_loc A E r f a φ zE
      (Ideal.span (Set.range f)) le_rfl hJle hloc hz1 hrel hfrac hker
    haveI := hQ'

    have hL'reg : IsRegularLocalRing (Localization.AtPrime Q') :=
      wcpa_dj_scr_poly_loc_regular (A ⧸ Ideal.span (Set.range f)) r Q' hAJ
        (hQ'c.trans (IsLocalRing.map_maximalIdeal_of_surjective _ Ideal.Quotient.mk_surjective))

    haveI hE1 : IsRegularLocalRing (E ⧸ (Ideal.span (Set.range f)).map φ) :=
      @IsRegularLocalRing.of_ringEquiv (Localization.AtPrime Q') _ hL'reg _ _ e'.symm

    have hJφ : (Ideal.span (Set.range f)).map φ = Ideal.span {φ (f a)} := by
      rw [Ideal.map_span]
      apply le_antisymm
      · rw [Ideal.span_le]
        rintro _ ⟨_, ⟨k, rfl⟩, rfl⟩
        rw [hrel k]
        exact Ideal.mul_mem_right _ _ (Ideal.subset_span (Set.mem_singleton _))
      · rw [Ideal.span_le, Set.singleton_subset_iff]
        exact Ideal.subset_span ⟨f a, ⟨a, rfl⟩, rfl⟩

    obtain ⟨tD, htD⟩ : ∃ tD : Fin m → E ⧸ (Ideal.span (Set.range f)).map φ,
        ∀ i, tD i = Ideal.Quotient.mk _ (φ (t i)) := ⟨_, fun _ => rfl⟩
    have htDm : ∀ i, tD i ∈ IsLocalRing.maximalIdeal (E ⧸ (Ideal.span (Set.range f)).map φ) := by
      intro i
      rw [htD, ← IsLocalRing.map_maximalIdeal_of_surjective
        (Ideal.Quotient.mk ((Ideal.span (Set.range f)).map φ)) Ideal.Quotient.mk_surjective]
      apply Ideal.mem_map_of_mem
      rw [hloc, hI]
      exact Ideal.mem_sup_right (Ideal.subset_span ⟨i, rfl⟩)
    have hdim1 := wcpa_dj_sfp_regseq_dim (A ⧸ Ideal.span (Set.range f)) r m
      (fun i => Ideal.Quotient.mk (Ideal.span (Set.range f)) (t i)) Q'
      (E ⧸ (Ideal.span (Set.range f)).map φ) e' tD hwr
      (fun i => by rw [htD]; exact he' (t i)) htDm

    have hmapt : Ideal.map φ (Ideal.span (Set.range t)) = Ideal.span (Set.range (φ ∘ t)) := by
      rw [Ideal.map_span, Set.range_comp]
    have hspan_tD : Ideal.span (Set.range tD) =
        (Ideal.span (Set.range (φ ∘ t))).map
          (Ideal.Quotient.mk ((Ideal.span (Set.range f)).map φ)) := by
      rw [Ideal.map_span (Ideal.Quotient.mk ((Ideal.span (Set.range f)).map φ)), ← Set.range_comp]
      exact congrArg (fun g => Ideal.span (Set.range g)) (funext htD)
    have hsup : (Ideal.span (Set.range f)).map φ ⊔ Ideal.span (Set.range (φ ∘ t)) =
        (IsLocalRing.maximalIdeal A).map φ := by
      rw [hI, Ideal.map_sup, hmapt]
    have hdimq : ringKrullDim ((E ⧸ (Ideal.span (Set.range f)).map φ) ⧸ Ideal.span (Set.range tD)) =
        ringKrullDim (E ⧸ (IsLocalRing.maximalIdeal A).map φ) :=
      ringKrullDim_eq_of_ringEquiv ((Ideal.quotEquivOfEq hspan_tD).trans
        ((DoubleQuot.quotQuotEquivQuotSup _ _).trans (Ideal.quotEquivOfEq hsup)))

    haveI hE2 : IsRegularLocalRing (E ⧸ Ideal.span {φ (f a)}) :=
      IsRegularLocalRing.of_ringEquiv (Ideal.quotEquivOfEq hJφ)
    obtain ⟨d, hd⟩ : ∃ d : ℕ, ringKrullDim (E ⧸ Ideal.span {φ (f a)}) = (d : WithBot ℕ∞) :=
      ⟨_, IsRegularLocalRing.spanFinrank_maximalIdeal.symm⟩
    have hmem : φ (f a) ∈ IsLocalRing.maximalIdeal E := (hloc _).mpr (hf a)
    obtain ⟨hEreg, hEdim⟩ := wc_odp_regular_lift_nzd E (φ (f a)) d hmem hnzd hE2 hd
    refine ⟨hEreg, ?_⟩

    intro L _ ψ hψ hkerψ
    have hdimL : ringKrullDim (E ⧸ (IsLocalRing.maximalIdeal A).map φ) = ringKrullDim L :=
      ringKrullDim_eq_of_ringEquiv ((Ideal.quotEquivOfEq hkerψ.symm).trans
        (RingHom.quotientKerEquivOfSurjective hψ))
    calc ringKrullDim E = ((d + 1 : ℕ) : WithBot ℕ∞) := hEdim
      _ = ringKrullDim (E ⧸ Ideal.span {φ (f a)}) + 1 := by
          rw [hd, Nat.cast_add, Nat.cast_one]
      _ = ringKrullDim (E ⧸ (Ideal.span (Set.range f)).map φ) + 1 := by
          rw [ringKrullDim_eq_of_ringEquiv (Ideal.quotEquivOfEq hJφ)]
      _ = ringKrullDim (E ⧸ (IsLocalRing.maximalIdeal A).map φ) + (m : WithBot ℕ∞) + 1 := by
          rw [← hdimq, hdim1]
      _ = ringKrullDim L + ((m + 1 : ℕ) : WithBot ℕ∞) := by
          rw [hdimL, add_assoc, Nat.cast_add, Nat.cast_one]



  obtain ⟨hEnoeth, hnzd, hloc, hz1, hrel, hfrac, hker⟩ :=
    key3 3 (wcpaDjP2GenA A x y σ l l') j hgm hlin P hP _ rfl _ rfl
  haveI := hEnoeth
  obtain ⟨Q, hQ, ψ, hsurj, hkerψ, h5, h6⟩ :=
    key5 (Localization.AtPrime P) 3 (wcpaDjP2GenA A x y σ l l') j _ _ hgm hloc hz1 hrel hfrac hker
  have h7 :=
    key7 (Localization.AtPrime P) (n + 2) 3 m (wcpaDjP2GenA A x y σ l l') (σ ∘ eS) j
      ((algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)).comp
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)))
      (fun k => algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j k)) hgm hdim
      hlin hsum hI1 hnzd hloc hz1 hrel hfrac hker
  haveI := hQ
  refine ⟨Q, hQ, ψ, h7.1, ?_, hsurj, ?_, h5, h6⟩
  · rw [h7.2 _ ψ hsurj hkerψ]
    have hmn : m + 1 = n - 1 := by omega
    rw [hmn]
  · rw [hkerψ]
    exact hI2 _ _ _ hrel

theorem wcpa_dj_rtsxc_p2_sigma_node_local (E : Type u) [CommRing E] [IsRegularLocalRing E]
    (κ : Type u) [Field κ] (Q : Ideal (MvPolynomial (Fin 3) κ)) [Q.IsPrime]
    (ψ : E →+* Localization.AtPrime Q) (z : Fin 3 → E) (n : ℕ) (s : Fin n → E)
    (b : Fin n → ℕ) (l₀ l₁ : Fin n) (w : E)
    (hw : IsUnit w) (hl : l₀ ≠ l₁) (hb₀ : b l₀ = 1) (hb₁ : b l₁ = 1)
    (hψ : Function.Surjective ψ)
    (hz : ∀ i, ψ (z i) = algebraMap (MvPolynomial (Fin 3) κ) (Localization.AtPrime Q)
      (MvPolynomial.X i))
    (hker : RingHom.ker ψ = Ideal.span (insert (s l₀) (s '' ↑(Finset.univ \ {l₀, l₁}))))
    (hdimE : ringKrullDim E =
      ringKrullDim (Localization.AtPrime Q) + ((n - 1 : ℕ) : WithBot ℕ∞))
    (hs : s l₁ = s l₀ * z 2)
    (hz0 : z 0 ∈ IsLocalRing.maximalIdeal E) (hz1 : z 1 ∈ IsLocalRing.maximalIdeal E)
    (B : Type u) [CommRing B] [IsLocalRing B]
    (Θ : E →+* B) (hΘs : Function.Surjective Θ)
    (hΘk : RingHom.ker Θ =
      Ideal.span {z 0 * z 1 - w * (∏ o ∈ Finset.univ \ {l₀, l₁}, s o ^ b o) * z 2}) :
    wcpaDjRtsxcNd B (fun m => Θ (s m)) (Θ (s l₀)) {l₀, l₁} b :=
by
  classical
  haveI : IsNoetherianRing E := inferInstance
  haveI hLreg : IsRegularLocalRing (Localization.AtPrime Q) := wcpa_dj_rss_poly_field_regular κ 3 Q
  haveI : IsLocalHom ψ := Function.Surjective.isLocalHom ψ hψ

  have hmemE : ∀ a : E, a ∈ IsLocalRing.maximalIdeal E ↔
      ψ a ∈ IsLocalRing.maximalIdeal (Localization.AtPrime Q) := by
    intro a
    rw [IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
      mem_nonunits_iff, isUnit_map_iff ψ a]
  have hkerle : RingHom.ker ψ ≤ IsLocalRing.maximalIdeal E := by
    intro a ha
    rw [hmemE, RingHom.mem_ker.mp ha]
    exact zero_mem _
  have hn1 : 0 < n := Fin.pos l₀
  have hXQ : ∀ i, z i ∈ IsLocalRing.maximalIdeal E →
      (MvPolynomial.X i : MvPolynomial (Fin 3) κ) ∈ Q := by
    intro i hi
    have h := (hmemE (z i)).mp hi
    rw [hz i] at h
    exact (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q _).mp h
  have hSmem' : ∀ m, m ∈ (↑(Finset.univ \ {l₀, l₁}) : Set (Fin n)) → m ≠ l₀ ∧ m ≠ l₁ := by
    intro m hm
    rw [Finset.mem_coe, Finset.mem_sdiff, Finset.mem_insert, Finset.mem_singleton] at hm
    exact ⟨fun h => hm.2 (Or.inl h), fun h => hm.2 (Or.inr h)⟩
  have hSmem : ∀ m, m ≠ l₀ → m ≠ l₁ → m ∈ (↑(Finset.univ \ {l₀, l₁}) : Set (Fin n)) := by
    intro m h0 h1
    rw [Finset.mem_coe, Finset.mem_sdiff, Finset.mem_insert, Finset.mem_singleton]
    exact ⟨Finset.mem_univ _, by rintro (h | h); exacts [h0 h, h1 h]⟩

  have hfib : ∀ I : Finset (Fin 3), (∀ i ∈ I, z i ∈ IsLocalRing.maximalIdeal E) →
      ∃ (q : ℕ) (u : Fin q → E),
        ((I.card + q : ℕ) : WithBot ℕ∞) = ringKrullDim (Localization.AtPrime Q) ∧
        IsLocalRing.maximalIdeal E = RingHom.ker ψ ⊔ Ideal.span (z '' (I : Set (Fin 3))) ⊔
          Ideal.span (Set.range u) := by
    intro I hI
    have hsum : ∀ j : Fin (3 + 1), (∑ l, MvPolynomial.C ((1 : Matrix (Fin (3 + 1)) (Fin (3 + 1)) κ) j l) *
        Fin.insertNth (α := fun _ => MvPolynomial (Fin 3) κ) 0 1 MvPolynomial.X l) =
        (Fin.cons 1 MvPolynomial.X : Fin (3 + 1) → MvPolynomial (Fin 3) κ) j := by
      intro j
      rw [Fin.insertNth_zero']
      simp [Matrix.one_apply]
    have hQmem : ∀ j ∈ I.map (Fin.succEmb 3),
        (Fin.cons 1 MvPolynomial.X : Fin (3 + 1) → MvPolynomial (Fin 3) κ) j ∈ Q := by
      intro j hj
      obtain ⟨i, hi, rfl⟩ := Finset.mem_map.mp hj
      simp only [Fin.coe_succEmb, Fin.cons_succ]
      exact hXQ i (hI i hi)
    have hind := wcpa_dj_sfp_fibre_cot_indep κ 3 0 1 Q (I.map (Fin.succEmb 3))
      (by rw [Matrix.det_one]; exact isUnit_one) (fun j hj => by rw [hsum j]; exact hQmem j hj)
    obtain ⟨q, u₀, hcard, hu₀, hmL⟩ := wcpa_dj_sfp_cot_extend (Localization.AtPrime Q) (3 + 1)
      (fun j => algebraMap (MvPolynomial (Fin 3) κ) (Localization.AtPrime Q)
        ((Fin.cons 1 MvPolynomial.X : Fin (3 + 1) → MvPolynomial (Fin 3) κ) j))
      (I.map (Fin.succEmb 3))
      (fun j hj => (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime Q) Q _).mpr
        (hQmem j hj))
      (fun ν hν j hj => hind ν (by simp only [hsum]; exact hν) j hj)
    have hcompat : ∀ j, (RingHom.quotientKerEquivOfSurjective hψ)
        (Ideal.Quotient.mk (RingHom.ker ψ) ((Fin.cons 1 z : Fin (3 + 1) → E) j)) =
        (fun j => algebraMap (MvPolynomial (Fin 3) κ) (Localization.AtPrime Q)
          ((Fin.cons 1 MvPolynomial.X : Fin (3 + 1) → MvPolynomial (Fin 3) κ) j)) j := by
      intro j
      rw [RingHom.quotientKerEquivOfSurjective_apply_mk]
      refine Fin.cases ?_ (fun i => ?_) j
      · simp only [Fin.cons_zero, map_one]
      · simp only [Fin.cons_succ, hz i]
    have hvmem : ∀ j ∈ I.map (Fin.succEmb 3),
        (Fin.cons 1 z : Fin (3 + 1) → E) j ∈ IsLocalRing.maximalIdeal E := by
      intro j hj
      obtain ⟨i, hi, rfl⟩ := Finset.mem_map.mp hj
      simp only [Fin.coe_succEmb, Fin.cons_succ]
      exact hI i hi
    obtain ⟨u, hu⟩ := wcpa_dj_sfp_lift_gens E (Localization.AtPrime Q) (RingHom.ker ψ)
      (RingHom.quotientKerEquivOfSurjective hψ) (3 + 1) (Fin.cons 1 z)
      (fun j => algebraMap (MvPolynomial (Fin 3) κ) (Localization.AtPrime Q)
        ((Fin.cons 1 MvPolynomial.X : Fin (3 + 1) → MvPolynomial (Fin 3) κ) j))
      (I.map (Fin.succEmb 3)) q u₀ hkerle hcompat hvmem hu₀ hmL
    have himg : (Fin.cons 1 z : Fin (3 + 1) → E) '' ↑(I.map (Fin.succEmb 3)) = z '' ↑I := by
      rw [Finset.coe_map, Set.image_image]
      simp
    refine ⟨q, u, ?_, ?_⟩
    · rw [← IsRegularLocalRing.spanFinrank_maximalIdeal, ← hcard, Finset.card_map]
    · rw [hu, himg]

  have hpres : ∀ F : E, RingHom.ker Θ = Ideal.span {F} →
      ∃ e' : AdicCompletion (IsLocalRing.maximalIdeal B) B ≃+*
          (AdicCompletion (IsLocalRing.maximalIdeal E) E ⧸
            Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) F}),
        ∀ a : E, e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (Θ a)) =
          Ideal.Quotient.mk _ (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a) := by
    intro F hF
    obtain ⟨Θ₀, hΘ₀⟩ : ∃ Θ₀ : (E ⧸ Ideal.span {F}) ≃+* B,
        ∀ a, Θ₀ (Ideal.Quotient.mk _ a) = Θ a :=
      ⟨(Ideal.quotEquivOfEq hF.symm).trans (RingHom.quotientKerEquivOfSurjective hΘs), fun a => by
        rw [RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
          RingHom.quotientKerEquivOfSurjective_apply_mk]⟩
    haveI : Nontrivial (E ⧸ Ideal.span {F}) := Θ₀.toEquiv.nontrivial
    haveI : IsLocalRing (E ⧸ Ideal.span {F}) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective
    obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_adic_congr B (E ⧸ Ideal.span {F}) Θ₀.symm
    have hsurj : Function.Surjective (algebraMap E (E ⧸ Ideal.span {F})) := by
      rw [Ideal.Quotient.algebraMap_eq]; exact Ideal.Quotient.mk_surjective
    obtain ⟨φ⟩ := wc_hnas_pfc_completion_surj_base_change E (E ⧸ Ideal.span {F}) hsurj
    have hI : (Ideal.span {F}).map (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)) =
        Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) F} := by
      rw [Ideal.map_span, Set.image_singleton]
    let κ₁ := Algebra.TensorProduct.comm E (E ⧸ Ideal.span {F})
      (AdicCompletion (IsLocalRing.maximalIdeal E) E)
    let κ₂ := Algebra.TensorProduct.quotIdealMapEquivTensorQuot
      (AdicCompletion (IsLocalRing.maximalIdeal E) E) (Ideal.span {F})
    refine ⟨ε.trans (φ.symm.toRingEquiv.trans (κ₁.toRingEquiv.trans
      (κ₂.symm.toRingEquiv.trans (Ideal.quotEquivOfEq hI)))), ?_⟩
    intro a
    have h1 : ε (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (Θ a)) =
        algebraMap (E ⧸ Ideal.span {F}) _ (Θ₀.symm (Θ a)) :=
      RingHom.congr_fun hε (Θ a)
    have h1' : Θ₀.symm (Θ a) = Ideal.Quotient.mk _ a := by
      rw [RingEquiv.symm_apply_eq, hΘ₀]
    have h2 : φ.symm (algebraMap (E ⧸ Ideal.span {F})
        (AdicCompletion (IsLocalRing.maximalIdeal (E ⧸ Ideal.span {F})) (E ⧸ Ideal.span {F}))
          (Ideal.Quotient.mk _ a)) =
        (Ideal.Quotient.mk _ a) ⊗ₜ[E] (1 : AdicCompletion (IsLocalRing.maximalIdeal E) E) := by
      rw [AlgEquiv.commutes, Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self,
        RingHom.id_apply]
    have h3 : κ₁ ((Ideal.Quotient.mk (Ideal.span {F}) a) ⊗ₜ[E]
        (1 : AdicCompletion (IsLocalRing.maximalIdeal E) E)) =
        algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a ⊗ₜ[E]
          (1 : E ⧸ Ideal.span {F}) := by
      rw [Algebra.TensorProduct.comm_tmul, ← Ideal.Quotient.algebraMap_eq,
        ← Algebra.TensorProduct.tmul_one_eq_one_tmul]
    have h4 : κ₂.symm (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a ⊗ₜ[E]
          (1 : E ⧸ Ideal.span {F})) =
        Ideal.Quotient.mk _ (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a) := by
      rw [AlgEquiv.symm_apply_eq]
      exact (Algebra.TensorProduct.quotIdealMapEquivTensorQuot_mk _ _ _).symm
    show (Ideal.quotEquivOfEq hI) (κ₂.symm (κ₁ (φ.symm (ε
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (Θ a)))))) = _
    rw [h1, h1', h2, h3, h4, Ideal.quotEquivOfEq_mk]

  have hND : ∀ (G : E) (e' : AdicCompletion (IsLocalRing.maximalIdeal B) B ≃+*
        (AdicCompletion (IsLocalRing.maximalIdeal E) E ⧸
          Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) G})),
      (∀ a : E, e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (Θ a)) =
          Ideal.Quotient.mk _ (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a)) →
      ∀ (τ : Fin n → B) (γ : B) (T : Finset (Fin n)) (ι : Type) [Fintype ι] (x y v : E)
        (σ : ι → E) (b' : ι → ℕ) (κ' : Fin n → Finset ι) (e₀ : ι),
      x * y - v * ∏ c, σ c ^ b' c = G → IsUnit v →
      ((Fintype.card ι + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim E →
      Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal E →
      Associated γ (Θ (σ e₀)) →
      (∀ l, (κ' l).card ≤ 1 ∧ e₀ ∉ κ' l) →
      (∀ l l', l ≠ l' → Disjoint (κ' l) (κ' l')) →
      (∀ l, l ∉ T → Associated (τ l) (Θ (∏ c ∈ κ' l, σ c))) →
      (∀ l, l ∈ T → Associated (τ l) (γ * Θ (∏ c ∈ κ' l, σ c))) →
      (∀ c, b' c ≠ 0 → c = e₀ ∨ ∃ l, c ∈ κ' l ∧ (l ∈ T ∨ b l ≠ 0)) →
      wcpaDjRtsxcNd B τ γ T b := by
    intro G e' he' τ γ T ι _ x y v σ b' κ' e₀ hG hv hdim hmax h4 h5 h6 h7 h8 h9
    obtain ⟨eι⟩ : Nonempty (ι ≃ Fin (Fintype.card ι)) := ⟨Fintype.equivFin ι⟩
    obtain ⟨σ₀, hσ₀⟩ : ∃ σ₀ : Fin (Fintype.card ι) → E, σ₀ = σ ∘ eι.symm := ⟨_, rfl⟩
    obtain ⟨b₀, hb₀⟩ : ∃ b₀ : Fin (Fintype.card ι) → ℕ, b₀ = b' ∘ eι.symm := ⟨_, rfl⟩
    have hprod : ∏ c, σ₀ c ^ b₀ c = ∏ c, σ c ^ b' c := by
      rw [hσ₀, hb₀]
      exact Equiv.prod_comp eι.symm (fun c => σ c ^ b' c)
    have hrangeσ : Set.range σ₀ = Set.range σ := by
      rw [hσ₀]
      exact eι.symm.surjective.range_comp σ
    have hrange : Set.range (Fin.cons x (Fin.cons y σ₀) : Fin (Fintype.card ι + 2) → E) =
        {x, y} ∪ Set.range σ₀ := by
      ext w'
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
    obtain ⟨hreg, hd, hs'⟩ := wcpa_dj_stc_kmnb_completion_params E (Fintype.card ι + 2)
      (Fin.cons x (Fin.cons y σ₀)) hdim (by rw [hrange, hrangeσ]; exact hmax)
    obtain ⟨_, hcomp, -, -⟩ := wc_hnas_completion_local_complete E
    have hspan : Ideal.span ({algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x,
        algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y} ∪
        Set.range (fun c => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ₀ c))) =
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal E) E) := by
      rw [← hs']
      congr 1
      rw [show (fun i => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)
          ((Fin.cons x (Fin.cons y σ₀) : Fin (Fintype.card ι + 2) → E) i)) =
          (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E)) ∘
            (Fin.cons x (Fin.cons y σ₀) : Fin (Fintype.card ι + 2) → E) from rfl,
        Set.range_comp, hrange, Set.image_union, Set.image_insert_eq, Set.image_singleton,
        ← Set.range_comp]
      rfl
    have hI' : Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) G} =
        Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x *
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y -
          algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) v *
          ∏ c, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ₀ c) ^ b₀ c} := by
      rw [← hG, ← hprod]
      simp only [map_sub, map_mul, map_prod, map_pow]
    obtain ⟨e'', he''⟩ : ∃ e'' : AdicCompletion (IsLocalRing.maximalIdeal B) B ≃+*
        (AdicCompletion (IsLocalRing.maximalIdeal E) E ⧸
          Ideal.span {algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x *
            algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y -
            algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) v *
            ∏ c, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ₀ c) ^ b₀ c}),
        ∀ a : E, e'' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (Θ a)) =
          Ideal.Quotient.mk _ (algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) a) :=
      ⟨e'.trans (Ideal.quotEquivOfEq hI'), fun a => by
        rw [RingEquiv.trans_apply, he' a, Ideal.quotEquivOfEq_mk]⟩
    have hf : ∀ c : B, (e''.toRingHom.comp
        (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))) c =
        e'' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) c) := fun c => rfl
    have hσe : σ₀ (eι e₀) = σ e₀ := by
      rw [hσ₀, Function.comp_apply, Equiv.symm_apply_apply]
    have hprodmap : ∀ l, ∏ c ∈ (κ' l).map eι.toEmbedding,
        algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ₀ c) =
        algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (∏ c ∈ κ' l, σ c) := by
      intro l
      rw [Finset.prod_map, map_prod]
      apply Finset.prod_congr rfl
      intro c _
      rw [hσ₀, Equiv.toEmbedding_apply, Function.comp_apply, Equiv.symm_apply_apply]
    refine ⟨Fintype.card ι, AdicCompletion (IsLocalRing.maximalIdeal E) E, inferInstance, hreg,
      hcomp, algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) x,
      algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) y,
      algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) v,
      fun c => algebraMap E (AdicCompletion (IsLocalRing.maximalIdeal E) E) (σ₀ c), b₀, e'',
      fun l => (κ' l).map eι.toEmbedding, eι e₀, hv.map _, hd, hspan, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · have h := h4.map (e''.toRingHom.comp
        (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)))
      rw [hf, hf, he''] at h
      beta_reduce
      rw [hσe]
      exact h
    · intro l
      refine ⟨by rw [Finset.card_map]; exact (h5 l).1, ?_⟩
      rw [Finset.mem_map_equiv, Equiv.symm_apply_apply]
      exact (h5 l).2
    · intro l l' hne
      rw [Finset.disjoint_map]
      exact h6 l l' hne
    · intro l hl
      have h := (h7 l hl).map (e''.toRingHom.comp
        (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)))
      rw [hf, hf, he''] at h
      beta_reduce
      rw [hprodmap l]
      exact h
    · intro l hl
      have h := (h8 l hl).map (e''.toRingHom.comp
        (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)))
      rw [hf, hf, map_mul, map_mul, he''] at h
      beta_reduce
      rw [hprodmap l]
      exact h
    · intro c hc
      rcases h9 (eι.symm c) (by rw [hb₀] at hc; exact hc) with h | ⟨l, hl, hT⟩
      · left
        rw [← h, Equiv.apply_symm_apply]
      · right
        exact ⟨l, by rw [Finset.mem_map_equiv]; exact hl, hT⟩

  obtain ⟨e', he'⟩ := hpres _ hΘk
  by_cases h2 : z 2 ∈ IsLocalRing.maximalIdeal E
  ·
    obtain ⟨q, u, hdimL, hmE⟩ := hfib Finset.univ (fun i _ => by
      fin_cases i
      · exact hz0
      · exact hz1
      · exact h2)
    rw [Finset.card_univ, Fintype.card_fin] at hdimL
    rw [Finset.coe_univ, Set.image_univ] at hmE
    obtain ⟨t, ht⟩ : ∃ t : Fin n ⊕ Fin q → E,
        t = Sum.elim (fun m => if m = l₁ then z 2 else s m) u := ⟨_, rfl⟩
    have ht_inl : ∀ m, t (Sum.inl m) = if m = l₁ then z 2 else s m := by
      intro m; rw [ht]; rfl
    have ht_inr : ∀ k, t (Sum.inr k) = u k := by
      intro k; rw [ht]; rfl
    obtain ⟨β, hβ⟩ : ∃ β : Fin n ⊕ Fin q → ℕ,
        β = Sum.elim (fun m => if m = l₀ then 0 else b m) (fun _ => 0) := ⟨_, rfl⟩
    have hβ_inl : ∀ m, β (Sum.inl m) = if m = l₀ then 0 else b m := by
      intro m; rw [hβ]; rfl
    have hβ_inr : ∀ k, β (Sum.inr k) = 0 := by
      intro k; rw [hβ]; rfl
    obtain ⟨κ', hκ'⟩ : ∃ κ' : Fin n → Finset (Fin n ⊕ Fin q),
        ∀ m, κ' m = if m = l₀ then ∅ else {Sum.inl m} := ⟨_, fun m => rfl⟩
    have hprod1 : ∏ c, t c ^ β c = (∏ o ∈ Finset.univ \ {l₀, l₁}, s o ^ b o) * z 2 := by
      rw [Fintype.prod_sum_type]
      simp only [ht_inl, ht_inr, hβ_inl, hβ_inr, pow_zero, Finset.prod_const_one, mul_one]
      rw [← Finset.prod_sdiff (Finset.subset_univ {l₀, l₁}), Finset.prod_pair hl,
        if_neg hl, if_pos rfl, if_pos rfl, if_neg hl.symm, hb₁, pow_zero, pow_one, one_mul]
      congr 1
      apply Finset.prod_congr rfl
      intro o ho
      have := hSmem' o (Finset.mem_coe.mpr ho)
      rw [if_neg this.2, if_neg this.1]
    have hset1 : ({z 0, z 1} ∪ Set.range t : Set E) =
        insert (s l₀) (s '' ↑(Finset.univ \ {l₀, l₁})) ∪ Set.range z ∪ Set.range u := by
      apply Set.Subset.antisymm
      · rintro x ((rfl | rfl) | ⟨c, rfl⟩)
        · exact Set.mem_union_left _ (Set.mem_union_right _ ⟨0, rfl⟩)
        · exact Set.mem_union_left _ (Set.mem_union_right _ ⟨1, rfl⟩)
        · rcases c with m | k
          · rw [ht_inl]
            by_cases h1 : m = l₁
            · rw [if_pos h1]
              exact Set.mem_union_left _ (Set.mem_union_right _ ⟨2, rfl⟩)
            · rw [if_neg h1]
              by_cases h0 : m = l₀
              · rw [h0]
                exact Set.mem_union_left _ (Set.mem_union_left _ (Set.mem_insert _ _))
              · exact Set.mem_union_left _ (Set.mem_union_left _
                  (Set.mem_insert_of_mem _ ⟨m, hSmem m h0 h1, rfl⟩))
          · rw [ht_inr]
            exact Set.mem_union_right _ ⟨k, rfl⟩
      · rintro x (((rfl | ⟨m, hm, rfl⟩) | ⟨i, rfl⟩) | ⟨k, rfl⟩)
        · exact Set.mem_union_right _ ⟨Sum.inl l₀, by rw [ht_inl, if_neg hl]⟩
        · exact Set.mem_union_right _ ⟨Sum.inl m, by rw [ht_inl, if_neg (hSmem' m hm).2]⟩
        · fin_cases i
          · exact Set.mem_union_left _ (Set.mem_insert _ _)
          · exact Set.mem_union_left _ (Set.mem_insert_of_mem _ rfl)
          · exact Set.mem_union_right _ ⟨Sum.inl l₁, by rw [ht_inl, if_pos rfl]; try rfl⟩
        · exact Set.mem_union_right _ ⟨Sum.inr k, by rw [ht_inr]⟩
    refine hND _ e' he' (fun m => Θ (s m)) (Θ (s l₀)) {l₀, l₁} (Fin n ⊕ Fin q) (z 0) (z 1) w t β
      κ' (Sum.inl l₀) ?_ hw ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    · rw [hprod1]; ring
    · rw [Fintype.card_sum, Fintype.card_fin, Fintype.card_fin, hdimE, ← hdimL, ← Nat.cast_add]
      congr 1
      omega
    · rw [hmE, hker, ← Ideal.span_union, ← Ideal.span_union, hset1]
    · rw [ht_inl, if_neg hl]
    · intro l
      by_cases h : l = l₀
      · rw [hκ', if_pos h]
        exact ⟨by simp, by simp⟩
      · rw [hκ', if_neg h]
        refine ⟨by simp, ?_⟩
        rw [Finset.mem_singleton]
        intro h'
        exact h (Sum.inl_injective h').symm
    · intro l l' hne
      rw [hκ', hκ']
      split_ifs <;> first
        | exact Finset.disjoint_empty_left _
        | exact Finset.disjoint_empty_right _
        | exact Finset.disjoint_singleton.mpr (fun h => hne (Sum.inl_injective h))
    · intro l hlT
      have h0 : l ≠ l₀ := fun h => hlT (by rw [h]; exact Finset.mem_insert_self _ _)
      have h1 : l ≠ l₁ := fun h => hlT (by
        rw [h]; exact Finset.mem_insert_of_mem (Finset.mem_singleton_self _))
      rw [hκ', if_neg h0, Finset.prod_singleton, ht_inl, if_neg h1]
    · intro l hlT
      rcases Finset.mem_insert.mp hlT with rfl | h
      · rw [hκ', if_pos rfl, Finset.prod_empty, map_one, mul_one]
      · rw [Finset.mem_singleton] at h
        subst h
        rw [hκ', if_neg hl.symm, Finset.prod_singleton, ht_inl, if_pos rfl]
        show Associated (Θ (s l)) _
        rw [hs, map_mul]
    · intro c hc
      rcases c with m | k
      · rw [hβ_inl] at hc
        have hm0 : m ≠ l₀ := fun h => hc (if_pos h)
        rw [if_neg hm0] at hc
        right
        refine ⟨m, ?_, Or.inr hc⟩
        rw [hκ', if_neg hm0]
        exact Finset.mem_singleton_self _
      · exact absurd (hβ_inr k) hc
  ·
    have hu2 : IsUnit (z 2) := IsLocalRing.notMem_maximalIdeal.mp h2
    obtain ⟨q, u, hdimL, hmE⟩ := hfib {0, 1} (fun i hi => by
      rcases Finset.mem_insert.mp hi with rfl | hi
      · exact hz0
      · rw [Finset.mem_singleton.mp hi]; exact hz1)
    rw [Finset.card_pair (by decide : (0 : Fin 3) ≠ 1)] at hdimL
    rw [Finset.coe_pair, Set.image_pair] at hmE
    obtain ⟨t, ht⟩ : ∃ t : {o : Fin n // o ≠ l₁} ⊕ Fin q → E,
        t = Sum.elim (fun o => s o.1) u := ⟨_, rfl⟩
    have ht_inl : ∀ o, t (Sum.inl o) = s o.1 := by
      intro o; rw [ht]; rfl
    have ht_inr : ∀ k, t (Sum.inr k) = u k := by
      intro k; rw [ht]; rfl
    obtain ⟨β, hβ⟩ : ∃ β : {o : Fin n // o ≠ l₁} ⊕ Fin q → ℕ,
        β = Sum.elim (fun o => if o.1 = l₀ then 0 else b o.1) (fun _ => 0) := ⟨_, rfl⟩
    have hβ_inl : ∀ o, β (Sum.inl o) = if o.1 = l₀ then 0 else b o.1 := by
      intro o; rw [hβ]; rfl
    have hβ_inr : ∀ k, β (Sum.inr k) = 0 := by
      intro k; rw [hβ]; rfl
    obtain ⟨κ', hκ'⟩ : ∃ κ' : Fin n → Finset ({o : Fin n // o ≠ l₁} ⊕ Fin q),
        ∀ m, κ' m = if h : (m = l₀ ∨ m = l₁) then ∅
          else {Sum.inl ⟨m, fun h' => h (Or.inr h')⟩} := ⟨_, fun m => rfl⟩
    have hκT : ∀ m, (m = l₀ ∨ m = l₁) → κ' m = ∅ := fun m h => by rw [hκ', dif_pos h]
    have hκS : ∀ m (h : ¬(m = l₀ ∨ m = l₁)),
        κ' m = {Sum.inl ⟨m, fun h' => h (Or.inr h')⟩} := fun m h => by rw [hκ', dif_neg h]
    have e1 : (Finset.univ.erase l₁).erase l₀ = Finset.univ \ {l₀, l₁} := by
      ext o
      simp only [Finset.mem_erase, Finset.mem_univ, Finset.mem_sdiff, Finset.mem_insert,
        Finset.mem_singleton, not_or, and_true, true_and] <;> tauto
    have hprod2 : ∏ c, t c ^ β c = ∏ o ∈ Finset.univ \ {l₀, l₁}, s o ^ b o := by
      rw [Fintype.prod_sum_type]
      simp only [ht_inl, ht_inr, hβ_inl, hβ_inr, pow_zero, Finset.prod_const_one, mul_one]
      have e2 : ∏ o ∈ Finset.univ.erase l₁, s o ^ (if o = l₀ then 0 else b o) =
          ∏ o : {o : Fin n // o ≠ l₁}, s o.1 ^ (if o.1 = l₀ then 0 else b o.1) :=
        Finset.prod_subtype (Finset.univ.erase l₁) (fun o => by simp) _
      rw [← e2, ← Finset.mul_prod_erase _ _ (Finset.mem_erase.mpr ⟨hl, Finset.mem_univ l₀⟩),
        if_pos rfl, pow_zero, one_mul, e1]
      apply Finset.prod_congr rfl
      intro o ho
      rw [if_neg (hSmem' o (Finset.mem_coe.mpr ho)).1]
    have hset2 : ({z 0, z 1} ∪ Set.range t : Set E) =
        insert (s l₀) (s '' ↑(Finset.univ \ {l₀, l₁})) ∪ {z 0, z 1} ∪ Set.range u := by
      apply Set.Subset.antisymm
      · rintro x ((rfl | rfl) | ⟨c, rfl⟩)
        · exact Set.mem_union_left _ (Set.mem_union_right _ (Set.mem_insert _ _))
        · exact Set.mem_union_left _ (Set.mem_union_right _ (Set.mem_insert_of_mem _ rfl))
        · rcases c with o | k
          · rw [ht_inl]
            by_cases h0 : o.1 = l₀
            · rw [h0]
              exact Set.mem_union_left _ (Set.mem_union_left _ (Set.mem_insert _ _))
            · exact Set.mem_union_left _ (Set.mem_union_left _
                (Set.mem_insert_of_mem _ ⟨o.1, hSmem o.1 h0 o.2, rfl⟩))
          · rw [ht_inr]
            exact Set.mem_union_right _ ⟨k, rfl⟩
      · rintro x (((rfl | ⟨m, hm, rfl⟩) | (rfl | rfl)) | ⟨k, rfl⟩)
        · exact Set.mem_union_right _ ⟨Sum.inl ⟨l₀, hl⟩, by rw [ht_inl]⟩
        · exact Set.mem_union_right _ ⟨Sum.inl ⟨m, (hSmem' m hm).2⟩, by rw [ht_inl]⟩
        · exact Set.mem_union_left _ (Set.mem_insert _ _)
        · exact Set.mem_union_left _ (Set.mem_insert_of_mem _ rfl)
        · exact Set.mem_union_right _ ⟨Sum.inr k, by rw [ht_inr]⟩
    refine hND _ e' he' (fun m => Θ (s m)) (Θ (s l₀)) {l₀, l₁} ({o : Fin n // o ≠ l₁} ⊕ Fin q)
      (z 0) (z 1) (w * z 2) t β κ' (Sum.inl ⟨l₀, hl⟩) ?_ (hw.mul hu2) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    · rw [hprod2]; ring
    · rw [Fintype.card_sum, Fintype.card_fin, Fintype.card_subtype_compl, Fintype.card_subtype_eq,
        Fintype.card_fin, hdimE, ← hdimL, ← Nat.cast_add]
      congr 1
      omega
    · rw [hmE, hker, ← Ideal.span_union, ← Ideal.span_union, hset2]
    · rw [ht_inl]
    · intro l
      by_cases h : l = l₀ ∨ l = l₁
      · rw [hκT l h]
        exact ⟨by simp, by simp⟩
      · rw [hκS l h]
        refine ⟨by simp, ?_⟩
        rw [Finset.mem_singleton]
        intro h'
        exact h (Or.inl (congrArg Subtype.val (Sum.inl_injective h')).symm)
    · intro l l' hne
      by_cases h : l = l₀ ∨ l = l₁
      · rw [hκT l h]; exact Finset.disjoint_empty_left _
      · by_cases h' : l' = l₀ ∨ l' = l₁
        · rw [hκT l' h']; exact Finset.disjoint_empty_right _
        · rw [hκS l h, hκS l' h']
          exact Finset.disjoint_singleton.mpr
            (fun h'' => hne (congrArg Subtype.val (Sum.inl_injective h'')))
    · intro l hlT
      have h : ¬(l = l₀ ∨ l = l₁) := by
        rintro (h | h)
        · exact hlT (by rw [h]; exact Finset.mem_insert_self _ _)
        · exact hlT (by rw [h]; exact Finset.mem_insert_of_mem (Finset.mem_singleton_self _))
      rw [hκS l h, Finset.prod_singleton, ht_inl]
    · intro l hlT
      rcases Finset.mem_insert.mp hlT with rfl | h
      · rw [hκT l (Or.inl rfl), Finset.prod_empty, map_one, mul_one]
      · rw [Finset.mem_singleton] at h
        subst h
        rw [hκT l (Or.inr rfl), Finset.prod_empty, map_one, mul_one]
        show Associated (Θ (s l)) _
        rw [hs, map_mul]
        exact associated_mul_unit_left _ _ (hu2.map Θ)
    · intro c hc
      rcases c with o | k
      · rw [hβ_inl] at hc
        have hm0 : o.1 ≠ l₀ := fun h => hc (if_pos h)
        rw [if_neg hm0] at hc
        have h : ¬(o.1 = l₀ ∨ o.1 = l₁) := by
          rintro (h | h)
          · exact hm0 h
          · exact o.2 h
        right
        refine ⟨o.1, ?_, Or.inr hc⟩
        rw [hκS o.1 h]
        exact Finset.mem_singleton.mpr rfl
      · exact absurd (hβ_inr k) hc

theorem wcpa_dj_rtsxc_p2_sigma_node (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l l' : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (hb : b l = 1) (hb' : b l' = 1)
    (j : Fin (3 + 1)) (hj : 2 ≤ (j : ℕ))
    (𝔔 : Ideal (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j))
    [𝔔.IsPrime]
    (h𝔔 : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) c ∈ 𝔔 ↔
        ¬ IsUnit c)
    (hX : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j 0 ∈ 𝔔)
    (hY : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j 1 ∈ 𝔔) :
    wcpaDjRtsxcNd (Localization.AtPrime 𝔔)
      (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j))
      {l, l'} b :=
by
  obtain ⟨P, hPp, Gs, Θ, hΘs, hΘk, hPc, -, -, hG2, hG3, hΘa, hΘz⟩ :=
    wcpa_dj_rtsxc_p2_strict_present A n x y v σ b l l' hv hdim hmax hll' hb hb' j 𝔔 h𝔔
  have := hPp
  obtain ⟨Q, hQp, ψ, hreg, hdimE, hψs, hker, -, hψz⟩ :=
    wcpa_dj_rtsxc_p2_ambient_chart A n x y σ l l' hdim hmax hll' j P hPc
  have := hQp
  have := hreg

  obtain ⟨l₀, l₁, k₂, hpair, hl, hb₀, hb₁, hgj, hgk, hGj, hsa0, hsa1, hsa2, hG⟩ :
      ∃ (l₀ l₁ : Fin n) (k₂ : Fin (3 + 1)), ({l₀, l₁} : Finset (Fin n)) = {l, l'} ∧
        l₀ ≠ l₁ ∧ b l₀ = 1 ∧ b l₁ = 1 ∧
        wcpaDjP2GenA A x y σ l l' j = σ l₀ ∧ wcpaDjP2GenA A x y σ l l' k₂ = σ l₁ ∧
        wcpaDjP2Gen A x y v σ b l l' j =
          Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l₀) ∧
        j.succAbove 0 = 0 ∧ j.succAbove 1 = 1 ∧ j.succAbove 2 = k₂ ∧
        Gs = wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 0 *
            wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j 1 -
          algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
            (v * ∏ o ∈ Finset.univ \ {l, l'}, σ o ^ b o) *
            wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j k₂ := by
    have hj4 := j.isLt
    have h23 : (j : ℕ) = 2 ∨ (j : ℕ) = 3 := by omega
    rcases h23 with h | h
    · have hj' : j = 2 := Fin.ext h
      subst hj'
      exact ⟨l, l', 3, rfl, hll', hb, hb', rfl, rfl, rfl, by decide, by decide, by decide, hG2 rfl⟩
    · have hj' : j = 3 := Fin.ext h
      subst hj'
      exact ⟨l', l, 2, Finset.pair_comm _ _, hll'.symm, hb', hb, rfl, rfl, rfl, by decide,
        by decide, by decide, hG3 rfl⟩

  have hrel : ∀ k, algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
      (wcpaDjP2GenA A x y σ l l' k) =
      wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j k *
        algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
          (wcpaDjP2GenA A x y σ l l' j) := by
    intro k
    apply Subtype.ext
    exact (IsLocalization.mk'_spec _ _ _).symm
  have he : ∀ a₁ a₂ : A, a₁ = a₂ →
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) a₁) =
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) a₂) := by
    intro a₁ a₂ h
    rw [h]
  have hs : algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
      (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (σ l₁)) =
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (σ l₀)) *
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove 2)) := by
    rw [← he _ _ hgk, ← he _ _ hgj, hsa2, hrel k₂, map_mul, mul_comm]

  have hnu : ∀ k, algebraMap
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
      (Localization.AtPrime 𝔔)
      (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j k) ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔔) →
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j k) ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
    intro k hk
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hk ⊢
    intro hu
    apply hk
    rw [← hΘz k]
    exact hu.map Θ
  have hz0 : algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
      (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove 0)) ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
    rw [hsa0]
    exact hnu 0 ((IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime 𝔔) 𝔔 _).mpr hX)
  have hz1 : algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
      (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove 1)) ∈
      IsLocalRing.maximalIdeal (Localization.AtPrime P) := by
    rw [hsa1]
    exact hnu 1 ((IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime 𝔔) 𝔔 _).mpr hY)

  have hker' : RingHom.ker ψ = Ideal.span (insert
      (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (σ l₀)))
      ((fun m => algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (σ m))) ''
          ↑(Finset.univ \ {l₀, l₁}))) := by
    rw [hker, ← hpair, Set.image_insert_eq, Set.image_image, he _ _ hgj]
  have hΘk' : RingHom.ker Θ = Ideal.span {algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
        (Localization.AtPrime P)
        (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove 0)) *
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove 1)) -
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) v) *
      (∏ o ∈ Finset.univ \ {l₀, l₁},
        algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
          (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (σ o)) ^ b o) *
      algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
        (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove 2))} := by
    rw [hΘk, hpair, hG, hsa0, hsa1, hsa2]
    simp only [map_sub, map_mul, map_prod, map_pow]
  have hw : IsUnit (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j)
      (Localization.AtPrime P) (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) v)) :=
    (hv.map _).map _

  have H := wcpa_dj_rtsxc_p2_sigma_node_local (Localization.AtPrime P)
    (IsLocalRing.ResidueField A) Q ψ
    (fun i => algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
      (wcpaDjChartGen A (wcpaDjP2GenA A x y σ l l') j (j.succAbove i))) n
    (fun m => algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
      (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (σ m))) b l₀ l₁
    (algebraMap (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) (Localization.AtPrime P)
      (algebraMap A (wcpaDjChartAlg A (wcpaDjP2GenA A x y σ l l') j) v))
    hw hl hb₀ hb₁ hψs hψz hker' hdimE hs hz0 hz1 (Localization.AtPrime 𝔔) Θ hΘs hΘk'
  rw [← hpair]
  convert H using 1
  · funext m
    exact (hΘa (σ m)).symm
  · refine (congrArg _ hGj).trans ?_
    exact (hΘa (σ l₀)).symm

theorem wcpa_dj_rtsxc_p2_sigma_graph (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l l' : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (hb : b l = 1) (hb' : b l' = 1)
    (j : Fin (3 + 1)) (hj : 2 ≤ (j : ℕ))
    (𝔔 : Ideal (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j))
    [𝔔.IsPrime]
    (h𝔔 : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) c ∈ 𝔔 ↔
        ¬ IsUnit c)
    (hXY : ¬ (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j 0 ∈ 𝔔 ∧
      wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j 1 ∈ 𝔔)) :
    wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
      (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j))
      {l, l'} :=
by
  classical

  have transport : ∀ (B B' : Type u) [CommRing B] [IsLocalRing B] [CommRing B'] [IsLocalRing B']
      (Θ : B ≃+* B') (τ : Fin n → B) (γ : B) (T : Finset (Fin n)),
      wcpaDjRtsxcPt B' (fun m => Θ (τ m)) (Θ γ) T → wcpaDjRtsxcPt B τ γ T := by
    intro B B' _ _ _ _ Θ τ γ T h
    obtain ⟨n', s', κ, e₀, P1, P2, P3, P4, P5, P6, P7⟩ := h
    obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_adic_congr B B' Θ
    have K : ∀ c : B, ε.symm (algebraMap B' (AdicCompletion (IsLocalRing.maximalIdeal B') B') (Θ c)) =
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) c := by
      intro c
      have h1 := RingHom.congr_fun hε c
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] at h1
      rw [← h1, RingEquiv.symm_apply_apply]
    have hm : Ideal.map (Θ : B →+* B') (IsLocalRing.maximalIdeal B) = IsLocalRing.maximalIdeal B' :=
      IsLocalRing.eq_maximalIdeal (Ideal.map_isMaximal_of_equiv Θ)
    have e1 : ∀ I : Ideal B, Ideal.map (ε.symm : _ →+* _)
        (Ideal.map (algebraMap B' (AdicCompletion (IsLocalRing.maximalIdeal B') B'))
          (Ideal.map (Θ : B →+* B') I)) =
        Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) I := by
      intro I
      rw [Ideal.map_map, Ideal.map_map]
      congr 1
      exact RingHom.ext fun c => K c
    refine ⟨n', fun c => ε.symm (s' c), κ, e₀, ?_, ?_, ?_, P4, P5, ?_, ?_⟩
    · rw [P1]; exact (ringKrullDim_eq_of_ringEquiv Θ).symm
    · calc Ideal.span (Set.range fun c => ε.symm (s' c))
          = Ideal.map (ε.symm : _ →+* _) (Ideal.span (Set.range s')) := by
            rw [Ideal.map_span, ← Set.range_comp]; rfl
        _ = _ := by
            have e2 := e1 (IsLocalRing.maximalIdeal B)
            rw [hm] at e2
            rw [P2]
            exact e2
    · have h1 := P3.map ε.symm
      rw [K] at h1
      exact h1
    · intro m hm'
      have h1 := (P6 m hm').map ε.symm
      simp only [K, map_prod] at h1
      exact h1
    · intro m hm'
      have h1 := (P7 m hm').map ε.symm
      simp only [K, map_prod, map_mul] at h1
      exact h1

  have assoc : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (τ : Fin n → B) (γ γ₁ : B)
      (T : Finset (Fin n)), wcpaDjRtsxcPt B τ γ₁ T → Associated γ γ₁ → wcpaDjRtsxcPt B τ γ T := by
    intro B _ _ τ γ γ₁ T h hγ
    obtain ⟨n', s, κ, e₀, P1, P2, P3, P4, P5, P6, P7⟩ := h
    have a := hγ.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B))
    exact ⟨n', s, κ, e₀, P1, P2, a.trans P3, P4, P5, P6,
      fun m hm => (P7 m hm).trans (a.symm.mul_right _)⟩

  have hnzd := wcpa_dj_rtsxc_model_nzd A n x y v σ b hv hdim hmax
  have hG : ∀ k, wcpaDjP2Gen A x y v σ b l l' k ∈ nonZeroDivisors (wcpaDjP1Ring A x y v σ b) := by
    intro k
    fin_cases k
    · exact hnzd.1
    · exact hnzd.2.1
    · exact hnzd.2.2 l
    · exact hnzd.2.2 l'

  have hj' : ∃ j' : Fin (3 + 1), (j' : ℕ) < 2 ∧
      wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j j' ∉ 𝔔 := by
    rcases not_and_or.mp hXY with h | h
    · exact ⟨0, by decide, h⟩
    · exact ⟨1, by decide, h⟩
  obtain ⟨j', hj'2, hW⟩ := hj'

  have hspec : ((wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j j' :
      wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) :
        Localization.Away (wcpaDjP2Gen A x y v σ b l l' j)) *
      algebraMap (wcpaDjP1Ring A x y v σ b) _ (wcpaDjP2Gen A x y v σ b l l' j) =
      algebraMap (wcpaDjP1Ring A x y v σ b) _ (wcpaDjP2Gen A x y v σ b l l' j') :=
    IsLocalization.mk'_spec _ _ _

  obtain ⟨Q', hQ'p, Θ, hQc, hΘ⟩ := wcpa_dj_rtsxs_switch_chart (wcpaDjP1Ring A x y v σ b) 3 3
    (wcpaDjP2Gen A x y v σ b l l') (wcpaDjP2Gen A x y v σ b l l') j j' 𝔔
    (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j j') rfl
    (hG j) (hG j') hspec hW
  haveI := hQ'p

  have hQ' : ∀ c, algebraMap (wcpaDjP1Ring A x y v σ b)
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j') c ∈ Q' ↔
        ¬ IsUnit c := by
    intro c
    rw [← Ideal.mem_comap, hQc, Ideal.mem_comap]
    exact h𝔔 c

  have HB' := wcpa_dj_rtsxc_p2_xy_chart A n x y v σ b l l' hv hdim hmax hll' hb hb' j' hj'2 Q' hQ'

  have HB : wcpaDjRtsxcPt (Localization.AtPrime 𝔔)
      (fun m => ((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j'))
      {l, l'} := by
    refine transport (Localization.AtPrime 𝔔) (Localization.AtPrime Q') Θ _ _ _ ?_
    simp only [RingHom.comp_apply, hΘ]
    simpa only [RingHom.comp_apply] using HB'

  have hu : IsUnit (algebraMap
      (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
      (Localization.AtPrime 𝔔)
      (wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j j')) :=
    (IsLocalization.AtPrime.isUnit_to_map_iff _ 𝔔 _).mpr hW
  have hC : wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j j' *
      algebraMap (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
        (wcpaDjP2Gen A x y v σ b l l' j) =
      algebraMap (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
        (wcpaDjP2Gen A x y v σ b l l' j') :=
    Subtype.ext hspec
  have hγ : Associated
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j))
      (((algebraMap
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (Localization.AtPrime 𝔔)).comp
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
        (wcpaDjP2Gen A x y v σ b l l' j')) := by
    refine ⟨hu.unit, ?_⟩
    rw [IsUnit.unit_spec, RingHom.comp_apply, RingHom.comp_apply, ← hC, map_mul]
    exact mul_comm _ _

  exact assoc _ _ _ _ {l, l'} HB hγ

theorem wcpa_dj_rtsxc_model_p2 (A : Type u) [CommRing A] [IsRegularLocalRing A]
    [IsAdicComplete (IsLocalRing.maximalIdeal A) A] (n : ℕ) (x y v : A) (σ : Fin n → A)
    (b : Fin n → ℕ) (l l' : Fin n) (hv : IsUnit v)
    (hdim : ((n + 2 : ℕ) : WithBot ℕ∞) = ringKrullDim A)
    (hmax : Ideal.span ({x, y} ∪ Set.range σ) = IsLocalRing.maximalIdeal A)
    (hll' : l ≠ l') (hb : b l = 1) (hb' : b l' = 1) :
    wcpaDjRtsxcChartOut (A ⧸ Ideal.span {x * y - v * ∏ m, σ m ^ b m})
      (![Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) x,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) y,
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l),
        Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ l')] : Fin (3 + 1) → _)
      (fun m => Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ m, σ m ^ b m}) (σ m)) {l, l'} b :=
by
  classical
  intro j 𝔔 _ h𝔔
  have hgam : ∀ (B : Type u) [CommRing B] [IsLocalRing B]
      [Algebra (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) B]
      [IsLocalization.AtPrime B 𝔔],
      algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)
        (((algebraMap (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) B).comp
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)))
          (wcpaDjP2Gen A x y v σ b l l' j)) ∈
      nonZeroDivisors (AdicCompletion (IsLocalRing.maximalIdeal B) B) := by
    intro B _ _ _ _
    haveI : Algebra.FiniteType (wcpaDjP1Ring A x y v σ b)
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) :=
      (Subalgebra.fg_iff_finiteType _).mp (Subalgebra.fg_def.mpr ⟨_, Set.finite_range _, rfl⟩)
    haveI : IsNoetherianRing
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) :=
      Algebra.FiniteType.isNoetherianRing (wcpaDjP1Ring A x y v σ b) _
    haveI : IsNoetherianRing B := IsLocalization.isNoetherianRing 𝔔.primeCompl B inferInstance
    haveI : Module.Flat
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j) B :=
      IsLocalization.flat B 𝔔.primeCompl
    haveI : Module.Flat B (AdicCompletion (IsLocalRing.maximalIdeal B) B) :=
      AdicCompletion.flat_of_isNoetherian _
    have h1 : IsSMulRegular
        (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
        (algebraMap (wcpaDjP1Ring A x y v σ b)
          (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
          (wcpaDjP2Gen A x y v σ b l l' j)) := by
      intro a c hac
      have hac' : algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
            (wcpaDjP2Gen A x y v σ b l l' j) * a =
          algebraMap (wcpaDjP1Ring A x y v σ b)
            (wcpaDjChartAlg (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j)
            (wcpaDjP2Gen A x y v σ b l l' j) * c := hac
      apply Subtype.ext
      have h2 : (algebraMap (wcpaDjP1Ring A x y v σ b)
            (Localization.Away (wcpaDjP2Gen A x y v σ b l l' j)) (wcpaDjP2Gen A x y v σ b l l' j)) * a.1 =
          (algebraMap (wcpaDjP1Ring A x y v σ b)
            (Localization.Away (wcpaDjP2Gen A x y v σ b l l' j)) (wcpaDjP2Gen A x y v σ b l l' j)) * c.1 :=
        congrArg Subtype.val hac'
      exact (IsLocalization.Away.algebraMap_isUnit (wcpaDjP2Gen A x y v σ b l l' j)).mul_left_cancel h2
    have h2 := h1.of_flat (S := B)
    have h3 := h2.of_flat (S := AdicCompletion (IsLocalRing.maximalIdeal B) B)
    refine mem_nonZeroDivisors_iff.mpr ⟨fun z hz => h3 ?_, fun z hz => h3 ?_⟩
    · show _ • z = _ • (0 : AdicCompletion (IsLocalRing.maximalIdeal B) B)
      rw [smul_zero, smul_eq_mul]
      exact hz
    · show _ • z = _ • (0 : AdicCompletion (IsLocalRing.maximalIdeal B) B)
      rw [smul_zero, smul_eq_mul, mul_comm]
      exact hz
  refine ⟨hgam (Localization.AtPrime 𝔔), ?_⟩
  by_cases hj : (j : ℕ) < 2
  · exact Or.inl (wcpa_dj_rtsxc_p2_xy_chart A n x y v σ b l l' hv hdim hmax hll' hb hb' j hj 𝔔 h𝔔)
  · have hj2 : 2 ≤ (j : ℕ) := by omega
    by_cases hXY :
        wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j 0 ∈ 𝔔 ∧
        wcpaDjChartGen (wcpaDjP1Ring A x y v σ b) (wcpaDjP2Gen A x y v σ b l l') j 1 ∈ 𝔔
    · exact Or.inr (wcpa_dj_rtsxc_p2_sigma_node A n x y v σ b l l' hv hdim hmax hll' hb hb' j hj2
        𝔔 h𝔔 hXY.1 hXY.2)
    · exact Or.inl (wcpa_dj_rtsxc_p2_sigma_graph A n x y v σ b l l' hv hdim hmax hll' hb hb' j hj2
        𝔔 h𝔔 hXY)

theorem wcpa_dj_rtsxc_out_transfer (D : Type u) [CommRing D] [IsLocalRing D]
    (B : Type u) [CommRing B] [IsLocalRing B]
    (Ψ : AdicCompletion (IsLocalRing.maximalIdeal D) D ≃+* AdicCompletion (IsLocalRing.maximalIdeal B) B)
    (hdim : ringKrullDim D = ringKrullDim B)
    (hmax : Ideal.map Ψ (Ideal.map (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D))
        (IsLocalRing.maximalIdeal D)) =
      Ideal.map (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) (IsLocalRing.maximalIdeal B))
    (n : ℕ) (T : Finset (Fin n)) (b : Fin n → ℕ) (τ : Fin n → B) (γ : B)
    (hM : wcpaDjRtsxcModelOut B τ γ T b)
    (q : ℕ) (J : Fin q → Finset (Fin n))
    (hdisj : ∀ j j', j ≠ j' → Disjoint (J j) (J j')) (hcard : ∀ j, (J j).card ≤ 1)
    (hcov : ∀ l, b l ≠ 0 → ∃ j, l ∈ J j)
    (H : Fin q → D) (ε : D) (ιT : Fin n → Fin q) (u : Fin n → D)
    (hιT : ∀ l ∈ T, J (ιT l) = {l})
    (hu : ∀ l ∈ T, H (ιT l) = ε * u l)
    (hH : ∀ j, Associated (Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) (H j)))
      (∏ l ∈ J j, algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ l)))
    (hε : Associated (Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) ε))
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ)) :
    ∃ (q' : ℕ) (h' : Fin q' → D),
      (∀ j', (∃ j, Disjoint (J j) T ∧ h' j' = H j) ∨ h' j' = ε ∨ ∃ l ∈ T, h' j' = u l) ∧
      (∀ j, Disjoint (J j) T → ∃ j', h' j' = H j) ∧
      (∃ j', h' j' = ε) ∧
      (∀ l ∈ T, ∃ j', h' j' = u l) ∧
      (wcpaDjTorPtAlg D h' ∨ wcpaDjTorNodeAlg D h') :=
by
  classical
  let ι := {j : Fin q // Disjoint (J j) T} ⊕ (Unit ⊕ {l : Fin n // l ∈ T})
  let hh : ι → D := Sum.elim (fun j => H j.1) (Sum.elim (fun _ => ε) (fun l => u l.1))
  let eι : Fin (Fintype.card ι) ≃ ι := (Fintype.equivFin ι).symm
  let Kf : (n' : ℕ) → (Fin n → Finset (Fin n')) → Fin n' → ι → Finset (Fin n') :=
    fun n' κ e₀ => Sum.elim (fun j => (J j.1).biUnion κ) (Sum.elim (fun _ => {e₀}) (fun l => κ l.1))

  have idx : ∀ (n' : ℕ) (κ : Fin n → Finset (Fin n')) (e₀ : Fin n'),
      (∀ l, (κ l).card ≤ 1 ∧ e₀ ∉ κ l) → (∀ l l', l ≠ l' → Disjoint (κ l) (κ l')) →
      (∀ i i', i ≠ i' → Disjoint (Kf n' κ e₀ i) (Kf n' κ e₀ i')) ∧
      (∀ i, (Kf n' κ e₀ i).card ≤ 1) ∧
      (∀ c, (c = e₀ ∨ ∃ l, c ∈ κ l ∧ (l ∈ T ∨ b l ≠ 0)) → ∃ i, c ∈ Kf n' κ e₀ i) := by
    intro n' κ e₀ hκ hκd
    refine ⟨?_, ?_, ?_⟩
    · intro i i' hii'
      rw [Finset.disjoint_left]
      rcases i with ⟨j, hj⟩ | ⟨⟨⟩⟩ | ⟨l, hl⟩ <;> rcases i' with ⟨j', hj'⟩ | ⟨⟨⟩⟩ | ⟨l', hl'⟩ <;>
        intro c hc hc' <;>
        simp only [Kf, Sum.elim_inl, Sum.elim_inr, Finset.mem_biUnion, Finset.mem_singleton] at hc hc'
      · obtain ⟨a, ha, hca⟩ := hc
        obtain ⟨a', ha', hca'⟩ := hc'
        have hjj : j ≠ j' := fun h => hii' (by subst h; rfl)
        by_cases haa : a = a'
        · subst haa
          exact Finset.disjoint_left.mp (hdisj j j' hjj) ha ha'
        · exact Finset.disjoint_left.mp (hκd a a' haa) hca hca'
      · obtain ⟨a, ha, hca⟩ := hc
        subst hc'
        exact (hκ a).2 hca
      · obtain ⟨a, ha, hca⟩ := hc
        have hne : a ≠ l' := fun h => Finset.disjoint_left.mp hj ha (h ▸ hl')
        exact Finset.disjoint_left.mp (hκd a l' hne) hca hc'
      · obtain ⟨a, ha, hca⟩ := hc'
        subst hc
        exact (hκ a).2 hca
      · exact hii' rfl
      · subst hc
        exact (hκ l').2 hc'
      · obtain ⟨a, ha, hca⟩ := hc'
        have hne : a ≠ l := fun h => Finset.disjoint_left.mp hj' ha (h ▸ hl)
        exact Finset.disjoint_left.mp (hκd a l hne) hca hc
      · subst hc'
        exact (hκ l).2 hc
      · have hll : l ≠ l' := fun h => hii' (by subst h; rfl)
        exact Finset.disjoint_left.mp (hκd l l' hll) hc hc'
    · intro i
      rcases i with ⟨j, hj⟩ | ⟨⟨⟩⟩ | ⟨l, hl⟩
      · show ((J j).biUnion κ).card ≤ 1
        rw [Finset.card_le_one]
        intro c hc c' hc'
        rw [Finset.mem_biUnion] at hc hc'
        obtain ⟨a, ha, hca⟩ := hc
        obtain ⟨a', ha', hca'⟩ := hc'
        have haa : a = a' := Finset.card_le_one.mp (hcard j) a ha a' ha'
        subst haa
        exact Finset.card_le_one.mp (hκ a).1 c hca c' hca'
      · show ({e₀} : Finset (Fin n')).card ≤ 1
        rw [Finset.card_singleton]
      · show (κ l).card ≤ 1
        exact (hκ l).1
    · intro c hc
      rcases hc with rfl | ⟨l, hcl, hl⟩
      · exact ⟨Sum.inr (Sum.inl ()), Finset.mem_singleton_self _⟩
      · by_cases hlT : l ∈ T
        · exact ⟨Sum.inr (Sum.inr ⟨l, hlT⟩), hcl⟩
        · have hbl : b l ≠ 0 := hl.resolve_left hlT
          obtain ⟨j, hj⟩ := hcov l hbl
          have hjT : Disjoint (J j) T := by
            rw [Finset.disjoint_left]
            intro a ha haT
            have hal : a = l := Finset.card_le_one.mp (hcard j) a ha l hj
            exact hlT (hal ▸ haT)
          exact ⟨Sum.inl ⟨j, hjT⟩, Finset.mem_biUnion.mpr ⟨l, hj, hcl⟩⟩

  have assoc : ∀ (R : Type u) [CommRing R] (Θ : D → R), (∀ a a', Θ (a * a') = Θ a * Θ a') →
      ∀ (n' : ℕ) (κ : Fin n → Finset (Fin n')) (e₀ : Fin n') (t : Fin n → R) (g : R)
        (z : Fin n' → R),
      (∀ l l', l ≠ l' → Disjoint (κ l) (κ l')) → (∀ x y : R, g * x = g * y → x = y) →
      (∀ j, Associated (Θ (H j)) (∏ l ∈ J j, t l)) → Associated (Θ ε) g → Associated g (z e₀) →
      (∀ l, l ∉ T → Associated (t l) (∏ c ∈ κ l, z c)) →
      (∀ l, l ∈ T → Associated (t l) (g * ∏ c ∈ κ l, z c)) →
      ∀ i : ι, Associated (Θ (hh i)) (∏ c ∈ Kf n' κ e₀ i, z c) := by
    intro R _ Θ hΘ n' κ e₀ t g z hκd hg hH' hε' hgz hout hin i
    rcases i with ⟨j, hj⟩ | ⟨⟨⟩⟩ | ⟨l, hl⟩
    · show Associated (Θ (H j)) (∏ c ∈ (J j).biUnion κ, z c)
      rw [Finset.prod_biUnion (fun a _ a' _ haa' => hκd a a' haa')]
      exact (hH' j).trans (Associated.prod _ _ _
        (fun a ha => hout a (Finset.disjoint_left.mp hj ha)))
    · show Associated (Θ ε) (∏ c ∈ ({e₀} : Finset (Fin n')), z c)
      rw [Finset.prod_singleton]
      exact hε'.trans hgz
    · show Associated (Θ (u l)) (∏ c ∈ κ l, z c)
      have h1 : Associated (Θ ε * Θ (u l)) (g * ∏ c ∈ κ l, z c) := by
        rw [← hΘ, ← hu l hl]
        have h2 := hH' (ιT l)
        rw [hιT l hl, Finset.prod_singleton] at h2
        exact h2.trans (hin l hl)
      obtain ⟨w, hw⟩ := hε'
      obtain ⟨w', hw'⟩ := h1
      refine ⟨w⁻¹ * w', ?_⟩
      apply hg
      rw [← hw', ← hw, Units.val_mul]
      have hww : (w : R) * ↑w⁻¹ = 1 := Units.mul_inv w
      linear_combination (Θ ε * Θ (u l) * (w' : R)) * hww
  refine ⟨Fintype.card ι, fun j => hh (eι j), ?_, ?_, ?_, ?_, ?_⟩
  · intro j'
    rcases hj : eι j' with ⟨j, hj'⟩ | ⟨⟨⟩⟩ | ⟨l, hl⟩
    · left
      exact ⟨j, hj', by show hh (eι j') = H j; rw [hj]; rfl⟩
    · right; left
      show hh (eι j') = ε
      rw [hj]; rfl
    · right; right
      exact ⟨l, hl, by show hh (eι j') = u l; rw [hj]; rfl⟩
  · intro j hj
    exact ⟨eι.symm (Sum.inl ⟨j, hj⟩), by
      show hh (eι (eι.symm _)) = H j; rw [Equiv.apply_symm_apply]; rfl⟩
  · exact ⟨eι.symm (Sum.inr (Sum.inl ())), by
      show hh (eι (eι.symm _)) = ε; rw [Equiv.apply_symm_apply]; rfl⟩
  · intro l hl
    exact ⟨eι.symm (Sum.inr (Sum.inr ⟨l, hl⟩)), by
      show hh (eι (eι.symm _)) = u l; rw [Equiv.apply_symm_apply]; rfl⟩
  obtain ⟨hγ, hPt | hNd⟩ := hM
  · obtain ⟨n', s, κ, e₀, hn', hs, hγs, hκ, hκd, hout, hin⟩ := hPt
    have hA := assoc _ (fun a => Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) a))
      (fun a a' => by simp only [map_mul]) n' κ e₀
      (fun l => algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ l))
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ) s hκd
      (fun x y hxy => (mul_cancel_left_mem_nonZeroDivisors hγ).mp hxy) hH hε hγs hout hin
    obtain ⟨hKd, -, -⟩ := idx n' κ e₀ hκ hκd
    left
    refine ⟨n', fun c => Ψ.symm (s c), fun j => Kf n' κ e₀ (eι j), hn'.trans hdim.symm, ?_,
      fun j j' hjj' => hKd _ _ (eι.injective.ne hjj'), ?_⟩
    · have hr : Set.range (fun c => Ψ.symm (s c)) = Ψ.symm '' Set.range s := by
        ext x; simp
      rw [hr, ← Ideal.map_span, hs, ← hmax]
      exact Ideal.map_of_equiv Ψ
    · intro j
      have h1 := (hA (eι j)).map Ψ.symm
      rw [RingEquiv.symm_apply_apply, map_prod] at h1
      exact h1
  · obtain ⟨n', A', iA, iR, iC, x', y', v', σ', b', e', κ, e₀, hv', hdA, hspA, hγσ, hκ, hκd,
      hout, hin, hb'⟩ := hNd
    obtain ⟨hKd, hKc, hKcov⟩ := idx n' κ e₀ hκ hκd
    have hg : ∀ x y : A' ⧸ Ideal.span {x' * y' - v' * ∏ c, σ' c ^ b' c},
        e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ) * x =
          e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ) * y → x = y := by
      intro x y hxy
      apply e'.symm.injective
      apply (mul_cancel_left_mem_nonZeroDivisors hγ).mp
      have h1 := congrArg e'.symm hxy
      rwa [map_mul, map_mul, RingEquiv.symm_apply_apply] at h1
    have hA := assoc _
      (fun a => e' (Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) a)))
      (fun a a' => by simp only [map_mul]) n' κ e₀
      (fun l => e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) (τ l)))
      (e' (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) γ))
      (fun c => Ideal.Quotient.mk _ (σ' c)) hκd hg
      (fun j => by have h1 := (hH j).map e'; rwa [map_prod] at h1)
      (hε.map e') hγσ
      (fun l hl => by have h1 := hout l hl; rwa [map_prod] at h1)
      (fun l hl => by have h1 := hin l hl; rwa [map_prod] at h1)
    right
    refine ⟨n', A', iA, iR, iC, x', y', v', σ', b', Ψ.trans e', fun j => Kf n' κ e₀ (eι j), hv',
      hdA, hspA, fun j j' hjj' => hKd _ _ (eι.injective.ne hjj'), fun j => hKc _, ?_, ?_⟩
    · intro c hc
      obtain ⟨i, hi⟩ := hKcov c (hb' c hc)
      exact ⟨eι.symm i, by
        show c ∈ Kf n' κ e₀ (eι (eι.symm i))
        rw [Equiv.apply_symm_apply]; exact hi⟩
    · intro j
      rw [RingEquiv.trans_apply, map_prod]
      exact hA (eι j)

theorem wcpa_dj_rtsxc_chart_model : ∀ (k : Type u) [Field k] (O : Type u) [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [IsDomain O] (ι : k →+* O) {q : ℕ} (h : Fin q → O) (p : Ideal O) (r : ℕ) (f : Fin (r + 1) → O) (i : Fin (r + 1)) (P : Ideal (wcpaDjChartAlg O f i)) [P.IsPrime] (D : Type u) [CommRing D] [IsLocalRing D] (φ : O →+* D) (Φ : D ≃+* Localization.AtPrime P), wcpaDjTorNodeCentre O h p → Ideal.span (Set.range f) = p → f i ≠ 0 → P.comap (algebraMap O (wcpaDjChartAlg O f i)) = IsLocalRing.maximalIdeal O → (∀ a, Φ (φ a) = algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P) (algebraMap O (wcpaDjChartAlg O f i) a)) → ∃ (q' : ℕ) (h' : Fin q' → D), (∀ Q : Ideal D, Q.IsPrime → ((∃ j, φ (h j) ∈ Q) ↔ ∃ j, h' j ∈ Q)) ∧ (wcpaDjTorPtAlg D h' ∨ wcpaDjTorNodeAlg D h') :=
by
  intro k _ O _ _ _ _ ι q h p r f i P _ D _ _ φ Φ hC hspanf hfi hP hΦ
  classical
  obtain ⟨n, A, iA, iReg, iComp, x, y, v, σ, b, e, J, T, hv, hdim, hmax, hdisj, hcard, hcov,
    hass, hcen, hTC, hHP⟩ := hC

  have hTne : T.Nonempty := by
    rcases hTC with ⟨h1, -⟩ | ⟨h1, -⟩ <;> (rw [← Finset.card_pos]; omega)
  obtain ⟨l0, hl0⟩ := hTne

  have hdiv : ∀ a ∈ p, ∃ d : D, φ a = φ (f i) * d := by
    intro a ha
    rw [← hspanf] at ha
    induction ha using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨l, rfl⟩ := hz
      refine ⟨Φ.symm (algebraMap (wcpaDjChartAlg O f i) (Localization.AtPrime P)
        ⟨IsLocalization.mk' (Localization.Away (f i)) (f l)
          (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)),
          Algebra.subset_adjoin ⟨l, rfl⟩⟩), ?_⟩
      apply Φ.injective
      rw [map_mul, RingEquiv.apply_symm_apply, hΦ, hΦ, ← map_mul]
      congr 1
      apply Subtype.ext
      show algebraMap O (Localization.Away (f i)) (f l) =
        algebraMap O (Localization.Away (f i)) (f i) *
          IsLocalization.mk' (Localization.Away (f i)) (f l)
            (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i))
      exact (IsLocalization.mk'_spec' _ _ _).symm
    | zero => exact ⟨0, by rw [map_zero, mul_zero]⟩
    | add a₁ a₂ _ _ h₁ h₂ =>
      obtain ⟨d₁, hd₁⟩ := h₁
      obtain ⟨d₂, hd₂⟩ := h₂
      exact ⟨d₁ + d₂, by rw [map_add, hd₁, hd₂, mul_add]⟩
    | smul c a₁ _ h₁ =>
      obtain ⟨d₁, hd₁⟩ := h₁
      refine ⟨φ c * d₁, ?_⟩
      rw [smul_eq_mul, map_mul, hd₁]
      ring

  let ιT : Fin n → Fin q := fun l =>
    if hl : l ∈ T then (hHP l hl).choose else (hHP l0 hl0).choose
  let u : Fin n → D := fun l =>
    if hl : l ∈ T then (hdiv _ (hHP l hl).choose_spec.2).choose else 0
  have hιT : ∀ l ∈ T, J (ιT l) = {l} := by
    intro l hl
    simp only [ιT, dif_pos hl]
    exact (hHP l hl).choose_spec.1
  have hu : ∀ l ∈ T, φ (h (ιT l)) = φ (f i) * u l := by
    intro l hl
    simp only [ιT, u, dif_pos hl]
    exact (hdiv _ (hHP l hl).choose_spec.2).choose_spec

  obtain ⟨hnx, hny, hnσ⟩ := wcpa_dj_rtsxc_model_nzd A n x y v σ b hv hdim hmax

  have asm : ∀ (B : Type u) [CommRing B] [IsLocalRing B]
      (κ : (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) →+* B) (γ : B),
      wcpaDjRtsxcModelOut B (fun l => κ (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l)))
        γ T b →
      wcpaDjRtsxcTransOut O D B φ
        (κ.comp ((e : AdicCompletion (IsLocalRing.maximalIdeal O) O →+* _).comp
          (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O)))) (φ (f i)) γ →
      ∃ (q' : ℕ) (h' : Fin q' → D), (∀ Q : Ideal D, Q.IsPrime →
        ((∃ j, φ (h j) ∈ Q) ↔ ∃ j, h' j ∈ Q)) ∧ (wcpaDjTorPtAlg D h' ∨ wcpaDjTorNodeAlg D h') := by
    intro B _ _ κ γ hM hTr
    obtain ⟨Ψ, hdimD, hmaxΨ, hcan, hfiΨ⟩ := hTr
    let g : (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) →+*
        AdicCompletion (IsLocalRing.maximalIdeal B) B :=
      (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)).comp κ
    have hH : ∀ jj, Associated (Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D)
        ((fun j => φ (h j)) jj)))
        (∏ l ∈ J jj, algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)
          ((fun l => κ (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l))) l)) := by
      intro jj
      have e1 : (∏ l ∈ J jj, algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)
          ((fun l => κ (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l))) l)) =
          g (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (∏ l ∈ J jj, σ l)) := by
        rw [map_prod, map_prod]
        rfl
      have e2 : Ψ (algebraMap D (AdicCompletion (IsLocalRing.maximalIdeal D) D) ((fun j => φ (h j)) jj)) =
          g (e (algebraMap O (AdicCompletion (IsLocalRing.maximalIdeal O) O) (h jj))) := hcan (h jj)
      rw [e1, e2]
      exact (hass jj).map g
    obtain ⟨q', h', P1, P2, P3, P4, hTor⟩ := wcpa_dj_rtsxc_out_transfer D B Ψ
      hdimD hmaxΨ n T b _ _ hM q J hdisj hcard hcov (fun j => φ (h j)) (φ (f i)) ιT u hιT hu hH hfiΨ
    refine ⟨q', h', ?_, hTor⟩
    intro Q hQ
    constructor
    · rintro ⟨jj, hjj⟩
      by_cases hd : Disjoint (J jj) T
      · obtain ⟨j', hj'⟩ := P2 jj hd
        exact ⟨j', by rw [hj']; exact hjj⟩
      · rw [Finset.not_disjoint_iff] at hd
        obtain ⟨l, hl1, hl2⟩ := hd
        have hjeq : jj = ιT l := by
          by_contra hne
          have h3 := hdisj jj (ιT l) hne
          rw [hιT l hl2] at h3
          exact (Finset.disjoint_singleton_right.mp h3) hl1
        rw [hjeq, hu l hl2] at hjj
        rcases hQ.mem_or_mem hjj with h1 | h1
        · obtain ⟨j', hj'⟩ := P3
          exact ⟨j', by rw [hj']; exact h1⟩
        · obtain ⟨j', hj'⟩ := P4 l hl2
          exact ⟨j', by rw [hj']; exact h1⟩
    · rintro ⟨j', hj'⟩
      rcases P1 j' with ⟨jj, -, he⟩ | he | ⟨l, hl, he⟩
      · exact ⟨jj, by rw [he] at hj'; exact hj'⟩
      · refine ⟨ιT l0, ?_⟩
        rw [hu l0 hl0]
        rw [he] at hj'
        exact Q.mul_mem_right _ hj'
      · refine ⟨ιT l, ?_⟩
        rw [hu l hl]
        rw [he] at hj'
        exact Q.mul_mem_left _ hj'

  have key : ∀ (m : ℕ) (G : Fin (m + 1) → A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}),
      (∀ j, G j ∈ nonZeroDivisors (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l})) →
      Ideal.span (Set.range G) = Ideal.map (Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}))
        (Ideal.span ({x, y} ∪ σ '' (T : Set (Fin n)))) →
      wcpaDjRtsxcChartOut (A ⧸ Ideal.span {x * y - v * ∏ l, σ l ^ b l}) G
        (fun l => Ideal.Quotient.mk (Ideal.span {x * y - v * ∏ l, σ l ^ b l}) (σ l)) T b →
      ∃ (q' : ℕ) (h' : Fin q' → D), (∀ Q : Ideal D, Q.IsPrime →
        ((∃ j, φ (h j) ∈ Q) ↔ ∃ j, h' j ∈ Q)) ∧ (wcpaDjTorPtAlg D h' ∨ wcpaDjTorNodeAlg D h') := by
    intro m G hG hGs hCO
    obtain ⟨j, 𝔔, h𝔔, h𝔔c, hTr⟩ :=
      wcpa_dj_rtsxc_chart_transport O r f i P D φ Φ _ e m G hfi hP hΦ hG
        (by rw [hspanf, hcen]; exact hGs)
    haveI := h𝔔
    exact asm (Localization.AtPrime 𝔔)
      ((algebraMap (wcpaDjChartAlg _ G j) (Localization.AtPrime 𝔔)).comp
        (algebraMap _ (wcpaDjChartAlg _ G j))) _ (hCO j 𝔔 h𝔔c) hTr

  rcases hTC with ⟨h1, hb⟩ | ⟨h1, hb⟩
  · obtain ⟨l, rfl⟩ := Finset.card_eq_one.mp h1
    refine key 2 ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l)] ?_ ?_
      (wcpa_dj_rtsxc_model_p1 A n x y v σ b l hv hdim hmax (hb l (Finset.mem_singleton_self l)))
    · intro j
      fin_cases j
      · exact hnx
      · exact hny
      · exact hnσ l
    · rw [Ideal.map_span]
      congr 1
      ext z
      simp [Matrix.range_cons]
      tauto
  · obtain ⟨l, l', hne, rfl⟩ := Finset.card_eq_two.mp h1
    refine key 3 ![Ideal.Quotient.mk _ x, Ideal.Quotient.mk _ y, Ideal.Quotient.mk _ (σ l),
      Ideal.Quotient.mk _ (σ l')] ?_ ?_
      (wcpa_dj_rtsxc_model_p2 A n x y v σ b l l' hv hdim hmax hne (hb l (by simp)) (hb l' (by simp)))
    · intro j
      fin_cases j
      · exact hnx
      · exact hny
      · exact hnσ l
      · exact hnσ l'
    · rw [Ideal.map_span]
      congr 1
      ext z
      simp [Matrix.range_cons]
      tauto

theorem wcpa_dj_rtsx_class_over_centre : ∀ (k : Type u) [Field k] (Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) (B : Set Y) (γ : Y) (Y' : Scheme.{u}) [AlgebraicGeometry.IsIntegral Y'] (π : Y' ⟶ Y), wcpaDjIsProjOver k sY → wcpaDjIsProjOver k (π ≫ sY) → IsClosed B → (∀ y : Y, wcpaDjTorPt Y B y ∨ wcpaDjTorNodeSgl Y B y) → γ ∈ wcpaDjSingGen Y → (ringKrullDim (Y.presheaf.stalk γ) = ((2 : ℕ) : WithBot ℕ∞) ∨ ∀ γ' ∈ wcpaDjSingGen Y, ringKrullDim (Y.presheaf.stalk γ') ≠ ((2 : ℕ) : WithBot ℕ∞)) → IsProper π → (∀ (U : Y.affineOpens) (r : ℕ) (f : Fin (r + 1) → Γ(Y, U)), Ideal.span (Set.range f) = (Scheme.IdealSheafData.vanishingIdeal ⟨closure {γ}, isClosed_closure⟩).ideal U → (∀ i, f i ≠ 0) → ∃ V : Fin (r + 1) → Y'.Opens, (⨆ i, V i) = π ⁻¹ᵁ (U : Y.Opens) ∧ ∀ i, ∃ hV : V i ≤ π ⁻¹ᵁ (U : Y.Opens), IsAffineOpen (V i) ∧ ∃ e : Γ(Y', V i) ≃+* (Algebra.adjoin Γ(Y, U) (Set.range fun l => IsLocalization.mk' (Localization.Away (f i)) (f l) (⟨f i, Submonoid.mem_powers _⟩ : Submonoid.powers (f i)))), ∀ a : Γ(Y, U), e ((π.appLE (U : Y.Opens) (V i) hV).hom a) = algebraMap Γ(Y, U) _ a) → ∀ y' : Y', π y' ∈ closure {γ} → wcpaDjTorPt Y' (⇑π ⁻¹' B) y' ∨ wcpaDjTorNodeSgl Y' (⇑π ⁻¹' B) y' :=
by
  intro k _ Y _ sY B γ Y' _ π hproj _ hB hloc hγ _ _ hcharts y' hy'
  classical
  haveI : IsProper sY := wcpa_dj_proj_proper k sY hproj
  haveI : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian sY
  have hγz : γ ⤳ π y' := specializes_iff_mem_closure.mpr hy'

  have hgen : genericPoint Y ∉ closure {γ} := by
    intro h
    have h1 : γ ⤳ genericPoint Y := specializes_iff_mem_closure.mpr h
    have h2 : genericPoint Y ⤳ γ := (genericPoint_spec Y).specializes (Set.mem_univ _)
    have h3 : γ = genericPoint Y := (h1.antisymm h2).eq
    apply (show γ ∈ wcpaDjSing Y ∧ _ from hγ).1
    rw [h3]
    change IsRegularLocalRing Y.functionField
    infer_instance

  obtain ⟨q, h, hiff, hcent⟩ := wcpa_dj_rtsxc_centre_ideal k Y sY B γ (π y') hproj hB hloc hγ hγz

  obtain ⟨r, f, i, P, hPprime, Φ, hspan, hfi, hPmax, hΦ⟩ :=
    wcpa_dj_rtsxc_chart_stalk Y γ Y' π hgen hcharts y' hγz
  haveI := hPprime
  let ι : k →+* Y.presheaf.stalk (π y') :=
    (Y.presheaf.germ ⊤ (π y') trivial).hom.comp
      ((sY.appTop).hom.comp (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom)

  obtain ⟨q', h', hQ, hcls⟩ := wcpa_dj_rtsxc_chart_model k (Y.presheaf.stalk (π y')) ι h _ r f i P
    (Y'.presheaf.stalk y') (π.stalkMap y').hom Φ hcent hspan hfi hPmax hΦ

  have hbd : ∀ (z' : Y') (hz : z' ⤳ y'), (z' ∈ ⇑π ⁻¹' B ↔ ∃ j, (π.stalkMap y').hom (h j) ∈
      Ideal.comap (Y'.presheaf.stalkSpecializes hz).hom
        (IsLocalRing.maximalIdeal (Y'.presheaf.stalk z'))) := by
    intro z' hz
    have hz2 : π z' ⤳ π y' := hz.map π.continuous
    rw [Set.mem_preimage, hiff (π z') hz2]
    apply exists_congr
    intro j
    rw [Ideal.mem_comap]
    have e : (π.stalkMap z').hom ((Y.presheaf.stalkSpecializes hz2).hom (h j)) =
        (Y'.presheaf.stalkSpecializes hz).hom ((π.stalkMap y').hom (h j)) := by
      have := Scheme.Hom.stalkSpecializes_stalkMap π z' y' hz
      exact congrArg (fun g => g.hom (h j)) this
    rw [← e, IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
      mem_nonunits_iff, isUnit_map_iff (π.stalkMap z').hom]
  have hfin : ∀ (z' : Y') (hz : z' ⤳ y'), (z' ∈ ⇑π ⁻¹' B ↔ ∃ j,
      (Y'.presheaf.stalkSpecializes hz).hom (h' j) ∈ IsLocalRing.maximalIdeal (Y'.presheaf.stalk z')) := by
    intro z' hz
    rw [hbd z' hz, hQ _ inferInstance]
    rfl
  rcases hcls with hpt | hnd
  · left
    obtain ⟨n, s, J, h1, h2, h3, h4⟩ := hpt
    exact ⟨n, q', s, h', J, h1, h2, h3, h4, hfin⟩
  · right
    obtain ⟨n, A, i1, i2, i3, x, y, v, σ, b, e, J, H1, H2, H3, H4, H5, H6, H7⟩ := hnd
    exact ⟨n, q', A, i1, i2, i3, x, y, v, σ, b, e, h', J, H1, H2, H3, H4, H5, H6, H7, hfin⟩

end GRWTSK.FiniteFieldWeil
