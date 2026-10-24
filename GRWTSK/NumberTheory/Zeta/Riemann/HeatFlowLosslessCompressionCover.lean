/- Copyright (c) 2026 grwtsk contributors. MIT.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import this module from GRWTSK.lean until a pinned warning-clean build,
fresh kernel replay, and transitive axiom audit have accepted it.
-/
import Mathlib
import GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary

set_option autoImplicit false

/-!
# A conditional lossless-code cover for a zero-bearing process

This module isolates the exact mathematical content that can safely be taken
from an analogy between a heat-flow argument and a lossless code.

* `LosslessCodec` is a total encoder with a left inverse.
* `LosslessProcessCover` says that an encoded evolution commutes with the
  underlying process.
* `ZeroBoundProcessCover` adds the extra map that binds a process state to a
  zero. Losslessness alone does not construct this map.
* `AsymptoticallyFreeRefinement` records a nonnegative accounting cost that
  tends to zero in an elementary epsilon--cutoff form. It eventually fits in
  the numerical gap from `3/4` to `7/8`.
* `FiniteStateObserver` gives only the finite-state observable needed to rule
  out a coded-state collision with distinct observations. It is not a full
  formalization of a sofic shift.
* `ZeroHeightArithmeticAssumptions` makes irrationality and conditional
  transcendence explicit suppliers. GRH is not used to derive either fact.

The Rodgers--Tao de Bruijn--Newman heat flow motivates the process language;
Huffman coding motivates the lossless-code interface; the 2026 quasi-Riemann
work motivates the `7/8` boundary. These are methodological relationships,
not identifications of the analytic heat flow with a Huffman implementation.
In particular, the imported Bombieri/Huffman boundary theorem proves that the
canonical two-moment profile is lossy on its three-dimensional source and
cannot become lossless merely by postprocessing.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.HeatFlowLosslessCompressionCover

universe uTime uState uCode uZero uSymbol

/-- A total lossless code. `leftInverse` is the entire recovery obligation;
no compression-rate, prefix-code, computability, or optimality property is
included. -/
structure LosslessCodec (State : Type uState) (Code : Type uCode) where
  encode : State → Code
  decode : Code → State
  leftInverse : Function.LeftInverse decode encode

/-- A lossless encoder is injective. -/
theorem LosslessCodec.encode_injective
    {State : Type uState} {Code : Type uCode}
    (codec : LosslessCodec State Code) :
    Function.Injective codec.encode := by
  intro x y hxy
  calc
    x = codec.decode (codec.encode x) := (codec.leftInverse x).symm
    _ = codec.decode (codec.encode y) := congrArg codec.decode hxy
    _ = y := codec.leftInverse y

/-- The local codec interface implies the existing repository predicate for a
total lossless decoder. -/
theorem LosslessCodec.hasTotalLosslessDecoder
    {State : Type uState} {Code : Type uCode}
    (codec : LosslessCodec State Code) :
    GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary.HasTotalLosslessDecoder
      codec.encode :=
  ⟨codec.decode, codec.leftInverse⟩

/-- The existing byte-packet Huffman implementation is a concrete total
lossless codec. This uses its stored packet metadata and its source
`decode_encode` theorem; it does not assert that a heat flow is Huffman code. -/
def huffmanByteCodec :
    LosslessCodec (List UInt8) GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Packet where
  encode := GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.encode
  decode := fun packet => (GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.decode packet).getD []
  leftInverse := by
    intro source
    simp [GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.decode_encode]

/-- A coded evolution covers a process when encoding commutes with every
specified time step. This is the precise replacement for the informal phrase
"the heat flow is a lossless compression algorithm". -/
structure LosslessProcessCover
    (Time : Type uTime) (State : Type uState) (Code : Type uCode) where
  step : Time → State → State
  codec : LosslessCodec State Code
  codedStep : Time → Code → Code
  commutes : ∀ time state,
    codedStep time (codec.encode state) = codec.encode (step time state)

/-- Decoding after an encoded step recovers the evolved state exactly. -/
theorem LosslessProcessCover.recover_after_codedStep
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    (cover : LosslessProcessCover Time State Code)
    (time : Time) (state : State) :
    cover.codec.decode (cover.codedStep time (cover.codec.encode state)) =
      cover.step time state := by
  calc
    cover.codec.decode (cover.codedStep time (cover.codec.encode state)) =
        cover.codec.decode (cover.codec.encode (cover.step time state)) := by
      rw [cover.commutes]
    _ = cover.step time state := cover.codec.leftInverse _

/-- Recovering a zero from a recovered state needs an explicit state-to-zero
map. Neither a lossless codec nor a heat-flow identity supplies this map. -/
structure ZeroBoundProcessCover
    (Time : Type uTime) (State : Type uState) (Code : Type uCode)
    (Zero : Type uZero) where
  process : LosslessProcessCover Time State Code
  zeroOfState : State → Zero

/-- Decode the zero attached to a coded process state. -/
def ZeroBoundProcessCover.decodeZero
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Zero : Type uZero}
    (cover : ZeroBoundProcessCover Time State Code Zero)
    (code : Code) : Zero :=
  cover.zeroOfState (cover.process.codec.decode code)

/-- Under the explicit binding, coded evolution recovers the zero attached to
the evolved state. -/
theorem ZeroBoundProcessCover.recover_bound_zero
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Zero : Type uZero}
    (cover : ZeroBoundProcessCover Time State Code Zero)
    (time : Time) (state : State) :
    cover.decodeZero
        (cover.process.codedStep time (cover.process.codec.encode state)) =
      cover.zeroOfState (cover.process.step time state) := by
  exact congrArg cover.zeroOfState
    (cover.process.recover_after_codedStep time state)

/-- Restatement of the imported information-loss obstruction. The canonical
two Bombieri moments do not admit a total lossless decoder on their whole
three-dimensional source. -/
theorem bombieri_two_moment_profile_is_not_lossless :
    ¬ GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary.HasTotalLosslessDecoder
      GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile :=
  GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary.two_bombieri_moments_have_no_total_lossless_decoder

/-- Therefore no claim that uses only the canonical two-moment profile can
instantiate the lossless-code premise without supplying additional source
information. -/
theorem no_lossless_codec_with_bombieri_moment_encoding
    (decoder : (ℂ × ℂ) →
      GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.Combination 2) :
    ¬ Function.LeftInverse decoder
      GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile := by
  intro hleft
  exact bombieri_two_moment_profile_is_not_lossless ⟨decoder, hleft⟩

/-- The two numerical boundaries used by the accounting interface. This module
does not reprove the external analytic zero-free theorem. -/
noncomputable def threeQuarterBoundary : ℝ := 3 / 4

noncomputable def sevenEighthBoundary : ℝ := 7 / 8

/-- The available numerical refinement gap is exactly `1/8`. -/
theorem boundary_gap :
    sevenEighthBoundary - threeQuarterBoundary = (1 / 8 : ℝ) := by
  norm_num [threeQuarterBoundary, sevenEighthBoundary]

/-- An elementary epsilon--cutoff formulation of an asymptotically free,
nonnegative accounting cost. -/
structure AsymptoticallyFreeRefinement where
  cost : ℕ → ℝ
  nonnegative : ∀ n, 0 ≤ cost n
  eventually_lt : ∀ ε : ℝ, 0 < ε → ∃ cutoff : ℕ,
    ∀ n, cutoff ≤ n → cost n < ε

/-- Every asymptotically free refinement eventually fits strictly between the
`3/4` and `7/8` accounting lines. -/
theorem AsymptoticallyFreeRefinement.eventually_fits_boundary_gap
    (refinement : AsymptoticallyFreeRefinement) :
    ∃ cutoff : ℕ, ∀ n, cutoff ≤ n →
      threeQuarterBoundary + refinement.cost n < sevenEighthBoundary := by
  obtain ⟨cutoff, hcutoff⟩ :=
    refinement.eventually_lt (1 / 8 : ℝ) (by norm_num)
  refine ⟨cutoff, ?_⟩
  intro n hn
  calc
    threeQuarterBoundary + refinement.cost n <
        threeQuarterBoundary + (1 / 8 : ℝ) :=
      by simpa only [add_comm] using add_lt_add_left (hcutoff n hn) threeQuarterBoundary
    _ = sevenEighthBoundary := by
      norm_num [threeQuarterBoundary, sevenEighthBoundary]

/-- The minimal finite-state observable used below. This is deliberately less
than a definition of a sofic shift, presentation, language, or entropy. -/
structure FiniteStateObserver
    (State : Type uState) (Symbol : Type uSymbol) [Fintype Symbol] where
  observe : State → Symbol

/-- A conceded coincidence would identify two source states in code while a
finite-state observer still distinguishes them. -/
def ConcededCoincidence
    {State : Type uState} {Code : Type uCode} {Symbol : Type uSymbol}
    [Fintype Symbol]
    (codec : LosslessCodec State Code)
    (observer : FiniteStateObserver State Symbol)
    (x y : State) : Prop :=
  codec.encode x = codec.encode y ∧ observer.observe x ≠ observer.observe y

/-- Losslessness rules out a conceded coincidence. -/
theorem no_conceded_coincidence
    {State : Type uState} {Code : Type uCode} {Symbol : Type uSymbol}
    [Fintype Symbol]
    (codec : LosslessCodec State Code)
    (observer : FiniteStateObserver State Symbol)
    (x y : State) :
    ¬ ConcededCoincidence codec observer x y := by
  rintro ⟨hcode, hobserve⟩
  apply hobserve
  exact congrArg observer.observe (codec.encode_injective hcode)

/-- The corresponding collision notion after a covered process step. -/
def PostflowConcededCoincidence
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Symbol : Type uSymbol} [Fintype Symbol]
    (cover : LosslessProcessCover Time State Code)
    (observer : FiniteStateObserver State Symbol)
    (time : Time) (x y : State) : Prop :=
  cover.codedStep time (cover.codec.encode x) =
      cover.codedStep time (cover.codec.encode y) ∧
    observer.observe (cover.step time x) ≠
      observer.observe (cover.step time y)

/-- A commuting lossless process cover also rules out the post-flow version of
the finite-state coincidence. -/
theorem no_postflow_conceded_coincidence
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Symbol : Type uSymbol} [Fintype Symbol]
    (cover : LosslessProcessCover Time State Code)
    (observer : FiniteStateObserver State Symbol)
    (time : Time) (x y : State) :
    ¬ PostflowConcededCoincidence cover observer time x y := by
  rintro ⟨hcode, hobserve⟩
  have hencoded :
      cover.codec.encode (cover.step time x) =
        cover.codec.encode (cover.step time y) := by
    calc
      cover.codec.encode (cover.step time x) =
          cover.codedStep time (cover.codec.encode x) :=
        (cover.commutes time x).symm
      _ = cover.codedStep time (cover.codec.encode y) := hcode
      _ = cover.codec.encode (cover.step time y) :=
        cover.commutes time y
  apply hobserve
  exact congrArg observer.observe (cover.codec.encode_injective hencoded)

/-- Arithmetic assertions about zero ordinates are separate hypotheses. The
second field records exactly the user's desired conditional implication; it is
not derived in this module from GRH or from the coding/process interfaces. -/
structure ZeroHeightArithmeticAssumptions
    (Zero : Type uZero) (height : Zero → ℝ) (GRH : Prop) where
  irrational : ∀ zero, Irrational (height zero)
  transcendentalOfGRH : GRH → ∀ zero, Transcendental ℚ (height zero)

/-- Projection of the explicit irrational-height supplier. -/
theorem zero_height_irrational
    {Zero : Type uZero} {height : Zero → ℝ} {GRH : Prop}
    (assumptions : ZeroHeightArithmeticAssumptions Zero height GRH)
    (zero : Zero) :
    Irrational (height zero) :=
  assumptions.irrational zero

/-- Projection of the explicit conditional transcendence supplier. -/
theorem zero_height_transcendental_of_grh
    {Zero : Type uZero} {height : Zero → ℝ} {GRH : Prop}
    (assumptions : ZeroHeightArithmeticAssumptions Zero height GRH)
    (hGRH : GRH) (zero : Zero) :
    Transcendental ℚ (height zero) :=
  assumptions.transcendentalOfGRH hGRH zero

/-- The repository-level accounting bundle. Every mathematically substantive
edge is visible as data: process/code commutation, state-to-zero binding,
finite observation, asymptotic cost, and zero height. -/
structure QuasiRiemannAccountingSystem
    (Time : Type uTime) (State : Type uState) (Code : Type uCode)
    (Zero : Type uZero) (Symbol : Type uSymbol) [Fintype Symbol] where
  zeroCover : ZeroBoundProcessCover Time State Code Zero
  observer : FiniteStateObserver State Symbol
  refinement : AsymptoticallyFreeRefinement
  height : Zero → ℝ

/-- The accounting system recovers the explicitly bound zero after a coded
process step. -/
theorem QuasiRiemannAccountingSystem.recovers_zero
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Zero : Type uZero} {Symbol : Type uSymbol} [Fintype Symbol]
    (system : QuasiRiemannAccountingSystem Time State Code Zero Symbol)
    (time : Time) (state : State) :
    system.zeroCover.decodeZero
        (system.zeroCover.process.codedStep time
          (system.zeroCover.process.codec.encode state)) =
      system.zeroCover.zeroOfState
        (system.zeroCover.process.step time state) :=
  system.zeroCover.recover_bound_zero time state

/-- The accounting system's refinement cost eventually stays inside the
`3/4`--`7/8` gap. -/
theorem QuasiRiemannAccountingSystem.eventually_fits_gap
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Zero : Type uZero} {Symbol : Type uSymbol} [Fintype Symbol]
    (system : QuasiRiemannAccountingSystem Time State Code Zero Symbol) :
    ∃ cutoff : ℕ, ∀ n, cutoff ≤ n →
      threeQuarterBoundary + system.refinement.cost n <
        sevenEighthBoundary :=
  system.refinement.eventually_fits_boundary_gap

/-- The accounting system rules out a coded post-flow collision that remains
visible to its finite-state observer. This is the precise proved
"coincidence-breaking" statement; no stronger sofic theorem is claimed. -/
theorem QuasiRiemannAccountingSystem.breaks_observed_postflow_coincidence
    {Time : Type uTime} {State : Type uState} {Code : Type uCode}
    {Zero : Type uZero} {Symbol : Type uSymbol} [Fintype Symbol]
    (system : QuasiRiemannAccountingSystem Time State Code Zero Symbol)
    (time : Time) (x y : State) :
    ¬ PostflowConcededCoincidence
      system.zeroCover.process system.observer time x y :=
  no_postflow_conceded_coincidence
    system.zeroCover.process system.observer time x y

end GRWTSK.NumberTheory.Zeta.Riemann.HeatFlowLosslessCompressionCover
