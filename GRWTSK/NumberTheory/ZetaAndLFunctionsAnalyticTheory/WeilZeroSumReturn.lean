/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveZeroMoment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilVerticalLimits
import Mathlib.Analysis.Normed.Group.InfiniteSum

/-!
# Return of the actual height limits to the unordered signed zero sum

MSC2020: 11M41 (primary), 11M26, 30E20, 40A05.

The finite windows exhaust the canonical source index as a Finset filter,
without selecting an enumeration or assuming monotonicity of good heights.
The existing all-height counting premise supplies absolute summability. The
existing source-selected full-line limit is then identified with HasSum over
ALL finite subsets, retaining analytic multiplicities and both zeta poles.
A literal centered-Mellin adapter retains the signed reflected product.

The formal counting supplier is still explicit. The adjacent written argument
explains how WMED-v1-5 supplies D=324 and L=log(3*q); that Jensen proof has
NOT been formalized here. Physical evaluation of the full-line integral and
all-test prime--gamma--pole positivity remain separate obligations. No RH,
GRH, seven-eighths localization or positive-square zero model is assumed.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent review and numerical certification NOT_RUN.
Source inspection: math@6f7d2e3b6d15f0d2c49aaba984af27c48786943c.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: math#1801, scope comment 6829493093. Originality UNASSESSED. Individual records adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Every finite set of actual source zeros is eventually contained in the
strict-height window. This is cofinality, not just pointwise coverage. -/
theorem tendsto_heightWindow_atTop
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    Tendsto (heightWindow chi hprim) (atTop : Filter ℝ) atTop := by
  classical
  refine tendsto_atTop.2 (fun S => ?_)
  induction S using Finset.induction_on with
  | empty =>
      exact Eventually.of_forall (fun _ => Finset.empty_subset _)
  | @insert rho S hrho ih =>
      filter_upwards [eventually_gt_atTop (|rho.1.im|), ih] with H hH hS
      intro z hz
      rcases Finset.mem_insert.mp hz with rfl | hz
      · exact (mem_heightWindow chi hprim H rho).2 hH
      · exact hS hz

end GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

variable {N : ℕ} [NeZero N]

/-- Literal centered-Mellin normalization at every complex parameter. The
second evaluation is at 1-conj(s), not at s; poles are included. -/
theorem correlation_contour_weight_eq_centered_mellin_pair
    (f : ℝ → ℂ) (A : ℝ) (hf : Integrable f volume)
    (hs : ∀ x, A < |x| → f x = 0) (s : ℂ) :
    (∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      (∫ x : ℝ, f x * Complex.exp ((s - 1 / 2) * (x : ℂ))) *
        conj (∫ x : ℝ, f x * Complex.exp ((1 - conj s - 1 / 2) * (x : ℂ))) := by
  have hz : Complex.I * spectralCoordinate s = s - 1 / 2 := by
    rw [spectralCoordinate, ← mul_assoc, mul_neg, Complex.I_mul_I, neg_neg, one_mul]
  have hsharp : Complex.I * conj (spectralCoordinate s) = 1 - conj s - 1 / 2 := by
    apply Complex.ext <;> simp [spectralCoordinate, Complex.mul_re, Complex.mul_im] <;> ring
  rw [correlation_contour_weight_eq_reflected_product f A hf hs s]
  simp only [hz, hsharp]

/-- Absolute convergence for the unchanged contour weight. Counting remains
an explicit all-height hypothesis; smooth compact support supplies all decay. -/
theorem summable_norm_contour_weight_of_heightCount
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) * W rho.1‖) := by
  intro W
  change Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
    ∫ r : ℝ, correlation f r * Complex.exp ((rho.1 - 1 / 2) * (r : ℂ))‖)
  simpa only [correlation_contour_weight_eq_fourier] using
    summable_primitive_correlation_of_heightCount chi hprim D L hD hL hcount
      f A hA hf hs 1 le_rfl

/-- The source-selected contour limit is the unordered sum, not a definition
of the sum by those heights. Both pole orientations remain in the endpoint. -/
theorem primitive_hasSum_contour_weight_of_heightCount
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) := by
  intro W
  obtain ⟨T, hT, hlim⟩ := exists_primitive_weil_full_line_limit chi hprim
  have ht : Tendsto T atTop atTop := by
    apply tendsto_atTop_mono (fun n => ?_) tendsto_natCast_atTop_atTop
    linarith [(hT n).1]
  have habs := summable_norm_contour_weight_of_heightCount chi hprim D L hD hL hcount
    f A hA hf hs
  have hfinite := (hlim f A hA hf hs).2
  have hsum := hfinite.add_const (if N = 1 then W 0 + W 1 else 0)
  apply hasSum_of_subseq_of_summable habs
    ((tendsto_heightWindow_atTop chi hprim).comp ht)
  simpa only [sub_add_cancel] using hsum

/-- The same HasSum statement on the literal signed centered-Mellin pairing.
No ordinate projection, simple-zero assumption or modulus-square replacement. -/
theorem primitive_hasSum_centered_mellin_pair_of_heightCount
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) *
      (∫ x : ℝ, f x * Complex.exp ((rho.1 - 1 / 2) * (x : ℂ))) *
        conj (∫ x : ℝ, f x * Complex.exp ((1 - conj rho.1 - 1 / 2) * (x : ℂ))))
      ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) := by
  intro W
  have h := primitive_hasSum_contour_weight_of_heightCount chi hprim D L hD hL hcount
    f A hA hf hs
  have heq : (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1) =
      (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) *
        (∫ x : ℝ, f x * Complex.exp ((rho.1 - 1 / 2) * (x : ℂ))) *
          conj (∫ x : ℝ, f x * Complex.exp ((1 - conj rho.1 - 1 / 2) * (x : ℂ)))) := by
    funext rho
    dsimp only [W]
    rw [correlation_contour_weight_eq_centered_mellin_pair f A
      (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)]
    ring
  rw [heq] at h
  exact h

/-- Explicit conductor-one endpoint: the gamma/von-Mangoldt integral and BOTH
zeta poles. The zero index is the canonical conductor-one source, literally
riemannZeta by LFunction_modOne_eq; no new zeta-zero object is introduced. -/
theorem zeta_hasSum_contour_weight_of_heightCount
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    (∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L)) →
    ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
      let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
      let V := fun t : ℝ =>
        let s := (2 : ℂ) + (t : ℂ) * Complex.I
        (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
          LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s)
      HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
        ((∫ t : ℝ, V t) / (2 * (Real.pi : ℂ)) + (W 0 + W 1)) := by
  intro chi hprim hcount f A hA hf hs W V
  obtain ⟨T, hT, hlim⟩ := exists_zeta_weil_full_line_limit
  have ht : Tendsto T atTop atTop := by
    apply tendsto_atTop_mono (fun n => ?_) tendsto_natCast_atTop_atTop
    linarith [(hT n).1]
  have habs := summable_norm_contour_weight_of_heightCount chi hprim D L hD hL hcount
    f A hA hf hs
  have hsum := ((hlim f A hA hf hs).2).add_const (W 0 + W 1)
  apply hasSum_of_subseq_of_summable habs
    ((tendsto_heightWindow_atTop chi hprim).comp ht)
  simpa only [sub_add_cancel] using hsum

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
