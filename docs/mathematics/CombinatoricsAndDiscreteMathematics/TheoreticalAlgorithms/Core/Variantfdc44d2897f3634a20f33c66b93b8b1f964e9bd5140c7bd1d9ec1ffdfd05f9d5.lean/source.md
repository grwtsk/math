# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `594b5c8265590e6db6302cf33220b326b96a15ce` · SHA-256 `fdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compression

/--
Finite phase labels for a local bit-classifier.

This is a finite syntactic classifier only. It does not assert Spin(4),
Perelman surgery, RH, BSD, analytic continuation, or spectral authority.
-/
inductive SpinPhase : Type
  | null
  | unit
  | zero
  | twist
deriving DecidableEq, Repr

def SpinPhase.weight : SpinPhase → Int
  | .null => 0
  | .unit => 1
  | .zero => 0
  | .twist => 1

theorem SpinPhase.weight_null :
    SpinPhase.weight SpinPhase.null = 0 := rfl

theorem SpinPhase.weight_unit :
    SpinPhase.weight SpinPhase.unit = 1 := rfl

theorem SpinPhase.weight_zero :
    SpinPhase.weight SpinPhase.zero = 0 := rfl

theorem SpinPhase.weight_twist :
    SpinPhase.weight SpinPhase.twist = 1 := rfl

/--
A fully expanded formal-math string over an alphabet `α`.

This is the finite FM side of the compression layer.
-/
structure FormalMathString (α : Type) where
  symbols : List α
deriving Repr

namespace FormalMathString

variable {α : Type}

def length (s : FormalMathString α) : Nat :=
  s.symbols.length

def empty : FormalMathString α :=
  ⟨[]⟩

def singleton (a : α) : FormalMathString α :=
  ⟨[a]⟩

def append (s t : FormalMathString α) : FormalMathString α :=
  ⟨s.symbols ++ t.symbols⟩

instance : EmptyCollection (FormalMathString α) where
  emptyCollection := empty

instance : Append (FormalMathString α) where
  append := append

theorem length_empty :
    length (empty : FormalMathString α) = 0 := rfl

theorem length_singleton (a : α) :
    length (singleton a) = 1 := rfl

theorem length_append (s t : FormalMathString α) :
    length (s ++ t) = length s + length t := by
  cases s with
  | mk xs =>
      cases t with
      | mk ys =>
          change (xs ++ ys).length = xs.length + ys.length
          exact List.length_append

theorem append_assoc (a b c : FormalMathString α) :
    (a ++ b) ++ c = a ++ (b ++ c) := by
  cases a with
  | mk xs =>
      cases b with
      | mk ys =>
          cases c with
          | mk zs =>
              change FormalMathString.mk ((xs ++ ys) ++ zs) =
                FormalMathString.mk (xs ++ (ys ++ zs))
              exact congrArg FormalMathString.mk (List.append_assoc xs ys zs)

theorem empty_append (s : FormalMathString α) :
    (empty : FormalMathString α) ++ s = s := by
  cases s with
  | mk xs =>
      change FormalMathString.mk ([] ++ xs) = FormalMathString.mk xs
      rfl

theorem append_empty (s : FormalMathString α) :
    s ++ (empty : FormalMathString α) = s := by
  cases s with
  | mk xs =>
      change FormalMathString.mk (xs ++ []) = FormalMathString.mk xs
      simp

/--
Structural induction over formal strings.

This is the admissible replacement for global unification axioms: every proof
over the finite string layer is forced through empty/cons structure.
-/
theorem induction_on_symbols
    {P : FormalMathString α → Prop}
    (h_empty : P empty)
    (h_cons :
      ∀ (a : α) (s : FormalMathString α), P s → P ⟨a :: s.symbols⟩)
    (s : FormalMathString α) :
    P s := by
  cases s with
  | mk xs =>
      induction xs with
      | nil =>
          exact h_empty
      | cons a rest ih =>
          exact h_cons a ⟨rest⟩ ih

end FormalMathString

/--
A finite macro dictionary. Each macro has a numeric identifier and an
expansion word over the primitive alphabet.

`entropyWeight` is carried as finite data only. No analytic entropy theorem is
asserted at this layer.
-/
structure MacroDictionary (α : Type) where
  macros : List (Nat × List α)
  entropyWeight : Int
deriving Repr

namespace MacroDictionary

variable {α : Type}

def macroCount (D : MacroDictionary α) : Nat :=
  D.macros.length

def hasNoMacros (D : MacroDictionary α) : Prop :=
  D.macros = []

theorem macroCount_eq_zero_of_hasNoMacros (D : MacroDictionary α)
    (h : D.hasNoMacros) :
    D.macroCount = 0 := by
  cases D with
  | mk macros entropyWeight =>
      simp [macroCount, hasNoMacros] at h ⊢
      exact h

end MacroDictionary

/--
A compressed word uses either primitive symbols or macro identifiers.
-/
inductive CompressedSymbol (α : Type) : Type
  | primitive : α → CompressedSymbol α
  | macro : Nat → CompressedSymbol α
deriving Repr

abbrev CompressedString (α : Type) :=
  List (CompressedSymbol α)

def lookupMacroList {α : Type} :
    List (Nat × List α) → Nat → List α
  | [], _ => []
  | pair :: rest, id =>
      if pair.1 = id then
        pair.2
      else
        lookupMacroList rest id

/--
Total lookup for macro expansion.

If a macro id is absent, it expands to the empty word. This keeps the finite
core total; a later residue layer can replace this by an option-valued lookup.
-/
def lookupMacro {α : Type} (D : MacroDictionary α) (id : Nat) : List α :=
  lookupMacroList D.macros id

def unwrapSymbol {α : Type} (D : MacroDictionary α) :
    CompressedSymbol α → List α
  | .primitive a => [a]
  | .macro id => lookupMacro D id

/--
Unwrap a compressed string into the primitive free-monoid string.
-/
def unwrap {α : Type} (D : MacroDictionary α) :
    CompressedString α → FormalMathString α
  | [] => FormalMathString.empty
  | x :: xs =>
      ⟨unwrapSymbol D x ++ (unwrap D xs).symbols⟩

theorem unwrap_nil {α : Type} (D : MacroDictionary α) :
    unwrap D [] = FormalMathString.empty := rfl

theorem unwrap_cons {α : Type} (D : MacroDictionary α)
    (x : CompressedSymbol α) (xs : CompressedString α) :
    unwrap D (x :: xs) =
      ⟨unwrapSymbol D x ++ (unwrap D xs).symbols⟩ := rfl

theorem unwrap_append {α : Type} (D : MacroDictionary α)
    (xs ys : CompressedString α) :
    unwrap D (xs ++ ys) =
      FormalMathString.append (unwrap D xs) (unwrap D ys) := by
  induction xs with
  | nil =>
      change unwrap D ys =
        (FormalMathString.empty : FormalMathString α) ++ unwrap D ys
      rw [FormalMathString.empty_append]
  | cons x xs ih =>
      simp [unwrap, FormalMathString.append, ih, List.append_assoc]

def expandedLength {α : Type} (D : MacroDictionary α)
    (xs : CompressedString α) : Nat :=
  (unwrap D xs).length

theorem expandedLength_nil {α : Type} (D : MacroDictionary α) :
    expandedLength D [] = 0 := rfl

theorem expandedLength_append {α : Type} (D : MacroDictionary α)
    (xs ys : CompressedString α) :
    expandedLength D (xs ++ ys) =
      expandedLength D xs + expandedLength D ys := by
  simp [expandedLength, FormalMathString.length, unwrap_append,
    FormalMathString.append, List.length_append]

end Think.Compression
```
