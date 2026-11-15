/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLaplace
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.GoodScaleSubexponential
import Mathlib.Topology.Instances.EReal.Lemmas

/-!
# Affine-frequent polynomial envelopes for the signed residual

Causality makes the original residual energy monotone in the horizon.
An eventual polynomial allowance on a fixed affine-frequent set therefore
pays a global polynomial envelope at the same power. A global lower limit
of the normalized energy compares directly with the supplier coefficient
on that set, with no loss in the coefficient.
-/

set_option autoImplicit false

noncomputable section

open Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualAffineEnvelope

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace

/-- The same fixed scale set pays a global envelope for the genuine
cumulative residual energy. The finite initial segment is absorbed into
the constant using horizon monotonicity. -/
theorem global_residualEnergy_poly_of_affine_envelope {s A D : ℝ} {p : ℕ}
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G) (hA : 0 ≤ A) (hD : 0 ≤ D)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ A * T ^ p + D) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ C * T ^ p + C := by
  obtain ⟨a, b, T₀, ha, hb, _, hcover⟩ := hG
  have hlocal : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ A * T ^ p + D := by
    filter_upwards [hmajorant, hbudget] with T hU hD'
    exact hU.trans hD'
  obtain ⟨R, hR⟩ := eventually_atTop.1 (mem_inf_principal.1 hlocal)
  let L := max 1 (max T₀ R)
  let B := A * (a + b) ^ p
  let C := B + D + max 0 (residualEnergy s L)
  have hB : 0 ≤ B :=
    mul_nonneg hA (pow_nonneg (add_nonneg (zero_le_one.trans ha) hb) _)
  have hC₁ : B ≤ C := by
    dsimp only [C]
    linarith only [hD, le_max_left 0 (residualEnergy s L)]
  have hC₂ : D ≤ C := by
    dsimp only [C]
    linarith only [hB, le_max_left 0 (residualEnergy s L)]
  have hC₃ : residualEnergy s L ≤ C :=
    (le_max_right 0 (residualEnergy s L)).trans
      (le_add_of_nonneg_left (add_nonneg hB hD))
  refine ⟨C, hB.trans hC₁, ?_⟩
  intro T hT
  by_cases hLT : L ≤ T
  · have hT₁ : 1 ≤ T := (le_max_left _ _).trans hLT
    have hT₀ : T₀ ≤ T := (le_max_left _ _).trans ((le_max_right _ _).trans hLT)
    have hRT : R ≤ T := (le_max_right _ _).trans ((le_max_right _ _).trans hLT)
    obtain ⟨S, hSG, hTS, hS⟩ := hcover T hT₀
    have hSq : S ≤ (a + b) * T := by
      nlinarith only [hS, mul_nonneg hb (sub_nonneg.mpr hT₁)]
    calc
      residualEnergy s T ≤ residualEnergy s S := residualEnergy_mono s hTS
      _ ≤ A * S ^ p + D := hR S (hRT.trans hTS) hSG
      _ ≤ A * ((a + b) * T) ^ p + D :=
        add_le_add (mul_le_mul_of_nonneg_left
          (pow_le_pow_left₀ (hT.trans hTS) hSq _) hA) le_rfl
      _ = B * T ^ p + D := by rw [mul_pow, mul_assoc]
      _ ≤ C * T ^ p + C :=
        add_le_add (mul_le_mul_of_nonneg_right hC₁ (pow_nonneg hT _)) hC₂
  · exact ((residualEnergy_mono s (le_of_not_ge hLT)).trans hC₃).trans
      (le_add_of_nonneg_left (mul_nonneg (hB.trans hC₁) (pow_nonneg hT _)))

/-- A global lower limit for the normalized energy bounds the
leading allowance of any upper supplier on the same cofinal scales. -/
theorem coefficient_le_of_affine_supplier {s A Q : ℝ} {p : ℕ}
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T ^ p)
    (hlower : (Q : EReal) ≤
      liminf (fun T : ℝ => ((residualEnergy s T / T ^ p : ℝ) : EReal)) atTop) :
    Q ≤ A := by
  by_contra! hQA
  let ε := (Q - A) / 2
  have hε : 0 < ε := by dsimp [ε]; linarith
  have hlt : A + ε < Q := by dsimp [ε]; linarith
  have ht :
      ∀ᶠ T : ℝ in atTop, ((A + ε : ℝ) : EReal) <
        ((residualEnergy s T / T ^ p : ℝ) : EReal) :=
    eventually_lt_of_lt_liminf ((EReal.coe_lt_coe_iff.2 hlt).trans_le hlower)
  obtain ⟨R₁, hR₁⟩ := eventually_atTop.1 ht
  have hlocal : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ (A + ε) * T ^ p := by
    filter_upwards [hmajorant, hbudget ε hε] with T hU hbound
    exact hU.trans hbound
  obtain ⟨R₂, hR₂⟩ := eventually_atTop.1 (mem_inf_principal.1 hlocal)
  obtain ⟨_, _, T₀, _, _, _, hcover⟩ := hG
  let R := max 1 (max T₀ (max R₁ R₂))
  obtain ⟨S, hSG, hRS, _⟩ := hcover R
    ((le_max_left _ _).trans (le_max_right _ _))
  have hS₁ : R₁ ≤ S :=
    (le_max_left _ _).trans ((le_max_right _ _).trans ((le_max_right _ _).trans hRS))
  have hS₂ : R₂ ≤ S :=
    (le_max_right _ _).trans ((le_max_right _ _).trans ((le_max_right _ _).trans hRS))
  have hSpos : 0 < S := zero_lt_one.trans_le ((le_max_left _ _).trans hRS)
  have hlow : A + ε < residualEnergy s S / S ^ p :=
    EReal.coe_lt_coe_iff.1 (hR₁ S hS₁)
  exact ((lt_div_iff₀ (pow_pos hSpos p)).1 hlow).not_ge (hR₂ S hS₂ hSG)

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualAffineEnvelope
