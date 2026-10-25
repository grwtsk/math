# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dimacs.Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8aa927d69ad7002af0c659181cb9d952c413a5d` · SHA-256 `c806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.CNF.RelabelFin

public section

namespace Std
namespace Sat

namespace CNF

private structure DimacsState where
  numClauses : Nat := 0
  maxLit : Nat := 0

private abbrev DimacsM := StateM DimacsState

namespace DimacsM

@[inline]
private def handleLit (lit : Literal Nat) : DimacsM Unit := do
  modify fun s => { s with maxLit := Nat.max s.maxLit lit.1 }

@[inline]
private def incrementClauses : DimacsM Unit := do
  modify fun s => { s with numClauses := s.numClauses + 1 }

end DimacsM

/--
This function turns `cnf` into a DIMACS `String`.

Note: This function will add `1` to all literal identifiers by default. This is because `0` is an
illegal identifier in the DIMACS format and we can avoid producing invalid DIMACs like this.
-/
def dimacs (cnf : CNF Nat) : String :=
  let (str, state) := go cnf |>.run {}
  s!"p cnf {state.maxLit + 1} {state.numClauses}\n" ++ str
where
  go (cnf : CNF Nat) : DimacsM String := do
    let foldLit acc lit := do
      DimacsM.handleLit lit
      let litStr := if lit.2 then s!"{lit.1 + 1}" else s!"-{lit.1 + 1}"
      return acc ++ litStr |>.push ' '
    let foldClause acc clause := do
      DimacsM.incrementClauses
      return (← clause.foldlM (init := acc) foldLit) |>.push '0' |>.push '\n'
    cnf.clauses.foldlM (init := "") foldClause

end CNF

end Sat
end Std
```
