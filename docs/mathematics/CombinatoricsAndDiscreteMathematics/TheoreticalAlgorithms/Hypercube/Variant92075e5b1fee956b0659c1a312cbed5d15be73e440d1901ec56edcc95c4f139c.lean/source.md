# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hypercube.Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ef0d6c9254a5dc0b432c74de4609c03b090bf15` · SHA-256 `3eb28369645c438e10225d71fde4e358139053e87f17716703edc7fc881d465d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HypercubePoint.Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HypercubePoint.Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a","mathematical_subject":"Computation.DataStructures","original_sha256":"17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Cube/Hypercube.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Matrix
import Boolean.Cube.ListTools


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HypercubePoint.Variant17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a

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

/--
All vertices of `{0,1}^n`, enumerated in standard truth-table order.
-/
def Hypercube.vertices : (n : Nat) → List (Hypercube.Point n)
  | 0 => [fun i => nomatch i]
  | n + 1 =>
      (Hypercube.vertices n).flatMap
        (fun x => [Hypercube.extend x false, Hypercube.extend x true])

@[simp] theorem Hypercube.vertices_length (n : Nat) :
    (Hypercube.vertices n).length = 2 ^ n := by
  induction n with
  | zero => rfl
  | succ n ih =>
      have hflat :
          ∀ xs : List (Hypercube.Point n),
            (xs.flatMap
              (fun x => [Hypercube.extend x false, Hypercube.extend x true])).length =
              xs.length * 2 := by
        intro xs
        induction xs with
        | nil => rfl
        | cons x xs ihxs =>
            simp [ihxs]
            omega
      rw [Hypercube.vertices, hflat, ih]
      simp [Nat.pow_succ]

theorem Hypercube.bitAtNat_two_mul_succ (k b : Nat) :
    Hypercube.bitAtNat (2 * k) (b + 1) = Hypercube.bitAtNat k b := by
  simp only [Hypercube.bitAtNat, ← Nat.testBit_eq_decide_div_mod_eq]
  rw [show b + 1 = b.succ by omega, Nat.testBit_succ]
  rw [show (2 * k) / 2 = k by omega]

theorem Hypercube.bitAtNat_two_mul_add_one_succ (k b : Nat) :
    Hypercube.bitAtNat (2 * k + 1) (b + 1) = Hypercube.bitAtNat k b := by
  simp only [Hypercube.bitAtNat, ← Nat.testBit_eq_decide_div_mod_eq]
  rw [show b + 1 = b.succ by omega, Nat.testBit_succ]
  rw [show (2 * k + 1) / 2 = k by omega]

theorem Hypercube.bitAtNat_two_mul_zero (k : Nat) :
    Hypercube.bitAtNat (2 * k) 0 = false := by
  simp [Hypercube.bitAtNat]

theorem Hypercube.bitAtNat_two_mul_add_one_zero (k : Nat) :
    Hypercube.bitAtNat (2 * k + 1) 0 = true := by
  simp [Hypercube.bitAtNat]

theorem Hypercube.pointOfIndex_two_mul (n k : Nat) :
    Hypercube.pointOfIndex (n + 1) (2 * k) =
      Hypercube.extend (Hypercube.pointOfIndex n k) false := by
  funext i
  by_cases h : i.val < n
  · simp only [Hypercube.pointOfIndex, Hypercube.extend, h, dite_true]
    rw [show Hypercube.tableBit (n + 1) i =
        Hypercube.tableBit n ⟨i.val, h⟩ + 1 by
          simp [Hypercube.tableBit]
          omega]
    exact Hypercube.bitAtNat_two_mul_succ k _
  · have hi : i.val = n := by omega
    simp [Hypercube.pointOfIndex, Hypercube.extend, Hypercube.tableBit,
      hi, Hypercube.bitAtNat_two_mul_zero]

theorem Hypercube.pointOfIndex_two_mul_add_one (n k : Nat) :
    Hypercube.pointOfIndex (n + 1) (2 * k + 1) =
      Hypercube.extend (Hypercube.pointOfIndex n k) true := by
  funext i
  by_cases h : i.val < n
  · simp only [Hypercube.pointOfIndex, Hypercube.extend, h, dite_true]
    rw [show Hypercube.tableBit (n + 1) i =
        Hypercube.tableBit n ⟨i.val, h⟩ + 1 by
          simp [Hypercube.tableBit]
          omega]
    exact Hypercube.bitAtNat_two_mul_add_one_succ k _
  · have hi : i.val = n := by omega
    simp [Hypercube.pointOfIndex, Hypercube.extend, Hypercube.tableBit,
      hi, Hypercube.bitAtNat_two_mul_add_one_zero]

theorem Hypercube.range_two_mul (m : Nat) :
    List.range (2 * m) =
      (List.range m).flatMap (fun k => [2 * k, 2 * k + 1]) := by
  induction m with
  | zero => rfl
  | succ m ih =>
      rw [Nat.mul_succ]
      simp only [List.range_succ, List.flatMap_append, ih]
      simp

/--
The recursive vertex enumerator agrees exactly, including list order, with
the index-based truth-table enumerator.
-/
theorem Hypercube.vertices_eq_range_map_pointOfIndex (n : Nat) :
    Hypercube.vertices n =
      (List.range (2 ^ n)).map (Hypercube.pointOfIndex n) := by
  induction n with
  | zero =>
      simp only [Hypercube.vertices, Nat.pow_zero, List.range_one, List.map_cons,
        List.map_nil, List.cons.injEq, and_true]
      funext i
      exact Fin.elim0 i
  | succ n ih =>
      rw [Hypercube.vertices, ih, Nat.pow_succ]
      rw [show 2 ^ n * 2 = 2 * 2 ^ n by omega, Hypercube.range_two_mul]
      simp only [List.flatMap_map, List.map_flatMap, List.map_cons, List.map_nil]
      apply congrArg (fun f : Nat → List (Hypercube.Point (n + 1)) =>
        List.flatMap f (List.range (2 ^ n)))
      funext k
      rw [Hypercube.pointOfIndex_two_mul, Hypercube.pointOfIndex_two_mul_add_one]

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

/-- Flip one coordinate of a hypercube point. -/
def Hypercube.flip {n : Nat} (x : Hypercube.Point n) (i : Fin n) :
    Hypercube.Point n :=
  fun j =>
    if j = i then
      !(x j)
    else
      x j

@[simp] theorem Hypercube.flip_same {n : Nat} (x : Hypercube.Point n) (i : Fin n) :
    Hypercube.flip x i i = !(x i) := by
  simp [Hypercube.flip]

theorem Hypercube.flip_other {n : Nat}
    (x : Hypercube.Point n) {i j : Fin n} (h : j ≠ i) :
    Hypercube.flip x i j = x j := by
  simp [Hypercube.flip, h]

theorem Hypercube.eq_of_dropLast_eq_last_eq {n : Nat}
    {x y : Hypercube.Point (n + 1)}
    (hdrop : Hypercube.dropLast x = Hypercube.dropLast y)
    (hlast : Hypercube.last x = Hypercube.last y) :
    x = y := by
  funext i
  by_cases hlt : i.val < n
  · have hcoord := congrFun hdrop ⟨i.val, hlt⟩
    simpa [Hypercube.dropLast] using hcoord
  · have hi : i.val = n := by
      omega
    have hfin : i = ⟨n, Nat.lt_succ_self n⟩ := by
      apply Fin.ext
      exact hi
    simpa [hfin, Hypercube.last] using hlast

/-- Test whether two hypercube points are extensionally equal. -/
def Hypercube.pointEq {n : Nat} (x y : Hypercube.Point n) : Bool :=
  ListTools.allTrue
    ((List.finRange n).map
      (fun i => decide (x i = y i)))

/-- Hamming distance between two Boolean hypercube vertices. -/
def Hypercube.hammingDistance {n : Nat}
    (x y : Hypercube.Point n) : Nat :=
  ListTools.countTrue
    ((List.finRange n).map
      (fun i => Hypercube.boolDiff (x i) (y i)))

/-- The undirected adjacency matrix of the n-dimensional Boolean hypercube. -/
def Hypercube.adjacencyMatrix (n : Nat) : Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    decide
      (Hypercube.hammingDistance
        (Hypercube.pointOfIndex n i.val)
        (Hypercube.pointOfIndex n j.val) = 1)

/--
A boundary-edge matrix for a Boolean function.

A `1` at `(i,j)` means that the two indexed vertices are adjacent in the cube
and the function changes value across that edge.
-/
def Hypercube.boundaryEdgeMatrix {n : Nat} (f : Hypercube.Function n) :
    Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.adjacencyMatrix n i j &&
      Hypercube.boolDiff
        (f (Hypercube.pointOfIndex n i.val))
        (f (Hypercube.pointOfIndex n j.val))

/-- Test whether flipping coordinate `i` changes the value of `f` at `x`. -/
def Hypercube.edgeChange {n : Nat}
    (f : Hypercube.Function n) (x : Hypercube.Point n) (i : Fin n) :
    Bool :=
  Hypercube.boolDiff (f x) (f (Hypercube.flip x i))

/--
Influence count of coordinate `i`.

This counts directed cube edges from vertices `x` to `flip x i` where the
function output changes. Dividing by `2^n` gives the usual influence.
-/
def Hypercube.influenceCount {n : Nat}
    (f : Hypercube.Function n) (i : Fin n) : Nat :=
  ListTools.countTrue
    ((Hypercube.vertices n).map
      (fun x => Hypercube.edgeChange f x i))

/-- Influence count for every coordinate. -/
def Hypercube.influenceVector {n : Nat}
    (f : Hypercube.Function n) : Fin n → Nat :=
  fun i => Hypercube.influenceCount f i

/-- Total directed edge-boundary count across all coordinates. -/
def Hypercube.directedBoundaryCount {n : Nat}
    (f : Hypercube.Function n) : Nat :=
  ListTools.sumNat
    ((List.finRange n).map
      (fun i => Hypercube.influenceCount f i))

/-- Gray-code bit: `g_i = b_i XOR b_{i+1}`. -/
def Hypercube.grayBit (index bit : Nat) : Bool :=
  Hypercube.bxor
    (Hypercube.bitAtNat index bit)
    (Hypercube.bitAtNat index (bit + 1))

/--
Convert an index into a Gray-code-ordered hypercube point.

The coordinate order is big-endian, matching `pointOfIndex`.
-/
def Hypercube.grayPoint (n index : Nat) : Hypercube.Point n :=
  fun i => Hypercube.grayBit index (Hypercube.tableBit n i)

/-- The Gray-code axis of dimension `bits`. -/
def Hypercube.grayAxis (bits : Nat) : List (Hypercube.Point bits) :=
  (List.range (2 ^ bits)).map (Hypercube.grayPoint bits)

end Boolean.Cube
```
