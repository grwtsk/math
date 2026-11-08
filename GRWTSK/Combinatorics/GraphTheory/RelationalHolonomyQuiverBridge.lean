/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.FiniteRelationalTypeDiscovery
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomyPathEquivalence
import Mathlib.Tactic

/-!
# Source-exact quiver bridge for relational spin-completion paths

The original RelationalHolonomySpinCompletion.Path and the earlier
DifferentialGeometry.RelationalHolonomy.Walk are distinct inductive
families. Neither is definitionally Mathlib Quiver.Path. This module
constructs inverse source/target-dependent conversions and composes the
existing walkEquivPath and walkStarEquivTrace. Fully tagged traces retain
every original arrow, including parallel arrows and chronological order.

The spin-completion gauge convention is h(source)*U(e)*h(target)⁻¹,
whereas the earlier Connection.gauge convention is
h(source)⁻¹*U(e)*h(target). Agreement needs the INVERSE frame.
The theorem below pays this comparison instead of conflating them.

Every finite sequence of pending-loop spin extensions has an exact
full-path source return. A stage reader that exposes the entire original
tagged trace admits a correct partial classifier at stage zero when
intended types are constant on equal source histories. Conversely no
sequence of staged pending-loop observations can classify two distinct
intended types given the SAME original fully tagged history. A genuine
new observation-separation hypothesis remains necessary for more.

Proof comparison: structural induction on existing path constructors,
composition of existing equivalences, and existing exact spin erasure.
Hostile cases: parallel arrows share endpoints and gauge-invariant
holonomy summaries may be lossy. Source path identity is not discarded.
These are elementary typed representation results, not a physical
covering or spin system, spectral gap, or RH/GRH conclusion.
Independent mathematical review, Lean compilation, fresh kernel replay
and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

open Quiver
open GRWTSK.DifferentialGeometry.RelationalHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyPathEquivalence

universe u v w z t

namespace Path

variable {V : Type u} {E : V → V → Type v}

/-- Front-consed source paths map to walks on exactly the same edge family. -/
def toWalk {a b : V} : Path E a b → Walk E a b
  | .refl _ => Walk.nil _
  | .cons e rest => Walk.step e (toWalk rest)

/-- Reverse conversion retains the actual dependent edge witness. -/
def fromWalk {a b : V} : Walk E a b → Path E a b
  | .nil _ => Path.refl _
  | .step e rest => Path.cons e (fromWalk rest)

@[simp] theorem fromWalk_toWalk {a b : V} (p : Path E a b) :
    fromWalk (toWalk p) = p := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [toWalk, fromWalk, ih]

@[simp] theorem toWalk_fromWalk {a b : V} (p : Walk E a b) :
    toWalk (fromWalk p) = p := by
  induction p with
  | nil _ => rfl
  | step e rest ih => simp [toWalk, fromWalk, ih]

/-- Exact endpoint-indexed equivalence with the existing Walk. -/
def equivWalk (a b : V) : Path E a b ≃ Walk E a b where
  toFun := toWalk
  invFun := fromWalk
  left_inv := fromWalk_toWalk
  right_inv := toWalk_fromWalk

/-- Typed composition respects the common intermediate vertex. -/
theorem toWalk_append {a b c : V} (p : Path E a b) (q : Path E b c) :
    toWalk (p.append q) = Walk.append (toWalk p) (toWalk q) := by
  induction p with
  | refl _ => rfl
  | cons e rest ih =>
      change Walk.step e (toWalk (rest.append q)) =
        Walk.step e (Walk.append (toWalk rest) (toWalk q))
      rw [ih]

variable {G : Type w} [Group G]

/-- The two group transports compute the same ordered path product. -/
theorem holonomy_eq_connection_transport (C : Connection E G)
    {a b : V} (p : Path E a b) :
    holonomy C.edgeTransport p = C.transport (toWalk p) := by
  induction p with
  | refl _ => rfl
  | cons e rest ih =>
      change C.edgeTransport e * holonomy C.edgeTransport rest =
        C.edgeTransport e * C.transport (toWalk rest)
      rw [ih]

/-- The two existing gauge laws agree after inversion of the frame. -/
theorem gauge_convention_transport (C : Connection E G)
    (frame : V → G) {a b : V} (p : Path E a b) :
    holonomy (gaugeEdge (fun x => (frame x)⁻¹) C.edgeTransport) p =
      (C.gauge frame).transport (toWalk p) := by
  calc
    holonomy (gaugeEdge (fun x => (frame x)⁻¹) C.edgeTransport) p =
        (frame a)⁻¹ * holonomy C.edgeTransport p * frame b := by
          rw [holonomy_gauge]
          simp
    _ = (frame a)⁻¹ * C.transport (toWalk p) * frame b := by
          rw [holonomy_eq_connection_transport]
    _ = (C.gauge frame).transport (toWalk p) :=
      (C.transport_gauge frame (toWalk p)).symm

end Path

/-- Erase all finite completed spin layers back to the actual source path. -/
def unwindPending {V : Type u} {E : V → V → Type v} {a : V} :
    (n : Nat) →
      Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) → Path E a a
  | 0, path => path
  | n + 1, path => unwindPending n (SpinPath.erase path)

/-- Every repeated pending-loop retry returns the full original path. -/
@[simp] theorem unwindPending_pending {V : Type u} {E : V → V → Type v}
    {a : V} (p : Path E a a) (n : Nat) :
    unwindPending n (pendingLoop p n) = p := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change unwindPending n (SpinPath.erase (pendingLoop p (n + 1))) = p
      rw [pendingLoop_recover, ih]

section ActualQuiver

variable {V : Type u} [Quiver V]

/-- Composite equivalence to Mathlib's existing Quiver.Path. -/
def sourceEquivQuiverPath (a b : V) :
    Path (fun x y : V => x ⟶ y) a b ≃ Quiver.Path a b :=
  (Path.equivWalk (E := fun x y : V => x ⟶ y) a b).trans
    (walkEquivPath a b)

/-- Fixed-root path-star bridge to the existing dependent Walk. -/
def sourceStarEquivWalk (root : V) :
    (Σ b : V, Path (fun x y : V => x ⟶ y) root b) ≃
      (Σ b : V, QuiverWalk root b) where
  toFun p := ⟨p.1, Path.toWalk p.2⟩
  invFun p := ⟨p.1, Path.fromWalk p.2⟩
  left_inv := by
    rintro ⟨b, p⟩
    simp
  right_inv := by
    rintro ⟨b, p⟩
    simp

/-- Exact equivalence to VALID chronological fully tagged arrow traces. -/
noncomputable def sourceStarEquivTrace (root : V) :
    (Σ b : V, Path (fun x y : V => x ⟶ y) root b) ≃
      {trace : List (TotalEdge V) // ValidFrom root trace} :=
  (sourceStarEquivWalk root).trans (walkStarEquivTrace root)

/-- Chronological original arrow occurrences, including parallel arrows. -/
def Path.trace {a b : V} (p : Path (fun x y : V => x ⟶ y) a b) :
    List (TotalEdge V) :=
  walkTrace (Path.toWalk p)

@[simp] theorem Path.trace_refl (a : V) :
    Path.trace (Path.refl a : Path (fun x y : V => x ⟶ y) a a) = [] := rfl

@[simp] theorem Path.trace_cons {a b c : V} (e : a ⟶ b)
    (rest : Path (fun x y : V => x ⟶ y) b c) :
    Path.trace (Path.cons e rest) =
      (⟨a, b, e⟩ : TotalEdge V) :: Path.trace rest := by
  change encodePath (e.toPath.comp (walkToPath (Path.toWalk rest))) =
    (⟨a, b, e⟩ : TotalEdge V) ::
      encodePath (walkToPath (Path.toWalk rest))
  rw [encodePath_comp, encodePath_toPath]
  rfl

/-- Chronological source composition is literal list append. -/
theorem Path.trace_append {a b c : V}
    (p : Path (fun x y : V => x ⟶ y) a b)
    (q : Path (fun x y : V => x ⟶ y) b c) :
    Path.trace (p.append q) = Path.trace p ++ Path.trace q := by
  change encodePath (walkToPath (Path.toWalk (p.append q))) =
    encodePath (walkToPath (Path.toWalk p)) ++
      encodePath (walkToPath (Path.toWalk q))
  rw [Path.toWalk_append, walkToPath_append, encodePath_comp]

/-- Only valid traces originate from these typed paths. -/
theorem Path.trace_valid {a b : V}
    (p : Path (fun x y : V => x ⟶ y) a b) :
    ValidFrom a (Path.trace p) := by
  change ValidFrom a (encodePath (walkToPath (Path.toWalk p)))
  exact validFrom_encodePath _

/-- The target is determined by following the original tagged arrows. -/
theorem Path.trace_finish {a b : V}
    (p : Path (fun x y : V => x ⟶ y) a b) :
    finish a (Path.trace p) = b := by
  change finish a (encodePath (walkToPath (Path.toWalk p))) = b
  exact finish_encodePath _

/-- Equal tagged histories imply equal ORIGINAL source paths. -/
theorem Path.eq_of_trace_eq {a b : V}
    (p q : Path (fun x y : V => x ⟶ y) a b)
    (h : Path.trace p = Path.trace q) : p = q := by
  have hstar :
      (sourceStarEquivTrace a) ⟨b, p⟩ =
        (sourceStarEquivTrace a) ⟨b, q⟩ := by
    apply Subtype.ext
    change Path.trace p = Path.trace q
    exact h
  have heq := (sourceStarEquivTrace a).injective hstar
  exact eq_of_heq (Sigma.mk.inj heq).2

/-- A spin-sheet retry returns the complete original tagged history. -/
@[simp] theorem Path.trace_retry_return {a : V}
    (p : Path (fun x y : V => x ⟶ y) a a) (sheet : Bool) :
    Path.trace (SpinPath.erase (SpinPath.retryLoop p sheet)) =
      Path.trace p := by
  rw [SpinPath.erase_retryLoop]

/-- The old-copy lift also has exact chronological source return. -/
@[simp] theorem Path.trace_oldLift_return {a b : V}
    (p : Path (fun x y : V => x ⟶ y) a b) :
    Path.trace (SpinPath.erase (SpinPath.oldLift p)) = Path.trace p := by
  rw [SpinPath.erase_oldLift]

/-- All finite retries return the original trace, not just its basepoint. -/
@[simp] theorem Path.trace_unwindPending_pending {a : V}
    (p : Path (fun x y : V => x ⟶ y) a a) (n : Nat) :
    Path.trace (unwindPending n (pendingLoop p n)) = Path.trace p := by
  rw [unwindPending_pending]

end ActualQuiver

section SourceTraceDecoding

variable {V : Type u} [Quiver V] {a : V}
variable {P : Type w} [Fintype P] {Kind : Type z}

/-- This deliberately strong observer exposes the entire original trace. -/
def directTraceReadout
    (history : P → Path (fun x y : V => x ⟶ y) a a)
    (_ : Nat) (p : P) : List (TotalEdge V) :=
  Path.trace (history p)

/-- If intended types factor through the source history, the EXISTING
partial prefix classifier is correct at stage zero when given the
entire original trace. This does not assert a new spin observation. -/
theorem type_classifiable_from_full_trace
    (history : P → Path (fun x y : V => x ⟶ y) a a)
    (typeOf : P → Kind)
    (type_respects_trace : ∀ p q : P,
      Path.trace (history p) = Path.trace (history q) →
        typeOf p = typeOf q) :
    ∃ classify : (((i : Fin (0 + 1)) → List (TotalEdge V)) → Option Kind),
      ∀ p : P,
        classify (observationPrefix (directTraceReadout history) 0 p) =
          some (typeOf p) := by
  refine ⟨prefixClassifier typeOf (directTraceReadout history) 0, ?_⟩
  intro p
  apply prefixClassifier_correct typeOf (directTraceReadout history) 0
  intro x y heq
  apply type_respects_trace x y
  exact congrFun heq ⟨0, Nat.zero_lt_succ 0⟩

end SourceTraceDecoding

section ClassificationObstruction

variable {V : Type u} [Quiver V] {a : V}
variable {P : Type w} {Kind : Type z} {Obs : Nat → Type t}

/-- The staged spin reader sees the same input if its original tagged
source history is the same; it cannot recover omitted source identity. -/
theorem spinReadout_eq_of_source_trace_eq
    (history : P → Path (fun x y : V => x ⟶ y) a a)
    (observe : (n : Nat) →
      Path (iterEdge (fun x y : V => x ⟶ y) n)
        (iterAnchor a n) (iterAnchor a n) → Obs n)
    (p q : P)
    (sameTrace : Path.trace (history p) = Path.trace (history q))
    (n : Nat) :
    spinReadout history observe n p = spinReadout history observe n q := by
  exact spinReadout_eq_of_history_eq history observe p q
    (Path.eq_of_trace_eq (history p) (history q) sameTrace) n

/-- No finite stage can correctly classify different intended source types
if their exact tagged histories are identical. Spin expansion alone
does not construct separating information. -/
theorem no_finite_classifier_of_identical_source_trace
    (history : P → Path (fun x y : V => x ⟶ y) a a)
    (typeOf : P → Kind)
    (observe : (n : Nat) →
      Path (iterEdge (fun x y : V => x ⟶ y) n)
        (iterAnchor a n) (iterAnchor a n) → Obs n)
    (p q : P)
    (sameTrace : Path.trace (history p) = Path.trace (history q))
    (differentType : typeOf p ≠ typeOf q) :
    ¬ ∃ N : Nat, ∃ classify :
      (((i : Fin (N + 1)) → Obs i.val) → Option Kind),
      ∀ r : P,
        classify (observationPrefix (spinReadout history observe) N r) =
          some (typeOf r) := by
  exact no_finite_spin_classifier_of_same_history
    history typeOf observe p q
    (Path.eq_of_trace_eq (history p) (history q) sameTrace)
    differentType

end ClassificationObstruction

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
end
