/- Copyright (c) 2026 grwtsk contributors. MIT.
   Source-only mathematical interface. No native compilation, kernel replay,
   transitive axiom audit or operational refinement has been run. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberBasic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Prime.Basic

/-!
# Involutive reflections, real shadows, and typed moment ports

A reversible view automorphism has a specified inverse. Its reflection is
involutive and conjugates the view automorphism to its inverse. Both preserve
the actual real-valued shadow. These are explicit, checkable structural premises,
not an assertion that every representation change has these properties.

We take the fiber over a fixed shadow, rather than allowing a visual projection
to change the underlying state. A concrete runtime must separately prove or
audit that its event/DOM/prismatic adapter implements the selected maps.
-/

set_option autoImplicit false
namespace GRWTSK.FoundationsLogicAndTypeTheory.RealShadowMomentPort

universe u

structure RealShadowMirror (State : Type u) where
  forward : State → State
  backward : State → State
  reflect : State → State
  backward_forward : ∀ x, backward (forward x) = x
  forward_backward : ∀ x, forward (backward x) = x
  reflect_reflect : ∀ x, reflect (reflect x) = x
  shadow : State → ℝ
  forward_shadow : ∀ x, shadow (forward x) = shadow x
  reflected_shadow : ∀ x, shadow (reflect x) = shadow x
  reflection_conjugates : ∀ x, reflect (forward x) = backward (reflect x)

namespace RealShadowMirror

variable {State : Type u} (M : RealShadowMirror State)

/-- The inverse transport is shadow-preserving, not a new free assumption. -/
theorem backward_shadow (x : State) :
    M.shadow (M.backward x) = M.shadow x := by
  calc
    M.shadow (M.backward x) = M.shadow (M.forward (M.backward x)) :=
      (M.forward_shadow (M.backward x)).symm
    _ = M.shadow x := congrArg M.shadow (M.forward_backward x)

/-- A finite moment fiber retains the actual state and its exact real shadow. -/
def shadowFiber (value : ℝ) : Type u :=
  {x : State // M.shadow x = value}

/-- An automorphism never changes the shadow-indexed fiber. -/
def forwardAt (value : ℝ) : M.shadowFiber value → M.shadowFiber value :=
  fun x => ⟨M.forward x.1, by rw [M.forward_shadow, x.2]⟩

def backwardAt (value : ℝ) : M.shadowFiber value → M.shadowFiber value :=
  fun x => ⟨M.backward x.1, by rw [M.backward_shadow, x.2]⟩

/-- Reflection also stays in the same real-shadow fiber. -/
def reflectAt (value : ℝ) : M.shadowFiber value → M.shadowFiber value :=
  fun x => ⟨M.reflect x.1, by rw [M.reflected_shadow, x.2]⟩

theorem backward_forwardAt (value : ℝ) (x : M.shadowFiber value) :
    M.backwardAt value (M.forwardAt value x) = x := by
  apply Subtype.ext
  exact M.backward_forward x.1

theorem forward_backwardAt (value : ℝ) (x : M.shadowFiber value) :
    M.forwardAt value (M.backwardAt value x) = x := by
  apply Subtype.ext
  exact M.forward_backward x.1

theorem reflect_reflectAt (value : ℝ) (x : M.shadowFiber value) :
    M.reflectAt value (M.reflectAt value x) = x := by
  apply Subtype.ext
  exact M.reflect_reflect x.1

theorem reflect_forwardAt (value : ℝ) (x : M.shadowFiber value) :
    M.reflectAt value (M.forwardAt value x) =
      M.backwardAt value (M.reflectAt value x) := by
  apply Subtype.ext
  exact M.reflection_conjugates x.1

/-- The existing GRWTSK PortFiber laws apply without replacing typed fibers. -/
def ports : GRWTSK.Topology.PortFiber :=
  GRWTSK.Topology.PortFiber.ofFunctions ℝ (M.shadowFiber)

/-- Source and invalidation key stay attached to each reflection port. -/
def sourceBoundReflection (value : ℝ)
    (origin : GRWTSK.Topology.PortFiber.SourceIdentity)
    (invalidationKey : String) :
    GRWTSK.Topology.PortFiber.SourceBoundPort (M.ports)
      (A := value) (B := value) where
  port := M.reflectAt value
  source := origin
  invalidationKey := invalidationKey

/-- Both reflections compose to the identity on the exact typed fiber. -/
theorem double_reflection_port (value : ℝ) (x : M.shadowFiber value) :
    (M.ports).map
      ((M.ports).comp (M.reflectAt value) (M.reflectAt value)) x = x := by
  change M.reflectAt value (M.reflectAt value x) = x
  exact M.reflect_reflectAt value x

end RealShadowMirror

/-- Prime labels address but do not erase a declaration's actual carrier type. -/
structure PrimeTypedFiber (Carrier : Type u) where
  address : ℕ
  address_prime : Nat.Prime address
  value : Carrier
  origin : GRWTSK.Topology.PortFiber.SourceIdentity
  typeIdentity : String
  universeIdentity : String

end GRWTSK.FoundationsLogicAndTypeTheory.RealShadowMomentPort
