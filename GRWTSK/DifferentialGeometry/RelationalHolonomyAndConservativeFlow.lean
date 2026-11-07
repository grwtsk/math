/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Relational paths, discrete holonomy, and conservative network transport

Local attribution: grwtsk contributors.

This is a precise *mathematical model* of a proposed relational account of
experience. Nodes can represent viewpoints, and a typed directed edge can
represent an interaction. An indexed walk records successive interactions;
a group-valued connection records their ordered, cumulative transport.
A change of local viewpoint is represented by a gauge function.

The established mathematical conclusions are:
* Transport composes along concatenated histories.
* Closed-walk holonomy changes by conjugation under a change of local frame;
  the property of trivial holonomy is frame independent.
* A nontrivial loop cannot be reconstructed from its endpoints alone.
* A finite directed network with nonnegative affordable transfers conserves
  total energy and has nonnegative final energy at every node.
* Diagonal (self-only) observations do not determine all directed relations.

The relation to empathy, an ego-independent perspective, personal memory, or
reported end-of-life life reviews is an **interpretation**, not a theorem.
Nothing here identifies neural activity, consciousness, thermodynamic energy,
physical death, or a theological claim with the constructed objects. In
particular, no assertion that the brain implements gauge holonomy is made.
The word 'holomony' is interpreted only provisionally as mathematical holonomy.

These are elementary discrete group/graph and finite-sum calculations, not
claims of theorem-level novelty. Unlike the existing Gödel observer-root
transport, which concerns a specified spacetime metric, this module defines
abstract typed network paths and makes no physical metric identification.

Primary proof argument: concatenate paths by recursion, multiply their edge
transports, cancel adjacent gauge factors, and exchange two finite sums.
Hostile boundary: a one-node loop may be nontrivial even though its endpoints
are identical; zero and diagonal-only data cannot reconstruct every edge.
No external paper theorem is imported beyond Mathlib's ordinary algebra.

SOURCE_PROOF_CANDIDATE / BUILD_NOT_RUN / KERNEL_NOT_RUN / AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.DifferentialGeometry.RelationalHolonomy

universe u v w

/-- A composable history. Edge a b may contain multiple distinct events
between the same two nodes, so the walk retains more than its endpoints. -/
inductive Walk {Node : Type u} (Edge : Node → Node → Type v) :
    Node → Node → Type (max u v) where
  | nil (a : Node) : Walk Edge a a
  | step {a b c : Node} (e : Edge a b) (tail : Walk Edge b c) : Walk Edge a c

namespace Walk

variable {Node : Type u} {Edge : Node → Node → Type v}

/-- Concatenation keeps the common intermediate node in its type. -/
def append {a b c : Node} (p : Walk Edge a b) :
    Walk Edge b c → Walk Edge a c :=
  match p with
  | .nil _ => fun q => q
  | .step e tail => fun q => .step e (append tail q)

@[simp] theorem nil_append {a b : Node} (p : Walk Edge a b) :
    append (.nil a) p = p := rfl

@[simp] theorem append_nil {a b : Node} (p : Walk Edge a b) :
    append p (.nil b) = p := by
  induction p with
  | nil _ => rfl
  | step e tail ih => simp [append, ih]

theorem append_assoc {a b c d : Node}
    (p : Walk Edge a b) (q : Walk Edge b c) (r : Walk Edge c d) :
    append (append p q) r = append p (append q r) := by
  induction p with
  | nil _ => rfl
  | step e tail ih => simp [append, ih]

end Walk

/-- A discrete connection assigns a group element to each typed event. -/
structure Connection {Node : Type u} (Edge : Node → Node → Type v)
    (G : Type w) where
  edgeTransport : ∀ {a b : Node}, Edge a b → G

namespace Connection

variable {Node : Type u} {Edge : Node → Node → Type v}
variable {G : Type w} [Group G]

/-- Ordered parallel transport along a composable history. -/
def transport (C : Connection Edge G) {a b : Node} : Walk Edge a b → G
  | .nil _ => 1
  | .step e tail => C.edgeTransport e * transport C tail

@[simp] theorem transport_nil (C : Connection Edge G) (a : Node) :
    C.transport (Walk.nil a) = 1 := rfl

@[simp] theorem transport_step (C : Connection Edge G)
    {a b c : Node} (e : Edge a b) (tail : Walk Edge b c) :
    C.transport (Walk.step e tail) = C.edgeTransport e * C.transport tail := rfl

/-- Exact multiplicativity: the entire sequence, not only its endpoints,
contributes to the transport. -/
theorem transport_append (C : Connection Edge G) {a b c : Node}
    (p : Walk Edge a b) (q : Walk Edge b c) :
    C.transport (Walk.append p q) = C.transport p * C.transport q := by
  induction p with
  | nil _ => simp
  | step e tail ih => simp [Walk.append, ih, mul_assoc]

/-- Change of local frame. The left and right factors must use the actual
source and target of each typed edge. -/
def gauge (C : Connection Edge G) (frame : Node → G) : Connection Edge G where
  edgeTransport := by
    intro a b e
    exact (frame a)⁻¹ * C.edgeTransport e * frame b

@[simp] theorem gauge_edge (C : Connection Edge G) (frame : Node → G)
    {a b : Node} (e : Edge a b) :
    (C.gauge frame).edgeTransport e =
      (frame a)⁻¹ * C.edgeTransport e * frame b := rfl

/-- Intermediate observer frames cancel. This is the source-preserving
return from local edge descriptions to the complete walk transport. -/
theorem transport_gauge (C : Connection Edge G) (frame : Node → G)
    {a b : Node} (p : Walk Edge a b) :
    (C.gauge frame).transport p =
      (frame a)⁻¹ * C.transport p * frame b := by
  induction p with
  | nil _ => simp
  | step e tail ih =>
      simp only [transport_step, gauge_edge, ih]
      group

/-- Holonomy is based transport around a closed walk. -/
def holonomy (C : Connection Edge G) {a : Node} (p : Walk Edge a a) : G :=
  C.transport p

@[simp] theorem holonomy_nil (C : Connection Edge G) (a : Node) :
    C.holonomy (Walk.nil a) = 1 := rfl

/-- Noncommutative holonomy is *conjugated*, not generally equal, under
an observer-frame change. -/
theorem holonomy_gauge (C : Connection Edge G) (frame : Node → G)
    {a : Node} (p : Walk Edge a a) :
    (C.gauge frame).holonomy p =
      (frame a)⁻¹ * C.holonomy p * frame a := by
  exact C.transport_gauge frame p

/-- Trivial cycle holonomy is invariant even for noncommutative groups. -/
theorem holonomy_gauge_eq_one_iff (C : Connection Edge G)
    (frame : Node → G) {a : Node} (p : Walk Edge a a) :
    (C.gauge frame).holonomy p = 1 ↔ C.holonomy p = 1 := by
  rw [holonomy_gauge]
  constructor
  · intro h
    have hh := congrArg (fun x : G => frame a * x * (frame a)⁻¹) h
    simpa [mul_assoc] using hh
  · intro h
    simp [h]

/-- A walk representation depending only on source and destination. -/
def EndpointDetermined (C : Connection Edge G) : Prop :=
  ∃ summary : Node → Node → G,
    ∀ {a b : Node} (p : Walk Edge a b), C.transport p = summary a b

/-- The precise obstruction to replacing relational history with a pair
of endpoints: one nontrivial cycle suffices. -/
theorem not_endpointDetermined_of_nontrivial_loop (C : Connection Edge G)
    {a : Node} (p : Walk Edge a a) (hp : C.holonomy p ≠ 1) :
    ¬ EndpointDetermined C := by
  rintro ⟨summary, hs⟩
  apply hp
  calc
    C.holonomy p = summary a a := hs p
    _ = C.transport (Walk.nil a) := (hs (Walk.nil a)).symm
    _ = 1 := by simp

/-- A concrete abstract example: one node and one repeatable event.
The event can carry nonidentity transport despite unchanged endpoints. -/
def oneNodeConnection (g : G) :
    Connection (fun (_ _ : Unit) => Unit) G where
  edgeTransport := by
    intro _ _ _
    exact g

def oneNodeLoop : Walk (fun (_ _ : Unit) => Unit) () () :=
  Walk.step () (Walk.nil ())

@[simp] theorem oneNodeLoop_holonomy (g : G) :
    (oneNodeConnection g).holonomy oneNodeLoop = g := by
  simp [holonomy, oneNodeLoop, oneNodeConnection]

theorem oneNode_is_path_dependent (g : G) (hne : g ≠ 1) :
    ¬ EndpointDetermined (oneNodeConnection g) := by
  exact not_endpointDetermined_of_nontrivial_loop
    (oneNodeConnection g) oneNodeLoop (by simpa using hne)

end Connection

/-- A finite network may distribute a conserved nonnegative quantity along
its directed relationships. The affordability condition is per origin. -/
structure ConservativeFlow (Node : Type u) [Fintype Node] where
  initial : Node → ℝ
  flow : Node → Node → ℝ
  flow_nonneg : ∀ a b, 0 ≤ flow a b
  outgoing_le_initial : ∀ a, (∑ b : Node, flow a b) ≤ initial a

namespace ConservativeFlow

variable {Node : Type u} [Fintype Node]

/-- Final energy equals initial energy plus all incoming transfers, less
all outgoing transfers. This is a bookkeeping model, not neuroscience. -/
def after (F : ConservativeFlow Node) (b : Node) : ℝ :=
  F.initial b + (∑ a : Node, F.flow a b) - (∑ a : Node, F.flow b a)

/-- Nonnegative transfers and local affordability prevent negative balances. -/
theorem after_nonneg (F : ConservativeFlow Node) (b : Node) : 0 ≤ F.after b := by
  classical
  have hin : 0 ≤ ∑ a : Node, F.flow a b := by
    apply Finset.sum_nonneg
    intro a _
    exact F.flow_nonneg a b
  unfold after
  linarith [F.outgoing_le_initial b]

/-- Every transfer is counted once as outgoing and once as incoming.
Therefore dispersion on this finite, closed model does not create energy. -/
theorem total_after_eq_total_initial (F : ConservativeFlow Node) :
    (∑ b : Node, F.after b) = ∑ b : Node, F.initial b := by
  classical
  have hswap :
      (∑ b : Node, ∑ a : Node, F.flow a b) =
        (∑ a : Node, ∑ b : Node, F.flow a b) := Finset.sum_comm
  calc
    (∑ b : Node, F.after b) =
        (∑ b : Node, F.initial b) +
        (∑ b : Node, ∑ a : Node, F.flow a b) -
        (∑ a : Node, ∑ b : Node, F.flow a b) := by
          simp [after, Finset.sum_add_distrib, Finset.sum_sub_distrib]
    _ = ∑ b : Node, F.initial b := by rw [hswap]; ring

end ConservativeFlow

/-- A self-only observation keeps only the diagonal of a directed impact
matrix. This is a formal proxy for a restricted viewpoint, not a definition
of psychological ego. -/
def diagonalObservation {Node : Type u} (impact : Node → Node → ℤ) : Node → ℤ :=
  fun n => impact n n

/-- One influence is cross-relational and has no diagonal contribution. -/
def crossImpact : Bool → Bool → ℤ
  | false, true => 1
  | _, _ => 0

theorem crossImpact_diagonal_zero (n : Bool) : crossImpact n n = 0 := by
  cases n <;> rfl

/-- There can be two different relational histories with exactly the same
self-only observations. No conclusion about literal memory follows. -/
theorem diagonalObservation_not_injective :
    ¬ Function.Injective (diagonalObservation (Node := Bool)) := by
  intro hinj
  have hdiag : diagonalObservation crossImpact =
      diagonalObservation (fun (_ _ : Bool) => (0 : ℤ)) := by
    funext n
    exact crossImpact_diagonal_zero n
  have hfull : crossImpact = (fun (_ _ : Bool) => (0 : ℤ)) := hinj hdiag
  have hentry := congrArg (fun f : Bool → Bool → ℤ => f false true) hfull
  norm_num [crossImpact] at hentry

/-- The complete relational accounting agrees whether indexed by receiver
or by source; changing that summation viewpoint loses no directed entries. -/
theorem sum_received_eq_sum_given {Node : Type u} [Fintype Node]
    (impact : Node → Node → ℝ) :
    (∑ receiver : Node, ∑ source : Node, impact source receiver) =
      (∑ source : Node, ∑ receiver : Node, impact source receiver) := by
  classical
  exact Finset.sum_comm

end GRWTSK.DifferentialGeometry.RelationalHolonomy
end
