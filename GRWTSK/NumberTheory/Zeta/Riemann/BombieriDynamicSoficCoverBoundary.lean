/-
Copyright (c) 2026 grwtsk contributors. MIT.
Huffman, Bombieri, Mathlib and all imported repository source identities
retain their original authorship and licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No public-root import, GRH/RH claim, zero-ordinate conclusion,
nor automatic real-analytic source interpretation.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary
import GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary
import Mathlib

/-!
# Bombieri two-moment fibers obstruct every moment-only dynamic refinement

The actual ordinary/reciprocal two-moment profile has the SAME value
at two distinct source vectors: the corrected nonzero coefficient
vector from stages 2/3/4 and zero.

Even if the finite stages grow without bound and their transitions/
coarsenings commute, no entire history reconstructed solely from that
fixed two-moment profile separates this specific pair. Consequently
a spectral process with a LEFT INVERSE cannot be reconstructed from
that moment-only history. This is stronger than observing one finite
state collision: it is a theorem about ALL levels of a given dynamic
partition family.

A concrete current Huffman byte packet cannot reverse this
information loss when it is applied AFTER the two moments. This does
not impugn the separately proved Huffman packet round trip on bytes,
which is a genuinely lossless source-to-packet map.

These are source-bound finite algebraic obstructions, not claims that
the full Weil form is a two-moment statistic, that Tao heat flow is a
codec, or that a zeta zero has non-sofic or irrational ordinate.
-/

set_option autoImplicit false
noncomputable section

universe u v

namespace GRWTSK.NumberTheory.Zeta.Riemann.BombieriDynamicSoficCoverBoundary

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary
open GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary

/-- Exact source collision, with both original ordinary and reciprocal
moments retained. The two source configurations are genuinely distinct. -/
theorem twoMoment_corrected_zero_collision :
    bombieriMomentProfile correctedCoordinates =
      bombieriMomentProfile (0 : Combination 2) := by
  rw [bombieriMomentProfile_correctedCoordinates,
    bombieriMomentProfile_zero]

/-- A coherent and arbitrarily deep refining history with a stagewise
FINITE codomain. No finite level is confused with the complete history. -/
def momentRefinementHistory {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step)
    (u : Combination 2) :
    (n : ℕ) → StageCells R.size n :=
  fun n => R.classify n u

/-- The mathematically precise meaning of a moment-only refinement:
EVERY stage is a postprocessing of the SAME two retained moments.
The stage decoders may depend arbitrarily on the level. -/
def EveryStageUsesOnlyBombieriMoments
    {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step) : Prop :=
  ∀ n, FactorsThrough bombieriMomentProfile (R.classify n)

/-- No countable sequence of refinements can recover an already
collapsed distinction when every stage still factors through those
same two moments. Growth of stage capacity does not change this. -/
theorem moment_only_history_collision
    {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step)
    (hStages : EveryStageUsesOnlyBombieriMoments R) :
    momentRefinementHistory R correctedCoordinates =
      momentRefinementHistory R (0 : Combination 2) := by
  funext n
  exact eq_of_factorsThrough
    bombieriMomentProfile (R.classify n) (hStages n)
    twoMoment_corrected_zero_collision

/-- Even the COMPLETE infinite stage history has no source left
inverse, unless new measurements that split the moment kernel enter. -/
theorem no_left_inverse_of_moment_only_refinement_history
    {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step)
    (hStages : EveryStageUsesOnlyBombieriMoments R) :
    ¬ ∃ recover :
        ((n : ℕ) → StageCells R.size n) → Combination 2,
      ∀ u, recover (momentRefinementHistory R u) = u := by
  rintro ⟨recover, hRecover⟩
  apply correctedCoordinates_ne_zero
  calc
    correctedCoordinates =
        recover (momentRefinementHistory R correctedCoordinates) :=
      (hRecover correctedCoordinates).symm
    _ = recover (momentRefinementHistory R (0 : Combination 2)) :=
      congrArg recover (moment_only_history_collision R hStages)
    _ = (0 : Combination 2) := hRecover 0

/-- Any source readout separating the corrected coefficient witness
from zero is NOT a function of such a moment-only infinite history.
The readout can be an ordinate only after it is ACTUALLY constructed. -/
theorem separating_readout_not_from_moment_only_history
    {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step)
    (hStages : EveryStageUsesOnlyBombieriMoments R)
    {Y : Type u} (readout : Combination 2 → Y)
    (hSeparates : readout correctedCoordinates ≠ readout 0) :
    ¬ FactorsThrough (momentRefinementHistory R) readout := by
  intro hFactors
  exact hSeparates
    (eq_of_factorsThrough
      (momentRefinementHistory R) readout
      hFactors (moment_only_history_collision R hStages))

/-- Even with a valid labeled-graph cover and COMMUTING spectral
evolution, a lossless spectral lift cannot arise as a postprocessing
of an entirely moment-only dynamic partition history. -/
theorem no_lossless_graph_cover_from_moment_only_history
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {step : Combination 2 → Combination 2}
    (R : GrowingRefinement (Combination 2) step)
    (hStages : EveryStageUsesOnlyBombieriMoments R)
    (C : CommutingLosslessGraphCover G (Combination 2) step)
    (postprocess :
      ((n : ℕ) → StageCells R.size n) → C.Spectrum)
    (hFactors : ∀ u,
      C.lift u = postprocess (momentRefinementHistory R u)) :
    False := by
  apply correctedCoordinates_ne_zero
  apply C.lift_injective
  calc
    C.lift correctedCoordinates =
        postprocess (momentRefinementHistory R correctedCoordinates) :=
      hFactors correctedCoordinates
    _ = postprocess (momentRefinementHistory R (0 : Combination 2)) :=
      congrArg postprocess (moment_only_history_collision R hStages)
    _ = C.lift (0 : Combination 2) := (hFactors 0).symm

/-- No arbitrary postprocessing of the TWO moments can be the
complete left-invertible spectral process of the coefficient source,
even if that process has a valid labeled finite graph presentation. -/
theorem no_lossless_graph_cover_from_two_moments
    {Label : Type u} [Fintype Label]
    {G : RootedSoficGraph Label}
    {step : Combination 2 → Combination 2}
    (C : CommutingLosslessGraphCover G (Combination 2) step)
    (postprocess : (ℂ × ℂ) → C.Spectrum)
    (hFactors : ∀ u,
      C.lift u = postprocess (bombieriMomentProfile u)) :
    False :=
  C.no_recovery_after_collision bombieriMomentProfile
    postprocess hFactors twoMoment_corrected_zero_collision
    correctedCoordinates_ne_zero

/-- Literal application of the currently proved Huffman packet encoder
AFTER an arbitrary encoding of the two Bombieri moments into bytes.
The packet round-trip remains valid for the bytes; the ORIGINAL
three-coordinate coefficients are irretrievable after the moment loss. -/
theorem no_source_decoder_from_bombieri_huffman_packets
    (momentToBytes : (ℂ × ℂ) → List UInt8) :
    ¬ HasTotalLosslessDecoder
      (fun u : Combination 2 =>
        GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.encode
          (momentToBytes (bombieriMomentProfile u))) :=
  no_total_lossless_decoder_from_moment_only_postprocessing
    (fun moments =>
      GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.encode (momentToBytes moments))

end GRWTSK.NumberTheory.Zeta.Riemann.BombieriDynamicSoficCoverBoundary
