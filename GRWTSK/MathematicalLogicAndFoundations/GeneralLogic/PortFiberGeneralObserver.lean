/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberBasic
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# General observer of a typed port-fiber system

This extends the existing GRWTSK.Topology.PortFiber rather than
inventing a second port category.

An observer reads an actual fiber, with a single declared value type;
it does NOT infer that a port preserves the observation. A total
observation retains the object's identity in a Sigma fiber. A partial
sample of original occurrences uses Option: unmatched occurrences
remain None and are not given fabricated default fibers.

A relay acts by actual typed port maps, with identity and composition
inherited from the original PortFiber laws. Readout preservation and
curve/class predicates require separate explicit propositions. There
is no implicit isogeny, geometric observer, numerical error estimate,
proof acceptance, or source revision change.
-/

namespace GRWTSK.Topology.PortFiber

/-- The complete heterogeneous dependent fiber: the index object is
part of the observation. Two distinct base objects cannot be coerced
into one another by matching a residue or color. -/
abbrev TotalFiber (P : GRWTSK.Topology.PortFiber) : Type _ :=
  Sigma P.Fiber

/-- A GENERAL typed observer, with readout not necessarily invariant
under arbitrary ports. Source and model comparison are separate. -/
structure Readout (P : GRWTSK.Topology.PortFiber) (V : Type*) where
  observe : ∀ A : P.Obj, P.Fiber A → V

/-- An actual heterogeneous fiber carries the base object used to
select the readout. -/
def Readout.total {P : GRWTSK.Topology.PortFiber} {V : Type*}
    (O : Readout P V) (x : TotalFiber P) : V :=
  O.observe x.1 x.2

/-- An arrow on EACH object of the existing port family. Its map is
constructed using the real P.Port and P.map, not a free replacement. -/
structure Relay (P : GRWTSK.Topology.PortFiber) where
  target : P.Obj → P.Obj
  port : ∀ A : P.Obj, P.Port A (target A)

namespace Relay

variable {P : GRWTSK.Topology.PortFiber}

/-- Identity uses the existing PortFiber.identity, not an assumed
observation-preservation theorem. -/
def identity (P : GRWTSK.Topology.PortFiber) : Relay P where
  target := id
  port := P.identity

/-- Port composition uses the actual middle base object. -/
def comp (f g : Relay P) : Relay P where
  target A := g.target (f.target A)
  port A := P.comp (f.port A) (g.port (f.target A))

/-- A port relay transforms the COMPLETE source object and its fiber. -/
def mapTotal (f : Relay P) (x : TotalFiber P) : TotalFiber P :=
  ⟨f.target x.1, P.map (f.port x.1) x.2⟩

theorem mapTotal_identity (x : TotalFiber P) :
    (identity P).mapTotal x = x := by
  rcases x with ⟨A, x⟩
  change (⟨A, P.map (P.identity A) x⟩ : TotalFiber P) =
    ⟨A, x⟩
  rw [P.map_identity]

/-- Exact functoriality of the heterogeneous fiber action. -/
theorem mapTotal_comp (f g : Relay P) (x : TotalFiber P) :
    (comp f g).mapTotal x = g.mapTotal (f.mapTotal x) := by
  rcases x with ⟨A, x⟩
  change
    (⟨g.target (f.target A),
        P.map (P.comp (f.port A) (g.port (f.target A))) x⟩ :
        TotalFiber P) =
      (⟨g.target (f.target A),
        P.map (g.port (f.target A)) (P.map (f.port A) x)⟩ :
        TotalFiber P)
  rw [P.map_comp]

end Relay

/-- One original occurrence can be observed through any fiber, or
can be genuinely unavailable. The original index is never quotiented
by an observer-result equality. -/
structure PartialSample (P : GRWTSK.Topology.PortFiber)
    (ι : Type*) where
  route : ι → Option (TotalFiber P)

namespace PartialSample

variable {P : GRWTSK.Topology.PortFiber} {ι : Type*}

/-- A legitimate empty observation has NO fabricated source fibers. -/
def empty (P : GRWTSK.Topology.PortFiber) (ι : Type*) :
    PartialSample P ι where
  route := fun _ => none

/-- Route each actual observation through an existing typed port;
unmatched occurrences remain unmatched. -/
def relay (S : PartialSample P ι) (f : Relay P) :
    PartialSample P ι where
  route i := (S.route i).map f.mapTotal

theorem relay_none_iff (S : PartialSample P ι) (f : Relay P)
    (i : ι) :
    (S.relay f).route i = none ↔ S.route i = none := by
  cases h : S.route i with
  | none => simp [relay, h]
  | some x => simp [relay, h]

theorem relay_some (S : PartialSample P ι) (f : Relay P)
    (i : ι) (x : TotalFiber P) (h : S.route i = some x) :
    (S.relay f).route i = some (f.mapTotal x) := by
  simp [relay, h]

/-- The untouched index set is invariant under a typed port relay.
No claim is made that its readout is also unchanged. -/
theorem relay_preserves_coverage (S : PartialSample P ι)
    (f : Relay P) (i : ι) :
    (∃ x, (S.relay f).route i = some x) ↔
      ∃ x, S.route i = some x := by
  cases h : S.route i with
  | none =>
      simp [relay, h]
  | some x =>
      simp [relay, h]

end PartialSample

/-- An inherited property is indexed by the actual base object.
Its presence on a fiber is not a proof that the property holds. -/
def Inherits {P : GRWTSK.Topology.PortFiber}
    (Class : P.Obj → Prop) (x : TotalFiber P) : Prop :=
  Class x.1

/-- A separate evidence carrier: port maps do not automatically preserve
CM, torsion, Selmer, positivity, physical observer normalization or
any arbitrary user-selected curve/property class. -/
def ClassPreserving {P : GRWTSK.Topology.PortFiber}
    (f : Relay P) (Class : P.Obj → Prop) : Prop :=
  ∀ A, Class A → Class (f.target A)

theorem inherited_of_classPreserving
    {P : GRWTSK.Topology.PortFiber}
    (f : Relay P) (Class : P.Obj → Prop)
    (hf : ClassPreserving f Class)
    (x : TotalFiber P) (h : Inherits Class x) :
    Inherits Class (f.mapTotal x) :=
  hf x.1 h

/-- Readout invariance is likewise a proposition that must be PROVED
for the particular observer and port relay. -/
def Readout.Preserves {P : GRWTSK.Topology.PortFiber}
    {V : Type*} (O : Readout P V) (f : Relay P) : Prop :=
  ∀ x : TotalFiber P, O.total (f.mapTotal x) = O.total x

theorem Readout.preserves_identity {P : GRWTSK.Topology.PortFiber}
    {V : Type*} (O : Readout P V) :
    O.Preserves (Relay.identity P) := by
  intro x
  rw [Relay.mapTotal_identity]

theorem Readout.preserves_comp {P : GRWTSK.Topology.PortFiber}
    {V : Type*} (O : Readout P V) (f g : Relay P)
    (hf : O.Preserves f) (hg : O.Preserves g) :
    O.Preserves (Relay.comp f g) := by
  intro x
  rw [Relay.mapTotal_comp]
  exact (hg (f.mapTotal x)).trans (hf x)

/-- The *actual* optional observer result is None when unavailable.
No zero, positivity, or default value is silently substituted. -/
def PartialSample.read {P : GRWTSK.Topology.PortFiber}
    {ι V : Type*} (S : PartialSample P ι)
    (O : Readout P V) (i : ι) : Option V :=
  (S.route i).map O.total

theorem PartialSample.read_none_iff
    {P : GRWTSK.Topology.PortFiber} {ι V : Type*}
    (S : PartialSample P ι) (O : Readout P V) (i : ι) :
    S.read O i = none ↔ S.route i = none := by
  cases h : S.route i with
  | none => simp [PartialSample.read, h]
  | some x => simp [PartialSample.read, h]

/-- With an explicit invariance proof, the same observer readout
survives real port routing. Without it the theorem is unavailable. -/
theorem PartialSample.read_relay_of_preserves
    {P : GRWTSK.Topology.PortFiber} {ι V : Type*}
    (S : PartialSample P ι) (O : Readout P V)
    (f : Relay P) (hf : O.Preserves f) (i : ι) :
    (S.relay f).read O i = S.read O i := by
  cases h : S.route i with
  | none => simp [PartialSample.read, PartialSample.relay, h]
  | some x =>
      simp [PartialSample.read, PartialSample.relay, h, hf x]


/-- Source identity and invalidation information for an observer.
These are immutable DECLARED identities, not automatic evidence that
the source bytes or mathematical correspondence have been audited. -/
structure SourceBoundReadout (P : GRWTSK.Topology.PortFiber)
    (V : Type*) where
  readout : Readout P V
  source : SourceIdentity
  invalidationKey : String

/-- An observer and a source-bound port may be composed under the
repository's custody rule only after their repository and revision
have separately been shown equal. Matching labels alone are not a
mathematical readout-preservation theorem. -/
def SourceBoundReadout.MatchesPort
    {P : GRWTSK.Topology.PortFiber} {V : Type*}
    (O : SourceBoundReadout P V)
    {A B : P.Obj} (p : SourceBoundPort P (A := A) (B := B)) :
    Prop :=
  O.source.repository = p.source.repository ∧
    O.source.revision = p.source.revision

/-! ## Hostile: a legal port need not preserve a readout -/

/-- An actual instance of the preexisting function-port system. -/
def BooleanFiberSystem : GRWTSK.Topology.PortFiber :=
  GRWTSK.Topology.PortFiber.ofFunctions Unit (fun _ => Bool)

/-- This observer genuinely reads the fiber bit. -/
def booleanReadout : Readout BooleanFiberSystem Bool where
  observe := fun _ x => x

/-- The perfectly legal constant port loses the original bit. -/
def booleanCollapse : Relay BooleanFiberSystem where
  target := id
  port := fun _ _ => false

/-- A typed port alone cannot license readout invariance.
The actual bit true becomes false under this legal map. -/
theorem boolean_collapse_not_preserving :
    ¬ booleanReadout.Preserves booleanCollapse := by
  intro h
  have hbad := h (⟨(), true⟩ : TotalFiber BooleanFiberSystem)
  have hf : false = true := by
    simpa [Readout.Preserves, Readout.total,
      Relay.mapTotal, booleanReadout, booleanCollapse,
      BooleanFiberSystem, GRWTSK.Topology.PortFiber.ofFunctions] using hbad
  cases hf

end GRWTSK.Topology.PortFiber
