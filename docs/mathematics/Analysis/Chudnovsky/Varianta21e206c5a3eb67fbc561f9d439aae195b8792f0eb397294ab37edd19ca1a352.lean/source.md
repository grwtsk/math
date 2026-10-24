# Complete source: GRWTSK.Analysis.Chudnovsky.Varianta21e206c5a3eb67fbc561f9d439aae195b8792f0eb397294ab37edd19ca1a352

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a2b01e26695a06358e5e9b0e8ac353e20d3438b` · SHA-256 `a21e206c5a3eb67fbc561f9d439aae195b8792f0eb397294ab37edd19ca1a352`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Analysis.Real.Pi.Chudnovsky

open scoped Real

/-- **Chudnovsky's formula**: the sum `chudnovskySum` (defined in
`Mathlib/Analysis/Real/Pi/Chudnovsky.lean`) equals `π⁻¹`. -/
proof_wanted chudnovskySum_eq_pi_inv : chudnovskySum = π⁻¹
```
