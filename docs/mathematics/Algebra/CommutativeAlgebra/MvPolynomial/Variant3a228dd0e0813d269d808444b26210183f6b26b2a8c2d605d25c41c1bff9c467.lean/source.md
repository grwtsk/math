# Complete source: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b55c9a1fb2acafdd1e78b7915d2acff3b8e5a304` · SHA-256 `3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Ruben Van de Velde. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde
-/

import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.Topology.Algebra.Ring.Basic

/-!
# Multivariate polynomials and continuity

In this file we prove the following lemma:

* `MvPolynomial.continuous_eval`: `MvPolynomial.eval` is continuous

## Tags

multivariate polynomial, continuity
-/

variable {X σ : Type*} [TopologicalSpace X] [CommSemiring X] [IsTopologicalSemiring X]
  (p : MvPolynomial σ X)

theorem MvPolynomial.continuous_eval : Continuous fun x ↦ eval x p := by
  continuity
```
