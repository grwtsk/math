/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.DirectedGraphEdgeTrace
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomyReview
import GRWTSK.DifferentialGeometry.RelationalHolonomyAndConservativeFlow

/-!
# Reconstructing dependent walks from actual quiver paths

The differential-geometry `Walk` stores its next edge at the front, whereas
Mathlib `Quiver.Path` stores its last edge in `Path.cons`. These constructors
describe the same typed chronological histories. Both inverse maps are defined
constructively, including the previously missing reverse reconstruction.

The result preserves concatenation, every parallel-arrow identity, the
fully tagged `DirectedGraph.EdgeTrace` representation and ordered group
transport. The fixed-root equivalence is the composite with the existing,
already two-sided `pathStarEquivTrace`; it does not invent a competing codec.

Primary argument: induction over each constructor plus associativity of
path composition. Hostile boundary: endpoints and vertex sequences do not
reconstruct parallel arrows (see `PathOccurrences.parallel_loops_ne`).
Transport products are intentionally not claimed to reconstruct paths:
different edge sequences can have equal group products.

These are elementary representation results, not an arithmetic, physical,
topological or homotopy-invariance assertion. Written proof candidates have
not been compiled or kernel checked in this contribution.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyPathEquivalence

open Quiver
open GRWTSK.DifferentialGeometry.RelationalHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview

universe u w

variable {V : Type u} [Quiver V]

/-- The existing dependent `Walk` specialized to the actual quiver arrows. -/
abbrev QuiverWalk (a b : V) := Walk (fun x y : V => x ⟶ y) a b

/-- A front-consed walk is an actual Mathlib path, not merely an endpoint list. -/
def walkToPath {a b : V} : QuiverWalk a b → Path a b
  | .nil _ => Path.nil
  | .step e tail => e.toPath.comp (walkToPath tail)

/-- Reverse reconstruction from the existing Mathlib path constructor. -/
def pathToWalk {a b : V} : Path a b → QuiverWalk a b
  | .nil => Walk.nil _
  | .cons p e => Walk.append (pathToWalk p) (Walk.step e (Walk.nil _))

/-- The forward conversion preserves typed concatenation. -/
theorem walkToPath_append {a b c : V}
    (p : QuiverWalk a b) (q : QuiverWalk b c) :
    walkToPath (Walk.append p q) =
      (walkToPath p).comp (walkToPath q) := by
  induction p with
  | nil _ =>
      simp [Walk.append, walkToPath]
  | step e tail ih =>
      change e.toPath.comp (walkToPath (Walk.append tail q)) =
        (e.toPath.comp (walkToPath tail)).comp (walkToPath q)
      rw [ih]
      exact (Path.comp_assoc _ _ _).symm

/-- The reverse conversion preserves composition with the actual middle vertex. -/
theorem pathToWalk_comp {a b c : V}
    (p : Path a b) (q : Path b c) :
    pathToWalk (p.comp q) =
      Walk.append (pathToWalk p) (pathToWalk q) := by
  induction q with
  | nil =>
      simp [pathToWalk]
  | cons q e ih =>
      change Walk.append (pathToWalk (p.comp q)) (Walk.step e (Walk.nil _)) =
        Walk.append (pathToWalk p)
          (Walk.append (pathToWalk q) (Walk.step e (Walk.nil _)))
      rw [ih, Walk.append_assoc]

/-- Constructing a path and reconstructing its walk returns the same walk. -/
@[simp] theorem pathToWalk_walkToPath {a b : V} (p : QuiverWalk a b) :
    pathToWalk (walkToPath p) = p := by
  induction p with
  | nil _ => rfl
  | step e tail ih =>
      change pathToWalk (e.toPath.comp (walkToPath tail)) = Walk.step e tail
      rw [pathToWalk_comp, ih]
      rfl

/-- Reconstructing a walk and returning to the quiver path returns the path. -/
@[simp] theorem walkToPath_pathToWalk {a b : V} (p : Path a b) :
    walkToPath (pathToWalk p) = p := by
  induction p with
  | nil => rfl
  | cons p e ih =>
      change walkToPath (Walk.append (pathToWalk p)
        (Walk.step e (Walk.nil _))) = p.cons e
      rw [walkToPath_append, ih]
      rfl

/-- Exact endpoint-indexed equivalence in both directions. -/
def walkEquivPath (a b : V) : QuiverWalk a b ≃ Path a b where
  toFun := walkToPath
  invFun := pathToWalk
  left_inv := pathToWalk_walkToPath
  right_inv := walkToPath_pathToWalk

/-- The dependent terminal vertex is retained in the fixed-root equivalence. -/
def walkStarEquivPath (root : V) :
    (Σ b : V, QuiverWalk root b) ≃ PathStar root where
  toFun p := ⟨p.1, walkToPath p.2⟩
  invFun p := ⟨p.1, pathToWalk p.2⟩
  left_inv := by
    rintro ⟨b, p⟩
    simp
  right_inv := by
    rintro ⟨b, p⟩
    simp

/-- Fully typed walks equal exactly the valid chronological tagged traces.
No arbitrary invalid list is admitted, and the empty trace keeps its root. -/
noncomputable def walkStarEquivTrace (root : V) :
    (Σ b : V, QuiverWalk root b) ≃
      {trace : List (TotalEdge V) // ValidFrom root trace} :=
  (walkStarEquivPath root).trans (pathStarEquivTrace root)

/-- The original complete trace of a walk, with each arrow still identified. -/
def walkTrace {a b : V} (p : QuiverWalk a b) : List (TotalEdge V) :=
  encodePath (walkToPath p)

variable {G : Type w} [Group G]

/-- The existing connection, read through the original edge-tag type. -/
def taggedWeight (C : Connection (fun a b : V => a ⟶ b) G) :
    TotalEdge V → G :=
  fun e => C.edgeTransport e.2.2

/-- Conversely, an edge-tag weight defines a connection on the same arrows. -/
def connectionOfWeight (weight : TotalEdge V → G) :
    Connection (fun a b : V => a ⟶ b) G where
  edgeTransport := fun {a b} e => weight ⟨a, b, e⟩

@[simp] theorem taggedWeight_connectionOfWeight
    (weight : TotalEdge V → G) :
    taggedWeight (connectionOfWeight weight) = weight := by
  funext e
  rcases e with ⟨a, b, e⟩
  rfl

/-- A frame change on typed edges is exactly the previous tagged gauge law. -/
theorem taggedWeight_gauge
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) :
    taggedWeight (C.gauge frame) =
      gaugedEdge (taggedWeight C) frame := by
  funext e
  rcases e with ⟨a, b, e⟩
  rfl

/-- The group transport is unchanged by the complete path/trace equivalence. -/
theorem walk_transport_eq_trace
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a b : V} (p : QuiverWalk a b) :
    C.transport p = pathTransport (taggedWeight C) (walkTrace p) := by
  induction p with
  | nil _ =>
      simp [walkTrace, walkToPath, taggedWeight]
  | step e tail ih =>
      change C.edgeTransport e * C.transport tail =
        pathTransport (taggedWeight C)
          (encodePath (e.toPath.comp (walkToPath tail)))
      rw [encodePath_comp, encodePath_toPath, pathTransport_append]
      simp only [pathTransport_cons, pathTransport_nil, mul_one]
      change C.edgeTransport e * C.transport tail =
        C.edgeTransport e *
          pathTransport (taggedWeight C) (encodePath (walkToPath tail))
      rw [ih]

/-- A closed typed walk induces a genuinely valid closed trace with the
same conjugacy-invariant observer readout. -/
theorem closed_walk_trace_readout {A : Type*}
    (weight : TotalEdge V → G) (frame : V → G)
    {a : V} (p : QuiverWalk a a) (readout : G → A)
    (hinvariant : ConjugacyInvariant readout) :
    readout (pathTransport (gaugedEdge weight frame) (walkTrace p)) =
      readout (pathTransport weight (walkTrace p)) := by
  have hvalid : ValidFrom a (walkTrace p) :=
    validFrom_encodePath (walkToPath p)
  have hclosed : finish a (walkTrace p) = a :=
    finish_encodePath (walkToPath p)
  exact closed_walk_observer_independent weight frame a (walkTrace p)
    readout hvalid hclosed hinvariant

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyPathEquivalence
