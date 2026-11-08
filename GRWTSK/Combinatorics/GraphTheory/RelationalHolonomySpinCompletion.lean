/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate: native elaboration and kernel audit NOT_RUN.
This is a graph/transport construction, not a biological or physical claim. -/
import Mathlib

/-!
# Typed relational holonomy and conservative spin-graph retries

A directed multigraph has dependent edge types. Its paths are indexed by both
endpoints, so arbitrary disconnected edge lists cannot count as histories.
Holonomy respects path concatenation and its frame-change law is proved.

A failed loop classification constructs a graph with two oriented spin sheets,
entry/exit edges and spin-flip edges. The loop can be routed through one new
sheet; erasing spin structure recovers the original ordered path exactly.
An answer found on a lifted path is accepted for the original path ONLY through
an explicit source-soundness hypothesis.

The extension is conservative at the finite Hilbert-coordinate level, and may
be iterated through any finite number of unsuccessful attempts. New representable
labels, runtime authority, well-founded termination and physical interpretation
are NOT consequences of the construction.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

universe u v w z

/-- A genuine composable relational history in a directed multigraph. -/
inductive Path {V : Type u} (E : V → V → Type v) : V → V → Type (max u v) where
  | refl (a : V) : Path E a a
  | cons {a b c : V} (edge : E a b) (rest : Path E b c) : Path E a c

namespace Path

variable {V : Type u} {E : V → V → Type v}

/-- Concatenation is available only when the middle vertices agree by type. -/
def append {a b c : V} (p : Path E a b) (q : Path E b c) : Path E a c :=
  match p with
  | .refl _ => q
  | .cons e rest => .cons e (append rest q)

@[simp] theorem refl_append {a b : V} (p : Path E a b) :
    (Path.refl a).append p = p := rfl

@[simp] theorem append_refl {a b : V} (p : Path E a b) :
    p.append (Path.refl b) = p := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [append, ih]

theorem append_assoc {a b c d : V}
    (p : Path E a b) (q : Path E b c) (r : Path E c d) :
    (p.append q).append r = p.append (q.append r) := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [append, ih]

/-- Edge labels are read in their original order; they are not a multiset. -/
def labels {Kind : Type w} (kind : ∀ {a b : V}, E a b → Kind)
    {a b : V} : Path E a b → List Kind
  | .refl _ => []
  | .cons e rest => kind e :: labels kind rest

@[simp] theorem labels_append {Kind : Type w}
    (kind : ∀ {a b : V}, E a b → Kind)
    {a b c : V} (p : Path E a b) (q : Path E b c) :
    labels kind (p.append q) = labels kind p ++ labels kind q := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [append, labels, ih]

/-- Ordered group-valued transport. A noncommutative group retains order. -/
def holonomy {G : Type w} [Monoid G]
    (U : ∀ {a b : V}, E a b → G) {a b : V} : Path E a b → G
  | .refl _ => 1
  | .cons e rest => U e * holonomy U rest

@[simp] theorem holonomy_append {G : Type w} [Monoid G]
    (U : ∀ {a b : V}, E a b → G)
    {a b c : V} (p : Path E a b) (q : Path E b c) :
    holonomy U (p.append q) = holonomy U p * holonomy U q := by
  induction p with
  | refl _ => simp [append, holonomy]
  | cons e rest ih => simp [append, holonomy, ih, mul_assoc]

/-- A relational event can carry an impact on every other participant.
    Additivity is a model choice, not a psychology theorem. -/
def review {R : Type w} [AddMonoid R]
    (impact : ∀ {a b : V}, E a b → R)
    {a b : V} : Path E a b → R
  | .refl _ => 0
  | .cons e rest => impact e + review impact rest

@[simp] theorem review_append {R : Type w} [AddMonoid R]
    (impact : ∀ {a b : V}, E a b → R)
    {a b c : V} (p : Path E a b) (q : Path E b c) :
    review impact (p.append q) = review impact p + review impact q := by
  induction p with
  | refl _ => simp [append, review]
  | cons e rest ih => simp [append, review, ih, add_assoc]

/-- Changing local frames at both endpoints is not the same as erasing a path. -/
def gaugeEdge {G : Type w} [Group G]
    (frame : V → G) (U : ∀ {a b : V}, E a b → G)
    {a b : V} (edge : E a b) : G :=
  frame a * U edge * (frame b)⁻¹

/-- Full endpoint covariance of holonomy, including open paths. -/
theorem holonomy_gauge {G : Type w} [Group G]
    (frame : V → G) (U : ∀ {a b : V}, E a b → G)
    {a b : V} (p : Path E a b) :
    holonomy (gaugeEdge frame U) p =
      frame a * holonomy U p * (frame b)⁻¹ := by
  induction p with
  | refl a => simp [holonomy]
  | cons e rest ih =>
      simp only [holonomy, gaugeEdge]
      rw [ih]
      group

end Path

/-- Gauge invariance is an explicitly supplied property of an observation. -/
structure ConjugationInvariant (G : Type w) [Group G] (View : Type z) where
  observe : G → View
  invariant : ∀ g x, observe (g * x * g⁻¹) = observe x

/-- A closed loop has a gauge-invariant readout, but not an injective encoding. -/
theorem loop_readout_frame_invariant {V : Type u} {E : V → V → Type v}
    {G : Type w} [Group G] {View : Type z}
    (o : ConjugationInvariant G View)
    (frame : V → G) (U : ∀ {a b : V}, E a b → G)
    {a : V} (p : Path E a a) :
    o.observe (Path.holonomy (Path.gaugeEdge frame U) p) =
      o.observe (Path.holonomy U p) := by
  rw [Path.holonomy_gauge]
  exact o.invariant (frame a) (Path.holonomy U p)

/-- Ordinary action invariance remains distinct from gauge invariance. -/
structure InvariantObserver (State : Type u) (Action : Type v)
    (View : Type w) where
  observe : State → View
  act : Action → State → State
  invariant : ∀ a x, observe (act a x) = observe x

def applyActions {State : Type u} {Action : Type v}
    (act : Action → State → State) : List Action → State → State
  | [], x => x
  | a :: rest, x => applyActions act rest (act a x)

/-- Observed invariance propagates through every finite admitted action list. -/
theorem observation_invariant_under_actions
    {State : Type u} {Action : Type v} {View : Type w}
    (o : InvariantObserver State Action View)
    (actions : List Action) (x : State) :
    o.observe (applyActions o.act actions x) = o.observe x := by
  induction actions generalizing x with
  | nil => rfl
  | cons a rest ih =>
      exact (ih (o.act a x)).trans (o.invariant a x)

/-- Old vertices and a pair of distinct orientations for each old vertex. -/
abbrev CompletedVertex (V : Type u) := Sum V (V × Bool)

/-- Discard a new orientation only to *read the underlying old vertex*. -/
def forgetVertex {V : Type u} : CompletedVertex V → V
  | .inl a => a
  | .inr (a, _) => a

/-- Real adjacency: old edges, parallel spin-sheet edges, portals and flips. -/
inductive SpinEdge {V : Type u} (E : V → V → Type v) :
    CompletedVertex V → CompletedVertex V → Type (max u v) where
  | old {a b : V} (e : E a b) : SpinEdge E (.inl a) (.inl b)
  | sheet {a b : V} (e : E a b) (s : Bool) :
      SpinEdge E (.inr (a, s)) (.inr (b, s))
  | enter (a : V) (s : Bool) : SpinEdge E (.inl a) (.inr (a, s))
  | exit (a : V) (s : Bool) : SpinEdge E (.inr (a, s)) (.inl a)
  | flip (a : V) (s : Bool) : SpinEdge E (.inr (a, s)) (.inr (a, !s))

namespace SpinEdge

variable {V : Type u} {E : V → V → Type v}

/-- Each new edge is mapped to an exact old path; portal/flip edges stutter. -/
def erase {a b : CompletedVertex V} :
    SpinEdge E a b → Path E (forgetVertex a) (forgetVertex b)
  | .old e => .cons e (.refl _)
  | .sheet e _ => .cons e (.refl _)
  | .enter _ _ => .refl _
  | .exit _ _ => .refl _
  | .flip _ _ => .refl _

end SpinEdge

namespace SpinPath

variable {V : Type u} {E : V → V → Type v}

/-- Erasure is a graph-path map, not a lossy endpoint-only projection. -/
def erase {a b : CompletedVertex V} :
    Path (SpinEdge E) a b → Path E (forgetVertex a) (forgetVertex b)
  | .refl _ => .refl _
  | .cons e rest => (SpinEdge.erase e).append (erase rest)

/-- Exact erasure law for composition of new paths. -/
theorem erase_append {a b c : CompletedVertex V}
    (p : Path (SpinEdge E) a b) (q : Path (SpinEdge E) b c) :
    erase (p.append q) = (erase p).append (erase q) := by
  induction p with
  | refl _ => rfl
  | cons e rest ih =>
      change (SpinEdge.erase e).append (erase (rest.append q)) =
        ((SpinEdge.erase e).append (erase rest)).append (erase q)
      rw [ih, Path.append_assoc]

/-- Lift a path without changing any original edge. -/
def oldLift {a b : V} : Path E a b →
    Path (SpinEdge E) (.inl a) (.inl b)
  | .refl _ => .refl _
  | .cons e rest => .cons (.old e) (oldLift rest)

/-- Lift the same ordered path into one new spin sheet. -/
def sheetLift (s : Bool) {a b : V} : Path E a b →
    Path (SpinEdge E) (.inr (a, s)) (.inr (b, s))
  | .refl _ => .refl _
  | .cons e rest => .cons (.sheet e s) (sheetLift s rest)

@[simp] theorem erase_oldLift {a b : V} (p : Path E a b) :
    erase (oldLift p) = p := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [oldLift, erase, SpinEdge.erase, Path.append, ih]

@[simp] theorem erase_sheetLift (s : Bool) {a b : V} (p : Path E a b) :
    erase (sheetLift s p) = p := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [sheetLift, erase, SpinEdge.erase, Path.append, ih]

/-- A genuine spin-sheet loop: enter, follow old loop, then exit. -/
def retryLoop {a : V} (p : Path E a a) (s : Bool) :
    Path (SpinEdge E) (.inl a) (.inl a) :=
  .cons (.enter a s)
    ((sheetLift s p).append (.cons (.exit a s) (.refl _)))

/-- The crucial return theorem: the *entire ordered history* survives retry. -/
@[simp] theorem erase_retryLoop {a : V} (p : Path E a a) (s : Bool) :
    erase (retryLoop p s) = p := by
  simp [retryLoop, erase, erase_append, Path.append,
        erase_sheetLift, SpinEdge.erase]

end SpinPath

/-- A frame change on spin orientation (not a claim of physical SU(2) spin). -/
def spinFlipVertex {V : Type u} : CompletedVertex V → CompletedVertex V
  | .inl a => .inl a
  | .inr (a, s) => .inr (a, !s)

@[simp] theorem spinFlipVertex_twice {V : Type u} (v : CompletedVertex V) :
    spinFlipVertex (spinFlipVertex v) = v := by
  cases v with
  | inl a => rfl
  | inr pair =>
      rcases pair with ⟨a, s⟩
      cases s <;> rfl

/-- Read and reconstruct the original complex amplitudes exactly. -/
def includeAmplitude {V : Type u} (f : V → ℂ) : CompletedVertex V → ℂ
  | .inl v => f v
  | .inr _ => 0

def recoverAmplitude {V : Type u} (f : CompletedVertex V → ℂ) : V → ℂ :=
  fun v => f (.inl v)

@[simp] theorem recover_include_amplitude {V : Type u} (f : V → ℂ) :
    recoverAmplitude (includeAmplitude f) = f := by
  funext v
  rfl

/-- Standard finite complex ℓ² pairing (antilinear in the first argument). -/
def originalInner {V : Type u} [Fintype V] (f g : V → ℂ) : ℂ :=
  ∑ v, star (f v) * g v

/-- Exact direct-sum inner product on old coordinates and the two spin sheets. -/
def extendedInner {V : Type u} [Fintype V]
    (f g : CompletedVertex V → ℂ) : ℂ :=
  (∑ v : V, star (f (.inl v)) * g (.inl v)) +
  (∑ w : V × Bool, star (f (.inr w)) * g (.inr w))

/-- The new coordinate carrier is an isometric extension at the finite ℓ² level. -/
theorem include_inner {V : Type u} [Fintype V] (f g : V → ℂ) :
    extendedInner (includeAmplitude f) (includeAmplitude g) =
      originalInner f g := by
  simp [extendedInner, originalInner, includeAmplitude]

/-- New spin transport may be arbitrary; old-transport return stays exact. -/
structure TransportExtension {V : Type u} (E : V → V → Type v)
    (G : Type w) where
  original : ∀ {a b : V}, E a b → G
  sheet : ∀ {a b : V}, E a b → Bool → G
  enter : V → Bool → G
  exit : V → Bool → G
  flip : V → Bool → G

namespace TransportExtension

variable {V : Type u} {E : V → V → Type v} {G : Type w} [Monoid G]

def onSpin (T : TransportExtension E G) {a b : CompletedVertex V} :
    SpinEdge E a b → G
  | .old e => T.original e
  | .sheet e s => T.sheet e s
  | .enter a s => T.enter a s
  | .exit a s => T.exit a s
  | .flip a s => T.flip a s

/-- Exact old holonomy survives, without constraining novel spin transports. -/
@[simp] theorem holonomy_oldLift (T : TransportExtension E G)
    {a b : V} (p : Path E a b) :
    Path.holonomy T.onSpin (SpinPath.oldLift p) =
      Path.holonomy T.original p := by
  induction p with
  | refl _ => rfl
  | cons e rest ih => simp [SpinPath.oldLift, Path.holonomy, onSpin, ih]

end TransportExtension

/-- Sound classification carries proof of an admissible type for the source loop. -/
def attempt {V : Type u} {E : V → V → Type v} {Kind : Type w}
    {a : V} (Valid : Path E a a → Kind → Prop)
    (classify : Path E a a → Option Kind)
    (sound : ∀ p k, classify p = some k → Valid p k)
    (p : Path E a a) :
    {k : Kind // Valid p k} ⊕
      {q : Path (SpinEdge E) (.inl a) (.inl a) // SpinPath.erase q = p} :=
  match hc : classify p with
  | none => .inr ⟨SpinPath.retryLoop p false,
                   SpinPath.erase_retryLoop p false⟩
  | some k => .inl ⟨k, sound p k hc⟩

/-- A missing classification returns a path with an exact source-history witness. -/
theorem attempt_failure {V : Type u} {E : V → V → Type v}
    {Kind : Type w} {a : V}
    (Valid : Path E a a → Kind → Prop)
    (classify : Path E a a → Option Kind)
    (sound : ∀ p k, classify p = some k → Valid p k)
    (p : Path E a a) (missing : classify p = none) :
    ∃ q, attempt Valid classify sound p = Sum.inr q ∧
      SpinPath.erase q.val = p := by
  refine ⟨⟨SpinPath.retryLoop p false, SpinPath.erase_retryLoop p false⟩,
    ?_, SpinPath.erase_retryLoop p false⟩
  simp [attempt, missing]

/-- A type found on a new sheet is a source type only if the source-return
    predicate is justified; spin extension alone cannot provide this premise. -/
theorem retry_type_sound {V : Type u} {E : V → V → Type v}
    {Kind : Type w} {a : V}
    (Accept : Path E a a → Kind → Prop)
    (newClassify : Path (SpinEdge E) (.inl a) (.inl a) → Option Kind)
    (returnSound : ∀ q k, newClassify q = some k →
      Accept (SpinPath.erase q) k)
    (p : Path E a a) (k : Kind)
    (accepted : newClassify (SpinPath.retryLoop p false) = some k) :
    Accept p k := by
  simpa using returnSound (SpinPath.retryLoop p false) k accepted

/-- Finite recursive expansion: the next vertex type is old plus two sheets. -/
def iterVertex (V : Type u) : Nat → Type u
  | 0 => V
  | n + 1 => CompletedVertex (iterVertex V n)

/-- At each recursion level the graph gains exactly the specified spin edges. -/
def iterEdge {V : Type u} (E : V → V → Type v) :
    (n : Nat) → iterVertex V n → iterVertex V n → Type (max u v)
  | 0 => E
  | n + 1 => SpinEdge (iterEdge E n)

/-- The source basepoint is retained through all finite extensions. -/
def iterAnchor {V : Type u} (a : V) : (n : Nat) → iterVertex V n
  | 0 => a
  | n + 1 => .inl (iterAnchor a n)

/-- The corkscrew history after `n` missing classifications. -/
def pendingLoop {V : Type u} {E : V → V → Type v} {a : V}
    (p : Path E a a) : (n : Nat) →
      Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n)
  | 0 => p
  | n + 1 => SpinPath.retryLoop (pendingLoop p n) false

/-- Each new stage recovers its immediate predecessor, hence by iteration its
    entire original path. The theorem does not say that a type is discovered. -/
theorem pendingLoop_recover {V : Type u} {E : V → V → Type v}
    {a : V} (p : Path E a a) (n : Nat) :
    SpinPath.erase (pendingLoop p (n + 1)) = pendingLoop p n := by
  exact SpinPath.erase_retryLoop (pendingLoop p n) false

/-- Explicit countermodel to unqualified termination: every stage can fail. -/
def neverClassify {V : Type u} {E : V → V → Type v}
    {Kind : Type w} {a : V} (p : Path E a a) (n : Nat) :
    Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) → Option Kind :=
  fun _ => none

@[simp] theorem neverClassify_pending {V : Type u} {E : V → V → Type v}
    {Kind : Type w} {a : V} (p : Path E a a) (n : Nat) :
    neverClassify (Kind := Kind) p n (pendingLoop p n) = none := rfl

/-- New type positions are added without changing the identity of old types. -/
def iterKind (Kind : Type w) : Nat → Type w
  | 0 => Kind
  | n + 1 => Sum (iterKind Kind n) (iterKind Kind n × Bool)

/-- A one-stage type return is partial: a novel spin label is not an old label. -/
def returnOldKind {Kind : Type w} : Sum Kind (Kind × Bool) → Option Kind
  | .inl k => some k
  | .inr _ => none

@[simp] theorem returnOldKind_old {Kind : Type w} (k : Kind) :
    returnOldKind (Sum.inl k : Sum Kind (Kind × Bool)) = some k := rfl

/-- An infinite sequence of strictly decreasing natural ranks is impossible. -/
theorem no_infinite_strict_rank (rank : Nat → Nat)
    (decreases : ∀ n, rank (n + 1) < rank n) : False := by
  have bounded : ∀ n, rank n + n ≤ rank 0 := by
    intro n
    induction n with
    | zero => omega
    | succ n ih =>
        have h := decreases n
        omega
  have h := bounded (rank 0 + 1)
  omega

/-- Conditional progress theorem. *Only* a proved well-founded rank decrease
    during successive failures forces a successful type discovery. -/
theorem eventual_type_if_rank_decreases
    {V : Type u} {E : V → V → Type v} {Kind : Type w} {a : V}
    (p : Path E a a)
    (classify : (n : Nat) →
      Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) →
      Option (iterKind Kind n))
    (rank : Nat → Nat)
    (decrease : ∀ n,
      classify n (pendingLoop p n) = none →
      classify (n + 1) (pendingLoop p (n + 1)) = none →
      rank (n + 1) < rank n) :
    ∃ n, ∃ k : iterKind Kind n, classify n (pendingLoop p n) = some k := by
  by_contra h
  push_neg at h
  have missing : ∀ n, classify n (pendingLoop p n) = none := by
    intro n
    cases hc : classify n (pendingLoop p n) with
    | none => exact hc
    | some k => exact False.elim (h n k hc)
  exact no_infinite_strict_rank rank (fun n =>
    decrease n (missing n) (missing (n + 1)))

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
