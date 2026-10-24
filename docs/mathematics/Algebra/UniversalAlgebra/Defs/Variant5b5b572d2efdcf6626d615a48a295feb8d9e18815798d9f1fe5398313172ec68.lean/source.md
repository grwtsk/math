# Complete source: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43164fc71dca1d8ce8b32d914d1c92e2fab53bb1` · SHA-256 `5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Algebra.AddTorsor.Defs

/-!
# Affine space

In this file we introduce the following notation:

* `AffineSpace V P` is an alternative notation for `AddTorsor V P` introduced at the end of this
  file.

We tried to use an `abbreviation` instead of a `notation` but this led to hard-to-debug elaboration
errors. So, we introduce a localized notation instead. When this notation is enabled with
`open Affine`, Lean will use `AffineSpace` instead of `AddTorsor` both in input and in the
proof state.

Here is an incomplete list of notions related to affine spaces, all of them are defined in other
files:

* `AffineMap`: a map between affine spaces that preserves the affine structure;
* `AffineEquiv`: an equivalence between affine spaces that preserves the affine structure;
* `AffineSubspace`: a subset of an affine space closed w.r.t. affine combinations of points;
* `AffineCombination`: an affine combination of points;
* `AffineIndependent`: affine independent set of points;
* `AffineBasis.coord`: the barycentric coordinate of a point.

## TODO

Some key definitions are not yet present.

* Affine frames.  An affine frame might perhaps be represented as an `AffineEquiv` to a `Finsupp`
  (in the general case) or function type (in the finite-dimensional case) that gives the
  coordinates, with appropriate proofs of existence when `k` is a field.
-/

assert_not_exists MonoidWithZero

@[inherit_doc] scoped[Affine] notation "AffineSpace" => AddTorsor
```
