# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bdde4e0426532d3c8d7feabe87dab5d51d4a979` · SHA-256 `2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Bounds.Core
import LeanCert.Validity.Bounds.WithInv
import LeanCert.Validity.Bounds.Smart
import LeanCert.Validity.Bounds.Bridge

/-!
# Bounds Module Index

This module re-exports all components of the bounds verification infrastructure.

## Submodules

- `Core`: Basic boolean checkers and golden theorems for bound verification
- `WithInv`: Support for expressions with inverse-like operations (inv, log, atan, etc.)
- `Smart`: Monotonicity-aware bounds using derivative information
- `Bridge`: Set.Icc bridge theorems and subdivision combinators

## Usage

Import this module to get access to all bound verification functionality:

```lean
import LeanCert.Validity.Bounds.Basic
```
-/
````
