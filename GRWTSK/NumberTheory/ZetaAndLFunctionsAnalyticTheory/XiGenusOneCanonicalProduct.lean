/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiGenusOneLogSeries
import Mathlib.Analysis.Calculus.LogDerivUniformlyOn
import Mathlib.Analysis.Normed.Module.MultipliableUniformlyOn

/-!
# The canonical genus-one product of the actual ξ divisor

Each complex location contributes one factor per unit of its full analytic
order. At the real point 2, the absolutely summable combined logarithmic
kernel dominates the weighted inverse-square modulus outside a finite
closed head. The elementary genus-one factors differ from 1 quadratically
on bounded evaluation sets, so their product converges locally uniformly.
At a zero, splitting off its finite fiber gives a linear vanishing factor
to the full analytic multiplicity, times an analytic nonvanishing factor.
-/

set_option autoImplicit false

noncomputable section

open Filter Set

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor (bounded_zero_set_finite)

/-- The fiber over an actual ξ zero has exactly its analytic multiplicity. -/
abbrev XiZeroOccurrence := Σ ρ : XiZero, Fin (analyticOrderNatAt xi ρ.val)

/-- One genus-one factor for a single occurrence of an actual zero. -/
def xiGenusOneFactor (i : XiZeroOccurrence) (s : ℂ) : ℂ :=
  (1 - s / i.1.val) * Complex.exp (s / i.1.val)

/-- The globally convergent canonical product formed from the actual divisor. -/
def xiGenusOneProduct (s : ℂ) : ℂ := ∏' i : XiZeroOccurrence, xiGenusOneFactor i s

private theorem xiZero_ne_zero (ρ : XiZero) : ρ.val ≠ 0 := by
  intro h
  have hz := ρ.property
  rw [h, xi_zero] at hz
  norm_num at hz

private theorem xiHeightHead_finite (H : ℝ) :
    {ρ : XiZero | |ρ.val.im| ≤ H}.Finite := by
  apply (bounded_zero_set_finite H).of_injOn (f := fun ρ : XiZero => ρ.val)
  · intro ρ hρ
    exact ⟨(xi_eq_zero_iff_nontrivialZetaZero ρ.val).mp ρ.property, hρ⟩
  · exact Subtype.val_injective.injOn

private theorem xiOccurrence_summable {g : XiZero → ℝ} (hg : ∀ ρ, 0 ≤ g ρ)
    (hs : Summable (fun ρ => (analyticOrderNatAt xi ρ.val : ℝ) * g ρ)) :
    Summable (fun i : XiZeroOccurrence => g i.1) := by
  apply (summable_sigma_of_nonneg (f := fun i : XiZeroOccurrence => g i.1)
    (fun i => hg i.1)).mpr
  refine ⟨fun ρ => Summable.of_finite, ?_⟩
  simpa [tsum_fintype, nsmul_eq_mul] using hs

private theorem xiOccurrence_inverseSquare_summable :
    Summable (fun i : XiZeroOccurrence => 1 / ‖i.1.val‖ ^ 2) := by
  have htwo : xi (2 : ℂ) ≠ 0 := by
    intro h
    have hs := ((xi_eq_zero_iff_nontrivialZetaZero 2).mp h).mem_critical_strip.2
    norm_num at hs
  have hs : Summable (fun ρ : XiZero => xiGenusOneLogTerm ρ 2) :=
    xiGenusOneLogTerm_summableLocallyUniformlyOn.summable htwo
  apply xiOccurrence_summable (g := fun ρ => 1 / ‖ρ.val‖ ^ 2)
    (fun _ => by positivity)
  apply hs.norm.of_norm_bounded_eventually
  filter_upwards [(xiHeightHead_finite 2).eventually_cofinite_notMem] with ρ hρ
  have hlarge : (2 : ℝ) ≤ ‖ρ.val‖ :=
    (lt_of_not_ge hρ).le.trans (Complex.abs_im_le_norm ρ.val)
  have hρ0 := xiZero_ne_zero ρ
  have hd : (2 : ℂ) - ρ.val ≠ 0 := sub_ne_zero.mpr (fun h => htwo (h ▸ ρ.property))
  have hfrac : ((2 : ℂ) - ρ.val)⁻¹ + ρ.val⁻¹ = 2 / ((2 - ρ.val) * ρ.val) := by
    field_simp
    ring
  have hnorm : ‖(2 : ℂ) - ρ.val‖ ≤ 2 * ‖ρ.val‖ := by
    have h := norm_sub_le (2 : ℂ) ρ.val
    norm_num at h
    linarith
  have hden : ‖(2 : ℂ) - ρ.val‖ * ‖ρ.val‖ ≤ 2 * ‖ρ.val‖ ^ 2 := by
    calc
      _ ≤ (2 * ‖ρ.val‖) * ‖ρ.val‖ := mul_le_mul_of_nonneg_right hnorm (norm_nonneg _)
      _ = _ := by ring
  rw [Real.norm_of_nonneg (by positivity), xiGenusOneLogTerm, hfrac, norm_mul,
    norm_div, norm_mul, Complex.norm_natCast]
  norm_num only [Complex.norm_ofNat]
  apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
  calc
    _ = 2 / (2 * ‖ρ.val‖ ^ 2) := by ring
    _ ≤ _ := div_le_div_of_nonneg_left (by norm_num)
      (mul_pos (norm_pos_iff.mpr hd) (norm_pos_iff.mpr hρ0)) hden

private theorem norm_genusOne_sub_one_le {u : ℂ} (hu : ‖u‖ ≤ 1) :
    ‖(1 - u) * Complex.exp u - 1‖ ≤ 3 * ‖u‖ ^ 2 := by
  have he : (1 - u) * Complex.exp u - 1 =
      (Complex.exp u - 1 - u) - u * (Complex.exp u - 1) := by ring
  rw [he]
  calc
    _ ≤ ‖Complex.exp u - 1 - u‖ + ‖u * (Complex.exp u - 1)‖ := norm_sub_le _ _
    _ ≤ ‖u‖ ^ 2 + ‖u‖ * (2 * ‖u‖) := by
      rw [norm_mul]
      exact add_le_add (Complex.norm_exp_sub_one_sub_id_le hu)
        (mul_le_mul_of_nonneg_left (Complex.norm_exp_sub_one_le hu) (norm_nonneg _))
    _ = _ := by ring

private theorem xiGenusOneFactor_boundOn {K : Set ℂ} (hK : IsCompact K) :
    ∃ u : XiZeroOccurrence → ℝ, Summable u ∧
      ∀ᶠ i in cofinite, ∀ s ∈ K, ‖xiGenusOneFactor i s - 1‖ ≤ u i := by
  obtain ⟨r, hr⟩ := hK.isBounded.exists_norm_le
  let R := max 0 r
  have hR : 0 ≤ R := le_max_left _ _
  refine ⟨fun i => (3 * R ^ 2) * (1 / ‖i.1.val‖ ^ 2),
    xiOccurrence_inverseSquare_summable.mul_left _, ?_⟩
  have hhead := (xiHeightHead_finite R).sigma
    (t := fun ρ => (Set.univ : Set (Fin (analyticOrderNatAt xi ρ.val))))
    (fun _ _ => Set.finite_univ)
  filter_upwards [hhead.eventually_cofinite_notMem] with i hi
  intro s hs
  have hlt : R < |i.1.val.im| := lt_of_not_ge (fun h => hi ⟨h, Set.mem_univ _⟩)
  have hnorm : ‖s‖ ≤ R := (hr s hs).trans (le_max_right _ _)
  have hRnorm := hlt.trans_le (Complex.abs_im_le_norm i.1.val)
  have hpos := norm_pos_iff.mpr (xiZero_ne_zero i.1)
  have hsmall : ‖s / i.1.val‖ ≤ 1 := by
    rw [norm_div, div_le_one hpos]
    exact hnorm.trans hRnorm.le
  calc
    _ ≤ 3 * ‖s / i.1.val‖ ^ 2 := norm_genusOne_sub_one_le hsmall
    _ = 3 * (‖s‖ ^ 2 / ‖i.1.val‖ ^ 2) := by rw [norm_div, div_pow]
    _ ≤ 3 * (R ^ 2 / ‖i.1.val‖ ^ 2) := by
      exact mul_le_mul_of_nonneg_left
        (div_le_div_of_nonneg_right ((sq_le_sq₀ (norm_nonneg _) hR).mpr hnorm) (sq_nonneg _))
        (by norm_num)
    _ = _ := by ring

private theorem xiGenusOneFactor_differentiable (i : XiZeroOccurrence) :
    Differentiable ℂ (xiGenusOneFactor i) := by
  unfold xiGenusOneFactor
  fun_prop

private theorem xiGenusOneSubproduct_hasProdLocallyUniformlyOn {ι : Type*}
    (e : ι ↪ XiZeroOccurrence) :
    HasProdLocallyUniformlyOn (fun i => xiGenusOneFactor (e i))
      (fun s => ∏' i, xiGenusOneFactor (e i) s) Set.univ := by
  apply hasProdLocallyUniformlyOn_of_forall_compact isOpen_univ
  intro K _ hK
  obtain ⟨u, hu, hb⟩ := xiGenusOneFactor_boundOn hK
  have h := (hu.comp_injective e.injective).hasProdUniformlyOn_one_add hK
    (f := fun i s => xiGenusOneFactor (e i) s - 1) (e.injective.tendsto_cofinite.eventually hb)
    (fun i => ((xiGenusOneFactor_differentiable (e i)).continuous.sub continuous_const).continuousOn)
  simpa using! h

/-- Finite products converge to the canonical product locally uniformly on ℂ. -/
theorem xiGenusOneProduct_hasProdLocallyUniformlyOn :
    HasProdLocallyUniformlyOn xiGenusOneFactor xiGenusOneProduct Set.univ :=
  xiGenusOneSubproduct_hasProdLocallyUniformlyOn (Function.Embedding.refl XiZeroOccurrence)

private theorem xiGenusOneSubproduct_differentiable {ι : Type*} (e : ι ↪ XiZeroOccurrence) :
    Differentiable ℂ (fun s => ∏' i, xiGenusOneFactor (e i) s) := by
  apply differentiableOn_univ.mp
  refine (hasProdLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn.mp
    (xiGenusOneSubproduct_hasProdLocallyUniformlyOn e)).differentiableOn ?_ isOpen_univ
  exact .of_forall fun A => DifferentiableOn.fun_finsetProd (u := A)
    (fun i _ => (xiGenusOneFactor_differentiable (e i)).differentiableOn)

/-- The canonical product is entire. -/
theorem differentiable_xiGenusOneProduct : Differentiable ℂ xiGenusOneProduct :=
  xiGenusOneSubproduct_differentiable (Function.Embedding.refl XiZeroOccurrence)

private theorem xiGenusOneFactor_ne_zero_of_ne {s : ℂ} (i : XiZeroOccurrence) (he : s ≠ i.1.val) :
    xiGenusOneFactor i s ≠ 0 := by
  refine mul_ne_zero (sub_ne_zero.mpr ?_) (Complex.exp_ne_zero _)
  intro h
  exact he (by simpa using (div_eq_iff (xiZero_ne_zero i.1)).mp h.symm)

private theorem xiGenusOneFactor_ne_zero {s : ℂ} (hs : xi s ≠ 0) (i : XiZeroOccurrence) :
    xiGenusOneFactor i s ≠ 0 :=
  xiGenusOneFactor_ne_zero_of_ne i (fun h => hs (h ▸ i.1.property))

private theorem xiGenusOneSubproduct_ne_zero {ι : Type*} (e : ι ↪ XiZeroOccurrence) {s : ℂ}
    (hf : ∀ i, xiGenusOneFactor (e i) s ≠ 0) :
    (∏' i, xiGenusOneFactor (e i) s) ≠ 0 := by
  obtain ⟨u, hu, hb⟩ := xiGenusOneFactor_boundOn (isCompact_singleton (x := s))
  have hsum : Summable (fun i => ‖xiGenusOneFactor (e i) s - 1‖) := by
    apply (hu.comp_injective e.injective).of_norm_bounded_eventually
    filter_upwards [e.injective.tendsto_cofinite.eventually hb] with i hi
    simpa using hi s (Set.mem_singleton s)
  have hn (i : ι) : 1 + (xiGenusOneFactor (e i) s - 1) ≠ 0 := by simpa using hf i
  simpa using tprod_one_add_ne_zero_of_summable hn hsum

private theorem xiGenusOneProduct_ne_zero {s : ℂ} (hs : xi s ≠ 0) :
    xiGenusOneProduct s ≠ 0 :=
  xiGenusOneSubproduct_ne_zero (Function.Embedding.refl XiZeroOccurrence)
    (xiGenusOneFactor_ne_zero hs)

/-- The canonical product vanishes precisely on the original ξ-zero support. -/
theorem xiGenusOneProduct_eq_zero_iff (s : ℂ) : xiGenusOneProduct s = 0 ↔ xi s = 0 := by
  refine ⟨fun h => by_contra fun hn => xiGenusOneProduct_ne_zero hn h, ?_⟩
  intro hs
  let ρ : XiZero := ⟨s, hs⟩
  let i : XiZeroOccurrence := ⟨ρ, ⟨0, xiAnalyticOrderNatAt_pos hs⟩⟩
  apply tprod_of_exists_eq_zero
  refine ⟨i, ?_⟩
  have hs0 : s ≠ 0 := xiZero_ne_zero ρ
  simp [xiGenusOneFactor, i, ρ, hs0]

/-- Removing the finite fiber at a zero leaves an entire nonvanishing factor
at that point after the exact linear power is extracted. -/
theorem xiGenusOneProduct_factorization (ρ : XiZero) :
    ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ g ρ.val ≠ 0 ∧
      ∀ z, xiGenusOneProduct z = (z - ρ.val) ^ analyticOrderNatAt xi ρ.val * g z := by
  let m := analyticOrderNatAt xi ρ.val
  let A : Set XiZeroOccurrence := {i | i.1 = ρ}
  let C : Set XiZeroOccurrence := Aᶜ
  let iA : A ↪ XiZeroOccurrence := Function.Embedding.subtype (· ∈ A)
  let iC : C ↪ XiZeroOccurrence := Function.Embedding.subtype (· ∈ C)
  let Q : ℂ → ℂ := fun z => ∏' i : C, xiGenusOneFactor (iC i) z
  let unitFactor : ℂ → ℂ := fun z => -ρ.val⁻¹ * Complex.exp (z / ρ.val)
  have hQd : Differentiable ℂ Q := xiGenusOneSubproduct_differentiable iC
  have hQ0 : Q ρ.val ≠ 0 := by
    apply xiGenusOneSubproduct_ne_zero iC
    intro i
    apply xiGenusOneFactor_ne_zero_of_ne
    intro he
    exact i.property (Subtype.ext he.symm)
  have hρ0 := xiZero_ne_zero ρ
  have hunit : ∀ z, unitFactor z ≠ 0 :=
    fun z => mul_ne_zero (neg_ne_zero.mpr (inv_ne_zero hρ0)) (Complex.exp_ne_zero _)
  have hd : Differentiable ℂ (fun z => (unitFactor z) ^ m * Q z) := by
    unfold unitFactor
    fun_prop
  refine ⟨fun z => (unitFactor z) ^ m * Q z, hd,
    mul_ne_zero (pow_ne_zero m (hunit _)) hQ0, ?_⟩
  intro z
  have hA := (xiGenusOneSubproduct_hasProdLocallyUniformlyOn iA).hasProd (Set.mem_univ z)
  have hC := (xiGenusOneSubproduct_hasProdLocallyUniformlyOn iC).hasProd (Set.mem_univ z)
  have hsplit : xiGenusOneProduct z = (∏' i : A, xiGenusOneFactor i.val z) * Q z :=
    (Multipliable.tprod_mul_tprod_compl (f := fun i => xiGenusOneFactor i z) (s := A)
      hA.multipliable hC.multipliable).symm
  have hfiber :
      (∏' i : A, xiGenusOneFactor i.val z) = ((1 - z / ρ.val) * Complex.exp (z / ρ.val)) ^ m := by
    let e : Fin m ≃ A :=
      (Equiv.sigmaSubtype (β := fun r : XiZero => Fin (analyticOrderNatAt xi r.val)) ρ).symm
    rw [← e.tprod_eq (fun i : A => xiGenusOneFactor i.val z)]
    change (∏' _ : Fin m, (1 - z / ρ.val) * Complex.exp (z / ρ.val)) = _
    simp [tprod_fintype]
  have hlin : (1 - z / ρ.val) * Complex.exp (z / ρ.val) = (z - ρ.val) * unitFactor z := by
    unfold unitFactor
    field_simp
    ring
  rw [hsplit, hfiber, hlin, mul_pow, mul_assoc]

/-- The canonical product and the actual ξ have the same full analytic orders. -/
theorem analyticOrderAt_xiGenusOneProduct (s : ℂ) :
    analyticOrderAt xiGenusOneProduct s = analyticOrderAt xi s := by
  have hP := differentiable_xiGenusOneProduct.analyticAt s
  by_cases hs : xi s = 0
  · obtain ⟨g, hgd, hg0, hfactor⟩ := xiGenusOneProduct_factorization ⟨s, hs⟩
    rw [← Nat.cast_analyticOrderNatAt (xiAnalyticOrderAt_ne_top s)]
    exact hP.analyticOrderAt_eq_natCast.mpr
      ⟨g, hgd.analyticAt s, hg0, .of_forall (fun z => by simpa [smul_eq_mul] using hfactor z)⟩
  · rw [hP.analyticOrderAt_eq_zero.mpr (xiGenusOneProduct_ne_zero hs),
      (differentiable_xi.analyticAt s).analyticOrderAt_eq_zero.mpr hs]

private theorem logDeriv_xiGenusOneFactor {s : ℂ} (hs : xi s ≠ 0)
    (i : XiZeroOccurrence) :
    logDeriv (xiGenusOneFactor i) s = (s - i.1.val)⁻¹ + i.1.val⁻¹ := by
  let ρ := i.1.val
  have hρ : ρ ≠ 0 := xiZero_ne_zero i.1
  have hsub : s - ρ ≠ 0 := sub_ne_zero.mpr (fun h => hs (h ▸ i.1.property))
  have hrev : ρ - s ≠ 0 := sub_ne_zero.mpr (sub_ne_zero.mp hsub).symm
  have hdiv : HasDerivAt (fun z : ℂ => z / ρ) ρ⁻¹ s := by
    simpa [div_eq_mul_inv] using (hasDerivAt_id s).mul_const ρ⁻¹
  have hderiv : deriv (fun z : ℂ => (1 - z / ρ) * Complex.exp (z / ρ)) s =
      -ρ⁻¹ * Complex.exp (s / ρ) + (1 - s / ρ) * (Complex.exp (s / ρ) * ρ⁻¹) :=
    ((hdiv.const_sub 1).mul hdiv.cexp).deriv
  change logDeriv (fun z : ℂ => (1 - z / ρ) * Complex.exp (z / ρ)) s = (s - ρ)⁻¹ + ρ⁻¹
  rw [logDeriv_apply, hderiv]
  have hfactor : 1 - s / ρ ≠ 0 := by
    intro h
    apply hsub
    apply sub_eq_zero.mpr
    simpa using (div_eq_iff hρ).mp (sub_eq_zero.mp h).symm
  field_simp [hρ, hsub, hrev, hfactor, Complex.exp_ne_zero]
  ring

/-- The canonical product's logarithmic derivative is the checked weighted series. -/
theorem logDeriv_xiGenusOneProduct {s : ℂ} (hs : xi s ≠ 0) :
    logDeriv xiGenusOneProduct s = ∑' ρ : XiZero, xiGenusOneLogTerm ρ s := by
  have hweighted : Summable (fun ρ : XiZero => xiGenusOneLogTerm ρ s) :=
    xiGenusOneLogTerm_summableLocallyUniformlyOn.summable hs
  have hnorm : Summable (fun i : XiZeroOccurrence => ‖(s - i.1.val)⁻¹ + i.1.val⁻¹‖) := by
    apply xiOccurrence_summable (g := fun ρ => ‖(s - ρ.val)⁻¹ + ρ.val⁻¹‖)
      (fun _ => norm_nonneg _)
    simpa only [xiGenusOneLogTerm, norm_mul, Complex.norm_natCast] using hweighted.norm
  have hsum : Summable (fun i : XiZeroOccurrence => logDeriv (xiGenusOneFactor i) s) := by
    apply summable_norm_iff.mp
    simpa only [logDeriv_xiGenusOneFactor hs] using hnorm
  calc
    _ = ∑' i : XiZeroOccurrence, logDeriv (xiGenusOneFactor i) s :=
      logDeriv_tprod_eq_tsum isOpen_univ (Set.mem_univ s) (xiGenusOneFactor_ne_zero hs)
        (fun i => (xiGenusOneFactor_differentiable i).differentiableOn) hsum
        xiGenusOneProduct_hasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn
        (xiGenusOneProduct_ne_zero hs)
    _ = _ := by
      rw [hsum.tsum_sigma]
      simp [xiGenusOneLogTerm, logDeriv_xiGenusOneFactor hs, tsum_fintype, nsmul_eq_mul, mul_add]

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
