/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean compilation, independent kernel replay,
transitive axiom audit and external mathematical review: NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RelationSandwich
import Mathlib.NumberTheory.LSeries.ZetaZeros

/-!
# Actual zeta-zero centers and compositional graph-sandwich layers

A source center is a member of Mathlib's ACTUAL Riemann zeta zero set,
not a graph eigenvalue or a numerical approximation. Critical-strip
membership is supplied as an explicit hypothesis, not manufactured by
a finite graph. No distinguished first zero or RH assumption is made.

A graph layer carries the same genuine source zero and a typed
lower/middle/upper edge sandwich. A verified layer map preserves the
source identity and observational readout along with all three edge
relations. It transports every finite directed path, composes through
arbitrarily many layers, and pulls upper acyclicity back to the source.

The analytic zero set is discrete and locally finite in compact regions
by the pinned Mathlib theorem. This permits finite observation WINDOWS;
it does not provide enumeration, signed Weil positivity or a spectral
determinant connecting a graph to the zeta function.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZetaCenteredLayerSandwich

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

universe u v w

/-- An actual nontrivial-source zeta zero supplied with a strip witness.
The structure does not assert that any particular numerical candidate
is an exact zero or is the least positive-height zero. -/
structure ZetaZeroCenter where
  value : ℂ
  source_zero : value ∈ riemannZetaZeros
  left_of_strip : 0 < value.re
  right_of_strip : value.re < 1

theorem ZetaZeroCenter.actual_zero (z : ZetaZeroCenter) :
    riemannZeta z.value = 0 :=
  mem_riemannZetaZeros.mp z.source_zero

/-- A source-identified compact observation domain. -/
structure CompactZetaWindow where
  region : Set ℂ
  compact : IsCompact region

/-- We do not replace actual zeta zeros by graph spectra. -/
def CompactZetaWindow.zeros (W : CompactZetaWindow) : Set ℂ :=
  W.region ∩ riemannZetaZeros

/-- A compact source window contains finitely many actual zeta zeros.
This uses the pinned Mathlib discreteness theorem, not a zero dataset. -/
theorem CompactZetaWindow.zeros_finite (W : CompactZetaWindow) :
    W.zeros.Finite :=
  W.compact.inter_riemannZetaZeros_finite

/-- One graph sandwich carrying an original analytic source-center identity.
The observation at its root is tied to the ACTUAL zero. Other graph
observations remain unconstrained without a separate source-return proof. -/
structure CenteredLayer (Vertex : Type u) where
  center : ZetaZeroCenter
  sandwich : Sandwich Vertex
  root : Vertex
  observe : Vertex → ℂ
  observe_root : observe root = center.value

theorem CenteredLayer.root_is_actual_zero {Vertex : Type u}
    (A : CenteredLayer Vertex) :
    riemannZeta (A.observe A.root) = 0 := by
  rw [A.observe_root]
  exact A.center.actual_zero

theorem CenteredLayer.root_in_critical_strip {Vertex : Type u}
    (A : CenteredLayer Vertex) :
    0 < (A.observe A.root).re ∧ (A.observe A.root).re < 1 := by
  rw [A.observe_root]
  exact ⟨A.center.left_of_strip, A.center.right_of_strip⟩

/-- A map of different graph layers. Every edge and the actual center
observation must be preserved. It is deliberately not inferred from
source filenames, graph similarity, learned embeddings or heat values. -/
structure LayerMap {Vertex : Type u} {Target : Type v}
    (A : CenteredLayer Vertex) (B : CenteredLayer Target) where
  node : Vertex → Target
  center_eq : A.center.value = B.center.value
  root_eq : node A.root = B.root
  observe_eq : ∀ x, B.observe (node x) = A.observe x
  lower_edge : ∀ {x y}, A.sandwich.lower x y →
    B.sandwich.lower (node x) (node y)
  middle_edge : ∀ {x y}, A.sandwich.middle x y →
    B.sandwich.middle (node x) (node y)
  upper_edge : ∀ {x y}, A.sandwich.upper x y →
    B.sandwich.upper (node x) (node y)

/-- A relabeling preserving every edge carries directed paths forward.
It does not create a path in the opposite direction. -/
def mapPath {Vertex : Type u} {Target : Type v}
    (f : Vertex → Target)
    {R : EdgeRelation Vertex} {S : EdgeRelation Target}
    (preserves : ∀ {x y}, R x y → S (f x) (f y))
    {x y : Vertex} (path : Path R x y) :
    Path S (f x) (f y) := by
  induction path with
  | single edge =>
      exact Path.single (preserves edge)
  | tail prior edge ih =>
      exact Path.tail ih (preserves edge)

/-- The identity layer map has no unproved compatibility requirements. -/
def LayerMap.id {Vertex : Type u} (A : CenteredLayer Vertex) :
    LayerMap A A where
  node := id
  center_eq := rfl
  root_eq := rfl
  observe_eq := fun _ => rfl
  lower_edge := by intro x y h; exact h
  middle_edge := by intro x y h; exact h
  upper_edge := by intro x y h; exact h

/-- Composition preserves source-zero identity, all observations, and
all three edge relations across arbitrary differently typed layers. -/
def LayerMap.comp
    {Vertex : Type u} {Middle : Type v} {Target : Type w}
    {A : CenteredLayer Vertex} {B : CenteredLayer Middle}
    {C : CenteredLayer Target}
    (f : LayerMap A B) (g : LayerMap B C) : LayerMap A C where
  node := g.node ∘ f.node
  center_eq := f.center_eq.trans g.center_eq
  root_eq := by
    change g.node (f.node A.root) = C.root
    rw [f.root_eq, g.root_eq]
  observe_eq := by
    intro x
    change C.observe (g.node (f.node x)) = A.observe x
    exact (g.observe_eq (f.node x)).trans (f.observe_eq x)
  lower_edge := by
    intro x y h
    exact g.lower_edge (f.lower_edge h)
  middle_edge := by
    intro x y h
    exact g.middle_edge (f.middle_edge h)
  upper_edge := by
    intro x y h
    exact g.upper_edge (f.upper_edge h)

theorem LayerMap.lower_path
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B) {x y : Vertex}
    (h : Path A.sandwich.lower x y) :
    Path B.sandwich.lower (f.node x) (f.node y) :=
  mapPath f.node (fun h => f.lower_edge h) h

theorem LayerMap.middle_path
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B) {x y : Vertex}
    (h : Path A.sandwich.middle x y) :
    Path B.sandwich.middle (f.node x) (f.node y) :=
  mapPath f.node (fun h => f.middle_edge h) h

theorem LayerMap.upper_path
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B) {x y : Vertex}
    (h : Path A.sandwich.upper x y) :
    Path B.sandwich.upper (f.node x) (f.node y) :=
  mapPath f.node (fun h => f.upper_edge h) h

/-- Every accepted source path remains in the target middle and upper
graphs, using the actual lower ⊆ middle ⊆ upper sandwich laws. -/
theorem LayerMap.lower_path_to_target_upper
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B) {x y : Vertex}
    (h : Path A.sandwich.lower x y) :
    Path B.sandwich.upper (f.node x) (f.node y) := by
  have hlow := f.lower_path h
  have hmid := Path.mono B.sandwich.lower_le_middle hlow
  exact Path.mono B.sandwich.middle_le_upper hmid

/-- Acyclicity in the target upper graph forbids a source upper cycle.
The converse is NOT valid without a separate path-reflection theorem. -/
theorem LayerMap.source_upper_acyclic
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B)
    (h : Acyclic B.sandwich.upper) :
    Acyclic A.sandwich.upper := by
  intro x cycle
  exact h (f.node x) (f.upper_path cycle)

/-- A source original-zero observation remains exactly the same after
transporting its root; this is an analytic-source identity, NOT an
operator-to-zeta spectral correspondence. -/
theorem LayerMap.mapped_root_is_actual_zero
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B) :
    riemannZeta (B.observe (f.node A.root)) = 0 := by
  rw [f.observe_eq A.root]
  exact A.root_is_actual_zero

theorem LayerMap.mapped_root_value
    {Vertex : Type u} {Target : Type v}
    {A : CenteredLayer Vertex} {B : CenteredLayer Target}
    (f : LayerMap A B) :
    B.observe (f.node A.root) = A.center.value :=
  (f.observe_eq A.root).trans A.observe_root

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ZetaCenteredLayerSandwich
