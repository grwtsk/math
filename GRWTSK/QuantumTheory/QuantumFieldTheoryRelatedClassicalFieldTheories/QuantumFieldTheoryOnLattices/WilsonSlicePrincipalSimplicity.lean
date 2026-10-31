/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSlicePositivePrincipal

/-!
# Simplicity of the actual principal Wilson eigenspace

A nonnegative L2 vector orthogonal to a strictly positive AE vector vanishes:
the actual integrable pointwise product is nonnegative with zero integral.
The one-sign theorem then rules out a nonzero orthogonal principal vector.
Subtracting the projection on an actual unit positive principal vector gives
an explicit scalar-multiple identity for every principal eigenvector.
Only finite nonzero regulator and beta>0 are covered. Quantitative separation,
uniform physical scaling and continuum construction are not conclusions.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, transitive axiom audit and
expected-interface verification NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalSimplicity
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalOneSign
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
variable (L : ℕ) [NeZero L]

/-- Positivity and orthogonality are properties of actual AE L2 classes. -/
theorem nonnegative_orthogonal_positive_eq_zero (u f : gaugeInvariantSpace L)
    (hu : ∀ᵐ a ∂sliceHaar L, 0 < (u : RealSliceL2 L) a)
    (hf : ∀ᵐ a ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) a)
    (ho : inner ℝ u f = 0) : f = 0 := by
  have hi : Integrable (fun a => (u : RealSliceL2 L) a * (f : RealSliceL2 L) a)
      (sliceHaar L) := by
    simpa only [Real.inner_apply, mul_comm] using
      (L2.integrable_inner (𝕜 := ℝ) (u : RealSliceL2 L) (f : RealSliceL2 L))
  have hz : (∫ a, (u : RealSliceL2 L) a * (f : RealSliceL2 L) a ∂sliceHaar L) = 0 := by
    change inner ℝ (u : RealSliceL2 L) (f : RealSliceL2 L) = 0 at ho
    simpa only [L2.inner_def, Real.inner_apply, mul_comm] using ho
  have hp : ∀ᵐ a ∂sliceHaar L,
      0 ≤ (u : RealSliceL2 L) a * (f : RealSliceL2 L) a := by
    filter_upwards [hu, hf] with a ha hb
    exact mul_nonneg ha.le hb
  have he := (integral_eq_zero_iff_of_nonneg_ae hp hi).mp hz
  apply Subtype.ext
  apply Lp.eq_zero_iff_ae_eq_zero.mpr
  filter_upwards [hu, he] with a ha heq
  exact (mul_eq_zero.mp heq).resolve_left (ne_of_gt ha)

/-- No nonzero principal eigenvector is orthogonal to a positive principal vector. -/
theorem principal_orthogonal_eq_zero (β : ℝ) (hβ : 0 ≤ β)
    (u f : gaugeInvariantSpace L)
    (hu : ∀ᵐ a ∂sliceHaar L, 0 < (u : RealSliceL2 L) a)
    (he : invariantOperator L β hβ f = lambda0 L β hβ • f)
    (ho : inner ℝ u f = 0) : f = 0 := by
  rcases principal_one_sign_ae L β hβ f he with hp | hm
  · exact nonnegative_orthogonal_positive_eq_zero L u f hu hp ho
  · have hn : ∀ᵐ a ∂sliceHaar L, 0 ≤ ((-f : gaugeInvariantSpace L) : RealSliceL2 L) a := by
      filter_upwards [hm, Lp.coeFn_neg (f : RealSliceL2 L)] with a ha hna
      change 0 ≤ (-(f : RealSliceL2 L)) a
      rw [hna]
      exact neg_nonneg.mpr ha
    have hz := nonnegative_orthogonal_positive_eq_zero L u (-f) hu hn
      (by rw [inner_neg_right, ho, neg_zero])
    exact neg_eq_zero.mp hz

/-- Explicit projection identity, with no assumed eigenspace dimension or gap. -/
theorem principal_eq_scalar (β : ℝ) (hβ : 0 ≤ β)
    (u v : gaugeInvariantSpace L) (hn : ‖u‖ = 1)
    (hp : ∀ᵐ a ∂sliceHaar L, 0 < (u : RealSliceL2 L) a)
    (hu : invariantOperator L β hβ u = lambda0 L β hβ • u)
    (hv : invariantOperator L β hβ v = lambda0 L β hβ • v) :
    v = (inner ℝ u v) • u := by
  have he : invariantOperator L β hβ (v - (inner ℝ u v) • u) =
      lambda0 L β hβ • (v - (inner ℝ u v) • u) := by
    rw [map_sub, map_smul, hv, hu, smul_sub]
    congr 1
    exact smul_comm _ _ _
  have ho : inner ℝ u (v - (inner ℝ u v) • u) = 0 := by
    rw [inner_sub_right, inner_smul_right, real_inner_self_eq_norm_sq, hn]
    ring
  exact sub_eq_zero.mp (principal_orthogonal_eq_zero L β hβ u _ hp he ho)

/-- The actual constructed unit positive vector spans the principal eigenspace. -/
theorem exists_unit_principal_spanning (β : ℝ) (hβ : 0 < β) :
    ∃ u : gaugeInvariantSpace L, ‖u‖ = 1 ∧
      invariantOperator L β hβ.le u = lambda0 L β hβ.le • u ∧
      (∀ᵐ a ∂sliceHaar L, 0 < (u : RealSliceL2 L) a) ∧
      ∀ v : gaugeInvariantSpace L,
        invariantOperator L β hβ.le v = lambda0 L β hβ.le • v →
        v = (inner ℝ u v) • u := by
  obtain ⟨u, hn, he, hp⟩ := exists_unit_principal_strictly_positive L β hβ
  exact ⟨u, hn, he, hp, fun v hv => principal_eq_scalar L β hβ.le u v hn hp he hv⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalSimplicity
