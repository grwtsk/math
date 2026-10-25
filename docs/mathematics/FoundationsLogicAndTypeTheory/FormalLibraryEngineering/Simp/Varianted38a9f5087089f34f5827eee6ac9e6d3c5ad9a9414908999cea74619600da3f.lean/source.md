# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Varianted38a9f5087089f34f5827eee6ac9e6d3c5ad9a9414908999cea74619600da3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23a6c5d6f8b338452e4921614d4677d1a4189050` · SHA-256 `88afc8908e4972c9d930d04b3dd15ebb3d7183bbf2222f9013b064586d6d82f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEqSymm.Variantdf7d5b745f17976f37f225f738fb54f1aeb6ca605e5a0da97244eccdaaca7afb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df7d5b745f17976f37f225f738fb54f1aeb6ca605e5a0da97244eccdaaca7afb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkEqSymm.Variantdf7d5b745f17976f37f225f738fb54f1aeb6ca605e5a0da97244eccdaaca7afb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"df7d5b745f17976f37f225f738fb54f1aeb6ca605e5a0da97244eccdaaca7afb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/.lake/packages/batteries/Batteries/Lean/Meta/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Gabriel Ebner, Floris van Doorn
-/
module

public import Lean.Elab.Tactic.Simp
public import Batteries.Tactic.OpenPrivate
import all Lean.Elab.Tactic.Simp -- for accessing `mkDischargeWrapper`



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEqSymm.Variantdf7d5b745f17976f37f225f738fb54f1aeb6ca605e5a0da97244eccdaaca7afb

public section

/-!
# Helper functions for using the simplifier.

[TODO] Reunification of `mkSimpContext'` with core.
-/

namespace Lean

namespace Meta.Simp
open Elab.Tactic

/-- Flip the proof in a `Simp.Result`. -/
def mkEqSymm (e : Expr) (r : Simp.Result) : MetaM Simp.Result :=
  ({ expr := e, proof? := · }) <$>
  match r.proof? with
  | none => pure none
  | some p => some <$> Meta.mkEqSymm p

/-- Construct the `Expr` `cast h e`, from a `Simp.Result` with proof `h`. -/
def mkCast (r : Simp.Result) (e : Expr) : MetaM Expr := do
  mkAppM ``cast #[← r.getProof, e]

/-- Construct a `Simp.DischargeWrapper` from the `Syntax` for a `simp` discharger. -/
nonrec def mkDischargeWrapper := mkDischargeWrapper

-- copied from core
/--
If `ctx == false`, the config argument is assumed to have type `Meta.Simp.Config`,
and `Meta.Simp.ConfigCtx` otherwise.
If `ctx == false`, the `discharge` option must be none
-/
def mkSimpContext' (simpTheorems : SimpTheorems) (stx : Syntax) (eraseLocal : Bool)
    (kind := SimpKind.simp) (ctx := false) (ignoreStarArg : Bool := false) :
    TacticM MkSimpContextResult := do
  if ctx && !stx[2].isNone then
    if kind == SimpKind.simpAll then
      throwError "'simp_all' tactic does not support 'discharger' option"
    if kind == SimpKind.dsimp then
      throwError "'dsimp' tactic does not support 'discharger' option"
  let dischargeWrapper ← mkDischargeWrapper stx[2]
  let simpOnly := !stx[3].isNone
  let simpTheorems ← if simpOnly then
    simpOnlyBuiltins.foldlM (·.addConst ·) {}
  else
    pure simpTheorems
  let simprocs ← if simpOnly then pure {} else Simp.getSimprocs
  let congrTheorems ← Meta.getSimpCongrTheorems
  let ctx ← Simp.mkContext (← elabSimpConfig stx[1] (kind := kind)) #[simpTheorems] congrTheorems
  let r ← elabSimpArgs stx[4] (simprocs := #[simprocs]) ctx eraseLocal kind
    (ignoreStarArg := ignoreStarArg)
  return { r with dischargeWrapper }


end Simp

end Lean.Meta
```
