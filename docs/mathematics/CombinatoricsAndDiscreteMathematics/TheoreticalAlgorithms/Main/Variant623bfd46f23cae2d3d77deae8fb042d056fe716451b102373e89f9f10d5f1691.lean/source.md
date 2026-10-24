# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac626ccf139a65bfe826897868f51a80fb1ee2d4` · SHA-256 `623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix

/-!
# Binary-matrix demonstration executable

Run with:

    lake exe binary_matrix_demo
-/

private def matrixOrError
    (m n : Nat)
    (data : Array Bool) :
    IO (BinMatMut m n) :=
  match BinMatMut.ofArray? m n data with
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
    (matrix : BinMatMut m n) :
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
