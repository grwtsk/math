# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validity.Variant5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce5027d4472539f63b5d2982cf95b8b555dcae3` · SHA-256 `5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Bounds
import LeanCert.Validity.Types

/-!
# Validity Layer

The Validity module contains the "Golden Theorems" that bridge computational
results (Bool) to semantic proofs (Prop).

## Philosophy

This layer embodies the core LeanCert principle: **Certification is the Product**.
The Engine computes numbers; Validity turns them into theorems.

## Main Components

* `Validity.Bounds` - Golden Theorems for interval bounds:
  - `checkUpperBound` (Bool) → `verify_upper_bound` (Prop)
  - `checkLowerBound` (Bool) → `verify_lower_bound` (Prop)

* `Validity.Types` - Certificate structures:
  - `VerifiedGlobalMin` - Proven global minimum
  - `VerifiedGlobalMax` - Proven global maximum
  - `VerifiedRoot` - Proven root existence
-/
```
