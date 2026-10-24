# Complete source: GRWTSK.Algebra.DroppedMVars.Variant004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fde12cc75de3bfa7e109516846ec82ab2a837bb` · SHA-256 `004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jesse Vogel, Jannis Limperg
-/

-- Thanks to Jesse Vogel for this test case. It demonstrates the handling of
-- 'dropped' mvars. A rapp drops an mvar if the mvar appears in the parent goal
-- of the rapp, but not in any of its subgoals. In this case, we add an
-- additional regular goal for the mvar.

import Aesop

set_option aesop.check.all true

axiom Ring : Type

axiom RingHom (R S : Ring) : Type

@[aesop 99%]
axiom RingId (R : Ring) : RingHom R R

@[aesop 99%]
axiom ZZ : Ring

example : ∃ (R : Ring) (_ : RingHom R R), True := by
  aesop (add safe True.intro) (config := { enableSimp := false })
```
