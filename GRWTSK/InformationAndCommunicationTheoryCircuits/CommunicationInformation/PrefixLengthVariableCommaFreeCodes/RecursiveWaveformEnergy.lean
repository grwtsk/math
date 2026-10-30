import Mathlib
import GRWTSK.InformationAndCommunicationTheoryCircuits.CommunicationInformation.PrefixLengthVariableCommaFreeCodes.RecursiveWaveformSplit

/-!
# Quadratic and quartic energy under exact waveform decomposition

Copyright (c) 2026 grwtsk contributors. MIT.

These are additive real-valued observations of finite samples, not a proof
that energy observations alone reconstruct a waveform. Any diffusion or
deletion stage needs an independent source-preservation argument.

Source proof candidate only. Compilation, fresh kernel replay, and
transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.RecursiveWaveformEnergy

/-- Finite quadratic energy of an ordered real waveform. -/
def quadraticEnergy (xs : List ℝ) : ℝ :=
  (xs.map (fun x => x ^ 2)).sum

/-- Finite quartic concentration observation of an ordered real waveform. -/
def quarticEnergy (xs : List ℝ) : ℝ :=
  (xs.map (fun x => x ^ 4)).sum

theorem quadraticEnergy_append (xs ys : List ℝ) :
    quadraticEnergy (xs ++ ys) =
      quadraticEnergy xs + quadraticEnergy ys := by
  simp [quadraticEnergy]

theorem quarticEnergy_append (xs ys : List ℝ) :
    quarticEnergy (xs ++ ys) =
      quarticEnergy xs + quarticEnergy ys := by
  simp [quarticEnergy]

theorem quadraticEnergy_nonneg (xs : List ℝ) :
    0 ≤ quadraticEnergy xs := by
  unfold quadraticEnergy
  exact List.sum_nonneg (fun x hx => by positivity)

theorem quarticEnergy_nonneg (xs : List ℝ) :
    0 ≤ quarticEnergy xs := by
  unfold quarticEnergy
  exact List.sum_nonneg (fun x hx => by positivity)

/-- Equal retained observations of distinct inputs obstruct any left inverse. -/
theorem no_recovery_of_collision
    {Source Observed : Type*} (observe : Source → Observed)
    {x y : Source} (hxy : x ≠ y) (hobs : observe x = observe y) :
    ¬ ∃ recover : Observed → Source,
        ∀ source, recover (observe source) = source := by
  rintro ⟨recover, hrecover⟩
  apply hxy
  calc
    x = recover (observe x) := (hrecover x).symm
    _ = recover (observe y) := congrArg recover hobs
    _ = y := hrecover y

/-- If complementary metadata suffices for reconstruction, retention is injective. -/
theorem retained_pair_injective
    {Source Observed Side : Type*}
    (observe : Source → Observed) (side : Source → Side)
    (recover : Observed × Side → Source)
    (hrecover : ∀ x, recover (observe x, side x) = x) :
    Function.Injective (fun x => (observe x, side x)) := by
  intro x y h
  calc
    x = recover (observe x, side x) := (hrecover x).symm
    _ = recover (observe y, side y) := congrArg recover h
    _ = y := hrecover y

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.RecursiveWaveformEnergy
