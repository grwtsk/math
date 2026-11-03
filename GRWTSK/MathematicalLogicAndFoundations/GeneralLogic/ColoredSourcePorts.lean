/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberBasic

set_option autoImplicit false

/-!
# Provenance-bearing templates and precisely colored, source-exact ports

A color is a presentation label, not a proof or a mathematical coercion.
The actual channel boundary is the typed source/target of a PortFiber port.
A link is composable only with a matching middle fiber, matching colored
boundary, a common repository revision, and matching middle observation.

The finite source template records literal symbols and file identity.
Source metadata is not a compiler certificate: matching recorded strings
does not prove that they describe the current repository bytes.
-/ 

namespace GRWTSK.Topology.PortFiber.Colored

universe u v w

/-- Six distinct visual channels, with no implicit arithmetic identification. -/
inductive Channel where
  | arithmetic
  | residue
  | geometry
  | harmonic
  | observer
  | residual
  deriving DecidableEq, Repr

instance : Fintype Channel where
  elems := { .arithmetic, .residue, .geometry, .harmonic, .observer, .residual }
  complete := by
    intro c
    cases c <;> simp

/-- Presentation-only encoding, for an exact port/channel legend. -/
def Channel.hex : Channel → String
  | .arithmetic => "#2563EB"
  | .residue => "#7C3AED"
  | .geometry => "#0891B2"
  | .harmonic => "#059669"
  | .observer => "#D97706"
  | .residual => "#DC2626"

/-- A finite symbol sequence, bound to an explicitly recorded source blob. -/
structure SymbolTemplate where
  origin : GRWTSK.Topology.PortFiber.SourceIdentity
  blob : String
  symbols : List String
  mathematicalRole : String
  deriving Repr

/-- Length counts declared symbols, not rendered characters or file bytes. -/
def SymbolTemplate.symbolLength (t : SymbolTemplate) : ℕ :=
  t.symbols.length

/-- A typed port with precise input/output colors, all provenance, and
an exact source observation. A numeric similarity score is not a field here. -/
structure Port (P : GRWTSK.Topology.PortFiber.{u, v, w})
    {A B : P.Obj} where
  bound : GRWTSK.Topology.PortFiber.SourceBoundPort P (A := A) (B := B)
  inputChannel : Channel
  outputChannel : Channel
  boundaryTrace : List (Channel × Channel)
  provenance : List SymbolTemplate
  provenance_revision :
    ∀ t ∈ provenance,
      t.origin.repository = bound.source.repository ∧
      t.origin.revision = bound.source.revision
  sourceObservation : P.Fiber A → ℝ
  targetObservation : P.Fiber B → ℝ
  preservesObservation :
    ∀ x, targetObservation (P.map bound.port x) = sourceObservation x

namespace Port

variable {P : GRWTSK.Topology.PortFiber.{u, v, w}}

/-- Atomic transport: the one real port is its one colored boundary.
Recorded provenance must agree with the source-bound port's revision. -/
def atomic {A B : P.Obj}
    (bound : GRWTSK.Topology.PortFiber.SourceBoundPort P (A := A) (B := B))
    (inputChannel outputChannel : Channel)
    (template : SymbolTemplate)
    (horigin :
      template.origin.repository = bound.source.repository ∧
      template.origin.revision = bound.source.revision)
    (sourceObservation : P.Fiber A → ℝ)
    (targetObservation : P.Fiber B → ℝ)
    (hobserve : ∀ x, targetObservation (P.map bound.port x) =
      sourceObservation x) : Port P where
  bound := bound
  inputChannel := inputChannel
  outputChannel := outputChannel
  boundaryTrace := [(inputChannel, outputChannel)]
  provenance := [template]
  provenance_revision := by
    intro t ht
    have heq : t = template := by simpa using ht
    subst t
    exact horigin
  sourceObservation := sourceObservation
  targetObservation := targetObservation
  preservesObservation := hobserve

/-- A compatible chain requires matching middle types (in the indices),
the exact color boundary, the same committed repository revision, and
the same middle observation. Every intermediate template is retained. -/
def comp {A B C : P.Obj}
    (p : Port P (A := A) (B := B))
    (q : Port P (A := B) (B := C))
    (hsource : GRWTSK.Topology.PortFiber.SameSource p.bound q.bound)
    (_hchannel : p.outputChannel = q.inputChannel)
    (hmiddle : p.targetObservation = q.sourceObservation) : Port P where
  bound := GRWTSK.Topology.PortFiber.SourceBoundPort.comp p.bound q.bound hsource
  inputChannel := p.inputChannel
  outputChannel := q.outputChannel
  boundaryTrace := p.boundaryTrace ++ q.boundaryTrace
  provenance := p.provenance ++ q.provenance
  provenance_revision := by
    intro t ht
    rcases List.mem_append.mp ht with hp | hq
    · exact p.provenance_revision t hp
    · obtain ⟨hrepo, hrev⟩ := q.provenance_revision t hq
      exact ⟨hrepo.trans hsource.repository_eq.symm,
        hrev.trans hsource.revision_eq.symm⟩
  sourceObservation := p.sourceObservation
  targetObservation := q.targetObservation
  preservesObservation := by
    intro x
    change q.targetObservation (P.map (P.comp p.bound.port q.bound.port) x) =
      p.sourceObservation x
    rw [P.map_comp]
    calc
      q.targetObservation (P.map q.bound.port (P.map p.bound.port x)) =
          q.sourceObservation (P.map p.bound.port x) :=
        q.preservesObservation _
      _ = p.targetObservation (P.map p.bound.port x) := by rw [hmiddle]
      _ = p.sourceObservation x := p.preservesObservation x

/-- The exact ordered color-transition sequence is preserved by composition. -/
@[simp] theorem comp_boundaryTrace {A B C : P.Obj}
    (p : Port P (A := A) (B := B))
    (q : Port P (A := B) (B := C))
    (hsource : GRWTSK.Topology.PortFiber.SameSource p.bound q.bound)
    (hchannel : p.outputChannel = q.inputChannel)
    (hmiddle : p.targetObservation = q.sourceObservation) :
    (comp p q hsource hchannel hmiddle).boundaryTrace =
      p.boundaryTrace ++ q.boundaryTrace := rfl

/-- The provenance chain is concatenated, never collapsed by ranking. -/
@[simp] theorem comp_provenance {A B C : P.Obj}
    (p : Port P (A := A) (B := B))
    (q : Port P (A := B) (B := C))
    (hsource : GRWTSK.Topology.PortFiber.SameSource p.bound q.bound)
    (hchannel : p.outputChannel = q.inputChannel)
    (hmiddle : p.targetObservation = q.sourceObservation) :
    (comp p q hsource hchannel hmiddle).provenance =
      p.provenance ++ q.provenance := rfl

/-- A further, separately proved equivalence gives genuine lift AND lower.
The generic observation-preserving port need not be invertible. -/
structure Reversible {A B : P.Obj} (p : Port P (A := A) (B := B)) where
  lower : P.Fiber B → P.Fiber A
  lower_lift : ∀ x, lower (P.map p.bound.port x) = x
  lift_lower : ∀ y, P.map p.bound.port (lower y) = y

/-- Reversible compatible ports compose without losing either direction. -/
def Reversible.comp {A B C : P.Obj}
    (p : Port P (A := A) (B := B))
    (q : Port P (A := B) (B := C))
    (hsource : GRWTSK.Topology.PortFiber.SameSource p.bound q.bound)
    (hchannel : p.outputChannel = q.inputChannel)
    (hmiddle : p.targetObservation = q.sourceObservation)
    (hp : Reversible p) (hq : Reversible q) :
    Reversible (Port.comp p q hsource hchannel hmiddle) where
  lower := fun z => hp.lower (hq.lower z)
  lower_lift := by
    intro x
    change hp.lower (hq.lower (P.map
      (P.comp p.bound.port q.bound.port) x)) = x
    rw [P.map_comp, hq.lower_lift, hp.lower_lift]
  lift_lower := by
    intro z
    change P.map (P.comp p.bound.port q.bound.port)
      (hp.lower (hq.lower z)) = z
    rw [P.map_comp, hp.lift_lower, hq.lift_lower]

end Port
end GRWTSK.Topology.PortFiber.Colored
