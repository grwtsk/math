/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceStrictSeparation

/-!
# Existence of the actual finite Wilson separation certificate

For fixed beta>0 and nonzero finite L, the actual positive Taylor remainder
bounds the first variational value from above and the second from below.
The factorial tail tends to zero, so twice the tail is eventually smaller than
the actual principal spectral difference. This supplies precisely the hb/hsep
premises of finite_separation_logarithmic_gap without assuming those premises.
No computed m or certified numerical matrix enclosure is supplied. The choice
depends on the regulator and coupling; no uniform physical bound or continuum
construction is asserted. SOURCE_PROOF_CANDIDATE; compile, fresh replay,
transitive axiom audit and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped Topology
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteSeparationCertificate
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentOperator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceTaylorRemainder
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceStrictSeparation
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
variable (L : ℕ) [NeZero L]

theorem tailAllowance_pos (β : ℝ) (hβ : 0 < β) (m : ℕ) :
    0 < tailAllowance L β m := by
  have hc : 0 < spatialLinkCount L := Fintype.card_pos
  have hcr : 0 < (spatialLinkCount L : ℝ) := by exact_mod_cast hc
  unfold tailAllowance
  exact div_pos (pow_pos (mul_pos hβ hcr) m) (by positivity)

/-- Reverse first-value estimate from the actual quadratic remainder. -/
theorem lambda0_le_nu0_add_tail (β : ℝ) (hβ : 0 < β) (m : ℕ) :
    lambda0 L β hβ.le ≤ nu0 L β m + tailAllowance L β m := by
  apply ballValue_le_add (finiteOperator L β m) (invariantOperator L β hβ.le) ⊤
    (tailAllowance_nonnegative L hβ.le m)
  intro x
  have h := (remainder_quadratic_bounds L β hβ m x).2
  simp only [ContinuousLinearMap.sub_apply, inner_sub_right] at h
  change inner ℝ x (invariantOperator L β hβ.le x) ≤
    inner ℝ x (finiteOperator L β m x) + tailAllowance L β m * ‖x‖ ^ 2
  linarith

/-- Quadratic order passes through each hyperplane supremum and then its infimum. -/
theorem nu1_le_lambda1 (β : ℝ) (hβ : 0 < β) (m : ℕ) :
    nu1 L β m ≤ lambda1 L β hβ.le := by
  apply le_csInf (Set.range_nonempty _)
  rintro r ⟨v, rfl⟩
  apply (secondValue_le (finiteOperator L β m) v).trans
  apply ballValue_mono
  intro x
  have h := (remainder_quadratic_bounds L β hβ m x).1
  simp only [ContinuousLinearMap.sub_apply, inner_sub_right] at h
  change inner ℝ x (finiteOperator L β m x) ≤
    inner ℝ x (invariantOperator L β hβ.le x)
  linarith

/-- All sufficiently accurate actual truncations supply both certificate premises. -/
theorem exists_finite_separation (β : ℝ) (hβ : 0 < β) :
    ∃ N : ℕ, ∀ m : ℕ, N ≤ m →
      0 < nu1 L β m + tailAllowance L β m ∧
      nu1 L β m + tailAllowance L β m < nu0 L β m := by
  have hδ : 0 < (lambda0 L β hβ.le - lambda1 L β hβ.le) / 2 :=
    half_pos (principal_difference_pos L β hβ)
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.mp (tailAllowance_tendsto_zero L β) _ hδ
  refine ⟨N, fun m hm => ?_⟩
  have ht := hN m hm
  rw [dist_zero_right, Real.norm_eq_abs, abs_of_pos (tailAllowance_pos L β hβ m)] at ht
  have hfirst := lambda0_le_nu0_add_tail L β hβ m
  have hsecond := nu1_le_lambda1 L β hβ m
  have hnonneg : 0 ≤ nu1 L β m := secondValue_nonnegative (finiteOperator L β m)
  refine ⟨add_pos_of_nonneg_of_pos hnonneg (tailAllowance_pos L β hβ m), ?_⟩
  linarith

end GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteSeparationCertificate
