/-
FiniteBooleanCarriers — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a
Organized SHA-256: 6e0a1ee1b3d1950e8385560e459bccb83a30fe79a3e8e8241beb9b4b277e8cf9
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole finite Boolean and scalar function types, bit/index/extension maps and coordinates, all original universe controls and accessor proofs. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Matrix
import Boolean.Cube.ListTools

namespace Boolean.Cube

universe u

/-- A vertex of the n-dimensional Boolean hypercube `{0,1}^n`. -/
abbrev Hypercube.Point (n : Nat) :=
  Fin n → Bool

/-- A Boolean-valued function on the n-dimensional hypercube. -/
abbrev Hypercube.Function (n : Nat) :=
  Hypercube.Point n → Bool

/--
A scalar-valued function on the Boolean hypercube.

When a real-number library is available, instantiate `R` with `Real`.
-/
abbrev Hypercube.ScalarFunction (n : Nat) (R : Type u) :=
  Hypercube.Point n → R

/-- Boolean exclusive-or. -/
def Hypercube.bxor (a b : Bool) : Bool :=
  match a, b with
  | true, false => true
  | false, true => true
  | _, _ => false

/-- Boolean inequality as a Boolean value. -/
def Hypercube.boolDiff (a b : Bool) : Bool :=
  Hypercube.bxor a b

/-- Read bit `bit` of a natural number, least significant bit at offset `0`. -/
def Hypercube.bitAtNat (index bit : Nat) : Bool :=
  decide (((index / (2 ^ bit)) % 2) = 1)

/--
The bit position used for variable `i` in standard truth-table order.

Variable `0` is the most significant coordinate. Thus, for `n = 2`, indices
`0, 1, 2, 3` enumerate points `00, 01, 10, 11`.
-/
def Hypercube.tableBit (n : Nat) (i : Fin n) : Nat :=
  n - 1 - i.val

/-- Convert an index into the corresponding Boolean hypercube vertex. -/
def Hypercube.pointOfIndex (n index : Nat) : Hypercube.Point n :=
  fun i => Hypercube.bitAtNat index (Hypercube.tableBit n i)

/-- Forget the final coordinate of a point in dimension `n + 1`. -/
def Hypercube.dropLast {n : Nat}
    (x : Hypercube.Point (n + 1)) :
    Hypercube.Point n :=
  fun i => x ⟨i.val, Nat.lt_trans i.isLt (Nat.lt_succ_self n)⟩

/-- Read the final coordinate of a point in dimension `n + 1`. -/
def Hypercube.last {n : Nat}
    (x : Hypercube.Point (n + 1)) :
    Bool :=
  x ⟨n, Nat.lt_succ_self n⟩

/-- Extend a point by appending one final coordinate. -/
def Hypercube.extend {n : Nat}
    (x : Hypercube.Point n)
    (b : Bool) :
    Hypercube.Point (n + 1) :=
  fun i =>
    if h : i.val < n then
      x ⟨i.val, h⟩
    else
      b

@[simp] theorem Hypercube.dropLast_extend {n : Nat}
    (x : Hypercube.Point n)
    (b : Bool) :
    Hypercube.dropLast (Hypercube.extend x b) = x := by
  funext i
  simp [Hypercube.dropLast, Hypercube.extend]

@[simp] theorem Hypercube.last_extend {n : Nat}
    (x : Hypercube.Point n)
    (b : Bool) :
    Hypercube.last (Hypercube.extend x b) = b := by
  simp [Hypercube.last, Hypercube.extend]

/-- Convert a hypercube point into coordinate-list form. -/
def Hypercube.coordinates {n : Nat} (x : Hypercube.Point n) : List Bool :=
  (List.finRange n).map (fun i => x i)

/-- Map `false,true` to signed cube coordinates `-1,+1`. -/
def Hypercube.spinOfBool : Bool → Int
  | false => (-1 : Int)
  | true => 1

/-- Map `false,true` to `0,1`. -/
def Hypercube.intOfBool : Bool → Int
  | false => 0
  | true => 1

/-- Convert a Boolean hypercube vertex into signed coordinates in `{-1,1}^n`. -/
def Hypercube.spinCoordinates {n : Nat} (x : Hypercube.Point n) : List Int :=
  (List.finRange n).map (fun i => Hypercube.spinOfBool (x i))

/-- Convert a Boolean hypercube vertex into `0,1` integer coordinates. -/
def Hypercube.zeroOneCoordinates {n : Nat} (x : Hypercube.Point n) : List Int :=
  (List.finRange n).map (fun i => Hypercube.intOfBool (x i))

end Boolean.Cube
