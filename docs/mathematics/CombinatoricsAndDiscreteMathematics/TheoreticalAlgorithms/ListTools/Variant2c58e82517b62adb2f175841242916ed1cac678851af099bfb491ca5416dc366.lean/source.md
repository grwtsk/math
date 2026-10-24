# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListTools.Variant2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a72c0fec8cc6c0cd643cf82f3a09c6138b3c08c` · SHA-256 `2c58e82517b62adb2f175841242916ed1cac678851af099bfb491ca5416dc366`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Boolean.Cube

/-- Count the number of `true` entries in a Boolean list. -/
def ListTools.countTrue (xs : List Bool) : Nat :=
  xs.foldl (fun acc b => if b then acc + 1 else acc) 0

/-- Boolean disjunction across a list. -/
def ListTools.anyTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc || b) false

/-- Boolean conjunction across a list. -/
def ListTools.allTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc && b) true

/-- Sum a list of natural numbers. -/
def ListTools.sumNat (xs : List Nat) : Nat :=
  xs.foldl (fun acc x => acc + x) 0

/-- Sum a list of integers. -/
def ListTools.sumInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc + x) 0

/-- Product of a list of integers. -/
def ListTools.prodInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc * x) 1

end Boolean.Cube
```
