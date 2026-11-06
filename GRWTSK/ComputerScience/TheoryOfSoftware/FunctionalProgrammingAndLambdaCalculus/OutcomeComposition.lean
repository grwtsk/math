import Init

/-!
# Total stages with distinct refusal and failure

Local attribution: grwtsk contributors.

These are total mathematical functions, not an operational scheduler. A stage
returns a value, a refusal, or a failure. Sequencing substitutes only in the value
case. Its associativity follows by eliminating the first outcome; no commutation
of effects, cancellation, deadlines, or parallel execution is inferred.

The predicate-transformer theorem is the consumer: a composed stage satisfies a
postcondition exactly when its first stage satisfies the pulled-back condition.
The successful-output theorem retains an actual intermediate witness rather than
turning an unsuccessful branch into an empty success. `noncommuting_stages` is a
hostile check against confusing associativity with permutation invariance.

Mathematical argument: constructor elimination and substitution. Independent
analytic review and novelty: not assessed. Compilation, fresh kernel checking,
and transitive axiom audit: NOT_RUN. No new axioms or admitted proof terms.
-/

namespace GRWTSK.Processing

universe u v w x y z

inductive Outcome (Refusal : Type u) (Failure : Type v) (Value : Type w) where
  | success : Value → Outcome Refusal Failure Value
  | refused : Refusal → Outcome Refusal Failure Value
  | failed : Failure → Outcome Refusal Failure Value

namespace Outcome

variable {R : Type u} {E : Type v} {A : Type w} {B : Type x}
  {C : Type y} {D : Type z}

def bind (result : Outcome R E A) (next : A → Outcome R E B) : Outcome R E B :=
  match result with
  | .success a => next a
  | .refused r => .refused r
  | .failed e => .failed e

def map (f : A → B) (result : Outcome R E A) : Outcome R E B :=
  bind result (fun a => .success (f a))

@[simp] theorem bind_success (a : A) (f : A → Outcome R E B) :
    bind (.success a) f = f a := rfl

@[simp] theorem bind_refused (r : R) (f : A → Outcome R E B) :
    bind (.refused r) f = .refused r := rfl

@[simp] theorem bind_failed (e : E) (f : A → Outcome R E B) :
    bind (.failed e) f = .failed e := rfl

@[simp] theorem bind_right_identity (result : Outcome R E A) :
    bind result Outcome.success = result := by
  cases result <;> rfl

theorem bind_associative (result : Outcome R E A)
    (f : A → Outcome R E B) (g : B → Outcome R E C) :
    bind (bind result f) g = bind result (fun a => bind (f a) g) := by
  cases result <;> rfl

@[simp] theorem map_identity (result : Outcome R E A) :
    map (fun a => a) result = result := by
  cases result <;> rfl

theorem map_composition (f : A → B) (g : B → C) (result : Outcome R E A) :
    map g (map f result) = map (fun a => g (f a)) result := by
  cases result <;> rfl

theorem map_bind (result : Outcome R E A) (f : A → Outcome R E B) (g : B → C) :
    map g (bind result f) = bind result (fun a => map g (f a)) := by
  cases result <;> rfl

theorem bind_map (result : Outcome R E A) (f : A → B) (g : B → Outcome R E C) :
    bind (map f result) g = bind result (fun a => g (f a)) := by
  cases result <;> rfl

/-- A success has a successful predecessor and an exact intermediate value. -/
theorem bind_success_iff (result : Outcome R E A)
    (f : A → Outcome R E B) (b : B) :
    bind result f = .success b ↔
      ∃ a, result = .success a ∧ f a = .success b := by
  cases result with
  | success a =>
      constructor
      · intro h
        exact ⟨a, rfl, h⟩
      · intro h
        obtain ⟨a', ha, hb⟩ := h
        cases ha
        exact hb
  | refused r =>
      constructor
      · intro h
        cases h
      · intro h
        obtain ⟨a, ha, _⟩ := h
        cases ha
  | failed e =>
      constructor
      · intro h
        cases h
      · intro h
        obtain ⟨a, ha, _⟩ := h
        cases ha

/-- Lift three separately chosen postconditions; a failure is not success. -/
def satisfies (onValue : A → Prop) (onRefusal : R → Prop)
    (onFailure : E → Prop) (result : Outcome R E A) : Prop :=
  match result with
  | .success a => onValue a
  | .refused r => onRefusal r
  | .failed e => onFailure e

theorem satisfies_bind (result : Outcome R E A) (next : A → Outcome R E B)
    (post : B → Prop) (refusal : R → Prop) (failure : E → Prop) :
    satisfies post refusal failure (bind result next) ↔
      satisfies (fun a => satisfies post refusal failure (next a))
        refusal failure result := by
  cases result <;> exact Iff.rfl

theorem satisfies_mono (result : Outcome R E A)
    {p q : A → Prop} {r s : R → Prop} {e f : E → Prop}
    (hp : ∀ a, p a → q a) (hr : ∀ a, r a → s a) (he : ∀ a, e a → f a) :
    satisfies p r e result → satisfies q s f result := by
  cases result with
  | success a => exact hp a
  | refused a => exact hr a
  | failed a => exact he a

/-- Strict total correctness requires success, not merely absence of a failure. -/
def succeedsWith (post : A → Prop) (result : Outcome R E A) : Prop :=
  satisfies post (fun _ => False) (fun _ => False) result

theorem succeedsWith_iff (post : A → Prop) (result : Outcome R E A) :
    succeedsWith post result ↔ ∃ a, result = .success a ∧ post a := by
  cases result with
  | success a =>
      constructor
      · intro h
        exact ⟨a, rfl, h⟩
      · intro h
        obtain ⟨b, hab, hb⟩ := h
        cases hab
        exact hb
  | refused r =>
      constructor
      · intro h
        exact False.elim h
      · intro h
        obtain ⟨_, ha, _⟩ := h
        cases ha
  | failed e =>
      constructor
      · intro h
        exact False.elim h
      · intro h
        obtain ⟨_, ha, _⟩ := h
        cases ha

end Outcome

abbrev Stage (R : Type u) (E : Type v) (A : Type w) (B : Type x) :=
  A → Outcome R E B

namespace Stage

variable {R : Type u} {E : Type v} {A : Type w} {B : Type x}
  {C : Type y} {D : Type z}

def identity : Stage R E A A := Outcome.success

def sequence (first : Stage R E A B) (second : Stage R E B C) : Stage R E A C :=
  fun a => Outcome.bind (first a) second

@[simp] theorem identity_sequence (f : Stage R E A B) :
    sequence identity f = f := rfl

@[simp] theorem sequence_identity (f : Stage R E A B) :
    sequence f identity = f := by
  funext a
  exact Outcome.bind_right_identity (f a)

theorem sequence_associative (f : Stage R E A B) (g : Stage R E B C)
    (h : Stage R E C D) :
    sequence (sequence f g) h = sequence f (sequence g h) := by
  funext a
  exact Outcome.bind_associative (f a) g h

/-- A Hoare-style statement for successful total stages. -/
def Correct (pre : A → Prop) (f : Stage R E A B) (post : B → Prop) : Prop :=
  ∀ a, pre a → Outcome.succeedsWith post (f a)

theorem correct_sequence {pre : A → Prop} {middle : B → Prop} {post : C → Prop}
    {f : Stage R E A B} {g : Stage R E B C}
    (hf : Correct pre f middle) (hg : Correct middle g post) :
    Correct pre (sequence f g) post := by
  intro a ha
  obtain ⟨b, hfb, hb⟩ := (Outcome.succeedsWith_iff middle (f a)).mp (hf a ha)
  change Outcome.succeedsWith post (Outcome.bind (f a) g)
  rw [hfb]
  exact hg b hb

/-- Replacing either stage by an extensionally equal implementation is sound. -/
theorem sequence_congr {f f' : Stage R E A B} {g g' : Stage R E B C}
    (hf : ∀ a, f a = f' a) (hg : ∀ b, g b = g' b) :
    sequence f g = sequence f' g' := by
  have hff : f = f' := funext hf
  have hgg : g = g' := funext hg
  cases hff
  cases hgg
  rfl

def lift (f : A → B) : Stage R E A B := fun a => .success (f a)

theorem lift_composition (f : A → B) (g : B → C) :
    sequence (lift (R := R) (E := E) f) (lift g) = lift (fun a => g (f a)) := rfl

/-- Associativity supplies no right to reorder stages. -/
theorem noncommuting_stages :
    sequence (lift (R := Unit) (E := Unit) (fun n : Nat => n + 1))
      (lift (fun _ : Nat => 0)) ≠
    sequence (lift (R := Unit) (E := Unit) (fun _ : Nat => 0))
      (lift (fun n : Nat => n + 1)) := by
  intro h
  have h0 := congrFun h 0
  change (Outcome.success 0 : Outcome Unit Unit Nat) = Outcome.success 1 at h0
  cases h0

end Stage
end GRWTSK.Processing
