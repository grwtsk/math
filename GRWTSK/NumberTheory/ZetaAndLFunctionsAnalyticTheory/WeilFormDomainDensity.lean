/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTranslationEnergyDomain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaOutput
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule

/-!
# Density of the actual supported odd gamma-form domain

Every original normalized sine has finite original gamma energy. Its L2
class therefore has a unique lift into the already constructed maximal
`FormDomain`. A physical vector orthogonal to all lifts has every source
sine coefficient zero. Original Lebesgue Parseval then makes that vector
zero. Thus the inclusion has dense range in the supported odd physical
space, without assuming a form-core theorem or any Weil sign.

This is PHYSICAL L2 density, not graph-norm density of the sine span.
The consumer is the nondegeneracy of the physical weak-response operator
in `WeilShiftedSourceSolve`. No cofinal certificate or RH is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FormDomainDensity

open TranslationCutoffs TranslationEnergyDomain OddRootProjection
open OddSineForm OddShiftEnergy OddGammaOutput OddSineParseval OddWrapEnergy LowSchur

/-- The same input map, with its exact supported odd codomain retained. -/
def windowInput (T : ℝ) : FormDomain T →L[ℝ] WindowPhysical T :=
  (WithLp.fstL 2 ℝ (WindowPhysical T) Energy).comp (hilbertGraph T).subtypeL

@[simp] theorem coe_windowInput (T : ℝ) (z : FormDomain T) :
    (windowInput T z : Physical) = input T z := rfl

theorem windowInput_injective (T : ℝ) : Function.Injective (windowInput T) := by
  intro z w h
  apply input_injective T
  exact congrArg (fun f : WindowPhysical T => (f : Physical)) h

/-- The physical inclusion is contractive for the complete graph norm. -/
theorem windowInput_norm_le (T : ℝ) (z : FormDomain T) :
    ‖windowInput T z‖ ≤ ‖z‖ := by
  have he := form_norm_sq T z
  rw [← form_output_norm_sq T z] at he
  change ‖input T z‖ ≤ ‖z‖
  nlinarith [norm_nonneg (input T z), norm_nonneg z, sq_nonneg ‖output T z‖]

/-- Literal source sine, not a newly normalized model basis. -/
def sinePhysical (T : ℝ) (n : ℕ) : Physical :=
  (memLp_zeroExtendedSine T n).toLp (zeroExtendedSine T n)

theorem sinePhysical_ae (T : ℝ) (n : ℕ) :
    sinePhysical T n =ᵐ[volume] zeroExtendedSine T n :=
  (memLp_zeroExtendedSine T n).coeFn_toLp

/-- A single original sine is a finite trial; reuse its established
finite-energy theorem rather than postulate regularity of an L2 class. -/
theorem sine_gamma_integrable (T : ℝ) (hT : 0 < T) (n : ℕ) :
    IntegrableOn (fun r => parityKernel 0 r *
      zeroShiftEnergy r (zeroExtendedSine T (n + 1))) (Ioi (0 : ℝ)) := by
  classical
  let x : Fin (n + 1) → ℝ := fun i => if i = Fin.last n then 1 else 0
  have hx : finiteSine T x = zeroExtendedSine T (n + 1) := by
    funext t
    simp [finiteSine, x, ite_mul]
  have he := integrableOn_gammaEnergy_finiteSine T hT x
  simpa only [hx, zeroShiftEnergy, zeroShiftSquare] using he

/-- Every positive source sine has an actual graph-domain lift. -/
theorem exists_sine_lift (T : ℝ) (hT : 0 < T) (n : ℕ) :
    ∃ z : FormDomain T, input T z = sinePhysical T (n + 1) := by
  have hs : ∀ᵐ t ∂volume,
      t ∉ Icc (-T) T → zeroExtendedSine T (n + 1) t = 0 := by
    exact Eventually.of_forall (fun t ht => by simp [zeroExtendedSine, ht])
  have ho : ∀ᵐ t ∂volume,
      zeroExtendedSine T (n + 1) (-t) = -zeroExtendedSine T (n + 1) t :=
    Eventually.of_forall (zeroExtendedSine_odd T (n + 1))
  exact (existsUnique_form_lift_of_source T (zeroExtendedSine T (n + 1))
    (memLp_zeroExtendedSine T (n + 1)) hs ho (sine_gamma_integrable T hT n)).exists

/-- Coefficients retain the same Lebesgue normalization as source Parseval. -/
theorem sinePhysical_inner (T : ℝ) (n : ℕ) (f : Physical) :
    inner ℝ (sinePhysical T n) f = sineCoefficient T f n := by
  rw [L2.inner_def, sineCoefficient]
  apply integral_congr_ae
  filter_upwards [sinePhysical_ae T n] with t ht
  simp [ht, RCLike.inner_apply, mul_comm]

/-- No nonzero supported odd physical vector is invisible to every
original finite-energy test. This is the useful annihilator statement. -/
theorem eq_zero_of_all_form_pairings (T : ℝ) (hT : 0 < T)
    (f : WindowPhysical T)
    (h : ∀ z : FormDomain T, inner ℝ (windowInput T z) f = 0) : f = 0 := by
  have hcoeff (n : ℕ) : sineCoefficient T (f : Physical) (n + 1) = 0 := by
    obtain ⟨z, hz⟩ := exists_sine_lift T hT n
    have hp := h z
    change inner ℝ (input T z) (f : Physical) = 0 at hp
    rw [hz, sinePhysical_inner] at hp
    exact hp
  have hconditions := (mem_supportedOdd_iff T (f : Physical)).1 f.property
  have hsum := hasSum_source_sineCoefficient_sq_ae T hT (Lp.memLp (f : Physical))
    hconditions.2 hconditions.1
  have hmass : (∫ t : ℝ, ‖(f : Physical) t‖ ^ 2) = 0 := by
    simpa only [hcoeff, sq, zero_mul, tsum_zero] using hsum.tsum_eq.symm
  have hn : ‖(f : Physical)‖ ^ 2 = 0 :=
    (norm_sq_integral volume (f : Physical)).trans hmass
  exact Subtype.ext (norm_eq_zero.mp (sq_eq_zero_iff.mp hn))

/-- Source-domain density in PHYSICAL L2. This is not a form-core claim. -/
theorem windowInput_range_closure (T : ℝ) (hT : 0 < T) :
    (windowInput T).range.topologicalClosure = ⊤ := by
  rw [Submodule.topologicalClosure_eq_top_iff, Submodule.eq_bot_iff]
  intro f hf
  apply eq_zero_of_all_form_pairings T hT f
  intro z
  exact hf (windowInput T z) ⟨z, rfl⟩

/-- A continuous physical functional is determined by all source tests. -/
theorem physical_pairing_unique (T : ℝ) (hT : 0 < T)
    (f g : WindowPhysical T)
    (h : ∀ z : FormDomain T,
      inner ℝ f (windowInput T z) = inner ℝ g (windowInput T z)) : f = g := by
  apply sub_eq_zero.mp
  apply eq_zero_of_all_form_pairings T hT (f - g)
  intro z
  rw [inner_sub_right, real_inner_comm (windowInput T z) f,
    real_inner_comm (windowInput T z) g, h z, sub_self]

end GRWTSK.NumberTheory.WeilQuadraticForm.FormDomainDensity
