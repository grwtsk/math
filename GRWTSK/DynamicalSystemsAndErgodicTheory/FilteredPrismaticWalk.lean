/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.PoeticValidatedWalk
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.ThreePhaseEllipsoidOrbit
import Mathlib

/-!
# Filtered sofic walks, rational waveform equalization and prismatic ellipsoid steering

This source is a finite rational CONTROL and SEARCH model, not a construction
or displacement of genuine zeta zeros, a de Bruijn--Newman flow, or a
Navier--Stokes solution. The sample "zeros" are tagged candidate coordinates.
The finite prismatic cycle is compared to the already-present three-phase
positive Gram construction, without transferring the NS defect estimate.

Validation order is structural walk -> exact phrase/port gluing -> spectral
window and waveform/ellipsoid search filter. The final stage returns only
subassemblies already validated in the earlier stages. The source text and
prime-addressed boundary identities are not rewritten by the filter.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage


/-! ## Arbitrarily many finite modes, before specializing to three visual axes -/

universe u

/-- A total finite-mode equalizer: no fixed dimension is required. -/
def equalizeModes {Mode : Type u}
    (gain signal : Mode → ℚ) : Mode → ℚ :=
  fun i => gain i * signal i

/-- All modes contribute to the complete quadratic energy. -/
def modeEnergy {Mode : Type u} [Fintype Mode]
    (signal : Mode → ℚ) : ℚ :=
  ∑ i : Mode, (signal i) ^ 2

theorem modeEnergy_nonneg {Mode : Type u} [Fintype Mode]
    (signal : Mode → ℚ) : 0 ≤ modeEnergy signal := by
  classical
  unfold modeEnergy
  apply Finset.sum_nonneg
  intro i _
  positivity

/-- A filter with no zero gains is injective on exact rational samples.
A zero-gain deletion needs separate recovery side information. -/
theorem equalizeModes_injective {Mode : Type u}
    (gain : Mode → ℚ) (nonzero : ∀ i, gain i ≠ 0) :
    Function.Injective (equalizeModes gain) := by
  intro x y hxy
  funext i
  have hmul : gain i * x i = gain i * y i := congrFun hxy i
  exact (mul_left_cancel₀ (nonzero i)) hmul

/-- A finite rational candidate. No mathematical zero existence is asserted. -/
structure HypotheticalZero where
  realPart : ℚ
  height : ℚ
  deriving DecidableEq, Repr

/-- The real-part reflection for an abstract functional-equation pairing.
The source does NOT assert that a candidate is an actual zero. -/
def HypotheticalZero.reflection (z : HypotheticalZero) : HypotheticalZero :=
  ⟨1 - z.realPart, z.height⟩

theorem HypotheticalZero.reflection_involutive (z : HypotheticalZero) :
    z.reflection.reflection = z := by
  cases z with
  | mk beta gamma =>
    simp [HypotheticalZero.reflection] <;> ring

/-- Symmetric search window around one half, with a nonnegative height ceiling. -/
structure ZeroWindow where
  halfWidth : ℚ
  heightCeiling : ℚ
  width_nonneg : 0 ≤ halfWidth
  ceiling_nonneg : 0 ≤ heightCeiling

/-- This says a hypothetical location may be searched, NOT that a zero exists. -/
def ZeroWindow.Allows (w : ZeroWindow) (z : HypotheticalZero) : Prop :=
  (1 / 2 : ℚ) - w.halfWidth ≤ z.realPart ∧
  z.realPart ≤ (1 / 2 : ℚ) + w.halfWidth ∧
  0 ≤ z.height ∧ z.height ≤ w.heightCeiling

/-- The search window respects the reflective real-part symmetry. -/
theorem ZeroWindow.reflection_iff (w : ZeroWindow) (z : HypotheticalZero) :
    w.Allows z.reflection ↔ w.Allows z := by
  constructor
  · rintro ⟨hleft, hright, hheight, htop⟩
    unfold HypotheticalZero.reflection at hleft hright
    exact ⟨by dsimp at hright; linarith,
      by dsimp at hleft; linarith, hheight, htop⟩
  · rintro ⟨hleft, hright, hheight, htop⟩
    exact ⟨by dsimp [HypotheticalZero.reflection]; linarith,
      by dsimp [HypotheticalZero.reflection]; linarith, hheight, htop⟩

/-- Three axes are the finite sampled channels: timing, phonetic form, meaning. -/
structure PrismSample where
  timing : ℚ
  phonetic : ℚ
  semantic : ℚ
  deriving DecidableEq, Repr

def PrismSample.energy (x : PrismSample) : ℚ :=
  x.timing ^ 2 + x.phonetic ^ 2 + x.semantic ^ 2

theorem PrismSample.energy_nonneg (x : PrismSample) : 0 ≤ x.energy := by
  unfold PrismSample.energy
  positivity


/-- The visual three-axis sample embeds into the generic finite-mode carrier. -/
def PrismSample.asModes (s : PrismSample) (i : Fin 3) : ℚ :=
  if i.val = 0 then s.timing
  else if i.val = 1 then s.phonetic
  else s.semantic

theorem PrismSample.energy_eq_modeEnergy (s : PrismSample) :
    modeEnergy s.asModes = s.energy := by
  simp [modeEnergy, PrismSample.asModes, PrismSample.energy,
    Fin.sum_univ_three]

/-- An exact cyclic permutation, unlike dissipative heat. -/
def PrismSample.cycle (x : PrismSample) : PrismSample :=
  ⟨x.phonetic, x.semantic, x.timing⟩

theorem PrismSample.cycle_three (x : PrismSample) :
    x.cycle.cycle.cycle = x := by
  cases x
  rfl

theorem PrismSample.energy_cycle (x : PrismSample) :
    x.cycle.energy = x.energy := by
  unfold PrismSample.energy PrismSample.cycle
  ring

/-- Positive semiaxes give full-rank geometric stretching. -/
structure PrismAxes where
  timing : ℚ
  phonetic : ℚ
  semantic : ℚ
  timing_pos : 0 < timing
  phonetic_pos : 0 < phonetic
  semantic_pos : 0 < semantic

/-- The retained normalized sample is the exact source for this visual model. -/
structure EllipsoidFrame where
  axes : PrismAxes
  normalized : PrismSample

def EllipsoidFrame.world (frame : EllipsoidFrame) : PrismSample :=
  ⟨frame.axes.timing * frame.normalized.timing,
   frame.axes.phonetic * frame.normalized.phonetic,
   frame.axes.semantic * frame.normalized.semantic⟩

/-- Full source-coordinate energy; no two-coordinate cross term is dropped. -/
def EllipsoidFrame.normalizedEnergy (frame : EllipsoidFrame) : ℚ :=
  frame.normalized.energy

def EllipsoidFrame.worldEnergy (frame : EllipsoidFrame) : ℚ :=
  frame.world.energy

/-- Rotate in normalized coordinates and map into the same stretched axes. -/
def EllipsoidFrame.cycle (frame : EllipsoidFrame) : EllipsoidFrame :=
  { axes := frame.axes, normalized := frame.normalized.cycle }

theorem EllipsoidFrame.cycle_three (frame : EllipsoidFrame) :
    frame.cycle.cycle.cycle = frame := by
  cases frame with
  | mk axes normalized =>
    simp only [EllipsoidFrame.cycle, PrismSample.cycle_three]

theorem EllipsoidFrame.normalizedEnergy_cycle (frame : EllipsoidFrame) :
    frame.cycle.normalizedEnergy = frame.normalizedEnergy := by
  exact PrismSample.energy_cycle frame.normalized

/-- Stretching may change world-coordinate energy even while the normalized
cycle remains energy preserving. -/
def unequalAxes : PrismAxes where
  timing := 1
  phonetic := 2
  semantic := 3
  timing_pos := by norm_num
  phonetic_pos := by norm_num
  semantic_pos := by norm_num

def unitTimingFrame : EllipsoidFrame :=
  ⟨unequalAxes, ⟨1, 0, 0⟩⟩

theorem stretching_changes_world_energy :
    unitTimingFrame.worldEnergy = 1 ∧
    unitTimingFrame.cycle.worldEnergy = 9 ∧
    unitTimingFrame.normalizedEnergy =
      unitTimingFrame.cycle.normalizedEnergy := by
  norm_num [unitTimingFrame, unequalAxes, EllipsoidFrame.worldEnergy,
    EllipsoidFrame.normalizedEnergy, EllipsoidFrame.world,
    EllipsoidFrame.cycle, PrismSample.cycle, PrismSample.energy]

/-- Pointwise rational equalization of the three independent sampled channels. -/
def equalize (gains signal : PrismSample) : PrismSample :=
  ⟨gains.timing * signal.timing,
   gains.phonetic * signal.phonetic,
   gains.semantic * signal.semantic⟩

/-- Forward Euler relaxation to the complete three-channel mean.
This is a rational finite proxy, NOT a Navier--Stokes semigroup. -/
def sampleMean (signal : PrismSample) : ℚ :=
  (signal.timing + signal.phonetic + signal.semantic) / 3

def relax (rate : ℚ) (signal : PrismSample) : PrismSample :=
  ⟨(1 - rate) * signal.timing + rate * sampleMean signal,
   (1 - rate) * signal.phonetic + rate * sampleMean signal,
   (1 - rate) * signal.semantic + rate * sampleMean signal⟩

/-- A constant sample remains unchanged under finite relaxation. -/
theorem relax_constant (rate c : ℚ) :
    relax rate ⟨c, c, c⟩ = ⟨c, c, c⟩ := by
  simp [relax, sampleMean] <;> ring

/-- Search weight is a rational windowed resonance around an EXTERNAL chosen
reference height; the spectral zero coordinate is hypothetical and movable. -/
def hypotheticalWeight (referenceHeight : ℚ) (z : HypotheticalZero) : ℚ :=
  1 / (1 + |z.realPart - (1 / 2 : ℚ)| + |z.height - referenceHeight|)

theorem hypotheticalWeight_pos (referenceHeight : ℚ)
    (z : HypotheticalZero) : 0 < hypotheticalWeight referenceHeight z := by
  unfold hypotheticalWeight
  apply div_pos
  · norm_num
  · have h₁ := abs_nonneg (z.realPart - (1 / 2 : ℚ))
    have h₂ := abs_nonneg (z.height - referenceHeight)
    linarith

def scaleSample (a : ℚ) (signal : PrismSample) : PrismSample :=
  ⟨a * signal.timing, a * signal.phonetic, a * signal.semantic⟩

/-- Input to the finite search/diffusion filter; all tunable scalars are
rationals and all source positions remain attached to the original walk. -/
structure PrismaticFilterInput where
  window : ZeroWindow
  candidateZero : HypotheticalZero
  referenceHeight : ℚ
  gains : PrismSample
  waveform : PrismSample
  relaxationRate : ℚ
  relaxation_nonneg : 0 ≤ relaxationRate
  relaxation_le_one : relaxationRate ≤ 1
  axes : PrismAxes
  ellipsoidRadiusSq : ℚ
  minWorldEnergy : ℚ
  maxWorldEnergy : ℚ

def PrismaticFilterInput.frame (filter : PrismaticFilterInput) : EllipsoidFrame :=
  { axes := filter.axes
    normalized :=
      scaleSample (hypotheticalWeight filter.referenceHeight filter.candidateZero)
        (equalize filter.gains (relax filter.relaxationRate filter.waveform)) }

/-- Geometry and source-position policy constrain search candidates. This is
an actual decidable numerical predicate over Q, not a label-only annotation. -/
def PrismaticFilterInput.Admissible (filter : PrismaticFilterInput) : Prop :=
  filter.window.Allows filter.candidateZero ∧
  filter.frame.normalizedEnergy ≤ filter.ellipsoidRadiusSq ∧
  filter.minWorldEnergy ≤ filter.frame.worldEnergy ∧
  filter.frame.worldEnergy ≤ filter.maxWorldEnergy

/-- The previous two gates are run before numerical filtering. -/
def filterValidatedWalk (raw : WalkInput) (proposal : PhraseProposal)
    (filter : PrismaticFilterInput) :
    Option (Σ checked : CheckedWalk, ThreePhraseAssembly checked) :=
  match validateThenFit raw proposal with
  | none => none
  | some accepted =>
      if decide filter.Admissible then some accepted else none

/-- Any result preserves the proof-bearing original graph walk. -/
theorem filterValidatedWalk_sound
    (raw : WalkInput) (proposal : PhraseProposal)
    (filter : PrismaticFilterInput)
    (result : Σ checked : CheckedWalk, ThreePhraseAssembly checked)
    (h : filterValidatedWalk raw proposal filter = some result) :
    WordPath graph result.1.input.start
      (walkLabels result.1.input.edges) result.1.input.finish :=
  result.1.sound

/-- Dynamic candidate search over an arbitrary-length finite batch. Input
walks remain checked separately and are never conflated by score equality. -/
def filterCandidateBatch (filter : PrismaticFilterInput)
    (candidates : List (WalkInput × PhraseProposal)) :
    List (Σ checked : CheckedWalk, ThreePhraseAssembly checked) :=
  candidates.filterMap fun pair =>
    filterValidatedWalk pair.1 pair.2 filter

/-- Exact diagnostic fixture: the admissibility window is adjustable, and the
same hypothetical zero moves between accepted and excluded windows. -/
def candidateThreeQuarter : HypotheticalZero := ⟨3 / 4, 2⟩

def broadWindow : ZeroWindow where
  halfWidth := 1 / 4
  heightCeiling := 3
  width_nonneg := by norm_num
  ceiling_nonneg := by norm_num

def narrowWindow : ZeroWindow where
  halfWidth := 1 / 8
  heightCeiling := 3
  width_nonneg := by norm_num
  ceiling_nonneg := by norm_num

theorem broad_window_allows_fixture :
    broadWindow.Allows candidateThreeQuarter := by
  norm_num [ZeroWindow.Allows, broadWindow, candidateThreeQuarter]

theorem narrow_window_rejects_fixture :
    ¬ narrowWindow.Allows candidateThreeQuarter := by
  norm_num [ZeroWindow.Allows, narrowWindow, candidateThreeQuarter]

def demoFilter : PrismaticFilterInput where
  window := broadWindow
  candidateZero := candidateThreeQuarter
  referenceHeight := 2
  gains := ⟨1, 1, 1⟩
  waveform := ⟨1, 1, 1⟩
  relaxationRate := 0
  relaxation_nonneg := by norm_num
  relaxation_le_one := by norm_num
  axes := unequalAxes
  ellipsoidRadiusSq := 3
  minWorldEnergy := 1
  maxWorldEnergy := 30

theorem demoFilter_admissible : demoFilter.Admissible := by
  norm_num [PrismaticFilterInput.Admissible, PrismaticFilterInput.frame,
    broadWindow, candidateThreeQuarter, ZeroWindow.Allows,
    EllipsoidFrame.normalizedEnergy, EllipsoidFrame.worldEnergy,
    EllipsoidFrame.world, scaleSample, hypotheticalWeight,
    equalize, relax, sampleMean, unequalAxes, PrismSample.energy,
    demoFilter]

def demoNarrow : PrismaticFilterInput :=
  { demoFilter with window := narrowWindow }

theorem demoNarrow_not_admissible : ¬ demoNarrow.Admissible := by
  intro h
  exact narrow_window_rejects_fixture h.1

theorem demo_accepts_original :
    (filterValidatedWalk poemWalk poemProposal demoFilter).isSome = true := by
  simp [filterValidatedWalk, demoFilter_admissible, poem_two_gates_accept,
    validateThenFit, checkWalk, checkProposal,
    poemWalk_valid, poemProposal_valid]

theorem narrow_rejects_original :
    filterValidatedWalk poemWalk poemProposal demoNarrow = none := by
  simp [filterValidatedWalk, demoNarrow_not_admissible]

/-- Each accepted result still carries all literal source words and the prime
ports of the validated phrase assembly, rather than a score-only surrogate. -/
theorem filtered_result_has_source_words
    (raw : WalkInput) (proposal : PhraseProposal)
    (filter : PrismaticFilterInput)
    (result : Σ checked : CheckedWalk, ThreePhraseAssembly checked)
    (h : filterValidatedWalk raw proposal filter = some result) :
    walkWords
      (result.2.opening.edges ++ result.2.forecast.edges ++
        result.2.payoff.edges) = walkWords result.1.input.edges :=
  result.2.reconstructWords

/-!
Comparison boundary: original positive-Gram cyclic/heat theorems are available
from ThreePhaseEllipsoidOrbit. The rational sample cycle above is not an
intertwiner with the actual Navier--Stokes convolution or PDE solution.
The missing Fourier/operator bound, high-high-to-low tail accounting, and
source-exact comparison are tracked in grwtsk/math#1498.
-/

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
