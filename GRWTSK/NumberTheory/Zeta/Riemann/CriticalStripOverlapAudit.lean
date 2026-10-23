/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport

set_option autoImplicit false

/-!
# Source-faithful overlap admission and defect accounting

This file supplies the source-only overlap boundary requested in issues #232 and #244.
Candidate coordinate transports may carry an equivalence, only one logical direction,
or no logical transport. Every exact coordinate candidate can be admitted to the atlas
coordinate cocycle. Only an explicitly equivalent candidate can be promoted to the
stronger `ChartTransition` carrying a proposition equivalence.

Nonexact coordinate transports are represented by typed real-valued defects on actual
overlap points. A bounded defect is not identified with zero. Promotion to an exact
coordinate transition requires a separate vanishing obligation. Consecutive defects
compose by an explicit additive bound on a genuine triple overlap.
-/

namespace GRWTSK.RiemannHypothesis

/-- Logical transport attached to a candidate coordinate overlap. One-way proof maps
are deliberately distinct from equivalences. -/
inductive StatementTransport (P Q : Prop) where
  | equivalent (proof : P ↔ Q)
  | forwardOnly (proof : P → Q)
  | reverseOnly (proof : Q → P)
  | unrelated

namespace StatementTransport

/-- Whether a candidate contains both logical directions. -/
def IsEquivalent {P Q : Prop} : StatementTransport P Q → Prop
  | .equivalent _ => True
  | _ => False

/-- Extract the equivalence only after the exact admission predicate is proved. -/
theorem iffOfEquivalent {P Q : Prop} (transport : StatementTransport P Q)
    (hEquivalent : transport.IsEquivalent) : P ↔ Q := by
  cases transport with
  | equivalent proof => exact proof
  | forwardOnly _ => cases hEquivalent
  | reverseOnly _ => cases hEquivalent
  | unrelated => cases hEquivalent

/-- A forward-only proof cannot be admitted as an equivalence. -/
theorem forwardOnly_not_equivalent {P Q : Prop} (proof : P → Q) :
    ¬ (StatementTransport.forwardOnly proof).IsEquivalent := by
  simp [IsEquivalent]

/-- A reverse-only proof cannot be admitted as an equivalence. -/
theorem reverseOnly_not_equivalent {P Q : Prop} (proof : Q → P) :
    ¬ (StatementTransport.reverseOnly proof).IsEquivalent := by
  simp [IsEquivalent]

end StatementTransport

/-- A source-faithful candidate transition on one actual nonempty overlap.

The two source bindings must be exactly equal before the transition is admitted. Since
`SourceBinding` includes source, revision, and normalization, equality cannot be
obtained by comparing only the resulting real height. -/
structure DirectionalOverlapTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root) where
  overlap : left.Overlaps right
  coordinateMap : A → A
  coordinate_transport :
    ∀ x, left.carrier x → right.carrier x →
      coordinateMap (left.coordinate x) = right.coordinate x
  statementTransport : StatementTransport left.localStatement right.localStatement
  leftBinding : SourceBinding
  rightBinding : SourceBinding
  left_binding_matches : leftBinding.Matches left
  right_binding_matches : rightBinding.Matches right
  binding_eq : leftBinding = rightBinding

namespace DirectionalOverlapTransition

/-- Every exact coordinate candidate can enter the atlas coordinate cocycle, regardless
of its independent logical status. -/
def toCoordinateTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (transition : DirectionalOverlapTransition left right) :
    CoordinateTransition left right where
  forward := transition.coordinateMap
  coordinate_transport := transition.coordinate_transport

/-- Promote a candidate to the stronger logical transition only when both proposition
directions are independently present. -/
def toChartTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (transition : DirectionalOverlapTransition left right)
    (hEquivalent : transition.statementTransport.IsEquivalent) :
    ChartTransition left right where
  forward := transition.coordinateMap
  coordinate_transport := transition.coordinate_transport
  statement_iff := transition.statementTransport.iffOfEquivalent hEquivalent

/-- Exact coordinate admission preserves the common represented-commutator height,
without assuming any logical implication. -/
theorem coordinate_height_preserving
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (transition : DirectionalOverlapTransition left right)
    (x : X) (hleft : left.carrier x) (hright : right.carrier x) :
    root.coordinateHeight
        (transition.toCoordinateTransition.forward (left.coordinate x)) =
      root.coordinateHeight (right.coordinate x) :=
  transition.toCoordinateTransition.height_preserving x hleft hright

/-- An independently equivalent transition inherits the same height theorem. -/
theorem admitted_height_preserving
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (transition : DirectionalOverlapTransition left right)
    (hEquivalent : transition.statementTransport.IsEquivalent)
    (x : X) (hleft : left.carrier x) (hright : right.carrier x) :
    root.coordinateHeight
        ((transition.toChartTransition hEquivalent).forward (left.coordinate x)) =
      root.coordinateHeight (right.coordinate x) :=
  (transition.toChartTransition hEquivalent).height_preserving x hleft hright

end DirectionalOverlapTransition

/-- Orientation of a nonexact overlap defect. -/
inductive TransitionDefectOrientation where
  | forward
  | reverse
  | bidirectional
  deriving DecidableEq, Repr

/-- Typed nonexact coordinate transport on an actual overlap.

`mismatchReadout` makes the scalar defect an explicit observation of the two algebra
coordinates. `coordinate_exact_of_vanishing` is independent of the numerical bound:
a small or bounded defect is not silently promoted to equality. -/
structure TransitionDefect
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root) where
  defectId : String
  overlap : left.Overlaps right
  coordinateMap : A → A
  statementTransport : StatementTransport left.localStatement right.localStatement
  leftBinding : SourceBinding
  rightBinding : SourceBinding
  left_binding_matches : leftBinding.Matches left
  right_binding_matches : rightBinding.Matches right
  orientation : TransitionDefectOrientation
  mismatchReadout : A → A → ℝ
  defectAt : X → ℝ
  defect_eq :
    ∀ x, left.carrier x → right.carrier x →
      defectAt x =
        mismatchReadout (coordinateMap (left.coordinate x)) (right.coordinate x)
  boundAt : X → ℝ
  bound_nonnegative : ∀ x, 0 ≤ boundAt x
  defect_bound :
    ∀ x, left.carrier x → right.carrier x →
      |defectAt x| ≤ boundAt x
  vanishingObligation : Prop
  defect_zero_of_vanishing :
    vanishingObligation →
      ∀ x, left.carrier x → right.carrier x → defectAt x = 0
  coordinate_exact_of_vanishing :
    vanishingObligation →
      ∀ x, left.carrier x → right.carrier x →
        coordinateMap (left.coordinate x) = right.coordinate x

namespace TransitionDefect

/-- A vanishing defect with exact source identity becomes an exact directional
coordinate transition. Logical equivalence remains an independent question. -/
def toDirectionalOverlapTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (defect : TransitionDefect left right)
    (hBinding : defect.leftBinding = defect.rightBinding)
    (hVanishing : defect.vanishingObligation) :
    DirectionalOverlapTransition left right where
  overlap := defect.overlap
  coordinateMap := defect.coordinateMap
  coordinate_transport := defect.coordinate_exact_of_vanishing hVanishing
  statementTransport := defect.statementTransport
  leftBinding := defect.leftBinding
  rightBinding := defect.rightBinding
  left_binding_matches := defect.left_binding_matches
  right_binding_matches := defect.right_binding_matches
  binding_eq := hBinding

/-- Additive defect composition on an actual triple overlap. The middle source binding
must agree exactly, and the composite bound follows from the triangle inequality. -/
theorem composed_bound
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left middle right : CriticalStripChart root}
    (first : TransitionDefect left middle)
    (second : TransitionDefect middle right)
    (_middleBinding : first.rightBinding = second.leftBinding)
    (x : X)
    (hleft : left.carrier x)
    (hmiddle : middle.carrier x)
    (hright : right.carrier x) :
    |first.defectAt x + second.defectAt x| ≤
      first.boundAt x + second.boundAt x := by
  calc
    |first.defectAt x + second.defectAt x| ≤
        |first.defectAt x| + |second.defectAt x| := abs_add_le _ _
    _ ≤ first.boundAt x + second.boundAt x :=
      add_le_add
        (first.defect_bound x hleft hmiddle)
        (second.defect_bound x hmiddle hright)

end TransitionDefect

/-- Result of auditing one proposed chart overlap. Both `exact` and `directional`
constructors carry exact coordinate data. Only `exact` additionally carries proposition
equivalence. -/
inductive OverlapAuditOutcome
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root) where
  | exact
      (transition : DirectionalOverlapTransition left right)
      (equivalent : transition.statementTransport.IsEquivalent)
  | directional
      (transition : DirectionalOverlapTransition left right)
      (notEquivalent : ¬ transition.statementTransport.IsEquivalent)
  | defective (defect : TransitionDefect left right)
  | notRequired (noOverlap : ¬ left.Overlaps right)

namespace OverlapAuditOutcome

/-- Whether the audit supplies an exact coordinate transition suitable for atlas
identity, inverse, and cocycle laws. -/
def HasExactCoordinate
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root} :
    OverlapAuditOutcome left right → Prop
  | .exact _ _ => True
  | .directional _ _ => True
  | .defective _ => False
  | .notRequired _ => False

/-- Extract the coordinate transition from either exact-coordinate audit constructor. -/
def admittedCoordinateTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root} :
    OverlapAuditOutcome left right → Option (CoordinateTransition left right)
  | .exact transition _ => some transition.toCoordinateTransition
  | .directional transition _ => some transition.toCoordinateTransition
  | .defective _ => none
  | .notRequired _ => none

/-- Extract a proposition-equivalence transition only from the logically exact audit
constructor. -/
def admittedTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root} :
    OverlapAuditOutcome left right → Option (ChartTransition left right)
  | .exact transition equivalent =>
      some (transition.toChartTransition equivalent)
  | .directional _ _ => none
  | .defective _ => none
  | .notRequired _ => none

end OverlapAuditOutcome

end GRWTSK.RiemannHypothesis
