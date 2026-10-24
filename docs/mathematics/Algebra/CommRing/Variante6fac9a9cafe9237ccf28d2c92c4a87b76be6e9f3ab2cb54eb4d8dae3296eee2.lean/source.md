# Complete source: GRWTSK.Algebra.CommRing.Variante6fac9a9cafe9237ccf28d2c92c4a87b76be6e9f3ab2cb54eb4d8dae3296eee2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2dd19c09b18aacf8a6960c916c5a1266eda89e4` · SHA-256 `e6fac9a9cafe9237ccf28d2c92c4a87b76be6e9f3ab2cb54eb4d8dae3296eee2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Types
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingId
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Internalize
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingM
public import Lean.Meta.Tactic.Grind.Arith.CommRing.SemiringM
public import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommRingM
public import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommSemiringM
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Functions
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Reify
public import Lean.Meta.Tactic.Grind.Arith.CommRing.EqCnstr
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Proof
public import Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Inv
public import Lean.Meta.Tactic.Grind.Arith.CommRing.PP
public import Lean.Meta.Tactic.Grind.Arith.CommRing.MonadRing
public import Lean.Meta.Tactic.Grind.Arith.CommRing.MonadSemiring
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Action
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Power
public section
namespace Lean.Meta.Grind.Arith.CommRing
builtin_initialize registerTraceClass `grind.ring
builtin_initialize registerTraceClass `grind.ring.internalize
builtin_initialize registerTraceClass `grind.ring.assert
builtin_initialize registerTraceClass `grind.ring.assert.unsat (inherited := true)
builtin_initialize registerTraceClass `grind.ring.assert.trivial (inherited := true)
builtin_initialize registerTraceClass `grind.ring.assert.queue (inherited := true)
builtin_initialize registerTraceClass `grind.ring.assert.basis (inherited := true)
builtin_initialize registerTraceClass `grind.ring.assert.store (inherited := true)
builtin_initialize registerTraceClass `grind.ring.simp
builtin_initialize registerTraceClass `grind.ring.superpose
builtin_initialize registerTraceClass `grind.ring.impEq

builtin_initialize registerTraceClass `grind.debug.ring.simp
builtin_initialize registerTraceClass `grind.debug.ring.proof
builtin_initialize registerTraceClass `grind.debug.ring.check
builtin_initialize registerTraceClass `grind.debug.ring.impEq
builtin_initialize registerTraceClass `grind.debug.ring.simpBasis
builtin_initialize registerTraceClass `grind.debug.ring.basis
builtin_initialize registerTraceClass `grind.debug.ring.rabinowitsch

builtin_initialize
  ringExt.setMethods
    (internalize := CommRing.internalize)
    (newEq       := CommRing.processNewEq)
    (newDiseq    := CommRing.processNewDiseq)
    (action      := Action.ring)
    (check       := CommRing.check')
    (checkInv    := CommRing.checkInvariants)

end Lean.Meta.Grind.Arith.CommRing
```
