# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaa5d32999e382a90266f8f9ca72de851e90e11e` · SHA-256 `1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix

/-!
# Binary-matrix demonstration executable

Run with:

    lake exe bit_matrix_demo
-/

private def matrixOrError
    (m n : Nat)
    (data : Array Bool) :
    IO (BitMatrix.ArrayBacked m n) :=
  match BitMatrix.ArrayBacked.ofArray? m n data with
  | some matrix =>
      pure matrix
  | none =>
      throw <| IO.userError s!"
        Invalid matrix storage:
          expected size: {m * n}
          actual size:   {data.size}
      "

private def printMatrix
    (name : String)
    (matrix : BitMatrix.ArrayBacked m n) :
    IO Unit :=
  IO.println s!"{name} = {reprStr matrix.data}"

def main : IO Unit := do
  let a ← matrixOrError 2 3 #[
    true,  false, true,
    false, true,  true
  ]

  let b ← matrixOrError 2 3 #[
    true, true,  false,
    false, true, false
  ]

  let conjunction := a.andInPlace b
  let disjunction := a.orInPlace b
  let exclusiveOr := a.xorInPlace b
  let complement := a.notInPlace

  printMatrix "A      " a
  printMatrix "B      " b
  printMatrix "A AND B" conjunction
  printMatrix "A OR B " disjunction
  printMatrix "A XOR B" exclusiveOr
  printMatrix "NOT A  " complement
```
