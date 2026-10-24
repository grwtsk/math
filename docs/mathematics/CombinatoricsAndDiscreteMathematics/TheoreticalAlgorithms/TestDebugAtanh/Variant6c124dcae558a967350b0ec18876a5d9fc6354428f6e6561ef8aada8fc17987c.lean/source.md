# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestDebugAtanh.Variant6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13ae237c8e6cd00b05cba79200bf89cd0965feb8` · SHA-256 `6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Minimal debug file for atanh coefficients issue.
-/
import LeanCert.Core.IntervalRat.Taylor

-- Test 1: Direct map with explicit type
#eval
  let result := (List.range 11).map (fun i =>
    if i % 2 = 1 then (1 : ℚ) / (i : ℚ) else (0 : ℚ))
  dbg_trace "Direct map: {result}"
  pure ()

-- Test 2: Check what List.map returns for our lambda
#eval
  let f : ℕ → ℚ := fun i => if i % 2 = 1 then 1 / (i : ℚ) else (0 : ℚ)
  let coeffs := (List.range 11).map f
  dbg_trace "With explicit f: {coeffs}"
  pure ()

-- Test 3: More explicit version
#eval
  let coeffs : List ℚ := [0, 1, 0, 1/3, 0, 1/5, 0, 1/7, 0, 1/9, 0]
  dbg_trace "Manual coeffs: {coeffs}"
  pure ()

-- Test 4: Debug the condition
#eval
  let results := (List.range 11).map fun i =>
    let cond := i % 2 == 1  -- Use == for Bool instead of = for Prop
    let val : ℚ := if cond then 1 / (i : ℚ) else 0
    s!"i={i}, i % 2 = {i % 2}, cond={cond}, val={val}"
  dbg_trace "Condition debug:\n{String.intercalate "\n" results}"
  pure ()
```
