/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A proof-local critical-strip atlas

This file supplies the structural correction requested in issues #225 and #244. The
primary objects are proof charts over one common noncommutative height root, not a
linear sequence of mathematical subjects. Every chart coordinate agrees with the root
coordinate on its carrier, so its height is inherited rather than recreated.

The root is algebraic noncommutative-geometry data: a represented ring, a distinguished
Dirac-like endomorphism, and a height readout applied to the represented commutator.
It is deliberately not called a full spectral triple. Self-adjointness, compact
resolvent, bounded commutators, domains, and trace conditions remain separate theorem
obligations whenever a later chart needs them.

Coordinate overlap and logical transport are independent. `CoordinateTransition`
carries only exact coordinate data. `ChartTransition` is the stronger structure that
also contains a proposition equivalence. The atlas identity, inverse, and cocycle laws
use only coordinate transitions; overlapping neutral, sufficient, necessary, and
terminal charts therefore do not assume their missing logical relations merely to
coexist.

Each local proposition has a machine-readable relation to Mathlib's canonical
`RiemannHypothesis`: equivalent, sufficient, necessary, neutral, or inconsistent.
The global atlas theorem is conditional on every required chart being proved
equivalent. It does not prove any missing local equivalence.
-/

namespace GRWTSK.RiemannHypothesis

/-- Algebraic noncommutative-geometry root for all chart heights.

The vertical height of `x` is read from the represented commutator
`[D, π(coordinate x)]`. A later full spectral-triple chart must add and prove its
analytic operator axioms instead of treating this record as those axioms. -/
structure NoncommutativeHeightRoot
    (A X H : Type*) [Ring A] [AddCommGroup H] [Module ℂ H] where
  sourceId : String
  revision : String
  coordinate : X → A
  representation : A →+* Module.End ℂ H
  dirac : Module.End ℂ H
  operatorHeight : Module.End ℂ H → ℝ
  image_noncommutative :
    ∃ a b : A,
      representation a * representation b ≠
        representation b * representation a

namespace NoncommutativeHeightRoot

/-- Represented commutator from which the common vertical coordinate is read. -/
def commutatorAt {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (root : NoncommutativeHeightRoot A X H) (x : X) : Module.End ℂ H :=
  root.dirac * root.representation (root.coordinate x) -
    root.representation (root.coordinate x) * root.dirac

/-- Height of an algebra coordinate through the same represented commutator rule. -/
def coordinateHeight {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (root : NoncommutativeHeightRoot A X H) (a : A) : ℝ :=
  root.operatorHeight
    (root.dirac * root.representation a - root.representation a * root.dirac)

/-- Common root height of a critical-strip object. -/
def heightAt {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (root : NoncommutativeHeightRoot A X H) (x : X) : ℝ :=
  root.operatorHeight (root.commutatorAt x)

@[simp] theorem heightAt_eq_coordinateHeight
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (root : NoncommutativeHeightRoot A X H) (x : X) :
    root.heightAt x = root.coordinateHeight (root.coordinate x) := rfl

end NoncommutativeHeightRoot

/-- One proof chart. Its coordinate and source identities agree with the common root
on the chart carrier. A chart is indexed by a proof obligation, not a subject name. -/
structure CriticalStripChart
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (root : NoncommutativeHeightRoot A X H) where
  carrier : X → Prop
  anchor : X
  anchor_mem : carrier anchor
  coordinate : X → A
  coordinate_eq_root : ∀ x, carrier x → coordinate x = root.coordinate x
  localStatement : Prop
  sourceId : String
  revision : String
  normalizationId : String
  source_eq_root : sourceId = root.sourceId
  revision_eq_root : revision = root.revision

namespace CriticalStripChart

/-- The vertical coordinate of a chart is read directly from the common root. -/
def rootHeight
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (chart : CriticalStripChart root) : ℝ :=
  root.heightAt chart.anchor

/-- Every admitted local coordinate has exactly the root-derived commutator height. -/
theorem coordinate_height_eq_root
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (chart : CriticalStripChart root) (x : X) (hx : chart.carrier x) :
    root.coordinateHeight (chart.coordinate x) = root.heightAt x := by
  rw [chart.coordinate_eq_root x hx]
  rfl

/-- Two charts overlap only when one actual object lies in both carriers. -/
def Overlaps
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root) : Prop :=
  ∃ x, left.carrier x ∧ right.carrier x

end CriticalStripChart

/-- Exact coordinate transport on one actual chart overlap. It contains no logical
implication between the local chart statements. -/
structure CoordinateTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root) where
  forward : A → A
  coordinate_transport :
    ∀ x, left.carrier x → right.carrier x →
      forward (left.coordinate x) = right.coordinate x

namespace CoordinateTransition

/-- Every exact coordinate transition preserves the common root height at each actual
overlap point. -/
theorem height_preserving
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (transition : CoordinateTransition left right)
    (x : X) (hleft : left.carrier x) (hright : right.carrier x) :
    root.coordinateHeight (transition.forward (left.coordinate x)) =
      root.coordinateHeight (right.coordinate x) := by
  rw [transition.coordinate_transport x hleft hright]

end CoordinateTransition

/-- Stronger overlap data carrying both exact coordinates and a separately proved
logical equivalence. Atlas membership does not require this stronger structure. -/
structure ChartTransition
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    (left right : CriticalStripChart root)
    extends CoordinateTransition left right where
  statement_iff : left.localStatement ↔ right.localStatement

namespace ChartTransition

/-- Logical transitions inherit the exact coordinate height theorem. -/
theorem height_preserving
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (transition : ChartTransition left right)
    (x : X) (hleft : left.carrier x) (hright : right.carrier x) :
    root.coordinateHeight (transition.forward (left.coordinate x)) =
      root.coordinateHeight (right.coordinate x) :=
  transition.toCoordinateTransition.height_preserving x hleft hright

end ChartTransition

/-- Exact logical status of one proof chart relative to canonical RH. -/
inductive LocalRHStatus where
  | equivalent
  | sufficient
  | necessary
  | neutral
  | inconsistent
  deriving DecidableEq, Repr

/-- A proof-carrying chart classification. The premises on `forward` and `reverse`
prevent an unavailable implication from being extracted from the wrong status. -/
structure LocalRHProfile (P : Prop) where
  status : LocalRHStatus
  forward :
    (status = .equivalent ∨ status = .sufficient) →
      P → _root_.RiemannHypothesis
  reverse :
    (status = .equivalent ∨ status = .necessary) →
      _root_.RiemannHypothesis → P
  contradiction : status = .inconsistent → ¬ P

namespace LocalRHProfile

/-- Package a genuine local equivalence. -/
def ofEquivalence {P : Prop} (h : P ↔ _root_.RiemannHypothesis) :
    LocalRHProfile P where
  status := .equivalent
  forward := fun _ => h.mp
  reverse := fun _ => h.mpr
  contradiction := by
    intro hstatus
    cases hstatus

/-- Package only the implication from the local statement to RH. -/
def ofSufficient {P : Prop} (h : P → _root_.RiemannHypothesis) :
    LocalRHProfile P where
  status := .sufficient
  forward := fun _ => h
  reverse := by
    intro hstatus
    rcases hstatus with hstatus | hstatus <;> cases hstatus
  contradiction := by
    intro hstatus
    cases hstatus

/-- Package only the implication from RH to the local statement. -/
def ofNecessary {P : Prop} (h : _root_.RiemannHypothesis → P) :
    LocalRHProfile P where
  status := .necessary
  forward := by
    intro hstatus
    rcases hstatus with hstatus | hstatus <;> cases hstatus
  reverse := fun _ => h
  contradiction := by
    intro hstatus
    cases hstatus

/-- A chart with no proved implication in either direction. -/
def neutral (P : Prop) : LocalRHProfile P where
  status := .neutral
  forward := by
    intro hstatus
    rcases hstatus with hstatus | hstatus <;> cases hstatus
  reverse := by
    intro hstatus
    rcases hstatus with hstatus | hstatus <;> cases hstatus
  contradiction := by
    intro hstatus
    cases hstatus

/-- A proposed chart whose local statement is refuted at its declared scope. -/
def inconsistent {P : Prop} (h : ¬ P) : LocalRHProfile P where
  status := .inconsistent
  forward := by
    intro hstatus
    rcases hstatus with hstatus | hstatus <;> cases hstatus
  reverse := by
    intro hstatus
    rcases hstatus with hstatus | hstatus <;> cases hstatus
  contradiction := fun _ => h

/-- An equivalent status yields the exact local RH equivalence. -/
theorem iff_rh_of_equivalent {P : Prop} (profile : LocalRHProfile P)
    (hstatus : profile.status = .equivalent) :
    P ↔ _root_.RiemannHypothesis :=
  ⟨profile.forward (Or.inl hstatus), profile.reverse (Or.inl hstatus)⟩

end LocalRHProfile

/-- An atlas of proof charts over one common noncommutative height root.

Coordinate transitions are defined only after a genuine overlap witness. Identity,
inverse, and triple-overlap cocycle laws are checked on actual chart coordinates.
Logical equivalence is intentionally absent from these fields. -/
structure CriticalStripAtlas
    (ι A X H : Type*) [Ring A] [AddCommGroup H] [Module ℂ H] where
  root : NoncommutativeHeightRoot A X H
  chart : ι → CriticalStripChart root
  cover : ∀ x, ∃ i, (chart i).carrier x
  transition : ∀ i j,
    (chart i).Overlaps (chart j) → CoordinateTransition (chart i) (chart j)
  identity_transition :
    ∀ i x (hi : (chart i).carrier x),
      (transition i i ⟨x, hi, hi⟩).forward ((chart i).coordinate x) =
        (chart i).coordinate x
  inverse_transition :
    ∀ i j x (hi : (chart i).carrier x) (hj : (chart j).carrier x),
      (transition j i ⟨x, hj, hi⟩).forward
          ((transition i j ⟨x, hi, hj⟩).forward ((chart i).coordinate x)) =
        (chart i).coordinate x
  cocycle_transition :
    ∀ i j k x
      (hi : (chart i).carrier x)
      (hj : (chart j).carrier x)
      (hk : (chart k).carrier x),
      (transition i k ⟨x, hi, hk⟩).forward ((chart i).coordinate x) =
        (transition j k ⟨x, hj, hk⟩).forward
          ((transition i j ⟨x, hi, hj⟩).forward ((chart i).coordinate x))
  comparison : ∀ i, LocalRHProfile (chart i).localStatement

namespace CriticalStripAtlas

/-- The conjunction of every proof-chart statement. -/
def GlobalStatement
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) : Prop :=
  ∀ i, (atlas.chart i).localStatement

/-- Every required chart is locally equivalent to canonical RH. -/
def GapFree
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) : Prop :=
  ∀ i, (atlas.comparison i).status = .equivalent

/-- The forward local implication is unavailable at the declared chart status. -/
def ForwardGap
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (i : ι) : Prop :=
  (atlas.comparison i).status ≠ .equivalent ∧
    (atlas.comparison i).status ≠ .sufficient

/-- The reverse local realization is unavailable at the declared chart status. -/
def ReverseGap
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (i : ι) : Prop :=
  (atlas.comparison i).status ≠ .equivalent ∧
    (atlas.comparison i).status ≠ .necessary

/-- A gap-free atlas supplies the exact RH equivalence at every chart. -/
theorem localStatement_iff_rh
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (hgap : atlas.GapFree) (i : ι) :
    (atlas.chart i).localStatement ↔ _root_.RiemannHypothesis :=
  (atlas.comparison i).iff_rh_of_equivalent (hgap i)

/-- The global statement of a nonempty, gap-free atlas is exactly canonical RH.
The explicit chart `i₀` rules out an empty-index vacuity. -/
theorem globalStatement_iff_rh
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (i₀ : ι) (hgap : atlas.GapFree) :
    atlas.GlobalStatement ↔ _root_.RiemannHypothesis := by
  constructor
  · intro hglobal
    exact ((atlas.localStatement_iff_rh hgap i₀).mp (hglobal i₀))
  · intro hrh i
    exact (atlas.localStatement_iff_rh hgap i).mpr hrh

/-- Explicit logical-equivalence transitions compose. Mere coordinate overlap does not
supply either transition. -/
theorem overlap_statement_trans
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) {i j k : ι}
    (first : ChartTransition (atlas.chart i) (atlas.chart j))
    (second : ChartTransition (atlas.chart j) (atlas.chart k)) :
    (atlas.chart i).localStatement ↔ (atlas.chart k).localStatement :=
  first.statement_iff.trans second.statement_iff

end CriticalStripAtlas

/-- One oriented proof transport in the vertical atlas. Its order is inherited from the
root commutator height, while its logical edge is a proof implication. -/
structure VerticalStep
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (lower upper : ι) where
  height_mono :
    (atlas.chart lower).rootHeight ≤ (atlas.chart upper).rootHeight
  transport :
    (atlas.chart lower).localStatement → (atlas.chart upper).localStatement

namespace VerticalStep

/-- Identity proof transport. -/
theorem refl
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (i : ι) :
    VerticalStep atlas i i where
  height_mono := le_rfl
  transport := fun h => h

/-- Proof-local vertical transports compose without referring to subject boundaries. -/
theorem trans
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {i j k : ι}
    (first : VerticalStep atlas i j) (second : VerticalStep atlas j k) :
    VerticalStep atlas i k where
  height_mono := first.height_mono.trans second.height_mono
  transport := fun hi => second.transport (first.transport hi)

end VerticalStep

/-- Concrete topological equivalence. This declaration alone contains no ring or
complex-analytic claim. -/
structure TopologicalEquivalence
    (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] where
  toFun : X → Y
  invFun : Y → X
  left_inverse : Function.LeftInverse invFun toFun
  right_inverse : Function.RightInverse invFun toFun
  continuous_toFun : Continuous toFun
  continuous_invFun : Continuous invFun

/-- Concrete homotopy between two maps. It is independent of ring and holomorphic
structure. The homotopy is globally continuous in the real parameter and point. -/
structure StructuredHomotopy
    {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    (f g : X → Y) where
  map : ℝ × X → Y
  continuous_map : Continuous map
  at_zero : ∀ x, map (0, x) = f x
  at_one : ∀ x, map (1, x) = g x

/-- Concrete ring-homomorphic chart transition. -/
structure RingChartHomomorphism (A B : Type*) [Ring A] [Ring B] where
  map : A →+* B

/-- Concrete complex-analytic chart transition on an explicit domain. In one complex
variable, `DifferentiableOn ℂ` is the holomorphy obligation used by this interface. -/
structure HolomorphicChartMap where
  domain : Set ℂ
  toFun : ℂ → ℂ
  holomorphic : DifferentiableOn ℂ toFun domain

/-- Noncoercible bridge for conveying a topological argument into analysis.

A term requires actual topology, an actual homotopy, an actual ring homomorphism, an
actual holomorphic map, and commuting compatibility equations. None is inferred from
another. The final proof edge remains explicit. -/
structure TopologicalToAnalyticTransport
    (X Y A B : Type*)
    [TopologicalSpace X] [TopologicalSpace Y] [Ring A] [Ring B]
    (P Q : Prop) where
  topological : TopologicalEquivalence X Y
  comparisonMap : X → Y
  homotopy : StructuredHomotopy topological.toFun comparisonMap
  ringHomomorphism : RingChartHomomorphism A B
  holomorphicMap : HolomorphicChartMap
  sourceTopologicalCoordinate : X → ℂ
  targetTopologicalCoordinate : Y → ℂ
  sourceRingCoordinate : A → ℂ
  targetRingCoordinate : B → ℂ
  topological_analytic_compatibility :
    ∀ x, sourceTopologicalCoordinate x ∈ holomorphicMap.domain →
      holomorphicMap.toFun (sourceTopologicalCoordinate x) =
        targetTopologicalCoordinate (topological.toFun x)
  ring_analytic_compatibility :
    ∀ a, sourceRingCoordinate a ∈ holomorphicMap.domain →
      holomorphicMap.toFun (sourceRingCoordinate a) =
        targetRingCoordinate (ringHomomorphism.map a)
  proofTransport : P → Q

end GRWTSK.RiemannHypothesis
