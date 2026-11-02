/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
This source is not installed in the public GRWTSK root. It neither asserts nor
imports an unverified geometric realization theorem. It carries the exact
OpenAI smoothing/Hodge import surfaces without changing their statements.
-/

import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Topology.Algebra.Module.ClosedSubmodule
import Mathlib.Tactic
import GRWTSK.FunctionalAnalysis.LocalSmoothing
import GRWTSK.Geometry.HodgeConjectureCMAbelianVarieties
import GRWTSK.NumberTheory.FareyResidueChannelDecomposition
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueGradedConvolution

/-!
# Residue-circle waves in a complete Hilbert fiber

Source alignment:
* The source residue labels are ALL gcd strata of `ZMod q`; nonunits are
  retained. A class selector is not automatically invariant under translation.
* The `openai/math` Euclidean half-wave local-smoothing comparator addresses
  Schwartz functions on `EuclideanSpace R (Fin n)` with n >= 2, t in [1,2],
  p >= 2 and specified Sobolev loss. It is not silently transported to a
  circle, to the source Möbius waveform, or to a Hilbert completion.
* The imported CM-Hodge theorem concerns algebraic realizability of rational
  Hodge (p,p) classes on CM abelian varieties. It does NOT say that all vectors
  in a Hilbert completion are algebraic, nor construct the needed realization.
* A *specified set* of realized cycle vectors in an already complete complex
  Hilbert space determines a closed span. Its orthogonal complement is the
  rigorously isolated "nonalgebraic residual relative to those realizations".
* The *same* closed algebraic subspace is used at all cyclic coordinates in
  the elementary covariantly trivial model. A nontrivial bundle requires
  unitary seam maps and a compatible family of projections.

All identities below are exact algebra/finite-Hilbert consequences, not a
claim of global PDE smoothing, source arithmetic cancellation or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert

open scoped BigOperators
open GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition

universe u

variable {H : Type u}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- A single address carries the full scale number and its actual cyclic
residue. In particular, a zero modulus does not silently become a circle;
applications must separately supply positivity of each selected modulus. -/
abbrev ScaleResidueIndex (scaleModulus : ℕ → ℕ) :=
  Σ j : ℕ, ZMod (scaleModulus j)

/-- The GENUINE complete complex Hilbert sum across *all* scales and
residue coordinates, rather than an arbitrary finite-stage Euclidean space.
Membership retains square-summability of the original coefficient packet. -/
abbrev AllScaleHilbert (scaleModulus : ℕ → ℕ) :=
  lp (fun _ : ScaleResidueIndex scaleModulus => ℂ) 2

/-- A SOURCE-EXPLICIT all-Sobolev-order DYADIC frequency ledger. Its
meaning is weighted square summability at every nonnegative integer order,
not ordinary smoothness in a geometric variable until an elliptic/Fourier
realization theorem identifies the weights with differential regularity.
No Euclidean PDE local-smoothing theorem is used to populate this predicate. -/
def DyadicAllOrders (scaleModulus : ℕ → ℕ)
    (f : AllScaleHilbert scaleModulus) : Prop :=
  ∀ m : ℕ,
    Summable (fun i : ScaleResidueIndex scaleModulus =>
      (2 : ℝ) ^ (2 * m * i.1) * ‖f i‖ ^ 2)

/-- The *actual* algebraic carrier is the closure of the complex span of
specified realized cycle vectors, not an arbitrarily enlarged subspace. -/
def algebraicClosedSpan (cycleImages : Set H) : ClosedSubmodule ℂ H :=
  ClosedSubmodule.closure (Submodule.span ℂ cycleImages)

/-- Orthogonal projection to the closed cycle-image span. -/
def algebraicProjection (cycleImages : Set H) : H →L[ℂ] H :=
  (algebraicClosedSpan cycleImages : Submodule ℂ H).starProjection

/-- Orthogonal projection to the complement, retaining the full residual. -/
def residualProjection (cycleImages : Set H) : H →L[ℂ] H :=
  ((algebraicClosedSpan cycleImages : Submodule ℂ H)ᗮ).starProjection

/-- No information is discarded when algebraic and residual components are
retained together. -/
theorem complete_reconstruction (cycleImages : Set H) (x : H) :
    algebraicProjection cycleImages x + residualProjection cycleImages x = x := by
  exact (algebraicClosedSpan cycleImages : Submodule ℂ H).starProjection_add_starProjection_orthogonal x

/-- The two components are Pythagorean in the genuine positive Hilbert norm.
This says nothing about any independent signed arithmetic consumer form. -/
theorem complete_energy_split (cycleImages : Set H) (x : H) :
    ‖x‖ ^ 2 =
      ‖algebraicProjection cycleImages x‖ ^ 2 +
        ‖residualProjection cycleImages x‖ ^ 2 := by
  exact norm_sq_eq_add_norm_sq_starProjection x
    (algebraicClosedSpan cycleImages : Submodule ℂ H)

/-- The residual vector really lies in the orthogonal complement of the
closed algebraic carrier. -/
theorem residual_in_orthogonal (cycleImages : Set H) (x : H) :
    residualProjection cycleImages x ∈
      (algebraicClosedSpan cycleImages : Submodule ℂ H)ᗮ := by
  exact Submodule.starProjection_apply_mem _ x

/-- No residual energy can exceed the complete positive energy. -/
theorem residual_norm_le (cycleImages : Set H) (x : H) :
    ‖residualProjection cycleImages x‖ ≤ ‖x‖ := by
  have h := complete_energy_split cycleImages x
  nlinarith [sq_nonneg ‖algebraicProjection cycleImages x‖,
    norm_nonneg x, norm_nonneg (residualProjection cycleImages x)]

section CyclicResidue

variable (q : ℕ) [NeZero q]

/-- A finite residue-labelled *Hilbert-valued* signal. -/
abbrev CyclicSignal := ZMod q → H

/-- Exactly the old gcd label, now acting as a selector of Hilbert vectors. -/
def gcdClass (d : ℕ) (f : CyclicSignal q) : CyclicSignal q :=
  fun r => if residueGCD q r = d then f r else 0

/-- Every residue class, including nonunits, reconstructs its source sample.
No positive/negative arithmetic signs are replaced. -/
theorem complete_gcd_reconstruction (f : CyclicSignal q) :
    (fun r => ∑ d ∈ q.divisors, gcdClass q d f r) = f := by
  classical
  funext r
  change (∑ d ∈ q.divisors,
    if residueGCD q r = d then f r else 0) = f r
  calc
    _ = (if residueGCD q r = residueGCD q r then f r else 0) := by
      apply Finset.sum_eq_single_of_mem (residueGCD q r)
        (residueGCD_mem_divisors q r)
      intro d _ hne
      simp [Ne.symm hne]
    _ = f r := by simp

/-- A FIXED Hilbert-algebraic projection commutes with pointwise residue
selection. No dynamics/translation commutation is inferred. -/
theorem gcdClass_algebraic_commute
    (cycleImages : Set H) (d : ℕ) (f : CyclicSignal q) :
    gcdClass q d (fun r => algebraicProjection cycleImages (f r)) =
      (fun r => algebraicProjection cycleImages (gcdClass q d f r)) := by
  classical
  funext r
  by_cases hr : residueGCD q r = d <;>
    simp [gcdClass, hr]

/-- The residual projection also commutes with a residue mask at a fixed
fiber, while it need not commute with a graph shift or a wave operator. -/
theorem gcdClass_residual_commute
    (cycleImages : Set H) (d : ℕ) (f : CyclicSignal q) :
    gcdClass q d (fun r => residualProjection cycleImages (f r)) =
      (fun r => residualProjection cycleImages (gcdClass q d f r)) := by
  classical
  funext r
  by_cases hr : residueGCD q r = d <;>
    simp [gcdClass, hr]

/-- Positive, complete counting energy of all samples. -/
def countingEnergy (f : CyclicSignal q) : ℝ :=
  ∑ r : ZMod q, ‖f r‖ ^ 2

/-- Positive difference energy of all cyclic edges, including wraparound. -/
def edgeEnergy (f : CyclicSignal q) : ℝ :=
  ∑ r : ZMod q, ‖f (r + 1) - f r‖ ^ 2

/-- Exact algebraic plus orthogonal-residual counting energy. -/
theorem countingEnergy_split (cycleImages : Set H) (f : CyclicSignal q) :
    countingEnergy q f =
      countingEnergy q (fun r => algebraicProjection cycleImages (f r)) +
      countingEnergy q (fun r => residualProjection cycleImages (f r)) := by
  classical
  unfold countingEnergy
  rw [← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl (fun r _ =>
    complete_energy_split cycleImages (f r))

/-- For a common fixed projection at every residue, the projection commutes
with the untwisted cyclic difference; then even edge energy splits. This
is *not* the false statement that gcd masks commute with differentiation. -/
theorem edgeEnergy_split (cycleImages : Set H) (f : CyclicSignal q) :
    edgeEnergy q f =
      edgeEnergy q (fun r => algebraicProjection cycleImages (f r)) +
      edgeEnergy q (fun r => residualProjection cycleImages (f r)) := by
  classical
  unfold edgeEnergy
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  simpa only [map_sub] using
    (complete_energy_split cycleImages (f (r + 1) - f r))

end CyclicResidue

/-- Exact algebraic/residual return on the concrete ALL-SCALE Hilbert sum.
The supplied cycleImages must be produced by the selected realization map;
this theorem does not itself identify any source geometric cycle. -/
theorem all_scale_reconstruction (scaleModulus : ℕ → ℕ)
    (cycleImages : Set (AllScaleHilbert scaleModulus))
    (x : AllScaleHilbert scaleModulus) :
    algebraicProjection cycleImages x + residualProjection cycleImages x = x :=
  complete_reconstruction cycleImages x

/-- Complete positive all-scale energy decomposes exactly by orthogonal
projection. This does not assert that an arbitrary source waveform is already
in `lp ... 2`; that membership is an explicit subsequent analytic obligation. -/
theorem all_scale_energy_split (scaleModulus : ℕ → ℕ)
    (cycleImages : Set (AllScaleHilbert scaleModulus))
    (x : AllScaleHilbert scaleModulus) :
    ‖x‖ ^ 2 =
      ‖algebraicProjection cycleImages x‖ ^ 2 +
        ‖residualProjection cycleImages x‖ ^ 2 :=
  complete_energy_split cycleImages x

/-- A complete-Hilbert, bounded finite-time wave at each scale.
This profile does NOT construct a Euclidean PDE propagator or grant a common
bound across scales; those are separate source-and-domain obligations. -/
def ScaleWaveFamily := ℕ → (H →L[ℂ] H)

/-- Complete wave output is reconstructed from both components at each
scale, without a spurious assumption that waves preserve cycle images. -/
theorem wave_scale_reconstruction (cycleImages : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    wave j x =
      wave j (algebraicProjection cycleImages x) +
        wave j (residualProjection cycleImages x) := by
  rw [← map_add, complete_reconstruction]

/-- The off-diagonal algebraic-to-residual leakage of a scale wave.
It is zero only when a separate commutation/invariance theorem says so. -/
def algebraicToResidualLeak (cycleImages : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) : H →L[ℂ] H :=
  (residualProjection cycleImages).comp
    ((wave j).comp (algebraicProjection cycleImages))

/-- This is the precise operator condition needed to prevent a wave from
mixing the realized algebraic span with its orthogonal residue. -/
def CommutesWithAlgebraic (cycleImages : Set H)
    (wave : ScaleWaveFamily (H := H)) : Prop :=
  ∀ j, (wave j).comp (algebraicProjection cycleImages) =
    (algebraicProjection cycleImages).comp (wave j)

/-- Invariance of the algebraic component under a commuting bounded wave
forces the algebraic-to-residual leakage to vanish at that scale. -/
theorem no_leak_of_commutation (cycleImages : Set H)
    (wave : ScaleWaveFamily (H := H))
    (hcomm : CommutesWithAlgebraic cycleImages wave) (j : ℕ) :
    algebraicToResidualLeak cycleImages wave j = 0 := by
  apply ContinuousLinearMap.ext
  intro x
  let K : Submodule ℂ H := algebraicClosedSpan cycleImages
  change Kᗮ.starProjection ((wave j) (K.starProjection x)) = 0
  have hc : (wave j) (K.starProjection x) = K.starProjection ((wave j) x) := by
    have hh := congrArg (fun T : H →L[ℂ] H => T x) (hcomm j)
    simpa only [ContinuousLinearMap.comp_apply] using hh
  have hm : (wave j) (K.starProjection x) ∈ K := by
    rw [hc]
    exact K.starProjection_apply_mem ((wave j) x)
  have hp := K.starProjection_eq_self_iff.mpr hm
  have hsplit := K.starProjection_add_starProjection_orthogonal
    ((wave j) (K.starProjection x))
  rw [hp] at hsplit
  have hh : (wave j) (K.starProjection x) +
      Kᗮ.starProjection ((wave j) (K.starProjection x)) =
      (wave j) (K.starProjection x) + 0 := by
    simpa using hsplit
  exact add_left_cancel hh

/-- A norm control valid at EVERY explicitly supplied bounded scale wave;
no uniform-in-j PDE estimate or cross-domain transfer is claimed. -/
theorem wave_residual_bound (cycleImages : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖residualProjection cycleImages (wave j x)‖ ≤
      ‖wave j‖ * ‖x‖ :=
  (residual_norm_le cycleImages (wave j x)).trans ((wave j).le_opNorm x)

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
