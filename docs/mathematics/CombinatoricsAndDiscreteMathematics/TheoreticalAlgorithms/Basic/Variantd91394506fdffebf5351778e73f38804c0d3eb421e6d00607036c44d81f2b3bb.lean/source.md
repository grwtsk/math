# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantd91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb0dec285197f7c5c1dd59e1efbea83579b9b7b8` · SHA-256 `d91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto.Types
import LeanCert.Tactic.IntervalAuto.Norm
import LeanCert.Tactic.IntervalAuto.Extract
import LeanCert.Tactic.IntervalAuto.Parse
import LeanCert.Tactic.IntervalAuto.Diagnostic
import LeanCert.Tactic.IntervalAuto.ProveCommon

/-!
# Interval Arithmetic Tactics - Infrastructure

This module provides infrastructure for the interval arithmetic tactics:
- `Types`: Core data structures
- `Norm`: Goal normalization
- `Extract`: Rational extraction
- `Parse`: Goal parsing
- `Diagnostic`: Error reporting
- `ProveCommon`: Shared utilities

The main tactics are in `LeanCert.Tactic.IntervalAuto`.
-/
```
