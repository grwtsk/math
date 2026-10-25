# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NamePowerVars.Variantc230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cabf5aad6a38e3c582e7d91c60e9ac2f8c5ce242` · SHA-256 `c230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2026 Wenrong Zou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wenrong Zou
-/
module

public import Mathlib.RingTheory.MvPowerSeries.Basic  -- shake: keep (tactic dependency)
public meta import Mathlib.Tactic.Simps

/-!
The command `name_power_vars` names variables in
`MvPowerSeries (Fin n) R` for the appropriate value of `n`.
The notation introduced by this command is local.

Usage:

```lean
variable (R : Type) [CommRing R]

name_power_vars X, Y, Z over R

#check Y -- Y : MvPowerSeries (Fin 3) R
```
-/

public meta section

open Lean Elab Command

namespace Mathlib.Tactic

/--
The command `name_power_vars` names variables in
`MvPowerSeries (Fin n) R` for the appropriate value of `n`.
The notation introduced by this command is local.

Usage:

```lean
variable (R : Type) [CommRing R]

name_power_vars X, Y, Z over R

#check Y -- Y : MvPowerSeries (Fin 3) R
```
-/
syntax (name := namePowerVarsOver) "name_power_vars" (ppSpace ident),+ " over " term : command

@[command_elab namePowerVarsOver, inherit_doc namePowerVarsOver]
def elabNamePowerSeriesVariablesOver : CommandElab
| `(command|name_power_vars $vars:ident,* over $R:term) => do
  let vars := vars.getElems
  let size := vars.size
  let sizeStx : TSyntax `term := quote size
  for h : idx in [:size] do
    let var := vars[idx]
    let var := quote s!"{var.getId}"
    let idx : TSyntax `term ← `(($(quote idx) : Fin $sizeStx))
    let cmd ← `(command|local notation3 $var:str =>
      MvPowerSeries.X (R := $R) (σ := Fin $sizeStx) $idx)
    elabCommand cmd
| _ => throwUnsupportedSyntax

end Mathlib.Tactic
````
