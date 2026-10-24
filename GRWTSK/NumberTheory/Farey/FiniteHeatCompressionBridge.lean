/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Imported Mathlib and GRWTSK definitions retain their original licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This bridge proves exact finite-channel factorization statements only. It does
not formalize the Rodgers--Tao integral, identify a zeta-zero trace, construct
a finite Huffman code for real-valued signals, prove non-soficity, or derive an
arithmetic statement about actual zero ordinates.
-/
import GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
import GRWTSK.Geometry.Hodge.FiniteHeatRecovery
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteHeatNewmanNormalization

/-!
# Exact finite heat recovery as a conditional compression cover

The generic compression module defines a Huffman-like cover by requiring an
actual binary lossless prefix code to factor through a process. The finite
Hodge heat and finite Newman coefficient modules separately prove exact
full-precision recovery. This file supplies the missing logical bridge.

Exact recovery implies that every readout factors through the process. It also
shows that a Huffman-like cover exists exactly when the source type already
admits a binary lossless prefix code. Thus finite heat preserves an available
code; it does not manufacture finite-bit compressibility for an uncountable
real signal space.

The final collision lemmas instantiate the relative sofic obstruction. They
rule out one explicitly chosen finite-state presentation when two source
signals share a state but remain distinct after exact heat. They do not prove
non-soficity against all finite presentations.
-/

set_option autoImplicit false
noncomputable section

universe u v w

namespace GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
open GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
open GRWTSK.Geometry.Hodge.FiniteHeatRecovery
open GRWTSK.RiemannHypothesis.FiniteHeatNewmanNormalization

/-- A process with a specified exact left inverse on every source input. This
is full-precision mathematical recovery, not an algorithmic complexity or
finite-bit stability statement. -/
def ExactProcessRecovery {X : Type u} {Trace : Type v}
    (process : X → Trace) : Prop :=
  ∃ recover : Trace → X, ∀ x, recover (process x) = x

/-- Exact process recovery forces injectivity of the process. -/
theorem injective_of_exactProcessRecovery
    {X : Type u} {Trace : Type v}
    (process : X → Trace)
    (hRecovery : ExactProcessRecovery process) :
    Function.Injective process := by
  rcases hRecovery with ⟨recover, hrecover⟩
  intro x y hxy
  calc
    x = recover (process x) := (hrecover x).symm
    _ = recover (process y) := congrArg recover hxy
    _ = y := hrecover y

/-- Every target readout can be reconstructed from an exactly recoverable
process trace. This is the exact factorization meaning of “bound to a
process.” -/
theorem factorsThrough_of_exactProcessRecovery
    {X : Type u} {Trace : Type v} {Z : Type w}
    (process : X → Trace)
    (hRecovery : ExactProcessRecovery process)
    (readout : X → Z) :
    FactorsThrough process readout := by
  rcases hRecovery with ⟨recover, hrecover⟩
  refine ⟨readout ∘ recover, ?_⟩
  funext x
  change readout x = readout (recover (process x))
  rw [hrecover x]

/-- The source type has some exact binary prefix code. No probability model,
optimality theorem, computability bound, or finite expected length is included. -/
def AdmitsLosslessBinaryCode (X : Type u) : Prop :=
  Nonempty (LosslessPrefixCode X Bool)

/-- Under exact process recovery, a Huffman-like cover exists exactly when the
source already admits a binary lossless prefix code. Exact heat therefore
preserves code information but does not create codeability. -/
theorem huffmanLikeCover_iff_admitsLosslessBinaryCode
    {X : Type u} {Trace : Type v}
    (process : X → Trace)
    (hRecovery : ExactProcessRecovery process) :
    HuffmanLikeCover process ↔ AdmitsLosslessBinaryCode X := by
  constructor
  · rintro ⟨code, _⟩
    exact ⟨code⟩
  · rintro ⟨code⟩
    refine ⟨code, ?_⟩
    exact factorsThrough_of_exactProcessRecovery process hRecovery code.encode

/-- The exact diagonal Hodge heat channel has the inverse already proved in
`FiniteHeatRecovery`. -/
theorem diagonalHeat_exactProcessRecovery
    {ι : Type u} (eigenvalue : ι → ℝ) (t : ℝ) :
    ExactProcessRecovery (diagonalHeat eigenvalue t) := by
  refine ⟨inverseDiagonalHeat eigenvalue t, ?_⟩
  intro signal
  exact inverse_after_heat eigenvalue t signal

/-- Every readout of an exact real signal factors through finite-time diagonal
heat. This is full-real-precision recovery, not finite lossy compression. -/
theorem diagonalHeat_readout_bound
    {ι : Type u} {Z : Type w}
    (eigenvalue : ι → ℝ) (t : ℝ)
    (readout : (ι → ℝ) → Z) :
    FactorsThrough (diagonalHeat eigenvalue t) readout :=
  factorsThrough_of_exactProcessRecovery
    (diagonalHeat eigenvalue t)
    (diagonalHeat_exactProcessRecovery eigenvalue t)
    readout

/-- For finite diagonal heat, the Huffman-like cover question reduces exactly
to the independent existence of a binary lossless prefix code on the signal
space. In particular, this theorem does not assert such a code for real-valued
signals. -/
theorem diagonalHeat_huffmanLikeCover_iff
    {ι : Type u} (eigenvalue : ι → ℝ) (t : ℝ) :
    HuffmanLikeCover (diagonalHeat eigenvalue t) ↔
      AdmitsLosslessBinaryCode (ι → ℝ) :=
  huffmanLikeCover_iff_admitsLosslessBinaryCode
    (diagonalHeat eigenvalue t)
    (diagonalHeat_exactProcessRecovery eigenvalue t)

/-- The finite Newman coefficient channel is exactly recoverable at every real
parameter by applying the corresponding forward diagonal heat to the inverse
heat coefficients. This is not a theorem about the integral `H_t` or its
zeros. -/
theorem newmanFiniteCoefficients_exactProcessRecovery
    {ι : Type u} (frequency : ι → ℝ) (t : ℝ) :
    ExactProcessRecovery (newmanFiniteCoefficients frequency t) := by
  refine ⟨diagonalHeat (squareFrequencies frequency) t, ?_⟩
  intro coefficient
  rw [newman_positive_time_eq_inverse_heat]
  exact heat_after_inverse (squareFrequencies frequency) t coefficient

/-- Every abstract readout of a finite Newman coefficient vector factors
through the finite coefficient process at every real parameter. An actual
zero-height readout would still have to be defined and proved to depend on
these finite coefficients. -/
theorem newmanFiniteCoefficients_readout_bound
    {ι : Type u} {Z : Type w}
    (frequency : ι → ℝ) (t : ℝ)
    (readout : (ι → ℝ) → Z) :
    FactorsThrough (newmanFiniteCoefficients frequency t) readout :=
  factorsThrough_of_exactProcessRecovery
    (newmanFiniteCoefficients frequency t)
    (newmanFiniteCoefficients_exactProcessRecovery frequency t)
    readout

/-- The finite Newman coefficient process has a Huffman-like cover precisely
when its real coefficient space independently admits a lossless binary prefix
code. No such code is asserted here. -/
theorem newmanFiniteCoefficients_huffmanLikeCover_iff
    {ι : Type u} (frequency : ι → ℝ) (t : ℝ) :
    HuffmanLikeCover (newmanFiniteCoefficients frequency t) ↔
      AdmitsLosslessBinaryCode (ι → ℝ) :=
  huffmanLikeCover_iff_admitsLosslessBinaryCode
    (newmanFiniteCoefficients frequency t)
    (newmanFiniteCoefficients_exactProcessRecovery frequency t)

/-- A collision in a selected finite state profile cannot explain two distinct
signals after exact diagonal heat. This refutes that one presentation only. -/
theorem diagonalHeat_not_soficThrough_of_state_collision
    {ι : Type u} {State : Type v} [Fintype State]
    (state : (ι → ℝ) → State)
    (eigenvalue : ι → ℝ) (t : ℝ)
    {x y : ι → ℝ}
    (hState : state x = state y)
    (hDifferent : x ≠ y) :
    ¬ SoficThrough state (diagonalHeat eigenvalue t) := by
  apply not_soficThrough_of_collision
    state (diagonalHeat eigenvalue t) x y hState
  intro hHeat
  exact hDifferent (diagonalHeat_injective eigenvalue t hHeat)

/-- The analogous selected-state obstruction for the finite Newman coefficient
process. It does not quantify over all finite-state presentations. -/
theorem newmanFiniteCoefficients_not_soficThrough_of_state_collision
    {ι : Type u} {State : Type v} [Fintype State]
    (state : (ι → ℝ) → State)
    (frequency : ι → ℝ) (t : ℝ)
    {x y : ι → ℝ}
    (hState : state x = state y)
    (hDifferent : x ≠ y) :
    ¬ SoficThrough state (newmanFiniteCoefficients frequency t) := by
  apply not_soficThrough_of_collision
    state (newmanFiniteCoefficients frequency t) x y hState
  intro hProcess
  exact hDifferent
    (injective_of_exactProcessRecovery
      (newmanFiniteCoefficients frequency t)
      (newmanFiniteCoefficients_exactProcessRecovery frequency t)
      hProcess)

end GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge
