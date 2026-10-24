/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This module formalizes conditional interfaces and logical consequences. It does
not identify the de Bruijn--Newman heat flow with Huffman coding, prove a new
zero-free region, prove a trace non-sofic, or prove irrationality or
transcendence of any zeta-zero ordinate.
-/
import GRWTSK.Logic.InformationLoss.FactorizationFiber
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Real.Basic

/-!
# Heat-flow compression and sofic zero accounting

This file separates four claims that are easy to conflate.

* A process trace can cover a Huffman-like lossless code only when an explicit
  left inverse and prefix-free binary encoder are supplied.
* Such a cover makes every readout, including a zero-height readout, factor
  through the process. A process collision with different readouts refutes the
  cover.
* A family of valid zero-free boundaries cofinal above `3 / 4`, seeded at
  `7 / 8`, yields the strict half-plane to the right of `3 / 4`. The
  asymptotically-free cost condition is accounting data, not a supplier of the
  stagewise analytic estimates.
* Irrationality or transcendence follows from a sofic contradiction only after
  one separately supplies the arithmetic-to-sofic bridge and non-soficity of
  the relevant trace. GRH supplies critical-line placement only.

The code deliberately does not assert that the Rodgers--Tao heat-flow proof is
an actual compression algorithm. It formalizes the proposed analogy as a
conditional factorization interface.
-/

set_option autoImplicit false

universe u v w q

namespace GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic

open GRWTSK.Logic.InformationLoss

/-- `short` is a prefix of `long`, expressed without choosing a code tree. -/
def IsPrefix {Alphabet : Type v} (short long : List Alphabet) : Prop :=
  ∃ suffix, long = short ++ suffix

/-- No codeword is a proper extension of a codeword for a different source.
Equality of source values is allowed, so this formulation also covers equal
codewords. -/
def PrefixFree {X : Type u} {Alphabet : Type v}
    (encode : X → List Alphabet) : Prop :=
  ∀ ⦃x y : X⦄, IsPrefix (encode x) (encode y) → x = y

/-- A Huffman-like interface: binary words, exact decoding, and prefix freedom.
No optimality or expected-length theorem is asserted. -/
structure LosslessPrefixCode (X : Type u) (Alphabet : Type v) where
  encode : X → List Alphabet
  decode : List Alphabet → X
  decode_encode : ∀ x, decode (encode x) = x
  prefixFree : PrefixFree encode

/-- Exact decoding forces the encoder to be injective. -/
theorem LosslessPrefixCode.encode_injective
    {X : Type u} {Alphabet : Type v}
    (code : LosslessPrefixCode X Alphabet) :
    Function.Injective code.encode := by
  intro x y hxy
  calc
    x = code.decode (code.encode x) := (code.decode_encode x).symm
    _ = code.decode (code.encode y) := congrArg code.decode hxy
    _ = y := code.decode_encode y

/-- Every readout factors through a lossless code. This is the precise sense in
which exact coding retains all source information. -/
theorem LosslessPrefixCode.factorsThrough_encode
    {X : Type u} {Alphabet : Type v} {Z : Type w}
    (code : LosslessPrefixCode X Alphabet)
    (readout : X → Z) :
    FactorsThrough code.encode readout := by
  refine ⟨readout ∘ code.decode, ?_⟩
  funext x
  simp only [Function.comp_apply, code.decode_encode]

/-- Factorization through observables is transitive. -/
theorem factorsThrough_trans
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type q}
    (profile : X → Y) (middle : X → Z) (readout : X → W)
    (hMiddle : FactorsThrough profile middle)
    (hReadout : FactorsThrough middle readout) :
    FactorsThrough profile readout := by
  rcases hMiddle with ⟨decodeMiddle, hDecodeMiddle⟩
  rcases hReadout with ⟨decodeReadout, hDecodeReadout⟩
  refine ⟨decodeReadout ∘ decodeMiddle, ?_⟩
  funext x
  simp only [Function.comp_apply]
  calc
    readout x = decodeReadout (middle x) := by
      simpa only [Function.comp_apply] using congrFun hDecodeReadout x
    _ = decodeReadout (decodeMiddle (profile x)) := by
      apply congrArg decodeReadout
      simpa only [Function.comp_apply] using congrFun hDecodeMiddle x

/-- The proposed "heat flow covers Huffman coding" statement, stripped to its
mathematical content: a binary lossless prefix code factors through the chosen
process trace. This is a premise, not a theorem about the de Bruijn--Newman
flow. -/
def HuffmanLikeCover {X : Type u} {Trace : Type v}
    (process : X → Trace) : Prop :=
  ∃ code : LosslessPrefixCode X Bool,
    FactorsThrough process code.encode

/-- Under a Huffman-like cover, any source readout is recoverable from the
process trace. In particular, a separately defined zero-height readout is
bound to the process in this exact factorization sense. -/
theorem readout_bound_to_process_of_huffmanLikeCover
    {X : Type u} {Trace : Type v} {Z : Type w}
    (process : X → Trace)
    (hCover : HuffmanLikeCover process)
    (readout : X → Z) :
    FactorsThrough process readout := by
  rcases hCover with ⟨code, hCodeThroughProcess⟩
  exact factorsThrough_trans process code.encode readout
    hCodeThroughProcess (code.factorsThrough_encode readout)

/-- A process collision with different target values rules out every
Huffman-like lossless cover of that process. -/
theorem no_huffmanLikeCover_of_process_collision
    {X : Type u} {Trace : Type v} {Z : Type w}
    (process : X → Trace) (readout : X → Z)
    (x y : X)
    (hProcess : process x = process y)
    (hReadout : readout x ≠ readout y) :
    ¬ HuffmanLikeCover process := by
  intro hCover
  exact (not_factorsThrough_of_collision process readout x y hProcess hReadout)
    (readout_bound_to_process_of_huffmanLikeCover process hCover readout)

/-- A trace is presented through a chosen finite state profile. This is a
relative sofic interface: the finite state type and profile remain explicit. -/
def SoficThrough
    {X : Type u} {State : Type q} {Trace : Type v}
    [Fintype State]
    (state : X → State) (trace : X → Trace) : Prop :=
  FactorsThrough state trace

/-- A finite-state presentation is constant on each state fiber. -/
theorem trace_eq_of_soficThrough
    {X : Type u} {State : Type q} {Trace : Type v}
    [Fintype State]
    (state : X → State) (trace : X → Trace)
    (hSofic : SoficThrough state trace)
    {x y : X} (hState : state x = state y) :
    trace x = trace y :=
  eq_of_factorsThrough state trace hSofic hState

/-- One equal-state/different-trace witness breaks the proposed finite-state
(sofic) explanation. -/
theorem not_soficThrough_of_collision
    {X : Type u} {State : Type q} {Trace : Type v}
    [Fintype State]
    (state : X → State) (trace : X → Trace)
    (x y : X)
    (hState : state x = state y)
    (hTrace : trace x ≠ trace y) :
    ¬ SoficThrough state trace :=
  not_factorsThrough_of_collision state trace x y hState hTrace

/-- Abstract arithmetic predicates for a height type. To instantiate this with
ordinary real heights, `rational` and `algebraic` must be supplied by a
separate arithmetic module. -/
structure HeightArithmetic (Height : Type w) where
  rational : Height → Prop
  algebraic : Height → Prop
  rational_is_algebraic : ∀ γ, rational γ → algebraic γ

/-- Irrationality relative to the supplied rational-height predicate. -/
def IsIrrational {Height : Type w}
    (arithmetic : HeightArithmetic Height) (γ : Height) : Prop :=
  ¬ arithmetic.rational γ

/-- Transcendence relative to the supplied algebraic-height predicate. -/
def IsTranscendental {Height : Type w}
    (arithmetic : HeightArithmetic Height) (γ : Height) : Prop :=
  ¬ arithmetic.algebraic γ

/-- Relative transcendence implies relative irrationality when rational values
are included among algebraic values. -/
theorem irrational_of_transcendental
    {Height : Type w}
    (arithmetic : HeightArithmetic Height) (γ : Height)
    (hTranscendental : IsTranscendental arithmetic γ) :
    IsIrrational arithmetic γ := by
  intro hRational
  exact hTranscendental (arithmetic.rational_is_algebraic γ hRational)

/-- The exact conditional core of the arithmetic/sofic contradiction. It does
not establish either premise for zeta-zero traces. -/
theorem transcendental_of_algebraic_implies_sofic_of_nonsofic
    {X : Type u} {Trace : Type v} {Height : Type w}
    (arithmetic : HeightArithmetic Height)
    (trace : X → Trace) (height : X → Height)
    (sofic : Trace → Prop) (x : X)
    (algebraic_implies_sofic :
      arithmetic.algebraic (height x) → sofic (trace x))
    (trace_nonsofic : ¬ sofic (trace x)) :
    IsTranscendental arithmetic (height x) := by
  intro hAlgebraic
  exact trace_nonsofic (algebraic_implies_sofic hAlgebraic)

/-- Relative irrationality can be obtained without GRH when rational
height already forces the selected trace into the prohibited sofic class.
This isolates the user's desired unconditional irrationality route from the
separate critical-line/transcendence route. -/
theorem irrational_of_rational_implies_sofic_of_nonsofic
    {X : Type u} {Trace : Type v} {Height : Type w}
    (arithmetic : HeightArithmetic Height)
    (trace : X → Trace) (height : X → Height)
    (sofic : Trace → Prop) (x : X)
    (rational_implies_sofic :
      arithmetic.rational (height x) → sofic (trace x))
    (trace_nonsofic : ¬ sofic (trace x)) :
    IsIrrational arithmetic (height x) := by
  intro hRational
  exact trace_nonsofic (rational_implies_sofic hRational)

/-- A predicate-only GRH interface. In an analytic instantiation, `isZero`
must select the intended nontrivial zeros and `onCriticalLine` must express
real part equal to `1 / 2`. -/
def GRHFor {X : Type u}
    (isZero onCriticalLine : X → Prop) : Prop :=
  ∀ z, isZero z → onCriticalLine z

/-- GRH plus a separate algebraic-to-sofic bridge and a separate non-soficity
result yields critical-line placement and transcendental (hence irrational)
height. GRH alone does not supply either arithmetic premise. -/
theorem grh_zero_height_transcendental_of_nonsofic
    {X : Type u} {Trace : Type v} {Height : Type w}
    (arithmetic : HeightArithmetic Height)
    (isZero onCriticalLine : X → Prop)
    (trace : X → Trace) (height : X → Height)
    (sofic : Trace → Prop)
    (hGRH : GRHFor isZero onCriticalLine)
    (algebraic_implies_sofic :
      ∀ z, isZero z → onCriticalLine z →
        arithmetic.algebraic (height z) → sofic (trace z))
    (zero_trace_nonsofic :
      ∀ z, isZero z → ¬ sofic (trace z)) :
    ∀ z, isZero z →
      onCriticalLine z ∧
        IsIrrational arithmetic (height z) ∧
        IsTranscendental arithmetic (height z) := by
  intro z hz
  have hLine : onCriticalLine z := hGRH z hz
  have hTranscendental : IsTranscendental arithmetic (height z) := by
    intro hAlgebraic
    exact zero_trace_nonsofic z hz
      (algebraic_implies_sofic z hz hLine hAlgebraic)
  have hIrrational : IsIrrational arithmetic (height z) :=
    irrational_of_transcendental arithmetic (height z) hTranscendental
  exact ⟨hLine, hIrrational, hTranscendental⟩

/-- Exact split matching the proposed contradiction architecture:
irrationality is obtained from a rational-to-sofic obstruction without using
GRH; after GRH places the same zero on the critical line, a stronger
algebraic-to-sofic obstruction yields transcendence. Neither arithmetic bridge
nor non-soficity is constructed here. -/
theorem zero_height_irrational_and_grh_transcendental_of_nonsofic
    {X : Type u} {Trace : Type v} {Height : Type w}
    (arithmetic : HeightArithmetic Height)
    (isZero onCriticalLine : X → Prop)
    (trace : X → Trace) (height : X → Height)
    (sofic : Trace → Prop)
    (rational_implies_sofic :
      ∀ z, isZero z →
        arithmetic.rational (height z) → sofic (trace z))
    (algebraic_implies_sofic_on_line :
      ∀ z, isZero z → onCriticalLine z →
        arithmetic.algebraic (height z) → sofic (trace z))
    (zero_trace_nonsofic :
      ∀ z, isZero z → ¬ sofic (trace z))
    (hGRH : GRHFor isZero onCriticalLine) :
    ∀ z, isZero z →
      IsIrrational arithmetic (height z) ∧
        onCriticalLine z ∧
        IsTranscendental arithmetic (height z) := by
  intro z hz
  have hIrrational : IsIrrational arithmetic (height z) :=
    irrational_of_rational_implies_sofic_of_nonsofic
      arithmetic trace height sofic z
      (rational_implies_sofic z hz) (zero_trace_nonsofic z hz)
  have hLine : onCriticalLine z := hGRH z hz
  have hTranscendental : IsTranscendental arithmetic (height z) := by
    intro hAlgebraic
    exact zero_trace_nonsofic z hz
      (algebraic_implies_sofic_on_line z hz hLine hAlgebraic)
  exact ⟨hIrrational, hLine, hTranscendental⟩

/-- No selected zero lies strictly to the right of `boundary`. -/
def ZeroFreeRightOf
    {Point : Type u}
    (realPart : Point → ℝ) (isZero : Point → Prop)
    (boundary : ℝ) : Prop :=
  ∀ s, boundary < realPart s → ¬ isZero s

/-- Order-theoretic refinement from above. The second conjunct says the stage
boundaries are cofinal immediately above the proposed limit. -/
def RefinesFromAbove (boundary : ℕ → ℝ) (limit : ℝ) : Prop :=
  (∀ n, limit < boundary n) ∧
    ∀ x, limit < x → ∃ n, boundary n < x

/-- The refinement overhead is asymptotically negligible relative to the
positive accounting budget. This condition does not prove any stage estimate. -/
def AsymptoticallyFree
    (overhead budget : ℕ → ℝ) : Prop :=
  (∀ n, 0 ≤ overhead n) ∧
    (∀ n, 0 < budget n) ∧
      ∀ ε, 0 < ε → ∃ N, ∀ n, N ≤ n →
        overhead n ≤ ε * budget n

/-- A `7 / 8`-seeded family of valid zero-free stages refining toward `3 / 4`,
with a separately recorded asymptotically-free accounting condition. -/
structure ThreeQuarterRefinement (Point : Type u) where
  realPart : Point → ℝ
  isZero : Point → Prop
  boundary : ℕ → ℝ
  seedSevenEighths : boundary 0 = (7 / 8 : ℝ)
  refinesToThreeQuarters : RefinesFromAbove boundary (3 / 4 : ℝ)
  stageZeroFree : ∀ n, ZeroFreeRightOf realPart isZero (boundary n)
  overhead : ℕ → ℝ
  budget : ℕ → ℝ
  overheadAsymptoticallyFree : AsymptoticallyFree overhead budget

/-- The seed stage records exactly the strict `7 / 8` half-plane. -/
theorem ThreeQuarterRefinement.seed_zeroFree
    {Point : Type u} (scheme : ThreeQuarterRefinement Point) :
    ZeroFreeRightOf scheme.realPart scheme.isZero (7 / 8 : ℝ) := by
  simpa only [scheme.seedSevenEighths] using scheme.stageZeroFree 0

/-- If every refinement stage is valid and the boundaries are cofinal above
`3 / 4`, then the strict half-plane to the right of `3 / 4` is zero-free.
This does not exclude a zero on the line `Re(s) = 3 / 4`. The cost field is
not used to manufacture analytic validity; it only records the requested
accounting property. -/
theorem ThreeQuarterRefinement.limit_zeroFree
    {Point : Type u} (scheme : ThreeQuarterRefinement Point) :
    ZeroFreeRightOf scheme.realPart scheme.isZero (3 / 4 : ℝ) := by
  intro s hs
  rcases scheme.refinesToThreeQuarters.2 (scheme.realPart s) hs with ⟨n, hn⟩
  exact scheme.stageZeroFree n s hn

/-- Exposes the accounting hypothesis without conflating it with the analytic
stage supplier. -/
theorem ThreeQuarterRefinement.asymptotically_free_accounting
    {Point : Type u} (scheme : ThreeQuarterRefinement Point) :
    AsymptoticallyFree scheme.overhead scheme.budget :=
  scheme.overheadAsymptoticallyFree

end GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
