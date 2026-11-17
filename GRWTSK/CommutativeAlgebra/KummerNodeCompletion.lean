import GRWTSK.CommutativeAlgebra.KummerNodeAxisLocalization
import GRWTSK.CommutativeAlgebra.UniformizerExponentBalance

/-!
# Completion, parameter exponents, and bounds for node thickness

Source candidate split from `weil_conjecture_main.lean`, lines 448–1929.
See the adjacent `KummerNodeCompletion.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_stc_kmnb_completion_params : ∀ (R : Type u) [CommRing R] [IsRegularLocalRing R]
    (n : ℕ) (t : Fin n → R),
    (n : WithBot ℕ∞) = ringKrullDim R → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal R →
    ∃ _ : IsRegularLocalRing (AdicCompletion (IsLocalRing.maximalIdeal R) R),
      (n : WithBot ℕ∞) = ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal R) R) ∧
      Ideal.span (Set.range (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (t i))) =
        IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal R) R) :=
by
  intro R _ _ n t hdim hspan
  obtain ⟨hloc, hnoeth, -, hm, hdimA⟩ := wcpa_dj_npr_completion_data R n t hdim hspan
  haveI := hnoeth
  have h5 : Submodule.spanFinrank
      (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal R) R)) ≤ n := by
    rw [hm]
    refine (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range _)).trans ?_
    calc _ ≤ (Set.univ : Set (Fin n)).ncard := by
          rw [← Set.image_univ]; exact Set.ncard_image_le Set.finite_univ
      _ = n := by rw [Set.ncard_univ, Nat.card_fin]
  have h6 := ringKrullDim_le_spanFinrank_maximalIdeal
    (AdicCompletion (IsLocalRing.maximalIdeal R) R)
  have h5' : ((Submodule.spanFinrank
      (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal R) R)) : ℕ) :
        WithBot ℕ∞) ≤ (n : WithBot ℕ∞) := by exact_mod_cast h5
  have h7 : ((Submodule.spanFinrank
      (IsLocalRing.maximalIdeal (AdicCompletion (IsLocalRing.maximalIdeal R) R)) : ℕ) :
        WithBot ℕ∞) = ringKrullDim (AdicCompletion (IsLocalRing.maximalIdeal R) R) :=
    le_antisymm (h5'.trans hdimA.le) h6
  exact ⟨(isRegularLocalRing_iff _).mpr h7, hdimA, hm.symm⟩

theorem wcpa_dj_stc_kmn_exponent_bound : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjStcKmHyp k S Y sS g m τ W mD Dc N I O a →
    ∃ K : ℕ, ∀ i₀ ∈ I, ∀ i ∈ I, ∀ y : Y,
    (¬ ∃ W' : Y.Opens, y ∈ W' ∧ SmoothOfRelativeDimension 1 (W'.ι ≫ g)) →
    ∀ (n : ℕ) (t : Fin n → S.presheaf.stalk (g y)) (e : {i // g y ∈ Dc i} → Fin n)
      (J : Finset (Fin n)),
      wcpaDjStcSNCSys S mD Dc (g y) n t e → (∀ l, l ∈ J ↔ ∃ i, e i = l) →
    ∀ (c : Fin n → ℕ)
      (v : (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))ˣ)
      (e' : AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y) ≃+*
        (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y))) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
            MvPowerSeries.C (↑v * ∏ l, (algebraMap (S.presheaf.stalk (g y))
              (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
                (S.presheaf.stalk (g y))) (t l)) ^ c l)})),
      (∃ l, c l ≠ 0) → (∀ l, c l ≠ 0 → l ∈ J) →
      e'.toRingHom.comp ((algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y))).comp
          (g.stalkMap y).hom) =
        (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))))) →
    ∀ num den : Y.presheaf.stalk y,
      wcpaDjStcRatioLink (wcpaDjStcRatioSec k O a i₀ i) y num den → num ≠ 0 → den ≠ 0 →
    ∀ (α : ℤ) (β : Fin n → ℤ), (∀ l, l ∉ J → β l = 0) →
      wcpaDjStcMonRel (e'.symm (Ideal.Quotient.mk _ (MvPowerSeries.X 0)))
        (fun l => algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y))
            ((g.stalkMap y).hom (t l)))
        (algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y)) num)
        (algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y)) den)
        α β →
      |α| ≤ 2 * (K : ℤ) ∧ ∀ l, |β l| ≤ (K : ℤ) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hH
  classical
  have hH' := hH
  obtain ⟨-, -, h3, -, -, -, -, -, h9, h10, -, -, -, -, -⟩ := hH'
  obtain ⟨B, hB⟩ := wcpa_dj_stc_kmnb_boundary_ord_bound k S Y sS g m τ W mD Dc N I O a hH

  have core : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A] (n : ℕ) (t : Fin n → A),
      (n : WithBot ℕ∞) = ringKrullDim A → Ideal.span (Set.range t) = IsLocalRing.maximalIdeal A →
      ∀ (c : Fin n → ℕ) (v : Aˣ) (J : Finset (Fin n)), (∃ l, c l ≠ 0) → (∀ l, c l ≠ 0 → l ∈ J) →
      ∀ (f g' : wcpaDjStcTuRing A t c v) (w : (wcpaDjStcTuRing A t c v)ˣ) (α : ℤ) (β : Fin n → ℤ),
      (∀ l, l ∉ J → β l = 0) →
      f * Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0) ^ (-α).toNat *
          ∏ l, Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l)) ^ (-β l).toNat =
        ↑w * g' * Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0) ^ α.toNat *
          ∏ l, Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l)) ^ (β l).toNat →
      (∀ l ∈ J, ∀ (P : Ideal (wcpaDjStcTuRing A t c v)) [P.IsPrime],
        IsDomain (Localization.AtPrime P) →
        algebraMap _ (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ≠ 0 →
        ¬ IsUnit (algebraMap _ (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l)))) →
        (∀ z : Localization.AtPrime P, z ≠ 0 → ∃ (e : ℕ) (u : (Localization.AtPrime P)ˣ),
          z = u * algebraMap _ _
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ e) →
        ∃ (a b : ℕ) (u₁ u₂ : (Localization.AtPrime P)ˣ), |(a : ℤ) - b| ≤ (B : ℤ) ∧
          algebraMap _ (Localization.AtPrime P) f = u₁ * algebraMap _ _
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ a ∧
          algebraMap _ (Localization.AtPrime P) g' = u₂ * algebraMap _ _
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ b) →
      |α| ≤ 2 * (B : ℤ) ∧ ∀ l, |β l| ≤ (B : ℤ) := by
    intro A _ _ n t hdim hspan c v J hc0 hcJ f g' w α β hβJ hrel hbr
    have s2 := wcpa_dj_stc_kmnb_xy_domain.{u}
    have step : ∀ l ∈ J, ∀ (P : Ideal (wcpaDjStcTuRing A t c v)) [P.IsPrime],
        IsDomain (Localization.AtPrime P) →
        algebraMap _ (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ≠ 0 →
        ¬ IsUnit (algebraMap _ (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l)))) →
        (∀ z : Localization.AtPrime P, z ≠ 0 → ∃ (e : ℕ) (u : (Localization.AtPrime P)ˣ),
          z = u * algebraMap _ _
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ e) →
        (∀ k, k ≠ l → IsUnit (algebraMap _ (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k))))) →
        ∀ (ex : ℕ) (εx : (Localization.AtPrime P)ˣ),
          algebraMap _ (Localization.AtPrime P)
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0)) =
            εx * algebraMap _ _
              (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ ex →
        ∃ d : ℤ, |d| ≤ (B : ℤ) ∧ d = (ex : ℤ) * α + β l := by
      intro l hl P _ hdom hπ0 hπu hfac hunit ex εx hx
      haveI := hdom
      obtain ⟨a', b', u₁, u₂, hab, hf, hg⟩ := hbr l hl P hdom hπ0 hπu hfac
      let εs : Fin n → (Localization.AtPrime P)ˣ := fun k =>
        if h : k = l then 1 else (hunit k h).unit
      let es : Fin n → ℕ := fun k => if k = l then 1 else 0
      have hs : ∀ k, algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k))) =
          ↑(εs k) * algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l))) ^ es k := by
        intro k
        by_cases h : k = l
        · subst h
          simp [εs, es]
        · simp only [εs, es, dif_neg h, if_neg h, pow_zero, mul_one, IsUnit.unit_spec]
      have hrel' := congrArg (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)) hrel
      simp only [map_mul, map_pow, map_prod] at hrel'
      have key := wcpa_dj_stc_kmnb_exp_count (Localization.AtPrime P)
        (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l)))) hπ0 hπu
        (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0)))
        (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P) f)
        (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P) g')
        (fun k => algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k))))
        α β ex a' b' es εx u₁ u₂
        (Units.map (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)).toMonoidHom w)
        εs hx hs hf hg hrel'
      refine ⟨(a' : ℤ) - b', hab, ?_⟩
      rw [key]
      congr 1
      simp [es]
    have hβ : ∀ l, |β l| ≤ (B : ℤ) := by
      intro l
      by_cases hl : l ∈ J
      · by_cases hcl : c l = 0
        · obtain ⟨P, hP, hdom, hπ0, hπu, hfac, hX, hunit⟩ :=
            wcpa_dj_stc_kmnb_axis_prime s2 A n t hdim hspan c v l hcl hc0
          haveI := hP
          obtain ⟨d, hd, hdeq⟩ := step l hl P hdom hπ0 hπu hfac hunit 0 hX.unit (by simp)
          rw [hdeq] at hd
          simpa using hd
        · obtain ⟨P, hP, hdom, hπ0, hπu, hfac, hX, hunit⟩ :=
            wcpa_dj_stc_kmnb_branch_prime s2 A n t hdim hspan c v l hcl 0
          haveI := hP
          obtain ⟨d, hd, hdeq⟩ := step l hl P hdom hπ0 hπu hfac hunit 0 hX.unit (by simp)
          rw [hdeq] at hd
          simpa using hd
      · rw [hβJ l hl]
        simp
    obtain ⟨l₀, hl₀⟩ := hc0
    obtain ⟨P, hP, hdom, hπ0, hπu, hfac, hY1, hunit⟩ :=
      wcpa_dj_stc_kmnb_branch_prime s2 A n t hdim hspan c v l₀ hl₀ 1
    haveI := hP
    haveI := hdom
    have hR : Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0) *
        Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 1) =
        Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (↑v : A)) *
        ∏ k, Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k)) ^ c k := by
      have h0 : Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v)
          (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C (↑v * ∏ l, t l ^ c l)) = 0 :=
        Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.subset_span rfl)
      simp only [map_sub, map_mul, map_prod, map_pow, sub_eq_zero] at h0
      exact h0
    have hRL := congrArg (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)) hR
    simp only [map_mul, map_pow, map_prod] at hRL
    have hCv : IsUnit (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (↑v : A)))) :=
      ((v.isUnit.map (MvPowerSeries.C (σ := Fin 2) (R := A))).map
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v))).map
        (algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P))
    let uτ : Fin n → (Localization.AtPrime P)ˣ := fun k =>
      if h : k = l₀ then 1 else (hunit k h).unit
    have hτk : ∀ k, algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k))) =
        ↑(uτ k) * algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l₀))) ^
            (if k = l₀ then 1 else 0) := by
      intro k
      by_cases h : k = l₀
      · subst h
        simp [uτ]
      · simp only [uτ, dif_neg h, if_neg h, pow_zero, mul_one, IsUnit.unit_spec]
    have hprod : ∏ k, algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k))) ^ c k =
        ↑(∏ k, uτ k ^ c k) * algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
          (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l₀))) ^ c l₀ := by
      calc ∏ k, algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t k))) ^ c k
          = ∏ k, ((uτ k : Localization.AtPrime P) ^ c k *
              algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
                (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l₀))) ^
                ((if k = l₀ then 1 else 0) * c k)) :=
            Finset.prod_congr rfl (fun k _ => by rw [hτk k, mul_pow, ← pow_mul])
        _ = _ := by
            rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, Units.coe_prod]
            simp
    have hx : algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0)) =
        ↑(hY1.unit⁻¹ * (hCv.unit * ∏ k, uτ k ^ c k)) *
          algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.C (t l₀))) ^ c l₀ := by
      calc algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
            (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0))
          = algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
              (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 0)) *
            algebraMap (wcpaDjStcTuRing A t c v) (Localization.AtPrime P)
              (Ideal.Quotient.mk (wcpaDjStcTuIdeal A t c v) (MvPowerSeries.X 1)) *
            ↑hY1.unit⁻¹ := by rw [mul_assoc, hY1.mul_val_inv, mul_one]
        _ = _ := by
            rw [hRL, hprod]
            simp only [Units.val_mul, IsUnit.unit_spec]
            ring
    obtain ⟨d, hd, hdeq⟩ := step l₀ (hcJ l₀ hl₀) P hdom hπ0 hπu hfac hunit (c l₀) _ hx
    have hβl := hβ l₀
    have hc1 : (1 : ℤ) ≤ (c l₀ : ℤ) := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hl₀
    have h1 : (c l₀ : ℤ) * |α| ≤ 2 * B := by
      rw [abs_le] at hd hβl
      have h2 : |(c l₀ : ℤ) * α| ≤ 2 * B :=
        abs_le.mpr ⟨by linarith [hd.1, hβl.2], by linarith [hd.2, hβl.1]⟩
      rwa [abs_mul, abs_of_nonneg (by positivity : (0 : ℤ) ≤ c l₀)] at h2
    exact ⟨by nlinarith [abs_nonneg α], hβ⟩
  refine ⟨B, ?_⟩
  intro i₀ hi₀ i hi y hy n t e J hsys hJ c v e' hc0 hcJ hcomp num den hlink hnum hden α β hβJ hMR
  obtain ⟨hη, hBη⟩ := hB i₀ hi₀ i hi
  haveI : IsProper g := h3.2.1
  haveI hOp : IsRegularLocalRing (S.presheaf.stalk (g y)) := h9 (g y)
  haveI hOyN : IsNoetherianRing (Y.presheaf.stalk y) :=
    (wcpa_dj_mn_stalk_eft S Y g y inferInstance inferInstance).2
  obtain ⟨hAreg, hAdim, hAspan⟩ :=
    wcpa_dj_stc_kmnb_completion_params (S.presheaf.stalk (g y)) n t hsys.1 hsys.2.1
  haveI := hAreg
  let ι := e'.toRingHom.comp (algebraMap (Y.presheaf.stalk y)
    (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y)))
  have hιflat : ι.Flat :=
    RingHom.Flat.comp (RingHom.flat_algebraMap_iff.mpr (AdicCompletion.flat_of_isNoetherian _))
      (RingHom.Flat.of_bijective e'.bijective)
  have hτ' : ∀ l, e' (algebraMap (Y.presheaf.stalk y)
      (AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y))
        ((g.stalkMap y).hom (t l))) =
      Ideal.Quotient.mk _ (MvPowerSeries.C (algebraMap (S.presheaf.stalk (g y))
        (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y))) (t l))) :=
    fun l => RingHom.congr_fun hcomp (t l)
  obtain ⟨w₀, hw₀⟩ := hMR
  have hrel := congrArg e' hw₀
  simp only [map_mul, map_pow, map_prod, RingEquiv.apply_symm_apply, hτ'] at hrel
  refine core (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
      (S.presheaf.stalk (g y))) n
    (fun l => algebraMap (S.presheaf.stalk (g y))
      (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y))) (t l)) hAdim hAspan c v J hc0 hcJ (ι num) (ι den)
    (Units.map e'.toRingHom.toMonoidHom w₀) α β hβJ hrel ?_

  intro l hl P _ hdom hπ0 hπu hfac
  haveI := hdom
  have hιz : ι ((g.stalkMap y).hom (t l)) =
      Ideal.Quotient.mk (wcpaDjStcTuIdeal _ (fun l => algebraMap (S.presheaf.stalk (g y))
        (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y))) (t l)) c v)
        (MvPowerSeries.C (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l))) :=
    RingHom.congr_fun hcomp (t l)
  obtain ⟨w, hsp, hiff, hloc⟩ := wcpa_dj_stc_kmnb_stalk_localization Y y (P.comap ι)
  letI : Algebra (Y.presheaf.stalk y) (Y.presheaf.stalk w) :=
    (Y.presheaf.stalkSpecializes hsp).hom.toAlgebra
  haveI := hloc
  obtain ⟨hϖ0, hϖspan, hwfac, htrans⟩ := wcpa_dj_stc_kmnb_dvr_descent (Y.presheaf.stalk y)
    (wcpaDjStcTuRing (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
      (S.presheaf.stalk (g y))) (fun l => algebraMap (S.presheaf.stalk (g y))
        (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y))) (t l)) c v)
    (Y.presheaf.stalk w) ι hιflat P ((g.stalkMap y).hom (t l))
    (by rw [hιz]; exact hπ0) (by rw [hιz]; exact hπu) (by rw [hιz]; exact hfac)

  have hzP : ι ((g.stalkMap y).hom (t l)) ∈ P := by
    by_contra hnot
    have hu := (IsLocalization.AtPrime.isUnit_to_map_iff (Localization.AtPrime P) P
      (ι ((g.stalkMap y).hom (t l)))).mpr (Ideal.mem_primeCompl_iff.mpr hnot)
    rw [hιz] at hu
    exact hπu hu
  have hmw := (hiff ((g.stalkMap y).hom (t l))).mpr hzP
  obtain ⟨i', hi'⟩ := (hJ l).mp hl
  have hgw : g w ∈ ⋃ j, Dc j :=
    (wcpa_dj_sp_snc_pullback_iff S Y g y mD Dc n t e h10.1 hsys.2.2.2 w hsp).mpr
      ⟨i', by rw [hi']; exact hmw⟩

  have hηy : ∀ b, (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
      ((Y.presheaf.stalkSpecializes hsp).hom b) =
      (Y.presheaf.stalkSpecializes (genericPoint_specializes y)).hom b := fun b =>
    congrArg (fun φ => φ.hom b)
      (TopCat.Presheaf.stalkSpecializes_comp Y.presheaf (genericPoint_specializes w) hsp)
  have hinjy := IsFractionRing.injective (Y.presheaf.stalk y) Y.functionField
  have hspne : ∀ b : Y.presheaf.stalk y, b ≠ 0 →
      algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) b ≠ 0 := by
    intro b hb h0
    apply hb
    apply hinjy
    show (Y.presheaf.stalkSpecializes (genericPoint_specializes y)).hom b =
      (Y.presheaf.stalkSpecializes (genericPoint_specializes y)).hom 0
    rw [← hηy b]
    change (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
      (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) b) = _
    rw [h0, map_zero, map_zero]
  obtain ⟨a', u₁, hu₁⟩ := hwfac _ (hspne num hnum)
  obtain ⟨b', u₂, hu₂⟩ := hwfac _ (hspne den hden)
  have hnumK : (Y.presheaf.stalkSpecializes (genericPoint_specializes y)).hom num =
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom ↑u₁ *
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
        (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) ((g.stalkMap y).hom (t l))) ^ a' := by
    rw [← hηy num]
    change (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
      (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) num) = _
    rw [hu₁, map_mul, map_pow]
  have hdenK : (Y.presheaf.stalkSpecializes (genericPoint_specializes y)).hom den =
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom ↑u₂ *
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
        (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) ((g.stalkMap y).hom (t l))) ^ b' := by
    rw [← hηy den]
    change (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
      (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) den) = _
    rw [hu₂, map_mul, map_pow]
  have hl2 := hlink.2 (genericPoint Y) hη (genericPoint_specializes y)
  rw [hnumK, hdenK] at hl2
  have hP0 : (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
      (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) ((g.stalkMap y).hom (t l))) ≠ 0 := by
    show algebraMap (Y.presheaf.stalk w) Y.functionField
      (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) ((g.stalkMap y).hom (t l))) ≠ 0
    exact (map_ne_zero_iff _ (IsFractionRing.injective (Y.presheaf.stalk w) Y.functionField)).mpr hϖ0
  have hU2 : (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom ↑u₂⁻¹ *
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom ↑u₂ = 1 := by
    rw [← map_mul, Units.inv_mul, map_one]
  have hφ : ((Y.presheaf.germ (O.ι ''ᵁ (a ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
        (MvPolynomial.X i₀))) (genericPoint Y) hη).hom (wcpaDjStcRatioSec k O a i₀ i) :
          Y.functionField) =
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
        (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) ((g.stalkMap y).hom (t l))) ^
          ((a' : ℤ) - b') *
      (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom ↑(u₁ * u₂⁻¹) := by
    rw [zpow_sub₀ hP0, zpow_natCast, zpow_natCast, Units.val_mul, map_mul, div_mul_eq_mul_div,
      eq_div_iff (pow_ne_zero _ hP0)]
    linear_combination ((Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom ↑u₂⁻¹) * hl2 -
      ((Y.presheaf.germ _ (genericPoint Y) hη).hom (wcpaDjStcRatioSec k O a i₀ i) *
        (Y.presheaf.stalkSpecializes (genericPoint_specializes w)).hom
          (algebraMap (Y.presheaf.stalk y) (Y.presheaf.stalk w) ((g.stalkMap y).hom (t l))) ^ b') * hU2
  have hd := hBη w hgw _ hϖ0 hϖspan ((a' : ℤ) - b') (u₁ * u₂⁻¹) hφ
  obtain ⟨v₁, hv₁⟩ := htrans num a' u₁ hu₁
  obtain ⟨v₂, hv₂⟩ := htrans den b' u₂ hu₂
  have e1 : algebraMap _ (Localization.AtPrime P) (ι ((g.stalkMap y).hom (t l))) =
      algebraMap _ (Localization.AtPrime P)
        (Ideal.Quotient.mk (wcpaDjStcTuIdeal _ (fun l => algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))) (t l)) c v)
          (MvPowerSeries.C (algebraMap (S.presheaf.stalk (g y))
            (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
              (S.presheaf.stalk (g y))) (t l)))) := congrArg _ hιz
  refine ⟨a', b', v₁, v₂, hd, hv₁.trans ?_, hv₂.trans ?_⟩
  · rw [e1]
  · rw [e1]

theorem wcpa_dj_stc_kmnt_completion_div : ∀ (A R : Type u) [CommRing A] [CommRing R] [IsLocalRing A] [IsLocalRing R] [IsNoetherianRing A] [IsNoetherianRing R] (φ : A →+* R), IsLocalHom φ → ∀ (h : AdicCompletion (IsLocalRing.maximalIdeal A) A) (e : AdicCompletion (IsLocalRing.maximalIdeal R) R ≃+* (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})), e.toRingHom.comp ((algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp φ) = (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A))) → ∀ a : A, (∀ (T : Type u) [CommRing T] (f : R →+* T) (D : Fin 2 → R → T), (∀ j x y, D j (x + y) = D j x + D j y) → (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) → (∀ j z, D j (φ z) = 0) → ∀ r₀ r₁ : R, f (φ a) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0) → algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) a ∈ Ideal.span {h} :=
by
  intro A R _ _ _ _ _ _ φ _ h e compat a KA
  classical

  have hmA : (IsLocalRing.maximalIdeal A ^ 1) ≠ ⊤ := by
    rw [pow_one]; exact (IsLocalRing.maximalIdeal.isMaximal A).ne_top
  have hk1 : (1 : A ⧸ IsLocalRing.maximalIdeal A ^ 1) ≠ 0 := by
    intro h1
    exact hmA (Ideal.Quotient.zero_eq_one_iff.mp h1.symm)



  have s1 : ∀ c : AdicCompletion (IsLocalRing.maximalIdeal A) A,
      AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1 c ≠ 0 → IsUnit c := by
    intro c hc
    have hsm : ∀ n : ℕ, (IsLocalRing.maximalIdeal A ^ n • ⊤ : Submodule A A) =
        IsLocalRing.maximalIdeal A ^ n := fun n => by
      rw [Ideal.smul_eq_mul, Ideal.mul_top]
    obtain ⟨b, rfl⟩ := AdicCompletion.mk_surjective (IsLocalRing.maximalIdeal A) A c
    have hcong : ∀ m n : ℕ, m ≤ n →
        (b : ℕ → A) m - (b : ℕ → A) n ∈ IsLocalRing.maximalIdeal A ^ m := by
      intro m n hmn
      have h1 := AdicCompletion.AdicCauchySequence.mk_eq_mk hmn b
      rw [Submodule.Quotient.eq, hsm] at h1
      rw [← neg_sub]
      exact Submodule.neg_mem _ h1
    have hb1 : (b : ℕ → A) 1 ∉ IsLocalRing.maximalIdeal A := by
      intro h1
      apply hc
      rw [AdicCompletion.evalₐ_mk, Ideal.Quotient.eq_zero_iff_mem, pow_one]
      exact h1
    have hbn : ∀ n : ℕ, 1 ≤ n → IsUnit ((b : ℕ → A) n) := by
      intro n hn
      rw [← IsLocalRing.notMem_maximalIdeal]
      intro h1
      apply hb1
      have h2 := hcong 1 n hn
      rw [pow_one] at h2
      have h3 := Ideal.add_mem _ h2 h1
      rwa [sub_add_cancel] at h3
    have hab : ∀ n : ℕ, 1 ≤ n → Ring.inverse ((b : ℕ → A) n) * (b : ℕ → A) n = 1 :=
      fun n hn => Ring.inverse_mul_cancel _ (hbn n hn)
    let a' : AdicCompletion.AdicCauchySequence (IsLocalRing.maximalIdeal A) A :=
      AdicCompletion.AdicCauchySequence.mk (IsLocalRing.maximalIdeal A) A
        (fun n => Ring.inverse ((b : ℕ → A) n)) (by
          intro n
          rw [SModEq.sub_mem, hsm]
          rcases Nat.eq_zero_or_pos n with hn | hn
          · subst hn
            rw [pow_zero, Ideal.one_eq_top]
            exact Submodule.mem_top
          · have e1 : Ring.inverse ((b : ℕ → A) n) - Ring.inverse ((b : ℕ → A) (n + 1)) =
                Ring.inverse ((b : ℕ → A) n) * Ring.inverse ((b : ℕ → A) (n + 1)) *
                  -((b : ℕ → A) n - (b : ℕ → A) (n + 1)) := by
              have h1 := hab n hn
              have h2 := hab (n + 1) (by omega)
              linear_combination (-(Ring.inverse ((b : ℕ → A) n))) * h2 +
                Ring.inverse ((b : ℕ → A) (n + 1)) * h1
            rw [e1]
            exact Ideal.mul_mem_left _ _ (Submodule.neg_mem _ (hcong n (n + 1) (by omega))))
    refine isUnit_iff_exists_inv.mpr ⟨AdicCompletion.mk (IsLocalRing.maximalIdeal A) A a', ?_⟩
    apply AdicCompletion.ext_evalₐ
    intro n
    rw [map_mul, map_one, AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk, ← map_mul]
    rcases Nat.eq_zero_or_pos n with hn | hn
    · subst hn
      haveI : Subsingleton (A ⧸ IsLocalRing.maximalIdeal A ^ 0) :=
        Ideal.Quotient.subsingleton_iff.mpr (by rw [pow_zero, Ideal.one_eq_top])
      exact Subsingleton.elim _ _
    · show Ideal.Quotient.mk _ ((b : ℕ → A) n * Ring.inverse ((b : ℕ → A) n)) = 1
      rw [mul_comm, hab n hn, map_one]



  have hA1 : (Finset.HasAntidiagonal.antidiagonal (1 : ℕ)) = {(0, 1), (1, 0)} := by
    first
    | rfl
    | decide
  have key : ∀ (j : Fin 2) (F G : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A)),
      MvPowerSeries.coeff (Finsupp.single j 1) (F * G) =
        MvPowerSeries.constantCoeff F * MvPowerSeries.coeff (Finsupp.single j 1) G +
          MvPowerSeries.coeff (Finsupp.single j 1) F * MvPowerSeries.constantCoeff G := by
    intro j F G
    rw [MvPowerSeries.coeff_mul, Finsupp.antidiagonal_single, Finset.sum_map, hA1,
      Finset.sum_insert (by decide), Finset.sum_singleton]
    simp [MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
  have s3 : ∀ (C : Type u) [CommRing C] (ψ : AdicCompletion (IsLocalRing.maximalIdeal A) A →+* C)
      (j : Fin 2), ∃ Θ : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) →+*
        DualNumber C, ∀ F, TrivSqZeroExt.fst (Θ F) = ψ (MvPowerSeries.constantCoeff F) ∧
          TrivSqZeroExt.snd (Θ F) = ψ (MvPowerSeries.coeff (Finsupp.single j 1) F) := by
    intro C _ ψ j
    have hf : ∀ a b : C, TrivSqZeroExt.fst (TrivSqZeroExt.inl a + TrivSqZeroExt.inr b : DualNumber C) = a :=
      fun a b => by simp
    have hs : ∀ a b : C, TrivSqZeroExt.snd (TrivSqZeroExt.inl a + TrivSqZeroExt.inr b : DualNumber C) = b :=
      fun a b => by simp
    refine ⟨{ toFun := fun F => (TrivSqZeroExt.inl (ψ (MvPowerSeries.constantCoeff F)) +
                TrivSqZeroExt.inr (ψ (MvPowerSeries.coeff (Finsupp.single j 1) F)) : DualNumber C)
              map_one' := ?_, map_mul' := ?_, map_zero' := ?_, map_add' := ?_ },
            fun F => ⟨hf _ _, hs _ _⟩⟩
    · apply TrivSqZeroExt.ext
      · try dsimp only
        rw [hf, TrivSqZeroExt.fst_one, map_one, map_one]
      · try dsimp only
        rw [hs, TrivSqZeroExt.snd_one, MvPowerSeries.coeff_one,
          if_neg (Finsupp.single_ne_zero.mpr one_ne_zero), map_zero]
    · intro F G
      apply TrivSqZeroExt.ext
      · try dsimp only
        rw [hf, TrivSqZeroExt.fst_mul, hf, hf, map_mul, map_mul]
      · try dsimp only
        rw [hs, DualNumber.snd_mul, hs, hs, hf, hf, key, map_add, map_mul, map_mul]
    · apply TrivSqZeroExt.ext
      · try dsimp only
        rw [hf, TrivSqZeroExt.fst_zero, map_zero, map_zero]
      · try dsimp only
        rw [hs, TrivSqZeroExt.snd_zero, map_zero, map_zero]
    · intro F G
      apply TrivSqZeroExt.ext
      · try dsimp only
        rw [hf, TrivSqZeroExt.fst_add, hf, hf, map_add, map_add]
      · try dsimp only
        rw [hs, TrivSqZeroExt.snd_add, hs, hs, map_add, map_add]

  have sdesc : ∀ (C : Type u) [CommRing C] (ψ : AdicCompletion (IsLocalRing.maximalIdeal A) A →+* C),
      ψ h = 0 → ∀ j : Fin 2, ∃ Θ : (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) →+* DualNumber C,
        ∀ F, TrivSqZeroExt.fst (Θ (Ideal.Quotient.mk _ F)) = ψ (MvPowerSeries.constantCoeff F) ∧
          TrivSqZeroExt.snd (Θ (Ideal.Quotient.mk _ F)) =
            ψ (MvPowerSeries.coeff (Finsupp.single j 1) F) := by
    intro C _ ψ hψ j
    obtain ⟨Θ, hΘ⟩ := s3 C ψ j
    have hX : ∀ i : Fin 2, TrivSqZeroExt.fst (Θ (MvPowerSeries.X i)) = 0 := fun i => by
      rw [(hΘ _).1, MvPowerSeries.constantCoeff_X, map_zero]
    have hker : Θ (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) = 0 := by
      apply TrivSqZeroExt.ext
      · rw [(hΘ _).1, TrivSqZeroExt.fst_zero]
        simp [hψ]
      · rw [map_sub, TrivSqZeroExt.snd_sub, map_mul, DualNumber.snd_mul, hX 0, hX 1,
          (hΘ (MvPowerSeries.C h)).2, MvPowerSeries.coeff_C,
          if_neg (Finsupp.single_ne_zero.mpr one_ne_zero), TrivSqZeroExt.snd_zero]
        simp
    refine ⟨Ideal.Quotient.lift _ Θ ?_, fun F => ?_⟩
    · intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, hker, mul_zero]
    · rw [Ideal.Quotient.lift_mk]
      exact hΘ F



  have hev : ∀ m : R, m ∈ IsLocalRing.maximalIdeal R →
      IsUnit (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) m) → False := by
    intro m hm hu
    have hu' := hu.map (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal R) 1)
    have hm1 : m ∈ IsLocalRing.maximalIdeal R ^ 1 := by rw [pow_one]; exact hm
    rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem.mpr hm1,
      isUnit_zero_iff, Ideal.Quotient.zero_eq_one_iff, pow_one] at hu'
    exact (IsLocalRing.maximalIdeal.isMaximal R).ne_top hu'



  have h0 : AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1 h = 0 := by
    by_contra hne
    have hu : IsUnit h := s1 h hne
    have hg : IsUnit (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A)) := by
      rw [MvPowerSeries.isUnit_iff_constantCoeff]
      simpa using hu
    have htop : Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A))} = ⊤ :=
      Ideal.span_singleton_eq_top.mpr hg
    have h10 : (1 : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) = 0 := by
      rw [← map_one (Ideal.Quotient.mk _), Ideal.Quotient.eq_zero_iff_mem, htop]
      exact Submodule.mem_top
    apply hev 0 (Ideal.zero_mem _)
    have h11 : (1 : AdicCompletion (IsLocalRing.maximalIdeal R) R) = 0 :=
      e.injective (by rw [map_one, map_zero, h10])
    rw [map_zero, ← h11]
    exact isUnit_one



  have hL : ∀ x ∈ Ideal.map (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))
      (IsLocalRing.maximalIdeal R ^ 2),
      ∀ F : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A),
      e x = Ideal.Quotient.mk _ F → ∀ j : Fin 2,
      AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1
        (MvPowerSeries.coeff (Finsupp.single j 1) F) = 0 := by
    intro x hx F hxF j
    obtain ⟨Θ, hΘ⟩ := sdesc (A ⧸ IsLocalRing.maximalIdeal A ^ 1)
      (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1).toRingHom h0 j
    let Γ : R →+* DualNumber (A ⧸ IsLocalRing.maximalIdeal A ^ 1) :=
      Θ.comp (e.toRingHom.comp (algebraMap R _))
    have hfst : ∀ m ∈ IsLocalRing.maximalIdeal R, TrivSqZeroExt.fst (Γ m) = 0 := by
      intro m hm
      by_contra hne
      obtain ⟨G, hG⟩ := Ideal.Quotient.mk_surjective (e (algebraMap R _ m))
      have h1 : TrivSqZeroExt.fst (Γ m) = AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1
          (MvPowerSeries.constantCoeff G) := by
        show TrivSqZeroExt.fst (Θ (e (algebraMap R _ m))) = _
        rw [← hG]
        exact (hΘ G).1
      rw [h1] at hne
      have hu : IsUnit (Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A))}) G) :=
        (MvPowerSeries.isUnit_iff_constantCoeff.mpr (s1 _ hne)).map _
      apply hev m hm
      have h2 : algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) m =
          e.symm (Ideal.Quotient.mk _ G) := by
        rw [hG, RingEquiv.symm_apply_apply]
      rw [h2]
      exact hu.map e.symm
    have hker : Ideal.map (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))
        (IsLocalRing.maximalIdeal R ^ 2) ≤ RingHom.ker (Θ.comp e.toRingHom) := by
      rw [Ideal.map_le_iff_le_comap, pow_two]
      apply Ideal.mul_le.mpr
      intro m hm m' hm'
      rw [Ideal.mem_comap, RingHom.mem_ker]
      show Γ (m * m') = 0
      rw [map_mul]
      apply TrivSqZeroExt.ext
      · rw [TrivSqZeroExt.fst_mul, hfst m hm, zero_mul, TrivSqZeroExt.fst_zero]
      · rw [DualNumber.snd_mul, hfst m hm, hfst m' hm', zero_mul, mul_zero, add_zero,
          TrivSqZeroExt.snd_zero]
    have h2 := hker hx
    rw [RingHom.mem_ker] at h2
    have h3 : Θ (e x) = 0 := h2
    rw [hxF] at h3
    have h4 := (hΘ F).2
    rw [h3, TrivSqZeroExt.snd_zero] at h4
    exact h4.symm



  set q : Ideal (AdicCompletion (IsLocalRing.maximalIdeal A) A) := Ideal.span {h} with hqdef
  have hψh : Ideal.Quotient.mk q h = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self h)
  choose Θ hΘ using fun j : Fin 2 => sdesc _ (Ideal.Quotient.mk q) hψh j
  let Ψ : Fin 2 → R →+* DualNumber (AdicCompletion (IsLocalRing.maximalIdeal A) A ⧸ q) :=
    fun j => (Θ j).comp (e.toRingHom.comp (algebraMap R _))
  have hΨ : ∀ (j : Fin 2) (x : R) (F : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A)),
      e (algebraMap R _ x) = Ideal.Quotient.mk _ F →
      TrivSqZeroExt.fst (Ψ j x) = Ideal.Quotient.mk q (MvPowerSeries.constantCoeff F) ∧
        TrivSqZeroExt.snd (Ψ j x) = Ideal.Quotient.mk q (MvPowerSeries.coeff (Finsupp.single j 1) F) := by
    intro j x F hxF
    show TrivSqZeroExt.fst (Θ j (e (algebraMap R _ x))) = _ ∧
      TrivSqZeroExt.snd (Θ j (e (algebraMap R _ x))) = _
    rw [hxF]
    exact hΘ j F
  let ρ : R →+* AdicCompletion (IsLocalRing.maximalIdeal A) A ⧸ q :=
    { toFun := fun x => TrivSqZeroExt.fst (Ψ 0 x)
      map_one' := by simp
      map_mul' := fun x y => by simp [TrivSqZeroExt.fst_mul]
      map_zero' := by simp
      map_add' := fun x y => by simp }
  have hρ : ∀ x, ρ x = TrivSqZeroExt.fst (Ψ 0 x) := fun x => rfl
  have hfst : ∀ (j : Fin 2) (x : R), TrivSqZeroExt.fst (Ψ j x) = ρ x := by
    intro j x
    obtain ⟨F, hF⟩ := Ideal.Quotient.mk_surjective (e (algebraMap R _ x))
    rw [hρ, (hΨ j x F hF.symm).1, (hΨ 0 x F hF.symm).1]
  let D : Fin 2 → R → AdicCompletion (IsLocalRing.maximalIdeal A) A ⧸ q :=
    fun j x => TrivSqZeroExt.snd (Ψ j x)
  have hDdef : ∀ j x, D j x = TrivSqZeroExt.snd (Ψ j x) := fun j x => rfl
  have hcompat : ∀ z : A, e (algebraMap R _ (φ z)) =
      Ideal.Quotient.mk _ (MvPowerSeries.C (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) z)) := by
    intro z
    have := RingHom.congr_fun compat z
    simpa only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom] using this
  have hρA : ∀ z : A, ρ (φ z) =
      Ideal.Quotient.mk q (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) z) := by
    intro z
    rw [hρ, (hΨ 0 _ _ (hcompat z)).1, MvPowerSeries.constantCoeff_C]
  have hDA : ∀ (j : Fin 2) (z : A), D j (φ z) = 0 := by
    intro j z
    rw [hDdef, (hΨ j _ _ (hcompat z)).2, MvPowerSeries.coeff_C,
      if_neg (Finsupp.single_ne_zero.mpr one_ne_zero), map_zero]
  have hDadd : ∀ (j : Fin 2) (x y : R), D j (x + y) = D j x + D j y := by
    intro j x y
    rw [hDdef, hDdef, hDdef, map_add, TrivSqZeroExt.snd_add]
  have hDmul : ∀ (j : Fin 2) (x y : R), D j (x * y) = ρ x * D j y + ρ y * D j x := by
    intro j x y
    rw [hDdef, hDdef, hDdef, map_mul, DualNumber.snd_mul, hfst, hfst]
    ring



  have hD2 : ∀ y : AdicCompletion (IsLocalRing.maximalIdeal R) R, ∃ r : R,
      y - algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) r ∈
        Ideal.map (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))
          (IsLocalRing.maximalIdeal R ^ 2) := by
    intro y
    have hfg : (IsLocalRing.maximalIdeal R).FG := IsNoetherian.noetherian _
    have hmem : ∀ b : AdicCompletion (IsLocalRing.maximalIdeal R) R,
        b ∈ Ideal.map (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))
          (IsLocalRing.maximalIdeal R ^ 2) ↔
        AdicCompletion.eval (IsLocalRing.maximalIdeal R) R 2 b = 0 := by
      intro b
      have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := R) (n := 2) hfg
      have h2 := Ideal.smul_top_eq_map (S := AdicCompletion (IsLocalRing.maximalIdeal R) R)
        (IsLocalRing.maximalIdeal R ^ 2)
      have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
      rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
      exact h3
    have hof : ∀ p : R, AdicCompletion.eval (IsLocalRing.maximalIdeal R) R 2
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) p) =
        Submodule.Quotient.mk p := by
      intro p
      change AdicCompletion.eval (IsLocalRing.maximalIdeal R) R 2
        (AdicCompletion.of (IsLocalRing.maximalIdeal R) R p) = _
      rw [AdicCompletion.eval_of]
      rfl
    obtain ⟨p, hp⟩ := Submodule.Quotient.mk_surjective _
      (AdicCompletion.eval (IsLocalRing.maximalIdeal R) R 2 y)
    refine ⟨p, (hmem _).mpr ?_⟩
    rw [map_sub, hof, hp, sub_self]
  choose r hr using fun i : Fin 2 => hD2 (e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X i)))
  choose Fz hFz using fun i : Fin 2 => Ideal.Quotient.mk_surjective
    (e (e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X i)) - algebraMap R _ (r i)))
  have hri : ∀ i : Fin 2, e (algebraMap R _ (r i)) =
      Ideal.Quotient.mk _ (MvPowerSeries.X i - Fz i) := by
    intro i
    rw [map_sub (Ideal.Quotient.mk _), hFz i, map_sub, RingEquiv.apply_symm_apply, sub_sub_cancel]
  have hLi : ∀ i j : Fin 2, AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1
      (MvPowerSeries.coeff (Finsupp.single j 1) (Fz i)) = 0 :=
    fun i j => hL _ (hr i) (Fz i) (hFz i).symm j
  have hDr : ∀ i j : Fin 2, D j (r i) =
      Ideal.Quotient.mk q (MvPowerSeries.coeff (Finsupp.single j 1) (MvPowerSeries.X i - Fz i)) :=
    fun i j => (hΨ j (r i) _ (hri i)).2
  have hXc : ∀ i j : Fin 2, MvPowerSeries.coeff (Finsupp.single j 1)
      (MvPowerSeries.X i : MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A)) =
        if j = i then 1 else 0 := by
    intro i j
    rw [MvPowerSeries.coeff_X]
    by_cases hij : j = i
    · subst hij
      simp
    · rw [if_neg hij, if_neg]
      intro h'
      exact hij ((Finsupp.single_left_inj one_ne_zero).mp h')
  have hev1 : ∀ i j : Fin 2, AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1
      (MvPowerSeries.coeff (Finsupp.single j 1) (MvPowerSeries.X i - Fz i)) =
        if j = i then 1 else 0 := by
    intro i j
    rw [map_sub, map_sub, hLi, sub_zero, hXc]
    split_ifs <;> simp



  have hdet : IsUnit (D 0 (r 0) * D 1 (r 1) - D 1 (r 0) * D 0 (r 1)) := by
    rw [hDr, hDr, hDr, hDr, ← map_mul, ← map_mul, ← map_sub]
    set u := MvPowerSeries.coeff (Finsupp.single 0 1) (MvPowerSeries.X 0 - Fz 0) *
        MvPowerSeries.coeff (Finsupp.single 1 1) (MvPowerSeries.X 1 - Fz 1) -
      MvPowerSeries.coeff (Finsupp.single 1 1) (MvPowerSeries.X 0 - Fz 0) *
        MvPowerSeries.coeff (Finsupp.single 0 1) (MvPowerSeries.X 1 - Fz 1) with hu
    have hevu : AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1 u = 1 := by
      rw [hu, map_sub, map_mul, map_mul, hev1, hev1, hev1, hev1]
      simp
    have hunit : IsUnit u := s1 u (by rw [hevu]; exact hk1)
    exact hunit.map _
  have hKA := KA (AdicCompletion (IsLocalRing.maximalIdeal A) A ⧸ q) ρ D hDadd hDmul hDA (r 0) (r 1)
  rw [hρA] at hKA
  have hz : Ideal.Quotient.mk q (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) a) = 0 :=
    (IsUnit.mul_left_eq_zero hdet).mp hKA
  exact Ideal.Quotient.eq_zero_iff_mem.mp hz

theorem wcpa_dj_stc_kmnt_order_bound : ∀ (B : Type u) [CommRing B] [IsDomain B] [IsNoetherianRing B] (a : B), a ≠ 0 → ∃ N : ℕ, ∀ (p : Ideal B) [p.IsPrime] (L : Type u) [CommRing L] [Algebra B L] [IsLocalization.AtPrime L p] (π : L), Prime π → ∀ c : ℕ, π ^ c ∣ algebraMap B L a → c ≤ N :=
by
  intro B _ _ _ a ha
  classical
  have hL : ∀ (p : Ideal B) [p.IsPrime] (L : Type u) [CommRing L] [Algebra B L]
      [IsLocalization.AtPrime L p],
      IsDomain L ∧ IsNoetherianRing L ∧ Function.Injective (algebraMap B L) := by
    intro p _ L _ _ _
    exact ⟨IsLocalization.isDomain_of_le_nonZeroDivisors (M := p.primeCompl) L
        (Ideal.primeCompl_le_nonZeroDivisors p),
      IsLocalization.isNoetherianRing p.primeCompl L inferInstance,
      IsLocalization.injective L (Ideal.primeCompl_le_nonZeroDivisors p)⟩
  have hqp : ∀ (p : Ideal B) [p.IsPrime] (L : Type u) [CommRing L] [Algebra B L]
      [IsLocalization.AtPrime L p] (π : L), Prime π →
      Ideal.comap (algebraMap B L) (Ideal.span {π}) ≤ p := by
    intro p _ L _ _ _ π hπ z hz
    by_contra hzp
    have hu : IsUnit (algebraMap B L z) :=
      IsLocalization.map_units L (⟨z, hzp⟩ : p.primeCompl)
    rw [Ideal.mem_comap, Ideal.mem_span_singleton] at hz
    exact hπ.not_isUnit (isUnit_of_dvd_unit hz hu)
  have s1 : ∀ (P : Ideal B) [P.IsPrime], ∃ n : ℕ, ∀ (p : Ideal B) [p.IsPrime] (L : Type u)
      [CommRing L] [Algebra B L] [IsLocalization.AtPrime L p] (π : L), Prime π →
      Ideal.comap (algebraMap B L) (Ideal.span {π}) = P →
      ∀ c : ℕ, π ^ c ∣ algebraMap B L a → c ≤ n := by
    intro P _
    obtain ⟨hdomP, hnoethP, hinjP⟩ := hL P (Localization.AtPrime P)
    have hMtop : Ideal.map (algebraMap B (Localization.AtPrime P)) P ≠ ⊤ := by
      rw [Localization.AtPrime.map_eq_maximalIdeal]
      exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top
    have hK := Ideal.iInf_pow_eq_bot_of_isDomain _ hMtop
    have hja : algebraMap B (Localization.AtPrime P) a ∉
        ⨅ i, (Ideal.map (algebraMap B (Localization.AtPrime P)) P) ^ i := by
      rw [hK, Ideal.mem_bot]
      intro h
      exact ha (hinjP (by rw [h, map_zero]))
    rw [Ideal.mem_iInf, not_forall] at hja
    obtain ⟨n₀, hn₀⟩ := hja
    refine ⟨n₀, ?_⟩
    intro p _ L _ _ _ π hπ hq c hc
    have hPp : P ≤ p := hq ▸ hqp p L π hπ
    have hunit : ∀ y : p.primeCompl, IsUnit (algebraMap B (Localization.AtPrime P) y) :=
      fun y => IsLocalization.map_units (Localization.AtPrime P)
        (⟨y.1, fun h => y.2 (hPp h)⟩ : P.primeCompl)
    let φ : L →+* Localization.AtPrime P := IsLocalization.lift (M := p.primeCompl) hunit
    have hφ : ∀ x, φ (algebraMap B L x) = algebraMap B (Localization.AtPrime P) x :=
      IsLocalization.lift_eq hunit
    have hφπ : φ π ∈ Ideal.map (algebraMap B (Localization.AtPrime P)) P := by
      obtain ⟨⟨x, s⟩, hs⟩ := IsLocalization.surj p.primeCompl π
      dsimp only at hs
      have hxP : x ∈ P := by
        rw [← hq, Ideal.mem_comap, Ideal.mem_span_singleton, ← hs]
        exact dvd_mul_right _ _
      have h1 : φ π * algebraMap B (Localization.AtPrime P) s
          = algebraMap B (Localization.AtPrime P) x := by
        rw [← hφ, ← hφ, ← map_mul, hs]
      rw [← Ideal.mul_unit_mem_iff_mem _ (hunit s), h1]
      exact Ideal.mem_map_of_mem _ hxP
    obtain ⟨w, hw⟩ := hc
    have hjaM : algebraMap B (Localization.AtPrime P) a ∈
        (Ideal.map (algebraMap B (Localization.AtPrime P)) P) ^ c := by
      rw [← hφ, hw, map_mul, map_pow]
      exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow hφπ c)
    by_contra hcn
    push_neg at hcn
    exact hn₀ (Ideal.pow_le_pow_right hcn.le hjaM)
  have s2 : ∀ (p : Ideal B) [p.IsPrime] (L : Type u) [CommRing L] [Algebra B L]
      [IsLocalization.AtPrime L p] (π : L), Prime π → π ∣ algebraMap B L a →
      Ideal.comap (algebraMap B L) (Ideal.span {π}) ∈ (Ideal.span {a}).minimalPrimes := by
    intro p _ L _ _ _ π hπ hπa
    obtain ⟨hdomL, hnoethL, hinjL⟩ := hL p L
    have hQp : (Ideal.span {π}).IsPrime := (Ideal.span_singleton_prime hπ.ne_zero).mpr hπ
    have hqprime : (Ideal.comap (algebraMap B L) (Ideal.span {π})).IsPrime :=
      Ideal.IsPrime.comap _
    have haq : Ideal.span {a} ≤ Ideal.comap (algebraMap B L) (Ideal.span {π}) := by
      rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Ideal.mem_comap,
        Ideal.mem_span_singleton]
      exact hπa
    refine ⟨⟨hqprime, haq⟩, ?_⟩
    rintro P' ⟨hP'p, haP'⟩ hP'q
    have hdisj : Disjoint (p.primeCompl : Set B) P' := by
      rw [Set.disjoint_left]
      intro z hz hzP'
      exact hz (hqp p L π hπ (hP'q hzP'))
    have hIprime := IsLocalization.isPrime_of_isPrime_disjoint p.primeCompl L P' hP'p hdisj
    have hIcomap : Ideal.comap (algebraMap B L) (Ideal.map (algebraMap B L) P') = P' :=
      IsLocalization.under_map_of_isPrime_disjoint p.primeCompl L hP'p hdisj
    have hIQ : Ideal.map (algebraMap B L) P' ≤ Ideal.span {π} :=
      Ideal.map_le_iff_le_comap.mpr hP'q
    by_cases hπI : π ∈ Ideal.map (algebraMap B L) P'
    · rw [← hIcomap]
      exact Ideal.comap_mono ((Ideal.span_singleton_le_iff_mem _).mpr hπI)
    · exfalso
      have hall : ∀ n : ℕ, Ideal.map (algebraMap B L) P' ≤ (Ideal.span {π}) ^ n := by
        intro n
        induction n with
        | zero => simp
        | succ n ih =>
          intro y hy
          obtain ⟨w, rfl⟩ := Ideal.mem_span_singleton.mp (hIQ hy)
          have hw : w ∈ Ideal.map (algebraMap B L) P' :=
            (hIprime.mem_or_mem hy).resolve_left hπI
          have h2 := ih hw
          rw [Ideal.span_singleton_pow, Ideal.mem_span_singleton] at h2 ⊢
          rw [pow_succ']
          exact mul_dvd_mul_left π h2
      have hbot := Ideal.iInf_pow_eq_bot_of_isDomain (Ideal.span {π}) hQp.ne_top
      have hmem : algebraMap B L a ∈ Ideal.map (algebraMap B L) P' :=
        Ideal.mem_map_of_mem _ (haP' (Ideal.mem_span_singleton_self a))
      have h0 : algebraMap B L a ∈ (⊥ : Ideal L) :=
        hbot ▸ Ideal.mem_iInf.mpr (fun n => hall n hmem)
      exact ha (hinjL (by rw [Ideal.mem_bot.mp h0, map_zero]))
  have hfin := Ideal.finite_minimalPrimes_of_isNoetherianRing B (Ideal.span {a})
  choose nP hnP using fun P : {P : Ideal B // P.IsPrime} => @s1 P.1 P.2
  let f : Ideal B → ℕ := fun P => if h : P.IsPrime then nP ⟨P, h⟩ else 0
  refine ⟨hfin.toFinset.sup f, ?_⟩
  intro p _ L _ _ _ π hπ c hc
  rcases Nat.eq_zero_or_pos c with rfl | hc0
  · exact Nat.zero_le _
  have hmin := s2 p L π hπ ((dvd_pow_self π hc0.ne').trans hc)
  have hqP : (Ideal.comap (algebraMap B L) (Ideal.span {π})).IsPrime := hmin.1.1
  calc c ≤ nP ⟨_, hqP⟩ := hnP ⟨_, hqP⟩ p L π hπ rfl c hc
    _ = f (Ideal.comap (algebraMap B L) (Ideal.span {π})) := by simp [f, hqP]
    _ ≤ _ := Finset.le_sup (hfin.mem_toFinset.mpr hmin)

theorem wcpa_dj_stc_kmnt_alt_kill : ∀ (B C : Type u) [CommRing B] [CommRing C] [Algebra B C], Module.Finite C Ω[C⁄B] → ∀ b : B, (∀ Q : Ideal C, Q.IsPrime → algebraMap B C b ∉ Q → ∃ ω : Ω[C⁄B], ∀ ω' : Ω[C⁄B], ∃ (s u : C), s ∉ Q ∧ s • ω' = u • ω) → ∃ N : ℕ, ∀ (T : Type u) [CommRing T] (f : C →+* T) (D : Fin 2 → C → T), (∀ j x y, D j (x + y) = D j x + D j y) → (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) → (∀ j z, D j (algebraMap B C z) = 0) → ∀ r₀ r₁ : C, f (algebraMap B C (b ^ N)) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0 :=
by
  intro B C _ _ _ hfin b hcyc
  classical
  let P : C → Prop := fun σ => ∃ ω₀ : Ω[C⁄B], ∀ ω : Ω[C⁄B], ∃ u : C, σ • ω = u • ω₀

  have s2 : ∀ Q : Ideal C, Q.IsPrime → algebraMap B C b ∉ Q → ∃ σ, P σ ∧ σ ∉ Q := by
    intro Q hQ ha
    obtain ⟨ω₀, hω₀⟩ := hcyc Q hQ ha
    obtain ⟨n, g, hg⟩ := Module.Finite.exists_fin (R := C) (M := Ω[C⁄B])
    choose s u hs hsu using fun i => hω₀ (g i)
    refine ⟨∏ i, s i, ⟨ω₀, fun ω => ?_⟩, ?_⟩
    · have hω : ω ∈ Submodule.span C (Set.range g) := by rw [hg]; trivial
      induction hω using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨i, rfl⟩ := hx
        refine ⟨(∏ i' ∈ Finset.univ.erase i, s i') * u i, ?_⟩
        rw [← Finset.mul_prod_erase Finset.univ s (Finset.mem_univ i), mul_comm, mul_smul,
          hsu i, smul_smul]
      | zero => exact ⟨0, by simp⟩
      | add x y _ _ hx hy =>
        obtain ⟨a, ha⟩ := hx
        obtain ⟨c, hc⟩ := hy
        exact ⟨a + c, by rw [smul_add, ha, hc, add_smul]⟩
      | smul c x _ hx =>
        obtain ⟨a, ha⟩ := hx
        exact ⟨c * a, by rw [smul_comm, ha, smul_smul]⟩
    · intro hmem
      haveI := hQ
      obtain ⟨i, _, hi⟩ := Ideal.IsPrime.prod_mem_iff.mp hmem
      exact hs i hi

  let K : Ideal C := Ideal.span ((fun σ : C => σ ^ 2) '' {σ | P σ})
  have hrad : algebraMap B C b ∈ K.radical := by
    rw [Ideal.radical_eq_sInf, Ideal.mem_sInf]
    rintro J ⟨hKJ, hJ⟩
    by_contra ha
    obtain ⟨σ, hσ, hσJ⟩ := s2 J hJ ha
    exact hσJ (hJ.mem_of_pow_mem 2 (hKJ (Ideal.subset_span ⟨σ, hσ, rfl⟩)))
  obtain ⟨M, hM⟩ := (Ideal.mem_radical_iff).mp hrad
  refine ⟨M, ?_⟩
  intro T _ f D hadd hmul hvan r₀ r₁
  letI : Algebra C T := f.toAlgebra
  letI : Algebra B T := (f.comp (algebraMap B C)).toAlgebra
  haveI : IsScalarTower B C T := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have hL : ∀ j, ∃ L : Ω[C⁄B] →ₗ[C] T, ∀ x, L (KaehlerDifferential.D B C x) = D j x := by
    intro j
    let D' : C →ₗ[B] T :=
      { toFun := D j
        map_add' := hadd j
        map_smul' := fun z x => by
          show D j (z • x) = z • D j x
          rw [Algebra.smul_def, hmul, hvan, mul_zero, add_zero, Algebra.smul_def]
          rfl }
    let Dd : Derivation B C T := Derivation.mk' D' (fun x y => by
      show D j (x * y) = x • D j y + y • D j x
      rw [hmul, Algebra.smul_def, Algebra.smul_def]
      rfl)
    exact ⟨Dd.liftKaehlerDifferential, fun x => Dd.liftKaehlerDifferential_comp_D x⟩
  choose L hL using hL
  have hkill : ∀ x ∈ K, f x * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0 := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨σ, ⟨ω₀, hω₀⟩, rfl⟩ := hx
      obtain ⟨u₀, h₀⟩ := hω₀ (KaehlerDifferential.D B C r₀)
      obtain ⟨u₁, h₁⟩ := hω₀ (KaehlerDifferential.D B C r₁)
      have key : ∀ (j : Fin 2) (r u : C), σ • KaehlerDifferential.D B C r = u • ω₀ →
          f σ * D j r = f u * L j ω₀ := by
        intro j r u h
        have h' := congrArg (L j) h
        rw [map_smul, map_smul, hL, Algebra.smul_def, Algebra.smul_def] at h'
        exact h'
      have e00 := key 0 r₀ u₀ h₀
      have e01 := key 0 r₁ u₁ h₁
      have e10 := key 1 r₀ u₀ h₀
      have e11 := key 1 r₁ u₁ h₁
      show f (σ ^ 2) * _ = 0
      rw [map_pow]
      linear_combination (f σ * D 1 r₁) * e00 + (f u₀ * L 0 ω₀) * e11
        - (f σ * D 0 r₁) * e10 - (f u₀ * L 1 ω₀) * e01
    | zero => rw [map_zero, zero_mul]
    | add x y _ _ hx hy => rw [map_add, add_mul, hx, hy, add_zero]
    | smul c x _ hx => rw [smul_eq_mul, map_mul, mul_assoc, hx, mul_zero]
  rw [map_pow]
  exact hkill _ hM

theorem wcpa_dj_stc_kmnt_annihilator_cover : (∀ (B C : Type u) [CommRing B] [CommRing C] [Algebra B C], Module.Finite C Ω[C⁄B] → ∀ b : B, (∀ Q : Ideal C, Q.IsPrime → algebraMap B C b ∉ Q → ∃ ω : Ω[C⁄B], ∀ ω' : Ω[C⁄B], ∃ (s u : C), s ∉ Q ∧ s • ω' = u • ω) → ∃ N : ℕ, ∀ (T : Type u) [CommRing T] (f : C →+* T) (D : Fin 2 → C → T), (∀ j x y, D j (x + y) = D j x + D j y) → (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) → (∀ j z, D j (algebraMap B C z) = 0) → ∀ r₀ r₁ : C, f (algebraMap B C (b ^ N)) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0) → (∀ (B C : Type u) [CommRing B] [CommRing C] [Algebra B C] (Q : Ideal C) [Q.IsPrime], (∃ ω₀ : Ω[Localization.AtPrime Q⁄B], ∀ ω' : Ω[Localization.AtPrime Q⁄B], ∃ x : Localization.AtPrime Q, ω' = x • ω₀) → ∃ ω : Ω[C⁄B], ∀ ω' : Ω[C⁄B], ∃ (s u : C), s ∉ Q ∧ s • ω' = u • ω) → ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y] (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens) (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens) (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra), wcpaDjStcKmHyp k S Y sS g m τ W mD Dc N I O a → ∃ (r : ℕ) (V : Fin r → S.affineOpens) (b : ∀ ν, Γ(S, (V ν).1)), (∀ x : S, ∃ ν, x ∈ (V ν).1) ∧ (∀ ν, ((V ν).1 : Set S).Nonempty) ∧ (∀ ν, b ν ≠ 0) ∧ ∀ (y : Y) (ν : Fin r) (hy : g y ∈ (V ν).1), ∃ (V' : Y.affineOpens) (hyV : y ∈ V'.1) (hle : V'.1 ≤ g ⁻¹ᵁ (V ν).1), ∀ (T : Type u) [CommRing T] (f : Γ(Y, V'.1) →+* T) (D : Fin 2 → Γ(Y, V'.1) → T), (∀ j x y, D j (x + y) = D j x + D j y) → (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) → (∀ j z, D j ((g.appLE (V ν).1 V'.1 hle).hom z) = 0) → ∀ r₀ r₁ : Γ(Y, V'.1), f ((g.appLE (V ν).1 V'.1 hle).hom (b ν)) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0 :=
by
  intro hAK hCS k _ _ S Y _ _ sS g m τ W mD Dc N I O a hH
  classical

  have sT : ∀ (A B A' B' : Type u) [CommRing A] [CommRing B] [CommRing A'] [CommRing B']
      [Algebra A B] [Algebra A' B'] (α : A →+* A') (β : B →+* B'), Function.Surjective β →
      β.comp (algebraMap A B) = (algebraMap A' B').comp α →
      (∃ ω : Ω[B⁄A], ∀ ω' : Ω[B⁄A], ∃ x : B, ω' = x • ω) →
      ∃ ω : Ω[B'⁄A'], ∀ ω' : Ω[B'⁄A'], ∃ x : B', ω' = x • ω := by
    intro A B A' B' _ _ _ _ _ _ α β hβ hc h
    letI : Algebra A A' := α.toAlgebra
    letI : Algebra B B' := β.toAlgebra
    letI : Algebra A B' := (β.comp (algebraMap A B)).toAlgebra
    haveI : IsScalarTower A B B' := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
    haveI : IsScalarTower A A' B' :=
      IsScalarTower.of_algebraMap_eq (fun x => RingHom.congr_fun hc x)
    obtain ⟨ω, hω⟩ := h
    have hs : Function.Surjective (KaehlerDifferential.map A A' B B') :=
      KaehlerDifferential.map_surjective_of_surjective _ _ _ _ hβ
    refine ⟨KaehlerDifferential.map A A' B B' ω, fun ω' => ?_⟩
    obtain ⟨η, rfl⟩ := hs ω'
    obtain ⟨x, rfl⟩ := hω η
    refine ⟨β x, ?_⟩
    rw [LinearMap.map_smul]
    exact algebraMap_smul B' x _

  have sL : ∀ (B A R : Type u) [CommRing B] [CommRing A] [CommRing R] [Algebra B A]
      [Algebra A R] [Algebra B R] [IsScalarTower B A R] (M : Submonoid B) [IsLocalization M A],
      (∃ ω : Ω[R⁄A], ∀ ω' : Ω[R⁄A], ∃ x : R, ω' = x • ω) →
      ∃ ω : Ω[R⁄B], ∀ ω' : Ω[R⁄B], ∃ x : R, ω' = x • ω := by
    intro B A R _ _ _ _ _ _ _ M _ h
    obtain ⟨ω, hω⟩ := h
    haveI : Algebra.FormallyUnramified B A := Algebra.FormallyUnramified.of_isLocalization M
    haveI : Subsingleton Ω[A⁄B] := Algebra.FormallyUnramified.subsingleton_kaehlerDifferential
    have hinj : Function.Injective (KaehlerDifferential.map B A R R) := by
      rw [injective_iff_map_eq_zero]
      intro x hx
      obtain ⟨y, rfl⟩ := (KaehlerDifferential.exact_mapBaseChange_map B A R x).mp hx
      have hsub : ∀ y : TensorProduct A R Ω[A⁄B], y = 0 := by
        intro y
        induction y using TensorProduct.induction_on with
        | zero => rfl
        | tmul l ω => rw [Subsingleton.elim ω 0, TensorProduct.tmul_zero]
        | add a b ha hb => rw [ha, hb, add_zero]
      rw [hsub y, map_zero]
    obtain ⟨θ, hθ⟩ := KaehlerDifferential.map_surjective B A R ω
    refine ⟨θ, fun η => ?_⟩
    obtain ⟨x, hx⟩ := hω (KaehlerDifferential.map B A R R η)
    refine ⟨x, hinj ?_⟩
    rw [hx, LinearMap.map_smul, hθ]

  have sSm : ∀ {Z T : Scheme.{u}} (φ : Z ⟶ T) [SmoothOfRelativeDimension 1 φ] (z : Z),
      letI := (φ.stalkMap z).hom.toAlgebra
      ∃ ω : Ω[Z.presheaf.stalk z⁄T.presheaf.stalk (φ z)],
        ∀ ω' : Ω[Z.presheaf.stalk z⁄T.presheaf.stalk (φ z)],
          ∃ x : Z.presheaf.stalk z, ω' = x • ω := by
    intro Z T φ _ z
    have s2 : ∀ (A C L : Type u) [CommRing A] [CommRing C] [CommRing L] [Algebra C L]
        (f : A →+* C) (_hf : RingHom.IsStandardSmoothOfRelativeDimension 1 f)
        (q : Ideal C) [q.IsPrime] [IsLocalization.AtPrime L q]
        (g : A →+* L), g = (algebraMap C L).comp f →
        letI := g.toAlgebra
        Module.Free L Ω[L⁄A] ∧ Module.Finite L Ω[L⁄A] ∧ Module.finrank L Ω[L⁄A] = 1 := by
      intro A C L _ _ _ _ f hf q _ _ g hg
      subst hg
      letI : Algebra A C := f.toAlgebra
      letI : Algebra A L := ((algebraMap C L).comp f).toAlgebra
      haveI : IsScalarTower A C L := IsScalarTower.of_algebraMap_eq' rfl
      haveI : Algebra.IsStandardSmoothOfRelativeDimension 1 A C :=
        RingHom.IsStandardSmoothOfRelativeDimension.toAlgebra 1 hf
      haveI : Algebra.IsStandardSmooth A C :=
        Algebra.IsStandardSmoothOfRelativeDimension.isStandardSmooth 1
      haveI : Algebra.FinitePresentation A C := Algebra.IsStandardSmooth.finitePresentation
      haveI : Algebra.FiniteType A C := Algebra.FiniteType.of_finitePresentation
      haveI : Algebra.EssFiniteType A C := Algebra.EssFiniteType.of_finiteType A C
      haveI : Module.Free C Ω[C⁄A] := Algebra.IsStandardSmooth.free_kaehlerDifferential
      haveI : Module.Finite C Ω[C⁄A] := KaehlerDifferential.finite A C
      haveI : Nontrivial C := by
        refine ⟨⟨0, 1, fun h => ?_⟩⟩
        apply (‹q.IsPrime›).ne_top
        rw [Ideal.eq_top_iff_one, ← h]
        exact q.zero_mem
      haveI : IsLocalRing L := IsLocalization.AtPrime.isLocalRing L q
      have hrkC : Module.finrank C Ω[C⁄A] = 1 :=
        Module.finrank_eq_of_rank_eq
          (Algebra.IsStandardSmoothOfRelativeDimension.rank_kaehlerDifferential 1)
      haveI : Algebra.FormallyEtale C L := Algebra.FormallyEtale.of_isLocalization q.primeCompl
      obtain ⟨Φ, -⟩ : ∃ Φ : TensorProduct C L Ω[C⁄A] ≃ₗ[L] Ω[L⁄A],
          Φ = KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale A C L := ⟨_, rfl⟩
      refine ⟨Module.Free.of_equiv Φ, Module.Finite.equiv Φ, ?_⟩
      rw [← LinearEquiv.finrank_eq Φ, Module.finrank_baseChange, hrkC]
    obtain ⟨U, hU, V, hV, hz, e, hstd⟩ :=
      SmoothOfRelativeDimension.exists_isStandardSmoothOfRelativeDimension (n := 1) (f := φ) z
    have hφz : φ z ∈ U := e hz
    letI : Algebra Γ(T, U) (T.presheaf.stalk (φ z)) :=
      TopCat.Presheaf.algebra_section_stalk T.presheaf ⟨φ z, hφz⟩
    haveI : IsLocalization.AtPrime (T.presheaf.stalk (φ z)) (hU.primeIdealOf ⟨φ z, hφz⟩).asIdeal :=
      hU.isLocalization_stalk ⟨φ z, hφz⟩
    letI : Algebra Γ(Z, V) (Z.presheaf.stalk z) :=
      TopCat.Presheaf.algebra_section_stalk Z.presheaf ⟨z, hz⟩
    haveI : IsLocalization.AtPrime (Z.presheaf.stalk z) (hV.primeIdealOf ⟨z, hz⟩).asIdeal :=
      hV.isLocalization_stalk ⟨z, hz⟩
    have key : φ.appLE U V e ≫ Z.presheaf.germ V z hz =
        T.presheaf.germ U (φ z) hφz ≫ φ.stalkMap z := by
      rw [Scheme.Hom.germ_stalkMap, Scheme.Hom.appLE, Category.assoc, TopCat.Presheaf.germ_res]
    have hg : (φ.stalkMap z).hom.comp (algebraMap Γ(T, U) (T.presheaf.stalk (φ z))) =
        (algebraMap Γ(Z, V) (Z.presheaf.stalk z)).comp (φ.appLE U V e).hom := by
      ext c
      exact congrArg (fun ψ => ψ.hom c) key.symm
    have H := s2 Γ(T, U) Γ(Z, V) (Z.presheaf.stalk z)
      (φ.appLE U V e).hom hstd (hV.primeIdealOf ⟨z, hz⟩).asIdeal _ hg
    letI : Algebra (T.presheaf.stalk (φ z)) (Z.presheaf.stalk z) := (φ.stalkMap z).hom.toAlgebra
    letI : Algebra Γ(T, U) (Z.presheaf.stalk z) :=
      ((φ.stalkMap z).hom.comp (algebraMap Γ(T, U) (T.presheaf.stalk (φ z)))).toAlgebra
    obtain ⟨hFree, hFin, hrk⟩ := H
    haveI : IsScalarTower Γ(T, U) (T.presheaf.stalk (φ z)) (Z.presheaf.stalk z) :=
      IsScalarTower.of_algebraMap_eq' rfl
    haveI : Module.Free (Z.presheaf.stalk z) Ω[Z.presheaf.stalk z⁄Γ(T, U)] := hFree
    haveI : Module.Finite (Z.presheaf.stalk z) Ω[Z.presheaf.stalk z⁄Γ(T, U)] := hFin
    have hcycU : ∃ ω : Ω[Z.presheaf.stalk z⁄Γ(T, U)], ∀ ω' : Ω[Z.presheaf.stalk z⁄Γ(T, U)],
        ∃ x : Z.presheaf.stalk z, ω' = x • ω := by
      let eb := Module.finBasisOfFinrankEq (Z.presheaf.stalk z) Ω[Z.presheaf.stalk z⁄Γ(T, U)] hrk
      refine ⟨eb 0, fun ω' => ⟨eb.repr ω' 0, ?_⟩⟩
      conv_lhs => rw [← eb.sum_repr ω']
      rw [Fin.sum_univ_one]
    obtain ⟨ω, hω⟩ := hcycU
    refine ⟨KaehlerDifferential.map Γ(T, U) (T.presheaf.stalk (φ z)) (Z.presheaf.stalk z)
      (Z.presheaf.stalk z) ω, fun ω' => ?_⟩
    obtain ⟨η, rfl⟩ := KaehlerDifferential.map_surjective Γ(T, U) (T.presheaf.stalk (φ z))
      (Z.presheaf.stalk z) ω'
    obtain ⟨x, rfl⟩ := hω η
    exact ⟨x, LinearMap.map_smul _ _ _⟩

  have hcycW : ∀ y : Y, g y ∈ W →
      letI := (g.stalkMap y).hom.toAlgebra
      ∃ ω : Ω[Y.presheaf.stalk y⁄S.presheaf.stalk (g y)],
        ∀ ω' : Ω[Y.presheaf.stalk y⁄S.presheaf.stalk (g y)],
          ∃ x : Y.presheaf.stalk y, ω' = x • ω := by
    intro y hy
    haveI : SmoothOfRelativeDimension 1 (g ∣_ W) := hH.2.2.2.2.2.2.1
    let z : (g ⁻¹ᵁ W : Y.Opens) := ⟨y, hy⟩
    have h0 := sSm (g ∣_ W) z
    let E := morphismRestrictStalkMap g W z
    letI : Algebra (W.toScheme.presheaf.stalk ((g ∣_ W) z))
        ((g ⁻¹ᵁ W).toScheme.presheaf.stalk z) := ((g ∣_ W).stalkMap z).hom.toAlgebra
    letI : Algebra (S.presheaf.stalk (g y)) (Y.presheaf.stalk y) := (g.stalkMap y).hom.toAlgebra
    have hsurj : Function.Surjective E.hom.right.hom := by
      intro b
      refine ⟨E.inv.right.hom b, ?_⟩
      change (E.inv.right ≫ E.hom.right).hom b = b
      rw [Arrow.inv_hom_id_right]
      rfl
    have hcomm : E.hom.right.hom.comp ((g ∣_ W).stalkMap z).hom =
        (g.stalkMap y).hom.comp E.hom.left.hom :=
      (congrArg (fun f => f.hom) (Arrow.w E.hom)).symm
    exact sT (W.toScheme.presheaf.stalk ((g ∣_ W) z)) ((g ⁻¹ᵁ W).toScheme.presheaf.stalk z)
      (S.presheaf.stalk (g y)) (Y.presheaf.stalk y) E.hom.left.hom E.hom.right.hom hsurj hcomm h0

  have hprime : ∀ (U : S.affineOpens) (V' : Y.affineOpens) (hle : V'.1 ≤ g ⁻¹ᵁ U.1)
      (b₀ : Γ(S, U.1)), S.basicOpen b₀ ≤ W → ∀ (Q : Ideal Γ(Y, V'.1)) [Q.IsPrime],
      (g.appLE U.1 V'.1 hle).hom b₀ ∉ Q →
      letI := (g.appLE U.1 V'.1 hle).hom.toAlgebra
      ∃ ω₀ : Ω[Localization.AtPrime Q⁄Γ(S, U.1)],
        ∀ ω' : Ω[Localization.AtPrime Q⁄Γ(S, U.1)], ∃ x : Localization.AtPrime Q, ω' = x • ω₀ := by
    intro U V' hle b₀ hbW Q _ hbQ
    letI : Algebra Γ(S, U.1) Γ(Y, V'.1) := (g.appLE U.1 V'.1 hle).hom.toAlgebra
    let q : PrimeSpectrum Γ(Y, V'.1) := ⟨Q, inferInstance⟩
    have hV'a : IsAffineOpen V'.1 := V'.2
    have hyV : hV'a.fromSpec q ∈ V'.1 := hV'a.range_fromSpec.subset ⟨q, rfl⟩
    set y := hV'a.fromSpec q with hydef
    letI : Algebra Γ(Y, V'.1) (Y.presheaf.stalk y) :=
      TopCat.Presheaf.algebra_section_stalk Y.presheaf ⟨y, hyV⟩
    haveI hLy : IsLocalization.AtPrime (Y.presheaf.stalk y) Q := hV'a.isLocalization_stalk' q hyV
    have hgyU : g y ∈ U.1 := hle hyV
    have hcomm : ((Y.presheaf.germ V'.1 y hyV).hom).comp (g.appLE U.1 V'.1 hle).hom =
        ((g.stalkMap y).hom).comp ((S.presheaf.germ U.1 (g y) hgyU).hom) := by
      apply RingHom.ext
      intro z
      simp only [RingHom.comp_apply]
      rw [Scheme.Hom.germ_stalkMap_apply]
      simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply]
      exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
    have hu1 : IsUnit ((Y.presheaf.germ V'.1 y hyV).hom ((g.appLE U.1 V'.1 hle).hom b₀)) :=
      (IsLocalization.AtPrime.isUnit_to_map_iff (Y.presheaf.stalk y) Q
        ((g.appLE U.1 V'.1 hle).hom b₀)).mpr hbQ
    have hu2 : IsUnit ((g.stalkMap y).hom ((S.presheaf.germ U.1 (g y) hgyU).hom b₀)) := by
      rw [← RingHom.comp_apply, ← hcomm, RingHom.comp_apply]
      exact hu1
    have hu3 : IsUnit ((S.presheaf.germ U.1 (g y) hgyU).hom b₀) :=
      isUnit_of_map_unit (g.stalkMap y).hom _ hu2
    have hgyW : g y ∈ W := hbW ((Scheme.mem_basicOpen S b₀ (g y) hgyU).mpr hu3)
    letI : Algebra Γ(S, U.1) (S.presheaf.stalk (g y)) :=
      TopCat.Presheaf.algebra_section_stalk S.presheaf ⟨g y, hgyU⟩
    haveI : IsLocalization.AtPrime (S.presheaf.stalk (g y))
        (U.2.primeIdealOf ⟨g y, hgyU⟩).asIdeal := U.2.isLocalization_stalk ⟨g y, hgyU⟩
    letI : Algebra (S.presheaf.stalk (g y)) (Y.presheaf.stalk y) := (g.stalkMap y).hom.toAlgebra
    letI iBR : Algebra Γ(S, U.1) (Y.presheaf.stalk y) :=
      ((Y.presheaf.germ V'.1 y hyV).hom.comp (g.appLE U.1 V'.1 hle).hom).toAlgebra
    haveI : IsScalarTower Γ(S, U.1) (S.presheaf.stalk (g y)) (Y.presheaf.stalk y) :=
      IsScalarTower.of_algebraMap_eq' hcomm
    have h1 := sL Γ(S, U.1) (S.presheaf.stalk (g y)) (Y.presheaf.stalk y)
      (U.2.primeIdealOf ⟨g y, hgyU⟩).asIdeal.primeCompl (hcycW y hgyW)
    let β : Y.presheaf.stalk y →+* Localization.AtPrime Q :=
      (IsLocalization.algEquiv Q.primeCompl (Y.presheaf.stalk y)
        (Localization.AtPrime Q)).toRingEquiv.toRingHom
    have hβ : Function.Surjective β :=
      (IsLocalization.algEquiv Q.primeCompl (Y.presheaf.stalk y)
        (Localization.AtPrime Q)).surjective
    have hc2 : β.comp (algebraMap Γ(S, U.1) (Y.presheaf.stalk y)) =
        (algebraMap Γ(S, U.1) (Localization.AtPrime Q)).comp (RingHom.id _) := by
      ext z
      simp only [RingHom.comp_apply, RingHom.id_apply]
      rw [IsScalarTower.algebraMap_apply Γ(S, U.1) Γ(Y, V'.1) (Localization.AtPrime Q)]
      exact (IsLocalization.algEquiv Q.primeCompl (Y.presheaf.stalk y)
        (Localization.AtPrime Q)).commutes ((g.appLE U.1 V'.1 hle).hom z)
    exact sT Γ(S, U.1) (Y.presheaf.stalk y) Γ(S, U.1) (Localization.AtPrime Q) (RingHom.id _) β
      hβ hc2 h1

  have hpp : ∀ {Y : Scheme.{u}} (s : Y ⟶ Spec (.of k)), wcpaDjIsProjOver k s → IsProper s := by
    intro Y s hs
    obtain ⟨N, j, hj, rfl⟩ := hs
    haveI := hj
    haveI hst : IsScalarTower k (↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))
        (MvPolynomial (Fin (N + 1)) k) :=
      IsScalarTower.of_algebraMap_eq
        (S := ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0)) (fun c => by
          rw [SetLike.GradeZero.algebraMap_apply]
          exact (SetLike.GradeZero.coe_algebraMap
            (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) c).symm)
    haveI : Algebra.FiniteType (↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))
        (MvPolynomial (Fin (N + 1)) k) :=
      Algebra.FiniteType.of_restrictScalars_finiteType k _ _
    haveI : IsProper (@Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra) := inferInstance
    have hkey : ∀ c : k, ((algebraMap k (↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0)) c :
        ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0)) : MvPolynomial (Fin (N + 1)) k) =
        MvPolynomial.C c := by
      intro c
      rw [SetLike.GradeZero.coe_algebraMap, MvPolynomial.algebraMap_eq]
    have hbij : Function.Bijective
        (algebraMap k (↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) := by
      constructor
      · intro a b hab
        have h1 := congrArg (fun x : ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0) =>
          (x : MvPolynomial (Fin (N + 1)) k)) hab
        simp only [hkey] at h1
        exact MvPolynomial.C_injective _ _ h1
      · intro p
        have hp : (p : MvPolynomial (Fin (N + 1)) k).IsHomogeneous 0 :=
          (MvPolynomial.mem_homogeneousSubmodule _ _).mp p.2
        have htd : (p : MvPolynomial (Fin (N + 1)) k).totalDegree = 0 :=
          Nat.le_zero.mp hp.totalDegree_le
        refine ⟨(p : MvPolynomial (Fin (N + 1)) k).coeff 0, Subtype.ext ?_⟩
        rw [hkey]
        exact ((MvPolynomial.totalDegree_eq_zero_iff_eq_C).mp htd).symm
    haveI : IsIso (CommRingCat.ofHom
        (algebraMap k (↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0)))) :=
      (ConcreteCategory.isIso_iff_bijective _).mpr hbij
    infer_instance
  haveI : IsProper sS := hpp sS hH.1
  haveI : CompactSpace S := QuasiCompact.compactSpace_of_compactSpace sS
  haveI : IsProper g := hH.2.2.1.2.1

  have hfin : ∀ (U : S.affineOpens) (V' : Y.affineOpens) (hle : V'.1 ≤ g ⁻¹ᵁ U.1),
      letI := (g.appLE U.1 V'.1 hle).hom.toAlgebra
      Module.Finite Γ(Y, V'.1) Ω[Γ(Y, V'.1)⁄Γ(S, U.1)] := by
    intro U V' hle
    letI : Algebra Γ(S, U.1) Γ(Y, V'.1) := (g.appLE U.1 V'.1 hle).hom.toAlgebra
    have hft : RingHom.FiniteType (g.appLE U.1 V'.1 hle).hom :=
      HasRingHomProperty.appLE (P := @LocallyOfFiniteType) g inferInstance U V' hle
    haveI : Algebra.FiniteType Γ(S, U.1) Γ(Y, V'.1) := hft
    haveI : Algebra.EssFiniteType Γ(S, U.1) Γ(Y, V'.1) := Algebra.EssFiniteType.of_finiteType _ _
    exact KaehlerDifferential.finite _ _

  have hrefine : ∀ U : S.affineOpens, ∃ (K : ℕ) (V' : Fin K → Y.affineOpens),
      (∀ k, (V' k).1 ≤ g ⁻¹ᵁ U.1) ∧ ∀ y : Y, g y ∈ U.1 → ∃ k, y ∈ (V' k).1 := by
    intro U
    have hc : IsCompact (⇑g ⁻¹' (U.1 : Set S)) :=
      QuasiCompact.isCompact_preimage (U.1 : Set S) U.1.isOpen U.2.isCompact
    have hA : ∀ y : (g ⁻¹ᵁ U.1 : Y.Opens), ∃ A : Y.affineOpens,
        (y : Y) ∈ A.1 ∧ A.1 ≤ g ⁻¹ᵁ U.1 := by
      intro y
      obtain ⟨A, hA, hyA, hle⟩ :=
        (TopologicalSpace.Opens.isBasis_iff_nbhd.mp (Scheme.isBasis_affineOpens Y)) y.2
      exact ⟨⟨A, hA⟩, hyA, hle⟩
    choose A hyA hAle using hA
    obtain ⟨t, ht⟩ := hc.elim_finite_subcover (fun y => ((A y).1 : Set Y))
      (fun y => (A y).1.isOpen) (fun y hy => Set.mem_iUnion.mpr ⟨⟨y, hy⟩, hyA ⟨y, hy⟩⟩)
    refine ⟨t.card, fun k => A (t.equivFin.symm k).1, fun k => hAle _, fun y hy => ?_⟩
    have := ht hy
    simp only [Set.mem_iUnion] at this
    obtain ⟨i, hi, hyi⟩ := this
    exact ⟨t.equivFin ⟨i, hi⟩, by simpa using hyi⟩

  have hchart : ∀ (U : S.affineOpens) (b₀ : Γ(S, U.1)), S.basicOpen b₀ ≤ W → ∃ Nν : ℕ,
      ∀ (y : Y), g y ∈ U.1 → ∃ (V' : Y.affineOpens) (_ : y ∈ V'.1) (hle : V'.1 ≤ g ⁻¹ᵁ U.1),
        ∀ (T : Type u) [CommRing T] (f : Γ(Y, V'.1) →+* T) (D : Fin 2 → Γ(Y, V'.1) → T),
          (∀ j x y, D j (x + y) = D j x + D j y) →
          (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) →
          (∀ j z, D j ((g.appLE U.1 V'.1 hle).hom z) = 0) → ∀ r₀ r₁ : Γ(Y, V'.1),
          f ((g.appLE U.1 V'.1 hle).hom (b₀ ^ Nν)) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0 := by
    intro U b₀ hbW
    obtain ⟨K, V', hle, hcov'⟩ := hrefine U
    have hk : ∀ kk, ∃ Nk : ℕ, ∀ (T : Type u) [CommRing T] (f : Γ(Y, (V' kk).1) →+* T)
        (D : Fin 2 → Γ(Y, (V' kk).1) → T),
        (∀ j x y, D j (x + y) = D j x + D j y) →
        (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) →
        (∀ j z, D j ((g.appLE U.1 (V' kk).1 (hle kk)).hom z) = 0) → ∀ r₀ r₁ : Γ(Y, (V' kk).1),
        f ((g.appLE U.1 (V' kk).1 (hle kk)).hom (b₀ ^ Nk)) *
          (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0 := by
      intro kk
      letI : Algebra Γ(S, U.1) Γ(Y, (V' kk).1) := (g.appLE U.1 (V' kk).1 (hle kk)).hom.toAlgebra
      exact hAK Γ(S, U.1) Γ(Y, (V' kk).1) (hfin U (V' kk) (hle kk)) b₀ (fun Q hQ hb => by
        haveI := hQ
        exact hCS Γ(S, U.1) Γ(Y, (V' kk).1) Q (hprime U (V' kk) (hle kk) b₀ hbW Q hb))
    choose Nk hNk using hk
    refine ⟨Finset.univ.sup Nk, fun y hy => ?_⟩
    obtain ⟨kk, hyk⟩ := hcov' y hy
    refine ⟨V' kk, hyk, hle kk, ?_⟩
    intro T _ f D hadd hmul hvan r₀ r₁
    obtain ⟨e, he⟩ := Nat.exists_eq_add_of_le' (Finset.le_sup (f := Nk) (Finset.mem_univ kk))
    rw [he, pow_add, map_mul, map_mul, mul_assoc, hNk kk T f D hadd hmul hvan r₀ r₁, mul_zero]

  have hWne : (W : Set S).Nonempty :=
    (TopologicalSpace.Opens.ne_bot_iff_nonempty W).mp hH.2.2.2.2.2.1
  have hloc : ∀ x : S, ∃ (U : S.affineOpens) (b₀ : Γ(S, U.1)),
      x ∈ U.1 ∧ b₀ ≠ 0 ∧ S.basicOpen b₀ ≤ W := by
    intro x
    obtain ⟨U, hU, hxU, -⟩ :=
      (TopologicalSpace.Opens.isBasis_iff_nbhd.mp (Scheme.isBasis_affineOpens S))
        (show x ∈ (⊤ : S.Opens) from trivial)
    obtain ⟨z, hzU, hzW⟩ := nonempty_preirreducible_inter U.isOpen W.isOpen ⟨x, hxU⟩ hWne
    obtain ⟨f, hf, hzf⟩ := hU.exists_basicOpen_le (V := U ⊓ W) ⟨z, hzU, hzW⟩ hzU
    refine ⟨⟨U, hU⟩, f, hxU, ?_, hf.trans inf_le_right⟩
    rintro rfl
    rw [Scheme.basicOpen_zero] at hzf
    simp at hzf
  choose U₀ b₀' hxU₀ hb₀ne hbW using hloc
  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (fun x => ((U₀ x).1 : Set S))
    (fun x => (U₀ x).1.isOpen) (fun x _ => Set.mem_iUnion.mpr ⟨x, hxU₀ x⟩)
  choose Nν hNν using fun x => hchart (U₀ x) (b₀' x) (hbW x)
  refine ⟨t.card, fun ν => U₀ (t.equivFin.symm ν).1,
    fun ν => b₀' (t.equivFin.symm ν).1 ^ Nν (t.equivFin.symm ν).1, ?_, ?_, ?_, ?_⟩
  · intro x
    have := ht (Set.mem_univ x)
    simp only [Set.mem_iUnion] at this
    obtain ⟨i, hi, hxi⟩ := this
    exact ⟨t.equivFin ⟨i, hi⟩, by simpa using hxi⟩
  · intro ν
    exact ⟨_, hxU₀ _⟩
  · intro ν
    haveI : Nonempty ((U₀ (t.equivFin.symm ν).1).1) := ⟨⟨_, hxU₀ _⟩⟩
    haveI := IsIntegral.component_integral (X := S) (U₀ (t.equivFin.symm ν).1).1
    exact pow_ne_zero _ (hb₀ne _)
  · intro y ν hy
    exact hNν _ y hy

theorem wcpa_dj_stc_kmn_node_thickness : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjStcKmHyp k S Y sS g m τ W mD Dc N I O a →
    ∃ Bc : ℕ, ∀ y : Y,
    (¬ ∃ W' : Y.Opens, y ∈ W' ∧ SmoothOfRelativeDimension 1 (W'.ι ≫ g)) →
    ∀ (n : ℕ) (t : Fin n → S.presheaf.stalk (g y)) (e : {i // g y ∈ Dc i} → Fin n)
      (J : Finset (Fin n)),
      wcpaDjStcSNCSys S mD Dc (g y) n t e → (∀ l, l ∈ J ↔ ∃ i, e i = l) →
    ∀ (c : Fin n → ℕ)
      (v : (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
        (S.presheaf.stalk (g y)))ˣ)
      (e' : AdicCompletion (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y) ≃+*
        (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
          (S.presheaf.stalk (g y))) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
            MvPowerSeries.C (↑v * ∏ l, (algebraMap (S.presheaf.stalk (g y))
              (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
                (S.presheaf.stalk (g y))) (t l)) ^ c l)})),
      (∃ l, c l ≠ 0) → (∀ l, c l ≠ 0 → l ∈ J) →
      e'.toRingHom.comp ((algebraMap (Y.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y.presheaf.stalk y)) (Y.presheaf.stalk y))).comp
          (g.stalkMap y).hom) =
        (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (algebraMap (S.presheaf.stalk (g y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)))
            (S.presheaf.stalk (g y))))) →
      ∀ l, c l ≤ Bc :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hH
  classical

  have s2 : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (x a : A),
      algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) x ∣
        algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) a → x ∣ a := by
    intro A _ _ _ x a h
    haveI : Module.FaithfullyFlat A (AdicCompletion (IsLocalRing.maximalIdeal A) A) :=
      Module.FaithfullyFlat.of_flat_of_isLocalHom
    have h2 := Ideal.comap_map_eq_self_of_faithfullyFlat
      (B := AdicCompletion (IsLocalRing.maximalIdeal A) A) (Ideal.span {x})
    rw [← Ideal.mem_span_singleton, ← h2, Ideal.mem_comap, Ideal.map_span, Set.image_singleton,
      Ideal.mem_span_singleton]
    exact h

  have s5 : ∀ (B C B' C' : Type u) [CommRing B] [CommRing C] [CommRing B'] [CommRing C'] (φ : B →+* C) (φ' : B' →+* C') (ρ : B →+* B') (μ : C →+* C'), μ.comp φ = φ'.comp ρ → (∀ x : C', ∃ c s : C, IsUnit (μ s) ∧ x * μ s = μ c) → ∀ a : B, (∀ (T : Type u) [CommRing T] (f : C →+* T) (D : Fin 2 → C → T), (∀ j x y, D j (x + y) = D j x + D j y) → (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) → (∀ j z, D j (φ z) = 0) → ∀ r₀ r₁ : C, f (φ a) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0) → (∀ (T : Type u) [CommRing T] (f : C' →+* T) (D : Fin 2 → C' → T), (∀ j x y, D j (x + y) = D j x + D j y) → (∀ j x y, D j (x * y) = f x * D j y + f y * D j x) → (∀ j z, D j (φ' z) = 0) → ∀ r₀ r₁ : C', f (φ' (ρ a)) * (D 0 r₀ * D 1 r₁ - D 1 r₀ * D 0 r₁) = 0) := by
    intro B C B' C' _ _ _ _ φ φ' ρ μ hc hloc a hKA T _ f D hadd hmul hvan r₀ r₁
    have hca : μ (φ a) = φ' (ρ a) := RingHom.congr_fun hc a
    have key : ∀ c c' : C, f (φ' (ρ a)) * (D 0 (μ c) * D 1 (μ c') - D 1 (μ c) * D 0 (μ c')) = 0 := by
      intro c c'
      have := hKA T (f.comp μ) (fun j x => D j (μ x))
        (fun j x y => by simp only [map_add, hadd])
        (fun j x y => by simp only [map_mul, hmul, RingHom.comp_apply])
        (fun j z => by
          show D j (μ (φ z)) = 0
          rw [show μ (φ z) = φ' (ρ z) from RingHom.congr_fun hc z]
          exact hvan j _) c c'
      simpa only [RingHom.comp_apply, hca] using this
    obtain ⟨c0, s0, hu0, he0⟩ := hloc r₀
    obtain ⟨c1, s1, hu1, he1⟩ := hloc r₁
    have l0 : ∀ j, f (μ s0) * D j r₀ = D j (μ c0) - f r₀ * D j (μ s0) := by
      intro j; rw [← he0, hmul]; ring
    have l1 : ∀ j, f (μ s1) * D j r₁ = D j (μ c1) - f r₁ * D j (μ s1) := by
      intro j; rw [← he1, hmul]; ring
    have hU : IsUnit (f (μ s0) * f (μ s1)) := (hu0.map f).mul (hu1.map f)
    rw [← hU.mul_right_eq_zero]
    linear_combination (f (φ' (ρ a)) * (f (μ s1) * D 1 r₁)) * l0 0
      + (f (φ' (ρ a)) * (D 0 (μ c0) - f r₀ * D 0 (μ s0))) * l1 1
      - (f (φ' (ρ a)) * (f (μ s1) * D 0 r₁)) * l0 1
      - (f (φ' (ρ a)) * (D 1 (μ c0) - f r₀ * D 1 (μ s0))) * l1 0
      + key c0 c1 - f r₁ * key c0 s1 - f r₀ * key s0 c1 + f r₀ * f r₁ * key s0 s1

  have s6 : ∀ (B C : Type u) [CommRing B] [CommRing C] [Algebra B C] (Q : Ideal C) [Q.IsPrime], (∃ ω₀ : Ω[Localization.AtPrime Q⁄B], ∀ ω' : Ω[Localization.AtPrime Q⁄B], ∃ x : Localization.AtPrime Q, ω' = x • ω₀) → ∃ ω : Ω[C⁄B], ∀ ω' : Ω[C⁄B], ∃ (s u : C), s ∉ Q ∧ s • ω' = u • ω := by
    intro B C _ _ _ Q _ ⟨ω₀, hω₀⟩
    set κ := KaehlerDifferential.map B B C (Localization.AtPrime Q) with hκ
    haveI : IsLocalizedModule Q.primeCompl κ :=
      KaehlerDifferential.isLocalizedModule_map B C (Localization.AtPrime Q) Q.primeCompl
    obtain ⟨⟨ω, σ⟩, hωσ⟩ := IsLocalizedModule.mk'_surjective Q.primeCompl κ ω₀
    simp only [Function.uncurry_apply_pair] at hωσ
    refine ⟨ω, fun ω' => ?_⟩
    obtain ⟨x, hx⟩ := hω₀ (κ ω')
    obtain ⟨⟨u, s₁⟩, hus⟩ := IsLocalization.mk'_surjective Q.primeCompl x
    simp only at hus
    have e : IsLocalizedModule.mk' κ ω' (1 : Q.primeCompl) =
        IsLocalizedModule.mk' κ (u • ω) (s₁ * σ) := by
      rw [IsLocalizedModule.mk'_one, hx, ← hus, ← hωσ, IsLocalizedModule.mk'_smul_mk']
    obtain ⟨s₂, hs₂⟩ := (IsLocalizedModule.mk'_eq_mk'_iff κ _ _ _ _).mp e
    refine ⟨(s₂ : C) * ((s₁ : C) * σ), (s₂ : C) * u, ?_, ?_⟩
    · exact (Q.primeCompl.mul_mem s₂.2 (Q.primeCompl.mul_mem s₁.2 σ.2))
    · simp only [Submonoid.smul_def, one_smul, Submonoid.coe_mul] at hs₂
      rw [mul_smul, ← hs₂, mul_smul]
  obtain ⟨r, V, b, hcov, hne, hb0, hkill⟩ :=
    wcpa_dj_stc_kmnt_annihilator_cover wcpa_dj_stc_kmnt_alt_kill s6
      k S Y sS g m τ W mD Dc N I O a hH
  haveI hsSp : IsProper sS := wcpa_dj_proj_proper k sS hH.1
  haveI hgsSp : IsProper (g ≫ sS) := wcpa_dj_proj_proper k (g ≫ sS) hH.2.1
  haveI : IsLocallyNoetherian S := LocallyOfFiniteType.isLocallyNoetherian sS
  haveI : LocallyOfFiniteType g := locallyOfFiniteType_of_comp g sS
  haveI : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian g
  have hbound : ∀ ν, ∃ Nν : ℕ, ∀ (p : Ideal Γ(S, (V ν).1)) [p.IsPrime] (L : Type u) [CommRing L]
      [Algebra Γ(S, (V ν).1) L] [IsLocalization.AtPrime L p] (π : L), Prime π → ∀ c : ℕ,
      π ^ c ∣ algebraMap Γ(S, (V ν).1) L (b ν) → c ≤ Nν := by
    intro ν
    haveI : Nonempty ((V ν).1) := (hne ν).to_subtype
    haveI : IsNoetherianRing Γ(S, (V ν).1) := IsLocallyNoetherian.component_noetherian (V ν)
    exact wcpa_dj_stc_kmnt_order_bound _ (b ν) (hb0 ν)
  choose Nb hNb using hbound
  refine ⟨∑ ν, Nb ν, ?_⟩
  intro y _ n t e J hsys _ c v e' _ _ hcomp l
  obtain ⟨ν, hgy⟩ := hcov (g y)
  obtain ⟨V', hyV, hle, hKA⟩ := hkill y ν hgy

  have hcommute : ((Y.presheaf.germ V'.1 y hyV).hom).comp (g.appLE (V ν).1 V'.1 hle).hom =
      ((g.stalkMap y).hom).comp ((S.presheaf.germ (V ν).1 (g y) hgy).hom) := by
    apply RingHom.ext
    intro z
    simp only [RingHom.comp_apply]
    rw [Scheme.Hom.germ_stalkMap_apply]
    simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply]
    exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
  have hlocY : ∀ x : Y.presheaf.stalk y, ∃ c s : Γ(Y, V'.1),
      IsUnit ((Y.presheaf.germ V'.1 y hyV).hom s) ∧
        x * (Y.presheaf.germ V'.1 y hyV).hom s = (Y.presheaf.germ V'.1 y hyV).hom c := by
    intro x
    letI : Algebra Γ(Y, V'.1) (Y.presheaf.stalk y) := (Y.presheaf.germ V'.1 y hyV).hom.toAlgebra
    haveI hL : IsLocalization.AtPrime (Y.presheaf.stalk y)
        (V'.2.primeIdealOf ⟨y, hyV⟩).asIdeal := V'.2.isLocalization_stalk ⟨y, hyV⟩
    obtain ⟨⟨c₀, s₀⟩, hx⟩ := IsLocalization.mk'_surjective
      (V'.2.primeIdealOf ⟨y, hyV⟩).asIdeal.primeCompl x
    refine ⟨c₀, s₀, IsLocalization.map_units (Y.presheaf.stalk y) s₀, ?_⟩
    rw [← hx]
    exact IsLocalization.mk'_spec (Y.presheaf.stalk y) c₀ s₀
  have hKAst := s5 Γ(S, (V ν).1) Γ(Y, V'.1) (S.presheaf.stalk (g y))
    (Y.presheaf.stalk y) (g.appLE (V ν).1 V'.1 hle).hom (g.stalkMap y).hom
    (S.presheaf.germ (V ν).1 (g y) hgy).hom (Y.presheaf.germ V'.1 y hyV).hom hcommute hlocY
    (b ν) hKA

  haveI hreg : IsRegularLocalRing (S.presheaf.stalk (g y)) := hH.2.2.2.2.2.2.2.2.1 (g y)
  have hmem := wcpa_dj_stc_kmnt_completion_div (S.presheaf.stalk (g y)) (Y.presheaf.stalk y)
    (g.stalkMap y).hom inferInstance _ e' hcomp
    ((S.presheaf.germ (V ν).1 (g y) hgy).hom (b ν)) hKAst
  have h1 : algebraMap (S.presheaf.stalk (g y)) (AdicCompletion
      (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y))) (t l ^ c l) ∣
      algebraMap (S.presheaf.stalk (g y)) (AdicCompletion
      (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y)))
        ((S.presheaf.germ (V ν).1 (g y) hgy).hom (b ν)) := by
    rw [map_pow]
    exact (Finset.dvd_prod_of_mem (fun l' => algebraMap (S.presheaf.stalk (g y)) (AdicCompletion
      (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))) (S.presheaf.stalk (g y))) (t l') ^ c l')
      (Finset.mem_univ l)).trans ((dvd_mul_left _ _).trans (Ideal.mem_span_singleton.mp hmem))
  have h2 := s2 (S.presheaf.stalk (g y)) _ _ h1
  obtain ⟨_, hprime, _⟩ := wcpa_dj_bko_regular_params (S.presheaf.stalk (g y)) n t hsys.1 hsys.2.1

  letI : Algebra Γ(S, (V ν).1) (S.presheaf.stalk (g y)) :=
    (S.presheaf.germ (V ν).1 (g y) hgy).hom.toAlgebra
  haveI hLS : IsLocalization.AtPrime (S.presheaf.stalk (g y))
      ((V ν).2.primeIdealOf ⟨g y, hgy⟩).asIdeal := (V ν).2.isLocalization_stalk ⟨g y, hgy⟩
  have h3 : c l ≤ Nb ν :=
    hNb ν ((V ν).2.primeIdealOf ⟨g y, hgy⟩).asIdeal (S.presheaf.stalk (g y)) (t l) (hprime l)
      (c l) h2
  exact h3.trans (Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_univ ν))

end GRWTSK.FiniteFieldWeil
