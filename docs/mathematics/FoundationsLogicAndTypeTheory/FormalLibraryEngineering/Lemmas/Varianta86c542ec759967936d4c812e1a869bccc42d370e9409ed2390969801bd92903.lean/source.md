# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Varianta86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03bf033abf82b03ea84edfbabc1c989a01938fc7` · SHA-256 `a86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/

import Std.Tactic.NormCast.Ext
import Lean.Elab.ElabRules

open Lean Meta
/-- `add_elim foo` registers `foo` as an elim-lemma in `norm_cast`. -/
local elab "add_elim " id:ident : command =>
  Elab.Command.liftCoreM do MetaM.run' do
    Std.Tactic.NormCast.addElim (← resolveGlobalConstNoOverload id)

add_elim ne_eq

attribute [coe] Fin.val Array.ofSubarray
```
