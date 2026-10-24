/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
import Mathlib

/-!
# The two Bombieri moments cannot support a lossless dynamic process cover

The actual stage-two/three/four corrected tent coordinates and the zero
vector have the same pair of Bombieri moments. If EACH refinement stage
is only a postprocessing of this pair, the full infinite dynamic history
still identifies those distinct sources. No decoder can reconstruct them.

Even a supplied finite labeled graph and a spectral-operator cover cannot
be left-invertible when its trace factors through that collapsed history.
The only escape is to retain a new independent invariant, not to lower
an accounting exponent or repeat the same two-moment measurement.

This is a source-specific failure of one information profile, not a
no-go for every corrected test space, an actual Guinand--Weil model,
or a proof of spectral non-soficity/RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.DynamicBombieriSoficObstruction

open GRWTSK.Logic.InformationLoss
open GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery
open GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

universe u v

/-- All refinement stages are functions only of the two retained
Bombieri moments. This is an explicit dependence assumption and is not
true of arbitrary legitimate refinements. -/
def MomentOnlyStages {Obs : Type u}
    (R : DynamicRefinement (Combination 2) Obs) : Prop :=
  ∀ n, FactorsThrough bombieriMomentProfile (R.observe n)

/-- The actual nonzero corrected tent vector collides with zero at EVERY
moment-only refinement stage, regardless of the number of stages. -/
theorem momentOnly_stage_collision
    {Obs : Type u}
    (R : DynamicRefinement (Combination 2) Obs)
    (hMoments : MomentOnlyStages R) (n : ℕ) :
    R.observe n correctedCoordinates = R.observe n 0 := by
  apply eq_of_factorsThrough bombieriMomentProfile (R.observe n)
    (hMoments n)
  rw [bombieriMomentProfile_correctedCoordinates,
    bombieriMomentProfile_zero]

/-- Countably many moment-only refinements still have identical
complete histories on these two distinct source configurations. -/
theorem momentOnly_history_collision
    {Obs : Type u}
    (R : DynamicRefinement (Combination 2) Obs)
    (hMoments : MomentOnlyStages R) :
    R.history correctedCoordinates = R.history 0 := by
  funext n
  exact momentOnly_stage_collision R hMoments n

/-- No left inverse exists for the complete dynamic history if no stage
retains information beyond the two noninjective Bombieri moments. -/
theorem no_exact_reconstruction_from_momentOnly_history
    {Obs : Type u}
    (R : DynamicRefinement (Combination 2) Obs)
    (hMoments : MomentOnlyStages R) :
    ¬ ∃ decode : (ℕ → Obs) → Combination 2,
        ∀ x, decode (R.history x) = x := by
  rintro ⟨decode, hdecode⟩
  have hsame := congrArg decode
    (momentOnly_history_collision R hMoments)
  apply correctedCoordinates_ne_zero
  calc
    correctedCoordinates = decode (R.history correctedCoordinates) :=
      (hdecode correctedCoordinates).symm
    _ = decode (R.history (0 : Combination 2)) := hsame
    _ = 0 := hdecode 0

/-- Any further postprocessing, including graph labels or spectral readouts
factoring through the collapsed history, still has the same source collision. -/
theorem trace_collision_of_momentOnly_history
    {Obs : Type u} {Trace : Type v}
    (R : DynamicRefinement (Combination 2) Obs)
    (hMoments : MomentOnlyStages R)
    (trace : Combination 2 → Trace)
    (htrace : FactorsThrough R.history trace) :
    trace correctedCoordinates = trace 0 :=
  eq_of_factorsThrough R.history trace htrace
    (momentOnly_history_collision R hMoments)

/-- Full *commuting left-invertible spectral cover* is impossible if
the only retained source measurements are the two Bombieri moments.
No sofic-language or zero-height conclusion is needed for this no-go. -/
theorem no_lossless_spectral_cover_after_moment_collapse
    {Obs : Type u} {State : Type v}
    {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover (Combination 2) Obs State Bool Spectral)
    (hMoments : MomentOnlyStages C.partitions)
    (hpost : FactorsThrough C.partitions.history C.labelTrace) :
    False := by
  have htrace :
      C.labelTrace correctedCoordinates = C.labelTrace 0 :=
    trace_collision_of_momentOnly_history C.partitions hMoments
      C.labelTrace hpost
  exact correctedCoordinates_ne_zero (C.trace_injective htrace)

end GRWTSK.NumberTheory.Zeta.Riemann.DynamicBombieriSoficObstruction
