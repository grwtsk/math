# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerMascheroni.Variant4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76514039bd489ee55c147dcb866eae2aaf61ac01` · SHA-256 `4ccfe1e06dd181ba250f827066ad45919bbd99c64fdac255e4cbfaf5e123e78f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto

/-!
# Tests for `Real.eulerMascheroniConstant` support in `interval_decide`

Uses tight bounds: 0.5722 ≤ γ ≤ 0.5823, derived from
`eulerMascheroniSeq 100 < γ < eulerMascheroniSeq' 100`
combined with LeanCert's computable log intervals.
-/

-- The motivating example from the issue
example : (0.5 : ℝ) ≤ Real.eulerMascheroniConstant := by interval_decide

-- Tighter lower bound (impossible with Mathlib's 1/2 alone)
example : (0.572 : ℝ) ≤ Real.eulerMascheroniConstant := by interval_decide

-- Tighter upper bound (impossible with Mathlib's 2/3 alone)
example : Real.eulerMascheroniConstant ≤ 0.583 := by interval_decide
```
