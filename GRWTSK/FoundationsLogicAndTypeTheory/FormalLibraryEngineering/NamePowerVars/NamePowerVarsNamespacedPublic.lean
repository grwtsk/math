-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabNamePowerSeriesVariablesOver.Variantc230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabNamePowerSeriesVariablesOver.Variantc230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Ring/NamePowerVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabNamePowerSeriesVariablesOver.Variantc230b8862ead0e872f0e563436ae2f5cc3d2f6775c14c90dd914eeec6fa69260

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
