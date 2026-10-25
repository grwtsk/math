# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variantcaf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d536cad0358b2b4317df009372de33ca60af2dc3` · SHA-256 `caf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.SyntheticMVars

/-!
# Additions to `Lean.Elab.Term`
-/

namespace Lean.Elab.Term

/-- Fully elaborates the term `patt`, allowing typeclass inference failure,
but while setting `errToSorry` to false.
Typeclass failures result in plain metavariables.
Instantiates all assigned metavariables. -/
def elabPattern (patt : Term) (expectedType? : Option Expr) : TermElabM Expr := do
  withTheReader Term.Context ({ · with ignoreTCFailures := true, errToSorry := false }) <|
    withSynthesizeLight do
      let t ← elabTerm patt expectedType?
      synthesizeSyntheticMVars (postpone := .no) (ignoreStuckTC := true)
      instantiateMVars t

end Lean.Elab.Term
```
