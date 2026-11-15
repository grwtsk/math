/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualPole
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Necessary bounds on signed Möbius cancellation suppliers

A proposed supplier is a real function that eventually bounds the exact signed residual
energy from above on the given affine-frequent set. Every nonreal critical-line zero
forces lower witnesses for that function. A supplier with an asymptotic power upper
bound must allow the pole's exponent and, at the critical exponent, its coefficient.

The pole input is the exact result published at `d9fb294994e911a20e9ea3b97bfe4407fb64d4a8`.
Hardy's assertion is explicit in the corollary giving a minimum exponent of one.
-/

set_option autoImplicit false

noncomputable section

open Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualSupplier

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Every eventual upper bound for the genuine signed energy inherits the pole's
lower witnesses on the same fixed affine-frequent set. -/
theorem arbitrarilyLarge_supplier_of_criticalZero {s : ℝ} (hs : 0 < s)
    (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    {G : Set ℝ} {a b T₀ A : ℝ} (ha : 1 ≤ a) (hA : 0 ≤ A)
    (hcover : ∀ T : ℝ, T₀ ≤ T → ∃ S ∈ G, T ≤ S ∧ S ≤ a * T + b)
    {supplier : ℝ → ℝ}
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ supplier T)
    (hsmall : A * a ^ (2 * multiplicity ρ - 1) * ((2 * multiplicity ρ - 1).factorial : ℝ) <
      2 * ‖zetaPoleCoefficient ρ‖ ^ 2) :
    ∀ R : ℝ, ∃ S ∈ G, R ≤ S ∧ A * S ^ (2 * multiplicity ρ - 1) < supplier S := by
  obtain ⟨Q, hQ⟩ := eventually_atTop.1 (mem_inf_principal.1 hmajorant)
  intro R
  obtain ⟨S, hSG, hS, hbound⟩ := arbitrarilyLarge_residualEnergy_on_affineScales_of_criticalZero
    hs ρ hline hγ ha hA hcover hsmall (max Q R)
  exact ⟨S, hSG, (le_max_right _ _).trans hS,
    hbound.trans_le (hQ S ((le_max_left _ _).trans hS) hSG)⟩

private theorem zetaPoleCoefficient_ne_zero (ρ : ZeroPoint)
    (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0) :
    zetaPoleCoefficient ρ ≠ 0 := by
  obtain ⟨g, hg, hgn, hf⟩ := multiplicity_factorization ρ
  have hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w :=
    hf.mono fun _ h => by simpa only [smul_eq_mul] using h
  rw [← poleCoefficient_eq_zetaPoleCoefficient ρ hg hfactor]
  exact poleCoefficient_ne_zero hline hγ hgn

private theorem tendsto_rpow_div_natPow_of_lt {q : ℝ} {p : ℕ} (hq : q < p) :
    Tendsto (fun T : ℝ => T ^ q / T ^ p) atTop (𝓝 0) := by
  have h := tendsto_rpow_neg_atTop (sub_pos.mpr hq)
  apply h.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  rw [neg_sub, Real.rpow_sub hT, Real.rpow_natCast]

/-- An eventual upper supplier with leading allowance `A` at real exponent `q`
must have `q ≥ 2*m-1`. When `q = 2*m-1`, its leading allowance pays
`2*‖cρ‖² ≤ A*a^(2*m-1)*(2*m-1)!`. The budget hypothesis permits a remainder
of smaller order by allowing every fixed positive slack in the leading coefficient. -/
theorem supplier_power_envelope_necessary {s : ℝ} (hs : 0 < s)
    (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    {G : Set ℝ} {a b T₀ A q : ℝ} (ha : 1 ≤ a) (hA : 0 ≤ A)
    (hcover : ∀ T : ℝ, T₀ ≤ T → ∃ S ∈ G, T ≤ S ∧ S ≤ a * T + b)
    {supplier : ℝ → ℝ}
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ supplier T)
    (hbudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in atTop ⊓ 𝓟 G, supplier T ≤ (A + ε) * T ^ q) :
    ((2 * multiplicity ρ - 1 : ℕ) : ℝ) ≤ q ∧
      (q = ((2 * multiplicity ρ - 1 : ℕ) : ℝ) →
        2 * ‖zetaPoleCoefficient ρ‖ ^ 2 ≤
          A * a ^ (2 * multiplicity ρ - 1) * ((2 * multiplicity ρ - 1).factorial : ℝ)) := by
  let p := 2 * multiplicity ρ - 1
  let K := 2 * ‖zetaPoleCoefficient ρ‖ ^ 2
  let D := a ^ p * (p.factorial : ℝ)
  have hD : 0 < D := mul_pos (pow_pos (by linarith) _) (by exact_mod_cast Nat.factorial_pos p)
  have hK : 0 < K := mul_pos (by norm_num) (pow_pos
    (norm_pos_iff.mpr (zetaPoleCoefficient_ne_zero ρ hline hγ)) _)
  have reject {B : ℝ} (hB : 0 ≤ B) (hsmall : B * D < K)
      (hupper : ∀ᶠ T in atTop ⊓ 𝓟 G, supplier T ≤ B * T ^ p) : False := by
    obtain ⟨Q, hQ⟩ := eventually_atTop.1 (mem_inf_principal.1 hupper)
    have hsmall' : B * a ^ p * (p.factorial : ℝ) < K := by
      simpa only [D, mul_assoc] using hsmall
    obtain ⟨S, hSG, hQS, hS⟩ := arbitrarilyLarge_supplier_of_criticalZero
      hs ρ hline hγ ha hB hcover hmajorant hsmall' Q
    exact hS.not_ge (hQ S hQS hSG)
  change (p : ℝ) ≤ q ∧ (q = (p : ℝ) → K ≤ A * a ^ p * (p.factorial : ℝ))
  constructor
  · apply le_of_not_gt
    intro hq
    let B := K / (2 * D)
    have hB : 0 < B := div_pos hK (by positivity)
    have hBD : B * D = K / 2 := by
      dsimp [B]
      field_simp
    have hsmall : B * D < K := by linarith
    have hlim : Tendsto (fun T : ℝ => (A + 1) * (T ^ q / T ^ p)) atTop (𝓝 0) := by
      simpa only [mul_zero] using (tendsto_rpow_div_natPow_of_lt hq).const_mul (A + 1)
    have hdecay := (hlim.eventually_lt_const hB).filter_mono
      (inf_le_left : atTop ⊓ 𝓟 G ≤ atTop)
    apply reject hB.le hsmall
    filter_upwards [hbudget 1 zero_lt_one, hdecay,
      (eventually_gt_atTop (0 : ℝ)).filter_mono (inf_le_left : atTop ⊓ 𝓟 G ≤ atTop)] with T hT hd ht
    apply hT.trans
    apply le_of_lt
    apply (div_lt_iff₀ (pow_pos ht p)).mp
    simpa only [mul_div_assoc] using hd
  · intro hq
    rw [mul_assoc]
    change K ≤ A * D
    by_contra! hsmall
    let ε := (K - A * D) / (2 * D)
    have hε : 0 < ε := div_pos (sub_pos.mpr hsmall) (by positivity)
    have hAD : (A + ε) * D = (A * D + K) / 2 := by
      dsimp [ε]
      field_simp
      ring
    have hlt : (A + ε) * D < K := by linarith
    apply reject (add_nonneg hA hε.le) hlt
    simpa only [hq, Real.rpow_natCast] using hbudget ε hε

/-- Hardy's nonreal critical-line zero assertion already forces the exponent
of every supplier of this form to be at least one. -/
theorem one_le_supplier_power_of_hardy {s : ℝ} (hs : 0 < s)
    (hardy : ∃ ρ : ZeroPoint, ρ.val.re = 1 / 2 ∧ ρ.val.im ≠ 0)
    {G : Set ℝ} (hG : AffineFrequent G) {A q : ℝ} (hA : 0 ≤ A)
    {supplier : ℝ → ℝ}
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ supplier T)
    (hbudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in atTop ⊓ 𝓟 G, supplier T ≤ (A + ε) * T ^ q) :
    1 ≤ q := by
  obtain ⟨ρ, hline, hγ⟩ := hardy
  obtain ⟨a, b, T₀, ha, _, _, hcover⟩ := hG
  have hp : 1 ≤ 2 * multiplicity ρ - 1 := by
    have := multiplicity_pos ρ
    omega
  exact (show (1 : ℝ) ≤ ((2 * multiplicity ρ - 1 : ℕ) : ℝ) by exact_mod_cast hp).trans
    (supplier_power_envelope_necessary hs ρ hline hγ ha hA hcover hmajorant hbudget).1

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualSupplier
