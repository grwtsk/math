/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Init

/-!
# Reconstructible neighborhoods, arithmetic transport, and finite iteration

This source separates four mathematical interfaces: a list with an explicit
center hole; a supplied lossless codec; interpretation of a small, typed integer
expression language; and finite iteration under an invertible change of
coordinates. The final coboundary identity is elementary integer subtraction.

Verification status: source proof candidates, NOT_RUN. No kernel replay has
been performed for this file. The source introduces no `axiom` or `sorry`.

The codec round-trip law and interpretation homomorphism laws are explicit
parameters. The concrete Huffman round-trip theorem in the source-coding tree
can discharge a codec parameter for its own Lean model; this file does not
automatically connect it to an external Python parser, Rust compiler, disk
write, or existing runtime implementation. The integer bounds model signed
128-bit success/refusal without supplying machine operational semantics.

Finite iteration is discrete. A coordinate twist here is an explicit pair of
inverse functions. Neither construction asserts prismatic cohomology, Tate
twists, a continuous diffusion equation, convergence, or cryptographic entropy.
-/

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.Serialization.ReconstructibleNeighborhood

universe u v

/-- The context leaves the center absent; it is supplied only by `fill`. -/
structure Context (Symbol : Type u) where
  prefix : List Symbol
  suffix : List Symbol

def Context.fill {Symbol : Type u} (context : Context Symbol)
    (center : List Symbol) : List Symbol :=
  context.prefix ++ (center ++ context.suffix)

/-- A source neighborhood keeps the original center as the reconstruction witness. -/
structure Neighborhood (Symbol : Type u) where
  context : Context Symbol
  originalCenter : List Symbol

def Neighborhood.original {Symbol : Type u} (neighborhood : Neighborhood Symbol) :
    List Symbol :=
  neighborhood.context.fill neighborhood.originalCenter

theorem fill_original {Symbol : Type u} (neighborhood : Neighborhood Symbol) :
    neighborhood.context.fill neighborhood.originalCenter = neighborhood.original := rfl

/-- Total list splitting also covers starts and widths beyond the source end. -/
def split {Symbol : Type u} (source : List Symbol) (start width : Nat) :
    Neighborhood Symbol where
  context := { prefix := source.take start, suffix := (source.drop start).drop width }
  originalCenter := (source.drop start).take width

theorem split_fill_original {Symbol : Type u} (source : List Symbol) (start width : Nat) :
    (split source start width).original = source := by
  simp only [split, Neighborhood.original, Context.fill]
  rw [List.take_append_drop, List.take_append_drop]

/-- A partial decoder's actual success law is supplied, rather than hidden in the name. -/
structure LosslessCodec (Plain : Type u) (Wire : Type v) where
  encode : Plain → Wire
  decode : Wire → Option Plain
  roundTrip : ∀ plain, decode (encode plain) = some plain

theorem lossless_encode_injective {Plain : Type u} {Wire : Type v}
    (codec : LosslessCodec Plain Wire) {left right : Plain}
    (same : codec.encode left = codec.encode right) : left = right := by
  have decoded := congrArg codec.decode same
  rw [codec.roundTrip, codec.roundTrip] at decoded
  exact Option.some.inj decoded

theorem decode_encoded_center_fill {Symbol : Type u} {Wire : Type v}
    (codec : LosslessCodec (List Symbol) Wire) (context : Context Symbol)
    (center : List Symbol) :
    (codec.decode (codec.encode center)).map context.fill = some (context.fill center) := by
  rw [codec.roundTrip]
  rfl

theorem decode_encoded_original {Symbol : Type u} {Wire : Type v}
    (codec : LosslessCodec (List Symbol) Wire) (source : List Symbol) (start width : Nat) :
    (codec.decode (codec.encode (split source start width).originalCenter)).map
      (split source start width).context.fill = some source := by
  rw [codec.roundTrip]
  change some (split source start width).original = some source
  rw [split_fill_original]

/-- An argument index is in range by type; parsing external names is a separate bridge. -/
inductive Expr (arity : Nat) where
  | arg : Fin arity → Expr arity
  | constant : Int → Expr arity
  | add : Expr arity → Expr arity → Expr arity
  | sub : Expr arity → Expr arity → Expr arity
  | mul : Expr arity → Expr arity → Expr arity
  deriving DecidableEq

structure Arithmetic (Value : Type u) where
  constant : Int → Value
  add : Value → Value → Value
  sub : Value → Value → Value
  mul : Value → Value → Value

def interpret {arity : Nat} {Value : Type u} (operations : Arithmetic Value)
    (arguments : Fin arity → Value) : Expr arity → Value
  | .arg index => arguments index
  | .constant value => operations.constant value
  | .add left right => operations.add (interpret operations arguments left)
      (interpret operations arguments right)
  | .sub left right => operations.sub (interpret operations arguments left)
      (interpret operations arguments right)
  | .mul left right => operations.mul (interpret operations arguments left)
      (interpret operations arguments right)

/-- Structural transport requires every literal, argument, and operation law explicitly. -/
theorem interpretation_transport {arity : Nat} {Left : Type u} {Right : Type v}
    (left : Arithmetic Left) (right : Arithmetic Right) (transform : Left → Right)
    (leftArgs : Fin arity → Left) (rightArgs : Fin arity → Right)
    (arguments : ∀ index, transform (leftArgs index) = rightArgs index)
    (constants : ∀ value, transform (left.constant value) = right.constant value)
    (addition : ∀ a b, transform (left.add a b) = right.add (transform a) (transform b))
    (subtraction : ∀ a b, transform (left.sub a b) = right.sub (transform a) (transform b))
    (multiplication : ∀ a b, transform (left.mul a b) = right.mul (transform a) (transform b))
    (expression : Expr arity) :
    transform (interpret left leftArgs expression) = interpret right rightArgs expression := by
  induction expression with
  | arg index => exact arguments index
  | constant value => exact constants value
  | add a b ihA ihB => simp only [interpret, addition, ihA, ihB]
  | sub a b ihA ihB => simp only [interpret, subtraction, ihA, ihB]
  | mul a b ihA ihB => simp only [interpret, multiplication, ihA, ihB]

def integerArithmetic : Arithmetic Int where
  constant := id
  add := Int.add
  sub := Int.sub
  mul := Int.mul

def eval {arity : Nat} (arguments : Fin arity → Int) (expression : Expr arity) : Int :=
  interpret integerArithmetic arguments expression

def fitsI128 (value : Int) : Prop := -(2 ^ 127) ≤ value ∧ value < 2 ^ 127

def checkedValue (value : Int) : Option Int :=
  if fitsI128 value then some value else none

theorem checkedValue_sound {value result : Int} (success : checkedValue value = some result) :
    result = value ∧ fitsI128 result := by
  unfold checkedValue at success
  split at success
  · rename_i bounded
    have same := Option.some.inj success
    exact ⟨same.symm, same ▸ bounded⟩
  · cases success

def checkedBinary (operation : Int → Int → Int) (left right : Option Int) : Option Int :=
  match left, right with
  | some a, some b => checkedValue (operation a b)
  | _, _ => none

theorem checkedBinary_sound (operation : Int → Int → Int) {left right : Option Int}
    {result : Int} (success : checkedBinary operation left right = some result) :
    ∃ a b, left = some a ∧ right = some b ∧ result = operation a b ∧ fitsI128 result := by
  cases left with
  | none => cases success
  | some a =>
    cases right with
    | none => cases success
    | some b =>
      obtain ⟨exactValue, bounded⟩ := checkedValue_sound success
      exact ⟨a, b, rfl, rfl, exactValue, bounded⟩

/-- Refuse overflow at every argument, constant and arithmetic intermediate. -/
def evalChecked {arity : Nat} (arguments : Fin arity → Int) : Expr arity → Option Int
  | .arg index => checkedValue (arguments index)
  | .constant value => checkedValue value
  | .add left right => checkedBinary Int.add (evalChecked arguments left) (evalChecked arguments right)
  | .sub left right => checkedBinary Int.sub (evalChecked arguments left) (evalChecked arguments right)
  | .mul left right => checkedBinary Int.mul (evalChecked arguments left) (evalChecked arguments right)

/-- Success identifies the unbounded mathematical result and its signed 128-bit range. -/
theorem evalChecked_sound {arity : Nat} (arguments : Fin arity → Int) (expression : Expr arity)
    {result : Int} (success : evalChecked arguments expression = some result) :
    result = eval arguments expression ∧ fitsI128 result := by
  induction expression generalizing result with
  | arg index => exact checkedValue_sound success
  | constant value => exact checkedValue_sound success
  | add a b ihA ihB =>
    obtain ⟨x, y, hx, hy, exactValue, bounded⟩ := checkedBinary_sound Int.add success
    obtain ⟨ex, _⟩ := ihA hx
    obtain ⟨ey, _⟩ := ihB hy
    exact ⟨by simpa only [ex, ey, eval, interpret, integerArithmetic] using exactValue, bounded⟩
  | sub a b ihA ihB =>
    obtain ⟨x, y, hx, hy, exactValue, bounded⟩ := checkedBinary_sound Int.sub success
    obtain ⟨ex, _⟩ := ihA hx
    obtain ⟨ey, _⟩ := ihB hy
    exact ⟨by simpa only [ex, ey, eval, interpret, integerArithmetic] using exactValue, bounded⟩
  | mul a b ihA ihB =>
    obtain ⟨x, y, hx, hy, exactValue, bounded⟩ := checkedBinary_sound Int.mul success
    obtain ⟨ex, _⟩ := ihA hx
    obtain ⟨ey, _⟩ := ihB hy
    exact ⟨by simpa only [ex, ey, eval, interpret, integerArithmetic] using exactValue, bounded⟩

/-- The precise success domain includes every subtree, not just the final result. -/
def Safe {arity : Nat} (arguments : Fin arity → Int) : Expr arity → Prop
  | .arg index => fitsI128 (arguments index)
  | .constant value => fitsI128 value
  | .add left right => Safe arguments left ∧ Safe arguments right ∧
      fitsI128 (eval arguments (.add left right))
  | .sub left right => Safe arguments left ∧ Safe arguments right ∧
      fitsI128 (eval arguments (.sub left right))
  | .mul left right => Safe arguments left ∧ Safe arguments right ∧
      fitsI128 (eval arguments (.mul left right))

theorem evalChecked_complete {arity : Nat} (arguments : Fin arity → Int)
    (expression : Expr arity) (safe : Safe arguments expression) :
    evalChecked arguments expression = some (eval arguments expression) := by
  revert safe
  induction expression with
  | arg index =>
    intro safe
    simp only [Safe] at safe
    simp [evalChecked, checkedValue, eval, interpret, safe]
  | constant value =>
    intro safe
    simp only [Safe] at safe
    simp [evalChecked, checkedValue, eval, interpret, integerArithmetic, safe]
  | add a b ihA ihB =>
    intro safe
    obtain ⟨safeA, safeB, bounded⟩ := safe
    change fitsI128 (Int.add (eval arguments a) (eval arguments b)) at bounded
    change checkedBinary Int.add (evalChecked arguments a) (evalChecked arguments b) =
      some (Int.add (eval arguments a) (eval arguments b))
    simp only [ihA safeA, ihB safeB, checkedBinary, checkedValue, if_pos bounded]
  | sub a b ihA ihB =>
    intro safe
    obtain ⟨safeA, safeB, bounded⟩ := safe
    change fitsI128 (Int.sub (eval arguments a) (eval arguments b)) at bounded
    change checkedBinary Int.sub (evalChecked arguments a) (evalChecked arguments b) =
      some (Int.sub (eval arguments a) (eval arguments b))
    simp only [ihA safeA, ihB safeB, checkedBinary, checkedValue, if_pos bounded]
  | mul a b ihA ihB =>
    intro safe
    obtain ⟨safeA, safeB, bounded⟩ := safe
    change fitsI128 (Int.mul (eval arguments a) (eval arguments b)) at bounded
    change checkedBinary Int.mul (evalChecked arguments a) (evalChecked arguments b) =
      some (Int.mul (eval arguments a) (eval arguments b))
    simp only [ihA safeA, ihB safeB, checkedBinary, checkedValue, if_pos bounded]

/-- A finite graph layer adds the previous layer's ordered predecessor values. -/
def graphLayer {vertices : Nat} (parents : Fin vertices → List (Fin vertices))
    (seed previous : Fin vertices → Int) (vertex : Fin vertices) : Int :=
  seed vertex + ((parents vertex).map previous).foldl Int.add 0

def iterate {State : Type u} (step : State → State) : Nat → State → State
  | 0, initial => initial
  | n + 1, initial => step (iterate step n initial)

theorem iterate_add {State : Type u} (step : State → State) (m n : Nat) (initial : State) :
    iterate step (m + n) initial = iterate step m (iterate step n initial) := by
  induction m with
  | zero => simp only [Nat.zero_add, iterate]
  | succ m ih => simp only [Nat.succ_add, iterate, ih]

theorem graph_iteration_successor {vertices : Nat}
    (parents : Fin vertices → List (Fin vertices)) (seed initial : Fin vertices → Int) (n : Nat) :
    iterate (graphLayer parents seed) (n + 1) initial =
      graphLayer parents seed (iterate (graphLayer parents seed) n initial) := rfl

/-- The explicit inverse laws are data obligations on each proposed coordinate twist. -/
structure Twist (State : Type u) where
  forward : State → State
  inverse : State → State
  inverse_forward : ∀ state, inverse (forward state) = state
  forward_inverse : ∀ state, forward (inverse state) = state

def twistedStep {State : Type u} (twist : Twist State) (step : State → State)
    (state : State) : State := twist.forward (step (twist.inverse state))

theorem iterate_twist {State : Type u} (twist : Twist State) (step : State → State)
    (n : Nat) (initial : State) :
    iterate (twistedStep twist step) n (twist.forward initial) =
      twist.forward (iterate step n initial) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [iterate, ih, twistedStep, twist.inverse_forward]

theorem untwist_iteration {State : Type u} (twist : Twist State) (step : State → State)
    (n : Nat) (initial : State) :
    twist.inverse (iterate (twistedStep twist step) n (twist.forward initial)) =
      iterate step n initial := by
  rw [iterate_twist, twist.inverse_forward]

def d0 {Vertex : Type u} (potential : Vertex → Int) (a b : Vertex) : Int :=
  potential b - potential a

def d1 {Vertex : Type u} (edge : Vertex → Vertex → Int) (a b c : Vertex) : Int :=
  edge b c - edge a c + edge a b

/-- The elementary triangle coboundary law; it supplies no prismatic comparison theorem. -/
theorem d1_d0 {Vertex : Type u} (potential : Vertex → Int) (a b c : Vertex) :
    d1 (d0 potential) a b c = 0 := by
  simp only [d1, d0, Int.sub_eq_add_neg, Int.neg_add, Int.neg_neg, Int.add_assoc]
  rw [Int.add_left_comm (-(potential b)) (-(potential c)), Int.add_neg_cancel_left]
  rw [Int.add_left_comm (potential a) (potential b), Int.neg_add_cancel_left,
    Int.add_right_neg]

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.Serialization.ReconstructibleNeighborhood
