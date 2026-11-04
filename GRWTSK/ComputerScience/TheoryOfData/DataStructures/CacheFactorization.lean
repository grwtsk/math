import Init

/-!
# Cache keys as sufficient observations of a function

Local attribution: grwtsk contributors.

The central equivalence is exact: a deterministic function can be recovered from
a key precisely when it is constant on the key's fibers. The recovery function
is defined on the *image* of the key, not on uninhabited or unrealized keys. Its
existence uses classical choice; uniqueness and the obstruction do not rely on
an assumption of globally injective cryptographic hashing.

A relational cache is sound when every retrieved value equals the requested
function value. A sound cache covering all inputs exists exactly under the same
fiber-constancy condition. The proof compares two requests at one shared key,
then constructs the converse cache as the graph of realized computations.
Eviction preserves soundness but may destroy coverage. Union preserves soundness
without silently selecting one conflicting answer.

Consumers: key design, complete-input memoization and incremental reuse. Hostile
checks omit a Boolean input and ask for an extension from an empty input type;
both refute stronger, unjustified formulations. These are mathematical models,
not an implementation or a secrecy claim. Novelty and independent analytical
review: not assessed. Compilation, fresh kernel checking, and transitive axiom
audit: NOT_RUN. The explicit source contains no admitted proof terms.
-/

namespace GRWTSK.Cache

universe u v w z

variable {X : Type u} {K : Type v} {Y : Type w} {L : Type z}

/-- Equality of keys must imply equality of the *particular* result consumed. -/
def FiberConstant (key : X → K) (value : X → Y) : Prop :=
  ∀ x x', key x = key x' → value x = value x'

/-- Only realized keys occur in the universal factorization. -/
def KeyImage (key : X → K) := { k : K // ∃ x, key x = k }

def toImage (key : X → K) (x : X) : KeyImage key := ⟨key x, x, rfl⟩

noncomputable def descend (key : X → K) (value : X → Y) (k : KeyImage key) : Y :=
  value (Classical.choose k.property)

theorem descend_toImage (key : X → K) (value : X → Y)
    (h : FiberConstant key value) (x : X) :
    descend key value (toImage key x) = value x := by
  apply h
  exact Classical.choose_spec (toImage key x).property

/-- Universal factorization through a key, with no arbitrary default output. -/
theorem fiberConstant_iff_factorization (key : X → K) (value : X → Y) :
    FiberConstant key value ↔
      ∃ evaluate : KeyImage key → Y, ∀ x, evaluate (toImage key x) = value x := by
  constructor
  · intro h
    exact ⟨descend key value, descend_toImage key value h⟩
  · intro h
    obtain ⟨evaluate, hevaluate⟩ := h
    intro x x' hkey
    have himage : toImage key x = toImage key x' := Subtype.ext hkey
    calc
      value x = evaluate (toImage key x) := (hevaluate x).symm
      _ = evaluate (toImage key x') := congrArg evaluate himage
      _ = value x' := hevaluate x'

theorem factorization_unique (key : X → K) (value : X → Y)
    (f g : KeyImage key → Y)
    (hf : ∀ x, f (toImage key x) = value x)
    (hg : ∀ x, g (toImage key x) = value x) : f = g := by
  funext k
  obtain ⟨x, hx⟩ := k.property
  have hk : toImage key x = k := Subtype.ext hx
  calc
    f k = f (toImage key x) := congrArg f hk.symm
    _ = value x := hf x
    _ = g (toImage key x) := (hg x).symm
    _ = g k := congrArg g hk

/-- A finer key cannot lose a sufficient observation. -/
theorem sufficient_refinement {key : X → K} {fine : X → L} {value : X → Y}
    (sufficient : FiberConstant key value)
    (refines : ∀ x x', fine x = fine x' → key x = key x') :
    FiberConstant fine value := by
  intro x x' h
  exact sufficient x x' (refines x x' h)

theorem sufficient_pair {key : X → K} {value : X → Y}
    (sufficient : FiberConstant key value) (extra : X → L) :
    FiberConstant (fun x => (key x, extra x)) value := by
  apply sufficient_refinement sufficient
  intro x x' h
  exact congrArg Prod.fst h

/-- Postprocessing never requires a more informative key than its input value. -/
theorem sufficient_postcomposition {key : X → K} {value : X → Y}
    (sufficient : FiberConstant key value) (f : Y → L) :
    FiberConstant key (fun x => f (value x)) := by
  intro x x' h
  exact congrArg f (sufficient x x' h)

/-- Lossless coding is sufficient, but stronger than function-specific sufficiency. -/
theorem injective_key_sufficient (key : X → K)
    (separates : ∀ x x', key x = key x' → x = x') (value : X → Y) :
    FiberConstant key value := by
  intro x x' h
  exact congrArg value (separates x x' h)

abbrev Store (K : Type v) (Y : Type w) := K → Y → Prop

def Sound (key : X → K) (value : X → Y) (store : Store K Y) : Prop :=
  ∀ x y, store (key x) y → y = value x

def Covers (key : X → K) (store : Store K Y) : Prop :=
  ∀ x, ∃ y, store (key x) y

def merge (first second : Store K Y) : Store K Y :=
  fun k y => first k y ∨ second k y

def graphStore (key : X → K) (value : X → Y) : Store K Y :=
  fun k y => ∃ x, key x = k ∧ value x = y

theorem graphStore_covers (key : X → K) (value : X → Y) :
    Covers key (graphStore key value) := by
  intro x
  exact ⟨value x, x, rfl, rfl⟩

theorem graphStore_sound {key : X → K} {value : X → Y}
    (h : FiberConstant key value) : Sound key value (graphStore key value) := by
  intro x y hy
  obtain ⟨x', hkey, hvalue⟩ := hy
  calc
    y = value x' := hvalue.symm
    _ = value x := h x' x hkey

/-- Sound total reuse is possible exactly when the key is semantically sufficient. -/
theorem fiberConstant_iff_sound_cover (key : X → K) (value : X → Y) :
    FiberConstant key value ↔ ∃ store, Sound key value store ∧ Covers key store := by
  constructor
  · intro h
    exact ⟨graphStore key value, graphStore_sound h, graphStore_covers key value⟩
  · intro h
    obtain ⟨store, sound, covers⟩ := h
    intro x x' hkey
    obtain ⟨y, hy⟩ := covers x
    have hy' : store (key x') y := hkey ▸ hy
    exact (sound x y hy).symm.trans (sound x' y hy')

theorem sound_merge_iff (key : X → K) (value : X → Y) (first second : Store K Y) :
    Sound key value (merge first second) ↔
      Sound key value first ∧ Sound key value second := by
  constructor
  · intro h
    exact ⟨fun x y hy => h x y (Or.inl hy), fun x y hy => h x y (Or.inr hy)⟩
  · intro h x y hy
    cases hy with
    | inl hf => exact h.1 x y hf
    | inr hs => exact h.2 x y hs

theorem sound_eviction {key : X → K} {value : X → Y} {large small : Store K Y}
    (sound : Sound key value large) (retained : ∀ k y, small k y → large k y) :
    Sound key value small := by
  intro x y hy
  exact sound x y (retained (key x) y hy)

theorem sound_retrieval_unique {key : X → K} {value : X → Y} {store : Store K Y}
    (sound : Sound key value store) (x : X) {a b : Y}
    (ha : store (key x) a) (hb : store (key x) b) : a = b :=
  (sound x a ha).trans (sound x b hb).symm

theorem collision_obstructs_sound_cover {key : X → K} {value : X → Y}
    (x x' : X) (sameKey : key x = key x') (different : value x ≠ value x') :
    ¬ ∃ store, Sound key value store ∧ Covers key store := by
  intro h
  exact different ((fiberConstant_iff_sound_cover key value).mpr h x x' sameKey)

/-- Extensional replacement preserves every mathematical consumer of the result. -/
theorem retrieval_substitution {key : X → K} {value : X → Y} {store : Store K Y}
    (sound : Sound key value store) (consumer : Y → L) (x : X) (y : Y)
    (found : store (key x) y) : consumer y = consumer (value x) :=
  congrArg consumer (sound x y found)

/-- Framed pairs retain scope; this states no confidentiality property. -/
theorem scoped_key_separates_scopes {s t : X} {a b : K}
    (h : (s, a) = (t, b)) : s = t := congrArg Prod.fst h

theorem omitted_input_is_unsound :
    ¬ FiberConstant (fun p : Unit × Bool => p.1) (fun p => p.2) := by
  intro h
  have impossible := h ((), false) ((), true) rfl
  cases impossible

/-- An indiscriminate total extension would require a value of an empty type. -/
theorem full_key_extension_can_fail : ¬ Nonempty (Unit → Empty) := by
  intro h
  obtain ⟨g⟩ := h
  exact Empty.elim (g ())

/-- Removing everything illustrates why preservation of soundness is not coverage. -/
theorem eviction_can_destroy_coverage :
    Sound (fun _ : Unit => ()) (fun _ : Unit => ()) (fun _ _ => False) ∧
      ¬ Covers (fun _ : Unit => ()) (fun _ _ : Unit => False) := by
  constructor
  · intro _ _ h
    exact False.elim h
  · intro h
    obtain ⟨_, hy⟩ := h ()
    exact hy

end GRWTSK.Cache
