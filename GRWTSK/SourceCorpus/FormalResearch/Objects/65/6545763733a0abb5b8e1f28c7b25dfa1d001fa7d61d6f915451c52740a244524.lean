/-!
Lean-side declaration representation for the deterministic Landau chamber
kernel and its explicit open tail obligations.

The chamber object is metadata anchored to `canonicalTopos`. This module does
not enlarge `structuralUniverse` and does not reuse `terminateUnique` as a
terminality theorem for arbitrary chamber records.
-/

import IndiscreteTerminalTopos.Representation

namespace IndiscreteTerminalTopos.Chamber

/-- One prime-power event over an abstract analytic scalar carrier. -/
structure PrimePowerEvent (Scalar : Type) where
  /-- Prime power `q = p^k`. -/
  q : Nat
  /-- Prime base. -/
  prime : Nat
  /-- Positive exponent. -/
  exponent : Nat
  /-- Logarithmic event position. -/
  t : Scalar
  /-- Prime-power coefficient. -/
  c : Scalar

/-- The two-coordinate cumulative state after a finite event prefix. -/
structure ChamberState (Scalar : Type) where
  /-- Number of events in the prefix. -/
  eventCount : Nat
  /-- Cumulative coefficient `U`. -/
  u : Scalar
  /-- Cumulative first logarithmic moment `V`. -/
  v : Scalar

/-- Analytic operations supplied by a concrete real-number authority. -/
structure ScalarKernel where
  /-- Analytic scalar carrier. -/
  Scalar : Type
  /-- Additive identity. -/
  zero : Scalar
  /-- Addition. -/
  add : Scalar → Scalar → Scalar
  /-- Subtraction. -/
  sub : Scalar → Scalar → Scalar
  /-- Multiplication. -/
  mul : Scalar → Scalar → Scalar
  /-- Analytic order. -/
  le : Scalar → Scalar → Prop
  /-- Archimedean term `A(t)`. -/
  archimedean : Scalar → Scalar
  /-- Stationary-point map `tau(U)`. -/
  stationary : Scalar → Scalar
  /-- Convex conjugate `Lambda(U)`. -/
  legendre : Scalar → Scalar
  /-- Clamp to a closed chamber. -/
  clamp : Scalar → Scalar → Scalar → Scalar
  /-- Convexity predicate over a closed chamber. -/
  isConvexOn : (Scalar → Scalar) → Scalar → Scalar → Prop
  /-- Exact Legendre impulse integral. -/
  impulseIntegral : Scalar → Scalar → Scalar → Scalar
  /-- Host-independent sublinearity predicate. -/
  isSublinear : (Nat → Scalar) → (Nat → Scalar) → Prop
  /-- Host-independent summability predicate. -/
  isSummable : (Nat → Scalar) → Prop

/-- Zero-event state. -/
def initialState (kernel : ScalarKernel) : ChamberState kernel.Scalar :=
  { eventCount := 0, u := kernel.zero, v := kernel.zero }

/-- Exact nonlearned state advancement. -/
def advance
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (event : PrimePowerEvent kernel.Scalar) : ChamberState kernel.Scalar :=
  {
    eventCount := state.eventCount + 1
    u := kernel.add state.u event.c
    v := kernel.add state.v (kernel.mul event.c event.t)
  }

/-- The two-coordinate recurrence is definitional for `advance`. -/
theorem stateRecurrence
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (event : PrimePowerEvent kernel.Scalar) :
    (advance kernel state event).u = kernel.add state.u event.c ∧
      (advance kernel state event).v =
        kernel.add state.v (kernel.mul event.c event.t) := by
  exact ⟨rfl, rfl⟩

/-- Deterministic analytic expert selected by the constrained minimizer. -/
inductive ClampRegime where
  | leftBoundary
  | interior
  | rightBoundary
  deriving DecidableEq, Repr

/-- Chamber-local function `A(t) - U t + V`. -/
def chamberFunction
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (t : kernel.Scalar) : kernel.Scalar :=
  kernel.add
    (kernel.sub (kernel.archimedean t) (kernel.mul state.u t))
    state.v

/-- Convexity obligation for the chamber-local function. -/
def ChamberConvexity
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (left right : kernel.Scalar) : Prop :=
  kernel.isConvexOn (chamberFunction kernel state) left right

/-- Canonical clamped stationary point for one closed chamber. -/
def clampedMinimum
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (left right : kernel.Scalar) : kernel.Scalar :=
  kernel.clamp left right (kernel.stationary state.u)

/-- One-point chamber sign criterion at the clamped minimizer. -/
def OnePointCriterion
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (left right : kernel.Scalar) : Prop :=
  kernel.le kernel.zero
    (chamberFunction kernel state (clampedMinimum kernel state left right))

/-- Unconstrained Legendre state `V - Lambda(U)`. -/
def legendreState
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar) : kernel.Scalar :=
  kernel.sub state.v (kernel.legendre state.u)

/-- Exact Legendre impulse identity expressed as an explicit proposition. -/
def LegendreImpulseIdentity
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (event : PrimePowerEvent kernel.Scalar) : Prop :=
  kernel.sub
      (legendreState kernel (advance kernel state event))
      (legendreState kernel state) =
    kernel.impulseIntegral state.u event.c event.t

/-- Finite coefficient and Gram data for one weighted Hardy chamber term. -/
structure HardyGramData (Scalar : Type) where
  /-- Coefficient vector. -/
  coefficients : List Scalar
  /-- Finite Gram matrix. -/
  gram : List (List Scalar)
  /-- Evaluated finite energy contribution. -/
  energy : Scalar

/-- Positive-semidefinite conclusion required for a Hardy Gram term. -/
def GramPositivity
    (kernel : ScalarKernel)
    (data : HardyGramData kernel.Scalar) : Prop :=
  kernel.le kernel.zero data.energy

/-- Parameter-bound finite-front certificate without a tail conclusion. -/
structure FiniteFrontCertificate
    (kernel : ScalarKernel)
    (state : ChamberState kernel.Scalar)
    (left right : kernel.Scalar) where
  /-- The finite chamber satisfies the one-point criterion. -/
  valid : OnePointCriterion kernel state left right

/-- Explicit open linear-drift tail obligation. -/
def LinearDriftObligation
    (kernel : ScalarKernel)
    (positions values remainder : Nat → kernel.Scalar) : Prop :=
  kernel.isSublinear positions remainder ∧
    ∀ index,
      values index = kernel.add (positions index) (remainder index)

/-- Explicit open weighted Hardy-energy convergence obligation. -/
def HardyTailObligation
    (kernel : ScalarKernel)
    (energy : Nat → kernel.Scalar) : Prop :=
  kernel.isSummable energy

/-- Chamber metadata admitted over the existing canonical carrier. -/
structure ChamberObject where
  /-- Existing canonical topos anchor. -/
  anchor : IndiscreteTerminalTopos.Carrier
  /-- Stable host-owned object identity. -/
  objectId : String
  /-- Exact deterministic state digest. -/
  stateDigest : String
  /-- Zero-based chamber index. -/
  chamberIndex : Nat

/-- Constructs chamber metadata without enlarging the terminality universe. -/
def mkChamberObject
    (objectId stateDigest : String)
    (chamberIndex : Nat) : ChamberObject :=
  {
    anchor := IndiscreteTerminalTopos.canonicalTopos
    objectId := objectId
    stateDigest := stateDigest
    chamberIndex := chamberIndex
  }

/-- Proposition consumed by a separately supplied round-trip certificate. -/
def RoundTripStatement
    (artifactDigest reconstructedArtifactDigest : String) : Prop :=
  artifactDigest = reconstructedArtifactDigest

end IndiscreteTerminalTopos.Chamber
