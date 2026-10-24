# Complete source: GRWTSK.Geometry.SmoothSection.Variant7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acbb59371fb23377b0533051c7ba46ac3f3515ae` · SHA-256 `7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth, Floris van Doorn, Michael Rothgang
-/
module

public import Mathlib.Algebra.Order.Algebra
public import Mathlib.Algebra.Order.BigOperators.Expect
public import Mathlib.Algebra.Order.Field.Power
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Data.EReal.Inv
public import Mathlib.Data.Nat.Totient
public import Mathlib.Data.Sym.Sym2
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Tactic.NormNum.GCD
public import Mathlib.Tactic.Positivity

deprecated_module (since := "2026-05-12")
```
