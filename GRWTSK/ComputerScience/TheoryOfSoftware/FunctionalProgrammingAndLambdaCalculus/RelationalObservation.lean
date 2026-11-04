import GRWTSK.ComputerScience.TheoryOfData.DataStructures.CacheFactorization

/-!
# Relational composition and the limits of replaying one observation

Local attribution: grwtsk contributors.

A behavior is a relation, not an assumed deterministic function or probability
law. Sequential composition existentially quantifies the intermediate value.
May and must postconditions pull back differently: a subset of possible outcomes
preserves may-witnesses but can make a must-condition vacuously or misleadingly
true. `single_observation_is_not_universal_evidence` is the sharp Boolean example.

A key is sufficient for relational replay exactly when the whole relation-valued
function is constant on its fibers. This reuses the existing deterministic
factorization interface at output type `Y → Prop`. It does not assume a model
invocation is deterministic. Sound observed replay permits a subset of behavior;
it does not prove termination, fairness, probabilities, or equality of behaviors.

Primary proofs move exact existential witnesses and universal postconditions
through composition. Consumers are nondeterministic adapters and sound replay
refinement. Novelty and independent analytical review: not assessed. Compilation,
fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Processing.Relational

universe u v w x k

abbrev Behavior (A : Type u) (B : Type v) := A → B → Prop

variable {A : Type u} {B : Type v} {C : Type w} {D : Type x} {K : Type k}

def identity : Behavior A A := fun a b => a = b

def sequence (first : Behavior A B) (second : Behavior B C) : Behavior A C :=
  fun a c => ∃ b, first a b ∧ second b c

def Refines (implementation specification : Behavior A B) : Prop :=
  ∀ a b, implementation a b → specification a b

def May (behavior : Behavior A B) (post : B → Prop) (a : A) : Prop :=
  ∃ b, behavior a b ∧ post b

def Must (behavior : Behavior A B) (post : B → Prop) (a : A) : Prop :=
  ∀ b, behavior a b → post b

/-- Nonempty result support is stated separately from universal partial correctness. -/
def TotalCorrect (behavior : Behavior A B) (post : B → Prop) (a : A) : Prop :=
  (∃ b, behavior a b) ∧ Must behavior post a

theorem identity_sequence (f : Behavior A B) : sequence identity f = f := by
  funext a b
  apply propext
  constructor
  · intro h
    obtain ⟨middle, equal, result⟩ := h
    cases equal
    exact result
  · intro h
    exact ⟨a, rfl, h⟩

theorem sequence_identity (f : Behavior A B) : sequence f identity = f := by
  funext a b
  apply propext
  constructor
  · intro h
    obtain ⟨middle, result, equal⟩ := h
    cases equal
    exact result
  · intro h
    exact ⟨b, h, rfl⟩

theorem sequence_associative (f : Behavior A B) (g : Behavior B C)
    (h : Behavior C D) : sequence (sequence f g) h = sequence f (sequence g h) := by
  funext a d
  apply propext
  constructor
  · intro result
    obtain ⟨c, ⟨b, hab, hbc⟩, hcd⟩ := result
    exact ⟨b, hab, c, hbc, hcd⟩
  · intro result
    obtain ⟨b, hab, ⟨c, hbc, hcd⟩⟩ := result
    exact ⟨c, ⟨b, hab, hbc⟩, hcd⟩

theorem refinement_refl (f : Behavior A B) : Refines f f := fun _ _ h => h

theorem refinement_trans {f g h : Behavior A B}
    (fg : Refines f g) (gh : Refines g h) : Refines f h :=
  fun a b proof => gh a b (fg a b proof)

theorem sequence_refinement {f f' : Behavior A B} {g g' : Behavior B C}
    (hf : Refines f' f) (hg : Refines g' g) :
    Refines (sequence f' g') (sequence f g) := by
  intro a c result
  obtain ⟨b, first, second⟩ := result
  exact ⟨b, hf a b first, hg b c second⟩

theorem may_sequence (f : Behavior A B) (g : Behavior B C) (post : C → Prop) (a : A) :
    May (sequence f g) post a ↔ May f (May g post) a := by
  constructor
  · intro result
    obtain ⟨c, ⟨b, first, second⟩, final⟩ := result
    exact ⟨b, first, c, second, final⟩
  · intro result
    obtain ⟨b, first, ⟨c, second, final⟩⟩ := result
    exact ⟨c, ⟨b, first, second⟩, final⟩

theorem must_sequence (f : Behavior A B) (g : Behavior B C) (post : C → Prop) (a : A) :
    Must (sequence f g) post a ↔ Must f (Must g post) a := by
  constructor
  · intro h b first c second
    exact h c ⟨b, first, second⟩
  · intro h c result
    obtain ⟨b, first, second⟩ := result
    exact h b first c second

theorem may_of_refinement {f g : Behavior A B} (h : Refines f g)
    {post : B → Prop} {a : A} : May f post a → May g post a := by
  intro result
  obtain ⟨b, hb, hp⟩ := result
  exact ⟨b, h a b hb, hp⟩

theorem must_of_refinement {f g : Behavior A B} (h : Refines f g)
    {post : B → Prop} {a : A} : Must g post a → Must f post a :=
  fun proof b hb => proof b (h a b hb)

/-- A strict correctness composition includes nonempty support at both stages. -/
theorem totalCorrect_sequence {f : Behavior A B} {g : Behavior B C}
    {post : C → Prop} {a : A}
    (first : TotalCorrect f (TotalCorrect g post) a) :
    TotalCorrect (sequence f g) post a := by
  constructor
  · obtain ⟨b, hb⟩ := first.1
    obtain ⟨c, hc⟩ := (first.2 b hb).1
    exact ⟨c, b, hb, hc⟩
  · intro c result
    obtain ⟨b, hb, hc⟩ := result
    exact (first.2 b hb).2 c hc

/-- Equal keys must preserve every possible result, not only one sampled result. -/
def KeySufficient (key : A → K) (behavior : Behavior A B) : Prop :=
  ∀ a a', key a = key a' → ∀ b, behavior a b ↔ behavior a' b

theorem keySufficient_iff_fiberConstant (key : A → K) (behavior : Behavior A B) :
    KeySufficient key behavior ↔ GRWTSK.Cache.FiberConstant key behavior := by
  constructor
  · intro h a a' same
    funext b
    exact propext (h a a' same b)
  · intro h a a' same b
    have equal : behavior a b = behavior a' b := congrFun (h a a' same) b
    cases equal
    exact Iff.rfl

theorem keySufficient_sequence {key : A → K} {f : Behavior A B}
    (sufficient : KeySufficient key f) (g : Behavior B C) :
    KeySufficient key (sequence f g) := by
  intro a a' same c
  constructor
  · intro h
    obtain ⟨b, first, second⟩ := h
    exact ⟨b, (sufficient a a' same b).mp first, second⟩
  · intro h
    obtain ⟨b, first, second⟩ := h
    exact ⟨b, (sufficient a a' same b).mpr first, second⟩

/-- Store observations as a relation; their number does not imply exhaustiveness. -/
def observationsByKey (key : A → K) (observed : Behavior A B) : K → B → Prop :=
  fun k b => ∃ a, key a = k ∧ observed a b

def ReplaySound (key : A → K) (behavior : Behavior A B) (store : K → B → Prop) : Prop :=
  ∀ a b, store (key a) b → behavior a b

theorem observed_replay_sound {key : A → K} {behavior observed : Behavior A B}
    (sufficient : KeySufficient key behavior) (sound : Refines observed behavior) :
    ReplaySound key behavior (observationsByKey key observed) := by
  intro a b retained
  obtain ⟨source, same, seen⟩ := retained
  exact (sufficient source a same b).mp (sound source b seen)

/-- The complete relational cache characterizes sufficiency, not determinism. -/
theorem sufficient_iff_complete_replay_sound (key : A → K) (behavior : Behavior A B) :
    KeySufficient key behavior ↔
      ReplaySound key behavior (observationsByKey key behavior) := by
  constructor
  · intro h
    exact observed_replay_sound h (refinement_refl behavior)
  · intro h a a' same b
    constructor
    · intro hb
      exact h a' b ⟨a, same, hb⟩
    · intro hb
      exact h a b ⟨a', same.symm, hb⟩

/-- A sound observation can satisfy a universal property that the full behavior violates. -/
theorem single_observation_is_not_universal_evidence :
    Refines (fun _ : Unit => fun b : Bool => b = false) (fun _ _ => True) ∧
    Must (fun _ : Unit => fun b : Bool => b = false) (fun b => b = false) () ∧
    ¬ Must (fun _ : Unit => fun _ : Bool => True) (fun b => b = false) () := by
  constructor
  · intro _ _ _
    exact True.intro
  · constructor
    · exact fun _ h => h
    · intro universal
      have impossible : true = false := universal true True.intro
      cases impossible

/-- Universal partial correctness alone says nothing about existence of a result. -/
theorem empty_behavior_is_not_total (post : B → Prop) (a : A) :
    Must (fun _ : A => fun _ : B => False) post a ∧
    ¬ TotalCorrect (fun _ : A => fun _ : B => False) post a := by
  constructor
  · exact fun _ h => False.elim h
  · intro total
    obtain ⟨_, impossible⟩ := total.1
    exact impossible

end GRWTSK.Processing.Relational
