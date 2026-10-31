/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.OrbitalElapsedController
import Mathlib

/-!
# Omnidirectional proportional time compression

The TWO time-boundary dots are proportion controls, not linear x-axis sliders.
A pointer gesture from either dot determines a displacement in two dimensions.
Its positive Euclidean quadratic magnitude q = dx² + dy² gives the bounded
radial response rho = q/(q + sensitivity²).

For a fixed sensitivity, EVERY rotation and reflection of the displacement
leaves rho invariant. The response is independent of the direction of motion.
This is intentional: the mathematical control is a proportion of available
time, not an observed physical orbit, the coupled residual Gram, or a PDE.

The selected dot determines WHICH spent-time sector is changed. The other
sector and playback progress are untouched by the geometric input. The
constrained original checked walk, source roots and prismatic model rebuilder
remain the only authority for the resulting phrase projection. Quantization
to milliseconds and browser pointer capture are separately implemented in the
UI; this source makes no claim that JavaScript floats are exact rationals.

Ordinary dragging spends time. An explicitly selected release gesture
restores that sector proportionally. A double activation resets one sector.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- Screen-plane pointer displacement, with exact rational coordinates. -/
structure OmniDisplacement where
  dx : ℚ
  dy : ℚ
  deriving DecidableEq, Repr

/-- A full-rank, rotationally invariant positive quadratic metric. -/
def OmniDisplacement.energy (v : OmniDisplacement) : ℚ :=
  v.dx ^ 2 + v.dy ^ 2

theorem OmniDisplacement.energy_nonnegative (v : OmniDisplacement) :
    0 ≤ v.energy := by
  unfold OmniDisplacement.energy
  positivity

/-- Exact quarter turn. -/
def OmniDisplacement.quarterTurn (v : OmniDisplacement) :
    OmniDisplacement := ⟨-v.dy, v.dx⟩

/-- Reflection in the horizontal axis. -/
def OmniDisplacement.reflect (v : OmniDisplacement) :
    OmniDisplacement := ⟨v.dx, -v.dy⟩

theorem OmniDisplacement.energy_quarterTurn (v : OmniDisplacement) :
    v.quarterTurn.energy = v.energy := by
  simp [OmniDisplacement.energy, OmniDisplacement.quarterTurn]
  ring

theorem OmniDisplacement.energy_reflect (v : OmniDisplacement) :
    v.reflect.energy = v.energy := by
  simp [OmniDisplacement.energy, OmniDisplacement.reflect]
  ring

/-- A positive sensitivity scale for converting distance to a proportion. -/
structure OmniSensitivity where
  radius : ℚ
  radius_pos : 0 < radius

def OmniDisplacement.proportion
    (v : OmniDisplacement) (sensitivity : OmniSensitivity) : ℚ :=
  v.energy / (v.energy + sensitivity.radius ^ 2)

theorem OmniDisplacement.proportion_nonnegative
    (v : OmniDisplacement) (sensitivity : OmniSensitivity) :
    0 ≤ v.proportion sensitivity := by
  unfold OmniDisplacement.proportion
  apply div_nonneg v.energy_nonnegative
  have h : 0 ≤ sensitivity.radius ^ 2 := sq_nonneg _
  exact add_nonneg v.energy_nonnegative h

theorem OmniDisplacement.proportion_lt_one
    (v : OmniDisplacement) (sensitivity : OmniSensitivity) :
    v.proportion sensitivity < 1 := by
  unfold OmniDisplacement.proportion
  have hsq : 0 < sensitivity.radius ^ 2 :=
    sq_pos_of_pos sensitivity.radius_pos
  have hden : 0 < v.energy + sensitivity.radius ^ 2 :=
    add_pos_of_nonneg_of_pos v.energy_nonnegative hsq
  apply (div_lt_iff₀ hden).2
  linarith

/-- Quarter-turn invariance: vertical and horizontal drags of the same size
produce the same proportional change. -/
theorem OmniDisplacement.proportion_quarterTurn
    (v : OmniDisplacement) (sensitivity : OmniSensitivity) :
    v.quarterTurn.proportion sensitivity = v.proportion sensitivity := by
  simp [OmniDisplacement.proportion, energy_quarterTurn]

theorem OmniDisplacement.proportion_reflect
    (v : OmniDisplacement) (sensitivity : OmniSensitivity) :
    v.reflect.proportion sensitivity = v.proportion sensitivity := by
  simp [OmniDisplacement.proportion, energy_reflect]

/-- More generally, equal positive quadratic energy implies an identical
compression proportion; the drag direction has no independent input channel. -/
theorem OmniDisplacement.proportion_eq_of_energy_eq
    (v w : OmniDisplacement) (sensitivity : OmniSensitivity)
    (heq : v.energy = w.energy) :
    v.proportion sensitivity = w.proportion sensitivity := by
  simp only [OmniDisplacement.proportion, heq]

/-- The two semantically distinct gestures. Neither changes source positions. -/
inductive TimeGesture where
  | spend
  | restore
  deriving DecidableEq, Repr

/-- Scalar spent-time fraction. This is NOT a displayed numeric slider. -/
def updatedSpentFraction
    (gesture : TimeGesture) (old response : ℚ) : ℚ :=
  match gesture with
  | .spend => old + (1 - old) * response
  | .restore => old * (1 - response)

/-- Isotropic drag response extends through the exact spent-time update. -/
theorem updatedSpentFraction_quarterTurn
    (gesture : TimeGesture) (old : ℚ)
    (v : OmniDisplacement) (sensitivity : OmniSensitivity) :
    updatedSpentFraction gesture old
        (v.quarterTurn.proportion sensitivity) =
      updatedSpentFraction gesture old (v.proportion sensitivity) := by
  rw [v.proportion_quarterTurn]

/-- The elapsed-time controller distinguishes spent regions: the left dot
moves the lower cut, the right dot moves the upper cut. A playback cursor
never enters this compression-displacement type. -/
structure OmnidirectionalClockInput where
  side : RailHandle
  gesture : TimeGesture
  vector : OmniDisplacement
  sensitivity : OmniSensitivity
  controlsTime : side ≠ .playback

/-- Derived proportion without any screen-axis preference. -/
def OmnidirectionalClockInput.response (input : OmnidirectionalClockInput) : ℚ :=
  input.vector.proportion input.sensitivity

/-- A concrete UI adaptor must quantize the rational time proportion to a
natural-millisecond endpoint. The model controller then applies its existing
safe, bounded lower/upper drag, which keeps the root forest and playback
semantics intact. No rounding/collision theorem is inferred from a name. -/
structure OmniTimeQuantizer where
  toMillis : ℚ → ℕ

/-- Applying a pre-quantized request delegates to the already model-bound
controller: exact root conservation is inherited, not re-proved by an analogy. -/
def OmnidirectionalClockInput.commit
    {walk : RootedWalk} {totalMs : ℕ}
    (input : OmnidirectionalClockInput)
    (controller : OrbitalElapsedController walk totalMs)
    (requestedMs : ℕ) : OrbitalElapsedController walk totalMs :=
  controller.dragBoundary input.side requestedMs

theorem OmnidirectionalClockInput.commit_keeps_environment
    {walk : RootedWalk} {totalMs : ℕ}
    (input : OmnidirectionalClockInput)
    (controller : OrbitalElapsedController walk totalMs)
    (requestedMs : ℕ) :
    (input.commit controller requestedMs).environment =
      controller.environment :=
  OrbitalElapsedController.drag_keeps_environment controller input.side requestedMs

theorem OmnidirectionalClockInput.commit_retains_roots
    {walk : RootedWalk} {totalMs : ℕ}
    (input : OmnidirectionalClockInput)
    (controller : OrbitalElapsedController walk totalMs)
    (requestedMs : ℕ) :
    (input.commit controller requestedMs).focused.allRoots =
      walk.emphasisRoots :=
  OrbitalElapsedController.drag_retains_all_roots controller input.side requestedMs

/-!
Hostile comparison:
- Horizontal (r,0), vertical (0,r), and diagonal displacement with the same
  squared length receive the SAME response. A signed x-slider would fail.
- Positive energy is only a *metric* statement; q/(q + s²) is the chosen
  bounded control transfer function, not a theorem of optimal literary quality.
- Dragging back to the starting pointer returns to that session's original
  proportion. Releasing/resetting is a separate control state, not an assumed
  inverse of story compression.
- Actual millisecond rounding, native speech timing, word-boundary alignment,
  and browser pixel geometry require independent runtime checks.
- No Navier--Stokes PDE, spectral zero, or prismatic cohomology result follows.
-/

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
