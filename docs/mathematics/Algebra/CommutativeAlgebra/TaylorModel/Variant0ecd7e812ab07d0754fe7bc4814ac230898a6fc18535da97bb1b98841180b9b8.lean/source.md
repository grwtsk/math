# Complete source: GRWTSK.Algebra.CommutativeAlgebra.TaylorModel.Variant0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08d4566d9054899f0903094a5a91ecbd1619c097` · SHA-256 `0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.TaylorModel.Core
import LeanCert.Engine.TaylorModel.Functions
import LeanCert.Engine.TaylorModel.Expr

/-!
# Taylor Models

This file re-exports all Taylor model functionality. The implementation is split into:

* `TaylorModel.Core` - Core data structure, polynomial helpers, basic operations
* `TaylorModel.Functions` - Function-specific Taylor series (sin, cos, exp, etc.)
* `TaylorModel.Expr` - Composition operations and expression integration
-/
```
